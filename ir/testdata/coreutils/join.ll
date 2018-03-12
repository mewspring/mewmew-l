source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.line = type { %struct.linebuffer, i64, i64, %struct.field* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.field = type { i8*, i64 }
%struct.outlist = type { i32, i64, %struct.outlist* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.seq = type { i64, i64, %struct.line** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1
@.str.2 = private unnamed_addr constant [150 x i8] c"For each pair of input lines with identical join fields, write a line to\0Astandard output.  The default join field is the first, delimited by blanks.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1
@.str.4 = private unnamed_addr constant [208 x i8] c"\0A  -a FILENUM        also print unpairable lines from file FILENUM, where\0A                      FILENUM is 1 or 2, corresponding to FILE1 or FILE2\0A  -e EMPTY          replace missing input fields with EMPTY\0A\00", align 1
@.str.5 = private unnamed_addr constant [253 x i8] c"  -i, --ignore-case  ignore differences in case when comparing fields\0A  -j FIELD          equivalent to '-1 FIELD -2 FIELD'\0A  -o FORMAT         obey FORMAT while constructing output line\0A  -t CHAR           use CHAR as input and output field separator\0A\00", align 1
@.str.6 = private unnamed_addr constant [491 x i8] c"  -v FILENUM        like -a FILENUM, but suppress joined output lines\0A  -1 FIELD          join on this FIELD of file 1\0A  -2 FIELD          join on this FIELD of file 2\0A  --check-order     check that the input is correctly sorted, even\0A                      if all input lines are pairable\0A  --nocheck-order   do not check that the input is correctly sorted\0A  --header          treat the first line in each file as field headers,\0A                      print them without trying to pair them\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [818 x i8] c"\0AUnless -t CHAR is given, leading blanks separate fields and are ignored,\0Aelse fields are separated by CHAR.  Any FIELD is a field number counted\0Afrom 1.  FORMAT is one or more comma or blank separated specifications,\0Aeach being 'FILENUM.FIELD' or '0'.  Default FORMAT outputs the join field,\0Athe remaining fields from FILE1, the remaining fields from FILE2, all\0Aseparated by CHAR.  If FORMAT is the keyword 'auto', then the first\0Aline of each file determines the number of fields output for each line.\0A\0AImportant: FILE1 and FILE2 must be sorted on the join fields.\0AE.g., use \22sort -k 1b,1\22 if 'join' has no options,\0Aor use \22join -t ''\22 if 'sort' has no options.\0ANote, comparisons honor the rules specified by 'LC_COLLATE'.\0AIf the input is not sorted and some lines cannot be joined, a\0Awarning message will be given.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !0
@print_pairables = internal unnamed_addr global i1 false, align 1
@seen_unpairable = internal unnamed_addr global i1 false, align 1
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !106
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !113
@.str.15 = private unnamed_addr constant [20 x i8] c"-a:e:i1:2:j:o:t:v:z\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !170
@optarg = external local_unnamed_addr global i8*, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"invalid field number: %s\00", align 1
@print_unpairables_1 = internal unnamed_addr global i8 0, align 1, !dbg !97
@print_unpairables_2 = internal unnamed_addr global i8 0, align 1, !dbg !100
@empty_filler = internal unnamed_addr global i8* null, align 8, !dbg !109
@.str.17 = private unnamed_addr constant [44 x i8] c"conflicting empty-field replacement strings\00", align 1
@ignore_case = internal unnamed_addr global i1 false, align 1
@join_field_1 = internal global i64 -1, align 8, !dbg !184
@.str.52 = private unnamed_addr constant [34 x i8] c"incompatible join fields %lu, %lu\00", align 1
@join_field_2 = internal global i64 -1, align 8, !dbg !186
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@autoformat = internal unnamed_addr global i1 false, align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"multi-character tab %s\00", align 1
@tab = internal unnamed_addr global i32 -1, align 4, !dbg !198
@.str.21 = private unnamed_addr constant [18 x i8] c"incompatible tabs\00", align 1
@eolchar = internal unnamed_addr global i1 false, align 1
@join_header_lines = internal unnamed_addr global i1 false, align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Mike Haertel\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@g_names = internal global [2 x i8*] zeroinitializer, align 16, !dbg !92
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"both files cannot be standard input\00", align 1
@autocount_1 = internal unnamed_addr global i64 0, align 8, !dbg !202
@autocount_2 = internal unnamed_addr global i64 0, align 8, !dbg !204
@uni_blank = internal global %struct.line zeroinitializer, align 8, !dbg !206
@prevline = internal unnamed_addr global [2 x %struct.line*] zeroinitializer, align 16, !dbg !208
@outlist_head = internal global %struct.outlist zeroinitializer, align 8, !dbg !196
@spareline = internal unnamed_addr global [2 x %struct.line*] zeroinitializer, align 16, !dbg !149
@.str.60 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@line_no = internal unnamed_addr global [2 x i64] zeroinitializer, align 16, !dbg !210
@.str.61 = private unnamed_addr constant [28 x i8] c"%s:%lu: is not sorted: %.*s\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"invalid field specifier: %s\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"invalid file number in field spec: %s\00", align 1
@outlist_end = internal unnamed_addr global %struct.outlist* @outlist_head, align 8, !dbg !188
@.str.45 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !217
@.str.19 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !223
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !228
@.str.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !231
@.str.1.37 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !238
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !245
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !257
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !264
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !282
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !289
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !291
@.str.89 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.90 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.92 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.93 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.94 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.95 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.96 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.97 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.98 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.99 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.100 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.101 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.102 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.105 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.109 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.110 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !297
@.str.1.125 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.129 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.130 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.131 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.135 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !306
@.str.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !343
@.str.3.153 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.154 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.155 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.156 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.157 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.158 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
define void @usage(i32) local_unnamed_addr #0 !dbg !755 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !759, metadata !760), !dbg !761
	%2 = icmp eq i32 %0, 0, !dbg !762
	br i1 %2, label %8, label %3, !dbg !764
	%4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !765, !tbaa !768
	%5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !765
	%6 = load i8*, i8** @program_name, align 8, !dbg !765, !tbaa !768
	%7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !772
	br label %54, !dbg !774
	%9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !776
	%10 = load i8*, i8** @program_name, align 8, !dbg !776, !tbaa !768
	%11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !778
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !780
	%13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !780, !tbaa !768
	%14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !781
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !782
	%16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !782, !tbaa !768
	%17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !783
	%18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !784
	%19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !784, !tbaa !768
	%20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !785
	%21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !786
	%22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786, !tbaa !768
	%23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !787
	%24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([491 x i8], [491 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !788
	%25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788, !tbaa !768
	%26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !789
	%27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !790
	%28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !790, !tbaa !768
	%29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !791
	%30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !792
	%31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !792, !tbaa !768
	%32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !793
	%33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !794
	%34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !794, !tbaa !768
	%35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11, !dbg !795
	%36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([818 x i8], [818 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !796
	%37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !796, !tbaa !768
	%38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11, !dbg !797
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !127, metadata !760) #11, !dbg !798
	tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 0, metadata !127, metadata !760) #11, !dbg !798
	%39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !800
	%40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #11, !dbg !801
	%41 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !803
	tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !138, metadata !760) #11, !dbg !804
	%42 = icmp eq i8* %41, null, !dbg !805
	br i1 %42, label %49, label %43, !dbg !806
	%44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #13, !dbg !807
	%45 = icmp eq i32 %44, 0, !dbg !807
	br i1 %45, label %49, label %46, !dbg !809
	%47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !811
	%48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !813
	br label %49, !dbg !815
	%50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !816
	%51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !817
	%52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !818
	%53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #11, !dbg !819
	br label %54
	tail call void @exit(i32 %0) #14, !dbg !820
	unreachable, !dbg !820
}
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2
declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3
declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3
declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4
declare void @exit(i32) local_unnamed_addr #5
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !821 {
	%3 = alloca %struct.line*, align 8
	%4 = alloca i64, align 8
	%5 = alloca i64, align 8
	%6 = alloca i64, align 8
	%7 = alloca i32, align 4
	%8 = alloca i32, align 4
	%9 = alloca [2 x i32], align 4
	%10 = alloca i64, align 8
	%11 = bitcast i64* %10 to [2 x i32]*
	%12 = alloca i32, align 4
	%13 = alloca i64, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !826, metadata !760), !dbg !932
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !827, metadata !760), !dbg !933
	%14 = bitcast i32* %7 to i8*, !dbg !934
	call void @llvm.lifetime.start(i64 4, i8* nonnull %14) #11, !dbg !934
	%15 = bitcast i32* %8 to i8*, !dbg !935
	call void @llvm.lifetime.start(i64 4, i8* nonnull %15) #11, !dbg !935
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !829, metadata !760), !dbg !936
	store i32 0, i32* %8, align 4, !dbg !936, !tbaa !937
	%16 = bitcast [2 x i32]* %9 to i8*, !dbg !939
	call void @llvm.lifetime.start(i64 8, i8* nonnull %16) #11, !dbg !939
	tail call void @llvm.dbg.declare(metadata [2 x i32]* %9, metadata !830, metadata !760), !dbg !940
	%17 = bitcast i64* %10 to i8*, !dbg !941
	call void @llvm.lifetime.start(i64 8, i8* nonnull %17) #11, !dbg !941
	tail call void @llvm.dbg.declare(metadata [2 x i32]* %11, metadata !832, metadata !760), !dbg !942
	store i64 0, i64* %10, align 8, !dbg !942
	%18 = bitcast i32* %12 to i8*, !dbg !943
	call void @llvm.lifetime.start(i64 4, i8* nonnull %18) #11, !dbg !943
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !888, metadata !760), !dbg !944
	store i32 0, i32* %12, align 4, !dbg !944, !tbaa !937
	%19 = load i8*, i8** %1, align 8, !dbg !945, !tbaa !768
	tail call void @set_program_name(i8* %19) #11, !dbg !946
	%20 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !947
	%21 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !948
	%22 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !949
	%23 = tail call zeroext i1 @hard_locale(i32 3) #11, !dbg !950
	%24 = zext i1 %23 to i8, !dbg !951
	store i8 %24, i8* @hard_LC_COLLATE, align 1, !dbg !951, !tbaa !952
	%25 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !954
	%26 = tail call i32 @atexit(void ()* nonnull @free_spareline) #11, !dbg !955
	store i1 true, i1* @print_pairables, align 1
	store i1 false, i1* @seen_unpairable, align 1
	store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !956, !tbaa !952
	store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !957, !tbaa !952
	store i32 0, i32* @check_input_order, align 4, !dbg !958, !tbaa !959
	%27 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !960
	call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !887, metadata !760), !dbg !962
	%28 = icmp eq i32 %27, -1, !dbg !963
	br i1 %28, label %225, label %29, !dbg !964
	%30 = bitcast i64* %13 to i8*
	%31 = bitcast i64* %6 to i8*
	%32 = bitcast i64* %5 to i8*
	%33 = bitcast i64* %4 to i8*
	%34 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
	%35 = bitcast i64* %10 to i32*
	br label %36, !dbg !964
	%37 = phi i32 [ %27, %29 ], [ %222, %220 ]
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !828, metadata !760), !dbg !965
	store i32 0, i32* %7, align 4, !dbg !966, !tbaa !937
	switch i32 %37, label %219 [
		i32 118, label %38
		i32 97, label %39
		i32 101, label %54
		i32 105, label %68
		i32 49, label %69
		i32 50, label %93
		i32 106, label %117
		i32 111, label %172
		i32 116, label %178
		i32 122, label %208
		i32 129, label %209
		i32 128, label %210
		i32 1, label %211
		i32 130, label %214
		i32 -130, label %215
		i32 -131, label %216
	], !dbg !967
	store i1 false, i1* @print_pairables, align 1
	br label %39, !dbg !968
	call void @llvm.lifetime.start(i64 8, i8* nonnull %30) #11, !dbg !969
	%40 = load i8*, i8** @optarg, align 8, !dbg !970, !tbaa !768
	call void @llvm.dbg.value(metadata i64* %13, i64 0, metadata !890, metadata !972), !dbg !973
	%41 = call i32 @xstrtoul(i8* %40, i8** null, i32 10, i64* nonnull %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !974
	%42 = icmp eq i32 %41, 0, !dbg !975
	br i1 %42, label %43, label %47, !dbg !976
	%44 = load i64, i64* %13, align 8, !dbg !977, !tbaa !979
	call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !890, metadata !760), !dbg !973
	%45 = add i64 %44, -1, !dbg !981
	%46 = icmp ugt i64 %45, 1, !dbg !981
	br i1 %46, label %47, label %51, !dbg !981
	%48 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !982
	%49 = load i8*, i8** @optarg, align 8, !dbg !982, !tbaa !768
	%50 = call i8* @quote(i8* %49) #11, !dbg !983
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48, i8* %50) #11, !dbg !984
	unreachable, !dbg !982
	%52 = icmp eq i64 %44, 1, !dbg !986
	%53 = select i1 %52, i8* @print_unpairables_1, i8* @print_unpairables_2, !dbg !988
	store i8 1, i8* %53, align 1, !tbaa !952
	call void @llvm.lifetime.end(i64 8, i8* nonnull %30) #11, !dbg !989
	br label %220, !dbg !990
	%55 = load i8*, i8** @empty_filler, align 8, !dbg !991, !tbaa !768
	%56 = icmp eq i8* %55, null, !dbg !991
	br i1 %56, label %57, label %59, !dbg !992
	%58 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !tbaa !768
	br label %66, !dbg !992
	%60 = load i8*, i8** @optarg, align 8, !dbg !993, !tbaa !768
	%61 = call i32 @strcmp(i8* nonnull %55, i8* %60) #11, !dbg !993
	%62 = icmp eq i32 %61, 0, !dbg !995
	%63 = ptrtoint i8* %60 to i64, !dbg !997
	br i1 %62, label %66, label %64, !dbg !997
	%65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !999
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %65) #11, !dbg !1000
	unreachable, !dbg !999
	%67 = phi i64 [ %58, %57 ], [ %63, %59 ], !dbg !1001
	store i64 %67, i64* bitcast (i8** @empty_filler to i64*), align 8, !dbg !1002, !tbaa !768
	br label %220, !dbg !1003
	store i1 true, i1* @ignore_case, align 1
	br label %220, !dbg !1004
	%70 = load i8*, i8** @optarg, align 8, !dbg !1005, !tbaa !768
	call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1006, metadata !760) #11, !dbg !1015
	call void @llvm.lifetime.start(i64 8, i8* nonnull %31) #11, !dbg !1017
	call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !1012, metadata !972) #11, !dbg !1018
	%71 = call i32 @xstrtoul(i8* %70, i8** null, i32 10, i64* nonnull %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !1019
	call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !1013, metadata !760) #11, !dbg !1020
	%72 = icmp eq i32 %71, 1, !dbg !1021
	br i1 %72, label %73, label %74, !dbg !1023
	call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1012, metadata !760) #11, !dbg !1018
	store i64 -1, i64* %6, align 8, !dbg !1024, !tbaa !979
	br label %82, !dbg !1025
	%75 = load i64, i64* %6, align 8, !dbg !1026
	%76 = icmp ne i32 %71, 0, !dbg !1028
	%77 = icmp eq i64 %75, 0, !dbg !1030
	%78 = or i1 %76, %77, !dbg !1032
	br i1 %78, label %79, label %82, !dbg !1032
	%80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !1033
	%81 = call i8* @quote(i8* %70) #11, !dbg !1034
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %80, i8* %81) #11, !dbg !1035
	unreachable, !dbg !1033
	%83 = phi i64 [ %75, %74 ], [ -1, %73 ], !dbg !1037
	call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !1012, metadata !760) #11, !dbg !1018
	%84 = add i64 %83, -1, !dbg !1038
	call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !1011, metadata !760) #11, !dbg !1039
	call void @llvm.lifetime.end(i64 8, i8* nonnull %31) #11, !dbg !1040
	call void @llvm.dbg.value(metadata i64* @join_field_1, i64 0, metadata !1041, metadata !760) #11, !dbg !1051
	call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !1046, metadata !760) #11, !dbg !1053
	%85 = load i64, i64* @join_field_1, align 8, !dbg !1054, !tbaa !979
	%86 = icmp eq i64 %85, -1, !dbg !1055
	%87 = icmp eq i64 %85, %84, !dbg !1056
	%88 = or i1 %86, %87, !dbg !1058
	br i1 %88, label %92, label %89, !dbg !1058
	%90 = add i64 %85, 1, !dbg !1059
	call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !1047, metadata !760) #11, !dbg !1060
	call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !1050, metadata !760) #11, !dbg !1061
	%91 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1062
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %91, i64 %90, i64 %83) #11, !dbg !1063
	unreachable, !dbg !1062
	store i64 %84, i64* @join_field_1, align 8, !dbg !1065, !tbaa !979
	br label %220, !dbg !1066
	%94 = load i8*, i8** @optarg, align 8, !dbg !1067, !tbaa !768
	call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !1006, metadata !760) #11, !dbg !1068
	call void @llvm.lifetime.start(i64 8, i8* nonnull %32) #11, !dbg !1070
	call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !1012, metadata !972) #11, !dbg !1071
	%95 = call i32 @xstrtoul(i8* %94, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !1072
	call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1013, metadata !760) #11, !dbg !1073
	%96 = icmp eq i32 %95, 1, !dbg !1074
	br i1 %96, label %97, label %98, !dbg !1075
	call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1012, metadata !760) #11, !dbg !1071
	store i64 -1, i64* %5, align 8, !dbg !1076, !tbaa !979
	br label %106, !dbg !1077
	%99 = load i64, i64* %5, align 8, !dbg !1078
	%100 = icmp ne i32 %95, 0, !dbg !1079
	%101 = icmp eq i64 %99, 0, !dbg !1080
	%102 = or i1 %100, %101, !dbg !1081
	br i1 %102, label %103, label %106, !dbg !1081
	%104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !1082
	%105 = call i8* @quote(i8* %94) #11, !dbg !1083
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %104, i8* %105) #11, !dbg !1084
	unreachable, !dbg !1082
	%107 = phi i64 [ %99, %98 ], [ -1, %97 ], !dbg !1085
	call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !1012, metadata !760) #11, !dbg !1071
	%108 = add i64 %107, -1, !dbg !1086
	call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !1011, metadata !760) #11, !dbg !1087
	call void @llvm.lifetime.end(i64 8, i8* nonnull %32) #11, !dbg !1088
	call void @llvm.dbg.value(metadata i64* @join_field_2, i64 0, metadata !1041, metadata !760) #11, !dbg !1089
	call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !1046, metadata !760) #11, !dbg !1091
	%109 = load i64, i64* @join_field_2, align 8, !dbg !1092, !tbaa !979
	%110 = icmp eq i64 %109, -1, !dbg !1093
	%111 = icmp eq i64 %109, %108, !dbg !1094
	%112 = or i1 %110, %111, !dbg !1095
	br i1 %112, label %116, label %113, !dbg !1095
	%114 = add i64 %109, 1, !dbg !1096
	call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !1047, metadata !760) #11, !dbg !1097
	call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !1050, metadata !760) #11, !dbg !1098
	%115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1099
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %115, i64 %114, i64 %107) #11, !dbg !1100
	unreachable, !dbg !1099
	store i64 %108, i64* @join_field_2, align 8, !dbg !1101, !tbaa !979
	br label %220, !dbg !1102
	%118 = load i8*, i8** @optarg, align 8, !dbg !1103, !tbaa !768
	%119 = load i8, i8* %118, align 1, !dbg !1103, !tbaa !959
	%120 = add i8 %119, -49, !dbg !1104
	%121 = icmp ult i8 %120, 2, !dbg !1104
	br i1 %121, label %122, label %141, !dbg !1104
	%123 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1105
	%124 = load i8, i8* %123, align 1, !dbg !1105, !tbaa !959
	%125 = icmp eq i8 %124, 0, !dbg !1105
	br i1 %125, label %126, label %141, !dbg !1107
	%127 = load i32, i32* @optind, align 4, !dbg !1108, !tbaa !937
	%128 = add nsw i32 %127, -1, !dbg !1110
	%129 = sext i32 %128 to i64, !dbg !1111
	%130 = getelementptr inbounds i8*, i8** %1, i64 %129, !dbg !1111
	%131 = load i8*, i8** %130, align 8, !dbg !1111, !tbaa !768
	%132 = getelementptr inbounds i8, i8* %131, i64 2, !dbg !1112
	%133 = icmp eq i8* %118, %132, !dbg !1113
	br i1 %133, label %134, label %141, !dbg !1114
	%135 = icmp eq i8 %119, 50, !dbg !1116
	%136 = zext i1 %135 to i64, !dbg !1117
	%137 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %136, !dbg !1117
	%138 = load i32, i32* %137, align 4, !dbg !1118, !tbaa !937
	%139 = add nsw i32 %138, 1, !dbg !1118
	store i32 %139, i32* %137, align 4, !dbg !1118, !tbaa !937
	%140 = select i1 %135, i32 2, i32 1, !dbg !1119
	call void @llvm.dbg.value(metadata i32 %140, i64 0, metadata !828, metadata !760), !dbg !965
	store i32 %140, i32* %7, align 4, !dbg !1120, !tbaa !937
	br label %220, !dbg !1121
	call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !1006, metadata !760) #11, !dbg !1122
	call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #11, !dbg !1125
	call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1012, metadata !972) #11, !dbg !1126
	%142 = call i32 @xstrtoul(i8* %118, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !1127
	call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !1013, metadata !760) #11, !dbg !1128
	%143 = icmp eq i32 %142, 1, !dbg !1129
	br i1 %143, label %144, label %145, !dbg !1130
	call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1012, metadata !760) #11, !dbg !1126
	store i64 -1, i64* %4, align 8, !dbg !1131, !tbaa !979
	br label %153, !dbg !1132
	%146 = load i64, i64* %4, align 8, !dbg !1133
	%147 = icmp ne i32 %142, 0, !dbg !1134
	%148 = icmp eq i64 %146, 0, !dbg !1135
	%149 = or i1 %147, %148, !dbg !1136
	br i1 %149, label %150, label %153, !dbg !1136
	%151 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !1137
	%152 = call i8* @quote(i8* %118) #11, !dbg !1138
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %151, i8* %152) #11, !dbg !1139
	unreachable, !dbg !1137
	%154 = phi i64 [ %146, %145 ], [ -1, %144 ], !dbg !1140
	call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !1012, metadata !760) #11, !dbg !1126
	%155 = add i64 %154, -1, !dbg !1141
	call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1011, metadata !760) #11, !dbg !1142
	call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11, !dbg !1143
	call void @llvm.dbg.value(metadata i64* @join_field_1, i64 0, metadata !1041, metadata !760) #11, !dbg !1144
	call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1046, metadata !760) #11, !dbg !1147
	%156 = load i64, i64* @join_field_1, align 8, !dbg !1148, !tbaa !979
	%157 = icmp eq i64 %156, -1, !dbg !1149
	%158 = icmp eq i64 %156, %155, !dbg !1150
	%159 = or i1 %157, %158, !dbg !1151
	br i1 %159, label %163, label %160, !dbg !1151
	%161 = add i64 %156, 1, !dbg !1152
	call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !1047, metadata !760) #11, !dbg !1153
	call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !1050, metadata !760) #11, !dbg !1154
	%162 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1155
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %162, i64 %161, i64 %154) #11, !dbg !1156
	unreachable, !dbg !1155
	store i64 %155, i64* @join_field_1, align 8, !dbg !1157, !tbaa !979
	call void @llvm.dbg.value(metadata i64* @join_field_2, i64 0, metadata !1041, metadata !760) #11, !dbg !1158
	call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1046, metadata !760) #11, !dbg !1160
	%164 = load i64, i64* @join_field_2, align 8, !dbg !1161, !tbaa !979
	%165 = icmp eq i64 %164, -1, !dbg !1162
	%166 = icmp eq i64 %164, %155, !dbg !1163
	%167 = or i1 %165, %166, !dbg !1164
	br i1 %167, label %171, label %168, !dbg !1164
	%169 = add i64 %164, 1, !dbg !1165
	call void @llvm.dbg.value(metadata i64 %169, i64 0, metadata !1047, metadata !760) #11, !dbg !1166
	call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !1050, metadata !760) #11, !dbg !1167
	%170 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1168
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %170, i64 %169, i64 %154) #11, !dbg !1169
	unreachable, !dbg !1168
	store i64 %155, i64* @join_field_2, align 8, !dbg !1170, !tbaa !979
	br label %220
	call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !904, metadata !760), !dbg !1171
	%173 = load i8*, i8** @optarg, align 8, !dbg !1172, !tbaa !768
	%174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !1172
	%175 = icmp eq i32 %174, 0, !dbg !1174
	br i1 %175, label %176, label %177, !dbg !1176
	store i1 true, i1* @autoformat, align 1
	br label %220, !dbg !1178
	call fastcc void @add_field_list(i8* %173), !dbg !1179
	call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !828, metadata !760), !dbg !965
	store i32 3, i32* %7, align 4, !dbg !1181, !tbaa !937
	br label %220
	%179 = load i8*, i8** @optarg, align 8, !dbg !1182, !tbaa !768
	%180 = load i8, i8* %179, align 1, !dbg !1182, !tbaa !959
	call void @llvm.dbg.value(metadata i8 %180, i64 0, metadata !908, metadata !760), !dbg !1183
	%181 = icmp eq i8 %180, 0, !dbg !1184
	br i1 %181, label %198, label %182, !dbg !1185
	%183 = getelementptr inbounds i8, i8* %179, i64 1, !dbg !1186
	%184 = load i8, i8* %183, align 1, !dbg !1186, !tbaa !959
	%185 = icmp eq i8 %184, 0, !dbg !1186
	br i1 %185, label %198, label %186, !dbg !1187
	call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !916, metadata !760), !dbg !1188
	call void @llvm.dbg.value(metadata i8* %179, i64 0, metadata !917, metadata !760), !dbg !1189
	%187 = icmp eq i8 %180, 92, !dbg !1190
	%188 = icmp eq i8 %184, 48, !dbg !1193
	%189 = and i1 %187, %188, !dbg !1197
	br i1 %189, label %190, label %194, !dbg !1197
	%191 = getelementptr inbounds i8, i8* %179, i64 2, !dbg !1199
	%192 = load i8, i8* %191, align 1, !dbg !1199, !tbaa !959
	%193 = icmp eq i8 %192, 0, !dbg !1202
	br i1 %193, label %198, label %194, !dbg !1204
	%195 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !1206
	%196 = load i8*, i8** @optarg, align 8, !dbg !1206, !tbaa !768
	%197 = call i8* @quote(i8* %196) #11, !dbg !1207
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %195, i8* %197) #11, !dbg !1209
	unreachable, !dbg !1206
	%199 = phi i8 [ %180, %182 ], [ 10, %178 ], [ 0, %190 ]
	call void @llvm.dbg.value(metadata i8 %199, i64 0, metadata !908, metadata !760), !dbg !1183
	%200 = load i32, i32* @tab, align 4, !dbg !1211, !tbaa !937
	%201 = icmp slt i32 %200, 0, !dbg !1213
	%202 = zext i8 %199 to i32, !dbg !1214
	%203 = icmp eq i32 %200, %202, !dbg !1216
	%204 = or i1 %201, %203, !dbg !1217
	br i1 %204, label %207, label %205, !dbg !1217
	%206 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !1218
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %206) #11, !dbg !1219
	unreachable, !dbg !1218
	store i32 %202, i32* @tab, align 4, !dbg !1220, !tbaa !937
	br label %220, !dbg !1221
	store i1 true, i1* @eolchar, align 1
	br label %220, !dbg !1222
	store i32 2, i32* @check_input_order, align 4, !dbg !1223, !tbaa !959
	br label %220, !dbg !1224
	store i32 1, i32* @check_input_order, align 4, !dbg !1225, !tbaa !959
	br label %220, !dbg !1226
	%212 = load i8*, i8** @optarg, align 8, !dbg !1227, !tbaa !768
	call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !828, metadata !972), !dbg !965
	call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !829, metadata !972), !dbg !936
	call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !888, metadata !972), !dbg !944
	call fastcc void @add_file_name(i8* %212, i32* nonnull %34, i32* nonnull %35, i32* nonnull %12, i32* nonnull %8, i32* nonnull %7), !dbg !1228
	%213 = load i32, i32* %7, align 4, !tbaa !937
	br label %220, !dbg !1229
	store i1 true, i1* @join_header_lines, align 1
	br label %220, !dbg !1230
	call void @usage(i32 0) #15, !dbg !1231
	unreachable, !dbg !1231
	%217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1232, !tbaa !768
	%218 = load i8*, i8** @Version, align 8, !dbg !1232, !tbaa !768
	call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %218, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* null) #11, !dbg !1232
	call void @exit(i32 0) #14, !dbg !1233
	unreachable, !dbg !1232
	call void @usage(i32 1) #15, !dbg !1234
	unreachable, !dbg !1234
	%221 = phi i32 [ 0, %176 ], [ 3, %177 ], [ %140, %134 ], [ 0, %171 ], [ 0, %214 ], [ %213, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %208 ], [ 0, %207 ], [ 0, %116 ], [ 0, %92 ], [ 0, %68 ], [ 0, %66 ], [ 0, %51 ], !dbg !1235
	call void @llvm.dbg.value(metadata i32 %221, i64 0, metadata !828, metadata !760), !dbg !965
	call void @llvm.dbg.value(metadata i32 %221, i64 0, metadata !829, metadata !760), !dbg !936
	store i32 %221, i32* %8, align 4, !dbg !1236, !tbaa !937
	%222 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !960
	call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !887, metadata !760), !dbg !962
	%223 = icmp eq i32 %222, -1, !dbg !963
	br i1 %223, label %224, label %36, !dbg !964, !llvm.loop !1237
	br label %225, !dbg !936
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !829, metadata !760), !dbg !936
	store i32 0, i32* %8, align 4, !dbg !1240, !tbaa !937
	%226 = load i32, i32* @optind, align 4, !dbg !1241, !tbaa !937
	%227 = icmp slt i32 %226, %0, !dbg !1242
	br i1 %227, label %228, label %240, !dbg !1243
	%229 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
	%230 = bitcast i64* %10 to i32*
	br label %231, !dbg !1243
	%232 = phi i32 [ %226, %228 ], [ %237, %231 ]
	%233 = add nsw i32 %232, 1, !dbg !1244
	store i32 %233, i32* @optind, align 4, !dbg !1244, !tbaa !937
	%234 = sext i32 %232 to i64, !dbg !1245
	%235 = getelementptr inbounds i8*, i8** %1, i64 %234, !dbg !1245
	%236 = load i8*, i8** %235, align 8, !dbg !1245, !tbaa !768
	call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !828, metadata !972), !dbg !965
	call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !829, metadata !972), !dbg !936
	call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !888, metadata !972), !dbg !944
	call fastcc void @add_file_name(i8* %236, i32* nonnull %229, i32* nonnull %230, i32* nonnull %12, i32* nonnull %8, i32* nonnull %7), !dbg !1246
	%237 = load i32, i32* @optind, align 4, !dbg !1241, !tbaa !937
	%238 = icmp slt i32 %237, %0, !dbg !1242
	br i1 %238, label %231, label %239, !dbg !1243, !llvm.loop !1247
	br label %240, !dbg !1250
	%241 = load i32, i32* %12, align 4, !dbg !1250, !tbaa !937
	call void @llvm.dbg.value(metadata i32 %241, i64 0, metadata !888, metadata !760), !dbg !944
	switch i32 %241, label %248 [
		i32 2, label %242
		i32 0, label %246
	], !dbg !1252
	%243 = bitcast i64* %10 to i32*, !dbg !1253
	%244 = load i32, i32* %243, align 8, !dbg !1253, !tbaa !937
	%245 = icmp eq i32 %244, 0, !dbg !1257
	br i1 %245, label %271, label %256, !dbg !1258
	%247 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 5) #11, !dbg !1259
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %247) #11, !dbg !1262
	br label %255, !dbg !1264
	%249 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !1265
	%250 = add nsw i32 %0, -1, !dbg !1266
	%251 = sext i32 %250 to i64, !dbg !1267
	%252 = getelementptr inbounds i8*, i8** %1, i64 %251, !dbg !1267
	%253 = load i8*, i8** %252, align 8, !dbg !1267, !tbaa !768
	%254 = call i8* @quote(i8* %253) #11, !dbg !1268
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %249, i8* %254) #11, !dbg !1269
	br label %255
	call void @usage(i32 1) #15, !dbg !1271
	unreachable, !dbg !1271
	call void @llvm.dbg.value(metadata i64* @join_field_1, i64 0, metadata !1041, metadata !760) #11, !dbg !1272
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !760) #11, !dbg !1275
	%257 = load i64, i64* @join_field_1, align 8, !dbg !1276, !tbaa !979
	switch i64 %257, label %258 [
		i64 -1, label %263
		i64 0, label %263
	], !dbg !1277
	%259 = phi i64 [ 1, %256 ], [ 2, %760 ]
	%260 = phi i64 [ %257, %256 ], [ %275, %760 ]
	%261 = add i64 %260, 1, !dbg !1278
	call void @llvm.dbg.value(metadata i64 %261, i64 0, metadata !1047, metadata !760) #11, !dbg !1279
	call void @llvm.dbg.value(metadata i64 %259, i64 0, metadata !1050, metadata !760) #11, !dbg !1280
	%262 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1281
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %262, i64 %261, i64 %259) #11, !dbg !1282
	unreachable, !dbg !1281
	store i64 0, i64* @join_field_1, align 8, !dbg !1283, !tbaa !979
	call void @llvm.dbg.value(metadata i64* @join_field_2, i64 0, metadata !1041, metadata !760) #11, !dbg !1284
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !760) #11, !dbg !1286
	%264 = load i64, i64* @join_field_2, align 8, !dbg !1287, !tbaa !979
	switch i64 %264, label %265 [
		i64 -1, label %270
		i64 0, label %270
	], !dbg !1288
	%266 = phi i64 [ 1, %263 ], [ 2, %761 ]
	%267 = phi i64 [ %264, %263 ], [ %762, %761 ]
	%268 = add i64 %267, 1, !dbg !1289
	call void @llvm.dbg.value(metadata i64 %268, i64 0, metadata !1047, metadata !760) #11, !dbg !1290
	call void @llvm.dbg.value(metadata i64 %266, i64 0, metadata !1050, metadata !760) #11, !dbg !1291
	%269 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1292
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %269, i64 %268, i64 %266) #11, !dbg !1293
	unreachable, !dbg !1292
	store i64 0, i64* @join_field_2, align 8, !dbg !1294, !tbaa !979
	br label %271, !dbg !1295
	%272 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1, !dbg !1253
	%273 = load i32, i32* %272, align 4, !dbg !1253, !tbaa !937
	%274 = icmp eq i32 %273, 0, !dbg !1257
	%275 = load i64, i64* @join_field_1, align 8, !tbaa !979
	br i1 %274, label %763, label %760, !dbg !1258
	store i64 0, i64* @join_field_1, align 8, !dbg !1296, !tbaa !979
	br label %277, !dbg !1298
	%278 = load i64, i64* @join_field_2, align 8, !dbg !1299, !tbaa !979
	%279 = icmp eq i64 %278, -1, !dbg !1301
	br i1 %279, label %280, label %282, !dbg !1302
	%281 = phi i64 [ 1, %761 ], [ 1, %761 ], [ 0, %277 ]
	store i64 %281, i64* @join_field_2, align 8, !tbaa !979
	br label %282, !dbg !1303
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !922, metadata !760), !dbg !1303
	%283 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16, !dbg !1304, !tbaa !768
	call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !923, metadata !760), !dbg !1306
	%284 = load i8, i8* %283, align 1, !dbg !1304, !tbaa !959
	%285 = icmp eq i8 %284, 45, !dbg !1307
	br i1 %285, label %286, label %292, !dbg !1310
	%287 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !1312
	%288 = load i8, i8* %287, align 1, !dbg !1312, !tbaa !959
	%289 = icmp eq i8 %288, 0, !dbg !1315
	br i1 %289, label %290, label %292, !dbg !1317
	%291 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1319, !tbaa !768
	br label %294, !dbg !1321
	%293 = call %struct._IO_FILE* @fopen_safer(i8* %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #11, !dbg !1322
	br label %294, !dbg !1324
	%295 = phi %struct._IO_FILE* [ %291, %290 ], [ %293, %292 ], !dbg !1325
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !833, metadata !760), !dbg !1327
	%296 = icmp eq %struct._IO_FILE* %295, null, !dbg !1328
	br i1 %296, label %297, label %302, !dbg !1330
	%298 = tail call i32* @__errno_location() #1, !dbg !1331
	%299 = load i32, i32* %298, align 4, !dbg !1331, !tbaa !937
	%300 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16, !dbg !1331, !tbaa !768
	%301 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %300) #11, !dbg !1332
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %301) #11, !dbg !1334
	unreachable, !dbg !1331
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !928, metadata !760), !dbg !1336
	%303 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8, !dbg !1337, !tbaa !768
	call void @llvm.dbg.value(metadata i8* %303, i64 0, metadata !929, metadata !760), !dbg !1339
	%304 = load i8, i8* %303, align 1, !dbg !1337, !tbaa !959
	%305 = icmp eq i8 %304, 45, !dbg !1340
	br i1 %305, label %306, label %312, !dbg !1343
	%307 = getelementptr inbounds i8, i8* %303, i64 1, !dbg !1345
	%308 = load i8, i8* %307, align 1, !dbg !1345, !tbaa !959
	%309 = icmp eq i8 %308, 0, !dbg !1348
	br i1 %309, label %310, label %312, !dbg !1350
	%311 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1351, !tbaa !768
	br label %314, !dbg !1352
	%313 = call %struct._IO_FILE* @fopen_safer(i8* %303, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #11, !dbg !1353
	br label %314, !dbg !1354
	%315 = phi %struct._IO_FILE* [ %311, %310 ], [ %313, %312 ], !dbg !1355
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !886, metadata !760), !dbg !1356
	%316 = icmp eq %struct._IO_FILE* %315, null, !dbg !1357
	br i1 %316, label %317, label %322, !dbg !1359
	%318 = tail call i32* @__errno_location() #1, !dbg !1360
	%319 = load i32, i32* %318, align 4, !dbg !1360, !tbaa !937
	%320 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8, !dbg !1360, !tbaa !768
	%321 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %320) #11, !dbg !1361
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %319, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %321) #11, !dbg !1363
	unreachable, !dbg !1360
	%323 = icmp eq %struct._IO_FILE* %295, %315, !dbg !1365
	br i1 %323, label %324, label %328, !dbg !1367
	%325 = tail call i32* @__errno_location() #1, !dbg !1368
	%326 = load i32, i32* %325, align 4, !dbg !1368, !tbaa !937
	%327 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !1369
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %326, i8* %327) #11, !dbg !1371
	unreachable, !dbg !1368
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1373, metadata !760) #11, !dbg !1414
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !1378, metadata !760) #11, !dbg !1416
	call void @fadvise(%struct._IO_FILE* nonnull %295, i32 2) #11, !dbg !1417
	call void @fadvise(%struct._IO_FILE* nonnull %315, i32 2) #11, !dbg !1418
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1379, metadata !972) #11, !dbg !1419
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1379, metadata !972) #11, !dbg !1419
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1420, metadata !760) #11, !dbg !1431
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1433
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1427, metadata !760) #11, !dbg !1434
	call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !58, metadata !760) #11, !dbg !1435
	call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !59, metadata !760) #11, !dbg !1437
	call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !60, metadata !760) #11, !dbg !1438
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !61, metadata !760) #11, !dbg !1439
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1439
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1439
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1439
	%329 = call i8* @xrealloc(i8* null, i64 128) #11, !dbg !1440
	%330 = bitcast i8* %329 to %struct.line**, !dbg !1441
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !760) #11, !dbg !1442
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !760) #11, !dbg !1442
	call void @llvm.memset.p0i8.i64(i8* %329, i8 0, i64 128, i32 8, i1 false) #11, !dbg !1443
	%331 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** nonnull %330, i32 1) #11, !dbg !1446
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1386, metadata !972) #11, !dbg !1448
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1386, metadata !972) #11, !dbg !1448
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !1420, metadata !760) #11, !dbg !1449
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1451
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1427, metadata !760) #11, !dbg !1452
	call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !58, metadata !760) #11, !dbg !1453
	call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !59, metadata !760) #11, !dbg !1455
	call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !60, metadata !760) #11, !dbg !1456
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !61, metadata !760) #11, !dbg !1457
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1457
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1457
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1457
	%332 = call i8* @xrealloc(i8* null, i64 128) #11, !dbg !1458
	%333 = bitcast i8* %332 to %struct.line**, !dbg !1459
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !760) #11, !dbg !1460
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !760) #11, !dbg !1460
	call void @llvm.memset.p0i8.i64(i8* %332, i8 0, i64 128, i32 8, i1 false) #11, !dbg !1461
	%334 = zext i1 %331 to i64, !dbg !1462
	%335 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** nonnull %333, i32 2) #11, !dbg !1463
	%336 = zext i1 %335 to i64, !dbg !1464
	%337 = load i1, i1* @autoformat, align 1
	br i1 %337, label %338, label %351, !dbg !1465
	br i1 %331, label %339, label %343, !dbg !1466
	%340 = load %struct.line*, %struct.line** %330, align 8, !dbg !1469, !tbaa !768
	%341 = getelementptr inbounds %struct.line, %struct.line* %340, i64 0, i32 1, !dbg !1471
	%342 = load i64, i64* %341, align 8, !dbg !1471, !tbaa !1472
	br label %343, !dbg !1475
	%344 = phi i64 [ %342, %339 ], [ 0, %338 ], !dbg !1476
	store i64 %344, i64* @autocount_1, align 8, !dbg !1478, !tbaa !979
	br i1 %335, label %345, label %349, !dbg !1479
	%346 = load %struct.line*, %struct.line** %333, align 8, !dbg !1480, !tbaa !768
	%347 = getelementptr inbounds %struct.line, %struct.line* %346, i64 0, i32 1, !dbg !1481
	%348 = load i64, i64* %347, align 8, !dbg !1481, !tbaa !1472
	br label %349, !dbg !1482
	%350 = phi i64 [ %348, %345 ], [ 0, %343 ], !dbg !1483
	store i64 %350, i64* @autocount_2, align 8, !dbg !1484, !tbaa !979
	br label %351, !dbg !1485
	%352 = load i1, i1* @join_header_lines, align 1
	br i1 %352, label %353, label %370, !dbg !1486
	br i1 %331, label %355, label %354, !dbg !1487
	br i1 %335, label %360, label %612, !dbg !1489
	%356 = load %struct.line*, %struct.line** %330, align 8, !dbg !1491, !tbaa !768
	call void @llvm.dbg.value(metadata %struct.line* %356, i64 0, metadata !1390, metadata !760) #11, !dbg !1493
	br i1 %335, label %360, label %357, !dbg !1494
	call void @llvm.dbg.value(metadata %struct.line* %362, i64 0, metadata !1395, metadata !760) #11, !dbg !1495
	call fastcc void @prjoin(%struct.line* %356, %struct.line* nonnull @uni_blank) #11, !dbg !1496
	call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x %struct.line*]* @prevline to i8*), i8 0, i64 16, i32 16, i1 false) #11, !dbg !1497
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1379, metadata !972) #11, !dbg !1419
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1498, metadata !760) #11, !dbg !1506
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1503, metadata !760) #11, !dbg !1509
	call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1504, metadata !1510) #11, !dbg !1511
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1505, metadata !760) #11, !dbg !1512
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1420, metadata !760) #11, !dbg !1513
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1515
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1427, metadata !760) #11, !dbg !1516
	%358 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** nonnull %330, i32 1) #11, !dbg !1517
	%359 = zext i1 %358 to i64, !dbg !1518
	br label %370, !dbg !1518
	%361 = phi %struct.line* [ %356, %355 ], [ @uni_blank, %354 ]
	%362 = load %struct.line*, %struct.line** %333, align 8, !dbg !1519, !tbaa !768
	call void @llvm.dbg.value(metadata %struct.line* %362, i64 0, metadata !1395, metadata !760) #11, !dbg !1495
	call fastcc void @prjoin(%struct.line* %361, %struct.line* %362) #11, !dbg !1496
	call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x %struct.line*]* @prevline to i8*), i8 0, i64 16, i32 16, i1 false) #11, !dbg !1497
	br i1 %331, label %363, label %366, !dbg !1520
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1379, metadata !972) #11, !dbg !1419
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1498, metadata !760) #11, !dbg !1506
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1503, metadata !760) #11, !dbg !1509
	call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1504, metadata !1510) #11, !dbg !1511
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1505, metadata !760) #11, !dbg !1512
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1420, metadata !760) #11, !dbg !1513
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1515
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1427, metadata !760) #11, !dbg !1516
	%364 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** %330, i32 1) #11, !dbg !1517
	%365 = zext i1 %364 to i64, !dbg !1518
	br label %366, !dbg !1518
	%367 = phi i64 [ %365, %363 ], [ 0, %360 ]
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1386, metadata !972) #11, !dbg !1448
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !1498, metadata !760) #11, !dbg !1521
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1503, metadata !760) #11, !dbg !1524
	call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1504, metadata !1510) #11, !dbg !1525
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1505, metadata !760) #11, !dbg !1526
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !1420, metadata !760) #11, !dbg !1527
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1529
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1427, metadata !760) #11, !dbg !1530
	%368 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** nonnull %333, i32 2) #11, !dbg !1531
	%369 = zext i1 %368 to i64, !dbg !1532
	br label %370, !dbg !1532
	%371 = phi i64 [ %367, %366 ], [ %334, %351 ], [ %359, %357 ]
	%372 = phi i64 [ %369, %366 ], [ %336, %351 ], [ %336, %357 ]
	%373 = icmp ne i64 %371, 0, !dbg !1533
	%374 = icmp ne i64 %372, 0, !dbg !1535
	%375 = and i1 %373, %374, !dbg !1536
	br i1 %375, label %376, label %612, !dbg !1537
	br label %377, !dbg !1537
	%378 = phi i64 [ %436, %424 ], [ %372, %376 ]
	%379 = phi i64 [ %435, %424 ], [ 16, %376 ]
	%380 = phi %struct.line** [ %434, %424 ], [ %333, %376 ]
	%381 = phi i8* [ %433, %424 ], [ %332, %376 ]
	%382 = phi i8* [ %432, %424 ], [ %332, %376 ]
	%383 = phi i8* [ %431, %424 ], [ %332, %376 ]
	%384 = phi i64 [ %429, %424 ], [ 16, %376 ]
	%385 = phi %struct.line** [ %428, %424 ], [ %330, %376 ]
	%386 = phi i8* [ %427, %424 ], [ %329, %376 ]
	%387 = phi i8* [ %426, %424 ], [ %329, %376 ]
	%388 = phi i8* [ %425, %424 ], [ %329, %376 ]
	br label %389, !dbg !1537
	%390 = phi i64 [ %378, %377 ], [ %464, %457 ]
	%391 = phi i64 [ %379, %377 ], [ %462, %457 ]
	%392 = phi %struct.line** [ %380, %377 ], [ %461, %457 ]
	%393 = phi i8* [ %381, %377 ], [ %460, %457 ]
	%394 = phi i8* [ %382, %377 ], [ %459, %457 ]
	%395 = phi i8* [ %383, %377 ], [ %458, %457 ]
	%396 = load %struct.line*, %struct.line** %385, align 8, !dbg !1539, !tbaa !768
	%397 = load %struct.line*, %struct.line** %392, align 8, !dbg !1540, !tbaa !768
	%398 = load i64, i64* @join_field_1, align 8, !dbg !1541, !tbaa !979
	%399 = load i64, i64* @join_field_2, align 8, !dbg !1542, !tbaa !979
	%400 = call fastcc i32 @keycmp(%struct.line* %396, %struct.line* %397, i64 %398, i64 %399) #11, !dbg !1543
	call void @llvm.dbg.value(metadata i32 %400, i64 0, metadata !1387, metadata !760) #11, !dbg !1544
	%401 = icmp slt i32 %400, 0, !dbg !1545
	br i1 %401, label %402, label %440, !dbg !1547
	%403 = load i8, i8* @print_unpairables_1, align 1, !dbg !1548, !tbaa !952, !range !1551
	%404 = icmp eq i8 %403, 0, !dbg !1548
	br i1 %404, label %407, label %405, !dbg !1552
	%406 = load %struct.line*, %struct.line** %385, align 8, !dbg !1553, !tbaa !768
	call fastcc void @prjoin(%struct.line* %406, %struct.line* nonnull @uni_blank) #11, !dbg !1554
	br label %407, !dbg !1554
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1379, metadata !972) #11, !dbg !1419
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1498, metadata !760) #11, !dbg !1555
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1503, metadata !760) #11, !dbg !1557
	call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1504, metadata !1510) #11, !dbg !1558
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1505, metadata !760) #11, !dbg !1559
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1420, metadata !760) #11, !dbg !1560
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1562
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1427, metadata !760) #11, !dbg !1563
	%408 = icmp eq i64 %384, 0, !dbg !1564
	br i1 %408, label %409, label %416, !dbg !1565
	call void @llvm.dbg.value(metadata i8* %386, i64 0, metadata !58, metadata !760) #11, !dbg !1566
	call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !59, metadata !760) #11, !dbg !1568
	call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !60, metadata !760) #11, !dbg !1569
	call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !61, metadata !760) #11, !dbg !1570
	%410 = icmp eq i8* %386, null, !dbg !1571
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !61, metadata !760) #11, !dbg !1570
	%411 = select i1 %410, i64 16, i64 1, !dbg !1573
	call void @llvm.dbg.value(metadata i64 %411, i64 0, metadata !61, metadata !760) #11, !dbg !1570
	%412 = shl nuw nsw i64 %411, 3, !dbg !1574
	%413 = call i8* @xrealloc(i8* %386, i64 %412) #11, !dbg !1575
	%414 = bitcast i8* %413 to %struct.line**, !dbg !1576
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !760) #11, !dbg !1577
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !760) #11, !dbg !1577
	%415 = select i1 %410, i64 128, i64 8, !dbg !1578
	call void @llvm.memset.p0i8.i64(i8* %413, i8 0, i64 %415, i32 8, i1 false) #11, !dbg !1580
	br label %416, !dbg !1581
	%417 = phi i8* [ %388, %407 ], [ %413, %409 ]
	%418 = phi i8* [ %387, %407 ], [ %413, %409 ]
	%419 = phi i8* [ %386, %407 ], [ %413, %409 ]
	%420 = phi %struct.line** [ %385, %407 ], [ %414, %409 ]
	%421 = phi i64 [ %384, %407 ], [ %411, %409 ]
	%422 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** nonnull %420, i32 1) #11, !dbg !1581
	%423 = zext i1 %422 to i64, !dbg !1582
	store i1 true, i1* @seen_unpairable, align 1
	br label %424, !dbg !1583
	%425 = phi i8* [ %499, %597 ], [ %417, %416 ]
	%426 = phi i8* [ %500, %597 ], [ %418, %416 ]
	%427 = phi i8* [ %501, %597 ], [ %419, %416 ]
	%428 = phi %struct.line** [ %502, %597 ], [ %420, %416 ]
	%429 = phi i64 [ %503, %597 ], [ %421, %416 ]
	%430 = phi i64 [ %596, %597 ], [ %423, %416 ]
	%431 = phi i8* [ %550, %597 ], [ %395, %416 ]
	%432 = phi i8* [ %551, %597 ], [ %394, %416 ]
	%433 = phi i8* [ %552, %597 ], [ %393, %416 ]
	%434 = phi %struct.line** [ %553, %597 ], [ %392, %416 ]
	%435 = phi i64 [ %554, %597 ], [ %391, %416 ]
	%436 = phi i64 [ 1, %597 ], [ %390, %416 ]
	%437 = icmp ne i64 %430, 0, !dbg !1533
	%438 = icmp ne i64 %436, 0, !dbg !1535
	%439 = and i1 %437, %438, !dbg !1536
	br i1 %439, label %377, label %603, !dbg !1537, !llvm.loop !1584
	%441 = icmp eq i32 %400, 0, !dbg !1587
	br i1 %441, label %442, label %443, !dbg !1589, !llvm.loop !1590
	br label %465, !dbg !1419
	%444 = load i8, i8* @print_unpairables_2, align 1, !dbg !1593, !tbaa !952, !range !1551
	%445 = icmp eq i8 %444, 0, !dbg !1593
	br i1 %445, label %448, label %446, !dbg !1596
	%447 = load %struct.line*, %struct.line** %392, align 8, !dbg !1597, !tbaa !768
	call fastcc void @prjoin(%struct.line* nonnull @uni_blank, %struct.line* %447) #11, !dbg !1598
	br label %448, !dbg !1598
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1386, metadata !972) #11, !dbg !1448
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !1498, metadata !760) #11, !dbg !1599
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1503, metadata !760) #11, !dbg !1601
	call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1504, metadata !1510) #11, !dbg !1602
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1505, metadata !760) #11, !dbg !1603
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !1420, metadata !760) #11, !dbg !1604
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1606
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1427, metadata !760) #11, !dbg !1607
	%449 = icmp eq i64 %391, 0, !dbg !1608
	br i1 %449, label %450, label %457, !dbg !1609
	call void @llvm.dbg.value(metadata i8* %394, i64 0, metadata !58, metadata !760) #11, !dbg !1610
	call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !59, metadata !760) #11, !dbg !1612
	call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !60, metadata !760) #11, !dbg !1613
	call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !61, metadata !760) #11, !dbg !1614
	%451 = icmp eq i8* %394, null, !dbg !1615
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !61, metadata !760) #11, !dbg !1614
	%452 = select i1 %451, i64 16, i64 1, !dbg !1616
	call void @llvm.dbg.value(metadata i64 %452, i64 0, metadata !61, metadata !760) #11, !dbg !1614
	%453 = shl nuw nsw i64 %452, 3, !dbg !1617
	%454 = call i8* @xrealloc(i8* %394, i64 %453) #11, !dbg !1618
	%455 = bitcast i8* %454 to %struct.line**, !dbg !1619
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !760) #11, !dbg !1620
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1428, metadata !760) #11, !dbg !1620
	%456 = select i1 %451, i64 128, i64 8, !dbg !1621
	call void @llvm.memset.p0i8.i64(i8* %454, i8 0, i64 %456, i32 8, i1 false) #11, !dbg !1622
	br label %457, !dbg !1623
	%458 = phi i8* [ %395, %448 ], [ %454, %450 ]
	%459 = phi i8* [ %394, %448 ], [ %454, %450 ]
	%460 = phi i8* [ %393, %448 ], [ %454, %450 ]
	%461 = phi %struct.line** [ %392, %448 ], [ %455, %450 ]
	%462 = phi i64 [ %391, %448 ], [ %452, %450 ]
	%463 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** nonnull %461, i32 2) #11, !dbg !1623
	%464 = zext i1 %463 to i64, !dbg !1624
	store i1 true, i1* @seen_unpairable, align 1
	br i1 %463, label %389, label %602, !dbg !1537, !llvm.loop !1584
	%466 = phi i64 [ %473, %506 ], [ 0, %442 ]
	%467 = phi i8* [ %499, %506 ], [ %388, %442 ]
	%468 = phi i8* [ %500, %506 ], [ %387, %442 ]
	%469 = phi i8* [ %501, %506 ], [ %386, %442 ]
	%470 = phi %struct.line** [ %502, %506 ], [ %385, %442 ]
	%471 = phi i64 [ %503, %506 ], [ %384, %442 ]
	%472 = phi i64 [ %507, %506 ], [ 1, %442 ]
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1379, metadata !972) #11, !dbg !1419
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1498, metadata !760) #11, !dbg !1625
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1503, metadata !760) #11, !dbg !1628
	call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1504, metadata !1510) #11, !dbg !1629
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1505, metadata !760) #11, !dbg !1630
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, i64 0, metadata !1420, metadata !760) #11, !dbg !1631
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1633
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1427, metadata !760) #11, !dbg !1634
	%473 = add i64 %466, 1, !dbg !1635
	%474 = shl i64 %473, 3, !dbg !1635
	%475 = icmp eq i64 %472, %471, !dbg !1635
	br i1 %475, label %476, label %498, !dbg !1636
	call void @llvm.dbg.value(metadata i8* %468, i64 0, metadata !58, metadata !760) #11, !dbg !1637
	call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !59, metadata !760) #11, !dbg !1639
	call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !60, metadata !760) #11, !dbg !1640
	call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !61, metadata !760) #11, !dbg !1641
	%477 = icmp eq i8* %468, null, !dbg !1642
	br i1 %477, label %478, label %481, !dbg !1643
	%479 = icmp eq i64 %471, 0, !dbg !1644
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1641
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1641
	%480 = select i1 %479, i64 16, i64 %471, !dbg !1647
	br label %488, !dbg !1647
	%482 = icmp ult i64 %471, 768614336404564650, !dbg !1648
	br i1 %482, label %484, label %483, !dbg !1651
	call void @xalloc_die() #14, !dbg !1652
	unreachable, !dbg !1652
	%485 = lshr i64 %471, 1, !dbg !1653
	%486 = add i64 %471, 1, !dbg !1654
	%487 = add i64 %486, %485, !dbg !1655
	call void @llvm.dbg.value(metadata i64 %487, i64 0, metadata !61, metadata !760) #11, !dbg !1641
	br label %488
	%489 = phi i64 [ %487, %484 ], [ %480, %478 ]
	call void @llvm.dbg.value(metadata i64 %489, i64 0, metadata !61, metadata !760) #11, !dbg !1641
	%490 = shl i64 %489, 3, !dbg !1656
	%491 = call i8* @xrealloc(i8* %468, i64 %490) #11, !dbg !1657
	%492 = bitcast i8* %491 to %struct.line**, !dbg !1658
	call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1428, metadata !760) #11, !dbg !1659
	call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1428, metadata !760) #11, !dbg !1659
	%493 = icmp ult i64 %471, %489, !dbg !1660
	br i1 %493, label %494, label %498, !dbg !1662
	%495 = getelementptr i8, i8* %491, i64 %474, !dbg !1663
	%496 = sub i64 %489, %473, !dbg !1663
	%497 = shl i64 %496, 3, !dbg !1663
	call void @llvm.memset.p0i8.i64(i8* %495, i8 0, i64 %497, i32 8, i1 false) #11, !dbg !1664
	br label %498, !dbg !1665
	%499 = phi i8* [ %491, %488 ], [ %467, %465 ], [ %491, %494 ]
	%500 = phi i8* [ %491, %488 ], [ %468, %465 ], [ %491, %494 ]
	%501 = phi i8* [ %491, %488 ], [ %469, %465 ], [ %491, %494 ]
	%502 = phi %struct.line** [ %492, %488 ], [ %470, %465 ], [ %492, %494 ]
	%503 = phi i64 [ %489, %488 ], [ %471, %465 ], [ %489, %494 ]
	%504 = getelementptr inbounds %struct.line*, %struct.line** %502, i64 %472, !dbg !1665
	%505 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** %504, i32 1) #11, !dbg !1666
	br i1 %505, label %506, label %514, !dbg !1667
	%507 = add i64 %472, 1
	%508 = load %struct.line*, %struct.line** %504, align 8, !dbg !1668, !tbaa !768
	%509 = load %struct.line*, %struct.line** %392, align 8, !dbg !1669, !tbaa !768
	%510 = load i64, i64* @join_field_1, align 8, !dbg !1670, !tbaa !979
	%511 = load i64, i64* @join_field_2, align 8, !dbg !1671, !tbaa !979
	%512 = call fastcc i32 @keycmp(%struct.line* %508, %struct.line* %509, i64 %510, i64 %511) #11, !dbg !1672
	%513 = icmp eq i32 %512, 0, !dbg !1673
	br i1 %513, label %465, label %514, !dbg !1674, !llvm.loop !1590
	%515 = phi i1 [ false, %506 ], [ true, %498 ]
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1389, metadata !760) #11, !dbg !1676
	br label %516, !dbg !1677, !llvm.loop !1678
	%517 = phi i64 [ %565, %557 ], [ 0, %514 ]
	%518 = phi i8* [ %550, %557 ], [ %395, %514 ]
	%519 = phi i8* [ %551, %557 ], [ %394, %514 ]
	%520 = phi i8* [ %552, %557 ], [ %393, %514 ]
	%521 = phi %struct.line** [ %553, %557 ], [ %392, %514 ]
	%522 = phi i64 [ %554, %557 ], [ %391, %514 ]
	%523 = phi i64 [ %558, %557 ], [ %390, %514 ]
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1386, metadata !972) #11, !dbg !1448
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !1498, metadata !760) #11, !dbg !1681
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1503, metadata !760) #11, !dbg !1684
	call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1504, metadata !1510) #11, !dbg !1685
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1505, metadata !760) #11, !dbg !1686
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %315, i64 0, metadata !1420, metadata !760) #11, !dbg !1687
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1426, metadata !760) #11, !dbg !1689
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1427, metadata !760) #11, !dbg !1690
	%524 = add i64 %517, %390, !dbg !1691
	%525 = shl i64 %524, 3, !dbg !1691
	%526 = icmp eq i64 %523, %522, !dbg !1691
	br i1 %526, label %527, label %549, !dbg !1692
	call void @llvm.dbg.value(metadata i8* %520, i64 0, metadata !58, metadata !760) #11, !dbg !1693
	call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !59, metadata !760) #11, !dbg !1695
	call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !60, metadata !760) #11, !dbg !1696
	call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !61, metadata !760) #11, !dbg !1697
	%528 = icmp eq i8* %520, null, !dbg !1698
	br i1 %528, label %529, label %532, !dbg !1699
	%530 = icmp eq i64 %522, 0, !dbg !1700
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1697
	call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !61, metadata !760) #11, !dbg !1697
	%531 = select i1 %530, i64 16, i64 %522, !dbg !1701
	br label %539, !dbg !1701
	%533 = icmp ult i64 %522, 768614336404564650, !dbg !1702
	br i1 %533, label %535, label %534, !dbg !1703
	call void @xalloc_die() #14, !dbg !1704
	unreachable, !dbg !1704
	%536 = lshr i64 %522, 1, !dbg !1705
	%537 = add i64 %522, 1, !dbg !1706
	%538 = add i64 %537, %536, !dbg !1707
	call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !61, metadata !760) #11, !dbg !1697
	br label %539
	%540 = phi i64 [ %538, %535 ], [ %531, %529 ]
	call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !61, metadata !760) #11, !dbg !1697
	%541 = shl i64 %540, 3, !dbg !1708
	%542 = call i8* @xrealloc(i8* %520, i64 %541) #11, !dbg !1709
	%543 = bitcast i8* %542 to %struct.line**, !dbg !1710
	call void @llvm.dbg.value(metadata i64 %523, i64 0, metadata !1428, metadata !760) #11, !dbg !1711
	call void @llvm.dbg.value(metadata i64 %523, i64 0, metadata !1428, metadata !760) #11, !dbg !1711
	%544 = icmp ult i64 %522, %540, !dbg !1712
	br i1 %544, label %545, label %549, !dbg !1713
	%546 = getelementptr i8, i8* %542, i64 %525, !dbg !1714
	%547 = sub i64 %540, %524, !dbg !1714
	%548 = shl i64 %547, 3, !dbg !1714
	call void @llvm.memset.p0i8.i64(i8* %546, i8 0, i64 %548, i32 8, i1 false) #11, !dbg !1715
	br label %549, !dbg !1716
	%550 = phi i8* [ %542, %539 ], [ %518, %516 ], [ %542, %545 ]
	%551 = phi i8* [ %542, %539 ], [ %519, %516 ], [ %542, %545 ]
	%552 = phi i8* [ %542, %539 ], [ %520, %516 ], [ %542, %545 ]
	%553 = phi %struct.line** [ %543, %539 ], [ %521, %516 ], [ %543, %545 ]
	%554 = phi i64 [ %540, %539 ], [ %522, %516 ], [ %540, %545 ]
	%555 = getelementptr inbounds %struct.line*, %struct.line** %553, i64 %523, !dbg !1716
	%556 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** %555, i32 2) #11, !dbg !1717
	br i1 %556, label %557, label %566, !dbg !1718
	%558 = add i64 %523, 1
	%559 = load %struct.line*, %struct.line** %502, align 8, !dbg !1719, !tbaa !768
	%560 = load %struct.line*, %struct.line** %555, align 8, !dbg !1720, !tbaa !768
	%561 = load i64, i64* @join_field_1, align 8, !dbg !1721, !tbaa !979
	%562 = load i64, i64* @join_field_2, align 8, !dbg !1722, !tbaa !979
	%563 = call fastcc i32 @keycmp(%struct.line* %559, %struct.line* %560, i64 %561, i64 %562) #11, !dbg !1723
	%564 = icmp eq i32 %563, 0, !dbg !1724
	%565 = add i64 %517, 1, !dbg !1725
	br i1 %564, label %516, label %566, !dbg !1725, !llvm.loop !1678
	%567 = phi i1 [ false, %557 ], [ true, %549 ]
	%568 = load i1, i1* @print_pairables, align 1
	%569 = icmp ne i64 %472, 0, !dbg !1727
	%570 = and i1 %569, %568, !dbg !1729
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1396, metadata !760) #11, !dbg !1730
	br i1 %570, label %571, label %589, !dbg !1729
	%572 = icmp eq i64 %523, 0
	br label %573, !dbg !1731
	%574 = phi i64 [ 0, %571 ], [ %586, %585 ]
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1398, metadata !760) #11, !dbg !1733
	br i1 %572, label %585, label %575, !dbg !1734
	%576 = getelementptr inbounds %struct.line*, %struct.line** %502, i64 %574
	br label %577, !dbg !1734
	%578 = phi i64 [ 0, %575 ], [ %582, %577 ]
	%579 = load %struct.line*, %struct.line** %576, align 8, !dbg !1737, !tbaa !768
	%580 = getelementptr inbounds %struct.line*, %struct.line** %553, i64 %578, !dbg !1739
	%581 = load %struct.line*, %struct.line** %580, align 8, !dbg !1739, !tbaa !768
	call fastcc void @prjoin(%struct.line* %579, %struct.line* %581) #11, !dbg !1740
	%582 = add nuw i64 %578, 1, !dbg !1741
	call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1398, metadata !760) #11, !dbg !1733
	call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1398, metadata !760) #11, !dbg !1733
	%583 = icmp eq i64 %582, %523, !dbg !1743
	br i1 %583, label %584, label %577, !dbg !1734, !llvm.loop !1745
	br label %585, !dbg !1748
	%586 = add nuw i64 %574, 1, !dbg !1748
	call void @llvm.dbg.value(metadata i64 %586, i64 0, metadata !1396, metadata !760) #11, !dbg !1730
	call void @llvm.dbg.value(metadata i64 %586, i64 0, metadata !1396, metadata !760) #11, !dbg !1730
	%587 = icmp eq i64 %586, %472, !dbg !1727
	br i1 %587, label %588, label %573, !dbg !1731, !llvm.loop !1750
	br label %589, !dbg !1753
	br i1 %515, label %595, label %590, !dbg !1753
	%591 = bitcast %struct.line** %502 to i64*, !dbg !1754
	%592 = load i64, i64* %591, align 8, !dbg !1754, !tbaa !768
	%593 = bitcast %struct.line** %504 to i64*, !dbg !1754
	%594 = load i64, i64* %593, align 8, !dbg !1754, !tbaa !768
	store i64 %594, i64* %591, align 8, !dbg !1754, !tbaa !768
	store i64 %592, i64* %593, align 8, !dbg !1754, !tbaa !768
	br label %595, !dbg !1756
	%596 = phi i64 [ 1, %590 ], [ 0, %589 ]
	br i1 %567, label %603, label %597, !dbg !1757
	%598 = bitcast %struct.line** %553 to i64*, !dbg !1758
	%599 = load i64, i64* %598, align 8, !dbg !1758, !tbaa !768
	%600 = bitcast %struct.line** %555 to i64*, !dbg !1758
	%601 = load i64, i64* %600, align 8, !dbg !1758, !tbaa !768
	store i64 %601, i64* %598, align 8, !dbg !1758, !tbaa !768
	store i64 %599, i64* %600, align 8, !dbg !1758, !tbaa !768
	br label %424, !dbg !1760
	br label %612, !dbg !1761
	%604 = phi i8* [ %425, %424 ], [ %499, %595 ]
	%605 = phi %struct.line** [ %428, %424 ], [ %502, %595 ]
	%606 = phi i64 [ %429, %424 ], [ %503, %595 ]
	%607 = phi i64 [ %430, %424 ], [ %596, %595 ]
	%608 = phi i8* [ %431, %424 ], [ %550, %595 ]
	%609 = phi %struct.line** [ %434, %424 ], [ %553, %595 ]
	%610 = phi i64 [ %435, %424 ], [ %554, %595 ]
	%611 = phi i64 [ %436, %424 ], [ 0, %595 ]
	br label %612, !dbg !1761
	%613 = phi i8* [ %329, %370 ], [ %329, %354 ], [ %388, %602 ], [ %604, %603 ]
	%614 = phi %struct.line** [ %330, %370 ], [ %330, %354 ], [ %385, %602 ], [ %605, %603 ]
	%615 = phi i64 [ 16, %370 ], [ 16, %354 ], [ %384, %602 ], [ %606, %603 ]
	%616 = phi i64 [ %371, %370 ], [ 0, %354 ], [ 1, %602 ], [ %607, %603 ]
	%617 = phi i8* [ %332, %370 ], [ %332, %354 ], [ %458, %602 ], [ %608, %603 ]
	%618 = phi %struct.line** [ %333, %370 ], [ %333, %354 ], [ %461, %602 ], [ %609, %603 ]
	%619 = phi i64 [ 16, %370 ], [ 16, %354 ], [ %462, %602 ], [ %610, %603 ]
	%620 = phi i64 [ %372, %370 ], [ 0, %354 ], [ %464, %602 ], [ %611, %603 ]
	%621 = bitcast %struct.line** %3 to i8*, !dbg !1761
	call void @llvm.lifetime.start(i64 8, i8* nonnull %621) #11, !dbg !1761
	call void @llvm.dbg.value(metadata %struct.line* null, i64 0, metadata !1412, metadata !760) #11, !dbg !1762
	store %struct.line* null, %struct.line** %3, align 8, !dbg !1762, !tbaa !768
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1413, metadata !760) #11, !dbg !1763
	%622 = load i32, i32* @check_input_order, align 4, !dbg !1764, !tbaa !959
	%623 = icmp eq i32 %622, 2, !dbg !1766
	br i1 %623, label %630, label %624, !dbg !1767
	%625 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1768, !tbaa !952, !range !1551
	%626 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1770
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1413, metadata !760) #11, !dbg !1763
	%627 = icmp ne i8 %625, 0, !dbg !1772
	%628 = icmp ne i8 %626, 0, !dbg !1772
	%629 = and i1 %627, %628, !dbg !1772
	br label %630, !dbg !1772
	%631 = phi i1 [ true, %612 ], [ %629, %624 ]
	%632 = load i8, i8* @print_unpairables_1, align 1, !dbg !1773, !tbaa !952, !range !1551
	%633 = icmp eq i8 %632, 0, !dbg !1773
	%634 = and i1 %631, %633, !dbg !1775
	%635 = icmp eq i64 %616, 0, !dbg !1776
	%636 = or i1 %635, %634, !dbg !1775
	br i1 %636, label %659, label %637, !dbg !1775
	br i1 %633, label %640, label %638, !dbg !1778
	%639 = load %struct.line*, %struct.line** %614, align 8, !dbg !1780, !tbaa !768
	call fastcc void @prjoin(%struct.line* %639, %struct.line* nonnull @uni_blank) #11, !dbg !1782
	br label %640, !dbg !1782
	%641 = icmp eq i64 %620, 0, !dbg !1783
	br i1 %641, label %643, label %642, !dbg !1785
	store i1 true, i1* @seen_unpairable, align 1
	br label %643, !dbg !1786
	br label %644, !dbg !1762
	call void @llvm.dbg.value(metadata %struct.line** %3, i64 0, metadata !1412, metadata !972) #11, !dbg !1762
	%645 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** nonnull %3, i32 1) #11, !dbg !1787
	br i1 %645, label %646, label %658, !dbg !1789
	%647 = load i8, i8* @print_unpairables_1, align 1, !dbg !1790, !tbaa !952, !range !1551
	%648 = icmp eq i8 %647, 0, !dbg !1790
	br i1 %648, label %652, label %649, !dbg !1793
	%650 = load %struct.line*, %struct.line** %3, align 8, !dbg !1794, !tbaa !768
	call void @llvm.dbg.value(metadata %struct.line* %650, i64 0, metadata !1412, metadata !760) #11, !dbg !1762
	call fastcc void @prjoin(%struct.line* %650, %struct.line* nonnull @uni_blank) #11, !dbg !1795
	%651 = load i8, i8* @print_unpairables_1, align 1
	br label %652, !dbg !1795
	%653 = phi i8 [ 0, %646 ], [ %651, %649 ], !dbg !1796
	%654 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1799, !tbaa !952, !range !1551
	%655 = icmp ne i8 %654, 0, !dbg !1799
	%656 = icmp eq i8 %653, 0, !dbg !1796
	%657 = and i1 %656, %655, !dbg !1800
	br i1 %657, label %658, label %644, !dbg !1800, !llvm.loop !1801
	br label %659, !dbg !1804
	%660 = load i8, i8* @print_unpairables_2, align 1, !dbg !1804, !tbaa !952, !range !1551
	%661 = icmp eq i8 %660, 0, !dbg !1804
	%662 = and i1 %631, %661, !dbg !1806
	%663 = icmp eq i64 %620, 0, !dbg !1807
	%664 = or i1 %663, %662, !dbg !1806
	br i1 %664, label %686, label %665, !dbg !1806
	br i1 %661, label %668, label %666, !dbg !1809
	%667 = load %struct.line*, %struct.line** %618, align 8, !dbg !1811, !tbaa !768
	call fastcc void @prjoin(%struct.line* nonnull @uni_blank, %struct.line* %667) #11, !dbg !1813
	br label %668, !dbg !1813
	br i1 %635, label %670, label %669, !dbg !1814
	store i1 true, i1* @seen_unpairable, align 1
	br label %670, !dbg !1815
	br label %671, !dbg !1762
	call void @llvm.dbg.value(metadata %struct.line** %3, i64 0, metadata !1412, metadata !972) #11, !dbg !1762
	%672 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** nonnull %3, i32 2) #11, !dbg !1817
	br i1 %672, label %673, label %685, !dbg !1819
	%674 = load i8, i8* @print_unpairables_2, align 1, !dbg !1820, !tbaa !952, !range !1551
	%675 = icmp eq i8 %674, 0, !dbg !1820
	br i1 %675, label %679, label %676, !dbg !1823
	%677 = load %struct.line*, %struct.line** %3, align 8, !dbg !1824, !tbaa !768
	call void @llvm.dbg.value(metadata %struct.line* %677, i64 0, metadata !1412, metadata !760) #11, !dbg !1762
	call fastcc void @prjoin(%struct.line* nonnull @uni_blank, %struct.line* %677) #11, !dbg !1825
	%678 = load i8, i8* @print_unpairables_2, align 1
	br label %679, !dbg !1825
	%680 = phi i8 [ 0, %673 ], [ %678, %676 ], !dbg !1826
	%681 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1829, !tbaa !952, !range !1551
	%682 = icmp ne i8 %681, 0, !dbg !1829
	%683 = icmp eq i8 %680, 0, !dbg !1826
	%684 = and i1 %683, %682, !dbg !1830
	br i1 %684, label %685, label %671, !dbg !1830, !llvm.loop !1831
	br label %686, !dbg !1834
	%687 = load %struct.line*, %struct.line** %3, align 8, !dbg !1834, !tbaa !768
	call void @llvm.dbg.value(metadata %struct.line* %687, i64 0, metadata !1412, metadata !760) #11, !dbg !1762
	call void @llvm.dbg.value(metadata %struct.line* %687, i64 0, metadata !1835, metadata !760) #11, !dbg !1840
	%688 = icmp eq %struct.line* %687, null, !dbg !1842
	%689 = bitcast %struct.line* %687 to i8*, !dbg !1844
	br i1 %688, label %696, label %690, !dbg !1844
	%691 = getelementptr inbounds %struct.line, %struct.line* %687, i64 0, i32 3, !dbg !1845
	%692 = bitcast %struct.field** %691 to i8**, !dbg !1845
	%693 = load i8*, i8** %692, align 8, !dbg !1845, !tbaa !1846
	call void @free(i8* %693) #11, !dbg !1847
	store %struct.field* null, %struct.field** %691, align 8, !dbg !1848, !tbaa !1846
	%694 = getelementptr inbounds %struct.line, %struct.line* %687, i64 0, i32 0, i32 2, !dbg !1849
	%695 = load i8*, i8** %694, align 8, !dbg !1849, !tbaa !1850
	call void @free(i8* %695) #11, !dbg !1851
	br label %696, !dbg !1852
	call void @free(i8* %689) #11, !dbg !1853
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1379, metadata !972) #11, !dbg !1419
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1854, metadata !760) #11, !dbg !1860
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1859, metadata !760) #11, !dbg !1862
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1859, metadata !760) #11, !dbg !1862
	%697 = icmp eq i64 %615, 0, !dbg !1863
	br i1 %697, label %717, label %698, !dbg !1867
	br label %699, !dbg !1869
	%700 = phi i64 [ %714, %712 ], [ 0, %698 ]
	%701 = getelementptr inbounds %struct.line*, %struct.line** %614, i64 %700, !dbg !1869
	%702 = load %struct.line*, %struct.line** %701, align 8, !dbg !1869, !tbaa !768
	call void @llvm.dbg.value(metadata %struct.line* %702, i64 0, metadata !1835, metadata !760) #11, !dbg !1871
	%703 = icmp eq %struct.line* %702, null, !dbg !1873
	br i1 %703, label %712, label %704, !dbg !1874
	%705 = getelementptr inbounds %struct.line, %struct.line* %702, i64 0, i32 3, !dbg !1875
	%706 = bitcast %struct.field** %705 to i8**, !dbg !1875
	%707 = load i8*, i8** %706, align 8, !dbg !1875, !tbaa !1846
	call void @free(i8* %707) #11, !dbg !1876
	store %struct.field* null, %struct.field** %705, align 8, !dbg !1877, !tbaa !1846
	%708 = getelementptr inbounds %struct.line, %struct.line* %702, i64 0, i32 0, i32 2, !dbg !1878
	%709 = load i8*, i8** %708, align 8, !dbg !1878, !tbaa !1850
	call void @free(i8* %709) #11, !dbg !1879
	store i8* null, i8** %708, align 8, !dbg !1880, !tbaa !1850
	%710 = bitcast %struct.line** %701 to i8**
	%711 = load i8*, i8** %710, align 8, !tbaa !768
	br label %712, !dbg !1881
	%713 = phi i8* [ %711, %704 ], [ null, %699 ], !dbg !1882
	call void @free(i8* %713) #11, !dbg !1883
	%714 = add nuw i64 %700, 1, !dbg !1884
	call void @llvm.dbg.value(metadata i64 %714, i64 0, metadata !1859, metadata !760) #11, !dbg !1862
	call void @llvm.dbg.value(metadata i64 %714, i64 0, metadata !1859, metadata !760) #11, !dbg !1862
	%715 = icmp eq i64 %714, %615, !dbg !1863
	br i1 %715, label %716, label %699, !dbg !1867, !llvm.loop !1886
	br label %717, !dbg !1889
	call void @free(i8* %613) #11, !dbg !1889
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1386, metadata !972) #11, !dbg !1448
	call void @llvm.dbg.value(metadata %struct.seq* undef, i64 0, metadata !1854, metadata !760) #11, !dbg !1890
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1859, metadata !760) #11, !dbg !1892
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1859, metadata !760) #11, !dbg !1892
	%718 = icmp eq i64 %619, 0, !dbg !1893
	br i1 %718, label %738, label %719, !dbg !1894
	br label %720, !dbg !1895
	%721 = phi i64 [ %735, %733 ], [ 0, %719 ]
	%722 = getelementptr inbounds %struct.line*, %struct.line** %618, i64 %721, !dbg !1895
	%723 = load %struct.line*, %struct.line** %722, align 8, !dbg !1895, !tbaa !768
	call void @llvm.dbg.value(metadata %struct.line* %723, i64 0, metadata !1835, metadata !760) #11, !dbg !1896
	%724 = icmp eq %struct.line* %723, null, !dbg !1898
	br i1 %724, label %733, label %725, !dbg !1899
	%726 = getelementptr inbounds %struct.line, %struct.line* %723, i64 0, i32 3, !dbg !1900
	%727 = bitcast %struct.field** %726 to i8**, !dbg !1900
	%728 = load i8*, i8** %727, align 8, !dbg !1900, !tbaa !1846
	call void @free(i8* %728) #11, !dbg !1901
	store %struct.field* null, %struct.field** %726, align 8, !dbg !1902, !tbaa !1846
	%729 = getelementptr inbounds %struct.line, %struct.line* %723, i64 0, i32 0, i32 2, !dbg !1903
	%730 = load i8*, i8** %729, align 8, !dbg !1903, !tbaa !1850
	call void @free(i8* %730) #11, !dbg !1904
	store i8* null, i8** %729, align 8, !dbg !1905, !tbaa !1850
	%731 = bitcast %struct.line** %722 to i8**
	%732 = load i8*, i8** %731, align 8, !tbaa !768
	br label %733, !dbg !1906
	%734 = phi i8* [ %732, %725 ], [ null, %720 ], !dbg !1907
	call void @free(i8* %734) #11, !dbg !1908
	%735 = add nuw i64 %721, 1, !dbg !1909
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1859, metadata !760) #11, !dbg !1892
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1859, metadata !760) #11, !dbg !1892
	%736 = icmp eq i64 %735, %619, !dbg !1893
	br i1 %736, label %737, label %720, !dbg !1894, !llvm.loop !1886
	br label %738, !dbg !1910
	call void @free(i8* %617) #11, !dbg !1910
	call void @llvm.lifetime.end(i64 8, i8* nonnull %621) #11, !dbg !1911
	%739 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %295) #11, !dbg !1912
	%740 = icmp eq i32 %739, 0, !dbg !1914
	br i1 %740, label %746, label %741, !dbg !1915
	%742 = tail call i32* @__errno_location() #1, !dbg !1916
	%743 = load i32, i32* %742, align 4, !dbg !1916, !tbaa !937
	%744 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16, !dbg !1916, !tbaa !768
	%745 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %744) #11, !dbg !1917
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %743, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %745) #11, !dbg !1919
	unreachable, !dbg !1916
	%747 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %315) #11, !dbg !1921
	%748 = icmp eq i32 %747, 0, !dbg !1923
	br i1 %748, label %754, label %749, !dbg !1924
	%750 = tail call i32* @__errno_location() #1, !dbg !1925
	%751 = load i32, i32* %750, align 4, !dbg !1925, !tbaa !937
	%752 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8, !dbg !1925, !tbaa !768
	%753 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %752) #11, !dbg !1926
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %751, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %753) #11, !dbg !1928
	unreachable, !dbg !1925
	%755 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1930, !tbaa !952, !range !1551
	%756 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1932
	%757 = or i8 %756, %755, !dbg !1934
	%758 = icmp ne i8 %757, 0, !dbg !1934
	%759 = zext i1 %758 to i32, !dbg !1934
	call void @llvm.lifetime.end(i64 4, i8* nonnull %18) #11, !dbg !1935
	call void @llvm.lifetime.end(i64 8, i8* nonnull %17) #11, !dbg !1935
	call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #11, !dbg !1935
	call void @llvm.lifetime.end(i64 4, i8* nonnull %15) #11, !dbg !1935
	call void @llvm.lifetime.end(i64 4, i8* nonnull %14) #11, !dbg !1935
	ret i32 %759, !dbg !1935
	call void @llvm.dbg.value(metadata i64* @join_field_1, i64 0, metadata !1041, metadata !760) #11, !dbg !1272
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !760) #11, !dbg !1275
	switch i64 %275, label %258 [
		i64 -1, label %761
		i64 1, label %761
	], !dbg !1277
	store i64 1, i64* @join_field_1, align 8, !dbg !1283, !tbaa !979
	call void @llvm.dbg.value(metadata i64* @join_field_2, i64 0, metadata !1041, metadata !760) #11, !dbg !1284
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !760) #11, !dbg !1286
	%762 = load i64, i64* @join_field_2, align 8, !dbg !1287, !tbaa !979
	switch i64 %762, label %265 [
		i64 -1, label %280
		i64 1, label %280
	], !dbg !1288
	%764 = icmp eq i64 %275, -1
	br i1 %764, label %276, label %277, !dbg !1936
}
declare void @llvm.lifetime.start(i64, i8* nocapture) #7
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2
declare i8* @textdomain(i8*) local_unnamed_addr #2
declare i32 @atexit(void ()*) local_unnamed_addr #2
define internal void @free_spareline() #6 !dbg !1937 {
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1941, metadata !760), !dbg !1942
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1941, metadata !760), !dbg !1942
	%1 = load %struct.line*, %struct.line** getelementptr inbounds ([2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 0), align 16, !dbg !1943, !tbaa !768
	%2 = icmp eq %struct.line* %1, null, !dbg !1943
	br i1 %2, label %10, label %3, !dbg !1948
	tail call void @llvm.dbg.value(metadata %struct.line* %1, i64 0, metadata !1835, metadata !760) #11, !dbg !1949
	%4 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 3, !dbg !1952
	%5 = bitcast %struct.field** %4 to i8**, !dbg !1952
	%6 = load i8*, i8** %5, align 8, !dbg !1952, !tbaa !1846
	tail call void @free(i8* %6) #11, !dbg !1953
	store %struct.field* null, %struct.field** %4, align 8, !dbg !1954, !tbaa !1846
	%7 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 0, i32 2, !dbg !1955
	%8 = load i8*, i8** %7, align 8, !dbg !1955, !tbaa !1850
	tail call void @free(i8* %8) #11, !dbg !1956
	store i8* null, i8** %7, align 8, !dbg !1957, !tbaa !1850
	%9 = load i8*, i8** bitcast ([2 x %struct.line*]* @spareline to i8**), align 16, !dbg !1958, !tbaa !768
	tail call void @free(i8* %9) #11, !dbg !1959
	br label %10, !dbg !1960
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1941, metadata !760), !dbg !1942
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1941, metadata !760), !dbg !1942
	%11 = load %struct.line*, %struct.line** getelementptr inbounds ([2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 1), align 8, !dbg !1943, !tbaa !768
	%12 = icmp eq %struct.line* %11, null, !dbg !1943
	br i1 %12, label %20, label %13, !dbg !1948
	tail call void @llvm.dbg.value(metadata %struct.line* %1, i64 0, metadata !1835, metadata !760) #11, !dbg !1949
	%14 = getelementptr inbounds %struct.line, %struct.line* %11, i64 0, i32 3, !dbg !1952
	%15 = bitcast %struct.field** %14 to i8**, !dbg !1952
	%16 = load i8*, i8** %15, align 8, !dbg !1952, !tbaa !1846
	tail call void @free(i8* %16) #11, !dbg !1953
	store %struct.field* null, %struct.field** %14, align 8, !dbg !1954, !tbaa !1846
	%17 = getelementptr inbounds %struct.line, %struct.line* %11, i64 0, i32 0, i32 2, !dbg !1955
	%18 = load i8*, i8** %17, align 8, !dbg !1955, !tbaa !1850
	tail call void @free(i8* %18) #11, !dbg !1956
	store i8* null, i8** %17, align 8, !dbg !1957, !tbaa !1850
	%19 = load i8*, i8** bitcast (%struct.line** getelementptr inbounds ([2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 1) to i8**), align 8, !dbg !1958, !tbaa !768
	tail call void @free(i8* %19) #11, !dbg !1959
	br label %20, !dbg !1960
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1941, metadata !760), !dbg !1942
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1941, metadata !760), !dbg !1942
	ret void, !dbg !1961
}
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2
declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3
declare void @llvm.lifetime.end(i64, i8* nocapture) #7
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4
define internal fastcc void @add_field_list(i8*) unnamed_addr #6 !dbg !1962 {
	%2 = alloca i64, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1966, metadata !760), !dbg !1972
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1967, metadata !760), !dbg !1973
	%3 = bitcast i64* %2 to i8*
	br label %4, !dbg !1974, !llvm.loop !1975
	%5 = phi i8* [ %0, %1 ], [ %11, %48 ]
	call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1967, metadata !760), !dbg !1973
	call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1971, metadata !760), !dbg !1977
	%6 = call i8* @strpbrk(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #11, !dbg !1978
	call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1967, metadata !760), !dbg !1973
	%7 = icmp eq i8* %6, null, !dbg !1979
	br i1 %7, label %10, label %8, !dbg !1981
	%9 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1982
	call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1967, metadata !760), !dbg !1973
	store i8 0, i8* %6, align 1, !dbg !1983, !tbaa !959
	br label %10, !dbg !1984
	%11 = phi i8* [ %9, %8 ], [ null, %4 ]
	call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1967, metadata !760), !dbg !1973
	call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1985, metadata !760) #11, !dbg !1992
	%12 = load i8, i8* %5, align 1, !dbg !1994, !tbaa !959
	%13 = sext i8 %12 to i32, !dbg !1994
	switch i32 %13, label %45 [
		i32 48, label %14
		i32 49, label %21
		i32 50, label %21
	], !dbg !1995
	%15 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1996
	%16 = load i8, i8* %15, align 1, !dbg !1996, !tbaa !959
	%17 = icmp eq i8 %16, 0, !dbg !1996
	br i1 %17, label %48, label %18, !dbg !1999
	%19 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i32 5) #11, !dbg !2000
	%20 = call i8* @quote(i8* nonnull %5) #11, !dbg !2002
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19, i8* %20) #11, !dbg !2004
	unreachable, !dbg !2000
	%22 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2006
	%23 = load i8, i8* %22, align 1, !dbg !2006, !tbaa !959
	%24 = icmp eq i8 %23, 46, !dbg !2008
	br i1 %24, label %28, label %25, !dbg !2009
	%26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i32 5) #11, !dbg !2010
	%27 = call i8* @quote(i8* nonnull %5) #11, !dbg !2011
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26, i8* %27) #11, !dbg !2013
	unreachable, !dbg !2010
	%29 = add nsw i32 %13, -48, !dbg !2015
	%30 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !2016
	call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1006, metadata !760) #11, !dbg !2017
	call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #11, !dbg !2019
	call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1012, metadata !972) #11, !dbg !2020
	%31 = call i32 @xstrtoul(i8* %30, i8** null, i32 10, i64* nonnull %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !2021
	call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1013, metadata !760) #11, !dbg !2022
	%32 = icmp eq i32 %31, 1, !dbg !2023
	br i1 %32, label %33, label %34, !dbg !2024
	call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1012, metadata !760) #11, !dbg !2020
	store i64 -1, i64* %2, align 8, !dbg !2025, !tbaa !979
	br label %42, !dbg !2026
	%35 = load i64, i64* %2, align 8, !dbg !2027
	%36 = icmp ne i32 %31, 0, !dbg !2028
	%37 = icmp eq i64 %35, 0, !dbg !2029
	%38 = or i1 %36, %37, !dbg !2030
	br i1 %38, label %39, label %42, !dbg !2030
	%40 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !2031
	%41 = call i8* @quote(i8* %30) #11, !dbg !2032
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %40, i8* %41) #11, !dbg !2033
	unreachable, !dbg !2031
	%43 = phi i64 [ %35, %34 ], [ -1, %33 ], !dbg !2034
	call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1012, metadata !760) #11, !dbg !2020
	%44 = add i64 %43, -1, !dbg !2035
	call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1011, metadata !760) #11, !dbg !2036
	call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11, !dbg !2037
	br label %48, !dbg !2038
	%46 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i64 0, i64 0), i32 5) #11, !dbg !2039
	%47 = call i8* @quote(i8* nonnull %5) #11, !dbg !2040
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %46, i8* %47) #11, !dbg !2042
	unreachable, !dbg !2039
	%49 = phi i32 [ 0, %14 ], [ %29, %42 ]
	%50 = phi i64 [ 0, %14 ], [ %44, %42 ]
	%51 = call noalias i8* @xmalloc(i64 24) #11, !dbg !2044
	%52 = bitcast i8* %51 to i32*, !dbg !2053
	store i32 %49, i32* %52, align 8, !dbg !2054, !tbaa !2055
	%53 = getelementptr inbounds i8, i8* %51, i64 8, !dbg !2057
	%54 = bitcast i8* %53 to i64*, !dbg !2057
	store i64 %50, i64* %54, align 8, !dbg !2058, !tbaa !2059
	%55 = getelementptr inbounds i8, i8* %51, i64 16, !dbg !2060
	%56 = bitcast i8* %55 to %struct.outlist**, !dbg !2060
	store %struct.outlist* null, %struct.outlist** %56, align 8, !dbg !2061, !tbaa !2062
	%57 = load %struct.outlist*, %struct.outlist** @outlist_end, align 8, !dbg !2063, !tbaa !768
	%58 = getelementptr inbounds %struct.outlist, %struct.outlist* %57, i64 0, i32 2, !dbg !2064
	%59 = bitcast %struct.outlist** %58 to i8**, !dbg !2065
	store i8* %51, i8** %59, align 8, !dbg !2065, !tbaa !2062
	store i8* %51, i8** bitcast (%struct.outlist** @outlist_end to i8**), align 8, !dbg !2066, !tbaa !768
	%60 = icmp eq i8* %11, null, !dbg !2067
	br i1 %60, label %61, label %4, !dbg !2067, !llvm.loop !1975
	ret void, !dbg !2069
}
define internal fastcc void @add_file_name(i8*, i32* nocapture, i32* nocapture, i32* nocapture, i32* nocapture readonly, i32* nocapture) unnamed_addr #6 !dbg !2070 {
	%7 = alloca i64, align 8
	%8 = alloca i64, align 8
	%9 = load i32, i32* %3, align 4, !dbg !2086, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2081, metadata !760), !dbg !2087
	%10 = icmp eq i32 %9, 2, !dbg !2088
	br i1 %10, label %11, label %81, !dbg !2089
	%12 = load i32, i32* %1, align 4, !dbg !2090, !tbaa !937
	%13 = icmp eq i32 %12, 0, !dbg !2091
	%14 = zext i1 %13 to i64, !dbg !2092
	%15 = getelementptr inbounds [2 x i8*], [2 x i8*]* @g_names, i64 0, i64 %14, !dbg !2092
	%16 = load i8*, i8** %15, align 8, !dbg !2092, !tbaa !768
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !2085, metadata !760), !dbg !2093
	%17 = getelementptr inbounds i32, i32* %1, i64 %14, !dbg !2094
	%18 = load i32, i32* %17, align 4, !dbg !2094, !tbaa !937
	switch i32 %18, label %76 [
		i32 0, label %19
		i32 1, label %22
		i32 2, label %48
		i32 3, label %75
	], !dbg !2095
	%20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i32 5) #11, !dbg !2096
	%21 = tail call i8* @quotearg_style(i32 4, i8* %0) #11, !dbg !2098
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20, i8* %21) #11, !dbg !2100
	tail call void @usage(i32 1) #15, !dbg !2102
	unreachable, !dbg !2102
	%23 = load i32, i32* %2, align 4, !dbg !2103, !tbaa !937
	%24 = add nsw i32 %23, -1, !dbg !2103
	store i32 %24, i32* %2, align 4, !dbg !2103, !tbaa !937
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1006, metadata !760) #11, !dbg !2104
	%25 = bitcast i64* %8 to i8*, !dbg !2106
	call void @llvm.lifetime.start(i64 8, i8* nonnull %25) #11, !dbg !2106
	tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !1012, metadata !972) #11, !dbg !2107
	%26 = call i32 @xstrtoul(i8* %16, i8** null, i32 10, i64* nonnull %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !2108
	call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1013, metadata !760) #11, !dbg !2109
	%27 = icmp eq i32 %26, 1, !dbg !2110
	br i1 %27, label %28, label %29, !dbg !2111
	call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1012, metadata !760) #11, !dbg !2107
	store i64 -1, i64* %8, align 8, !dbg !2112, !tbaa !979
	br label %37, !dbg !2113
	%30 = load i64, i64* %8, align 8, !dbg !2114
	%31 = icmp ne i32 %26, 0, !dbg !2115
	%32 = icmp eq i64 %30, 0, !dbg !2116
	%33 = or i1 %31, %32, !dbg !2117
	br i1 %33, label %34, label %37, !dbg !2117
	%35 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !2118
	%36 = call i8* @quote(i8* %16) #11, !dbg !2119
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35, i8* %36) #11, !dbg !2120
	unreachable, !dbg !2118
	%38 = phi i64 [ %30, %29 ], [ -1, %28 ], !dbg !2121
	call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1012, metadata !760) #11, !dbg !2107
	%39 = add i64 %38, -1, !dbg !2122
	call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1011, metadata !760) #11, !dbg !2123
	call void @llvm.lifetime.end(i64 8, i8* nonnull %25) #11, !dbg !2124
	call void @llvm.dbg.value(metadata i64* @join_field_1, i64 0, metadata !1041, metadata !760) #11, !dbg !2125
	call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1046, metadata !760) #11, !dbg !2127
	%40 = load i64, i64* @join_field_1, align 8, !dbg !2128, !tbaa !979
	%41 = icmp eq i64 %40, -1, !dbg !2129
	%42 = icmp eq i64 %40, %39, !dbg !2130
	%43 = or i1 %41, %42, !dbg !2131
	br i1 %43, label %47, label %44, !dbg !2131
	%45 = add i64 %40, 1, !dbg !2132
	call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1047, metadata !760) #11, !dbg !2133
	call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1050, metadata !760) #11, !dbg !2134
	%46 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !2135
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %46, i64 %45, i64 %38) #11, !dbg !2136
	unreachable, !dbg !2135
	store i64 %39, i64* @join_field_1, align 8, !dbg !2137, !tbaa !979
	br label %76, !dbg !2138
	%49 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !2139
	%50 = load i32, i32* %49, align 4, !dbg !2140, !tbaa !937
	%51 = add nsw i32 %50, -1, !dbg !2140
	store i32 %51, i32* %49, align 4, !dbg !2140, !tbaa !937
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1006, metadata !760) #11, !dbg !2141
	%52 = bitcast i64* %7 to i8*, !dbg !2143
	call void @llvm.lifetime.start(i64 8, i8* nonnull %52) #11, !dbg !2143
	tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1012, metadata !972) #11, !dbg !2144
	%53 = call i32 @xstrtoul(i8* %16, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !2145
	call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !1013, metadata !760) #11, !dbg !2146
	%54 = icmp eq i32 %53, 1, !dbg !2147
	br i1 %54, label %55, label %56, !dbg !2148
	call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1012, metadata !760) #11, !dbg !2144
	store i64 -1, i64* %7, align 8, !dbg !2149, !tbaa !979
	br label %64, !dbg !2150
	%57 = load i64, i64* %7, align 8, !dbg !2151
	%58 = icmp ne i32 %53, 0, !dbg !2152
	%59 = icmp eq i64 %57, 0, !dbg !2153
	%60 = or i1 %58, %59, !dbg !2154
	br i1 %60, label %61, label %64, !dbg !2154
	%62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !2155
	%63 = call i8* @quote(i8* %16) #11, !dbg !2156
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %62, i8* %63) #11, !dbg !2157
	unreachable, !dbg !2155
	%65 = phi i64 [ %57, %56 ], [ -1, %55 ], !dbg !2158
	call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1012, metadata !760) #11, !dbg !2144
	%66 = add i64 %65, -1, !dbg !2159
	call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !1011, metadata !760) #11, !dbg !2160
	call void @llvm.lifetime.end(i64 8, i8* nonnull %52) #11, !dbg !2161
	call void @llvm.dbg.value(metadata i64* @join_field_2, i64 0, metadata !1041, metadata !760) #11, !dbg !2162
	call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !1046, metadata !760) #11, !dbg !2164
	%67 = load i64, i64* @join_field_2, align 8, !dbg !2165, !tbaa !979
	%68 = icmp eq i64 %67, -1, !dbg !2166
	%69 = icmp eq i64 %67, %66, !dbg !2167
	%70 = or i1 %68, %69, !dbg !2168
	br i1 %70, label %74, label %71, !dbg !2168
	%72 = add i64 %67, 1, !dbg !2169
	call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !1047, metadata !760) #11, !dbg !2170
	call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1050, metadata !760) #11, !dbg !2171
	%73 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !2172
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %73, i64 %72, i64 %65) #11, !dbg !2173
	unreachable, !dbg !2172
	store i64 %66, i64* @join_field_2, align 8, !dbg !2174, !tbaa !979
	br label %76, !dbg !2175
	tail call fastcc void @add_field_list(i8* %16), !dbg !2176
	br label %76, !dbg !2177
	br i1 %13, label %81, label %77, !dbg !2178
	%78 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !2179
	%79 = load i32, i32* %78, align 4, !dbg !2179, !tbaa !937
	store i32 %79, i32* %1, align 4, !dbg !2182, !tbaa !937
	%80 = load i64, i64* bitcast (i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1) to i64*), align 8, !dbg !2183, !tbaa !768
	store i64 %80, i64* bitcast ([2 x i8*]* @g_names to i64*), align 16, !dbg !2184, !tbaa !768
	br label %81, !dbg !2185
	%82 = phi i32 [ %9, %6 ], [ 1, %77 ], [ 1, %76 ]
	call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !2081, metadata !760), !dbg !2087
	%83 = load i32, i32* %4, align 4, !dbg !2186, !tbaa !937
	%84 = sext i32 %82 to i64, !dbg !2187
	%85 = getelementptr inbounds i32, i32* %1, i64 %84, !dbg !2187
	store i32 %83, i32* %85, align 4, !dbg !2188, !tbaa !937
	%86 = getelementptr inbounds [2 x i8*], [2 x i8*]* @g_names, i64 0, i64 %84, !dbg !2189
	store i8* %0, i8** %86, align 8, !dbg !2190, !tbaa !768
	%87 = add nsw i32 %82, 1, !dbg !2191
	store i32 %87, i32* %3, align 4, !dbg !2192, !tbaa !937
	%88 = load i32, i32* %4, align 4, !dbg !2193, !tbaa !937
	%89 = icmp eq i32 %88, 3, !dbg !2195
	br i1 %89, label %90, label %91, !dbg !2196
	store i32 3, i32* %5, align 4, !dbg !2197, !tbaa !937
	br label %91, !dbg !2198
	ret void, !dbg !2199
}
declare i32* @__errno_location() local_unnamed_addr #8
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7
define internal fastcc zeroext i1 @get_line(%struct._IO_FILE*, %struct.line** nocapture, i32) unnamed_addr #6 !dbg !2200 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2204, metadata !760), !dbg !2212
	tail call void @llvm.dbg.value(metadata %struct.line** %1, i64 0, metadata !2205, metadata !760), !dbg !2213
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2206, metadata !760), !dbg !2214
	%4 = load %struct.line*, %struct.line** %1, align 8, !dbg !2215, !tbaa !768
	tail call void @llvm.dbg.value(metadata %struct.line* %4, i64 0, metadata !2207, metadata !760), !dbg !2216
	%5 = add nsw i32 %2, -1, !dbg !2217
	%6 = sext i32 %5 to i64, !dbg !2218
	%7 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @prevline, i64 0, i64 %6, !dbg !2218
	%8 = load %struct.line*, %struct.line** %7, align 8, !dbg !2218, !tbaa !768
	%9 = icmp eq %struct.line* %4, %8, !dbg !2219
	br i1 %9, label %10, label %13, !dbg !2220
	tail call void @llvm.dbg.value(metadata %struct.line* %4, i64 0, metadata !2208, metadata !760), !dbg !2221
	%11 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 %6, !dbg !2222
	%12 = load %struct.line*, %struct.line** %11, align 8, !dbg !2222, !tbaa !768
	tail call void @llvm.dbg.value(metadata %struct.line* %12, i64 0, metadata !2207, metadata !760), !dbg !2216
	store %struct.line* %4, %struct.line** %11, align 8, !dbg !2222, !tbaa !768
	store %struct.line* %12, %struct.line** %1, align 8, !dbg !2224, !tbaa !768
	br label %13, !dbg !2225
	%14 = phi %struct.line* [ %12, %10 ], [ %4, %3 ]
	tail call void @llvm.dbg.value(metadata %struct.line* %14, i64 0, metadata !2207, metadata !760), !dbg !2216
	%15 = icmp eq %struct.line* %14, null, !dbg !2226
	br i1 %15, label %18, label %16, !dbg !2228
	tail call void @llvm.dbg.value(metadata %struct.line* %14, i64 0, metadata !2229, metadata !760), !dbg !2232
	%17 = getelementptr inbounds %struct.line, %struct.line* %14, i64 0, i32 1, !dbg !2234
	store i64 0, i64* %17, align 8, !dbg !2235, !tbaa !1472
	br label %22, !dbg !2236
	tail call void @llvm.dbg.value(metadata %struct.line** %1, i64 0, metadata !2237, metadata !760) #11, !dbg !2243
	%19 = tail call noalias i8* @xcalloc(i64 1, i64 48) #11, !dbg !2245
	%20 = bitcast i8* %19 to %struct.line*, !dbg !2245
	tail call void @llvm.dbg.value(metadata %struct.line* %20, i64 0, metadata !2242, metadata !760) #11, !dbg !2246
	%21 = bitcast %struct.line** %1 to i8**, !dbg !2247
	store i8* %19, i8** %21, align 8, !dbg !2247, !tbaa !768
	tail call void @llvm.dbg.value(metadata %struct.line* %20, i64 0, metadata !2207, metadata !760), !dbg !2216
	br label %22
	%23 = phi %struct.line* [ %14, %16 ], [ %20, %18 ]
	tail call void @llvm.dbg.value(metadata %struct.line* %23, i64 0, metadata !2207, metadata !760), !dbg !2216
	%24 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 0, !dbg !2248
	%25 = load i1, i1* @eolchar, align 1
	%26 = select i1 %25, i8 0, i8 10
	%27 = tail call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %24, %struct._IO_FILE* %0, i8 signext %26) #11, !dbg !2250
	%28 = icmp eq %struct.linebuffer* %27, null, !dbg !2250
	br i1 %28, label %29, label %46, !dbg !2251
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2252, metadata !760), !dbg !2258
	%30 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2262
	%31 = load i32, i32* %30, align 8, !dbg !2262, !tbaa !2263
	%32 = and i32 %31, 32, !dbg !2262
	%33 = icmp eq i32 %32, 0, !dbg !2266
	br i1 %33, label %38, label %34, !dbg !2267
	%35 = tail call i32* @__errno_location() #1, !dbg !2268
	%36 = load i32, i32* %35, align 4, !dbg !2268, !tbaa !937
	%37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0), i32 5) #11, !dbg !2269
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %36, i8* %37) #11, !dbg !2271
	unreachable, !dbg !2268
	tail call void @llvm.dbg.value(metadata %struct.line* %23, i64 0, metadata !1835, metadata !760) #11, !dbg !2273
	%39 = icmp eq %struct.line* %23, null, !dbg !2275
	br i1 %39, label %294, label %40, !dbg !2276
	%41 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 3, !dbg !2277
	%42 = bitcast %struct.field** %41 to i8**, !dbg !2277
	%43 = load i8*, i8** %42, align 8, !dbg !2277, !tbaa !1846
	tail call void @free(i8* %43) #11, !dbg !2278
	store %struct.field* null, %struct.field** %41, align 8, !dbg !2279, !tbaa !1846
	%44 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 0, i32 2, !dbg !2280
	%45 = load i8*, i8** %44, align 8, !dbg !2280, !tbaa !1850
	tail call void @free(i8* %45) #11, !dbg !2281
	store i8* null, i8** %44, align 8, !dbg !2282, !tbaa !1850
	br label %294, !dbg !2283
	%47 = getelementptr inbounds [2 x i64], [2 x i64]* @line_no, i64 0, i64 %6, !dbg !2284
	%48 = load i64, i64* %47, align 8, !dbg !2285, !tbaa !979
	%49 = add i64 %48, 1, !dbg !2285
	store i64 %49, i64* %47, align 8, !dbg !2285, !tbaa !979
	tail call void @llvm.dbg.value(metadata %struct.line* %23, i64 0, metadata !2286, metadata !760) #11, !dbg !2298
	%50 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 0, i32 2, !dbg !2300
	%51 = load i8*, i8** %50, align 8, !dbg !2300, !tbaa !1850
	tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	%52 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 0, i32 1, !dbg !2302
	%53 = load i64, i64* %52, align 8, !dbg !2302, !tbaa !2303
	%54 = getelementptr inbounds i8, i8* %51, i64 %53, !dbg !2304
	%55 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !2305
	tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !2290, metadata !760) #11, !dbg !2306
	%56 = icmp eq i8* %51, %55, !dbg !2307
	br i1 %56, label %252, label %57, !dbg !2309
	%58 = load i32, i32* @tab, align 4, !dbg !2310, !tbaa !937
	%59 = icmp sgt i32 %58, -1, !dbg !2311
	%60 = icmp ne i32 %58, 10, !dbg !2312
	%61 = and i1 %59, %60, !dbg !2314
	br i1 %61, label %62, label %118, !dbg !2314
	tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	%63 = ptrtoint i8* %55 to i64, !dbg !2315
	%64 = ptrtoint i8* %51 to i64, !dbg !2315
	%65 = sub i64 %63, %64, !dbg !2315
	%66 = tail call i8* @memchr(i8* %51, i32 %58, i64 %65) #13, !dbg !2319
	tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !2291, metadata !760) #11, !dbg !2320
	%67 = icmp eq i8* %66, null, !dbg !2321
	br i1 %67, label %211, label %68, !dbg !2322
	%69 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 1
	%70 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 2
	%71 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 3
	%72 = bitcast %struct.field** %71 to i8**
	%73 = load i64, i64* %69, align 8, !tbaa !1472
	br label %74, !dbg !2322
	%75 = phi i32 [ %58, %68 ], [ %107, %106 ]
	%76 = phi i64 [ %73, %68 ], [ %112, %106 ], !dbg !2324
	%77 = phi i8* [ %66, %68 ], [ %116, %106 ]
	%78 = phi i64 [ %64, %68 ], [ %114, %106 ]
	%79 = phi i8* [ %51, %68 ], [ %113, %106 ]
	%80 = ptrtoint i8* %77 to i64, !dbg !2334
	%81 = sub i64 %80, %78, !dbg !2334
	tail call void @llvm.dbg.value(metadata %struct.line* %23, i64 0, metadata !2330, metadata !760) #11, !dbg !2335
	tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !2331, metadata !760) #11, !dbg !2336
	tail call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !2332, metadata !760) #11, !dbg !2337
	%82 = load i64, i64* %70, align 8, !dbg !2338, !tbaa !2339
	%83 = icmp ult i64 %76, %82, !dbg !2340
	br i1 %83, label %84, label %86, !dbg !2341
	%85 = load %struct.field*, %struct.field** %71, align 8, !tbaa !1846
	br label %106, !dbg !2341
	%87 = load i8*, i8** %72, align 8, !dbg !2342, !tbaa !1846
	tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !58, metadata !760) #11, !dbg !2344
	tail call void @llvm.dbg.value(metadata i64* %70, i64 0, metadata !59, metadata !760) #11, !dbg !2346
	tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !60, metadata !760) #11, !dbg !2347
	tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !61, metadata !760) #11, !dbg !2348
	%88 = icmp eq i8* %87, null, !dbg !2349
	br i1 %88, label %89, label %92, !dbg !2350
	%90 = icmp eq i64 %82, 0, !dbg !2351
	tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !61, metadata !760) #11, !dbg !2348
	tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !61, metadata !760) #11, !dbg !2348
	%91 = select i1 %90, i64 8, i64 %82, !dbg !2352
	br label %99, !dbg !2352
	%93 = icmp ult i64 %82, 384307168202282325, !dbg !2353
	br i1 %93, label %95, label %94, !dbg !2354
	tail call void @xalloc_die() #14, !dbg !2355
	unreachable, !dbg !2355
	%96 = lshr i64 %82, 1, !dbg !2356
	%97 = add i64 %82, 1, !dbg !2357
	%98 = add i64 %97, %96, !dbg !2358
	tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !61, metadata !760) #11, !dbg !2348
	br label %99
	%100 = phi i64 [ %98, %95 ], [ %91, %89 ]
	tail call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !61, metadata !760) #11, !dbg !2348
	store i64 %100, i64* %70, align 8, !dbg !2359, !tbaa !979
	%101 = shl i64 %100, 4, !dbg !2360
	%102 = tail call i8* @xrealloc(i8* %87, i64 %101) #11, !dbg !2361
	store i8* %102, i8** %72, align 8, !dbg !2362, !tbaa !1846
	%103 = bitcast i8* %102 to %struct.field*, !dbg !2363
	%104 = load i64, i64* %69, align 8, !tbaa !1472
	%105 = load i32, i32* @tab, align 4, !tbaa !937
	br label %106, !dbg !2363
	%107 = phi i32 [ %75, %84 ], [ %105, %99 ], !dbg !2364
	%108 = phi %struct.field* [ %85, %84 ], [ %103, %99 ], !dbg !2365
	%109 = phi i64 [ %76, %84 ], [ %104, %99 ], !dbg !2366
	%110 = getelementptr inbounds %struct.field, %struct.field* %108, i64 %109, i32 0, !dbg !2367
	store i8* %79, i8** %110, align 8, !dbg !2368, !tbaa !2369
	%111 = getelementptr inbounds %struct.field, %struct.field* %108, i64 %109, i32 1, !dbg !2371
	store i64 %81, i64* %111, align 8, !dbg !2372, !tbaa !2373
	%112 = add i64 %109, 1, !dbg !2366
	store i64 %112, i64* %69, align 8, !dbg !2366, !tbaa !1472
	%113 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !2374
	tail call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	tail call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	%114 = ptrtoint i8* %113 to i64, !dbg !2315
	%115 = sub i64 %63, %114, !dbg !2315
	%116 = tail call i8* @memchr(i8* %113, i32 %107, i64 %115) #13, !dbg !2319
	tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !2291, metadata !760) #11, !dbg !2320
	%117 = icmp eq i8* %116, null, !dbg !2321
	br i1 %117, label %209, label %74, !dbg !2322, !llvm.loop !2376
	%119 = icmp slt i32 %58, 0, !dbg !2379
	br i1 %119, label %120, label %211, !dbg !2380
	%121 = tail call i16** @__ctype_b_loc() #1, !dbg !2381
	%122 = load i16*, i16** %121, align 8, !tbaa !768
	br label %123, !dbg !2301
	%124 = phi i8* [ %139, %138 ], [ %51, %120 ]
	tail call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	%125 = load i8, i8* %124, align 1, !dbg !2389, !tbaa !959
	tail call void @llvm.dbg.value(metadata i8 %125, i64 0, metadata !2386, metadata !760) #11, !dbg !2390
	%126 = zext i8 %125 to i64, !dbg !2381
	%127 = getelementptr inbounds i16, i16* %122, i64 %126, !dbg !2381
	%128 = load i16, i16* %127, align 2, !dbg !2381, !tbaa !2391
	%129 = and i16 %128, 1, !dbg !2381
	%130 = icmp eq i8 %125, 10, !dbg !2392
	%131 = icmp ne i16 %129, 0, !dbg !2394
	%132 = or i1 %130, %131, !dbg !2394
	br i1 %132, label %138, label %133, !dbg !2395, !llvm.loop !2396
	%134 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 1
	%135 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 2
	%136 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 3
	%137 = bitcast %struct.field** %136 to i8**
	br label %142, !dbg !2301
	%139 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !2399
	tail call void @llvm.dbg.value(metadata i8* %139, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	%140 = icmp eq i8* %139, %55, !dbg !2401
	br i1 %140, label %251, label %123, !dbg !2402, !llvm.loop !2403
	br label %142, !dbg !2301
	%143 = phi i16* [ %122, %133 ], [ %201, %141 ]
	%144 = phi i8* [ %124, %133 ], [ %197, %141 ]
	tail call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	br label %145, !dbg !2406
	%146 = phi i8* [ %144, %142 ], [ %147, %149 ]
	%147 = getelementptr inbounds i8, i8* %146, i64 1
	tail call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !2294, metadata !760) #11, !dbg !2408
	%148 = icmp eq i8* %147, %55, !dbg !2409
	br i1 %148, label %158, label %149, !dbg !2412
	%150 = load i8, i8* %147, align 1, !dbg !2413, !tbaa !959
	tail call void @llvm.dbg.value(metadata i8 %150, i64 0, metadata !2386, metadata !760) #11, !dbg !2415
	%151 = zext i8 %150 to i64, !dbg !2417
	%152 = getelementptr inbounds i16, i16* %143, i64 %151, !dbg !2417
	%153 = load i16, i16* %152, align 2, !dbg !2417, !tbaa !2391
	%154 = and i16 %153, 1, !dbg !2417
	%155 = icmp eq i8 %150, 10, !dbg !2418
	%156 = icmp ne i16 %154, 0, !dbg !2419
	%157 = or i1 %155, %156, !dbg !2419
	br i1 %157, label %158, label %145, !dbg !2420, !llvm.loop !2422
	%159 = phi i8* [ %147, %149 ], [ %55, %145 ]
	%160 = phi i1 [ false, %149 ], [ true, %145 ]
	%161 = ptrtoint i8* %159 to i64, !dbg !2425
	%162 = ptrtoint i8* %144 to i64, !dbg !2425
	%163 = sub i64 %161, %162, !dbg !2425
	tail call void @llvm.dbg.value(metadata %struct.line* %23, i64 0, metadata !2330, metadata !760) #11, !dbg !2426
	tail call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !2331, metadata !760) #11, !dbg !2428
	tail call void @llvm.dbg.value(metadata i64 %163, i64 0, metadata !2332, metadata !760) #11, !dbg !2429
	%164 = load i64, i64* %134, align 8, !dbg !2430, !tbaa !1472
	%165 = load i64, i64* %135, align 8, !dbg !2431, !tbaa !2339
	%166 = icmp ult i64 %164, %165, !dbg !2432
	br i1 %166, label %167, label %169, !dbg !2433
	%168 = load %struct.field*, %struct.field** %136, align 8, !tbaa !1846
	br label %188, !dbg !2433
	%170 = load i8*, i8** %137, align 8, !dbg !2434, !tbaa !1846
	tail call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !58, metadata !760) #11, !dbg !2435
	tail call void @llvm.dbg.value(metadata i64* %135, i64 0, metadata !59, metadata !760) #11, !dbg !2437
	tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !60, metadata !760) #11, !dbg !2438
	tail call void @llvm.dbg.value(metadata i64 %165, i64 0, metadata !61, metadata !760) #11, !dbg !2439
	%171 = icmp eq i8* %170, null, !dbg !2440
	br i1 %171, label %172, label %175, !dbg !2441
	%173 = icmp eq i64 %165, 0, !dbg !2442
	tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !61, metadata !760) #11, !dbg !2439
	tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !61, metadata !760) #11, !dbg !2439
	%174 = select i1 %173, i64 8, i64 %165, !dbg !2443
	br label %182, !dbg !2443
	%176 = icmp ult i64 %165, 384307168202282325, !dbg !2444
	br i1 %176, label %178, label %177, !dbg !2445
	tail call void @xalloc_die() #14, !dbg !2446
	unreachable, !dbg !2446
	%179 = lshr i64 %165, 1, !dbg !2447
	%180 = add i64 %165, 1, !dbg !2448
	%181 = add i64 %180, %179, !dbg !2449
	tail call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !61, metadata !760) #11, !dbg !2439
	br label %182
	%183 = phi i64 [ %181, %178 ], [ %174, %172 ]
	tail call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !61, metadata !760) #11, !dbg !2439
	store i64 %183, i64* %135, align 8, !dbg !2450, !tbaa !979
	%184 = shl i64 %183, 4, !dbg !2451
	%185 = tail call i8* @xrealloc(i8* %170, i64 %184) #11, !dbg !2452
	store i8* %185, i8** %137, align 8, !dbg !2453, !tbaa !1846
	%186 = bitcast i8* %185 to %struct.field*, !dbg !2454
	%187 = load i64, i64* %134, align 8, !tbaa !1472
	br label %188, !dbg !2454
	%189 = phi %struct.field* [ %168, %167 ], [ %186, %182 ], !dbg !2455
	%190 = phi i64 [ %164, %167 ], [ %187, %182 ], !dbg !2456
	%191 = getelementptr inbounds %struct.field, %struct.field* %189, i64 %190, i32 0, !dbg !2457
	store i8* %144, i8** %191, align 8, !dbg !2458, !tbaa !2369
	%192 = getelementptr inbounds %struct.field, %struct.field* %189, i64 %190, i32 1, !dbg !2459
	store i64 %163, i64* %192, align 8, !dbg !2460, !tbaa !2373
	%193 = add i64 %190, 1, !dbg !2456
	store i64 %193, i64* %134, align 8, !dbg !2456, !tbaa !1472
	br i1 %160, label %250, label %194, !dbg !2461
	br label %195
	%196 = phi i8* [ %197, %199 ], [ %159, %194 ]
	%197 = getelementptr inbounds i8, i8* %196, i64 1
	tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	%198 = icmp eq i8* %197, %55, !dbg !2462
	br i1 %198, label %210, label %199, !dbg !2466
	%200 = load i8, i8* %197, align 1, !dbg !2467, !tbaa !959
	tail call void @llvm.dbg.value(metadata i8 %200, i64 0, metadata !2386, metadata !760) #11, !dbg !2469
	%201 = load i16*, i16** %121, align 8, !dbg !2471, !tbaa !768
	%202 = zext i8 %200 to i64, !dbg !2471
	%203 = getelementptr inbounds i16, i16* %201, i64 %202, !dbg !2471
	%204 = load i16, i16* %203, align 2, !dbg !2471, !tbaa !2391
	%205 = and i16 %204, 1, !dbg !2471
	%206 = icmp eq i8 %200, 10, !dbg !2472
	%207 = icmp ne i16 %205, 0, !dbg !2473
	%208 = or i1 %206, %207, !dbg !2473
	br i1 %208, label %195, label %141, !dbg !2474, !llvm.loop !2476
	br label %211, !dbg !2301
	br label %211, !dbg !2301
	%212 = phi i8* [ %51, %118 ], [ %51, %62 ], [ %113, %209 ], [ %55, %210 ]
	tail call void @llvm.dbg.value(metadata i8* %212, i64 0, metadata !2289, metadata !760) #11, !dbg !2301
	%213 = ptrtoint i8* %55 to i64, !dbg !2479
	%214 = ptrtoint i8* %212 to i64, !dbg !2479
	%215 = sub i64 %213, %214, !dbg !2479
	tail call void @llvm.dbg.value(metadata %struct.line* %23, i64 0, metadata !2330, metadata !760) #11, !dbg !2480
	tail call void @llvm.dbg.value(metadata i8* %212, i64 0, metadata !2331, metadata !760) #11, !dbg !2482
	tail call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !2332, metadata !760) #11, !dbg !2483
	%216 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 1, !dbg !2484
	%217 = load i64, i64* %216, align 8, !dbg !2484, !tbaa !1472
	%218 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 2, !dbg !2485
	%219 = load i64, i64* %218, align 8, !dbg !2485, !tbaa !2339
	%220 = icmp ult i64 %217, %219, !dbg !2486
	%221 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 3
	br i1 %220, label %222, label %224, !dbg !2487
	%223 = load %struct.field*, %struct.field** %221, align 8, !tbaa !1846
	br label %244, !dbg !2487
	%225 = bitcast %struct.field** %221 to i8**, !dbg !2488
	%226 = load i8*, i8** %225, align 8, !dbg !2488, !tbaa !1846
	tail call void @llvm.dbg.value(metadata i8* %226, i64 0, metadata !58, metadata !760) #11, !dbg !2489
	tail call void @llvm.dbg.value(metadata i64* %218, i64 0, metadata !59, metadata !760) #11, !dbg !2491
	tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !60, metadata !760) #11, !dbg !2492
	tail call void @llvm.dbg.value(metadata i64 %219, i64 0, metadata !61, metadata !760) #11, !dbg !2493
	%227 = icmp eq i8* %226, null, !dbg !2494
	br i1 %227, label %228, label %231, !dbg !2495
	%229 = icmp eq i64 %219, 0, !dbg !2496
	tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !61, metadata !760) #11, !dbg !2493
	tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !61, metadata !760) #11, !dbg !2493
	%230 = select i1 %229, i64 8, i64 %219, !dbg !2497
	br label %238, !dbg !2497
	%232 = icmp ult i64 %219, 384307168202282325, !dbg !2498
	br i1 %232, label %234, label %233, !dbg !2499
	tail call void @xalloc_die() #14, !dbg !2500
	unreachable, !dbg !2500
	%235 = lshr i64 %219, 1, !dbg !2501
	%236 = add i64 %219, 1, !dbg !2502
	%237 = add i64 %236, %235, !dbg !2503
	tail call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !61, metadata !760) #11, !dbg !2493
	br label %238
	%239 = phi i64 [ %237, %234 ], [ %230, %228 ]
	tail call void @llvm.dbg.value(metadata i64 %239, i64 0, metadata !61, metadata !760) #11, !dbg !2493
	store i64 %239, i64* %218, align 8, !dbg !2504, !tbaa !979
	%240 = shl i64 %239, 4, !dbg !2505
	%241 = tail call i8* @xrealloc(i8* %226, i64 %240) #11, !dbg !2506
	store i8* %241, i8** %225, align 8, !dbg !2507, !tbaa !1846
	%242 = bitcast i8* %241 to %struct.field*, !dbg !2508
	%243 = load i64, i64* %216, align 8, !tbaa !1472
	br label %244, !dbg !2508
	%245 = phi %struct.field* [ %223, %222 ], [ %242, %238 ], !dbg !2509
	%246 = phi i64 [ %217, %222 ], [ %243, %238 ], !dbg !2510
	%247 = getelementptr inbounds %struct.field, %struct.field* %245, i64 %246, i32 0, !dbg !2511
	store i8* %212, i8** %247, align 8, !dbg !2512, !tbaa !2369
	%248 = getelementptr inbounds %struct.field, %struct.field* %245, i64 %246, i32 1, !dbg !2513
	store i64 %215, i64* %248, align 8, !dbg !2514, !tbaa !2373
	%249 = add i64 %246, 1, !dbg !2510
	store i64 %249, i64* %216, align 8, !dbg !2510, !tbaa !1472
	br label %252, !dbg !2515
	br label %252, !dbg !2516
	br label %252, !dbg !2516
	%253 = load %struct.line*, %struct.line** %7, align 8, !dbg !2516, !tbaa !768
	%254 = icmp eq %struct.line* %253, null, !dbg !2516
	br i1 %254, label %293, label %255, !dbg !2518
	tail call void @llvm.dbg.value(metadata %struct.line* %253, i64 0, metadata !2519, metadata !760) #11, !dbg !2534
	tail call void @llvm.dbg.value(metadata %struct.line* %23, i64 0, metadata !2524, metadata !760) #11, !dbg !2536
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2525, metadata !760) #11, !dbg !2537
	%256 = load i32, i32* @check_input_order, align 4, !dbg !2538, !tbaa !959
	switch i32 %256, label %257 [
		i32 2, label %293
		i32 1, label %259
	], !dbg !2539
	%258 = load i1, i1* @seen_unpairable, align 1
	br i1 %258, label %259, label %293, !dbg !2540
	%260 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %6, !dbg !2542
	%261 = load i8, i8* %260, align 1, !dbg !2542, !tbaa !952, !range !1551
	%262 = icmp eq i8 %261, 0, !dbg !2542
	br i1 %262, label %263, label %293, !dbg !2543
	%264 = icmp eq i32 %2, 1, !dbg !2544
	%265 = load i64, i64* @join_field_1, align 8
	%266 = load i64, i64* @join_field_2, align 8
	%267 = select i1 %264, i64 %265, i64 %266
	tail call void @llvm.dbg.value(metadata i64 %267, i64 0, metadata !2526, metadata !760) #11, !dbg !2545
	%268 = tail call fastcc i32 @keycmp(%struct.line* nonnull %253, %struct.line* %23, i64 %267, i64 %267) #11, !dbg !2546
	%269 = icmp sgt i32 %268, 0, !dbg !2547
	br i1 %269, label %270, label %293, !dbg !2548
	%271 = load i64, i64* %52, align 8, !dbg !2549, !tbaa !2303
	tail call void @llvm.dbg.value(metadata i64 %271, i64 0, metadata !2531, metadata !760) #11, !dbg !2550
	%272 = icmp eq i64 %271, 0, !dbg !2551
	br i1 %272, label %280, label %273, !dbg !2553
	%274 = load i8*, i8** %50, align 8, !dbg !2554, !tbaa !1850
	%275 = add i64 %271, -1, !dbg !2556
	%276 = getelementptr inbounds i8, i8* %274, i64 %275, !dbg !2557
	%277 = load i8, i8* %276, align 1, !dbg !2557, !tbaa !959
	%278 = icmp eq i8 %277, 10, !dbg !2558
	tail call void @llvm.dbg.value(metadata i64 %275, i64 0, metadata !2531, metadata !760) #11, !dbg !2550
	%279 = select i1 %278, i64 %275, i64 %271, !dbg !2559
	br label %280, !dbg !2559
	%281 = phi i64 [ %279, %273 ], [ 0, %270 ]
	tail call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2531, metadata !760) #11, !dbg !2550
	%282 = icmp ult i64 %281, 2147483647, !dbg !2561
	%283 = select i1 %282, i64 %281, i64 2147483647, !dbg !2561
	tail call void @llvm.dbg.value(metadata i64 %283, i64 0, metadata !2531, metadata !760) #11, !dbg !2550
	%284 = load i32, i32* @check_input_order, align 4, !dbg !2562, !tbaa !959
	%285 = icmp eq i32 %284, 1, !dbg !2563
	%286 = zext i1 %285 to i32, !dbg !2562
	%287 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i64 0, i64 0), i32 5) #11, !dbg !2564
	%288 = getelementptr inbounds [2 x i8*], [2 x i8*]* @g_names, i64 0, i64 %6, !dbg !2565
	%289 = load i8*, i8** %288, align 8, !dbg !2565, !tbaa !768
	%290 = load i64, i64* %47, align 8, !dbg !2566, !tbaa !979
	%291 = trunc i64 %283 to i32, !dbg !2567
	%292 = load i8*, i8** %50, align 8, !dbg !2568, !tbaa !1850
	tail call void (i32, i32, i8*, ...) @error(i32 %286, i32 0, i8* %287, i8* %289, i64 %290, i32 %291, i8* %292) #11, !dbg !2569
	store i8 1, i8* %260, align 1, !dbg !2570, !tbaa !952
	br label %293, !dbg !2571
	store %struct.line* %23, %struct.line** %7, align 8, !dbg !2572, !tbaa !768
	br label %294, !dbg !2573
	%295 = phi i1 [ true, %293 ], [ false, %38 ], [ false, %40 ]
	ret i1 %295, !dbg !2574
}
define internal fastcc void @prjoin(%struct.line* readonly, %struct.line* nocapture readonly) unnamed_addr #6 !dbg !2575 {
	tail call void @llvm.dbg.value(metadata %struct.line* %0, i64 0, metadata !2579, metadata !760), !dbg !2590
	tail call void @llvm.dbg.value(metadata %struct.line* %1, i64 0, metadata !2580, metadata !760), !dbg !2591
	%3 = load i32, i32* @tab, align 4, !dbg !2592, !tbaa !937
	%4 = load %struct.outlist*, %struct.outlist** getelementptr inbounds (%struct.outlist, %struct.outlist* @outlist_head, i64 0, i32 2), align 8, !dbg !2593, !tbaa !2062
	tail call void @llvm.dbg.value(metadata %struct.outlist* %4, i64 0, metadata !2581, metadata !760), !dbg !2594
	%5 = icmp eq %struct.outlist* %4, null, !dbg !2595
	%6 = icmp eq %struct.line* %0, @uni_blank
	br i1 %5, label %83, label %7, !dbg !2596
	%8 = icmp slt i32 %3, 0, !dbg !2597
	%9 = select i1 %6, i64* @join_field_2, i64* @join_field_1
	%10 = select i1 %6, %struct.line* %1, %struct.line* %0
	%11 = shl i32 %3, 24
	%12 = ashr exact i32 %11, 24
	%13 = select i1 %8, i32 32, i32 %12
	%14 = trunc i32 %13 to i8
	%15 = and i32 %13, 255
	br label %16, !dbg !2598
	%17 = phi %struct.outlist* [ %4, %7 ], [ %55, %66 ]
	tail call void @llvm.dbg.value(metadata %struct.outlist* %17, i64 0, metadata !2587, metadata !760), !dbg !2598
	%18 = getelementptr inbounds %struct.outlist, %struct.outlist* %17, i64 0, i32 0, !dbg !2599
	%19 = load i32, i32* %18, align 8, !dbg !2599, !tbaa !2055
	%20 = icmp eq i32 %19, 0, !dbg !2602
	%21 = icmp eq i32 %19, 1, !dbg !2603
	%22 = select i1 %21, %struct.line* %0, %struct.line* %1, !dbg !2605
	tail call void @llvm.dbg.value(metadata %struct.line* %22, i64 0, metadata !2586, metadata !760), !dbg !2606
	%23 = getelementptr inbounds %struct.outlist, %struct.outlist* %17, i64 0, i32 1, !dbg !2607
	%24 = select i1 %20, i64* %9, i64* %23, !dbg !2608
	%25 = select i1 %20, %struct.line* %10, %struct.line* %22, !dbg !2608
	%26 = load i64, i64* %24, align 8, !tbaa !979
	tail call void @llvm.dbg.value(metadata %struct.line* %25, i64 0, metadata !2586, metadata !760), !dbg !2606
	tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !2585, metadata !760), !dbg !2609
	tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !2610, metadata !760) #11, !dbg !2617
	tail call void @llvm.dbg.value(metadata %struct.line* %25, i64 0, metadata !2615, metadata !760) #11, !dbg !2619
	%27 = getelementptr inbounds %struct.line, %struct.line* %25, i64 0, i32 1, !dbg !2620
	%28 = load i64, i64* %27, align 8, !dbg !2620, !tbaa !1472
	%29 = icmp ugt i64 %28, %26, !dbg !2622
	br i1 %29, label %30, label %47, !dbg !2623
	%31 = getelementptr inbounds %struct.line, %struct.line* %25, i64 0, i32 3, !dbg !2624
	%32 = load %struct.field*, %struct.field** %31, align 8, !dbg !2624, !tbaa !1846
	%33 = getelementptr inbounds %struct.field, %struct.field* %32, i64 %26, i32 1, !dbg !2626
	%34 = load i64, i64* %33, align 8, !dbg !2626, !tbaa !2373
	tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !2616, metadata !760) #11, !dbg !2627
	%35 = icmp eq i64 %34, 0, !dbg !2628
	br i1 %35, label %41, label %36, !dbg !2630
	%37 = getelementptr inbounds %struct.field, %struct.field* %32, i64 %26, i32 0, !dbg !2631
	%38 = load i8*, i8** %37, align 8, !dbg !2631, !tbaa !2369
	%39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2631, !tbaa !768
	%40 = tail call i64 @fwrite_unlocked(i8* %38, i64 1, i64 %34, %struct._IO_FILE* %39) #11, !dbg !2631
	br label %53, !dbg !2631
	%42 = load i8*, i8** @empty_filler, align 8, !dbg !2632, !tbaa !768
	%43 = icmp eq i8* %42, null, !dbg !2632
	br i1 %43, label %53, label %44, !dbg !2634
	%45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2635, !tbaa !768
	%46 = tail call i32 @fputs_unlocked(i8* nonnull %42, %struct._IO_FILE* %45) #11, !dbg !2635
	br label %53, !dbg !2635
	%48 = load i8*, i8** @empty_filler, align 8, !dbg !2636, !tbaa !768
	%49 = icmp eq i8* %48, null, !dbg !2636
	br i1 %49, label %53, label %50, !dbg !2638
	%51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2639, !tbaa !768
	%52 = tail call i32 @fputs_unlocked(i8* nonnull %48, %struct._IO_FILE* %51) #11, !dbg !2639
	br label %53, !dbg !2639
	%54 = getelementptr inbounds %struct.outlist, %struct.outlist* %17, i64 0, i32 2, !dbg !2640
	%55 = load %struct.outlist*, %struct.outlist** %54, align 8, !dbg !2640, !tbaa !2062
	tail call void @llvm.dbg.value(metadata %struct.outlist* %55, i64 0, metadata !2587, metadata !760), !dbg !2598
	%56 = icmp eq %struct.outlist* %55, null, !dbg !2641
	br i1 %56, label %69, label %57, !dbg !2643
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2644, metadata !760) #11, !dbg !2649
	%58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2651, !tbaa !768
	%59 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %58, i64 0, i32 5, !dbg !2651
	%60 = load i8*, i8** %59, align 8, !dbg !2651, !tbaa !2652
	%61 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %58, i64 0, i32 6, !dbg !2651
	%62 = load i8*, i8** %61, align 8, !dbg !2651, !tbaa !2653
	%63 = icmp ult i8* %60, %62, !dbg !2651
	br i1 %63, label %67, label %64, !dbg !2651, !prof !2654
	%65 = tail call i32 @__overflow(%struct._IO_FILE* %58, i32 %15) #11, !dbg !2655
	br label %66, !dbg !2655
	br label %16, !dbg !2598, !llvm.loop !2657
	%68 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2660
	store i8* %68, i8** %59, align 8, !dbg !2660, !tbaa !2652
	store i8 %14, i8* %60, align 1, !dbg !2660, !tbaa !959
	br label %66, !dbg !2660
	%70 = load i1, i1* @eolchar, align 1
	%71 = select i1 %70, i32 0, i32 10, !dbg !2662
	tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !2644, metadata !760) #11, !dbg !2663
	%72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2665, !tbaa !768
	%73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5, !dbg !2665
	%74 = load i8*, i8** %73, align 8, !dbg !2665, !tbaa !2652
	%75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6, !dbg !2665
	%76 = load i8*, i8** %75, align 8, !dbg !2665, !tbaa !2653
	%77 = icmp ult i8* %74, %76, !dbg !2665
	br i1 %77, label %80, label %78, !dbg !2665, !prof !2654
	%79 = tail call i32 @__overflow(%struct._IO_FILE* %72, i32 %71) #11, !dbg !2666
	br label %132, !dbg !2666
	%81 = trunc i32 %71 to i8, !dbg !2667
	%82 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !2667
	store i8* %82, i8** %73, align 8, !dbg !2667, !tbaa !2652
	store i8 %81, i8* %74, align 1, !dbg !2667, !tbaa !959
	br label %132, !dbg !2667
	%84 = select i1 %6, %struct.line* %1, %struct.line* %0, !dbg !2668
	%85 = load i64, i64* @join_field_2, align 8
	%86 = load i64, i64* @join_field_1, align 8
	%87 = select i1 %6, i64 %85, i64 %86
	tail call void @llvm.dbg.value(metadata %struct.line* %84, i64 0, metadata !2586, metadata !760), !dbg !2606
	tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !2585, metadata !760), !dbg !2609
	tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !2610, metadata !760) #11, !dbg !2672
	tail call void @llvm.dbg.value(metadata %struct.line* %84, i64 0, metadata !2615, metadata !760) #11, !dbg !2674
	%88 = getelementptr inbounds %struct.line, %struct.line* %84, i64 0, i32 1, !dbg !2675
	%89 = load i64, i64* %88, align 8, !dbg !2675, !tbaa !1472
	%90 = icmp ugt i64 %89, %87, !dbg !2676
	br i1 %90, label %91, label %108, !dbg !2677
	%92 = getelementptr inbounds %struct.line, %struct.line* %84, i64 0, i32 3, !dbg !2678
	%93 = load %struct.field*, %struct.field** %92, align 8, !dbg !2678, !tbaa !1846
	%94 = getelementptr inbounds %struct.field, %struct.field* %93, i64 %87, i32 1, !dbg !2679
	%95 = load i64, i64* %94, align 8, !dbg !2679, !tbaa !2373
	tail call void @llvm.dbg.value(metadata i64 %95, i64 0, metadata !2616, metadata !760) #11, !dbg !2680
	%96 = icmp eq i64 %95, 0, !dbg !2681
	br i1 %96, label %102, label %97, !dbg !2682
	%98 = getelementptr inbounds %struct.field, %struct.field* %93, i64 %87, i32 0, !dbg !2683
	%99 = load i8*, i8** %98, align 8, !dbg !2683, !tbaa !2369
	%100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2683, !tbaa !768
	%101 = tail call i64 @fwrite_unlocked(i8* %99, i64 1, i64 %95, %struct._IO_FILE* %100) #11, !dbg !2683
	br label %114, !dbg !2683
	%103 = load i8*, i8** @empty_filler, align 8, !dbg !2684, !tbaa !768
	%104 = icmp eq i8* %103, null, !dbg !2684
	br i1 %104, label %114, label %105, !dbg !2685
	%106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2686, !tbaa !768
	%107 = tail call i32 @fputs_unlocked(i8* nonnull %103, %struct._IO_FILE* %106) #11, !dbg !2686
	br label %114, !dbg !2686
	%109 = load i8*, i8** @empty_filler, align 8, !dbg !2687, !tbaa !768
	%110 = icmp eq i8* %109, null, !dbg !2687
	br i1 %110, label %114, label %111, !dbg !2688
	%112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2689, !tbaa !768
	%113 = tail call i32 @fputs_unlocked(i8* nonnull %109, %struct._IO_FILE* %112) #11, !dbg !2689
	br label %114, !dbg !2689
	%115 = load i64, i64* @join_field_1, align 8, !dbg !2690, !tbaa !979
	%116 = load i64, i64* @autocount_1, align 8, !dbg !2691, !tbaa !979
	tail call fastcc void @prfields(%struct.line* %0, i64 %115, i64 %116), !dbg !2692
	%117 = load i64, i64* @join_field_2, align 8, !dbg !2693, !tbaa !979
	%118 = load i64, i64* @autocount_2, align 8, !dbg !2694, !tbaa !979
	tail call fastcc void @prfields(%struct.line* %1, i64 %117, i64 %118), !dbg !2695
	%119 = load i1, i1* @eolchar, align 1
	%120 = select i1 %119, i32 0, i32 10, !dbg !2696
	tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !2644, metadata !760) #11, !dbg !2697
	%121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2699, !tbaa !768
	%122 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 5, !dbg !2699
	%123 = load i8*, i8** %122, align 8, !dbg !2699, !tbaa !2652
	%124 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 6, !dbg !2699
	%125 = load i8*, i8** %124, align 8, !dbg !2699, !tbaa !2653
	%126 = icmp ult i8* %123, %125, !dbg !2699
	br i1 %126, label %129, label %127, !dbg !2699, !prof !2654
	%128 = tail call i32 @__overflow(%struct._IO_FILE* %121, i32 %120) #11, !dbg !2700
	br label %132, !dbg !2700
	%130 = trunc i32 %120 to i8, !dbg !2701
	%131 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !2701
	store i8* %131, i8** %122, align 8, !dbg !2701, !tbaa !2652
	store i8 %130, i8* %123, align 1, !dbg !2701, !tbaa !959
	br label %132, !dbg !2701
	ret void, !dbg !2702
}
define internal fastcc i32 @keycmp(%struct.line* nocapture readonly, %struct.line* nocapture readonly, i64, i64) unnamed_addr #6 !dbg !2703 {
	tail call void @llvm.dbg.value(metadata %struct.line* %0, i64 0, metadata !2707, metadata !760), !dbg !2716
	tail call void @llvm.dbg.value(metadata %struct.line* %1, i64 0, metadata !2708, metadata !760), !dbg !2717
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2709, metadata !760), !dbg !2718
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2710, metadata !760), !dbg !2719
	%5 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1, !dbg !2720
	%6 = load i64, i64* %5, align 8, !dbg !2720, !tbaa !1472
	%7 = icmp ugt i64 %6, %2, !dbg !2722
	br i1 %7, label %8, label %15, !dbg !2723
	%9 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 3, !dbg !2724
	%10 = load %struct.field*, %struct.field** %9, align 8, !dbg !2724, !tbaa !1846
	%11 = getelementptr inbounds %struct.field, %struct.field* %10, i64 %2, i32 0, !dbg !2726
	%12 = load i8*, i8** %11, align 8, !dbg !2726, !tbaa !2369
	tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2711, metadata !760), !dbg !2727
	%13 = getelementptr inbounds %struct.field, %struct.field* %10, i64 %2, i32 1, !dbg !2728
	%14 = load i64, i64* %13, align 8, !dbg !2728, !tbaa !2373
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2713, metadata !760), !dbg !2729
	br label %15, !dbg !2730
	%16 = phi i8* [ %12, %8 ], [ null, %4 ]
	%17 = phi i64 [ %14, %8 ], [ 0, %4 ]
	tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !2713, metadata !760), !dbg !2729
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !2711, metadata !760), !dbg !2727
	%18 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 1, !dbg !2731
	%19 = load i64, i64* %18, align 8, !dbg !2731, !tbaa !1472
	%20 = icmp ugt i64 %19, %3, !dbg !2733
	br i1 %20, label %21, label %28, !dbg !2734
	%22 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 3, !dbg !2735
	%23 = load %struct.field*, %struct.field** %22, align 8, !dbg !2735, !tbaa !1846
	%24 = getelementptr inbounds %struct.field, %struct.field* %23, i64 %3, i32 0, !dbg !2737
	%25 = load i8*, i8** %24, align 8, !dbg !2737, !tbaa !2369
	tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2712, metadata !760), !dbg !2738
	%26 = getelementptr inbounds %struct.field, %struct.field* %23, i64 %3, i32 1, !dbg !2739
	%27 = load i64, i64* %26, align 8, !dbg !2739, !tbaa !2373
	tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !2714, metadata !760), !dbg !2740
	br label %28, !dbg !2741
	%29 = phi i8* [ %25, %21 ], [ null, %15 ]
	%30 = phi i64 [ %27, %21 ], [ 0, %15 ]
	tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !2714, metadata !760), !dbg !2740
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2712, metadata !760), !dbg !2738
	%31 = icmp eq i64 %17, 0, !dbg !2742
	%32 = icmp eq i64 %30, 0
	br i1 %31, label %33, label %36, !dbg !2744
	%34 = xor i1 %32, true, !dbg !2745
	%35 = sext i1 %34 to i32, !dbg !2745
	br label %60, !dbg !2746
	br i1 %32, label %60, label %37, !dbg !2747
	%38 = load i1, i1* @ignore_case, align 1
	br i1 %38, label %39, label %43, !dbg !2748
	%40 = icmp ult i64 %17, %30, !dbg !2749
	%41 = select i1 %40, i64 %17, i64 %30, !dbg !2749
	%42 = tail call i32 @memcasecmp(i8* %16, i8* %29, i64 %41) #13, !dbg !2752
	tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !2715, metadata !760), !dbg !2754
	br label %52, !dbg !2755
	%44 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !2756, !tbaa !952, !range !1551
	%45 = icmp eq i8 %44, 0, !dbg !2756
	br i1 %45, label %48, label %46, !dbg !2759
	%47 = tail call i32 @xmemcoll(i8* %16, i64 %17, i8* %29, i64 %30) #11, !dbg !2760
	br label %60, !dbg !2761
	%49 = icmp ult i64 %17, %30, !dbg !2762
	%50 = select i1 %49, i64 %17, i64 %30, !dbg !2762
	%51 = tail call i32 @memcmp(i8* %16, i8* %29, i64 %50) #13, !dbg !2763
	tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !2715, metadata !760), !dbg !2754
	br label %52
	%53 = phi i32 [ %42, %39 ], [ %51, %48 ]
	tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !2715, metadata !760), !dbg !2754
	%54 = icmp eq i32 %53, 0, !dbg !2765
	br i1 %54, label %55, label %60, !dbg !2767
	%56 = icmp ult i64 %17, %30, !dbg !2768
	%57 = icmp ne i64 %17, %30, !dbg !2769
	%58 = zext i1 %57 to i32, !dbg !2769
	%59 = select i1 %56, i32 -1, i32 %58, !dbg !2771
	br label %60, !dbg !2771
	%61 = phi i32 [ %35, %33 ], [ %47, %46 ], [ 1, %36 ], [ %53, %52 ], [ %59, %55 ]
	ret i32 %61, !dbg !2772
}
declare void @free(i8* nocapture) local_unnamed_addr #2
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4
declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3
declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3
define internal fastcc void @prfields(%struct.line* nocapture readonly, i64, i64) unnamed_addr #6 !dbg !2773 {
	tail call void @llvm.dbg.value(metadata %struct.line* %0, i64 0, metadata !2777, metadata !760), !dbg !2783
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2778, metadata !760), !dbg !2784
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2779, metadata !760), !dbg !2785
	%4 = load i1, i1* @autoformat, align 1
	br i1 %4, label %8, label %5, !dbg !2786
	%6 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1, !dbg !2787
	%7 = load i64, i64* %6, align 8, !dbg !2787, !tbaa !1472
	br label %8, !dbg !2789
	%9 = phi i64 [ %7, %5 ], [ %2, %3 ], !dbg !2790
	tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2781, metadata !760), !dbg !2792
	%10 = load i32, i32* @tab, align 4, !dbg !2793, !tbaa !937
	%11 = icmp slt i32 %10, 0, !dbg !2794
	%12 = trunc i32 %10 to i8, !dbg !2795
	%13 = select i1 %11, i8 32, i8 %12, !dbg !2795
	tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !2782, metadata !760), !dbg !2796
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2780, metadata !760), !dbg !2797
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2780, metadata !760), !dbg !2797
	%14 = icmp ne i64 %1, 0, !dbg !2798
	%15 = icmp ne i64 %9, 0, !dbg !2802
	%16 = and i1 %14, %15, !dbg !2804
	br i1 %16, label %17, label %22, !dbg !2804
	%18 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
	%19 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 3
	%20 = zext i8 %13 to i32
	br label %29, !dbg !2804
	br label %22
	%23 = add i64 %1, 1
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2780, metadata !760), !dbg !2797
	%24 = icmp ult i64 %23, %9, !dbg !2805
	br i1 %24, label %25, label %112, !dbg !2809
	%26 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
	%27 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 3
	%28 = zext i8 %13 to i32
	br label %71, !dbg !2809
	%30 = phi i64 [ 0, %17 ], [ %67, %66 ]
	%31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2811, !tbaa !768
	%32 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %31, i64 0, i32 5, !dbg !2811
	%33 = load i8*, i8** %32, align 8, !dbg !2811, !tbaa !2652
	%34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %31, i64 0, i32 6, !dbg !2811
	%35 = load i8*, i8** %34, align 8, !dbg !2811, !tbaa !2653
	%36 = icmp ult i8* %33, %35, !dbg !2811
	br i1 %36, label %39, label %37, !dbg !2811, !prof !2654
	%38 = tail call i32 @__overflow(%struct._IO_FILE* %31, i32 %20) #11, !dbg !2814
	br label %41, !dbg !2814
	%40 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !2815
	store i8* %40, i8** %32, align 8, !dbg !2815, !tbaa !2652
	store i8 %13, i8* %33, align 1, !dbg !2815, !tbaa !959
	br label %41, !dbg !2815
	tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !2610, metadata !760) #11, !dbg !2816
	tail call void @llvm.dbg.value(metadata %struct.line* %0, i64 0, metadata !2615, metadata !760) #11, !dbg !2818
	%42 = load i64, i64* %18, align 8, !dbg !2819, !tbaa !1472
	%43 = icmp ugt i64 %42, %30, !dbg !2820
	br i1 %43, label %44, label %60, !dbg !2821
	%45 = load %struct.field*, %struct.field** %19, align 8, !dbg !2822, !tbaa !1846
	%46 = getelementptr inbounds %struct.field, %struct.field* %45, i64 %30, i32 1, !dbg !2823
	%47 = load i64, i64* %46, align 8, !dbg !2823, !tbaa !2373
	tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2616, metadata !760) #11, !dbg !2824
	%48 = icmp eq i64 %47, 0, !dbg !2825
	br i1 %48, label %54, label %49, !dbg !2826
	%50 = getelementptr inbounds %struct.field, %struct.field* %45, i64 %30, i32 0, !dbg !2827
	%51 = load i8*, i8** %50, align 8, !dbg !2827, !tbaa !2369
	%52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2827, !tbaa !768
	%53 = tail call i64 @fwrite_unlocked(i8* %51, i64 1, i64 %47, %struct._IO_FILE* %52) #11, !dbg !2827
	br label %66, !dbg !2827
	%55 = load i8*, i8** @empty_filler, align 8, !dbg !2828, !tbaa !768
	%56 = icmp eq i8* %55, null, !dbg !2828
	br i1 %56, label %66, label %57, !dbg !2829
	%58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2830, !tbaa !768
	%59 = tail call i32 @fputs_unlocked(i8* nonnull %55, %struct._IO_FILE* %58) #11, !dbg !2830
	br label %66, !dbg !2830
	%61 = load i8*, i8** @empty_filler, align 8, !dbg !2831, !tbaa !768
	%62 = icmp eq i8* %61, null, !dbg !2831
	br i1 %62, label %66, label %63, !dbg !2832
	%64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2833, !tbaa !768
	%65 = tail call i32 @fputs_unlocked(i8* nonnull %61, %struct._IO_FILE* %64) #11, !dbg !2833
	br label %66, !dbg !2833
	%67 = add nuw i64 %30, 1, !dbg !2834
	tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !2780, metadata !760), !dbg !2797
	tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !2780, metadata !760), !dbg !2797
	%68 = icmp ult i64 %67, %1, !dbg !2798
	%69 = icmp ult i64 %67, %9, !dbg !2802
	%70 = and i1 %68, %69, !dbg !2804
	br i1 %70, label %29, label %21, !dbg !2804, !llvm.loop !2836
	%72 = phi i64 [ %23, %25 ], [ %97, %96 ]
	%73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2839, !tbaa !768
	%74 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %73, i64 0, i32 5, !dbg !2839
	%75 = load i8*, i8** %74, align 8, !dbg !2839, !tbaa !2652
	%76 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %73, i64 0, i32 6, !dbg !2839
	%77 = load i8*, i8** %76, align 8, !dbg !2839, !tbaa !2653
	%78 = icmp ult i8* %75, %77, !dbg !2839
	br i1 %78, label %81, label %79, !dbg !2839, !prof !2654
	%80 = tail call i32 @__overflow(%struct._IO_FILE* %73, i32 %28) #11, !dbg !2842
	br label %83, !dbg !2842
	%82 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !2843
	store i8* %82, i8** %74, align 8, !dbg !2843, !tbaa !2652
	store i8 %13, i8* %75, align 1, !dbg !2843, !tbaa !959
	br label %83, !dbg !2843
	tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !2610, metadata !760) #11, !dbg !2844
	tail call void @llvm.dbg.value(metadata %struct.line* %0, i64 0, metadata !2615, metadata !760) #11, !dbg !2846
	%84 = load i64, i64* %26, align 8, !dbg !2847, !tbaa !1472
	%85 = icmp ugt i64 %84, %72, !dbg !2848
	br i1 %85, label %86, label %105, !dbg !2849
	%87 = load %struct.field*, %struct.field** %27, align 8, !dbg !2850, !tbaa !1846
	%88 = getelementptr inbounds %struct.field, %struct.field* %87, i64 %72, i32 1, !dbg !2851
	%89 = load i64, i64* %88, align 8, !dbg !2851, !tbaa !2373
	tail call void @llvm.dbg.value(metadata i64 %89, i64 0, metadata !2616, metadata !760) #11, !dbg !2852
	%90 = icmp eq i64 %89, 0, !dbg !2853
	br i1 %90, label %99, label %91, !dbg !2854
	%92 = getelementptr inbounds %struct.field, %struct.field* %87, i64 %72, i32 0, !dbg !2855
	%93 = load i8*, i8** %92, align 8, !dbg !2855, !tbaa !2369
	%94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2855, !tbaa !768
	%95 = tail call i64 @fwrite_unlocked(i8* %93, i64 1, i64 %89, %struct._IO_FILE* %94) #11, !dbg !2855
	br label %96, !dbg !2855
	%97 = add i64 %72, 1
	tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !2780, metadata !760), !dbg !2797
	%98 = icmp eq i64 %97, %9, !dbg !2805
	br i1 %98, label %111, label %71, !dbg !2809, !llvm.loop !2856
	%100 = load i8*, i8** @empty_filler, align 8, !dbg !2859, !tbaa !768
	%101 = icmp eq i8* %100, null, !dbg !2859
	br i1 %101, label %96, label %102, !dbg !2860
	%103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2861, !tbaa !768
	%104 = tail call i32 @fputs_unlocked(i8* nonnull %100, %struct._IO_FILE* %103) #11, !dbg !2861
	br label %96, !dbg !2861
	%106 = load i8*, i8** @empty_filler, align 8, !dbg !2862, !tbaa !768
	%107 = icmp eq i8* %106, null, !dbg !2862
	br i1 %107, label %96, label %108, !dbg !2863
	%109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2864, !tbaa !768
	%110 = tail call i32 @fputs_unlocked(i8* nonnull %106, %struct._IO_FILE* %109) #11, !dbg !2864
	br label %96, !dbg !2864
	br label %112, !dbg !2865
	ret void, !dbg !2865
}
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4
declare i16** @__ctype_b_loc() local_unnamed_addr #8
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #4
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2866 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2868, metadata !760), !dbg !2869
	store i8* %0, i8** @file_name, align 8, !dbg !2870, !tbaa !768
	ret void, !dbg !2871
}
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2872 {
	%2 = zext i1 %0 to i8
	tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2876, metadata !1510), !dbg !2877
	store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2878, !tbaa !952
	ret void, !dbg !2879
}
define void @close_stdout() #6 !dbg !2880 {
	%1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2885, !tbaa !768
	%2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !2886
	%3 = icmp eq i32 %2, 0, !dbg !2887
	br i1 %3, label %21, label %4, !dbg !2888
	%5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2889, !tbaa !952, !range !1551
	%6 = icmp eq i8 %5, 0, !dbg !2889
	%7 = tail call i32* @__errno_location() #1, !dbg !2891
	br i1 %6, label %11, label %8, !dbg !2893
	%9 = load i32, i32* %7, align 4, !dbg !2894, !tbaa !937
	%10 = icmp eq i32 %9, 32, !dbg !2896
	br i1 %10, label %21, label %11, !dbg !2897
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !2899
	tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2882, metadata !760), !dbg !2900
	%13 = load i8*, i8** @file_name, align 8, !dbg !2901, !tbaa !768
	%14 = icmp eq i8* %13, null, !dbg !2901
	%15 = load i32, i32* %7, align 4, !tbaa !937
	br i1 %14, label %18, label %16, !dbg !2902
	%17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !2903
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.27, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !2905
	br label %19, !dbg !2907
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.28, i64 0, i64 0), i8* %12) #11, !dbg !2908
	br label %19
	%20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2909, !tbaa !937
	tail call void @_exit(i32 %20) #14, !dbg !2910
	unreachable, !dbg !2910
	%22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2911, !tbaa !768
	%23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !2913
	%24 = icmp eq i32 %23, 0, !dbg !2914
	br i1 %24, label %27, label %25, !dbg !2915
	%26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2916, !tbaa !937
	tail call void @_exit(i32 %26) #14, !dbg !2917
	unreachable, !dbg !2917
	ret void, !dbg !2918
}
declare void @_exit(i32) local_unnamed_addr #9
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2919 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2926, metadata !760), !dbg !2932
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2927, metadata !760), !dbg !2933
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2928, metadata !760), !dbg !2934
	tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2929, metadata !760), !dbg !2935
	%5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !2936
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2930, metadata !760), !dbg !2936
	ret void, !dbg !2937
}
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2938 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2982, metadata !760), !dbg !2984
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2983, metadata !760), !dbg !2985
	%3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2986
	br i1 %3, label %7, label %4, !dbg !2988
	%5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !2989
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2926, metadata !760) #11, !dbg !2990
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2927, metadata !760) #11, !dbg !2993
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2928, metadata !760) #11, !dbg !2994
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2929, metadata !760) #11, !dbg !2995
	%6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !2996
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2930, metadata !760) #11, !dbg !2996
	br label %7, !dbg !2997
	ret void, !dbg !2998
}
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !2999 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3044, metadata !760), !dbg !3059
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3045, metadata !760), !dbg !3060
	%3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !3061
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !3046, metadata !760), !dbg !3062
	%4 = icmp eq %struct._IO_FILE* %3, null, !dbg !3063
	br i1 %4, label %25, label %5, !dbg !3064
	%6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #11, !dbg !3065
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3047, metadata !760), !dbg !3066
	%7 = icmp ult i32 %6, 3, !dbg !3067
	br i1 %7, label %8, label %25, !dbg !3067
	%9 = tail call i32 @dup_safer(i32 %6) #11, !dbg !3068
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3050, metadata !760), !dbg !3069
	%10 = icmp slt i32 %9, 0, !dbg !3070
	br i1 %10, label %11, label %15, !dbg !3071
	%12 = tail call i32* @__errno_location() #1, !dbg !3072
	%13 = load i32, i32* %12, align 4, !dbg !3072, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3053, metadata !760), !dbg !3073
	%14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !3074
	store i32 %13, i32* %12, align 4, !dbg !3075, !tbaa !937
	br label %25
	%16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !3076
	%17 = icmp eq i32 %16, 0, !dbg !3077
	br i1 %17, label %18, label %21, !dbg !3078
	%19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #11, !dbg !3079
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !3046, metadata !760), !dbg !3062
	%20 = icmp eq %struct._IO_FILE* %19, null, !dbg !3081
	br i1 %20, label %21, label %25, !dbg !3082
	%22 = tail call i32* @__errno_location() #1, !dbg !3084
	%23 = load i32, i32* %22, align 4, !dbg !3084, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !3056, metadata !760), !dbg !3085
	%24 = tail call i32 @close(i32 %9) #11, !dbg !3086
	store i32 %23, i32* %22, align 4, !dbg !3087, !tbaa !937
	br label %25
	%26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
	ret %struct._IO_FILE* %26, !dbg !3088
}
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2
declare i32 @close(i32) local_unnamed_addr #3
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3089 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3094, metadata !760), !dbg !3114
	tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3095, metadata !760), !dbg !3115
	%2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3116
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3096, metadata !760), !dbg !3117
	%3 = icmp eq i8* %2, null, !dbg !3118
	br i1 %3, label %15, label %4, !dbg !3119
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3104, metadata !760), !dbg !3120
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3105, metadata !760), !dbg !3121
	%5 = load i8, i8* %2, align 1, !dbg !3122, !tbaa !959
	%6 = icmp eq i8 %5, 67, !dbg !3124
	br i1 %6, label %7, label %11, !dbg !3127
	%8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3129
	%9 = load i8, i8* %8, align 1, !dbg !3129, !tbaa !959
	%10 = icmp eq i8 %9, 0, !dbg !3132
	br i1 %10, label %14, label %11, !dbg !3134
	tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3110, metadata !760), !dbg !3136
	%12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.37, i64 0, i64 0)) #11, !dbg !3137
	%13 = icmp eq i32 %12, 0, !dbg !3139
	br i1 %13, label %14, label %15, !dbg !3141
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3095, metadata !760), !dbg !3115
	br label %15, !dbg !3143
	%16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
	ret i1 %16, !dbg !3144
}
define void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #6 !dbg !3145 {
	tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !3156, metadata !760), !dbg !3157
	%2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !3158
	tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !3158
	ret void, !dbg !3159
}
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !3160 {
	tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !3204, metadata !760), !dbg !3206
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3205, metadata !760), !dbg !3207
	tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !3208, metadata !760) #11, !dbg !3223
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3213, metadata !760) #11, !dbg !3225
	tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !3214, metadata !760) #11, !dbg !3226
	%3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !3227
	%4 = load i8*, i8** %3, align 8, !dbg !3227, !tbaa !3228
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3216, metadata !760) #11, !dbg !3229
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3217, metadata !760) #11, !dbg !3230
	%5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !3231
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3232, metadata !760) #11, !dbg !3237
	%6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !3240
	%7 = load i32, i32* %6, align 8, !dbg !3240, !tbaa !2263
	%8 = and i32 %7, 16, !dbg !3240
	%9 = icmp eq i32 %8, 0, !dbg !3241
	br i1 %9, label %10, label %63, !dbg !3242, !llvm.loop !3243
	%11 = load i64, i64* %5, align 8, !dbg !3231, !tbaa !3246
	%12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !3247
	%13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
	%14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
	br label %15, !dbg !3248
	%16 = phi i8* [ %49, %48 ], [ %4, %10 ]
	%17 = phi i8* [ %53, %48 ], [ %4, %10 ]
	%18 = phi i8* [ %51, %48 ], [ %12, %10 ]
	tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !3218, metadata !760) #11, !dbg !3248
	tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !3217, metadata !760) #11, !dbg !3230
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3216, metadata !760) #11, !dbg !3229
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3249, metadata !760) #11, !dbg !3252
	%19 = load i8*, i8** %13, align 8, !dbg !3254, !tbaa !3255
	%20 = load i8*, i8** %14, align 8, !dbg !3254, !tbaa !3256
	%21 = icmp ult i8* %19, %20, !dbg !3254
	br i1 %21, label %22, label %26, !dbg !3254, !prof !2654
	%23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !3257
	store i8* %23, i8** %13, align 8, !dbg !3257, !tbaa !3255
	%24 = load i8, i8* %19, align 1, !dbg !3257, !tbaa !959
	%25 = zext i8 %24 to i32, !dbg !3257
	tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !3215, metadata !760) #11, !dbg !3259
	br label %39, !dbg !3260
	%27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !3261
	tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !3215, metadata !760) #11, !dbg !3259
	%28 = icmp eq i32 %27, -1, !dbg !3263
	br i1 %28, label %29, label %39, !dbg !3260
	%30 = icmp eq i8* %17, %16, !dbg !3265
	br i1 %30, label %62, label %31, !dbg !3268
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3269, metadata !760) #11, !dbg !3272
	%32 = load i32, i32* %6, align 8, !dbg !3275, !tbaa !2263
	%33 = and i32 %32, 32, !dbg !3275
	%34 = icmp eq i32 %33, 0, !dbg !3276
	br i1 %34, label %35, label %62, !dbg !3277
	%36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !3279
	%37 = load i8, i8* %36, align 1, !dbg !3279, !tbaa !959
	%38 = icmp eq i8 %37, 10, !dbg !3281
	br i1 %38, label %55, label %39, !dbg !3282
	%40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ]
	tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !3215, metadata !760) #11, !dbg !3259
	%41 = icmp eq i8* %17, %18, !dbg !3283
	br i1 %41, label %42, label %48, !dbg !3284
	%43 = load i64, i64* %5, align 8, !dbg !3285, !tbaa !3246
	tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !3219, metadata !760) #11, !dbg !3286
	%44 = tail call i8* @x2realloc(i8* %16, i64* %5) #11, !dbg !3287
	tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3216, metadata !760) #11, !dbg !3229
	%45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !3288
	tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3217, metadata !760) #11, !dbg !3230
	store i8* %44, i8** %3, align 8, !dbg !3289, !tbaa !3228
	%46 = load i64, i64* %5, align 8, !dbg !3290, !tbaa !3246
	%47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !3291
	tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3218, metadata !760) #11, !dbg !3248
	br label %48, !dbg !3292
	%49 = phi i8* [ %44, %42 ], [ %16, %39 ]
	%50 = phi i8* [ %45, %42 ], [ %17, %39 ]
	%51 = phi i8* [ %47, %42 ], [ %18, %39 ]
	tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !3218, metadata !760) #11, !dbg !3248
	tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3217, metadata !760) #11, !dbg !3230
	tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3216, metadata !760) #11, !dbg !3229
	%52 = trunc i32 %40 to i8, !dbg !3293
	%53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !3294
	tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3217, metadata !760) #11, !dbg !3230
	store i8 %52, i8* %50, align 1, !dbg !3295, !tbaa !959
	%54 = icmp eq i32 %40, 10, !dbg !3296
	br i1 %54, label %55, label %15, !dbg !3297, !llvm.loop !3243
	%56 = phi i8* [ %16, %35 ], [ %49, %48 ]
	%57 = phi i8* [ %17, %35 ], [ %53, %48 ]
	tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !3217, metadata !760) #11, !dbg !3230
	tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !3216, metadata !760) #11, !dbg !3229
	%58 = ptrtoint i8* %57 to i64, !dbg !3299
	%59 = ptrtoint i8* %56 to i64, !dbg !3299
	%60 = sub i64 %58, %59, !dbg !3299
	%61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !3300
	store i64 %60, i64* %61, align 8, !dbg !3301, !tbaa !3302
	br label %63, !dbg !3303
	br label %63, !dbg !3304
	%64 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %62 ]
	ret %struct.linebuffer* %64, !dbg !3304
}
declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #6 !dbg !3209 {
	tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !3208, metadata !760), !dbg !3305
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3213, metadata !760), !dbg !3306
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3214, metadata !760), !dbg !3307
	%4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !3308
	%5 = load i8*, i8** %4, align 8, !dbg !3308, !tbaa !3228
	tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3216, metadata !760), !dbg !3309
	tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3217, metadata !760), !dbg !3310
	%6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !3311
	tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3218, metadata !760), !dbg !3312
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3232, metadata !760), !dbg !3313
	%7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !3315
	%8 = load i32, i32* %7, align 8, !dbg !3315, !tbaa !2263
	%9 = and i32 %8, 16, !dbg !3315
	%10 = icmp eq i32 %9, 0, !dbg !3316
	br i1 %10, label %11, label %65, !dbg !3317, !llvm.loop !3243
	%12 = load i64, i64* %6, align 8, !dbg !3311, !tbaa !3246
	%13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !3318
	%14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
	%15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
	%16 = sext i8 %2 to i32
	br label %17, !dbg !3312
	%18 = phi i8* [ %51, %50 ], [ %5, %11 ]
	%19 = phi i8* [ %55, %50 ], [ %5, %11 ]
	%20 = phi i8* [ %53, %50 ], [ %13, %11 ]
	tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3218, metadata !760), !dbg !3312
	tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3217, metadata !760), !dbg !3310
	tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !3216, metadata !760), !dbg !3309
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3249, metadata !760) #11, !dbg !3319
	%21 = load i8*, i8** %14, align 8, !dbg !3321, !tbaa !3255
	%22 = load i8*, i8** %15, align 8, !dbg !3321, !tbaa !3256
	%23 = icmp ult i8* %21, %22, !dbg !3321
	br i1 %23, label %24, label %28, !dbg !3321, !prof !2654
	%25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !3322
	store i8* %25, i8** %14, align 8, !dbg !3322, !tbaa !3255
	%26 = load i8, i8* %21, align 1, !dbg !3322, !tbaa !959
	%27 = zext i8 %26 to i32, !dbg !3322
	tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !3215, metadata !760), !dbg !3323
	br label %41, !dbg !3324
	%29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !3325
	tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !3215, metadata !760), !dbg !3323
	%30 = icmp eq i32 %29, -1, !dbg !3326
	br i1 %30, label %31, label %41, !dbg !3324
	%32 = icmp eq i8* %19, %18, !dbg !3327
	br i1 %32, label %64, label %33, !dbg !3328
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !3269, metadata !760), !dbg !3329
	%34 = load i32, i32* %7, align 8, !dbg !3331, !tbaa !2263
	%35 = and i32 %34, 32, !dbg !3331
	%36 = icmp eq i32 %35, 0, !dbg !3332
	br i1 %36, label %37, label %64, !dbg !3333
	%38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !3334
	%39 = load i8, i8* %38, align 1, !dbg !3334, !tbaa !959
	%40 = icmp eq i8 %39, %2, !dbg !3335
	br i1 %40, label %57, label %41, !dbg !3336
	%42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ]
	tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !3215, metadata !760), !dbg !3323
	%43 = icmp eq i8* %19, %20, !dbg !3337
	br i1 %43, label %44, label %50, !dbg !3338
	%45 = load i64, i64* %6, align 8, !dbg !3339, !tbaa !3246
	tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3219, metadata !760), !dbg !3340
	%46 = tail call i8* @x2realloc(i8* %18, i64* %6) #11, !dbg !3341
	tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3216, metadata !760), !dbg !3309
	%47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !3342
	tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3217, metadata !760), !dbg !3310
	store i8* %46, i8** %4, align 8, !dbg !3343, !tbaa !3228
	%48 = load i64, i64* %6, align 8, !dbg !3344, !tbaa !3246
	%49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !3345
	tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3218, metadata !760), !dbg !3312
	br label %50, !dbg !3346
	%51 = phi i8* [ %46, %44 ], [ %18, %41 ]
	%52 = phi i8* [ %47, %44 ], [ %19, %41 ]
	%53 = phi i8* [ %49, %44 ], [ %20, %41 ]
	tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3218, metadata !760), !dbg !3312
	tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3217, metadata !760), !dbg !3310
	tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !3216, metadata !760), !dbg !3309
	%54 = trunc i32 %42 to i8, !dbg !3347
	%55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !3348
	tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !3217, metadata !760), !dbg !3310
	store i8 %54, i8* %52, align 1, !dbg !3349, !tbaa !959
	%56 = icmp eq i32 %42, %16, !dbg !3350
	br i1 %56, label %57, label %17, !dbg !3351, !llvm.loop !3243
	%58 = phi i8* [ %18, %37 ], [ %51, %50 ]
	%59 = phi i8* [ %19, %37 ], [ %55, %50 ]
	tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !3217, metadata !760), !dbg !3310
	tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3216, metadata !760), !dbg !3309
	%60 = ptrtoint i8* %59 to i64, !dbg !3352
	%61 = ptrtoint i8* %58 to i64, !dbg !3352
	%62 = sub i64 %60, %61, !dbg !3352
	%63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !3353
	store i64 %62, i64* %63, align 8, !dbg !3354, !tbaa !3302
	br label %65, !dbg !3355
	br label %65, !dbg !3356
	%66 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %64 ]
	ret %struct.linebuffer* %66, !dbg !3356
}
define void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #6 !dbg !3357 {
	tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !3359, metadata !760), !dbg !3360
	%2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !3361
	%3 = load i8*, i8** %2, align 8, !dbg !3361, !tbaa !3228
	tail call void @free(i8* %3) #11, !dbg !3362
	ret void, !dbg !3363
}
define i32 @memcasecmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #10 !dbg !3364 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3369, metadata !760), !dbg !3387
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3370, metadata !760), !dbg !3388
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3371, metadata !760), !dbg !3389
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3373, metadata !760), !dbg !3390
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3374, metadata !760), !dbg !3391
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3372, metadata !760), !dbg !3392
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3372, metadata !760), !dbg !3392
	%4 = icmp eq i64 %2, 0, !dbg !3393
	br i1 %4, label %27, label %5, !dbg !3395
	%6 = tail call i32** @__ctype_toupper_loc() #1, !dbg !3397
	%7 = load i32*, i32** %6, align 8, !tbaa !768
	br label %10, !dbg !3395
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3372, metadata !760), !dbg !3392
	%9 = icmp ult i64 %24, %2, !dbg !3393
	br i1 %9, label %10, label %25, !dbg !3395, !llvm.loop !3399
	%11 = phi i64 [ 0, %5 ], [ %24, %8 ]
	%12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !3402
	%13 = load i8, i8* %12, align 1, !dbg !3402, !tbaa !959
	tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !3375, metadata !760), !dbg !3403
	%14 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !3404
	%15 = load i8, i8* %14, align 1, !dbg !3404, !tbaa !959
	tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !3379, metadata !760), !dbg !3405
	%16 = zext i8 %13 to i64, !dbg !3397
	%17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !3397
	%18 = load i32, i32* %17, align 4, !dbg !3397, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !3381, metadata !760), !dbg !3406
	tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !3380, metadata !760), !dbg !3407
	%19 = zext i8 %15 to i64, !dbg !3408
	%20 = getelementptr inbounds i32, i32* %7, i64 %19, !dbg !3408
	%21 = load i32, i32* %20, align 4, !dbg !3408, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3384, metadata !760), !dbg !3410
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3383, metadata !760), !dbg !3411
	%22 = sub nsw i32 %18, %21, !dbg !3412
	tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !3386, metadata !760), !dbg !3413
	%23 = icmp eq i32 %22, 0, !dbg !3414
	%24 = add nuw i64 %11, 1, !dbg !3416
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3372, metadata !760), !dbg !3392
	br i1 %23, label %8, label %25
	%26 = phi i32 [ 0, %8 ], [ %22, %10 ]
	br label %27, !dbg !3418
	%28 = phi i32 [ 0, %3 ], [ %26, %25 ]
	ret i32 %28, !dbg !3418
}
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !3419 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3421, metadata !760), !dbg !3424
	%2 = icmp eq i8* %0, null, !dbg !3425
	br i1 %2, label %3, label %6, !dbg !3427
	%4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3428, !tbaa !768
	%5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !3430
	tail call void @abort() #14, !dbg !3431
	unreachable, !dbg !3431
	%7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !3432
	tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3422, metadata !760), !dbg !3433
	%8 = icmp ne i8* %7, null, !dbg !3434
	%9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3435
	%10 = select i1 %8, i8* %9, i8* %0, !dbg !3437
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3423, metadata !760), !dbg !3438
	%11 = ptrtoint i8* %10 to i64, !dbg !3439
	%12 = ptrtoint i8* %0 to i64, !dbg !3439
	%13 = sub i64 %11, %12, !dbg !3439
	%14 = icmp sgt i64 %13, 6, !dbg !3441
	br i1 %14, label %15, label %24, !dbg !3442
	%16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !3443
	%17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #13, !dbg !3443
	%18 = icmp eq i32 %17, 0, !dbg !3445
	br i1 %18, label %19, label %24, !dbg !3446
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3421, metadata !760), !dbg !3424
	%20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #13, !dbg !3447
	%21 = icmp eq i32 %20, 0, !dbg !3450
	br i1 %21, label %22, label %24, !dbg !3451
	%23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !3452
	tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3421, metadata !760), !dbg !3424
	store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !3454, !tbaa !768
	br label %24, !dbg !3455
	%25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
	tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !3421, metadata !760), !dbg !3424
	store i8* %25, i8** @program_name, align 8, !dbg !3456, !tbaa !768
	store i8* %25, i8** @program_invocation_name, align 8, !dbg !3457, !tbaa !768
	ret void, !dbg !3458
}
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11
declare void @abort() local_unnamed_addr #5
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !3459 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3464, metadata !760), !dbg !3467
	%2 = tail call i32* @__errno_location() #1, !dbg !3468
	%3 = load i32, i32* %2, align 4, !dbg !3468, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3465, metadata !760), !dbg !3469
	%4 = icmp ne %struct.quoting_options* %0, null, !dbg !3470
	%5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3471
	%6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !3471
	%7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !3473
	%8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !3473
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !3466, metadata !760), !dbg !3474
	store i32 %3, i32* %2, align 4, !dbg !3475, !tbaa !937
	ret %struct.quoting_options* %8, !dbg !3476
}
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !3477 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3483, metadata !760), !dbg !3484
	%2 = icmp ne %struct.quoting_options* %0, null, !dbg !3485
	%3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3485
	%4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3486
	%5 = load i32, i32* %4, align 8, !dbg !3486, !tbaa !3488
	ret i32 %5, !dbg !3490
}
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !3491 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3495, metadata !760), !dbg !3497
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3496, metadata !760), !dbg !3498
	%3 = icmp ne %struct.quoting_options* %0, null, !dbg !3499
	%4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3499
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3500
	store i32 %1, i32* %5, align 8, !dbg !3502, !tbaa !3488
	ret void, !dbg !3503
}
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !3504 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3508, metadata !760), !dbg !3516
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3509, metadata !760), !dbg !3517
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3510, metadata !760), !dbg !3518
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3511, metadata !760), !dbg !3519
	%4 = icmp ne %struct.quoting_options* %0, null, !dbg !3520
	%5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3520
	%6 = lshr i8 %1, 5, !dbg !3521
	%7 = zext i8 %6 to i64, !dbg !3521
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3523
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3512, metadata !760), !dbg !3524
	%9 = and i8 %1, 31, !dbg !3525
	%10 = zext i8 %9 to i32, !dbg !3526
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3514, metadata !760), !dbg !3527
	%11 = load i32, i32* %8, align 4, !dbg !3528, !tbaa !937
	%12 = lshr i32 %11, %10, !dbg !3529
	%13 = and i32 %12, 1, !dbg !3530
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3515, metadata !760), !dbg !3531
	%14 = and i32 %2, 1, !dbg !3532
	%15 = xor i32 %13, %14, !dbg !3533
	%16 = shl i32 %15, %10, !dbg !3534
	%17 = xor i32 %16, %11, !dbg !3535
	store i32 %17, i32* %8, align 4, !dbg !3535, !tbaa !937
	ret i32 %13, !dbg !3536
}
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !3537 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3541, metadata !760), !dbg !3544
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3542, metadata !760), !dbg !3545
	%3 = icmp eq %struct.quoting_options* %0, null, !dbg !3546
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3541, metadata !760), !dbg !3544
	%4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3548
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3541, metadata !760), !dbg !3544
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3549
	%6 = load i32, i32* %5, align 4, !dbg !3549, !tbaa !3550
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3543, metadata !760), !dbg !3551
	store i32 %1, i32* %5, align 4, !dbg !3552, !tbaa !3550
	ret i32 %6, !dbg !3553
}
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !3554 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3558, metadata !760), !dbg !3561
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3559, metadata !760), !dbg !3562
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3560, metadata !760), !dbg !3563
	%4 = icmp eq %struct.quoting_options* %0, null, !dbg !3564
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3558, metadata !760), !dbg !3561
	%5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3566
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3558, metadata !760), !dbg !3561
	%6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3567
	store i32 10, i32* %6, align 8, !dbg !3568, !tbaa !3488
	%7 = icmp ne i8* %1, null, !dbg !3569
	%8 = icmp ne i8* %2, null, !dbg !3571
	%9 = and i1 %7, %8, !dbg !3573
	br i1 %9, label %11, label %10, !dbg !3573
	tail call void @abort() #14, !dbg !3574
	unreachable, !dbg !3574
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3575
	store i8* %1, i8** %12, align 8, !dbg !3576, !tbaa !3577
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3578
	store i8* %2, i8** %13, align 8, !dbg !3579, !tbaa !3580
	ret void, !dbg !3581
}
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !3582 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3586, metadata !760), !dbg !3594
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3587, metadata !760), !dbg !3595
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3588, metadata !760), !dbg !3596
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3589, metadata !760), !dbg !3597
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3590, metadata !760), !dbg !3598
	%6 = icmp ne %struct.quoting_options* %4, null, !dbg !3599
	%7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !3599
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !3591, metadata !760), !dbg !3600
	%8 = tail call i32* @__errno_location() #1, !dbg !3601
	%9 = load i32, i32* %8, align 4, !dbg !3601, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3592, metadata !760), !dbg !3602
	%10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3603
	%11 = load i32, i32* %10, align 8, !dbg !3603, !tbaa !3488
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3604
	%13 = load i32, i32* %12, align 4, !dbg !3604, !tbaa !3550
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3605
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3606
	%16 = load i8*, i8** %15, align 8, !dbg !3606, !tbaa !3577
	%17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3607
	%18 = load i8*, i8** %17, align 8, !dbg !3607, !tbaa !3580
	%19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !3608
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3593, metadata !760), !dbg !3609
	store i32 %9, i32* %8, align 4, !dbg !3610, !tbaa !937
	ret i64 %19, !dbg !3611
}
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !3612 {
	%10 = alloca i64, align 8
	%11 = bitcast i64* %10 to %struct.__mbstate_t*
	%12 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3618, metadata !760), !dbg !3681
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3619, metadata !760), !dbg !3682
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3620, metadata !760), !dbg !3683
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3621, metadata !760), !dbg !3684
	tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3622, metadata !760), !dbg !3685
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3623, metadata !760), !dbg !3686
	tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !3624, metadata !760), !dbg !3687
	tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3625, metadata !760), !dbg !3688
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3626, metadata !760), !dbg !3689
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3628, metadata !760), !dbg !3690
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3629, metadata !760), !dbg !3691
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3630, metadata !760), !dbg !3692
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3631, metadata !760), !dbg !3693
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3632, metadata !760), !dbg !3694
	%13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !3695
	%14 = icmp eq i64 %13, 1, !dbg !3696
	%15 = lshr i32 %5, 1, !dbg !3697
	%16 = trunc i32 %15 to i8, !dbg !3697
	%17 = and i8 %16, 1, !dbg !3697
	tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3634, metadata !760), !dbg !3697
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3635, metadata !760), !dbg !3698
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3636, metadata !760), !dbg !3699
	tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3637, metadata !760), !dbg !3700
	%18 = bitcast i64* %10 to i8*
	%19 = bitcast i32* %12 to i8*
	%20 = icmp eq i32* %6, null
	%21 = icmp ne i32* %6, null
	%22 = and i32 %5, 1
	%23 = icmp eq i32 %22, 0
	%24 = and i32 %5, 4
	%25 = icmp eq i32 %24, 0
	%26 = getelementptr inbounds i8, i8* %2, i64 1
	br label %27, !dbg !3701
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
	call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3619, metadata !760), !dbg !3682
	call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !3637, metadata !760), !dbg !3700
	call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !3636, metadata !760), !dbg !3699
	call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3634, metadata !760), !dbg !3697
	call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3621, metadata !760), !dbg !3684
	call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !3632, metadata !760), !dbg !3694
	call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3631, metadata !760), !dbg !3693
	call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !3630, metadata !760), !dbg !3692
	call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !3629, metadata !760), !dbg !3691
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !3626, metadata !760), !dbg !3689
	call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3625, metadata !760), !dbg !3688
	call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !3622, metadata !760), !dbg !3685
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
	], !dbg !3702
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3622, metadata !760), !dbg !3685
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3634, metadata !760), !dbg !3697
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3634, metadata !760), !dbg !3697
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3622, metadata !760), !dbg !3685
	br label %95, !dbg !3703
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3634, metadata !760), !dbg !3697
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3622, metadata !760), !dbg !3685
	%43 = and i8 %36, 1, !dbg !3705
	%44 = icmp eq i8 %43, 0, !dbg !3705
	br i1 %44, label %45, label %95, !dbg !3703
	%46 = icmp eq i64 %40, 0, !dbg !3707
	br i1 %46, label %95, label %47, !dbg !3711
	store i8 34, i8* %0, align 1, !dbg !3713, !tbaa !959
	br label %95, !dbg !3713
	%49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %28), !dbg !3715
	call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3625, metadata !760), !dbg !3688
	%50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %28), !dbg !3719
	call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3626, metadata !760), !dbg !3689
	br label %51, !dbg !3720
	%52 = phi i8* [ %49, %48 ], [ %29, %27 ]
	%53 = phi i8* [ %50, %48 ], [ %30, %27 ]
	call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3626, metadata !760), !dbg !3689
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3625, metadata !760), !dbg !3688
	%54 = and i8 %36, 1, !dbg !3721
	%55 = icmp eq i8 %54, 0, !dbg !3721
	br i1 %55, label %56, label %73, !dbg !3723
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3630, metadata !760), !dbg !3692
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3628, metadata !760), !dbg !3690
	%57 = load i8, i8* %52, align 1, !dbg !3724, !tbaa !959
	%58 = icmp eq i8 %57, 0, !dbg !3728
	br i1 %58, label %73, label %59, !dbg !3728
	br label %60, !dbg !3730
	%61 = phi i8 [ %70, %67 ], [ %57, %59 ]
	%62 = phi i8* [ %69, %67 ], [ %52, %59 ]
	%63 = phi i64 [ %68, %67 ], [ 0, %59 ]
	%64 = icmp ult i64 %63, %40, !dbg !3730
	br i1 %64, label %65, label %67, !dbg !3734
	%66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3736
	store i8 %61, i8* %66, align 1, !dbg !3736, !tbaa !959
	br label %67, !dbg !3736
	%68 = add i64 %63, 1, !dbg !3738
	call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3628, metadata !760), !dbg !3690
	%69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3740
	call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3630, metadata !760), !dbg !3692
	call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3630, metadata !760), !dbg !3692
	call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3628, metadata !760), !dbg !3690
	%70 = load i8, i8* %69, align 1, !dbg !3724, !tbaa !959
	%71 = icmp eq i8 %70, 0, !dbg !3728
	br i1 %71, label %72, label %60, !dbg !3728, !llvm.loop !3742
	br label %73, !dbg !3690
	%74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
	call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3632, metadata !760), !dbg !3694
	call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3630, metadata !760), !dbg !3692
	%75 = call i64 @strlen(i8* %53) #13, !dbg !3745
	call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !3631, metadata !760), !dbg !3693
	br label %95, !dbg !3746
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3632, metadata !760), !dbg !3694
	br label %77, !dbg !3747
	%78 = phi i8 [ %34, %27 ], [ 1, %76 ]
	call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !3632, metadata !760), !dbg !3694
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3634, metadata !760), !dbg !3697
	br label %79, !dbg !3748
	%80 = phi i8 [ %34, %27 ], [ %78, %77 ]
	%81 = phi i8 [ %36, %27 ], [ 1, %77 ]
	call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !3634, metadata !760), !dbg !3697
	call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !3632, metadata !760), !dbg !3694
	%82 = and i8 %81, 1, !dbg !3749
	%83 = icmp eq i8 %82, 0, !dbg !3749
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3632, metadata !760), !dbg !3694
	%84 = select i1 %83, i8 1, i8 %80, !dbg !3751
	br label %85, !dbg !3751
	%86 = phi i8 [ %34, %27 ], [ %84, %79 ]
	%87 = phi i8 [ %36, %27 ], [ %81, %79 ]
	call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !3634, metadata !760), !dbg !3697
	call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !3632, metadata !760), !dbg !3694
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3622, metadata !760), !dbg !3685
	%88 = and i8 %87, 1, !dbg !3752
	%89 = icmp eq i8 %88, 0, !dbg !3752
	br i1 %89, label %90, label %95, !dbg !3754
	%91 = icmp eq i64 %40, 0, !dbg !3755
	br i1 %91, label %95, label %92, !dbg !3759
	store i8 39, i8* %0, align 1, !dbg !3761, !tbaa !959
	br label %95, !dbg !3761
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3634, metadata !760), !dbg !3697
	br label %95, !dbg !3763
	call void @abort() #14, !dbg !3764
	unreachable, !dbg !3764
	%96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
	%97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
	%98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
	%99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
	%100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ]
	%101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
	%102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
	%103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
	call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !3634, metadata !760), !dbg !3697
	call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !3632, metadata !760), !dbg !3694
	call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !3631, metadata !760), !dbg !3693
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3630, metadata !760), !dbg !3692
	call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3626, metadata !760), !dbg !3689
	call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3625, metadata !760), !dbg !3688
	call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !3622, metadata !760), !dbg !3685
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3627, metadata !760), !dbg !3765
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
	br label %123, !dbg !3766
	%124 = phi i64 [ 0, %95 ], [ %596, %587 ]
	%125 = phi i64 [ %99, %95 ], [ %589, %587 ]
	%126 = phi i64 [ %31, %95 ], [ %590, %587 ]
	%127 = phi i64 [ %35, %95 ], [ %591, %587 ]
	%128 = phi i8 [ %37, %95 ], [ %592, %587 ]
	%129 = phi i8 [ %38, %95 ], [ %593, %587 ]
	%130 = phi i8 [ %39, %95 ], [ %594, %587 ]
	%131 = phi i64 [ %40, %95 ], [ %595, %587 ]
	call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3619, metadata !760), !dbg !3682
	call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !3637, metadata !760), !dbg !3700
	call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !3636, metadata !760), !dbg !3699
	call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !3621, metadata !760), !dbg !3684
	call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !3629, metadata !760), !dbg !3691
	call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !3627, metadata !760), !dbg !3765
	%132 = icmp eq i64 %127, -1, !dbg !3767
	br i1 %132, label %135, label %133, !dbg !3769
	%134 = icmp eq i64 %124, %127, !dbg !3770
	br i1 %134, label %597, label %139, !dbg !3772
	%136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3774
	%137 = load i8, i8* %136, align 1, !dbg !3774, !tbaa !959
	%138 = icmp eq i8 %137, 0, !dbg !3776
	br i1 %138, label %597, label %139, !dbg !3772
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3643, metadata !760), !dbg !3777
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3644, metadata !760), !dbg !3778
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3645, metadata !760), !dbg !3779
	br i1 %109, label %140, label %155, !dbg !3780
	%141 = add i64 %124, %101, !dbg !3782
	%142 = and i1 %110, %132, !dbg !3784
	br i1 %142, label %143, label %145, !dbg !3784
	%144 = call i64 @strlen(i8* %2) #13, !dbg !3785
	call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !3621, metadata !760), !dbg !3684
	br label %145, !dbg !3786
	%146 = phi i64 [ %144, %143 ], [ %127, %140 ]
	call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !3621, metadata !760), !dbg !3684
	%147 = icmp ugt i64 %141, %146, !dbg !3788
	br i1 %147, label %155, label %148, !dbg !3790
	%149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3791
	%150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !3792
	%151 = icmp ne i32 %150, 0, !dbg !3793
	%152 = or i1 %151, %112, !dbg !3793
	%153 = xor i1 %151, true, !dbg !3793
	%154 = zext i1 %153 to i8, !dbg !3793
	br i1 %152, label %155, label %644, !dbg !3793
	%156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
	%157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
	call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3643, metadata !760), !dbg !3777
	call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !3621, metadata !760), !dbg !3684
	%158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3795
	%159 = load i8, i8* %158, align 1, !dbg !3795, !tbaa !959
	call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3638, metadata !760), !dbg !3796
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
	], !dbg !3797
	br i1 %105, label %161, label %209, !dbg !3798
	br i1 %112, label %162, label %644, !dbg !3799
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3644, metadata !760), !dbg !3778
	%163 = and i8 %128, 1, !dbg !3804
	%164 = icmp eq i8 %163, 0, !dbg !3804
	%165 = and i1 %114, %164, !dbg !3807
	br i1 %165, label %166, label %182, !dbg !3807
	%167 = icmp ult i64 %125, %131, !dbg !3809
	br i1 %167, label %168, label %170, !dbg !3814
	%169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3816
	store i8 39, i8* %169, align 1, !dbg !3816, !tbaa !959
	br label %170, !dbg !3816
	%171 = add i64 %125, 1, !dbg !3818
	call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !3628, metadata !760), !dbg !3690
	%172 = icmp ult i64 %171, %131, !dbg !3820
	br i1 %172, label %173, label %175, !dbg !3824
	%174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3826
	store i8 36, i8* %174, align 1, !dbg !3826, !tbaa !959
	br label %175, !dbg !3826
	%176 = add i64 %125, 2, !dbg !3828
	call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !3628, metadata !760), !dbg !3690
	%177 = icmp ult i64 %176, %131, !dbg !3830
	br i1 %177, label %178, label %180, !dbg !3834
	%179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3836
	store i8 39, i8* %179, align 1, !dbg !3836, !tbaa !959
	br label %180, !dbg !3836
	%181 = add i64 %125, 3, !dbg !3838
	call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3635, metadata !760), !dbg !3698
	br label %182, !dbg !3840
	%183 = phi i64 [ %181, %180 ], [ %125, %162 ]
	%184 = phi i8 [ 1, %180 ], [ %128, %162 ]
	call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3628, metadata !760), !dbg !3690
	%185 = icmp ult i64 %183, %131, !dbg !3842
	br i1 %185, label %186, label %188, !dbg !3846
	%187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3848
	store i8 92, i8* %187, align 1, !dbg !3848, !tbaa !959
	br label %188, !dbg !3848
	%189 = add i64 %183, 1, !dbg !3850
	call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !3628, metadata !760), !dbg !3690
	br i1 %106, label %190, label %476, !dbg !3852
	%191 = add i64 %124, 1, !dbg !3854
	%192 = icmp ult i64 %191, %156, !dbg !3856
	br i1 %192, label %193, label %476, !dbg !3857
	%194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3858
	%195 = load i8, i8* %194, align 1, !dbg !3858, !tbaa !959
	%196 = add i8 %195, -48, !dbg !3860
	%197 = icmp ult i8 %196, 10, !dbg !3860
	br i1 %197, label %198, label %476, !dbg !3860
	%199 = icmp ult i64 %189, %131, !dbg !3861
	br i1 %199, label %200, label %202, !dbg !3866
	%201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3868
	store i8 48, i8* %201, align 1, !dbg !3868, !tbaa !959
	br label %202, !dbg !3868
	%203 = add i64 %183, 2, !dbg !3870
	call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !3628, metadata !760), !dbg !3690
	%204 = icmp ult i64 %203, %131, !dbg !3872
	br i1 %204, label %205, label %207, !dbg !3876
	%206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3878
	store i8 48, i8* %206, align 1, !dbg !3878, !tbaa !959
	br label %207, !dbg !3878
	%208 = add i64 %183, 3, !dbg !3880
	call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !3628, metadata !760), !dbg !3690
	br label %476, !dbg !3882
	br i1 %23, label %476, label %587, !dbg !3883
	switch i32 %96, label %476 [
		i32 2, label %211
		i32 5, label %212
	], !dbg !3884
	br i1 %112, label %476, label %644, !dbg !3885
	br i1 %25, label %476, label %213, !dbg !3887
	%214 = add i64 %124, 2, !dbg !3889
	%215 = icmp ult i64 %214, %156, !dbg !3891
	br i1 %215, label %216, label %476, !dbg !3892
	%217 = add i64 %124, 1, !dbg !3893
	%218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3895
	%219 = load i8, i8* %218, align 1, !dbg !3895, !tbaa !959
	%220 = icmp eq i8 %219, 63, !dbg !3896
	br i1 %220, label %221, label %476, !dbg !3897
	%222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3899
	%223 = load i8, i8* %222, align 1, !dbg !3899, !tbaa !959
	%224 = sext i8 %223 to i32, !dbg !3899
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
	], !dbg !3900
	br i1 %112, label %226, label %644, !dbg !3901
	call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !3638, metadata !760), !dbg !3796
	call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !3627, metadata !760), !dbg !3765
	%227 = icmp ult i64 %125, %131, !dbg !3903
	br i1 %227, label %228, label %230, !dbg !3907
	%229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3909
	store i8 63, i8* %229, align 1, !dbg !3909, !tbaa !959
	br label %230, !dbg !3909
	%231 = add i64 %125, 1, !dbg !3911
	call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !3628, metadata !760), !dbg !3690
	%232 = icmp ult i64 %231, %131, !dbg !3913
	br i1 %232, label %233, label %235, !dbg !3917
	%234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3919
	store i8 34, i8* %234, align 1, !dbg !3919, !tbaa !959
	br label %235, !dbg !3919
	%236 = add i64 %125, 2, !dbg !3921
	call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !3628, metadata !760), !dbg !3690
	%237 = icmp ult i64 %236, %131, !dbg !3923
	br i1 %237, label %238, label %240, !dbg !3927
	%239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3929
	store i8 34, i8* %239, align 1, !dbg !3929, !tbaa !959
	br label %240, !dbg !3929
	%241 = add i64 %125, 3, !dbg !3931
	call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !3628, metadata !760), !dbg !3690
	%242 = icmp ult i64 %241, %131, !dbg !3933
	br i1 %242, label %243, label %245, !dbg !3937
	%244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3939
	store i8 63, i8* %244, align 1, !dbg !3939, !tbaa !959
	br label %245, !dbg !3939
	%246 = add i64 %125, 4, !dbg !3941
	call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !3628, metadata !760), !dbg !3690
	br label %476, !dbg !3943
	call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !3642, metadata !760), !dbg !3944
	br label %257, !dbg !3945
	call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !3642, metadata !760), !dbg !3944
	br label %257, !dbg !3946
	call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !3642, metadata !760), !dbg !3944
	br label %255, !dbg !3947
	call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !3642, metadata !760), !dbg !3944
	br label %255, !dbg !3948
	call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !3642, metadata !760), !dbg !3944
	br label %257, !dbg !3949
	call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3642, metadata !760), !dbg !3944
	br i1 %114, label %253, label %254, !dbg !3950
	br i1 %112, label %542, label %644, !dbg !3951
	br i1 %122, label %542, label %255, !dbg !3954
	%256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
	call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !3642, metadata !760), !dbg !3944
	br i1 %118, label %257, label %644, !dbg !3956
	%258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
	call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !3642, metadata !760), !dbg !3944
	br i1 %105, label %503, label %476, !dbg !3958
	%260 = icmp eq i64 %156, -1, !dbg !3959
	br i1 %260, label %261, label %266, !dbg !3961
	%262 = load i8, i8* %26, align 1, !dbg !3962, !tbaa !959
	%263 = icmp ne i8 %262, 0, !dbg !3964
	%264 = icmp ne i64 %124, 0, !dbg !3965
	%265 = or i1 %264, %263, !dbg !3967
	br i1 %265, label %476, label %272, !dbg !3967
	%267 = icmp ne i64 %156, 1, !dbg !3968
	%268 = icmp ne i64 %124, 0, !dbg !3965
	%269 = or i1 %268, %267, !dbg !3970
	br i1 %269, label %476, label %272, !dbg !3970
	%271 = icmp eq i64 %124, 0, !dbg !3965
	br i1 %271, label %272, label %476, !dbg !3972
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3645, metadata !760), !dbg !3779
	br label %273, !dbg !3973
	%274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
	call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !3645, metadata !760), !dbg !3779
	br i1 %118, label %476, label %644, !dbg !3974
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3636, metadata !760), !dbg !3699
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3645, metadata !760), !dbg !3779
	br i1 %114, label %276, label %476, !dbg !3976
	br i1 %112, label %277, label %644, !dbg !3977
	%278 = icmp eq i64 %131, 0, !dbg !3980
	%279 = icmp ne i64 %126, 0, !dbg !3982
	%280 = or i1 %279, %278, !dbg !3984
	call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3629, metadata !760), !dbg !3691
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3619, metadata !760), !dbg !3682
	%281 = select i1 %280, i64 %126, i64 %131, !dbg !3984
	%282 = select i1 %280, i64 %131, i64 0, !dbg !3984
	call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !3619, metadata !760), !dbg !3682
	call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !3629, metadata !760), !dbg !3691
	%283 = icmp ult i64 %125, %282, !dbg !3985
	br i1 %283, label %284, label %286, !dbg !3989
	%285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3991
	store i8 39, i8* %285, align 1, !dbg !3991, !tbaa !959
	br label %286, !dbg !3991
	%287 = add i64 %125, 1, !dbg !3993
	call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !3628, metadata !760), !dbg !3690
	%288 = icmp ult i64 %287, %282, !dbg !3995
	br i1 %288, label %289, label %291, !dbg !3999
	%290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !4001
	store i8 92, i8* %290, align 1, !dbg !4001, !tbaa !959
	br label %291, !dbg !4001
	%292 = add i64 %125, 2, !dbg !4003
	call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !3628, metadata !760), !dbg !3690
	%293 = icmp ult i64 %292, %282, !dbg !4005
	br i1 %293, label %294, label %296, !dbg !4009
	%295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !4011
	store i8 39, i8* %295, align 1, !dbg !4011, !tbaa !959
	br label %296, !dbg !4011
	%297 = add i64 %125, 3, !dbg !4013
	call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3635, metadata !760), !dbg !3698
	br label %476, !dbg !4015
	br i1 %14, label %299, label %308, !dbg !4016
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3646, metadata !760), !dbg !4017
	%300 = tail call i16** @__ctype_b_loc() #1, !dbg !4018
	%301 = load i16*, i16** %300, align 8, !dbg !4018, !tbaa !768
	%302 = zext i8 %159 to i64, !dbg !4018
	%303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !4018
	%304 = load i16, i16* %303, align 2, !dbg !4018, !tbaa !2391
	%305 = lshr i16 %304, 14, !dbg !4020
	%306 = trunc i16 %305 to i8, !dbg !4020
	%307 = and i8 %306, 1, !dbg !4020
	call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !3649, metadata !760), !dbg !4021
	br label %368, !dbg !4022
	call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !4023
	store i64 0, i64* %10, align 8, !dbg !4024
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3646, metadata !760), !dbg !4017
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3649, metadata !760), !dbg !4021
	%309 = icmp eq i64 %156, -1, !dbg !4025
	br i1 %309, label %310, label %312, !dbg !4027, !llvm.loop !4028
	%311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !4031
	call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !3621, metadata !760), !dbg !3684
	br label %312, !dbg !4032, !llvm.loop !4028
	%313 = phi i64 [ %156, %308 ], [ %311, %310 ]
	br label %314, !dbg !4021
	%315 = phi i64 [ %360, %355 ], [ 0, %312 ]
	%316 = phi i8 [ %359, %355 ], [ 1, %312 ]
	call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !3649, metadata !760), !dbg !4021
	call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3646, metadata !760), !dbg !4017
	call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !3621, metadata !760), !dbg !3684
	call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !4033
	%317 = add i64 %315, %124, !dbg !4034
	%318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !4035
	%319 = sub i64 %313, %317, !dbg !4036
	call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3650, metadata !972), !dbg !4037
	call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !3667, metadata !972), !dbg !4038
	%320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !4039
	call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !3670, metadata !760), !dbg !4040
	switch i64 %320, label %334 [
		i64 0, label %350
		i64 -1, label %347
		i64 -2, label %321
	], !dbg !4041
	call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3646, metadata !760), !dbg !4017
	%322 = icmp ugt i64 %313, %317, !dbg !4042
	br i1 %322, label %323, label %351, !dbg !4045
	br label %324, !dbg !4046
	%325 = phi i64 [ %332, %330 ], [ %317, %323 ]
	%326 = phi i64 [ %331, %330 ], [ %315, %323 ]
	%327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !4046
	%328 = load i8, i8* %327, align 1, !dbg !4046, !tbaa !959
	%329 = icmp eq i8 %328, 0, !dbg !4048
	br i1 %329, label %348, label %330, !dbg !4049
	%331 = add i64 %326, 1, !dbg !4051
	call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3646, metadata !760), !dbg !4017
	call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3646, metadata !760), !dbg !4017
	%332 = add i64 %331, %124, !dbg !4052
	%333 = icmp ult i64 %332, %313, !dbg !4042
	br i1 %333, label %324, label %348, !dbg !4045, !llvm.loop !4053
	%335 = icmp ugt i64 %320, 1, !dbg !4055
	%336 = and i1 %116, %335, !dbg !4059
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3671, metadata !760), !dbg !4060
	br i1 %336, label %337, label %355, !dbg !4059
	br label %338, !dbg !4061
	%339 = phi i64 [ %345, %344 ], [ 1, %337 ]
	%340 = add i64 %339, %317, !dbg !4061
	%341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !4062
	%342 = load i8, i8* %341, align 1, !dbg !4062, !tbaa !959
	%343 = sext i8 %342 to i32, !dbg !4062
	switch i32 %343, label %344 [
		i32 91, label %367
		i32 92, label %367
		i32 94, label %367
		i32 96, label %367
		i32 124, label %367
	], !dbg !4063
	%345 = add nuw i64 %339, 1, !dbg !4064
	call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3671, metadata !760), !dbg !4060
	call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3671, metadata !760), !dbg !4060
	%346 = icmp ult i64 %345, %320, !dbg !4055
	br i1 %346, label %338, label %354, !dbg !4066, !llvm.loop !4068
	br label %351, !dbg !4021
	%349 = phi i64 [ %331, %330 ], [ %326, %324 ]
	br label %351, !dbg !4021
	br label %351, !dbg !4021
	%352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
	%353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3649, metadata !760), !dbg !4021
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3646, metadata !760), !dbg !4017
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !4071
	br label %364
	br label %355, !dbg !4072
	%356 = load i32, i32* %12, align 4, !dbg !4072, !tbaa !937
	call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !3667, metadata !760), !dbg !4038
	%357 = call i32 @iswprint(i32 %356) #11, !dbg !4074
	%358 = icmp eq i32 %357, 0, !dbg !4074
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3649, metadata !760), !dbg !4021
	%359 = select i1 %358, i8 0, i8 %316, !dbg !4075
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3649, metadata !760), !dbg !4021
	%360 = add i64 %320, %315, !dbg !4076
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3646, metadata !760), !dbg !4017
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3649, metadata !760), !dbg !4021
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3646, metadata !760), !dbg !4017
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !4071
	call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3650, metadata !972), !dbg !4037
	%361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !4077
	%362 = icmp eq i32 %361, 0, !dbg !4078
	br i1 %362, label %314, label %363, !dbg !4079, !llvm.loop !4028
	br label %364, !dbg !4081
	%365 = phi i8 [ %353, %351 ], [ %359, %363 ]
	%366 = phi i64 [ %352, %351 ], [ %360, %363 ]
	call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !4081
	br label %368
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3649, metadata !760), !dbg !4021
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3646, metadata !760), !dbg !4017
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !4071
	call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !4081
	br label %649
	%369 = phi i64 [ %156, %299 ], [ %313, %364 ]
	%370 = phi i64 [ 1, %299 ], [ %366, %364 ]
	%371 = phi i8 [ %307, %299 ], [ %365, %364 ]
	call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !3649, metadata !760), !dbg !4021
	call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !3646, metadata !760), !dbg !4017
	call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !3621, metadata !760), !dbg !3684
	%372 = and i8 %371, 1, !dbg !4082
	%373 = icmp ne i8 %372, 0, !dbg !4082
	call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !3645, metadata !760), !dbg !3779
	%374 = icmp ult i64 %370, 2, !dbg !4083
	%375 = or i1 %373, %113, !dbg !4084
	%376 = and i1 %374, %375, !dbg !4086
	br i1 %376, label %476, label %377, !dbg !4086
	%378 = add i64 %370, %124, !dbg !4087
	call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !3678, metadata !760), !dbg !4088
	br label %379, !dbg !4089
	%380 = phi i64 [ %124, %377 ], [ %447, %472 ]
	%381 = phi i64 [ %125, %377 ], [ %473, %472 ]
	%382 = phi i8 [ %128, %377 ], [ %468, %472 ]
	%383 = phi i8 [ %159, %377 ], [ %475, %472 ]
	%384 = phi i8 [ %157, %377 ], [ %445, %472 ]
	%385 = phi i8 [ 0, %377 ], [ %446, %472 ]
	call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !3644, metadata !760), !dbg !3778
	call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !3643, metadata !760), !dbg !3777
	call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !3638, metadata !760), !dbg !3796
	call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !3627, metadata !760), !dbg !3765
	br i1 %375, label %432, label %386, !dbg !4090
	br i1 %112, label %387, label %643, !dbg !4095
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3644, metadata !760), !dbg !3778
	%388 = and i8 %382, 1, !dbg !4099
	%389 = icmp eq i8 %388, 0, !dbg !4099
	%390 = and i1 %114, %389, !dbg !4102
	br i1 %390, label %391, label %407, !dbg !4102
	%392 = icmp ult i64 %381, %131, !dbg !4104
	br i1 %392, label %393, label %395, !dbg !4109
	%394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !4111
	store i8 39, i8* %394, align 1, !dbg !4111, !tbaa !959
	br label %395, !dbg !4111
	%396 = add i64 %381, 1, !dbg !4113
	call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !3628, metadata !760), !dbg !3690
	%397 = icmp ult i64 %396, %131, !dbg !4115
	br i1 %397, label %398, label %400, !dbg !4119
	%399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !4121
	store i8 36, i8* %399, align 1, !dbg !4121, !tbaa !959
	br label %400, !dbg !4121
	%401 = add i64 %381, 2, !dbg !4123
	call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !3628, metadata !760), !dbg !3690
	%402 = icmp ult i64 %401, %131, !dbg !4125
	br i1 %402, label %403, label %405, !dbg !4129
	%404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !4131
	store i8 39, i8* %404, align 1, !dbg !4131, !tbaa !959
	br label %405, !dbg !4131
	%406 = add i64 %381, 3, !dbg !4133
	call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3635, metadata !760), !dbg !3698
	br label %407, !dbg !4135
	%408 = phi i64 [ %406, %405 ], [ %381, %387 ]
	%409 = phi i8 [ 1, %405 ], [ %382, %387 ]
	call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !3628, metadata !760), !dbg !3690
	%410 = icmp ult i64 %408, %131, !dbg !4137
	br i1 %410, label %411, label %413, !dbg !4141
	%412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !4143
	store i8 92, i8* %412, align 1, !dbg !4143, !tbaa !959
	br label %413, !dbg !4143
	%414 = add i64 %408, 1, !dbg !4145
	call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !3628, metadata !760), !dbg !3690
	%415 = icmp ult i64 %414, %131, !dbg !4147
	br i1 %415, label %416, label %420, !dbg !4151
	%417 = lshr i8 %383, 6, !dbg !4153
	%418 = or i8 %417, 48, !dbg !4153
	%419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !4153
	store i8 %418, i8* %419, align 1, !dbg !4153, !tbaa !959
	br label %420, !dbg !4153
	%421 = add i64 %408, 2, !dbg !4155
	call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !3628, metadata !760), !dbg !3690
	%422 = icmp ult i64 %421, %131, !dbg !4157
	br i1 %422, label %423, label %428, !dbg !4161
	%424 = lshr i8 %383, 3, !dbg !4163
	%425 = and i8 %424, 7, !dbg !4163
	%426 = or i8 %425, 48, !dbg !4163
	%427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !4163
	store i8 %426, i8* %427, align 1, !dbg !4163, !tbaa !959
	br label %428, !dbg !4163
	%429 = add i64 %408, 3, !dbg !4165
	call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !3628, metadata !760), !dbg !3690
	%430 = and i8 %383, 7, !dbg !4167
	%431 = or i8 %430, 48, !dbg !4168
	call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !3638, metadata !760), !dbg !3796
	br label %441, !dbg !4169
	%433 = and i8 %384, 1, !dbg !4170
	%434 = icmp eq i8 %433, 0, !dbg !4170
	br i1 %434, label %441, label %435, !dbg !4172
	%436 = icmp ult i64 %381, %131, !dbg !4173
	br i1 %436, label %437, label %439, !dbg !4178
	%438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !4180
	store i8 92, i8* %438, align 1, !dbg !4180, !tbaa !959
	br label %439, !dbg !4180
	%440 = add i64 %381, 1, !dbg !4182
	call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3643, metadata !760), !dbg !3777
	br label %441, !dbg !4184
	%442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
	%443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
	%444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
	%445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
	%446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
	call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !3644, metadata !760), !dbg !3778
	call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !3643, metadata !760), !dbg !3777
	call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !3638, metadata !760), !dbg !3796
	call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !3628, metadata !760), !dbg !3690
	%447 = add i64 %380, 1, !dbg !4185
	%448 = icmp ugt i64 %378, %447, !dbg !4187
	br i1 %448, label %449, label %541, !dbg !4188
	%450 = and i8 %443, 1, !dbg !4189
	%451 = icmp ne i8 %450, 0, !dbg !4189
	%452 = and i8 %446, 1, !dbg !4193
	%453 = icmp eq i8 %452, 0, !dbg !4193
	%454 = and i1 %451, %453, !dbg !4189
	br i1 %454, label %455, label %466, !dbg !4189
	%456 = icmp ult i64 %442, %131, !dbg !4195
	br i1 %456, label %457, label %459, !dbg !4200
	%458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !4202
	store i8 39, i8* %458, align 1, !dbg !4202, !tbaa !959
	br label %459, !dbg !4202
	%460 = add i64 %442, 1, !dbg !4204
	call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !3628, metadata !760), !dbg !3690
	%461 = icmp ult i64 %460, %131, !dbg !4206
	br i1 %461, label %462, label %464, !dbg !4210
	%463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !4212
	store i8 39, i8* %463, align 1, !dbg !4212, !tbaa !959
	br label %464, !dbg !4212
	%465 = add i64 %442, 2, !dbg !4214
	call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3635, metadata !760), !dbg !3698
	br label %466, !dbg !4216
	%467 = phi i64 [ %465, %464 ], [ %442, %449 ]
	%468 = phi i8 [ 0, %464 ], [ %443, %449 ]
	call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !3628, metadata !760), !dbg !3690
	%469 = icmp ult i64 %467, %131, !dbg !4218
	br i1 %469, label %470, label %472, !dbg !4222
	%471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !4224
	store i8 %444, i8* %471, align 1, !dbg !4224, !tbaa !959
	br label %472, !dbg !4224
	%473 = add i64 %467, 1, !dbg !4226
	call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !3627, metadata !760), !dbg !3765
	%474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !4228
	%475 = load i8, i8* %474, align 1, !dbg !4228, !tbaa !959
	call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !3638, metadata !760), !dbg !3796
	br label %379, !dbg !4229, !llvm.loop !4231
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
	call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !3619, metadata !760), !dbg !3682
	call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !3645, metadata !760), !dbg !3779
	call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !3644, metadata !760), !dbg !3778
	call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3643, metadata !760), !dbg !3777
	call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !3638, metadata !760), !dbg !3796
	call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !3636, metadata !760), !dbg !3699
	call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !3621, metadata !760), !dbg !3684
	call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !3629, metadata !760), !dbg !3691
	call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !3627, metadata !760), !dbg !3765
	br i1 %107, label %488, label %487, !dbg !4234
	br i1 %117, label %489, label %501, !dbg !4236
	br i1 %20, label %501, label %489, !dbg !4237
	%490 = lshr i8 %483, 5, !dbg !4238
	%491 = zext i8 %490 to i64, !dbg !4238
	%492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !4240
	%493 = load i32, i32* %492, align 4, !dbg !4240, !tbaa !937
	%494 = and i8 %483, 31, !dbg !4241
	%495 = zext i8 %494 to i32, !dbg !4242
	%496 = shl i32 1, %495, !dbg !4243
	%497 = and i32 %493, %496, !dbg !4243
	%498 = icmp eq i32 %497, 0, !dbg !4243
	%499 = icmp eq i8 %157, 0, !dbg !4244
	%500 = and i1 %499, %498, !dbg !4245
	br i1 %500, label %542, label %503, !dbg !4245
	%502 = icmp eq i8 %157, 0, !dbg !4244
	br i1 %502, label %542, label %503, !dbg !4246
	%504 = phi i64 [ %477, %489 ], [ %477, %501 ], [ %124, %257 ]
	%505 = phi i64 [ %478, %489 ], [ %478, %501 ], [ %125, %257 ]
	%506 = phi i64 [ %479, %489 ], [ %479, %501 ], [ %126, %257 ]
	%507 = phi i64 [ %480, %489 ], [ %480, %501 ], [ %156, %257 ]
	%508 = phi i8 [ %481, %489 ], [ %481, %501 ], [ %128, %257 ]
	%509 = phi i8 [ %482, %489 ], [ %482, %501 ], [ %129, %257 ]
	%510 = phi i8 [ %483, %489 ], [ %483, %501 ], [ %258, %257 ]
	%511 = phi i8 [ %485, %489 ], [ %485, %501 ], [ 0, %257 ]
	%512 = phi i64 [ %486, %489 ], [ %486, %501 ], [ %131, %257 ]
	call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !3619, metadata !760), !dbg !3682
	call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !3645, metadata !760), !dbg !3779
	call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !3638, metadata !760), !dbg !3796
	call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !3636, metadata !760), !dbg !3699
	call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !3621, metadata !760), !dbg !3684
	call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !3629, metadata !760), !dbg !3691
	call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !3627, metadata !760), !dbg !3765
	br i1 %112, label %513, label %644, !dbg !4248
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3644, metadata !760), !dbg !3778
	%514 = and i8 %508, 1, !dbg !4251
	%515 = icmp eq i8 %514, 0, !dbg !4251
	%516 = and i1 %114, %515, !dbg !4254
	br i1 %516, label %517, label %533, !dbg !4254
	%518 = icmp ult i64 %505, %512, !dbg !4256
	br i1 %518, label %519, label %521, !dbg !4261
	%520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !4263
	store i8 39, i8* %520, align 1, !dbg !4263, !tbaa !959
	br label %521, !dbg !4263
	%522 = add i64 %505, 1, !dbg !4265
	call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !3628, metadata !760), !dbg !3690
	%523 = icmp ult i64 %522, %512, !dbg !4267
	br i1 %523, label %524, label %526, !dbg !4271
	%525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !4273
	store i8 36, i8* %525, align 1, !dbg !4273, !tbaa !959
	br label %526, !dbg !4273
	%527 = add i64 %505, 2, !dbg !4275
	call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !3628, metadata !760), !dbg !3690
	%528 = icmp ult i64 %527, %512, !dbg !4277
	br i1 %528, label %529, label %531, !dbg !4281
	%530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !4283
	store i8 39, i8* %530, align 1, !dbg !4283, !tbaa !959
	br label %531, !dbg !4283
	%532 = add i64 %505, 3, !dbg !4285
	call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3635, metadata !760), !dbg !3698
	br label %533, !dbg !4287
	%534 = phi i64 [ %532, %531 ], [ %505, %513 ]
	%535 = phi i8 [ 1, %531 ], [ %508, %513 ]
	call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !3628, metadata !760), !dbg !3690
	%536 = icmp ult i64 %534, %512, !dbg !4289
	br i1 %536, label %537, label %539, !dbg !4293
	%538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !4295
	store i8 92, i8* %538, align 1, !dbg !4295, !tbaa !959
	br label %539, !dbg !4295
	%540 = add i64 %534, 1, !dbg !4297
	call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3619, metadata !760), !dbg !3682
	call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3645, metadata !760), !dbg !3779
	call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3644, metadata !760), !dbg !3778
	call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3638, metadata !760), !dbg !3796
	call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3636, metadata !760), !dbg !3699
	call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3621, metadata !760), !dbg !3684
	call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3629, metadata !760), !dbg !3691
	call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3627, metadata !760), !dbg !3765
	br label %569, !dbg !4299
	br label %542, !dbg !3682
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
	call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3619, metadata !760), !dbg !3682
	call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3645, metadata !760), !dbg !3779
	call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3644, metadata !760), !dbg !3778
	call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3638, metadata !760), !dbg !3796
	call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3636, metadata !760), !dbg !3699
	call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3621, metadata !760), !dbg !3684
	call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3629, metadata !760), !dbg !3691
	call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3627, metadata !760), !dbg !3765
	%553 = and i8 %547, 1, !dbg !4299
	%554 = icmp ne i8 %553, 0, !dbg !4299
	%555 = and i8 %550, 1, !dbg !4303
	%556 = icmp eq i8 %555, 0, !dbg !4303
	%557 = and i1 %554, %556, !dbg !4299
	br i1 %557, label %558, label %569, !dbg !4299
	%559 = icmp ult i64 %544, %552, !dbg !4305
	br i1 %559, label %560, label %562, !dbg !4310
	%561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !4312
	store i8 39, i8* %561, align 1, !dbg !4312, !tbaa !959
	br label %562, !dbg !4312
	%563 = add i64 %544, 1, !dbg !4314
	call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !3628, metadata !760), !dbg !3690
	%564 = icmp ult i64 %563, %552, !dbg !4316
	br i1 %564, label %565, label %567, !dbg !4320
	%566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !4322
	store i8 39, i8* %566, align 1, !dbg !4322, !tbaa !959
	br label %567, !dbg !4322
	%568 = add i64 %544, 2, !dbg !4324
	call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !3628, metadata !760), !dbg !3690
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3635, metadata !760), !dbg !3698
	br label %569, !dbg !4326
	%570 = phi i64 [ %552, %567 ], [ %552, %542 ], [ %512, %539 ]
	%571 = phi i8 [ %551, %567 ], [ %551, %542 ], [ %511, %539 ]
	%572 = phi i8 [ %549, %567 ], [ %549, %542 ], [ %510, %539 ]
	%573 = phi i8 [ %548, %567 ], [ %548, %542 ], [ %509, %539 ]
	%574 = phi i64 [ %546, %567 ], [ %546, %542 ], [ %507, %539 ]
	%575 = phi i64 [ %545, %567 ], [ %545, %542 ], [ %506, %539 ]
	%576 = phi i64 [ %543, %567 ], [ %543, %542 ], [ %504, %539 ]
	%577 = phi i64 [ %568, %567 ], [ %544, %542 ], [ %540, %539 ]
	%578 = phi i8 [ 0, %567 ], [ %547, %542 ], [ %535, %539 ]
	call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !3635, metadata !760), !dbg !3698
	call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !3628, metadata !760), !dbg !3690
	%579 = icmp ult i64 %577, %570, !dbg !4328
	br i1 %579, label %580, label %582, !dbg !4332
	%581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !4334
	store i8 %572, i8* %581, align 1, !dbg !4334, !tbaa !959
	br label %582, !dbg !4334
	%583 = add i64 %577, 1, !dbg !4336
	call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !3628, metadata !760), !dbg !3690
	%584 = and i8 %571, 1, !dbg !4338
	%585 = icmp eq i8 %584, 0, !dbg !4338
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3637, metadata !760), !dbg !3700
	%586 = select i1 %585, i8 0, i8 %130, !dbg !4340
	call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !3637, metadata !760), !dbg !3700
	br label %587, !dbg !4341
	%588 = phi i64 [ %124, %209 ], [ %576, %582 ]
	%589 = phi i64 [ %125, %209 ], [ %583, %582 ]
	%590 = phi i64 [ %126, %209 ], [ %575, %582 ]
	%591 = phi i64 [ %156, %209 ], [ %574, %582 ]
	%592 = phi i8 [ %128, %209 ], [ %578, %582 ]
	%593 = phi i8 [ %129, %209 ], [ %573, %582 ]
	%594 = phi i8 [ %130, %209 ], [ %586, %582 ]
	%595 = phi i64 [ %131, %209 ], [ %570, %582 ]
	%596 = add i64 %588, 1, !dbg !4342
	call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !3627, metadata !760), !dbg !3765
	br label %123, !dbg !4344, !llvm.loop !4345
	%598 = phi i64 [ %124, %133 ], [ -1, %135 ]
	%599 = icmp eq i64 %125, 0, !dbg !4348
	%600 = and i1 %114, %599, !dbg !4350
	%601 = xor i1 %600, true, !dbg !4350
	%602 = or i1 %112, %601, !dbg !4350
	br i1 %602, label %603, label %648, !dbg !4350
	%604 = and i1 %114, %112, !dbg !4351
	%605 = xor i1 %604, true, !dbg !4351
	%606 = and i8 %129, 1, !dbg !4353
	%607 = icmp eq i8 %606, 0, !dbg !4353
	%608 = or i1 %607, %605, !dbg !4351
	br i1 %608, label %618, label %609, !dbg !4351
	%610 = and i8 %130, 1, !dbg !4355
	%611 = icmp eq i8 %610, 0, !dbg !4355
	br i1 %611, label %614, label %612, !dbg !4358
	%613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !4359
	br label %659, !dbg !4360
	%615 = icmp eq i64 %131, 0, !dbg !4361
	%616 = icmp ne i64 %126, 0, !dbg !4363
	%617 = and i1 %616, %615, !dbg !4365
	br i1 %617, label %27, label %618, !dbg !4365
	%619 = icmp ne i8* %100, null, !dbg !4366
	%620 = and i1 %619, %112, !dbg !4368
	br i1 %620, label %621, label %638, !dbg !4368
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3630, metadata !760), !dbg !3692
	call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3628, metadata !760), !dbg !3690
	%622 = load i8, i8* %100, align 1, !dbg !4369, !tbaa !959
	%623 = icmp eq i8 %622, 0, !dbg !4373
	br i1 %623, label %638, label %624, !dbg !4373
	br label %625, !dbg !4375
	%626 = phi i8 [ %635, %632 ], [ %622, %624 ]
	%627 = phi i8* [ %634, %632 ], [ %100, %624 ]
	%628 = phi i64 [ %633, %632 ], [ %125, %624 ]
	%629 = icmp ult i64 %628, %131, !dbg !4375
	br i1 %629, label %630, label %632, !dbg !4379
	%631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !4381
	store i8 %626, i8* %631, align 1, !dbg !4381, !tbaa !959
	br label %632, !dbg !4381
	%633 = add i64 %628, 1, !dbg !4383
	call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3628, metadata !760), !dbg !3690
	%634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !4385
	call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3630, metadata !760), !dbg !3692
	call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3630, metadata !760), !dbg !3692
	call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3628, metadata !760), !dbg !3690
	%635 = load i8, i8* %634, align 1, !dbg !4369, !tbaa !959
	%636 = icmp eq i8 %635, 0, !dbg !4373
	br i1 %636, label %637, label %625, !dbg !4373, !llvm.loop !4387
	br label %638, !dbg !3690
	%639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
	call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !3628, metadata !760), !dbg !3690
	%640 = icmp ult i64 %639, %131, !dbg !4390
	br i1 %640, label %641, label %659, !dbg !4392
	%642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !4393
	store i8 0, i8* %642, align 1, !dbg !4394, !tbaa !959
	br label %659, !dbg !4393
	br label %649, !dbg !3682
	%645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
	%646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
	%647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
	br label %649, !dbg !3682
	br label %649, !dbg !3682
	%650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
	%651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
	%652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
	call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !3619, metadata !760), !dbg !3682
	call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !3621, metadata !760), !dbg !3684
	%653 = icmp ne i32 %650, 2, !dbg !4395
	%654 = icmp eq i8 %104, 0, !dbg !4397
	%655 = or i1 %653, %654, !dbg !4399
	call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3622, metadata !760), !dbg !3685
	%656 = select i1 %655, i32 %650, i32 4, !dbg !4399
	call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !3622, metadata !760), !dbg !3685
	%657 = and i32 %5, -3, !dbg !4400
	%658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !4401
	br label %659, !dbg !4402
	%660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
	ret i64 %660, !dbg !4403
}
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !4404 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4408, metadata !760), !dbg !4412
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4409, metadata !760), !dbg !4413
	%3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !4414
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4410, metadata !760), !dbg !4415
	%4 = icmp eq i8* %3, %0, !dbg !4416
	br i1 %4, label %5, label %75, !dbg !4418
	%6 = tail call i8* @locale_charset() #11, !dbg !4419
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4411, metadata !760), !dbg !4420
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4421, metadata !760), !dbg !4437
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4435, metadata !760), !dbg !4440
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4436, metadata !760), !dbg !4441
	%7 = load i8, i8* %6, align 1, !tbaa !959
	%8 = sext i8 %7 to i32
	%9 = and i32 %8, -33, !dbg !4442
	switch i32 %9, label %72 [
		i32 85, label %10
		i32 71, label %38
	], !dbg !4442
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4445, metadata !760), !dbg !4459
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4457, metadata !760), !dbg !4463
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4458, metadata !760), !dbg !4464
	%11 = getelementptr inbounds i8, i8* %6, i64 1
	%12 = load i8, i8* %11, align 1, !tbaa !959
	%13 = sext i8 %12 to i32
	%14 = and i32 %13, -33, !dbg !4465
	%15 = icmp eq i32 %14, 84, !dbg !4465
	br i1 %15, label %16, label %72, !dbg !4465
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4468, metadata !760), !dbg !4481
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4479, metadata !760), !dbg !4485
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4480, metadata !760), !dbg !4486
	%17 = getelementptr inbounds i8, i8* %6, i64 2
	%18 = load i8, i8* %17, align 1, !tbaa !959
	%19 = sext i8 %18 to i32
	%20 = and i32 %19, -33, !dbg !4487
	%21 = icmp eq i32 %20, 70, !dbg !4487
	br i1 %21, label %22, label %72, !dbg !4487
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4490, metadata !760), !dbg !4502
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4500, metadata !760), !dbg !4506
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4501, metadata !760), !dbg !4507
	%23 = getelementptr inbounds i8, i8* %6, i64 3
	%24 = load i8, i8* %23, align 1, !tbaa !959
	%25 = icmp eq i8 %24, 45, !dbg !4508
	br i1 %25, label %26, label %72, !dbg !4511
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4513, metadata !760), !dbg !4524
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4522, metadata !760), !dbg !4528
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4523, metadata !760), !dbg !4529
	%27 = getelementptr inbounds i8, i8* %6, i64 4
	%28 = load i8, i8* %27, align 1, !tbaa !959
	%29 = icmp eq i8 %28, 56, !dbg !4530
	br i1 %29, label %30, label %72, !dbg !4533
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4535, metadata !760), !dbg !4545
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4543, metadata !760), !dbg !4549
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4544, metadata !760), !dbg !4550
	%31 = getelementptr inbounds i8, i8* %6, i64 5
	%32 = load i8, i8* %31, align 1, !tbaa !959
	%33 = icmp eq i8 %32, 0, !dbg !4551
	br i1 %33, label %34, label %72, !dbg !4554
	%35 = load i8, i8* %0, align 1, !dbg !4556, !tbaa !959
	%36 = icmp eq i8 %35, 96, !dbg !4557
	%37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !4556
	br label %75, !dbg !4558
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4445, metadata !760), !dbg !4559
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4457, metadata !760), !dbg !4563
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4458, metadata !760), !dbg !4564
	%39 = getelementptr inbounds i8, i8* %6, i64 1
	%40 = load i8, i8* %39, align 1, !tbaa !959
	%41 = sext i8 %40 to i32
	%42 = and i32 %41, -33, !dbg !4565
	%43 = icmp eq i32 %42, 66, !dbg !4565
	br i1 %43, label %44, label %72, !dbg !4565
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4468, metadata !760), !dbg !4566
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4479, metadata !760), !dbg !4568
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4480, metadata !760), !dbg !4569
	%45 = getelementptr inbounds i8, i8* %6, i64 2
	%46 = load i8, i8* %45, align 1, !tbaa !959
	%47 = icmp eq i8 %46, 49, !dbg !4570
	br i1 %47, label %48, label %72, !dbg !4572
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4490, metadata !760), !dbg !4574
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4500, metadata !760), !dbg !4576
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4501, metadata !760), !dbg !4577
	%49 = getelementptr inbounds i8, i8* %6, i64 3
	%50 = load i8, i8* %49, align 1, !tbaa !959
	%51 = icmp eq i8 %50, 56, !dbg !4578
	br i1 %51, label %52, label %72, !dbg !4579
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4513, metadata !760), !dbg !4580
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4522, metadata !760), !dbg !4582
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4523, metadata !760), !dbg !4583
	%53 = getelementptr inbounds i8, i8* %6, i64 4
	%54 = load i8, i8* %53, align 1, !tbaa !959
	%55 = icmp eq i8 %54, 48, !dbg !4584
	br i1 %55, label %56, label %72, !dbg !4585
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4535, metadata !760), !dbg !4586
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4543, metadata !760), !dbg !4588
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4544, metadata !760), !dbg !4589
	%57 = getelementptr inbounds i8, i8* %6, i64 5
	%58 = load i8, i8* %57, align 1, !tbaa !959
	%59 = icmp eq i8 %58, 51, !dbg !4590
	br i1 %59, label %60, label %72, !dbg !4591
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4592, metadata !760), !dbg !4601
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4599, metadata !760), !dbg !4605
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4600, metadata !760), !dbg !4606
	%61 = getelementptr inbounds i8, i8* %6, i64 6
	%62 = load i8, i8* %61, align 1, !tbaa !959
	%63 = icmp eq i8 %62, 48, !dbg !4607
	br i1 %63, label %64, label %72, !dbg !4610
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4612, metadata !760), !dbg !4620
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4618, metadata !760), !dbg !4624
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4619, metadata !760), !dbg !4625
	%65 = getelementptr inbounds i8, i8* %6, i64 7
	%66 = load i8, i8* %65, align 1, !tbaa !959
	%67 = icmp eq i8 %66, 0, !dbg !4626
	br i1 %67, label %68, label %72, !dbg !4629
	%69 = load i8, i8* %0, align 1, !dbg !4630, !tbaa !959
	%70 = icmp eq i8 %69, 96, !dbg !4631
	%71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !4630
	br label %75, !dbg !4632
	%73 = icmp eq i32 %1, 9, !dbg !4633
	%74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !4634
	br label %75, !dbg !4635
	%76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
	ret i8* %76, !dbg !4636
}
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4
declare i32 @iswprint(i32) local_unnamed_addr #2
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4637 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4641, metadata !760), !dbg !4644
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4642, metadata !760), !dbg !4645
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4643, metadata !760), !dbg !4646
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4647, metadata !760) #11, !dbg !4660
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4652, metadata !760) #11, !dbg !4662
	tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !4653, metadata !760) #11, !dbg !4663
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4654, metadata !760) #11, !dbg !4664
	%4 = icmp ne %struct.quoting_options* %2, null, !dbg !4665
	%5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !4665
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4655, metadata !760) #11, !dbg !4666
	%6 = tail call i32* @__errno_location() #1, !dbg !4667
	%7 = load i32, i32* %6, align 4, !dbg !4667, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4656, metadata !760) #11, !dbg !4668
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4669
	%9 = load i32, i32* %8, align 4, !dbg !4669, !tbaa !3550
	%10 = or i32 %9, 1, !dbg !4670
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4657, metadata !760) #11, !dbg !4671
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4672
	%12 = load i32, i32* %11, align 8, !dbg !4672, !tbaa !3488
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !4673
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4674
	%15 = load i8*, i8** %14, align 8, !dbg !4674, !tbaa !3577
	%16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4675
	%17 = load i8*, i8** %16, align 8, !dbg !4675, !tbaa !3580
	%18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !4676
	%19 = add i64 %18, 1, !dbg !4677
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4658, metadata !760) #11, !dbg !4678
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4679, metadata !760) #11, !dbg !4684
	%20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !4686
	tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !4659, metadata !760) #11, !dbg !4687
	%21 = load i32, i32* %11, align 8, !dbg !4688, !tbaa !3488
	%22 = load i8*, i8** %14, align 8, !dbg !4689, !tbaa !3577
	%23 = load i8*, i8** %16, align 8, !dbg !4690, !tbaa !3580
	%24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !4691
	store i32 %7, i32* %6, align 4, !dbg !4692, !tbaa !937
	ret i8* %20, !dbg !4693
}
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4648 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4647, metadata !760), !dbg !4694
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4652, metadata !760), !dbg !4695
	tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !4653, metadata !760), !dbg !4696
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4654, metadata !760), !dbg !4697
	%5 = icmp ne %struct.quoting_options* %3, null, !dbg !4698
	%6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !4698
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4655, metadata !760), !dbg !4699
	%7 = tail call i32* @__errno_location() #1, !dbg !4700
	%8 = load i32, i32* %7, align 4, !dbg !4700, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !4656, metadata !760), !dbg !4701
	%9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4702
	%10 = load i32, i32* %9, align 4, !dbg !4702, !tbaa !3550
	%11 = icmp ne i64* %2, null, !dbg !4703
	%12 = xor i1 %11, true, !dbg !4703
	%13 = zext i1 %12 to i32, !dbg !4703
	%14 = or i32 %10, %13, !dbg !4704
	tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4657, metadata !760), !dbg !4705
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4706
	%16 = load i32, i32* %15, align 8, !dbg !4706, !tbaa !3488
	%17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4707
	%18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4708
	%19 = load i8*, i8** %18, align 8, !dbg !4708, !tbaa !3577
	%20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4709
	%21 = load i8*, i8** %20, align 8, !dbg !4709, !tbaa !3580
	%22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !4710
	%23 = add i64 %22, 1, !dbg !4711
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4658, metadata !760), !dbg !4712
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4679, metadata !760) #11, !dbg !4713
	%24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !4715
	tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4659, metadata !760), !dbg !4716
	%25 = load i32, i32* %15, align 8, !dbg !4717, !tbaa !3488
	%26 = load i8*, i8** %18, align 8, !dbg !4718, !tbaa !3577
	%27 = load i8*, i8** %20, align 8, !dbg !4719, !tbaa !3580
	%28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !4720
	store i32 %8, i32* %7, align 4, !dbg !4721, !tbaa !937
	br i1 %11, label %29, label %30, !dbg !4722
	store i64 %22, i64* %2, align 8, !dbg !4723, !tbaa !979
	br label %30, !dbg !4725
	ret i8* %24, !dbg !4726
}
define void @quotearg_free() local_unnamed_addr #6 !dbg !4727 {
	%1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4731, !tbaa !768
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !4729, metadata !760), !dbg !4732
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4730, metadata !760), !dbg !4733
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4730, metadata !760), !dbg !4733
	%2 = load i32, i32* @nslots, align 4, !dbg !4734, !tbaa !937
	%3 = icmp sgt i32 %2, 1, !dbg !4738
	br i1 %3, label %4, label %14, !dbg !4739
	br label %5, !dbg !4741
	%6 = phi i64 [ %9, %5 ], [ 1, %4 ]
	%7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !4741
	%8 = load i8*, i8** %7, align 8, !dbg !4741, !tbaa !4742
	tail call void @free(i8* %8) #11, !dbg !4744
	%9 = add nuw i64 %6, 1, !dbg !4745
	%10 = load i32, i32* @nslots, align 4, !dbg !4734, !tbaa !937
	%11 = sext i32 %10 to i64, !dbg !4738
	%12 = icmp slt i64 %9, %11, !dbg !4738
	br i1 %12, label %5, label %13, !dbg !4739, !llvm.loop !4747
	br label %14, !dbg !4750
	%15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4750
	%16 = load i8*, i8** %15, align 8, !dbg !4750, !tbaa !4742
	%17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4752
	br i1 %17, label %19, label %18, !dbg !4753
	tail call void @free(i8* %16) #11, !dbg !4754
	store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4756, !tbaa !4757
	store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4758, !tbaa !4742
	br label %19, !dbg !4759
	%20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4760
	br i1 %20, label %23, label %21, !dbg !4762
	%22 = bitcast %struct.slotvec* %1 to i8*, !dbg !4763
	tail call void @free(i8* %22) #11, !dbg !4765
	store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4766, !tbaa !768
	br label %23, !dbg !4767
	store i32 1, i32* @nslots, align 4, !dbg !4768, !tbaa !937
	ret void, !dbg !4769
}
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4770 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4774, metadata !760), !dbg !4776
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4775, metadata !760), !dbg !4777
	%3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4778
	ret i8* %3, !dbg !4779
}
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4780 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4784, metadata !760), !dbg !4798
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4785, metadata !760), !dbg !4799
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4786, metadata !760), !dbg !4800
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4787, metadata !760), !dbg !4801
	%5 = tail call i32* @__errno_location() #1, !dbg !4802
	%6 = load i32, i32* %5, align 4, !dbg !4802, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4788, metadata !760), !dbg !4803
	%7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4804, !tbaa !768
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4789, metadata !760), !dbg !4805
	%8 = icmp slt i32 %0, 0, !dbg !4806
	br i1 %8, label %9, label %10, !dbg !4808
	tail call void @abort() #14, !dbg !4809
	unreachable, !dbg !4809
	%11 = load i32, i32* @nslots, align 4, !dbg !4810, !tbaa !937
	%12 = icmp sgt i32 %11, %0, !dbg !4811
	br i1 %12, label %34, label %13, !dbg !4812
	%14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4813
	%15 = icmp ugt i32 %0, 2147483646, !dbg !4814
	br i1 %15, label %16, label %17, !dbg !4816
	tail call void @xalloc_die() #14, !dbg !4817
	unreachable, !dbg !4817
	%18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4818
	%19 = select i1 %14, i8* null, i8* %18, !dbg !4818
	%20 = add nsw i32 %0, 1, !dbg !4820
	%21 = sext i32 %20 to i64, !dbg !4821
	%22 = shl nsw i64 %21, 4, !dbg !4822
	%23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !4823
	%24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4823
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4789, metadata !760), !dbg !4805
	store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4824, !tbaa !768
	br i1 %14, label %25, label %26, !dbg !4825
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4826, !tbaa.struct !4828
	br label %26, !dbg !4829
	%27 = load i32, i32* @nslots, align 4, !dbg !4830, !tbaa !937
	%28 = sext i32 %27 to i64, !dbg !4831
	%29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4831
	%30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4832
	%31 = sub nsw i32 %20, %27, !dbg !4833
	%32 = sext i32 %31 to i64, !dbg !4834
	%33 = shl nsw i64 %32, 4, !dbg !4835
	tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4832
	store i32 %20, i32* @nslots, align 4, !dbg !4836, !tbaa !937
	br label %34, !dbg !4837
	%35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4789, metadata !760), !dbg !4805
	%36 = sext i32 %0 to i64, !dbg !4838
	%37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4839
	%38 = load i64, i64* %37, align 8, !dbg !4839, !tbaa !4757
	tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4793, metadata !760), !dbg !4840
	%39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4841
	%40 = load i8*, i8** %39, align 8, !dbg !4841, !tbaa !4742
	tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4795, metadata !760), !dbg !4842
	%41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4843
	%42 = load i32, i32* %41, align 4, !dbg !4843, !tbaa !3550
	%43 = or i32 %42, 1, !dbg !4844
	tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4796, metadata !760), !dbg !4845
	%44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4846
	%45 = load i32, i32* %44, align 8, !dbg !4846, !tbaa !3488
	%46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4847
	%47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4848
	%48 = load i8*, i8** %47, align 8, !dbg !4848, !tbaa !3577
	%49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4849
	%50 = load i8*, i8** %49, align 8, !dbg !4849, !tbaa !3580
	%51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4850
	tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4797, metadata !760), !dbg !4851
	%52 = icmp ugt i64 %38, %51, !dbg !4852
	br i1 %52, label %63, label %53, !dbg !4854
	%54 = add i64 %51, 1, !dbg !4855
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4793, metadata !760), !dbg !4840
	store i64 %54, i64* %37, align 8, !dbg !4857, !tbaa !4757
	%55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4858
	br i1 %55, label %57, label %56, !dbg !4860
	tail call void @free(i8* %40) #11, !dbg !4861
	br label %57, !dbg !4861
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4679, metadata !760) #11, !dbg !4862
	%58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !4864
	tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4795, metadata !760), !dbg !4842
	store i8* %58, i8** %39, align 8, !dbg !4865, !tbaa !4742
	%59 = load i32, i32* %44, align 8, !dbg !4866, !tbaa !3488
	%60 = load i8*, i8** %47, align 8, !dbg !4867, !tbaa !3577
	%61 = load i8*, i8** %49, align 8, !dbg !4868, !tbaa !3580
	%62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4869
	br label %63, !dbg !4870
	%64 = phi i8* [ %58, %57 ], [ %40, %34 ]
	tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4795, metadata !760), !dbg !4842
	store i32 %6, i32* %5, align 4, !dbg !4871, !tbaa !937
	ret i8* %64, !dbg !4872
}
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4873 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4877, metadata !760), !dbg !4880
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4878, metadata !760), !dbg !4881
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4879, metadata !760), !dbg !4882
	%4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4883
	ret i8* %4, !dbg !4884
}
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4885 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4889, metadata !760), !dbg !4890
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4774, metadata !760) #11, !dbg !4891
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4775, metadata !760) #11, !dbg !4893
	%2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !4894
	ret i8* %2, !dbg !4895
}
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4896 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4900, metadata !760), !dbg !4902
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4901, metadata !760), !dbg !4903
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4877, metadata !760) #11, !dbg !4904
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4878, metadata !760) #11, !dbg !4906
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4879, metadata !760) #11, !dbg !4907
	%3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !4908
	ret i8* %3, !dbg !4909
}
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4910 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4918, metadata !4924), !dbg !4925
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4914, metadata !760), !dbg !4927
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4915, metadata !760), !dbg !4928
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4916, metadata !760), !dbg !4929
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4930
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4930
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4917, metadata !972), !dbg !4931
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4923, metadata !760) #11, !dbg !4932
	%7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4933
	call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4933
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4918, metadata !760) #11, !dbg !4925
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4918, metadata !4934) #11, !dbg !4925
	call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4925
	%8 = icmp eq i32 %1, 10, !dbg !4935
	br i1 %8, label %9, label %10, !dbg !4937
	tail call void @abort() #14, !dbg !4938, !noalias !4939
	unreachable, !dbg !4938
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4918, metadata !4934) #11, !dbg !4925
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4942
	store i32 %1, i32* %11, align 8, !dbg !4942, !alias.scope !4939
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4942
	%13 = bitcast i32* %12 to i8*, !dbg !4942
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !4942
	call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4943
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4917, metadata !972), !dbg !4931
	%14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4944
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4945
	ret i8* %14, !dbg !4946
}
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4947 {
	%5 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4918, metadata !4924), !dbg !4956
	%6 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4951, metadata !760), !dbg !4958
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4952, metadata !760), !dbg !4959
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4953, metadata !760), !dbg !4960
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4954, metadata !760), !dbg !4961
	%7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4962
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !4962
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4955, metadata !972), !dbg !4963
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4923, metadata !760) #11, !dbg !4964
	%8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4965
	call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4965
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4918, metadata !760) #11, !dbg !4956
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4918, metadata !4934) #11, !dbg !4956
	call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4956
	%9 = icmp eq i32 %1, 10, !dbg !4966
	br i1 %9, label %10, label %11, !dbg !4967
	tail call void @abort() #14, !dbg !4968, !noalias !4969
	unreachable, !dbg !4968
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4918, metadata !4934) #11, !dbg !4956
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4972
	store i32 %1, i32* %12, align 8, !dbg !4972, !alias.scope !4969
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4972
	%14 = bitcast i32* %13 to i8*, !dbg !4972
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !4972
	call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4973
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4955, metadata !972), !dbg !4963
	%15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4974
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !4975
	ret i8* %15, !dbg !4976
}
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4977 {
	%3 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4918, metadata !4924), !dbg !4983
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4981, metadata !760), !dbg !4986
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4982, metadata !760), !dbg !4987
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4914, metadata !760) #11, !dbg !4988
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4915, metadata !760) #11, !dbg !4989
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4916, metadata !760) #11, !dbg !4990
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4991
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !4991
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4917, metadata !972) #11, !dbg !4992
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4923, metadata !760) #11, !dbg !4993
	%6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4994
	call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4994
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4918, metadata !760) #11, !dbg !4983
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4918, metadata !4934) #11, !dbg !4983
	call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4983
	%7 = icmp eq i32 %0, 10, !dbg !4995
	br i1 %7, label %8, label %9, !dbg !4996
	tail call void @abort() #14, !dbg !4997, !noalias !4998
	unreachable, !dbg !4997
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4918, metadata !4934) #11, !dbg !4983
	%10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !5001
	store i32 %0, i32* %10, align 8, !dbg !5001, !alias.scope !4998
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !5001
	%12 = bitcast i32* %11 to i8*, !dbg !5001
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !5001
	call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !5002
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4917, metadata !972) #11, !dbg !4992
	%13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !5003
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !5004
	ret i8* %13, !dbg !5005
}
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !5006 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4918, metadata !4924), !dbg !5013
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5010, metadata !760), !dbg !5016
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5011, metadata !760), !dbg !5017
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5012, metadata !760), !dbg !5018
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4951, metadata !760) #11, !dbg !5019
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4952, metadata !760) #11, !dbg !5020
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4953, metadata !760) #11, !dbg !5021
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4954, metadata !760) #11, !dbg !5022
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !5023
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !5023
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4955, metadata !972) #11, !dbg !5024
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4923, metadata !760) #11, !dbg !5025
	%7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !5026
	call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !5026
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4918, metadata !760) #11, !dbg !5013
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4918, metadata !4934) #11, !dbg !5013
	call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !5013
	%8 = icmp eq i32 %0, 10, !dbg !5027
	br i1 %8, label %9, label %10, !dbg !5028
	tail call void @abort() #14, !dbg !5029, !noalias !5030
	unreachable, !dbg !5029
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4918, metadata !4934) #11, !dbg !5013
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !5033
	store i32 %0, i32* %11, align 8, !dbg !5033, !alias.scope !5030
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !5033
	%13 = bitcast i32* %12 to i8*, !dbg !5033
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !5033
	call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !5034
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4955, metadata !972) #11, !dbg !5024
	%14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !5035
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !5036
	ret i8* %14, !dbg !5037
}
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !5038 {
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5042, metadata !760), !dbg !5046
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5043, metadata !760), !dbg !5047
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !5044, metadata !760), !dbg !5048
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !5049
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !5049
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !5050, !tbaa.struct !5051
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !5045, metadata !972), !dbg !5052
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3508, metadata !760), !dbg !5053
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3509, metadata !760), !dbg !5055
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3510, metadata !760), !dbg !5056
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3511, metadata !760), !dbg !5057
	%6 = lshr i8 %2, 5, !dbg !5058
	%7 = zext i8 %6 to i64, !dbg !5058
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !5059
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3512, metadata !760), !dbg !5060
	%9 = and i8 %2, 31, !dbg !5061
	%10 = zext i8 %9 to i32, !dbg !5062
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3514, metadata !760), !dbg !5063
	%11 = load i32, i32* %8, align 4, !dbg !5064, !tbaa !937
	%12 = lshr i32 %11, %10, !dbg !5065
	%13 = and i32 %12, 1, !dbg !5066
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3515, metadata !760), !dbg !5067
	%14 = xor i32 %13, 1, !dbg !5068
	%15 = shl i32 %14, %10, !dbg !5069
	%16 = xor i32 %15, %11, !dbg !5070
	store i32 %16, i32* %8, align 4, !dbg !5070, !tbaa !937
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !5045, metadata !972), !dbg !5052
	%17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !5071
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !5072
	ret i8* %17, !dbg !5073
}
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !5074 {
	%3 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5078, metadata !760), !dbg !5080
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !5079, metadata !760), !dbg !5081
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5042, metadata !760) #11, !dbg !5082
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5043, metadata !760) #11, !dbg !5084
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !5044, metadata !760) #11, !dbg !5085
	%4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !5086
	call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !5086
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !5087, !tbaa.struct !5051
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !5045, metadata !972) #11, !dbg !5088
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3508, metadata !760) #11, !dbg !5089
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3509, metadata !760) #11, !dbg !5091
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3510, metadata !760) #11, !dbg !5092
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3511, metadata !760) #11, !dbg !5093
	%5 = lshr i8 %1, 5, !dbg !5094
	%6 = zext i8 %5 to i64, !dbg !5094
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !5095
	tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !3512, metadata !760) #11, !dbg !5096
	%8 = and i8 %1, 31, !dbg !5097
	%9 = zext i8 %8 to i32, !dbg !5098
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3514, metadata !760) #11, !dbg !5099
	%10 = load i32, i32* %7, align 4, !dbg !5100, !tbaa !937
	%11 = lshr i32 %10, %9, !dbg !5101
	%12 = and i32 %11, 1, !dbg !5102
	tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !3515, metadata !760) #11, !dbg !5103
	%13 = xor i32 %12, 1, !dbg !5104
	%14 = shl i32 %13, %9, !dbg !5105
	%15 = xor i32 %14, %10, !dbg !5106
	store i32 %15, i32* %7, align 4, !dbg !5106, !tbaa !937
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !5045, metadata !972) #11, !dbg !5088
	%16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !5107
	call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !5108
	ret i8* %16, !dbg !5109
}
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !5110 {
	%2 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5112, metadata !760), !dbg !5113
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5078, metadata !760) #11, !dbg !5114
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !5079, metadata !760) #11, !dbg !5116
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5042, metadata !760) #11, !dbg !5117
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5043, metadata !760) #11, !dbg !5119
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !5044, metadata !760) #11, !dbg !5120
	%3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !5121
	call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !5121
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !5122, !tbaa.struct !5051
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !5045, metadata !972) #11, !dbg !5123
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3508, metadata !760) #11, !dbg !5124
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3509, metadata !760) #11, !dbg !5126
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3510, metadata !760) #11, !dbg !5127
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3511, metadata !760) #11, !dbg !5128
	%4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !5129
	tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !3512, metadata !760) #11, !dbg !5130
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3514, metadata !760) #11, !dbg !5131
	%5 = load i32, i32* %4, align 4, !dbg !5132, !tbaa !937
	%6 = or i32 %5, 67108864, !dbg !5133
	store i32 %6, i32* %4, align 4, !dbg !5133, !tbaa !937
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !5045, metadata !972) #11, !dbg !5123
	%7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !5134
	call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !5135
	ret i8* %7, !dbg !5136
}
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !5137 {
	%3 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5139, metadata !760), !dbg !5141
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5140, metadata !760), !dbg !5142
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5042, metadata !760) #11, !dbg !5143
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5043, metadata !760) #11, !dbg !5145
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !5044, metadata !760) #11, !dbg !5146
	%4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !5147
	call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !5147
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !5148, !tbaa.struct !5051
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !5045, metadata !972) #11, !dbg !5149
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3508, metadata !760) #11, !dbg !5150
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3509, metadata !760) #11, !dbg !5152
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3510, metadata !760) #11, !dbg !5153
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3511, metadata !760) #11, !dbg !5154
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !5155
	tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3512, metadata !760) #11, !dbg !5156
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3514, metadata !760) #11, !dbg !5157
	%6 = load i32, i32* %5, align 4, !dbg !5158, !tbaa !937
	%7 = or i32 %6, 67108864, !dbg !5159
	store i32 %7, i32* %5, align 4, !dbg !5159, !tbaa !937
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !5045, metadata !972) #11, !dbg !5149
	%8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !5160
	call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !5161
	ret i8* %8, !dbg !5162
}
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !5163 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4918, metadata !4924), !dbg !5169
	%5 = alloca %struct.quoting_options, align 8
	%6 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5165, metadata !760), !dbg !5171
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !5166, metadata !760), !dbg !5172
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5167, metadata !760), !dbg !5173
	%7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !5174
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !5174
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4923, metadata !760) #11, !dbg !5175
	%8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !5176
	call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !5176
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4918, metadata !760) #11, !dbg !5169
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4918, metadata !4934) #11, !dbg !5169
	call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !5169
	%9 = icmp eq i32 %1, 10, !dbg !5177
	br i1 %9, label %10, label %11, !dbg !5178
	tail call void @abort() #14, !dbg !5179, !noalias !5180
	unreachable, !dbg !5179
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4918, metadata !4934) #11, !dbg !5169
	%12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !5183
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !5183
	call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !5184
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !5185
	store i32 %1, i32* %13, align 8, !dbg !5185
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !5185
	%15 = bitcast i32* %14 to i8*, !dbg !5185
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !5185
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !5168, metadata !972), !dbg !5186
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3508, metadata !760), !dbg !5187
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3509, metadata !760), !dbg !5189
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3510, metadata !760), !dbg !5190
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3511, metadata !760), !dbg !5191
	%16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !5192
	tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !3512, metadata !760), !dbg !5193
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3514, metadata !760), !dbg !5194
	%17 = load i32, i32* %16, align 4, !dbg !5195, !tbaa !937
	%18 = or i32 %17, 67108864, !dbg !5196
	store i32 %18, i32* %16, align 4, !dbg !5196, !tbaa !937
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !5168, metadata !972), !dbg !5186
	%19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !5197
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !5198
	ret i8* %19, !dbg !5199
}
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !5200 {
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5204, metadata !760), !dbg !5208
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5205, metadata !760), !dbg !5209
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5206, metadata !760), !dbg !5210
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5207, metadata !760), !dbg !5211
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5212, metadata !760) #11, !dbg !5222
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5217, metadata !760) #11, !dbg !5224
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5218, metadata !760) #11, !dbg !5225
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5219, metadata !760) #11, !dbg !5226
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5220, metadata !760) #11, !dbg !5227
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !5228
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !5228
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !5229, !tbaa.struct !5051
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !5221, metadata !972) #11, !dbg !5230
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3558, metadata !760) #11, !dbg !5231
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3559, metadata !760) #11, !dbg !5233
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3560, metadata !760) #11, !dbg !5234
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3558, metadata !760) #11, !dbg !5231
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3558, metadata !760) #11, !dbg !5231
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !5235
	store i32 10, i32* %7, align 8, !dbg !5236, !tbaa !3488
	%8 = icmp ne i8* %1, null, !dbg !5237
	%9 = icmp ne i8* %2, null, !dbg !5238
	%10 = and i1 %8, %9, !dbg !5239
	br i1 %10, label %12, label %11, !dbg !5239
	tail call void @abort() #14, !dbg !5240
	unreachable, !dbg !5240
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !5241
	store i8* %1, i8** %13, align 8, !dbg !5242, !tbaa !3577
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !5243
	store i8* %2, i8** %14, align 8, !dbg !5244, !tbaa !3580
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !5221, metadata !972) #11, !dbg !5230
	%15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !5245
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !5246
	ret i8* %15, !dbg !5247
}
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !5213 {
	%6 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5212, metadata !760), !dbg !5248
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5217, metadata !760), !dbg !5249
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5218, metadata !760), !dbg !5250
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5219, metadata !760), !dbg !5251
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !5220, metadata !760), !dbg !5252
	%7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !5253
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !5253
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !5254, !tbaa.struct !5051
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !5221, metadata !972), !dbg !5255
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3558, metadata !760) #11, !dbg !5256
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3559, metadata !760) #11, !dbg !5258
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3560, metadata !760) #11, !dbg !5259
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3558, metadata !760) #11, !dbg !5256
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3558, metadata !760) #11, !dbg !5256
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !5260
	store i32 10, i32* %8, align 8, !dbg !5261, !tbaa !3488
	%9 = icmp ne i8* %1, null, !dbg !5262
	%10 = icmp ne i8* %2, null, !dbg !5263
	%11 = and i1 %9, %10, !dbg !5264
	br i1 %11, label %13, label %12, !dbg !5264
	tail call void @abort() #14, !dbg !5265
	unreachable, !dbg !5265
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !5266
	store i8* %1, i8** %14, align 8, !dbg !5267, !tbaa !3577
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !5268
	store i8* %2, i8** %15, align 8, !dbg !5269, !tbaa !3580
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !5221, metadata !972), !dbg !5255
	%16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !5270
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !5271
	ret i8* %16, !dbg !5272
}
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !5273 {
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5277, metadata !760), !dbg !5280
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5278, metadata !760), !dbg !5281
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5279, metadata !760), !dbg !5282
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5204, metadata !760) #11, !dbg !5283
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5205, metadata !760) #11, !dbg !5285
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5206, metadata !760) #11, !dbg !5286
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5207, metadata !760) #11, !dbg !5287
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5212, metadata !760) #11, !dbg !5288
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5217, metadata !760) #11, !dbg !5290
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5218, metadata !760) #11, !dbg !5291
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5219, metadata !760) #11, !dbg !5292
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5220, metadata !760) #11, !dbg !5293
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !5294
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !5294
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !5295, !tbaa.struct !5051
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !5221, metadata !972) #11, !dbg !5296
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3558, metadata !760) #11, !dbg !5297
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3559, metadata !760) #11, !dbg !5299
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3560, metadata !760) #11, !dbg !5300
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3558, metadata !760) #11, !dbg !5297
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3558, metadata !760) #11, !dbg !5297
	%6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !5301
	store i32 10, i32* %6, align 8, !dbg !5302, !tbaa !3488
	%7 = icmp ne i8* %0, null, !dbg !5303
	%8 = icmp ne i8* %1, null, !dbg !5304
	%9 = and i1 %7, %8, !dbg !5305
	br i1 %9, label %11, label %10, !dbg !5305
	tail call void @abort() #14, !dbg !5306
	unreachable, !dbg !5306
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !5307
	store i8* %0, i8** %12, align 8, !dbg !5308, !tbaa !3577
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !5309
	store i8* %1, i8** %13, align 8, !dbg !5310, !tbaa !3580
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !5221, metadata !972) #11, !dbg !5296
	%14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !5311
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !5312
	ret i8* %14, !dbg !5313
}
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !5314 {
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5318, metadata !760), !dbg !5322
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5319, metadata !760), !dbg !5323
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5320, metadata !760), !dbg !5324
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5321, metadata !760), !dbg !5325
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5212, metadata !760) #11, !dbg !5326
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5217, metadata !760) #11, !dbg !5328
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5218, metadata !760) #11, !dbg !5329
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5219, metadata !760) #11, !dbg !5330
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5220, metadata !760) #11, !dbg !5331
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !5332
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !5332
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !5333, !tbaa.struct !5051
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !5221, metadata !972) #11, !dbg !5334
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3558, metadata !760) #11, !dbg !5335
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3559, metadata !760) #11, !dbg !5337
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3560, metadata !760) #11, !dbg !5338
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3558, metadata !760) #11, !dbg !5335
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3558, metadata !760) #11, !dbg !5335
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !5339
	store i32 10, i32* %7, align 8, !dbg !5340, !tbaa !3488
	%8 = icmp ne i8* %0, null, !dbg !5341
	%9 = icmp ne i8* %1, null, !dbg !5342
	%10 = and i1 %8, %9, !dbg !5343
	br i1 %10, label %12, label %11, !dbg !5343
	tail call void @abort() #14, !dbg !5344
	unreachable, !dbg !5344
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !5345
	store i8* %0, i8** %13, align 8, !dbg !5346, !tbaa !3577
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !5347
	store i8* %1, i8** %14, align 8, !dbg !5348, !tbaa !3580
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !5221, metadata !972) #11, !dbg !5334
	%15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !5349
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !5350
	ret i8* %15, !dbg !5351
}
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !5352 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5356, metadata !760), !dbg !5359
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5357, metadata !760), !dbg !5360
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5358, metadata !760), !dbg !5361
	%4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !5362
	ret i8* %4, !dbg !5363
}
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !5364 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5368, metadata !760), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5369, metadata !760), !dbg !5371
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5356, metadata !760) #11, !dbg !5372
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5357, metadata !760) #11, !dbg !5374
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5358, metadata !760) #11, !dbg !5375
	%3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !5376
	ret i8* %3, !dbg !5377
}
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !5378 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5382, metadata !760), !dbg !5384
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5383, metadata !760), !dbg !5385
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5356, metadata !760) #11, !dbg !5386
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5357, metadata !760) #11, !dbg !5388
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5358, metadata !760) #11, !dbg !5389
	%3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !5390
	ret i8* %3, !dbg !5391
}
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !5392 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5396, metadata !760), !dbg !5397
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5382, metadata !760) #11, !dbg !5398
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5383, metadata !760) #11, !dbg !5400
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5356, metadata !760) #11, !dbg !5401
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5357, metadata !760) #11, !dbg !5403
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5358, metadata !760) #11, !dbg !5404
	%2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !5405
	ret i8* %2, !dbg !5406
}
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !5407 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5410, metadata !760), !dbg !5411
	%2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11, !dbg !5412
	ret i32 %2, !dbg !5413
}
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !5414 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5459, metadata !760), !dbg !5465
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5460, metadata !760), !dbg !5466
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5461, metadata !760), !dbg !5467
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5462, metadata !760), !dbg !5468
	tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5463, metadata !760), !dbg !5469
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !5464, metadata !760), !dbg !5470
	%7 = icmp eq i8* %1, null, !dbg !5471
	br i1 %7, label %10, label %8, !dbg !5473
	%9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !5474
	br label %12, !dbg !5474
	%11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !5475
	br label %12
	%13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.91, i64 0, i64 0), i32 5) #11, !dbg !5476
	%14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !5477
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.92, i64 0, i64 0), i32 5) #11, !dbg !5479
	%16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !5480
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
	], !dbg !5481
	tail call void @abort() #14, !dbg !5482
	unreachable, !dbg !5482
	%19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.93, i64 0, i64 0), i32 5) #11, !dbg !5484
	%20 = load i8*, i8** %4, align 8, !dbg !5484, !tbaa !768
	%21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !5485
	br label %146, !dbg !5487
	%23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.94, i64 0, i64 0), i32 5) #11, !dbg !5488
	%24 = load i8*, i8** %4, align 8, !dbg !5488, !tbaa !768
	%25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5488
	%26 = load i8*, i8** %25, align 8, !dbg !5488, !tbaa !768
	%27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !5489
	br label %146, !dbg !5490
	%29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.95, i64 0, i64 0), i32 5) #11, !dbg !5491
	%30 = load i8*, i8** %4, align 8, !dbg !5491, !tbaa !768
	%31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5491
	%32 = load i8*, i8** %31, align 8, !dbg !5491, !tbaa !768
	%33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5491
	%34 = load i8*, i8** %33, align 8, !dbg !5491, !tbaa !768
	%35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !5492
	br label %146, !dbg !5493
	%37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.96, i64 0, i64 0), i32 5) #11, !dbg !5494
	%38 = load i8*, i8** %4, align 8, !dbg !5494, !tbaa !768
	%39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5494
	%40 = load i8*, i8** %39, align 8, !dbg !5494, !tbaa !768
	%41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5494
	%42 = load i8*, i8** %41, align 8, !dbg !5494, !tbaa !768
	%43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5494
	%44 = load i8*, i8** %43, align 8, !dbg !5494, !tbaa !768
	%45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !5495
	br label %146, !dbg !5496
	%47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.97, i64 0, i64 0), i32 5) #11, !dbg !5497
	%48 = load i8*, i8** %4, align 8, !dbg !5497, !tbaa !768
	%49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5497
	%50 = load i8*, i8** %49, align 8, !dbg !5497, !tbaa !768
	%51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5497
	%52 = load i8*, i8** %51, align 8, !dbg !5497, !tbaa !768
	%53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5497
	%54 = load i8*, i8** %53, align 8, !dbg !5497, !tbaa !768
	%55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5497
	%56 = load i8*, i8** %55, align 8, !dbg !5497, !tbaa !768
	%57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !5498
	br label %146, !dbg !5499
	%59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.98, i64 0, i64 0), i32 5) #11, !dbg !5500
	%60 = load i8*, i8** %4, align 8, !dbg !5500, !tbaa !768
	%61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5500
	%62 = load i8*, i8** %61, align 8, !dbg !5500, !tbaa !768
	%63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5500
	%64 = load i8*, i8** %63, align 8, !dbg !5500, !tbaa !768
	%65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5500
	%66 = load i8*, i8** %65, align 8, !dbg !5500, !tbaa !768
	%67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5500
	%68 = load i8*, i8** %67, align 8, !dbg !5500, !tbaa !768
	%69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5500
	%70 = load i8*, i8** %69, align 8, !dbg !5500, !tbaa !768
	%71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !5501
	br label %146, !dbg !5502
	%73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.99, i64 0, i64 0), i32 5) #11, !dbg !5503
	%74 = load i8*, i8** %4, align 8, !dbg !5503, !tbaa !768
	%75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5503
	%76 = load i8*, i8** %75, align 8, !dbg !5503, !tbaa !768
	%77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5503
	%78 = load i8*, i8** %77, align 8, !dbg !5503, !tbaa !768
	%79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5503
	%80 = load i8*, i8** %79, align 8, !dbg !5503, !tbaa !768
	%81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5503
	%82 = load i8*, i8** %81, align 8, !dbg !5503, !tbaa !768
	%83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5503
	%84 = load i8*, i8** %83, align 8, !dbg !5503, !tbaa !768
	%85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5503
	%86 = load i8*, i8** %85, align 8, !dbg !5503, !tbaa !768
	%87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !5504
	br label %146, !dbg !5505
	%89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.100, i64 0, i64 0), i32 5) #11, !dbg !5506
	%90 = load i8*, i8** %4, align 8, !dbg !5506, !tbaa !768
	%91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5506
	%92 = load i8*, i8** %91, align 8, !dbg !5506, !tbaa !768
	%93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5506
	%94 = load i8*, i8** %93, align 8, !dbg !5506, !tbaa !768
	%95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5506
	%96 = load i8*, i8** %95, align 8, !dbg !5506, !tbaa !768
	%97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5506
	%98 = load i8*, i8** %97, align 8, !dbg !5506, !tbaa !768
	%99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5506
	%100 = load i8*, i8** %99, align 8, !dbg !5506, !tbaa !768
	%101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5506
	%102 = load i8*, i8** %101, align 8, !dbg !5506, !tbaa !768
	%103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5506
	%104 = load i8*, i8** %103, align 8, !dbg !5506, !tbaa !768
	%105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !5507
	br label %146, !dbg !5508
	%107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.101, i64 0, i64 0), i32 5) #11, !dbg !5509
	%108 = load i8*, i8** %4, align 8, !dbg !5509, !tbaa !768
	%109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5509
	%110 = load i8*, i8** %109, align 8, !dbg !5509, !tbaa !768
	%111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5509
	%112 = load i8*, i8** %111, align 8, !dbg !5509, !tbaa !768
	%113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5509
	%114 = load i8*, i8** %113, align 8, !dbg !5509, !tbaa !768
	%115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5509
	%116 = load i8*, i8** %115, align 8, !dbg !5509, !tbaa !768
	%117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5509
	%118 = load i8*, i8** %117, align 8, !dbg !5509, !tbaa !768
	%119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5509
	%120 = load i8*, i8** %119, align 8, !dbg !5509, !tbaa !768
	%121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5509
	%122 = load i8*, i8** %121, align 8, !dbg !5509, !tbaa !768
	%123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5509
	%124 = load i8*, i8** %123, align 8, !dbg !5509, !tbaa !768
	%125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !5510
	br label %146, !dbg !5511
	%127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.102, i64 0, i64 0), i32 5) #11, !dbg !5512
	%128 = load i8*, i8** %4, align 8, !dbg !5512, !tbaa !768
	%129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5512
	%130 = load i8*, i8** %129, align 8, !dbg !5512, !tbaa !768
	%131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5512
	%132 = load i8*, i8** %131, align 8, !dbg !5512, !tbaa !768
	%133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5512
	%134 = load i8*, i8** %133, align 8, !dbg !5512, !tbaa !768
	%135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5512
	%136 = load i8*, i8** %135, align 8, !dbg !5512, !tbaa !768
	%137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5512
	%138 = load i8*, i8** %137, align 8, !dbg !5512, !tbaa !768
	%139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5512
	%140 = load i8*, i8** %139, align 8, !dbg !5512, !tbaa !768
	%141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5512
	%142 = load i8*, i8** %141, align 8, !dbg !5512, !tbaa !768
	%143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5512
	%144 = load i8*, i8** %143, align 8, !dbg !5512, !tbaa !768
	%145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !5513
	br label %146, !dbg !5514
	ret void, !dbg !5515
}
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !5516 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5520, metadata !760), !dbg !5526
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5521, metadata !760), !dbg !5527
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5522, metadata !760), !dbg !5528
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5523, metadata !760), !dbg !5529
	tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5524, metadata !760), !dbg !5530
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5525, metadata !760), !dbg !5531
	br label %6, !dbg !5532
	%7 = phi i64 [ 0, %5 ], [ %11, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5525, metadata !760), !dbg !5531
	%8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !5534
	%9 = load i8*, i8** %8, align 8, !dbg !5534, !tbaa !768
	%10 = icmp eq i8* %9, null, !dbg !5537
	%11 = add i64 %7, 1, !dbg !5539
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5525, metadata !760), !dbg !5531
	br i1 %10, label %12, label %6, !dbg !5537, !llvm.loop !5541
	tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !5544
	ret void, !dbg !5545
}
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !5546 {
	%6 = alloca [10 x i8*], align 16
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5557, metadata !760), !dbg !5565
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5558, metadata !760), !dbg !5566
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5559, metadata !760), !dbg !5567
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5560, metadata !760), !dbg !5568
	tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !5561, metadata !760), !dbg !5569
	%7 = bitcast [10 x i8*]* %6 to i8*, !dbg !5570
	call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !5570
	tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !5563, metadata !760), !dbg !5571
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5562, metadata !760), !dbg !5572
	%8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
	%9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
	%10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
	%11 = load i32, i32* %8, align 8, !dbg !5573
	%12 = icmp ult i32 %11, 41, !dbg !5573
	br i1 %12, label %13, label %18, !dbg !5573
	%14 = load i8*, i8** %9, align 8, !dbg !5577
	%15 = sext i32 %11 to i64, !dbg !5577
	%16 = getelementptr i8, i8* %14, i64 %15, !dbg !5577
	%17 = add i32 %11, 8, !dbg !5577
	store i32 %17, i32* %8, align 8, !dbg !5577
	br label %21, !dbg !5577
	%19 = load i8*, i8** %10, align 8, !dbg !5579
	%20 = getelementptr i8, i8* %19, i64 8, !dbg !5579
	store i8* %20, i8** %10, align 8, !dbg !5579
	br label %21, !dbg !5579
	%22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !5573
	%23 = phi i8* [ %16, %13 ], [ %19, %18 ]
	%24 = bitcast i8* %23 to i8**, !dbg !5581
	%25 = load i8*, i8** %24, align 8, !dbg !5581
	%26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !5583
	store i8* %25, i8** %26, align 16, !dbg !5584, !tbaa !768
	%27 = icmp eq i8* %25, null, !dbg !5585
	br i1 %27, label %30, label %28, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%29 = icmp ult i32 %22, 41, !dbg !5573
	br i1 %29, label %35, label %32, !dbg !5573
	%31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
	call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !5588
	call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !5589
	ret void, !dbg !5589
	%33 = load i8*, i8** %10, align 8, !dbg !5579
	%34 = getelementptr i8, i8* %33, i64 8, !dbg !5579
	store i8* %34, i8** %10, align 8, !dbg !5579
	br label %40, !dbg !5579
	%36 = load i8*, i8** %9, align 8, !dbg !5577
	%37 = sext i32 %22 to i64, !dbg !5577
	%38 = getelementptr i8, i8* %36, i64 %37, !dbg !5577
	%39 = add i32 %22, 8, !dbg !5577
	store i32 %39, i32* %8, align 8, !dbg !5577
	br label %40, !dbg !5577
	%41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !5573
	%42 = phi i8* [ %38, %35 ], [ %33, %32 ]
	%43 = bitcast i8* %42 to i8**, !dbg !5581
	%44 = load i8*, i8** %43, align 8, !dbg !5581
	%45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !5583
	store i8* %44, i8** %45, align 8, !dbg !5584, !tbaa !768
	%46 = icmp eq i8* %44, null, !dbg !5585
	br i1 %46, label %30, label %47, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%48 = icmp ult i32 %41, 41, !dbg !5573
	br i1 %48, label %52, label %49, !dbg !5573
	%50 = load i8*, i8** %10, align 8, !dbg !5579
	%51 = getelementptr i8, i8* %50, i64 8, !dbg !5579
	store i8* %51, i8** %10, align 8, !dbg !5579
	br label %57, !dbg !5579
	%53 = load i8*, i8** %9, align 8, !dbg !5577
	%54 = sext i32 %41 to i64, !dbg !5577
	%55 = getelementptr i8, i8* %53, i64 %54, !dbg !5577
	%56 = add i32 %41, 8, !dbg !5577
	store i32 %56, i32* %8, align 8, !dbg !5577
	br label %57, !dbg !5577
	%58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !5573
	%59 = phi i8* [ %55, %52 ], [ %50, %49 ]
	%60 = bitcast i8* %59 to i8**, !dbg !5581
	%61 = load i8*, i8** %60, align 8, !dbg !5581
	%62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !5583
	store i8* %61, i8** %62, align 16, !dbg !5584, !tbaa !768
	%63 = icmp eq i8* %61, null, !dbg !5585
	br i1 %63, label %30, label %64, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%65 = icmp ult i32 %58, 41, !dbg !5573
	br i1 %65, label %69, label %66, !dbg !5573
	%67 = load i8*, i8** %10, align 8, !dbg !5579
	%68 = getelementptr i8, i8* %67, i64 8, !dbg !5579
	store i8* %68, i8** %10, align 8, !dbg !5579
	br label %74, !dbg !5579
	%70 = load i8*, i8** %9, align 8, !dbg !5577
	%71 = sext i32 %58 to i64, !dbg !5577
	%72 = getelementptr i8, i8* %70, i64 %71, !dbg !5577
	%73 = add i32 %58, 8, !dbg !5577
	store i32 %73, i32* %8, align 8, !dbg !5577
	br label %74, !dbg !5577
	%75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !5573
	%76 = phi i8* [ %72, %69 ], [ %67, %66 ]
	%77 = bitcast i8* %76 to i8**, !dbg !5581
	%78 = load i8*, i8** %77, align 8, !dbg !5581
	%79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !5583
	store i8* %78, i8** %79, align 8, !dbg !5584, !tbaa !768
	%80 = icmp eq i8* %78, null, !dbg !5585
	br i1 %80, label %30, label %81, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%82 = icmp ult i32 %75, 41, !dbg !5573
	br i1 %82, label %86, label %83, !dbg !5573
	%84 = load i8*, i8** %10, align 8, !dbg !5579
	%85 = getelementptr i8, i8* %84, i64 8, !dbg !5579
	store i8* %85, i8** %10, align 8, !dbg !5579
	br label %91, !dbg !5579
	%87 = load i8*, i8** %9, align 8, !dbg !5577
	%88 = sext i32 %75 to i64, !dbg !5577
	%89 = getelementptr i8, i8* %87, i64 %88, !dbg !5577
	%90 = add i32 %75, 8, !dbg !5577
	store i32 %90, i32* %8, align 8, !dbg !5577
	br label %91, !dbg !5577
	%92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !5573
	%93 = phi i8* [ %89, %86 ], [ %84, %83 ]
	%94 = bitcast i8* %93 to i8**, !dbg !5581
	%95 = load i8*, i8** %94, align 8, !dbg !5581
	%96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !5583
	store i8* %95, i8** %96, align 16, !dbg !5584, !tbaa !768
	%97 = icmp eq i8* %95, null, !dbg !5585
	br i1 %97, label %30, label %98, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%99 = icmp ult i32 %92, 41, !dbg !5573
	br i1 %99, label %103, label %100, !dbg !5573
	%101 = load i8*, i8** %10, align 8, !dbg !5579
	%102 = getelementptr i8, i8* %101, i64 8, !dbg !5579
	store i8* %102, i8** %10, align 8, !dbg !5579
	br label %108, !dbg !5579
	%104 = load i8*, i8** %9, align 8, !dbg !5577
	%105 = sext i32 %92 to i64, !dbg !5577
	%106 = getelementptr i8, i8* %104, i64 %105, !dbg !5577
	%107 = add i32 %92, 8, !dbg !5577
	store i32 %107, i32* %8, align 8, !dbg !5577
	br label %108, !dbg !5577
	%109 = phi i8* [ %106, %103 ], [ %101, %100 ]
	%110 = bitcast i8* %109 to i8**, !dbg !5581
	%111 = load i8*, i8** %110, align 8, !dbg !5581
	%112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !5583
	store i8* %111, i8** %112, align 8, !dbg !5584, !tbaa !768
	%113 = icmp eq i8* %111, null, !dbg !5585
	br i1 %113, label %30, label %114, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%115 = load i8*, i8** %10, align 8, !dbg !5579
	%116 = getelementptr i8, i8* %115, i64 8, !dbg !5579
	store i8* %116, i8** %10, align 8, !dbg !5579
	%117 = bitcast i8* %115 to i8**, !dbg !5581
	%118 = load i8*, i8** %117, align 8, !dbg !5581
	%119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !5583
	store i8* %118, i8** %119, align 16, !dbg !5584, !tbaa !768
	%120 = icmp eq i8* %118, null, !dbg !5585
	br i1 %120, label %30, label %121, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%122 = load i8*, i8** %10, align 8, !dbg !5579
	%123 = getelementptr i8, i8* %122, i64 8, !dbg !5579
	store i8* %123, i8** %10, align 8, !dbg !5579
	%124 = bitcast i8* %122 to i8**, !dbg !5581
	%125 = load i8*, i8** %124, align 8, !dbg !5581
	%126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !5583
	store i8* %125, i8** %126, align 8, !dbg !5584, !tbaa !768
	%127 = icmp eq i8* %125, null, !dbg !5585
	br i1 %127, label %30, label %128, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%129 = load i8*, i8** %10, align 8, !dbg !5579
	%130 = getelementptr i8, i8* %129, i64 8, !dbg !5579
	store i8* %130, i8** %10, align 8, !dbg !5579
	%131 = bitcast i8* %129 to i8**, !dbg !5581
	%132 = load i8*, i8** %131, align 8, !dbg !5581
	%133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !5583
	store i8* %132, i8** %133, align 16, !dbg !5584, !tbaa !768
	%134 = icmp eq i8* %132, null, !dbg !5585
	br i1 %134, label %30, label %135, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%136 = load i8*, i8** %10, align 8, !dbg !5579
	%137 = getelementptr i8, i8* %136, i64 8, !dbg !5579
	store i8* %137, i8** %10, align 8, !dbg !5579
	%138 = bitcast i8* %136 to i8**, !dbg !5581
	%139 = load i8*, i8** %138, align 8, !dbg !5581
	%140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !5583
	store i8* %139, i8** %140, align 8, !dbg !5584, !tbaa !768
	%141 = icmp eq i8* %139, null, !dbg !5585
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5562, metadata !760), !dbg !5572
	%142 = select i1 %141, i64 9, i64 10, !dbg !5586
	br label %30, !dbg !5586
}
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !5590 {
	%5 = alloca [1 x %struct.__va_list_tag], align 16
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5594, metadata !760), !dbg !5603
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5595, metadata !760), !dbg !5604
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5596, metadata !760), !dbg !5605
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5597, metadata !760), !dbg !5606
	%6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !5607
	call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !5607
	tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !5598, metadata !760), !dbg !5608
	%7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !5609
	call void @llvm.va_start(i8* nonnull %6), !dbg !5609
	call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !5610
	call void @llvm.va_end(i8* nonnull %6), !dbg !5611
	call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !5612
	ret void, !dbg !5612
}
declare void @llvm.va_start(i8*) #11
declare void @llvm.va_end(i8*) #11
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !5613 {
	%1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.105, i64 0, i64 0), i32 5) #11, !dbg !5614
	%2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.106, i64 0, i64 0)) #11, !dbg !5615
	%3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.107, i64 0, i64 0), i32 5) #11, !dbg !5617
	%4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.108, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.109, i64 0, i64 0)) #11, !dbg !5618
	%5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.110, i64 0, i64 0), i32 5) #11, !dbg !5619
	%6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !5619, !tbaa !768
	%7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !5620
	ret void, !dbg !5621
}
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !5622 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5626, metadata !760), !dbg !5628
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5627, metadata !760), !dbg !5629
	%3 = udiv i64 9223372036854775807, %1, !dbg !5630
	%4 = icmp ult i64 %3, %0, !dbg !5630
	br i1 %4, label %5, label %6, !dbg !5632
	tail call void @xalloc_die() #14, !dbg !5633
	unreachable, !dbg !5633
	%7 = mul i64 %1, %0, !dbg !5634
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5635, metadata !760) #11, !dbg !5642
	%8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !5644
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5641, metadata !760) #11, !dbg !5645
	%9 = icmp eq i8* %8, null, !dbg !5646
	%10 = icmp ne i64 %7, 0, !dbg !5648
	%11 = and i1 %10, %9, !dbg !5650
	br i1 %11, label %12, label %13, !dbg !5650
	tail call void @xalloc_die() #14, !dbg !5651
	unreachable, !dbg !5651
	ret i8* %8, !dbg !5652
}
declare noalias i8* @malloc(i64) local_unnamed_addr #2
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !5636 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5635, metadata !760), !dbg !5653
	%2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !5654
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5641, metadata !760), !dbg !5655
	%3 = icmp eq i8* %2, null, !dbg !5656
	%4 = icmp ne i64 %0, 0, !dbg !5657
	%5 = and i1 %4, %3, !dbg !5658
	br i1 %5, label %6, label %7, !dbg !5658
	tail call void @xalloc_die() #14, !dbg !5659
	unreachable, !dbg !5659
	ret i8* %2, !dbg !5660
}
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !5661 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5665, metadata !760), !dbg !5668
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5666, metadata !760), !dbg !5669
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5667, metadata !760), !dbg !5670
	%4 = udiv i64 9223372036854775807, %2, !dbg !5671
	%5 = icmp ult i64 %4, %1, !dbg !5671
	br i1 %5, label %6, label %7, !dbg !5673
	tail call void @xalloc_die() #14, !dbg !5674
	unreachable, !dbg !5674
	%8 = mul i64 %2, %1, !dbg !5675
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5676, metadata !760) #11, !dbg !5682
	tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5681, metadata !760) #11, !dbg !5684
	%9 = icmp eq i64 %8, 0, !dbg !5685
	%10 = icmp ne i8* %0, null, !dbg !5687
	%11 = and i1 %10, %9, !dbg !5689
	br i1 %11, label %12, label %13, !dbg !5689
	tail call void @free(i8* nonnull %0) #11, !dbg !5690
	br label %19, !dbg !5692
	%14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !5693
	tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5676, metadata !760) #11, !dbg !5682
	%15 = icmp eq i8* %14, null, !dbg !5694
	%16 = icmp ne i64 %8, 0, !dbg !5696
	%17 = and i1 %16, %15, !dbg !5698
	br i1 %17, label %18, label %19, !dbg !5698
	tail call void @xalloc_die() #14, !dbg !5699
	unreachable, !dbg !5699
	%20 = phi i8* [ null, %12 ], [ %14, %13 ]
	ret i8* %20, !dbg !5700
}
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !5677 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5676, metadata !760), !dbg !5701
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5681, metadata !760), !dbg !5702
	%3 = icmp eq i64 %1, 0, !dbg !5703
	%4 = icmp ne i8* %0, null, !dbg !5704
	%5 = and i1 %4, %3, !dbg !5705
	br i1 %5, label %6, label %7, !dbg !5705
	tail call void @free(i8* nonnull %0) #11, !dbg !5706
	br label %13, !dbg !5707
	%8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !5708
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5676, metadata !760), !dbg !5701
	%9 = icmp eq i8* %8, null, !dbg !5709
	%10 = icmp ne i64 %1, 0, !dbg !5710
	%11 = and i1 %10, %9, !dbg !5711
	br i1 %11, label %12, label %13, !dbg !5711
	tail call void @xalloc_die() #14, !dbg !5712
	unreachable, !dbg !5712
	%14 = phi i8* [ null, %6 ], [ %8, %7 ]
	ret i8* %14, !dbg !5713
}
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !719 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !721, metadata !760), !dbg !5714
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !722, metadata !760), !dbg !5715
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !723, metadata !760), !dbg !5716
	%4 = load i64, i64* %1, align 8, !dbg !5717, !tbaa !979
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !724, metadata !760), !dbg !5718
	%5 = icmp eq i8* %0, null, !dbg !5719
	br i1 %5, label %6, label %13, !dbg !5721
	%7 = icmp eq i64 %4, 0, !dbg !5722
	br i1 %7, label %8, label %17, !dbg !5725
	%9 = udiv i64 128, %2, !dbg !5726
	tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !724, metadata !760), !dbg !5718
	%10 = icmp ugt i64 %2, 128, !dbg !5728
	%11 = zext i1 %10 to i64, !dbg !5728
	%12 = add nuw nsw i64 %9, %11, !dbg !5729
	tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !724, metadata !760), !dbg !5718
	br label %17, !dbg !5730
	%14 = udiv i64 6148914691236517204, %2, !dbg !5731
	%15 = icmp ugt i64 %14, %4, !dbg !5734
	br i1 %15, label %20, label %16, !dbg !5735
	tail call void @xalloc_die() #14, !dbg !5736
	unreachable, !dbg !5736
	%18 = phi i64 [ %12, %8 ], [ %4, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !724, metadata !760), !dbg !5718
	store i64 %18, i64* %1, align 8, !dbg !5737, !tbaa !979
	%19 = mul i64 %18, %2, !dbg !5738
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5676, metadata !760) #11, !dbg !5739
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5681, metadata !760) #11, !dbg !5741
	br label %27, !dbg !5742
	%21 = lshr i64 %4, 1, !dbg !5743
	%22 = add i64 %4, 1, !dbg !5744
	%23 = add i64 %22, %21, !dbg !5745
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !724, metadata !760), !dbg !5718
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !724, metadata !760), !dbg !5718
	store i64 %23, i64* %1, align 8, !dbg !5737, !tbaa !979
	%24 = mul i64 %23, %2, !dbg !5738
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5676, metadata !760) #11, !dbg !5739
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5681, metadata !760) #11, !dbg !5741
	%25 = icmp eq i64 %24, 0, !dbg !5746
	br i1 %25, label %26, label %27, !dbg !5742
	tail call void @free(i8* nonnull %0) #11, !dbg !5747
	br label %34, !dbg !5748
	%28 = phi i64 [ %19, %17 ], [ %24, %20 ]
	%29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !5749
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5676, metadata !760) #11, !dbg !5739
	%30 = icmp eq i8* %29, null, !dbg !5750
	%31 = icmp ne i64 %28, 0, !dbg !5751
	%32 = and i1 %31, %30, !dbg !5752
	br i1 %32, label %33, label %34, !dbg !5752
	tail call void @xalloc_die() #14, !dbg !5753
	unreachable, !dbg !5753
	%35 = phi i8* [ null, %26 ], [ %29, %27 ]
	ret i8* %35, !dbg !5754
}
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !5755 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5757, metadata !760), !dbg !5758
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5635, metadata !760) #11, !dbg !5759
	%2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !5761
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5641, metadata !760) #11, !dbg !5762
	%3 = icmp eq i8* %2, null, !dbg !5763
	%4 = icmp ne i64 %0, 0, !dbg !5764
	%5 = and i1 %4, %3, !dbg !5765
	br i1 %5, label %6, label %7, !dbg !5765
	tail call void @xalloc_die() #14, !dbg !5766
	unreachable, !dbg !5766
	ret i8* %2, !dbg !5767
}
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5768 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5772, metadata !760), !dbg !5774
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5773, metadata !760), !dbg !5775
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !721, metadata !760) #11, !dbg !5776
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !722, metadata !760) #11, !dbg !5778
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !723, metadata !760) #11, !dbg !5779
	%3 = load i64, i64* %1, align 8, !dbg !5780, !tbaa !979
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !724, metadata !760) #11, !dbg !5781
	%4 = icmp eq i8* %0, null, !dbg !5782
	br i1 %4, label %5, label %8, !dbg !5783
	%6 = icmp eq i64 %3, 0, !dbg !5784
	tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !724, metadata !760) #11, !dbg !5781
	tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !724, metadata !760) #11, !dbg !5781
	%7 = select i1 %6, i64 128, i64 %3, !dbg !5785
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !724, metadata !760) #11, !dbg !5781
	store i64 %7, i64* %1, align 8, !dbg !5786, !tbaa !979
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5676, metadata !760) #11, !dbg !5787
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5681, metadata !760) #11, !dbg !5789
	br label %17, !dbg !5790
	%9 = icmp ult i64 %3, 6148914691236517204, !dbg !5791
	br i1 %9, label %11, label %10, !dbg !5792
	tail call void @xalloc_die() #14, !dbg !5793
	unreachable, !dbg !5793
	%12 = lshr i64 %3, 1, !dbg !5794
	%13 = add i64 %3, 1, !dbg !5795
	%14 = add i64 %13, %12, !dbg !5796
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !724, metadata !760) #11, !dbg !5781
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !724, metadata !760) #11, !dbg !5781
	store i64 %14, i64* %1, align 8, !dbg !5786, !tbaa !979
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5676, metadata !760) #11, !dbg !5787
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5681, metadata !760) #11, !dbg !5789
	%15 = icmp eq i64 %14, 0, !dbg !5797
	br i1 %15, label %16, label %17, !dbg !5790
	tail call void @free(i8* nonnull %0) #11, !dbg !5798
	br label %24, !dbg !5799
	%18 = phi i64 [ %7, %5 ], [ %14, %11 ]
	%19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !5800
	tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5676, metadata !760) #11, !dbg !5787
	%20 = icmp eq i8* %19, null, !dbg !5801
	%21 = icmp ne i64 %18, 0, !dbg !5802
	%22 = and i1 %21, %20, !dbg !5803
	br i1 %22, label %23, label %24, !dbg !5803
	tail call void @xalloc_die() #14, !dbg !5804
	unreachable, !dbg !5804
	%25 = phi i8* [ null, %16 ], [ %19, %17 ]
	ret i8* %25, !dbg !5805
}
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5806 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5808, metadata !760), !dbg !5809
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5635, metadata !760) #11, !dbg !5810
	%2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !5812
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5641, metadata !760) #11, !dbg !5813
	%3 = icmp eq i8* %2, null, !dbg !5814
	%4 = icmp ne i64 %0, 0, !dbg !5815
	%5 = and i1 %4, %3, !dbg !5816
	br i1 %5, label %6, label %7, !dbg !5816
	tail call void @xalloc_die() #14, !dbg !5817
	unreachable, !dbg !5817
	tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5818
	ret i8* %2, !dbg !5819
}
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5820 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5822, metadata !760), !dbg !5825
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5823, metadata !760), !dbg !5826
	%3 = udiv i64 9223372036854775807, %1, !dbg !5827
	%4 = icmp ult i64 %3, %0, !dbg !5827
	br i1 %4, label %8, label %5, !dbg !5829
	%6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !5830
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5824, metadata !760), !dbg !5832
	%7 = icmp eq i8* %6, null, !dbg !5833
	br i1 %7, label %8, label %9, !dbg !5834
	tail call void @xalloc_die() #14, !dbg !5836
	unreachable, !dbg !5836
	ret i8* %6, !dbg !5837
}
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5838 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5842, metadata !760), !dbg !5844
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5843, metadata !760), !dbg !5845
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5635, metadata !760) #11, !dbg !5846
	%3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !5848
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5641, metadata !760) #11, !dbg !5849
	%4 = icmp eq i8* %3, null, !dbg !5850
	%5 = icmp ne i64 %1, 0, !dbg !5851
	%6 = and i1 %5, %4, !dbg !5852
	br i1 %6, label %7, label %8, !dbg !5852
	tail call void @xalloc_die() #14, !dbg !5853
	unreachable, !dbg !5853
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5854
	ret i8* %3, !dbg !5855
}
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5856 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5858, metadata !760), !dbg !5859
	%2 = tail call i64 @strlen(i8* %0) #13, !dbg !5860
	%3 = add i64 %2, 1, !dbg !5861
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5842, metadata !760) #11, !dbg !5862
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5843, metadata !760) #11, !dbg !5865
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5635, metadata !760) #11, !dbg !5866
	%4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !5868
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5641, metadata !760) #11, !dbg !5869
	%5 = icmp eq i8* %4, null, !dbg !5870
	%6 = icmp ne i64 %3, 0, !dbg !5871
	%7 = and i1 %6, %5, !dbg !5872
	br i1 %7, label %8, label %9, !dbg !5872
	tail call void @xalloc_die() #14, !dbg !5873
	unreachable, !dbg !5873
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !5874
	ret i8* %4, !dbg !5875
}
define void @xalloc_die() local_unnamed_addr #0 !dbg !5876 {
	%1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5878, !tbaa !937
	%2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.125, i64 0, i64 0), i32 5) #11, !dbg !5879
	tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i8* %2) #11, !dbg !5880
	tail call void @abort() #14, !dbg !5882
	unreachable, !dbg !5882
}
define i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !5883 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5888, metadata !760), !dbg !5894
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5889, metadata !760), !dbg !5895
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5890, metadata !760), !dbg !5896
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5891, metadata !760), !dbg !5897
	%5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #11, !dbg !5898
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !5892, metadata !760), !dbg !5899
	%6 = tail call i32* @__errno_location() #1, !dbg !5900
	%7 = load i32, i32* %6, align 4, !dbg !5900, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !5893, metadata !760), !dbg !5901
	%8 = icmp eq i32 %7, 0, !dbg !5902
	br i1 %8, label %16, label %9, !dbg !5904
	tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !5905, metadata !760) #11, !dbg !5914
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5910, metadata !760) #11, !dbg !5916
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5911, metadata !760) #11, !dbg !5917
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5912, metadata !760) #11, !dbg !5918
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5913, metadata !760) #11, !dbg !5919
	%10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i64 0, i64 0), i32 5) #11, !dbg !5920
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #11, !dbg !5921
	%11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #11, !dbg !5923
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #11, !dbg !5924
	%12 = load volatile i32, i32* @exit_failure, align 4, !dbg !5925, !tbaa !937
	%13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.131, i64 0, i64 0), i32 5) #11, !dbg !5926
	%14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #11, !dbg !5927
	%15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #11, !dbg !5928
	tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #11, !dbg !5929
	br label %16, !dbg !5930
	ret i32 %5, !dbg !5931
}
define i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !5932 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5936, metadata !760), !dbg !5942
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5937, metadata !760), !dbg !5943
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5938, metadata !760), !dbg !5944
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5939, metadata !760), !dbg !5945
	%5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #11, !dbg !5946
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !5940, metadata !760), !dbg !5947
	%6 = tail call i32* @__errno_location() #1, !dbg !5948
	%7 = load i32, i32* %6, align 4, !dbg !5948, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !5941, metadata !760), !dbg !5949
	%8 = icmp eq i32 %7, 0, !dbg !5950
	br i1 %8, label %18, label %9, !dbg !5952
	%10 = add i64 %1, -1, !dbg !5953
	%11 = add i64 %3, -1, !dbg !5954
	tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !5905, metadata !760) #11, !dbg !5955
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5910, metadata !760) #11, !dbg !5957
	tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !5911, metadata !760) #11, !dbg !5958
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5912, metadata !760) #11, !dbg !5959
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5913, metadata !760) #11, !dbg !5960
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i64 0, i64 0), i32 5) #11, !dbg !5961
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #11, !dbg !5962
	%13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #11, !dbg !5963
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #11, !dbg !5964
	%14 = load volatile i32, i32* @exit_failure, align 4, !dbg !5965, !tbaa !937
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.131, i64 0, i64 0), i32 5) #11, !dbg !5966
	%16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #11, !dbg !5967
	%17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #11, !dbg !5968
	tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #11, !dbg !5969
	br label %18, !dbg !5970
	ret i32 %5, !dbg !5971
}
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !5972 {
	%6 = alloca i8*, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5978, metadata !760), !dbg !5996
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !5979, metadata !760), !dbg !5997
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5980, metadata !760), !dbg !5998
	tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !5981, metadata !760), !dbg !5999
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5982, metadata !760), !dbg !6000
	%7 = bitcast i8** %6 to i8*, !dbg !6001
	call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11, !dbg !6001
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5986, metadata !760), !dbg !6002
	%8 = icmp ult i32 %2, 37, !dbg !6003
	br i1 %8, label %10, label %9, !dbg !6003
	tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.135, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #14, !dbg !6006
	unreachable, !dbg !6006
	%11 = icmp ne i8** %1, null, !dbg !6008
	tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !5984, metadata !760), !dbg !6009
	%12 = tail call i32* @__errno_location() #1, !dbg !6010
	store i32 0, i32* %12, align 4, !dbg !6011, !tbaa !937
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5987, metadata !760), !dbg !6012
	%13 = tail call i16** @__ctype_b_loc() #1, !dbg !6013
	%14 = load i16*, i16** %13, align 8, !tbaa !768
	br label %15, !dbg !6015
	%16 = phi i8* [ %0, %10 ], [ %23, %15 ]
	%17 = load i8, i8* %16, align 1, !tbaa !959
	tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !5990, metadata !760), !dbg !6016
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5987, metadata !760), !dbg !6012
	%18 = zext i8 %17 to i64, !dbg !6013
	%19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !6013
	%20 = load i16, i16* %19, align 2, !dbg !6013, !tbaa !2391
	%21 = and i16 %20, 8192, !dbg !6013
	%22 = icmp eq i16 %21, 0, !dbg !6017
	%23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !6018
	tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !5987, metadata !760), !dbg !6012
	br i1 %22, label %24, label %15, !dbg !6017, !llvm.loop !6019
	%25 = select i1 %11, i8** %1, i8** %6, !dbg !6008
	%26 = icmp eq i8 %17, 45, !dbg !6021
	br i1 %26, label %265, label %27
	%28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #11, !dbg !6023
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5985, metadata !760), !dbg !6024
	%29 = load i8*, i8** %25, align 8, !dbg !6025, !tbaa !768
	%30 = icmp eq i8* %29, %0, !dbg !6027
	br i1 %30, label %31, label %40, !dbg !6028
	%32 = icmp eq i8* %4, null, !dbg !6029
	br i1 %32, label %265, label %33, !dbg !6032
	%34 = load i8, i8* %0, align 1, !dbg !6033, !tbaa !959
	%35 = icmp eq i8 %34, 0, !dbg !6033
	br i1 %35, label %265, label %36, !dbg !6035
	%37 = sext i8 %34 to i32, !dbg !6033
	%38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #11, !dbg !6036
	%39 = icmp eq i8* %38, null, !dbg !6036
	br i1 %39, label %265, label %47, !dbg !6038
	%41 = load i32, i32* %12, align 4, !dbg !6040, !tbaa !937
	switch i32 %41, label %265 [
		i32 0, label %43
		i32 34, label %42
	], !dbg !6042
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5986, metadata !760), !dbg !6002
	br label %43, !dbg !6043
	%44 = phi i32 [ 1, %42 ], [ 0, %40 ]
	tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !5986, metadata !760), !dbg !6002
	%45 = icmp eq i8* %4, null, !dbg !6045
	br i1 %45, label %46, label %47, !dbg !6047
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5985, metadata !760), !dbg !6024
	store i64 %28, i64* %3, align 8, !dbg !6048, !tbaa !979
	br label %265, !dbg !6050
	%48 = phi i32 [ %44, %43 ], [ 0, %36 ]
	%49 = phi i64 [ %28, %43 ], [ 1, %36 ]
	%50 = load i8, i8* %29, align 1, !dbg !6051, !tbaa !959
	%51 = icmp eq i8 %50, 0, !dbg !6052
	br i1 %51, label %262, label %52, !dbg !6053
	%53 = sext i8 %50 to i32, !dbg !6051
	tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !5991, metadata !760), !dbg !6054
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5994, metadata !760), !dbg !6055
	%54 = tail call i8* @strchr(i8* nonnull %4, i32 %53) #11, !dbg !6056
	%55 = icmp eq i8* %54, null, !dbg !6056
	br i1 %55, label %56, label %58, !dbg !6059
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5985, metadata !760), !dbg !6024
	store i64 %49, i64* %3, align 8, !dbg !6061, !tbaa !979
	%57 = or i32 %48, 2, !dbg !6063
	br label %265, !dbg !6064
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
	], !dbg !6065
	%60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #11, !dbg !6066
	%61 = icmp eq i8* %60, null, !dbg !6066
	br i1 %61, label %72, label %62, !dbg !6070
	%63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !6072
	%64 = load i8, i8* %63, align 1, !dbg !6072, !tbaa !959
	%65 = sext i8 %64 to i32, !dbg !6072
	switch i32 %65, label %72 [
		i32 105, label %66
		i32 66, label %71
		i32 68, label %71
	], !dbg !6073
	%67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !6074
	%68 = load i8, i8* %67, align 1, !dbg !6074, !tbaa !959
	%69 = icmp eq i8 %68, 66, !dbg !6077
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5994, metadata !760), !dbg !6055
	%70 = select i1 %69, i64 3, i64 1, !dbg !6078
	br label %72, !dbg !6078
	tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !5991, metadata !760), !dbg !6054
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5994, metadata !760), !dbg !6055
	br label %72, !dbg !6079
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
	], !dbg !6080
	tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !6081, metadata !760), !dbg !6087
	%76 = icmp ugt i64 %49, 36028797018963967, !dbg !6090
	%77 = shl i64 %49, 9, !dbg !6092
	%78 = select i1 %76, i64 -1, i64 %77, !dbg !6093
	%79 = zext i1 %76 to i32, !dbg !6093
	tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !5995, metadata !760), !dbg !6094
	br label %253, !dbg !6095
	tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !6081, metadata !760), !dbg !6096
	%81 = icmp ugt i64 %49, 18014398509481983, !dbg !6098
	%82 = shl i64 %49, 10, !dbg !6099
	%83 = select i1 %81, i64 -1, i64 %82, !dbg !6100
	%84 = zext i1 %81 to i32, !dbg !6100
	tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !5995, metadata !760), !dbg !6094
	br label %253, !dbg !6101
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6110
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6112
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6112
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6110
	%86 = udiv i64 -1, %73
	%87 = icmp ult i64 %86, %49, !dbg !6113
	%88 = mul i64 %49, %73, !dbg !6115
	%89 = select i1 %87, i64 -1, i64 %88, !dbg !6116
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	%90 = icmp ult i64 %86, %89, !dbg !6113
	%91 = mul i64 %89, %73, !dbg !6115
	%92 = select i1 %90, i64 -1, i64 %91, !dbg !6116
	%93 = or i1 %90, %87, !dbg !6117
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	%94 = icmp ult i64 %86, %92, !dbg !6113
	%95 = mul i64 %92, %73, !dbg !6115
	%96 = select i1 %94, i64 -1, i64 %95, !dbg !6116
	%97 = or i1 %94, %93, !dbg !6117
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	%98 = icmp ult i64 %86, %96, !dbg !6113
	%99 = mul i64 %96, %73, !dbg !6115
	%100 = select i1 %98, i64 -1, i64 %99, !dbg !6116
	%101 = or i1 %98, %97, !dbg !6117
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	%102 = icmp ult i64 %86, %100, !dbg !6113
	%103 = mul i64 %100, %73, !dbg !6115
	%104 = select i1 %102, i64 -1, i64 %103, !dbg !6116
	%105 = or i1 %102, %101, !dbg !6117
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	%106 = icmp ult i64 %86, %104, !dbg !6113
	%107 = mul i64 %104, %73, !dbg !6115
	%108 = select i1 %106, i64 -1, i64 %107, !dbg !6116
	%109 = or i1 %106, %105, !dbg !6117
	%110 = zext i1 %109 to i32, !dbg !6117
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6110
	br label %253, !dbg !6094
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6118
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6120
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6120
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6118
	%112 = udiv i64 -1, %73
	%113 = icmp ult i64 %112, %49, !dbg !6121
	%114 = mul i64 %49, %73, !dbg !6123
	%115 = select i1 %113, i64 -1, i64 %114, !dbg !6124
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6102, metadata !760), !dbg !6118
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6102, metadata !760), !dbg !6118
	%116 = icmp ult i64 %112, %115, !dbg !6121
	%117 = mul i64 %115, %73, !dbg !6123
	%118 = select i1 %116, i64 -1, i64 %117, !dbg !6124
	%119 = or i1 %116, %113, !dbg !6125
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6102, metadata !760), !dbg !6118
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6102, metadata !760), !dbg !6118
	%120 = icmp ult i64 %112, %118, !dbg !6121
	%121 = mul i64 %118, %73, !dbg !6123
	%122 = select i1 %120, i64 -1, i64 %121, !dbg !6124
	%123 = or i1 %120, %119, !dbg !6125
	%124 = zext i1 %123 to i32, !dbg !6125
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6102, metadata !760), !dbg !6118
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6102, metadata !760), !dbg !6118
	br label %253, !dbg !6094
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6102, metadata !760), !dbg !6126
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6128
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6128
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6102, metadata !760), !dbg !6126
	%126 = udiv i64 -1, %73
	%127 = icmp ult i64 %126, %49, !dbg !6129
	%128 = mul i64 %49, %73, !dbg !6131
	%129 = select i1 %127, i64 -1, i64 %128, !dbg !6132
	%130 = zext i1 %127 to i32, !dbg !6132
	tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !6109, metadata !760), !dbg !6128
	tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !6109, metadata !760), !dbg !6128
	br label %253, !dbg !6094
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6102, metadata !760), !dbg !6133
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6135
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6135
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6102, metadata !760), !dbg !6133
	%132 = udiv i64 -1, %73
	%133 = icmp ult i64 %132, %49, !dbg !6136
	%134 = mul i64 %49, %73, !dbg !6138
	%135 = select i1 %133, i64 -1, i64 %134, !dbg !6139
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6102, metadata !760), !dbg !6133
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6102, metadata !760), !dbg !6133
	%136 = icmp ult i64 %132, %135, !dbg !6136
	%137 = mul i64 %135, %73, !dbg !6138
	%138 = select i1 %136, i64 -1, i64 %137, !dbg !6139
	%139 = or i1 %136, %133, !dbg !6140
	%140 = zext i1 %139 to i32, !dbg !6140
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6102, metadata !760), !dbg !6133
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6102, metadata !760), !dbg !6133
	br label %253, !dbg !6094
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6141
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6143
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6143
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6102, metadata !760), !dbg !6141
	%142 = udiv i64 -1, %73
	%143 = icmp ult i64 %142, %49, !dbg !6144
	%144 = mul i64 %49, %73, !dbg !6146
	%145 = select i1 %143, i64 -1, i64 %144, !dbg !6147
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	%146 = icmp ult i64 %142, %145, !dbg !6144
	%147 = mul i64 %145, %73, !dbg !6146
	%148 = select i1 %146, i64 -1, i64 %147, !dbg !6147
	%149 = or i1 %146, %143, !dbg !6148
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	%150 = icmp ult i64 %142, %148, !dbg !6144
	%151 = mul i64 %148, %73, !dbg !6146
	%152 = select i1 %150, i64 -1, i64 %151, !dbg !6147
	%153 = or i1 %150, %149, !dbg !6148
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	%154 = icmp ult i64 %142, %152, !dbg !6144
	%155 = mul i64 %152, %73, !dbg !6146
	%156 = select i1 %154, i64 -1, i64 %155, !dbg !6147
	%157 = or i1 %154, %153, !dbg !6148
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	%158 = icmp ult i64 %142, %156, !dbg !6144
	%159 = mul i64 %156, %73, !dbg !6146
	%160 = select i1 %158, i64 -1, i64 %159, !dbg !6147
	%161 = or i1 %158, %157, !dbg !6148
	%162 = zext i1 %161 to i32, !dbg !6148
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6141
	br label %253, !dbg !6094
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6149
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6151
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6151
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6102, metadata !760), !dbg !6149
	%164 = udiv i64 -1, %73
	%165 = icmp ult i64 %164, %49, !dbg !6152
	%166 = mul i64 %49, %73, !dbg !6154
	%167 = select i1 %165, i64 -1, i64 %166, !dbg !6155
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6149
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6149
	%168 = icmp ult i64 %164, %167, !dbg !6152
	%169 = mul i64 %167, %73, !dbg !6154
	%170 = select i1 %168, i64 -1, i64 %169, !dbg !6155
	%171 = or i1 %168, %165, !dbg !6156
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6149
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6149
	%172 = icmp ult i64 %164, %170, !dbg !6152
	%173 = mul i64 %170, %73, !dbg !6154
	%174 = select i1 %172, i64 -1, i64 %173, !dbg !6155
	%175 = or i1 %172, %171, !dbg !6156
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6149
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6149
	%176 = icmp ult i64 %164, %174, !dbg !6152
	%177 = mul i64 %174, %73, !dbg !6154
	%178 = select i1 %176, i64 -1, i64 %177, !dbg !6155
	%179 = or i1 %176, %175, !dbg !6156
	%180 = zext i1 %179 to i32, !dbg !6156
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6149
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6102, metadata !760), !dbg !6149
	br label %253, !dbg !6094
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6081, metadata !760), !dbg !6157
	%182 = icmp slt i64 %49, 0, !dbg !6159
	%183 = shl i64 %49, 1, !dbg !6160
	%184 = select i1 %182, i64 -1, i64 %183, !dbg !6161
	%185 = lshr i64 %49, 63, !dbg !6161
	%186 = trunc i64 %185 to i32, !dbg !6161
	tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !5995, metadata !760), !dbg !6094
	br label %253, !dbg !6162
	tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6165
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6165
	tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !6102, metadata !760), !dbg !6163
	%188 = udiv i64 -1, %73
	%189 = icmp ult i64 %188, %49, !dbg !6166
	%190 = mul i64 %49, %73, !dbg !6168
	%191 = select i1 %189, i64 -1, i64 %190, !dbg !6169
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	%192 = icmp ult i64 %188, %191, !dbg !6166
	%193 = mul i64 %191, %73, !dbg !6168
	%194 = select i1 %192, i64 -1, i64 %193, !dbg !6169
	%195 = or i1 %192, %189, !dbg !6170
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	%196 = icmp ult i64 %188, %194, !dbg !6166
	%197 = mul i64 %194, %73, !dbg !6168
	%198 = select i1 %196, i64 -1, i64 %197, !dbg !6169
	%199 = or i1 %196, %195, !dbg !6170
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	%200 = icmp ult i64 %188, %198, !dbg !6166
	%201 = mul i64 %198, %73, !dbg !6168
	%202 = select i1 %200, i64 -1, i64 %201, !dbg !6169
	%203 = or i1 %200, %199, !dbg !6170
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	%204 = icmp ult i64 %188, %202, !dbg !6166
	%205 = mul i64 %202, %73, !dbg !6168
	%206 = select i1 %204, i64 -1, i64 %205, !dbg !6169
	%207 = or i1 %204, %203, !dbg !6170
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	%208 = icmp ult i64 %188, %206, !dbg !6166
	%209 = mul i64 %206, %73, !dbg !6168
	%210 = select i1 %208, i64 -1, i64 %209, !dbg !6169
	%211 = or i1 %208, %207, !dbg !6170
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	%212 = icmp ult i64 %188, %210, !dbg !6166
	%213 = mul i64 %210, %73, !dbg !6168
	%214 = select i1 %212, i64 -1, i64 %213, !dbg !6169
	%215 = or i1 %212, %211, !dbg !6170
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	%216 = icmp ult i64 %188, %214, !dbg !6166
	%217 = mul i64 %214, %73, !dbg !6168
	%218 = select i1 %216, i64 -1, i64 %217, !dbg !6169
	%219 = or i1 %216, %215, !dbg !6170
	%220 = zext i1 %219 to i32, !dbg !6170
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6163
	br label %253, !dbg !6094
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6171
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6173
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6109, metadata !760), !dbg !6173
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6102, metadata !760), !dbg !6171
	%222 = udiv i64 -1, %73
	%223 = icmp ult i64 %222, %49, !dbg !6174
	%224 = mul i64 %49, %73, !dbg !6176
	%225 = select i1 %223, i64 -1, i64 %224, !dbg !6177
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	%226 = icmp ult i64 %222, %225, !dbg !6174
	%227 = mul i64 %225, %73, !dbg !6176
	%228 = select i1 %226, i64 -1, i64 %227, !dbg !6177
	%229 = or i1 %226, %223, !dbg !6178
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	%230 = icmp ult i64 %222, %228, !dbg !6174
	%231 = mul i64 %228, %73, !dbg !6176
	%232 = select i1 %230, i64 -1, i64 %231, !dbg !6177
	%233 = or i1 %230, %229, !dbg !6178
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	%234 = icmp ult i64 %222, %232, !dbg !6174
	%235 = mul i64 %232, %73, !dbg !6176
	%236 = select i1 %234, i64 -1, i64 %235, !dbg !6177
	%237 = or i1 %234, %233, !dbg !6178
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	%238 = icmp ult i64 %222, %236, !dbg !6174
	%239 = mul i64 %236, %73, !dbg !6176
	%240 = select i1 %238, i64 -1, i64 %239, !dbg !6177
	%241 = or i1 %238, %237, !dbg !6178
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	%242 = icmp ult i64 %222, %240, !dbg !6174
	%243 = mul i64 %240, %73, !dbg !6176
	%244 = select i1 %242, i64 -1, i64 %243, !dbg !6177
	%245 = or i1 %242, %241, !dbg !6178
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	%246 = icmp ult i64 %222, %244, !dbg !6174
	%247 = mul i64 %244, %73, !dbg !6176
	%248 = select i1 %246, i64 -1, i64 %247, !dbg !6177
	%249 = or i1 %246, %245, !dbg !6178
	%250 = zext i1 %249 to i32, !dbg !6178
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6102, metadata !760), !dbg !6171
	br label %253, !dbg !6094
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5985, metadata !760), !dbg !6024
	store i64 %49, i64* %3, align 8, !dbg !6179, !tbaa !979
	%252 = or i32 %48, 2, !dbg !6180
	br label %265, !dbg !6181
	%254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
	%255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
	tail call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !5995, metadata !760), !dbg !6094
	%256 = or i32 %255, %48, !dbg !6182
	tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !5986, metadata !760), !dbg !6002
	%257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !6183
	store i8* %257, i8** %25, align 8, !dbg !6183, !tbaa !768
	%258 = load i8, i8* %257, align 1, !dbg !6184, !tbaa !959
	%259 = icmp eq i8 %258, 0, !dbg !6184
	%260 = or i32 %256, 2, !dbg !6186
	tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !5986, metadata !760), !dbg !6002
	%261 = select i1 %259, i32 %256, i32 %260, !dbg !6187
	tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !5986, metadata !760), !dbg !6002
	tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !5986, metadata !760), !dbg !6002
	br label %262
	%263 = phi i64 [ %49, %47 ], [ %254, %253 ]
	%264 = phi i32 [ %48, %47 ], [ %261, %253 ]
	tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !5986, metadata !760), !dbg !6002
	tail call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !5985, metadata !760), !dbg !6024
	store i64 %263, i64* %3, align 8, !dbg !6188, !tbaa !979
	br label %265, !dbg !6189
	%266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
	call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11, !dbg !6190
	ret i32 %266, !dbg !6190
}
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2
declare i8* @strchr(i8*, i32) local_unnamed_addr #4
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !6191 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !6194, metadata !760), !dbg !6200
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6195, metadata !760), !dbg !6201
	%3 = icmp eq i64 %0, 0, !dbg !6202
	%4 = icmp eq i64 %1, 0, !dbg !6203
	%5 = or i1 %3, %4, !dbg !6205
	br i1 %5, label %12, label %6, !dbg !6205
	%7 = mul i64 %1, %0, !dbg !6206
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !6197, metadata !760), !dbg !6207
	%8 = udiv i64 %7, %1, !dbg !6208
	%9 = icmp eq i64 %8, %0, !dbg !6210
	br i1 %9, label %12, label %10, !dbg !6211
	%11 = tail call i32* @__errno_location() #1, !dbg !6212
	store i32 12, i32* %11, align 4, !dbg !6214, !tbaa !937
	br label %16
	%13 = phi i64 [ 1, %2 ], [ %1, %6 ]
	%14 = phi i64 [ 1, %2 ], [ %0, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !6194, metadata !760), !dbg !6200
	tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !6195, metadata !760), !dbg !6201
	%15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !6215
	tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !6196, metadata !760), !dbg !6216
	br label %16, !dbg !6217
	%17 = phi i8* [ %15, %12 ], [ null, %10 ]
	ret i8* %17, !dbg !6218
}
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !6219 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6264, metadata !760), !dbg !6268
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6265, metadata !760), !dbg !6269
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6267, metadata !760), !dbg !6270
	%2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !6271
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6266, metadata !760), !dbg !6272
	%3 = icmp slt i32 %2, 0, !dbg !6273
	br i1 %3, label %4, label %6, !dbg !6275
	%5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6276
	br label %24, !dbg !6277
	%7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !6278
	%8 = icmp eq i32 %7, 0, !dbg !6278
	br i1 %8, label %13, label %9, !dbg !6280
	%10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !6281
	%11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !6283
	%12 = icmp eq i64 %11, -1, !dbg !6285
	br i1 %12, label %16, label %13, !dbg !6286
	%14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !6287
	%15 = icmp eq i32 %14, 0, !dbg !6287
	br i1 %15, label %16, label %18, !dbg !6288
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6265, metadata !760), !dbg !6269
	%17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6290
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6267, metadata !760), !dbg !6270
	br label %24, !dbg !6291
	%19 = tail call i32* @__errno_location() #1, !dbg !6292
	%20 = load i32, i32* %19, align 4, !dbg !6292, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6265, metadata !760), !dbg !6269
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6265, metadata !760), !dbg !6269
	%21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6290
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6267, metadata !760), !dbg !6270
	%22 = icmp eq i32 %20, 0, !dbg !6293
	br i1 %22, label %24, label %23, !dbg !6291
	store i32 %20, i32* %19, align 4, !dbg !6295, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !6267, metadata !760), !dbg !6270
	br label %24, !dbg !6297
	%25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
	ret i32 %25, !dbg !6298
}
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !308 {
	%3 = alloca [1 x %struct.__va_list_tag], align 16
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !316, metadata !760), !dbg !6299
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !317, metadata !760), !dbg !6300
	%4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !6301
	call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11, !dbg !6301
	tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !318, metadata !760), !dbg !6302
	tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !331, metadata !760), !dbg !6303
	call void @llvm.va_start(i8* nonnull %4), !dbg !6304
	%5 = icmp eq i32 %1, 1030, !dbg !6305
	%6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
	%7 = load i32, i32* %6, align 16
	%8 = icmp ult i32 %7, 41
	br i1 %5, label %9, label %59, !dbg !6305
	br i1 %8, label %10, label %16, !dbg !6306
	%11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !6307
	%12 = load i8*, i8** %11, align 16, !dbg !6307
	%13 = sext i32 %7 to i64, !dbg !6307
	%14 = getelementptr i8, i8* %12, i64 %13, !dbg !6307
	%15 = add i32 %7, 8, !dbg !6307
	store i32 %15, i32* %6, align 16, !dbg !6307
	br label %20, !dbg !6307
	%17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !6309
	%18 = load i8*, i8** %17, align 8, !dbg !6309
	%19 = getelementptr i8, i8* %18, i64 8, !dbg !6309
	store i8* %19, i8** %17, align 8, !dbg !6309
	br label %20, !dbg !6309
	%21 = phi i8* [ %14, %10 ], [ %18, %16 ]
	%22 = bitcast i8* %21 to i32*, !dbg !6311
	%23 = load i32, i32* %22, align 4, !dbg !6311
	call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !332, metadata !760), !dbg !6313
	%24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !6314, !tbaa !937
	%25 = icmp sgt i32 %24, -1, !dbg !6316
	br i1 %25, label %26, label %39, !dbg !6317
	%27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11, !dbg !6318
	call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !331, metadata !760), !dbg !6303
	%28 = icmp sgt i32 %27, -1, !dbg !6320
	br i1 %28, label %36, label %29, !dbg !6322
	%30 = tail call i32* @__errno_location() #1, !dbg !6323
	%31 = load i32, i32* %30, align 4, !dbg !6323, !tbaa !937
	%32 = icmp eq i32 %31, 22, !dbg !6325
	br i1 %32, label %33, label %36, !dbg !6326
	%34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !6328
	call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !331, metadata !760), !dbg !6303
	%35 = icmp slt i32 %34, 0, !dbg !6330
	br i1 %35, label %75, label %36, !dbg !6332
	%37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
	%38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
	call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !331, metadata !760), !dbg !6303
	store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !937
	br label %42, !dbg !6333
	%40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !6334
	call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !331, metadata !760), !dbg !6303
	%41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
	br label %42
	%43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !6335
	%44 = phi i32 [ %37, %36 ], [ %40, %39 ]
	call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !331, metadata !760), !dbg !6303
	%45 = icmp sgt i32 %44, -1, !dbg !6337
	%46 = icmp eq i32 %43, -1, !dbg !6338
	%47 = and i1 %45, %46, !dbg !6339
	br i1 %47, label %48, label %75, !dbg !6339
	%49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11, !dbg !6340
	call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !335, metadata !760), !dbg !6341
	%50 = icmp slt i32 %49, 0, !dbg !6342
	br i1 %50, label %55, label %51, !dbg !6343
	%52 = or i32 %49, 1, !dbg !6344
	%53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #11, !dbg !6346
	%54 = icmp eq i32 %53, -1, !dbg !6347
	br i1 %54, label %55, label %75, !dbg !6348
	%56 = tail call i32* @__errno_location() #1, !dbg !6350
	%57 = load i32, i32* %56, align 4, !dbg !6350, !tbaa !937
	call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !338, metadata !760), !dbg !6351
	%58 = call i32 @close(i32 %44) #11, !dbg !6352
	store i32 %57, i32* %56, align 4, !dbg !6353, !tbaa !937
	call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !331, metadata !760), !dbg !6303
	br label %75, !dbg !6354
	br i1 %8, label %60, label %66, !dbg !6355
	%61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !6356
	%62 = load i8*, i8** %61, align 16, !dbg !6356
	%63 = sext i32 %7 to i64, !dbg !6356
	%64 = getelementptr i8, i8* %62, i64 %63, !dbg !6356
	%65 = add i32 %7, 8, !dbg !6356
	store i32 %65, i32* %6, align 16, !dbg !6356
	br label %70, !dbg !6356
	%67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !6358
	%68 = load i8*, i8** %67, align 8, !dbg !6358
	%69 = getelementptr i8, i8* %68, i64 8, !dbg !6358
	store i8* %69, i8** %67, align 8, !dbg !6358
	br label %70, !dbg !6358
	%71 = phi i8* [ %64, %60 ], [ %68, %66 ]
	%72 = bitcast i8* %71 to i8**, !dbg !6360
	%73 = load i8*, i8** %72, align 8, !dbg !6360
	call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !341, metadata !760), !dbg !6362
	%74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #11, !dbg !6363
	call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !331, metadata !760), !dbg !6303
	br label %75
	%76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
	call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !331, metadata !760), !dbg !6303
	call void @llvm.va_end(i8* nonnull %4), !dbg !6364
	call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11, !dbg !6365
	ret i32 %76, !dbg !6366
}
declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !6367 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6412, metadata !760), !dbg !6413
	%2 = icmp eq %struct._IO_FILE* %0, null, !dbg !6414
	br i1 %2, label %6, label %3, !dbg !6416
	%4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !6417
	%5 = icmp eq i32 %4, 0, !dbg !6417
	br i1 %5, label %6, label %8, !dbg !6419
	%7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !6421
	br label %17, !dbg !6422
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6423, metadata !760) #11, !dbg !6428
	%9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6430
	%10 = load i32, i32* %9, align 8, !dbg !6430, !tbaa !2263
	%11 = and i32 %10, 256, !dbg !6432
	%12 = icmp eq i32 %11, 0, !dbg !6432
	br i1 %12, label %15, label %13, !dbg !6433
	%14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !6434
	br label %15, !dbg !6434
	%16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !6435
	br label %17, !dbg !6436
	%18 = phi i32 [ %7, %6 ], [ %16, %15 ]
	ret i32 %18, !dbg !6437
}
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !6438 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6483, metadata !760), !dbg !6489
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6484, metadata !760), !dbg !6490
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6485, metadata !760), !dbg !6491
	%4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !6492
	%5 = load i8*, i8** %4, align 8, !dbg !6492, !tbaa !3256
	%6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !6493
	%7 = load i8*, i8** %6, align 8, !dbg !6493, !tbaa !3255
	%8 = icmp eq i8* %5, %7, !dbg !6494
	br i1 %8, label %9, label %28, !dbg !6495
	%10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !6496
	%11 = load i8*, i8** %10, align 8, !dbg !6496, !tbaa !2652
	%12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !6498
	%13 = load i8*, i8** %12, align 8, !dbg !6498, !tbaa !6499
	%14 = icmp eq i8* %11, %13, !dbg !6500
	br i1 %14, label %15, label %28, !dbg !6501
	%16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !6502
	%17 = load i8*, i8** %16, align 8, !dbg !6502, !tbaa !6503
	%18 = icmp eq i8* %17, null, !dbg !6504
	br i1 %18, label %19, label %28, !dbg !6505
	%20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !6507
	%21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !6508
	tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !6486, metadata !760), !dbg !6510
	%22 = icmp eq i64 %21, -1, !dbg !6511
	br i1 %22, label %30, label %23, !dbg !6513
	%24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6514
	%25 = load i32, i32* %24, align 8, !dbg !6515, !tbaa !2263
	%26 = and i32 %25, -17, !dbg !6515
	store i32 %26, i32* %24, align 8, !dbg !6515, !tbaa !2263
	%27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !6516
	store i64 %21, i64* %27, align 8, !dbg !6517, !tbaa !6518
	br label %30, !dbg !6519
	%29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !6520
	br label %30, !dbg !6521
	%31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
	ret i32 %31, !dbg !6522
}
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !6523 {
	%5 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !6540, metadata !760), !dbg !6549
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !6541, metadata !760), !dbg !6550
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !6542, metadata !760), !dbg !6551
	tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !6543, metadata !760), !dbg !6552
	%6 = bitcast i32* %5 to i8*, !dbg !6553
	call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !6553
	%7 = icmp eq i32* %0, null, !dbg !6554
	tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !6540, metadata !760), !dbg !6549
	%8 = select i1 %7, i32* %5, i32* %0, !dbg !6556
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !6540, metadata !760), !dbg !6549
	%9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !6557
	call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !6544, metadata !760), !dbg !6558
	%10 = icmp ugt i64 %9, -3, !dbg !6559
	%11 = icmp ne i64 %2, 0, !dbg !6560
	%12 = and i1 %11, %10, !dbg !6562
	br i1 %12, label %13, label %18, !dbg !6562
	%14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !6563
	br i1 %14, label %18, label %15, !dbg !6565
	%16 = load i8, i8* %1, align 1, !dbg !6567, !tbaa !959
	call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !6546, metadata !760), !dbg !6568
	%17 = zext i8 %16 to i32, !dbg !6569
	store i32 %17, i32* %8, align 4, !dbg !6570, !tbaa !937
	br label %18
	%19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
	call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !6571
	ret i64 %19, !dbg !6571
}
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !6572 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6617, metadata !760), !dbg !6622
	%2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !6623
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6624, metadata !760), !dbg !6627
	%3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6629
	%4 = load i32, i32* %3, align 8, !dbg !6629, !tbaa !2263
	%5 = and i32 %4, 32, !dbg !6629
	%6 = icmp eq i32 %5, 0, !dbg !6630
	%7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !6631
	%8 = icmp ne i32 %7, 0, !dbg !6632
	br i1 %6, label %9, label %19, !dbg !6633
	%10 = xor i1 %8, true, !dbg !6635
	%11 = icmp ne i64 %2, 0, !dbg !6635
	%12 = or i1 %11, %10, !dbg !6635
	%13 = sext i1 %8 to i32, !dbg !6635
	br i1 %12, label %22, label %14, !dbg !6635
	%15 = tail call i32* @__errno_location() #1, !dbg !6637
	%16 = load i32, i32* %15, align 4, !dbg !6637, !tbaa !937
	%17 = icmp ne i32 %16, 9, !dbg !6639
	%18 = sext i1 %17 to i32, !dbg !6639
	br label %22, !dbg !6639
	br i1 %8, label %22, label %20, !dbg !6641
	%21 = tail call i32* @__errno_location() #1, !dbg !6643
	store i32 0, i32* %21, align 4, !dbg !6645, !tbaa !937
	br label %22, !dbg !6643
	%23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
	ret i32 %23, !dbg !6646
}
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2
define i8* @locale_charset() local_unnamed_addr #6 !dbg !6647 {
	%1 = alloca [51 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !6659, metadata !760), !dbg !6733
	%2 = alloca [51 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !6726, metadata !760), !dbg !6735
	%3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !6736
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !6651, metadata !760), !dbg !6737
	%4 = icmp eq i8* %3, null, !dbg !6738
	%5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), i8* %3, !dbg !6740
	tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !6651, metadata !760), !dbg !6737
	%6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !6741, !tbaa !768
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !6673, metadata !760) #11, !dbg !6742
	%7 = icmp eq i8* %6, null, !dbg !6743
	br i1 %7, label %8, label %127, !dbg !6744
	%9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.153, i64 0, i64 0)) #11, !dbg !6745
	tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !6674, metadata !760) #11, !dbg !6746
	%10 = icmp eq i8* %9, null, !dbg !6747
	br i1 %10, label %14, label %11, !dbg !6749
	%12 = load i8, i8* %9, align 1, !dbg !6750, !tbaa !959
	%13 = icmp eq i8 %12, 0, !dbg !6752
	br i1 %13, label %14, label %15, !dbg !6753
	br label %15, !dbg !6755
	%16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.154, i64 0, i64 0), %14 ], [ %9, %11 ]
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !6674, metadata !760) #11, !dbg !6746
	%17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !6756
	tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !6677, metadata !760) #11, !dbg !6757
	tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !6679, metadata !760) #11, !dbg !6758
	%18 = icmp eq i64 %17, 0, !dbg !6759
	br i1 %18, label %24, label %19, !dbg !6760
	%20 = add i64 %17, -1, !dbg !6761
	%21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !6761
	%22 = load i8, i8* %21, align 1, !dbg !6761, !tbaa !959
	%23 = icmp ne i8 %22, 47, !dbg !6763
	br label %24
	%25 = phi i1 [ false, %15 ], [ %23, %19 ]
	%26 = zext i1 %25 to i64, !dbg !6764
	%27 = add i64 %17, 14, !dbg !6765
	%28 = add i64 %27, %26, !dbg !6766
	%29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !6767
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !6676, metadata !760) #11, !dbg !6768
	%30 = icmp eq i8* %29, null, !dbg !6769
	br i1 %30, label %125, label %31, !dbg !6769
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !6770
	%32 = getelementptr inbounds i8, i8* %29, i64 %17
	br i1 %25, label %33, label %35, !dbg !6773
	store i8 47, i8* %32, align 1, !dbg !6774, !tbaa !959
	%34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6776
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.155, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !6777
	br label %37, !dbg !6778
	%36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6776
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.155, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !6777
	br label %37, !dbg !6778
	%38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !6779
	tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !6681, metadata !760) #11, !dbg !6780
	%39 = icmp slt i32 %38, 0, !dbg !6781
	br i1 %39, label %123, label %40, !dbg !6782
	%41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.156, i64 0, i64 0)) #11, !dbg !6783
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6682, metadata !760) #11, !dbg !6784
	%42 = icmp eq %struct._IO_FILE* %41, null, !dbg !6785
	br i1 %42, label %48, label %43, !dbg !6786
	%44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
	%45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
	%46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
	%47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
	br label %50, !dbg !6787
	%49 = tail call i32 @close(i32 %38) #11, !dbg !6788
	br label %123, !dbg !6790
	%51 = phi i64 [ %112, %111 ], [ 0, %43 ]
	%52 = phi i8* [ %113, %111 ], [ null, %43 ]
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6723, metadata !760) #11, !dbg !6787
	call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !6724, metadata !760) #11, !dbg !6791
	call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !6792
	call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !6793
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6794, metadata !760) #11, !dbg !6799
	%53 = load i8*, i8** %46, align 8, !dbg !6801, !tbaa !3255
	%54 = load i8*, i8** %47, align 8, !dbg !6801, !tbaa !3256
	%55 = icmp ult i8* %53, %54, !dbg !6801
	br i1 %55, label %58, label %56, !dbg !6801, !prof !2654
	%57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !6802
	br label %62, !dbg !6802
	%59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !6804
	store i8* %59, i8** %46, align 8, !dbg !6804, !tbaa !3255
	%60 = load i8, i8* %53, align 1, !dbg !6804, !tbaa !959
	%61 = zext i8 %60 to i32, !dbg !6804
	br label %62, !dbg !6804
	%63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !6806
	call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !6725, metadata !760) #11, !dbg !6808
	switch i32 %63, label %77 [
		i32 -1, label %115
		i32 32, label %111
		i32 10, label %111
		i32 9, label %111
		i32 35, label %64
	], !dbg !6809
	br label %65, !dbg !6810
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6794, metadata !760) #11, !dbg !6810
	%66 = load i8*, i8** %46, align 8, !dbg !6814, !tbaa !3255
	%67 = load i8*, i8** %47, align 8, !dbg !6814, !tbaa !3256
	%68 = icmp ult i8* %66, %67, !dbg !6814
	br i1 %68, label %71, label %69, !dbg !6814, !prof !2654
	%70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !6815
	br label %75, !dbg !6815
	%72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !6816
	store i8* %72, i8** %46, align 8, !dbg !6816, !tbaa !3255
	%73 = load i8, i8* %66, align 1, !dbg !6816, !tbaa !959
	%74 = zext i8 %73 to i32, !dbg !6816
	br label %75, !dbg !6816
	%76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !6817
	call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !6725, metadata !760) #11, !dbg !6808
	switch i32 %76, label %65 [
		i32 -1, label %114
		i32 10, label %110
	], !dbg !6818, !llvm.loop !6820
	%78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !6823
	%79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.157, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !6824
	%80 = icmp slt i32 %79, 2, !dbg !6826
	br i1 %80, label %115, label %81, !dbg !6827
	%82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !6828
	call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !6730, metadata !760) #11, !dbg !6829
	%83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !6830
	call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !6731, metadata !760) #11, !dbg !6831
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6732, metadata !760) #11, !dbg !6832
	%84 = icmp eq i64 %51, 0, !dbg !6833
	%85 = add i64 %82, 1
	%86 = add i64 %85, %83
	%87 = add i64 %86, 1
	br i1 %84, label %88, label %91, !dbg !6835
	call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !6724, metadata !760) #11, !dbg !6791
	%89 = add i64 %86, 2, !dbg !6836
	%90 = call noalias i8* @malloc(i64 %89) #11, !dbg !6838
	call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !6723, metadata !760) #11, !dbg !6787
	br label %95, !dbg !6839
	%92 = add i64 %87, %51, !dbg !6840
	call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !6724, metadata !760) #11, !dbg !6791
	%93 = add i64 %92, 1, !dbg !6842
	%94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !6843
	call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !6723, metadata !760) #11, !dbg !6787
	br label %95
	%96 = phi i64 [ %87, %88 ], [ %92, %91 ]
	%97 = phi i8* [ %90, %88 ], [ %94, %91 ]
	call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !6723, metadata !760) #11, !dbg !6787
	call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !6724, metadata !760) #11, !dbg !6791
	%98 = icmp eq i8* %97, null, !dbg !6844
	br i1 %98, label %99, label %100, !dbg !6846
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6724, metadata !760) #11, !dbg !6791
	call void @free(i8* %52) #11, !dbg !6847
	br label %116, !dbg !6849
	%101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !6850
	%102 = xor i64 %83, -1, !dbg !6851
	%103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !6851
	%104 = xor i64 %82, -1, !dbg !6852
	%105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !6852
	call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !6853, metadata !760) #11, !dbg !6862
	call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !6861, metadata !760) #11, !dbg !6862
	%106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !6864
	%107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !6865
	call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !6853, metadata !760) #11, !dbg !6866
	call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !6861, metadata !760) #11, !dbg !6866
	%108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !6868
	%109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !6869
	br label %111, !dbg !6870
	br label %111, !dbg !6787
	%112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
	%113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6723, metadata !760) #11, !dbg !6787
	call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6724, metadata !760) #11, !dbg !6791
	call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !6870
	call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !6870
	br label %50
	br label %116, !dbg !6787
	br label %116, !dbg !6787
	%117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
	%118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6723, metadata !760) #11, !dbg !6787
	call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6724, metadata !760) #11, !dbg !6791
	call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !6870
	call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !6870
	%119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !6871
	%120 = icmp eq i64 %117, 0, !dbg !6872
	br i1 %120, label %123, label %121, !dbg !6874
	%122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !6875
	store i8 0, i8* %122, align 1, !dbg !6877, !tbaa !959
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6673, metadata !760) #11, !dbg !6742
	br label %123
	%124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), %116 ]
	call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !6673, metadata !760) #11, !dbg !6742
	call void @free(i8* %29) #11, !dbg !6878
	br label %125
	%126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), %24 ]
	call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !6673, metadata !760) #11, !dbg !6742
	store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !6879, !tbaa !768
	br label %127, !dbg !6880
	%128 = phi i8* [ %6, %0 ], [ %126, %125 ]
	call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !6652, metadata !760), !dbg !6881
	%129 = load i8, i8* %128, align 1, !dbg !6882, !tbaa !959
	%130 = icmp eq i8 %129, 0, !dbg !6883
	br i1 %130, label %157, label %131, !dbg !6884
	br label %132, !dbg !6886
	%133 = phi i8 [ %154, %147 ], [ %129, %131 ]
	%134 = phi i8* [ %153, %147 ], [ %128, %131 ]
	%135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !6886
	%136 = icmp eq i32 %135, 0, !dbg !6887
	br i1 %136, label %143, label %137, !dbg !6888
	%138 = icmp eq i8 %133, 42, !dbg !6889
	br i1 %138, label %139, label %147, !dbg !6891
	%140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !6892
	%141 = load i8, i8* %140, align 1, !dbg !6892, !tbaa !959
	%142 = icmp eq i8 %141, 0, !dbg !6894
	br i1 %142, label %143, label %147, !dbg !6895
	%144 = call i64 @strlen(i8* %134) #13, !dbg !6897
	%145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !6899
	%146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !6900
	call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !6651, metadata !760), !dbg !6737
	br label %157, !dbg !6901
	%148 = call i64 @strlen(i8* %134) #13, !dbg !6902
	%149 = add i64 %148, 1, !dbg !6903
	%150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !6904
	call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !6652, metadata !760), !dbg !6881
	%151 = call i64 @strlen(i8* %150) #13, !dbg !6905
	%152 = add i64 %151, 1, !dbg !6906
	%153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !6907
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6652, metadata !760), !dbg !6881
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6652, metadata !760), !dbg !6881
	%154 = load i8, i8* %153, align 1, !dbg !6882, !tbaa !959
	%155 = icmp eq i8 %154, 0, !dbg !6883
	br i1 %155, label %156, label %132, !dbg !6884, !llvm.loop !6908
	br label %157, !dbg !6737
	%158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
	call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !6651, metadata !760), !dbg !6737
	%159 = load i8, i8* %158, align 1, !dbg !6911, !tbaa !959
	%160 = icmp eq i8 %159, 0, !dbg !6913
	%161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.158, i64 0, i64 0), i8* %158, !dbg !6914
	call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !6651, metadata !760), !dbg !6737
	ret i8* %161, !dbg !6915
}
declare i8* @nl_langinfo(i32) local_unnamed_addr #2
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4
declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2
define i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #6 !dbg !6916 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6919, metadata !760), !dbg !6928
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6920, metadata !760), !dbg !6929
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6921, metadata !760), !dbg !6930
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !6922, metadata !760), !dbg !6931
	%5 = icmp eq i64 %1, %3, !dbg !6932
	br i1 %5, label %6, label %11, !dbg !6933
	%7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #13, !dbg !6934
	%8 = icmp eq i32 %7, 0, !dbg !6936
	br i1 %8, label %9, label %11, !dbg !6937
	%10 = tail call i32* @__errno_location() #1, !dbg !6939
	store i32 0, i32* %10, align 4, !dbg !6941, !tbaa !937
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6923, metadata !760), !dbg !6942
	br label %45, !dbg !6943
	%12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !6944
	%13 = load i8, i8* %12, align 1, !dbg !6944, !tbaa !959
	tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !6924, metadata !760), !dbg !6945
	%14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !6946
	%15 = load i8, i8* %14, align 1, !dbg !6946, !tbaa !959
	tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !6927, metadata !760), !dbg !6947
	store i8 0, i8* %12, align 1, !dbg !6948, !tbaa !959
	store i8 0, i8* %14, align 1, !dbg !6949, !tbaa !959
	%16 = add i64 %1, 1, !dbg !6950
	%17 = add i64 %3, 1, !dbg !6951
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6952, metadata !760) #11, !dbg !6962
	tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !6955, metadata !760) #11, !dbg !6964
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6956, metadata !760) #11, !dbg !6965
	tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !6957, metadata !760) #11, !dbg !6966
	%18 = tail call i32* @__errno_location() #1, !dbg !6967
	br label %19, !dbg !6969
	%20 = phi i8* [ %2, %11 ], [ %38, %37 ]
	%21 = phi i64 [ %17, %11 ], [ %32, %37 ]
	%22 = phi i64 [ %16, %11 ], [ %31, %37 ]
	%23 = phi i8* [ %0, %11 ], [ %39, %37 ]
	tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !6952, metadata !760) #11, !dbg !6962
	tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !6955, metadata !760) #11, !dbg !6964
	tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !6957, metadata !760) #11, !dbg !6966
	tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !6956, metadata !760) #11, !dbg !6965
	store i32 0, i32* %18, align 4, !dbg !6970, !tbaa !937
	%24 = tail call i32 @strcoll(i8* %23, i8* %20) #13, !dbg !6971
	tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !6958, metadata !760) #11, !dbg !6973
	%25 = icmp eq i32 %24, 0, !dbg !6974
	br i1 %25, label %26, label %41, !dbg !6975
	%27 = tail call i64 @strlen(i8* %23) #13, !dbg !6977
	%28 = add i64 %27, 1, !dbg !6978
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !6959, metadata !760) #11, !dbg !6979
	%29 = tail call i64 @strlen(i8* %20) #13, !dbg !6980
	%30 = add i64 %29, 1, !dbg !6981
	tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !6961, metadata !760) #11, !dbg !6982
	%31 = sub i64 %22, %28, !dbg !6983
	tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !6955, metadata !760) #11, !dbg !6964
	%32 = sub i64 %21, %30, !dbg !6984
	tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !6957, metadata !760) #11, !dbg !6966
	%33 = icmp eq i64 %31, 0, !dbg !6985
	br i1 %33, label %34, label %37, !dbg !6987
	%35 = icmp ne i64 %32, 0, !dbg !6988
	%36 = sext i1 %35 to i32, !dbg !6989
	br label %43
	%38 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !6990
	%39 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !6991
	%40 = icmp eq i64 %32, 0, !dbg !6992
	br i1 %40, label %41, label %19, !llvm.loop !6994
	%42 = phi i32 [ 1, %37 ], [ %24, %19 ]
	br label %43, !dbg !6942
	%44 = phi i32 [ %36, %34 ], [ %42, %41 ]
	tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !6923, metadata !760), !dbg !6942
	store i8 %13, i8* %12, align 1, !dbg !6997, !tbaa !959
	store i8 %15, i8* %14, align 1, !dbg !6998, !tbaa !959
	br label %45
	%46 = phi i32 [ 0, %9 ], [ %44, %43 ]
	tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !6923, metadata !760), !dbg !6942
	ret i32 %46, !dbg !6999
}
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4
define i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !7000 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !7002, metadata !760), !dbg !7006
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !7003, metadata !760), !dbg !7007
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !7004, metadata !760), !dbg !7008
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !7005, metadata !760), !dbg !7009
	%5 = icmp eq i64 %1, %3, !dbg !7010
	br i1 %5, label %6, label %11, !dbg !7012
	%7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #13, !dbg !7013
	%8 = icmp eq i32 %7, 0, !dbg !7015
	br i1 %8, label %9, label %11, !dbg !7016
	%10 = tail call i32* @__errno_location() #1, !dbg !7018
	store i32 0, i32* %10, align 4, !dbg !7020, !tbaa !937
	br label %37, !dbg !7021
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6952, metadata !760) #11, !dbg !7022
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6955, metadata !760) #11, !dbg !7024
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6956, metadata !760) #11, !dbg !7025
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !6957, metadata !760) #11, !dbg !7026
	%12 = tail call i32* @__errno_location() #1, !dbg !7027
	br label %13, !dbg !7028
	%14 = phi i8* [ %2, %11 ], [ %32, %31 ]
	%15 = phi i64 [ %3, %11 ], [ %26, %31 ]
	%16 = phi i64 [ %1, %11 ], [ %25, %31 ]
	%17 = phi i8* [ %0, %11 ], [ %33, %31 ]
	tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !6952, metadata !760) #11, !dbg !7022
	tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !6955, metadata !760) #11, !dbg !7024
	tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !6957, metadata !760) #11, !dbg !7026
	tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !6956, metadata !760) #11, !dbg !7025
	store i32 0, i32* %12, align 4, !dbg !7029, !tbaa !937
	%18 = tail call i32 @strcoll(i8* %17, i8* %14) #13, !dbg !7030
	tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !6958, metadata !760) #11, !dbg !7031
	%19 = icmp eq i32 %18, 0, !dbg !7032
	br i1 %19, label %20, label %35, !dbg !7033
	%21 = tail call i64 @strlen(i8* %17) #13, !dbg !7034
	%22 = add i64 %21, 1, !dbg !7035
	tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !6959, metadata !760) #11, !dbg !7036
	%23 = tail call i64 @strlen(i8* %14) #13, !dbg !7037
	%24 = add i64 %23, 1, !dbg !7038
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !6961, metadata !760) #11, !dbg !7039
	%25 = sub i64 %16, %22, !dbg !7040
	tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !6955, metadata !760) #11, !dbg !7024
	%26 = sub i64 %15, %24, !dbg !7041
	tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !6957, metadata !760) #11, !dbg !7026
	%27 = icmp eq i64 %25, 0, !dbg !7042
	br i1 %27, label %28, label %31, !dbg !7043
	%29 = icmp ne i64 %26, 0, !dbg !7044
	%30 = sext i1 %29 to i32, !dbg !7045
	br label %37
	%32 = getelementptr inbounds i8, i8* %14, i64 %24, !dbg !7046
	%33 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !7047
	%34 = icmp eq i64 %26, 0, !dbg !7048
	br i1 %34, label %35, label %13, !llvm.loop !6994
	%36 = phi i32 [ 1, %31 ], [ %18, %13 ]
	br label %37, !dbg !7049
	%38 = phi i32 [ 0, %9 ], [ %30, %28 ], [ %36, %35 ]
	ret i32 %38, !dbg !7049
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
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
!llvm.dbg.cu = !{!2, !219, !225, !233, !691, !694, !696, !699, !702, !240, !247, !705, !707, !299, !715, !726, !728, !731, !735, !737, !312, !739, !741, !743, !746, !345, !748}
!llvm.ident = !{!750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750, !750}
!llvm.module.flags = !{!751, !752, !753, !754}
!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 105, type: !99, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !91)
!3 = !DIFile(filename: "src/join.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !11, !16, !24, !38, !47, !64}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operand_status", file: !3, line: 942, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MUST_BE_OPERAND", value: 0)
!8 = !DIEnumerator(name: "MIGHT_BE_J1_ARG", value: 1)
!9 = !DIEnumerator(name: "MIGHT_BE_J2_ARG", value: 2)
!10 = !DIEnumerator(name: "MIGHT_BE_O_ARG", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 145, size: 32, elements: !12)
!12 = !{!13, !14, !15}
!13 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0)
!14 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1)
!15 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !17, line: 26, size: 32, elements: !18)
!17 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = !{!19, !20, !21, !22, !23}
!19 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!20 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!21 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!22 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!23 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !25, line: 32, size: 32, elements: !26)
!25 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!27 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!28 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!29 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!30 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!31 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!32 = !DIEnumerator(name: "c_quoting_style", value: 5)
!33 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!34 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!35 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!36 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!37 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 45, size: 32, elements: !40)
!39 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!42 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!43 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!44 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!45 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!46 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !49, file: !48, line: 192, size: 32, elements: !62)
!48 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = distinct !DISubprogram(name: "x2nrealloc", scope: !48, file: !48, line: 180, type: !50, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !57)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 62, baseType: !56)
!55 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !{!58, !59, !60, !61}
!58 = !DILocalVariable(name: "p", arg: 1, scope: !49, file: !48, line: 180, type: !52)
!59 = !DILocalVariable(name: "pn", arg: 2, scope: !49, file: !48, line: 180, type: !53)
!60 = !DILocalVariable(name: "s", arg: 3, scope: !49, file: !48, line: 180, type: !54)
!61 = !DILocalVariable(name: "n", scope: !49, file: !48, line: 182, type: !54)
!62 = !{!63}
!63 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 46, size: 32, elements: !66)
!65 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!67 = !DIEnumerator(name: "_ISupper", value: 256)
!68 = !DIEnumerator(name: "_ISlower", value: 512)
!69 = !DIEnumerator(name: "_ISalpha", value: 1024)
!70 = !DIEnumerator(name: "_ISdigit", value: 2048)
!71 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!72 = !DIEnumerator(name: "_ISspace", value: 8192)
!73 = !DIEnumerator(name: "_ISprint", value: 16384)
!74 = !DIEnumerator(name: "_ISgraph", value: 32768)
!75 = !DIEnumerator(name: "_ISblank", value: 1)
!76 = !DIEnumerator(name: "_IScntrl", value: 2)
!77 = !DIEnumerator(name: "_ISpunct", value: 4)
!78 = !DIEnumerator(name: "_ISalnum", value: 8)
!79 = !{!54, !80, !82, !85, !88, !52, !84, !89, !90}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !{!92, !0, !97, !100, !102, !104, !106, !109, !111, !113, !115, !117, !119, !149, !170, !184, !186, !188, !196, !198, !200, !202, !204, !206, !208, !210}
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "g_names", scope: !2, file: !3, line: 97, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 2)
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "print_unpairables_1", scope: !2, file: !3, line: 108, type: !99, isLocal: true, isDefinition: true)
!99 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "print_unpairables_2", scope: !2, file: !3, line: 108, type: !99, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "print_pairables", scope: !2, file: !3, line: 111, type: !99, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105)
!105 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !2, file: !3, line: 114, type: !99, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107)
!107 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !2, file: !3, line: 117, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 16, elements: !95)
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "empty_filler", scope: !2, file: !3, line: 120, type: !85, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112)
!112 = distinct !DIGlobalVariable(name: "autoformat", scope: !2, file: !3, line: 123, type: !99, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "check_input_order", scope: !2, file: !3, line: 150, type: !11, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 176, type: !99, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "join_header_lines", scope: !2, file: !3, line: 180, type: !99, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "infomap", scope: !121, file: !122, line: 632, type: !146, isLocal: true, isDefinition: true)
!121 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !122, file: !122, line: 630, type: !123, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !125)
!122 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !DISubroutineType(types: !124)
!124 = !{null, !85}
!125 = !{!126, !127, !128, !135, !137, !138, !139, !142, !143, !145}
!126 = !DILocalVariable(name: "program", arg: 1, scope: !121, file: !122, line: 630, type: !85)
!127 = !DILocalVariable(name: "node", scope: !121, file: !122, line: 642, type: !85)
!128 = !DILocalVariable(name: "map_prog", scope: !121, file: !122, line: 643, type: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !121, file: !122, line: 632, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !131, file: !122, line: 632, baseType: !85, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !131, file: !122, line: 632, baseType: !85, size: 64, offset: 64)
!135 = !DILocalVariable(name: "__s1_len", scope: !136, file: !122, line: 645, type: !54)
!136 = distinct !DILexicalBlock(scope: !121, file: !122, line: 645, column: 33)
!137 = !DILocalVariable(name: "__s2_len", scope: !136, file: !122, line: 645, type: !54)
!138 = !DILocalVariable(name: "lc_messages", scope: !121, file: !122, line: 655, type: !85)
!139 = !DILocalVariable(name: "__s1_len", scope: !140, file: !122, line: 656, type: !54)
!140 = distinct !DILexicalBlock(scope: !141, file: !122, line: 656, column: 22)
!141 = distinct !DILexicalBlock(scope: !121, file: !122, line: 656, column: 7)
!142 = !DILocalVariable(name: "__s2_len", scope: !140, file: !122, line: 656, type: !54)
!143 = !DILocalVariable(name: "__s2", scope: !144, file: !122, line: 656, type: !82)
!144 = distinct !DILexicalBlock(scope: !140, file: !122, line: 656, column: 22)
!145 = !DILocalVariable(name: "__result", scope: !144, file: !122, line: 656, type: !89)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 896, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 7)
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "spareline", scope: !2, file: !3, line: 102, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !95)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line", file: !3, line: 73, size: 384, elements: !154)
!154 = !{!155, !162, !163, !164}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !153, file: !3, line: 75, baseType: !156, size: 192)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !157, line: 26, size: 192, elements: !158)
!157 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!158 = !{!159, !160, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !156, file: !157, line: 28, baseType: !54, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !156, file: !157, line: 29, baseType: !54, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !156, file: !157, line: 30, baseType: !88, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nfields", scope: !153, file: !3, line: 76, baseType: !54, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nfields_allocated", scope: !153, file: !3, line: 77, baseType: !54, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !153, file: !3, line: 78, baseType: !165, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field", file: !3, line: 66, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "beg", scope: !166, file: !3, line: 68, baseType: !88, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !166, file: !3, line: 69, baseType: !54, size: 64, offset: 64)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 160, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 2048, elements: !182)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !175, line: 104, size: 256, elements: !176)
!175 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !{!177, !178, !179, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 106, baseType: !85, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !174, file: !175, line: 109, baseType: !89, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !174, file: !175, line: 110, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !174, file: !175, line: 111, baseType: !89, size: 32, offset: 192)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "join_field_1", scope: !2, file: !3, line: 130, type: !54, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "join_field_2", scope: !2, file: !3, line: 131, type: !54, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189)
!189 = distinct !DIGlobalVariable(name: "outlist_end", scope: !2, file: !3, line: 137, type: !190, isLocal: true, isDefinition: true)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "outlist", file: !3, line: 53, size: 192, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !191, file: !3, line: 57, baseType: !89, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !191, file: !3, line: 60, baseType: !54, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !3, line: 62, baseType: !190, size: 64, offset: 128)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "outlist_head", scope: !2, file: !3, line: 134, type: !191, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "tab", scope: !2, file: !3, line: 142, type: !89, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "eolchar", scope: !2, file: !3, line: 183, type: !87, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "autocount_1", scope: !2, file: !3, line: 126, type: !54, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "autocount_2", scope: !2, file: !3, line: 127, type: !54, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "uni_blank", scope: !2, file: !3, line: 173, type: !153, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209)
!209 = distinct !DIGlobalVariable(name: "prevline", scope: !2, file: !3, line: 91, type: !151, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "line_no", scope: !2, file: !3, line: 94, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 128, elements: !95)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !214, line: 136, baseType: !215)
!214 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !216, line: 62, baseType: !56)
!216 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "Version", scope: !219, file: !220, line: 2, type: !85, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, globals: !222)
!220 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !{}
!222 = !{!217}
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "file_name", scope: !225, file: !230, line: 36, type: !85, isLocal: true, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, globals: !227)
!226 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !{!223, !228}
!228 = !DIGlobalVariableExpression(var: !229)
!229 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !225, file: !230, line: 46, type: !99, isLocal: true, isDefinition: true)
!230 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!231 = !DIGlobalVariableExpression(var: !232)
!232 = distinct !DIGlobalVariable(name: "exit_failure", scope: !233, file: !236, line: 24, type: !237, isDefinition: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, globals: !235)
!234 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !{!231}
!236 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!237 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "program_name", scope: !240, file: !244, line: 33, type: !85, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, retainedTypes: !242, globals: !243)
!241 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !{!52, !88}
!243 = !{!238}
!244 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!245 = !DIGlobalVariableExpression(var: !246)
!246 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !247, file: !259, line: 77, type: !293, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !249, retainedTypes: !255, globals: !256)
!248 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!249 = !{!24, !250, !64}
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !25, line: 242, size: 32, elements: !251)
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!253 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!254 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!255 = !{!89, !90, !54, !88}
!256 = !{!245, !257, !264, !275, !277, !282, !289, !291}
!257 = !DIGlobalVariableExpression(var: !258)
!258 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !247, file: !259, line: 93, type: !260, isDefinition: true)
!259 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 320, elements: !262)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!262 = !{!263}
!263 = !DISubrange(count: 10)
!264 = !DIGlobalVariableExpression(var: !265)
!265 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !247, file: !259, line: 1043, type: !266, isDefinition: true)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !259, line: 57, size: 448, elements: !267)
!267 = !{!268, !269, !270, !273, !274}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !266, file: !259, line: 60, baseType: !24, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !259, line: 63, baseType: !89, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !266, file: !259, line: 67, baseType: !271, size: 256, offset: 64)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !182)
!272 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !266, file: !259, line: 70, baseType: !85, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !266, file: !259, line: 73, baseType: !85, size: 64, offset: 384)
!275 = !DIGlobalVariableExpression(var: !276)
!276 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !247, file: !259, line: 108, type: !266, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278)
!278 = distinct !DIGlobalVariable(name: "slot0", scope: !247, file: !259, line: 834, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2048, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 256)
!282 = !DIGlobalVariableExpression(var: !283)
!283 = distinct !DIGlobalVariable(name: "slotvec", scope: !247, file: !259, line: 837, type: !284, isLocal: true, isDefinition: true)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !259, line: 826, size: 128, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !285, file: !259, line: 828, baseType: !54, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !259, line: 829, baseType: !88, size: 64, offset: 64)
!289 = !DIGlobalVariableExpression(var: !290)
!290 = distinct !DIGlobalVariable(name: "nslots", scope: !247, file: !259, line: 835, type: !89, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292)
!292 = distinct !DIGlobalVariable(name: "slotvec0", scope: !247, file: !259, line: 836, type: !285, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 704, elements: !295)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!295 = !{!296}
!296 = !DISubrange(count: 11)
!297 = !DIGlobalVariableExpression(var: !298)
!298 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !299, file: !302, line: 26, type: !303, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, globals: !301)
!300 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!301 = !{!297}
!302 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 376, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 47)
!306 = !DIGlobalVariableExpression(var: !307)
!307 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !308, file: !309, line: 335, type: !89, isLocal: true, isDefinition: true)
!308 = distinct !DISubprogram(name: "rpl_fcntl", scope: !309, file: !309, line: 272, type: !310, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !312, variables: !315)
!309 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!310 = !DISubroutineType(types: !311)
!311 = !{!89, !89, !89, null}
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, globals: !314)
!313 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!314 = !{!306}
!315 = !{!316, !317, !318, !331, !332, !335, !338, !341}
!316 = !DILocalVariable(name: "fd", arg: 1, scope: !308, file: !309, line: 272, type: !89)
!317 = !DILocalVariable(name: "action", arg: 2, scope: !308, file: !309, line: 272, type: !89)
!318 = !DILocalVariable(name: "arg", scope: !308, file: !309, line: 274, type: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !320, line: 30, baseType: !321)
!320 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !313, line: 274, baseType: !322)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 192, elements: !329)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !313, line: 274, size: 192, elements: !324)
!324 = !{!325, !326, !327, !328}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !323, file: !313, line: 274, baseType: !272, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !323, file: !313, line: 274, baseType: !272, size: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !323, file: !313, line: 274, baseType: !52, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !323, file: !313, line: 274, baseType: !52, size: 64, offset: 128)
!329 = !{!330}
!330 = !DISubrange(count: 1)
!331 = !DILocalVariable(name: "result", scope: !308, file: !309, line: 275, type: !89)
!332 = !DILocalVariable(name: "target", scope: !333, file: !309, line: 322, type: !89)
!333 = distinct !DILexicalBlock(scope: !334, file: !309, line: 321, column: 7)
!334 = distinct !DILexicalBlock(scope: !308, file: !309, line: 278, column: 5)
!335 = !DILocalVariable(name: "flags", scope: !336, file: !309, line: 359, type: !89)
!336 = distinct !DILexicalBlock(scope: !337, file: !309, line: 358, column: 11)
!337 = distinct !DILexicalBlock(scope: !333, file: !309, line: 357, column: 13)
!338 = !DILocalVariable(name: "saved_errno", scope: !339, file: !309, line: 362, type: !89)
!339 = distinct !DILexicalBlock(scope: !340, file: !309, line: 361, column: 15)
!340 = distinct !DILexicalBlock(scope: !336, file: !309, line: 360, column: 17)
!341 = !DILocalVariable(name: "p", scope: !342, file: !309, line: 404, type: !52)
!342 = distinct !DILexicalBlock(scope: !334, file: !309, line: 402, column: 7)
!343 = !DIGlobalVariableExpression(var: !344)
!344 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !345, file: !689, line: 120, type: !690, isLocal: true, isDefinition: true)
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !347, retainedTypes: !686, globals: !688)
!346 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!347 = !{!348}
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !349, line: 41, size: 32, elements: !350)
!349 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!351 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!352 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!353 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!354 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!355 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!356 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!357 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!358 = !DIEnumerator(name: "DAY_1", value: 131079)
!359 = !DIEnumerator(name: "DAY_2", value: 131080)
!360 = !DIEnumerator(name: "DAY_3", value: 131081)
!361 = !DIEnumerator(name: "DAY_4", value: 131082)
!362 = !DIEnumerator(name: "DAY_5", value: 131083)
!363 = !DIEnumerator(name: "DAY_6", value: 131084)
!364 = !DIEnumerator(name: "DAY_7", value: 131085)
!365 = !DIEnumerator(name: "ABMON_1", value: 131086)
!366 = !DIEnumerator(name: "ABMON_2", value: 131087)
!367 = !DIEnumerator(name: "ABMON_3", value: 131088)
!368 = !DIEnumerator(name: "ABMON_4", value: 131089)
!369 = !DIEnumerator(name: "ABMON_5", value: 131090)
!370 = !DIEnumerator(name: "ABMON_6", value: 131091)
!371 = !DIEnumerator(name: "ABMON_7", value: 131092)
!372 = !DIEnumerator(name: "ABMON_8", value: 131093)
!373 = !DIEnumerator(name: "ABMON_9", value: 131094)
!374 = !DIEnumerator(name: "ABMON_10", value: 131095)
!375 = !DIEnumerator(name: "ABMON_11", value: 131096)
!376 = !DIEnumerator(name: "ABMON_12", value: 131097)
!377 = !DIEnumerator(name: "MON_1", value: 131098)
!378 = !DIEnumerator(name: "MON_2", value: 131099)
!379 = !DIEnumerator(name: "MON_3", value: 131100)
!380 = !DIEnumerator(name: "MON_4", value: 131101)
!381 = !DIEnumerator(name: "MON_5", value: 131102)
!382 = !DIEnumerator(name: "MON_6", value: 131103)
!383 = !DIEnumerator(name: "MON_7", value: 131104)
!384 = !DIEnumerator(name: "MON_8", value: 131105)
!385 = !DIEnumerator(name: "MON_9", value: 131106)
!386 = !DIEnumerator(name: "MON_10", value: 131107)
!387 = !DIEnumerator(name: "MON_11", value: 131108)
!388 = !DIEnumerator(name: "MON_12", value: 131109)
!389 = !DIEnumerator(name: "AM_STR", value: 131110)
!390 = !DIEnumerator(name: "PM_STR", value: 131111)
!391 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!392 = !DIEnumerator(name: "D_FMT", value: 131113)
!393 = !DIEnumerator(name: "T_FMT", value: 131114)
!394 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!395 = !DIEnumerator(name: "ERA", value: 131116)
!396 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!397 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!398 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!399 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!400 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!401 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!402 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!403 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!404 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!405 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!406 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!407 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!408 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!409 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!410 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!411 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!412 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!413 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!414 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!415 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!416 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!417 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!418 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!419 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!420 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!421 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!422 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!423 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!424 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!425 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!426 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!427 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!428 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!429 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!430 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!431 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!432 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!433 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!434 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!435 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!436 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!437 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!438 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!439 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!440 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!441 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!442 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!443 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!444 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!445 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!446 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!447 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!448 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!449 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!450 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!451 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!452 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!453 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!454 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!455 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!456 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!457 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!458 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!459 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!460 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!461 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!462 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!463 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!464 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!465 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!466 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!467 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!468 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!469 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!470 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!471 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!472 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!473 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!474 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!475 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!476 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!477 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!478 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!479 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!480 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!481 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!482 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!483 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!484 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!485 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!486 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!487 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!488 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!489 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!490 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!491 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!492 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!493 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!494 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!495 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!496 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!497 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!498 = !DIEnumerator(name: "CODESET", value: 14)
!499 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!500 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!501 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!502 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!551 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!552 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!553 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!554 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!555 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!567 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!568 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!569 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!570 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!571 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!572 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!573 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!574 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!575 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!576 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!577 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!578 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!579 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!580 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!581 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!582 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!583 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!584 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!585 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!586 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!587 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!588 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!589 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!590 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!591 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!592 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!609 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!610 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!613 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!614 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!615 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!616 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!617 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!618 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!619 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!620 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!621 = !DIEnumerator(name: "THOUSEP", value: 65537)
!622 = !DIEnumerator(name: "__GROUPING", value: 65538)
!623 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!624 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!625 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!626 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!627 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!628 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!629 = !DIEnumerator(name: "__YESSTR", value: 327682)
!630 = !DIEnumerator(name: "__NOSTR", value: 327683)
!631 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!632 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!633 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!634 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!635 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!636 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!637 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!638 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!640 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!641 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!642 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!643 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!644 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!645 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!646 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!650 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!651 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!652 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!653 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!654 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!655 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!656 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!657 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!658 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!659 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!660 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!661 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!662 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!663 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!664 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!665 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!666 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!667 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!684 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!685 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!686 = !{!52, !88, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!688 = !{!343}
!689 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!690 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !692, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !693)
!692 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!693 = !{!38}
!694 = distinct !DICompileUnit(language: DW_LANG_C99, file: !695, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221)
!695 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, retainedTypes: !698)
!697 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!698 = !{!54, !80, !82, !85}
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, retainedTypes: !701)
!700 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!701 = !{!687}
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, retainedTypes: !704)
!703 = !DIFile(filename: "./lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!704 = !{!89}
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221)
!706 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !709, retainedTypes: !714)
!708 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!709 = !{!710}
!710 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !711, line: 41, size: 32, elements: !712)
!711 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!712 = !{!713}
!713 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!714 = !{!52}
!715 = distinct !DICompileUnit(language: DW_LANG_C99, file: !716, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !717, retainedTypes: !725)
!716 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!717 = !{!718}
!718 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !719, file: !48, line: 192, size: 32, elements: !62)
!719 = distinct !DISubprogram(name: "x2nrealloc", scope: !48, file: !48, line: 180, type: !50, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !720)
!720 = !{!721, !722, !723, !724}
!721 = !DILocalVariable(name: "p", arg: 1, scope: !719, file: !48, line: 180, type: !52)
!722 = !DILocalVariable(name: "pn", arg: 2, scope: !719, file: !48, line: 180, type: !53)
!723 = !DILocalVariable(name: "s", arg: 3, scope: !719, file: !48, line: 180, type: !54)
!724 = !DILocalVariable(name: "n", scope: !719, file: !48, line: 182, type: !54)
!725 = !{!54, !88, !52}
!726 = distinct !DICompileUnit(language: DW_LANG_C99, file: !727, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221)
!727 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!728 = distinct !DICompileUnit(language: DW_LANG_C99, file: !729, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !730)
!729 = !DIFile(filename: "./lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!730 = !{!24}
!731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !732, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !733, retainedTypes: !734)
!732 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!733 = !{!16, !64}
!734 = !{!89, !90, !88}
!735 = distinct !DICompileUnit(language: DW_LANG_C99, file: !736, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, retainedTypes: !714)
!736 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!737 = distinct !DICompileUnit(language: DW_LANG_C99, file: !738, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221)
!738 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!739 = distinct !DICompileUnit(language: DW_LANG_C99, file: !740, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, retainedTypes: !714)
!740 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!741 = distinct !DICompileUnit(language: DW_LANG_C99, file: !742, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, retainedTypes: !714)
!742 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!743 = distinct !DICompileUnit(language: DW_LANG_C99, file: !744, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221, retainedTypes: !745)
!744 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!745 = !{!54}
!746 = distinct !DICompileUnit(language: DW_LANG_C99, file: !747, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221)
!747 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!748 = distinct !DICompileUnit(language: DW_LANG_C99, file: !749, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !221)
!749 = !DIFile(filename: "./lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!750 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!751 = !{i32 2, !"Dwarf Version", i32 4}
!752 = !{i32 2, !"Debug Info Version", i32 3}
!753 = !{i32 1, !"PIC Level", i32 2}
!754 = !{i32 1, !"PIE Level", i32 2}
!755 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 186, type: !756, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !89}
!758 = !{!759}
!759 = !DILocalVariable(name: "status", arg: 1, scope: !755, file: !3, line: 186, type: !89)
!760 = !DIExpression()
!761 = !DILocation(line: 186, column: 12, scope: !755)
!762 = !DILocation(line: 188, column: 14, scope: !763)
!763 = distinct !DILexicalBlock(scope: !755, file: !3, line: 188, column: 7)
!764 = !DILocation(line: 188, column: 7, scope: !755)
!765 = !DILocation(line: 189, column: 5, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !3, discriminator: 1)
!767 = distinct !DILexicalBlock(scope: !763, file: !3, line: 189, column: 5)
!768 = !{!769, !769, i64 0}
!769 = !{!"any pointer", !770, i64 0}
!770 = !{!"omnipotent char", !771, i64 0}
!771 = !{!"Simple C/C++ TBAA"}
!772 = !DILocation(line: 189, column: 5, scope: !773)
!773 = !DILexicalBlockFile(scope: !767, file: !3, discriminator: 3)
!774 = !DILocation(line: 189, column: 5, scope: !775)
!775 = !DILexicalBlockFile(scope: !767, file: !3, discriminator: 2)
!776 = !DILocation(line: 192, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !763, file: !3, line: 191, column: 5)
!778 = !DILocation(line: 192, column: 7, scope: !779)
!779 = !DILexicalBlockFile(scope: !777, file: !3, discriminator: 1)
!780 = !DILocation(line: 196, column: 7, scope: !777)
!781 = !DILocation(line: 196, column: 7, scope: !779)
!782 = !DILocation(line: 201, column: 7, scope: !777)
!783 = !DILocation(line: 201, column: 7, scope: !779)
!784 = !DILocation(line: 205, column: 7, scope: !777)
!785 = !DILocation(line: 205, column: 7, scope: !779)
!786 = !DILocation(line: 211, column: 7, scope: !777)
!787 = !DILocation(line: 211, column: 7, scope: !779)
!788 = !DILocation(line: 217, column: 7, scope: !777)
!789 = !DILocation(line: 217, column: 7, scope: !779)
!790 = !DILocation(line: 227, column: 7, scope: !777)
!791 = !DILocation(line: 227, column: 7, scope: !779)
!792 = !DILocation(line: 230, column: 7, scope: !777)
!793 = !DILocation(line: 230, column: 7, scope: !779)
!794 = !DILocation(line: 231, column: 7, scope: !777)
!795 = !DILocation(line: 231, column: 7, scope: !779)
!796 = !DILocation(line: 232, column: 7, scope: !777)
!797 = !DILocation(line: 232, column: 7, scope: !779)
!798 = !DILocation(line: 642, column: 15, scope: !121, inlinedAt: !799)
!799 = distinct !DILocation(line: 249, column: 7, scope: !777)
!800 = !DILocation(line: 651, column: 3, scope: !121, inlinedAt: !799)
!801 = !DILocation(line: 651, column: 3, scope: !802, inlinedAt: !799)
!802 = !DILexicalBlockFile(scope: !121, file: !122, discriminator: 1)
!803 = !DILocation(line: 655, column: 29, scope: !121, inlinedAt: !799)
!804 = !DILocation(line: 655, column: 15, scope: !121, inlinedAt: !799)
!805 = !DILocation(line: 656, column: 7, scope: !141, inlinedAt: !799)
!806 = !DILocation(line: 656, column: 19, scope: !141, inlinedAt: !799)
!807 = !DILocation(line: 656, column: 22, scope: !808, inlinedAt: !799)
!808 = !DILexicalBlockFile(scope: !141, file: !122, discriminator: 16)
!809 = !DILocation(line: 656, column: 7, scope: !810, inlinedAt: !799)
!810 = !DILexicalBlockFile(scope: !121, file: !122, discriminator: 16)
!811 = !DILocation(line: 662, column: 7, scope: !812, inlinedAt: !799)
!812 = distinct !DILexicalBlock(scope: !141, file: !122, line: 657, column: 5)
!813 = !DILocation(line: 662, column: 7, scope: !814, inlinedAt: !799)
!814 = !DILexicalBlockFile(scope: !812, file: !122, discriminator: 1)
!815 = !DILocation(line: 664, column: 5, scope: !812, inlinedAt: !799)
!816 = !DILocation(line: 665, column: 3, scope: !121, inlinedAt: !799)
!817 = !DILocation(line: 665, column: 3, scope: !802, inlinedAt: !799)
!818 = !DILocation(line: 667, column: 3, scope: !121, inlinedAt: !799)
!819 = !DILocation(line: 667, column: 3, scope: !802, inlinedAt: !799)
!820 = !DILocation(line: 251, column: 3, scope: !755)
!821 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1008, type: !822, isDefinition: true, scopeLine: 1009, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !825)
!822 = !DISubroutineType(types: !823)
!823 = !{!89, !89, !824}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!825 = !{!826, !827, !828, !829, !830, !832, !833, !886, !887, !888, !889, !890, !894, !897, !898, !901, !904, !905, !907, !908, !910, !916, !917, !919, !920, !922, !923, !925, !926, !928, !929, !931}
!826 = !DILocalVariable(name: "argc", arg: 1, scope: !821, file: !3, line: 1008, type: !89)
!827 = !DILocalVariable(name: "argv", arg: 2, scope: !821, file: !3, line: 1008, type: !824)
!828 = !DILocalVariable(name: "optc_status", scope: !821, file: !3, line: 1010, type: !89)
!829 = !DILocalVariable(name: "prev_optc_status", scope: !821, file: !3, line: 1011, type: !89)
!830 = !DILocalVariable(name: "operand_status", scope: !821, file: !3, line: 1012, type: !831)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !95)
!832 = !DILocalVariable(name: "joption_count", scope: !821, file: !3, line: 1013, type: !831)
!833 = !DILocalVariable(name: "fp1", scope: !821, file: !3, line: 1014, type: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !837)
!836 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !839)
!838 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!839 = !{!840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !860, !861, !862, !863, !866, !867, !869, !871, !874, !876, !877, !878, !879, !880, !881, !882}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !837, file: !838, line: 242, baseType: !89, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !837, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !837, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !837, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !837, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !837, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !837, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !837, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !837, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !837, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !837, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !837, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !837, file: !838, line: 260, baseType: !853, size: 64, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !855)
!855 = !{!856, !857, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !854, file: !838, line: 157, baseType: !853, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !854, file: !838, line: 158, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !854, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !837, file: !838, line: 262, baseType: !858, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !837, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !837, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !837, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !216, line: 140, baseType: !865)
!865 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !837, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !837, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!868 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !837, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 8, elements: !329)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !837, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !838, line: 150, baseType: null)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !837, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !216, line: 141, baseType: !865)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !837, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !837, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !837, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !837, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !837, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !837, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !837, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 160, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 20)
!886 = !DILocalVariable(name: "fp2", scope: !821, file: !3, line: 1014, type: !834)
!887 = !DILocalVariable(name: "optc", scope: !821, file: !3, line: 1015, type: !89)
!888 = !DILocalVariable(name: "nfiles", scope: !821, file: !3, line: 1016, type: !89)
!889 = !DILocalVariable(name: "i", scope: !821, file: !3, line: 1017, type: !89)
!890 = !DILocalVariable(name: "val", scope: !891, file: !3, line: 1048, type: !56)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1047, column: 11)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 1041, column: 9)
!893 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1037, column: 5)
!894 = !DILocalVariable(name: "__s1_len", scope: !895, file: !3, line: 1061, type: !54)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1061, column: 33)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1061, column: 15)
!897 = !DILocalVariable(name: "__s2_len", scope: !895, file: !3, line: 1061, type: !54)
!898 = !DILocalVariable(name: "is_j2", scope: !899, file: !3, line: 1084, type: !99)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 1082, column: 13)
!900 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1080, column: 15)
!901 = !DILocalVariable(name: "__s1_len", scope: !902, file: !3, line: 1096, type: !54)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1096, column: 15)
!903 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1096, column: 15)
!904 = !DILocalVariable(name: "__s2_len", scope: !902, file: !3, line: 1096, type: !54)
!905 = !DILocalVariable(name: "__s2", scope: !906, file: !3, line: 1096, type: !82)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1096, column: 15)
!907 = !DILocalVariable(name: "__result", scope: !906, file: !3, line: 1096, type: !89)
!908 = !DILocalVariable(name: "newtab", scope: !909, file: !3, line: 1107, type: !84)
!909 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1106, column: 11)
!910 = !DILocalVariable(name: "__s1_len", scope: !911, file: !3, line: 1112, type: !54)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 1112, column: 21)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 1112, column: 21)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1111, column: 15)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 1110, column: 22)
!915 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1108, column: 17)
!916 = !DILocalVariable(name: "__s2_len", scope: !911, file: !3, line: 1112, type: !54)
!917 = !DILocalVariable(name: "__s2", scope: !918, file: !3, line: 1112, type: !82)
!918 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1112, column: 21)
!919 = !DILocalVariable(name: "__result", scope: !918, file: !3, line: 1112, type: !89)
!920 = !DILocalVariable(name: "__s1_len", scope: !921, file: !3, line: 1185, type: !54)
!921 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1185, column: 9)
!922 = !DILocalVariable(name: "__s2_len", scope: !921, file: !3, line: 1185, type: !54)
!923 = !DILocalVariable(name: "__s2", scope: !924, file: !3, line: 1185, type: !82)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 1185, column: 9)
!925 = !DILocalVariable(name: "__result", scope: !924, file: !3, line: 1185, type: !89)
!926 = !DILocalVariable(name: "__s1_len", scope: !927, file: !3, line: 1188, type: !54)
!927 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1188, column: 9)
!928 = !DILocalVariable(name: "__s2_len", scope: !927, file: !3, line: 1188, type: !54)
!929 = !DILocalVariable(name: "__s2", scope: !930, file: !3, line: 1188, type: !82)
!930 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1188, column: 9)
!931 = !DILocalVariable(name: "__result", scope: !930, file: !3, line: 1188, type: !89)
!932 = !DILocation(line: 1008, column: 11, scope: !821)
!933 = !DILocation(line: 1008, column: 24, scope: !821)
!934 = !DILocation(line: 1010, column: 3, scope: !821)
!935 = !DILocation(line: 1011, column: 3, scope: !821)
!936 = !DILocation(line: 1011, column: 7, scope: !821)
!937 = !{!938, !938, i64 0}
!938 = !{!"int", !770, i64 0}
!939 = !DILocation(line: 1012, column: 3, scope: !821)
!940 = !DILocation(line: 1012, column: 7, scope: !821)
!941 = !DILocation(line: 1013, column: 3, scope: !821)
!942 = !DILocation(line: 1013, column: 7, scope: !821)
!943 = !DILocation(line: 1016, column: 3, scope: !821)
!944 = !DILocation(line: 1016, column: 7, scope: !821)
!945 = !DILocation(line: 1020, column: 21, scope: !821)
!946 = !DILocation(line: 1020, column: 3, scope: !821)
!947 = !DILocation(line: 1021, column: 3, scope: !821)
!948 = !DILocation(line: 1022, column: 3, scope: !821)
!949 = !DILocation(line: 1023, column: 3, scope: !821)
!950 = !DILocation(line: 1024, column: 21, scope: !821)
!951 = !DILocation(line: 1024, column: 19, scope: !821)
!952 = !{!953, !953, i64 0}
!953 = !{!"_Bool", !770, i64 0}
!954 = !DILocation(line: 1026, column: 3, scope: !821)
!955 = !DILocation(line: 1027, column: 3, scope: !821)
!956 = !DILocation(line: 1031, column: 59, scope: !821)
!957 = !DILocation(line: 1031, column: 30, scope: !821)
!958 = !DILocation(line: 1032, column: 21, scope: !821)
!959 = !{!770, !770, i64 0}
!960 = !DILocation(line: 1034, column: 18, scope: !961)
!961 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 1)
!962 = !DILocation(line: 1015, column: 7, scope: !821)
!963 = !DILocation(line: 1036, column: 10, scope: !821)
!964 = !DILocation(line: 1034, column: 3, scope: !961)
!965 = !DILocation(line: 1010, column: 7, scope: !821)
!966 = !DILocation(line: 1038, column: 19, scope: !893)
!967 = !DILocation(line: 1040, column: 7, scope: !893)
!968 = !DILocation(line: 1043, column: 13, scope: !892)
!969 = !DILocation(line: 1048, column: 13, scope: !891)
!970 = !DILocation(line: 1049, column: 27, scope: !971)
!971 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1049, column: 17)
!972 = !DIExpression(DW_OP_deref)
!973 = !DILocation(line: 1048, column: 31, scope: !891)
!974 = !DILocation(line: 1049, column: 17, scope: !971)
!975 = !DILocation(line: 1049, column: 55, scope: !971)
!976 = !DILocation(line: 1050, column: 17, scope: !971)
!977 = !DILocation(line: 1050, column: 21, scope: !978)
!978 = !DILexicalBlockFile(scope: !971, file: !3, discriminator: 1)
!979 = !{!980, !980, i64 0}
!980 = !{!"long", !770, i64 0}
!981 = !DILocation(line: 1050, column: 30, scope: !978)
!982 = !DILocation(line: 1051, column: 15, scope: !971)
!983 = !DILocation(line: 1051, column: 15, scope: !978)
!984 = !DILocation(line: 1051, column: 15, scope: !985)
!985 = !DILexicalBlockFile(scope: !971, file: !3, discriminator: 2)
!986 = !DILocation(line: 1053, column: 21, scope: !987)
!987 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1053, column: 17)
!988 = !DILocation(line: 1053, column: 17, scope: !891)
!989 = !DILocation(line: 1057, column: 11, scope: !892)
!990 = !DILocation(line: 1058, column: 11, scope: !892)
!991 = !DILocation(line: 1061, column: 15, scope: !896)
!992 = !DILocation(line: 1061, column: 28, scope: !896)
!993 = !DILocation(line: 1061, column: 33, scope: !994)
!994 = !DILexicalBlockFile(scope: !895, file: !3, discriminator: 1)
!995 = !DILocation(line: 1061, column: 33, scope: !996)
!996 = !DILexicalBlockFile(scope: !896, file: !3, discriminator: 1)
!997 = !DILocation(line: 1061, column: 15, scope: !998)
!998 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 1)
!999 = !DILocation(line: 1062, column: 13, scope: !896)
!1000 = !DILocation(line: 1062, column: 13, scope: !996)
!1001 = !DILocation(line: 1064, column: 26, scope: !892)
!1002 = !DILocation(line: 1064, column: 24, scope: !892)
!1003 = !DILocation(line: 1065, column: 11, scope: !892)
!1004 = !DILocation(line: 1069, column: 11, scope: !892)
!1005 = !DILocation(line: 1072, column: 64, scope: !892)
!1006 = !DILocalVariable(name: "str", arg: 1, scope: !1007, file: !3, line: 844, type: !85)
!1007 = distinct !DISubprogram(name: "string_to_join_field", scope: !3, file: !3, line: 844, type: !1008, isLocal: true, isDefinition: true, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!54, !85}
!1010 = !{!1006, !1011, !1012, !1013}
!1011 = !DILocalVariable(name: "result", scope: !1007, file: !3, line: 846, type: !54)
!1012 = !DILocalVariable(name: "val", scope: !1007, file: !3, line: 847, type: !56)
!1013 = !DILocalVariable(name: "s_err", scope: !1007, file: !3, line: 850, type: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !17, line: 39, baseType: !16)
!1015 = !DILocation(line: 844, column: 35, scope: !1007, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 1072, column: 42, scope: !892)
!1017 = !DILocation(line: 847, column: 3, scope: !1007, inlinedAt: !1016)
!1018 = !DILocation(line: 847, column: 21, scope: !1007, inlinedAt: !1016)
!1019 = !DILocation(line: 850, column: 24, scope: !1007, inlinedAt: !1016)
!1020 = !DILocation(line: 850, column: 16, scope: !1007, inlinedAt: !1016)
!1021 = !DILocation(line: 851, column: 13, scope: !1022, inlinedAt: !1016)
!1022 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 851, column: 7)
!1023 = !DILocation(line: 851, column: 33, scope: !1022, inlinedAt: !1016)
!1024 = !DILocation(line: 852, column: 9, scope: !1022, inlinedAt: !1016)
!1025 = !DILocation(line: 852, column: 5, scope: !1022, inlinedAt: !1016)
!1026 = !DILocation(line: 851, column: 71, scope: !1027, inlinedAt: !1016)
!1027 = !DILexicalBlockFile(scope: !1022, file: !3, discriminator: 2)
!1028 = !DILocation(line: 853, column: 18, scope: !1029, inlinedAt: !1016)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 853, column: 12)
!1030 = !DILocation(line: 853, column: 39, scope: !1031, inlinedAt: !1016)
!1031 = !DILexicalBlockFile(scope: !1029, file: !3, discriminator: 1)
!1032 = !DILocation(line: 853, column: 32, scope: !1029, inlinedAt: !1016)
!1033 = !DILocation(line: 854, column: 5, scope: !1029, inlinedAt: !1016)
!1034 = !DILocation(line: 854, column: 5, scope: !1031, inlinedAt: !1016)
!1035 = !DILocation(line: 854, column: 5, scope: !1036, inlinedAt: !1016)
!1036 = !DILexicalBlockFile(scope: !1029, file: !3, discriminator: 2)
!1037 = !DILocation(line: 856, column: 12, scope: !1007, inlinedAt: !1016)
!1038 = !DILocation(line: 856, column: 16, scope: !1007, inlinedAt: !1016)
!1039 = !DILocation(line: 846, column: 10, scope: !1007, inlinedAt: !1016)
!1040 = !DILocation(line: 859, column: 1, scope: !1007, inlinedAt: !1016)
!1041 = !DILocalVariable(name: "var", arg: 1, scope: !1042, file: !3, line: 928, type: !53)
!1042 = distinct !DISubprogram(name: "set_join_field", scope: !3, file: !3, line: 928, type: !1043, isLocal: true, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !53, !54}
!1045 = !{!1041, !1046, !1047, !1050}
!1046 = !DILocalVariable(name: "val", arg: 2, scope: !1042, file: !3, line: 928, type: !54)
!1047 = !DILocalVariable(name: "var1", scope: !1048, file: !3, line: 932, type: !56)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 931, column: 5)
!1049 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 930, column: 7)
!1050 = !DILocalVariable(name: "val1", scope: !1048, file: !3, line: 933, type: !56)
!1051 = !DILocation(line: 928, column: 25, scope: !1042, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 1072, column: 11, scope: !998)
!1053 = !DILocation(line: 928, column: 37, scope: !1042, inlinedAt: !1052)
!1054 = !DILocation(line: 930, column: 7, scope: !1049, inlinedAt: !1052)
!1055 = !DILocation(line: 930, column: 12, scope: !1049, inlinedAt: !1052)
!1056 = !DILocation(line: 930, column: 32, scope: !1057, inlinedAt: !1052)
!1057 = !DILexicalBlockFile(scope: !1049, file: !3, discriminator: 1)
!1058 = !DILocation(line: 930, column: 24, scope: !1049, inlinedAt: !1052)
!1059 = !DILocation(line: 932, column: 37, scope: !1048, inlinedAt: !1052)
!1060 = !DILocation(line: 932, column: 25, scope: !1048, inlinedAt: !1052)
!1061 = !DILocation(line: 933, column: 25, scope: !1048, inlinedAt: !1052)
!1062 = !DILocation(line: 934, column: 7, scope: !1048, inlinedAt: !1052)
!1063 = !DILocation(line: 934, column: 7, scope: !1064, inlinedAt: !1052)
!1064 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 1)
!1065 = !DILocation(line: 937, column: 8, scope: !1042, inlinedAt: !1052)
!1066 = !DILocation(line: 1073, column: 11, scope: !892)
!1067 = !DILocation(line: 1076, column: 64, scope: !892)
!1068 = !DILocation(line: 844, column: 35, scope: !1007, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 1076, column: 42, scope: !892)
!1070 = !DILocation(line: 847, column: 3, scope: !1007, inlinedAt: !1069)
!1071 = !DILocation(line: 847, column: 21, scope: !1007, inlinedAt: !1069)
!1072 = !DILocation(line: 850, column: 24, scope: !1007, inlinedAt: !1069)
!1073 = !DILocation(line: 850, column: 16, scope: !1007, inlinedAt: !1069)
!1074 = !DILocation(line: 851, column: 13, scope: !1022, inlinedAt: !1069)
!1075 = !DILocation(line: 851, column: 33, scope: !1022, inlinedAt: !1069)
!1076 = !DILocation(line: 852, column: 9, scope: !1022, inlinedAt: !1069)
!1077 = !DILocation(line: 852, column: 5, scope: !1022, inlinedAt: !1069)
!1078 = !DILocation(line: 851, column: 71, scope: !1027, inlinedAt: !1069)
!1079 = !DILocation(line: 853, column: 18, scope: !1029, inlinedAt: !1069)
!1080 = !DILocation(line: 853, column: 39, scope: !1031, inlinedAt: !1069)
!1081 = !DILocation(line: 853, column: 32, scope: !1029, inlinedAt: !1069)
!1082 = !DILocation(line: 854, column: 5, scope: !1029, inlinedAt: !1069)
!1083 = !DILocation(line: 854, column: 5, scope: !1031, inlinedAt: !1069)
!1084 = !DILocation(line: 854, column: 5, scope: !1036, inlinedAt: !1069)
!1085 = !DILocation(line: 856, column: 12, scope: !1007, inlinedAt: !1069)
!1086 = !DILocation(line: 856, column: 16, scope: !1007, inlinedAt: !1069)
!1087 = !DILocation(line: 846, column: 10, scope: !1007, inlinedAt: !1069)
!1088 = !DILocation(line: 859, column: 1, scope: !1007, inlinedAt: !1069)
!1089 = !DILocation(line: 928, column: 25, scope: !1042, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 1076, column: 11, scope: !998)
!1091 = !DILocation(line: 928, column: 37, scope: !1042, inlinedAt: !1090)
!1092 = !DILocation(line: 930, column: 7, scope: !1049, inlinedAt: !1090)
!1093 = !DILocation(line: 930, column: 12, scope: !1049, inlinedAt: !1090)
!1094 = !DILocation(line: 930, column: 32, scope: !1057, inlinedAt: !1090)
!1095 = !DILocation(line: 930, column: 24, scope: !1049, inlinedAt: !1090)
!1096 = !DILocation(line: 932, column: 37, scope: !1048, inlinedAt: !1090)
!1097 = !DILocation(line: 932, column: 25, scope: !1048, inlinedAt: !1090)
!1098 = !DILocation(line: 933, column: 25, scope: !1048, inlinedAt: !1090)
!1099 = !DILocation(line: 934, column: 7, scope: !1048, inlinedAt: !1090)
!1100 = !DILocation(line: 934, column: 7, scope: !1064, inlinedAt: !1090)
!1101 = !DILocation(line: 937, column: 8, scope: !1042, inlinedAt: !1090)
!1102 = !DILocation(line: 1077, column: 11, scope: !892)
!1103 = !DILocation(line: 1080, column: 16, scope: !900)
!1104 = !DILocation(line: 1080, column: 33, scope: !900)
!1105 = !DILocation(line: 1080, column: 58, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 2)
!1107 = !DILocation(line: 1081, column: 15, scope: !900)
!1108 = !DILocation(line: 1081, column: 33, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 1)
!1110 = !DILocation(line: 1081, column: 40, scope: !1109)
!1111 = !DILocation(line: 1081, column: 28, scope: !1109)
!1112 = !DILocation(line: 1081, column: 45, scope: !1109)
!1113 = !DILocation(line: 1081, column: 25, scope: !1109)
!1114 = !DILocation(line: 1080, column: 15, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 3)
!1116 = !DILocation(line: 1084, column: 39, scope: !899)
!1117 = !DILocation(line: 1085, column: 15, scope: !899)
!1118 = !DILocation(line: 1085, column: 35, scope: !899)
!1119 = !DILocation(line: 1086, column: 45, scope: !899)
!1120 = !DILocation(line: 1086, column: 27, scope: !899)
!1121 = !DILocation(line: 1087, column: 13, scope: !899)
!1122 = !DILocation(line: 844, column: 35, scope: !1007, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 1090, column: 46, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !900, file: !3, line: 1089, column: 13)
!1125 = !DILocation(line: 847, column: 3, scope: !1007, inlinedAt: !1123)
!1126 = !DILocation(line: 847, column: 21, scope: !1007, inlinedAt: !1123)
!1127 = !DILocation(line: 850, column: 24, scope: !1007, inlinedAt: !1123)
!1128 = !DILocation(line: 850, column: 16, scope: !1007, inlinedAt: !1123)
!1129 = !DILocation(line: 851, column: 13, scope: !1022, inlinedAt: !1123)
!1130 = !DILocation(line: 851, column: 33, scope: !1022, inlinedAt: !1123)
!1131 = !DILocation(line: 852, column: 9, scope: !1022, inlinedAt: !1123)
!1132 = !DILocation(line: 852, column: 5, scope: !1022, inlinedAt: !1123)
!1133 = !DILocation(line: 851, column: 71, scope: !1027, inlinedAt: !1123)
!1134 = !DILocation(line: 853, column: 18, scope: !1029, inlinedAt: !1123)
!1135 = !DILocation(line: 853, column: 39, scope: !1031, inlinedAt: !1123)
!1136 = !DILocation(line: 853, column: 32, scope: !1029, inlinedAt: !1123)
!1137 = !DILocation(line: 854, column: 5, scope: !1029, inlinedAt: !1123)
!1138 = !DILocation(line: 854, column: 5, scope: !1031, inlinedAt: !1123)
!1139 = !DILocation(line: 854, column: 5, scope: !1036, inlinedAt: !1123)
!1140 = !DILocation(line: 856, column: 12, scope: !1007, inlinedAt: !1123)
!1141 = !DILocation(line: 856, column: 16, scope: !1007, inlinedAt: !1123)
!1142 = !DILocation(line: 846, column: 10, scope: !1007, inlinedAt: !1123)
!1143 = !DILocation(line: 859, column: 1, scope: !1007, inlinedAt: !1123)
!1144 = !DILocation(line: 928, column: 25, scope: !1042, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 1090, column: 15, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1124, file: !3, discriminator: 1)
!1147 = !DILocation(line: 928, column: 37, scope: !1042, inlinedAt: !1145)
!1148 = !DILocation(line: 930, column: 7, scope: !1049, inlinedAt: !1145)
!1149 = !DILocation(line: 930, column: 12, scope: !1049, inlinedAt: !1145)
!1150 = !DILocation(line: 930, column: 32, scope: !1057, inlinedAt: !1145)
!1151 = !DILocation(line: 930, column: 24, scope: !1049, inlinedAt: !1145)
!1152 = !DILocation(line: 932, column: 37, scope: !1048, inlinedAt: !1145)
!1153 = !DILocation(line: 932, column: 25, scope: !1048, inlinedAt: !1145)
!1154 = !DILocation(line: 933, column: 25, scope: !1048, inlinedAt: !1145)
!1155 = !DILocation(line: 934, column: 7, scope: !1048, inlinedAt: !1145)
!1156 = !DILocation(line: 934, column: 7, scope: !1064, inlinedAt: !1145)
!1157 = !DILocation(line: 937, column: 8, scope: !1042, inlinedAt: !1145)
!1158 = !DILocation(line: 928, column: 25, scope: !1042, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 1091, column: 15, scope: !1124)
!1160 = !DILocation(line: 928, column: 37, scope: !1042, inlinedAt: !1159)
!1161 = !DILocation(line: 930, column: 7, scope: !1049, inlinedAt: !1159)
!1162 = !DILocation(line: 930, column: 12, scope: !1049, inlinedAt: !1159)
!1163 = !DILocation(line: 930, column: 32, scope: !1057, inlinedAt: !1159)
!1164 = !DILocation(line: 930, column: 24, scope: !1049, inlinedAt: !1159)
!1165 = !DILocation(line: 932, column: 37, scope: !1048, inlinedAt: !1159)
!1166 = !DILocation(line: 932, column: 25, scope: !1048, inlinedAt: !1159)
!1167 = !DILocation(line: 933, column: 25, scope: !1048, inlinedAt: !1159)
!1168 = !DILocation(line: 934, column: 7, scope: !1048, inlinedAt: !1159)
!1169 = !DILocation(line: 934, column: 7, scope: !1064, inlinedAt: !1159)
!1170 = !DILocation(line: 937, column: 8, scope: !1042, inlinedAt: !1159)
!1171 = !DILocation(line: 1096, column: 15, scope: !902)
!1172 = !DILocation(line: 1096, column: 15, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !902, file: !3, discriminator: 12)
!1174 = !DILocation(line: 1096, column: 15, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !903, file: !3, discriminator: 13)
!1176 = !DILocation(line: 1096, column: 15, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 13)
!1178 = !DILocation(line: 1097, column: 13, scope: !903)
!1179 = !DILocation(line: 1100, column: 15, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1099, column: 13)
!1181 = !DILocation(line: 1101, column: 27, scope: !1180)
!1182 = !DILocation(line: 1107, column: 36, scope: !909)
!1183 = !DILocation(line: 1107, column: 27, scope: !909)
!1184 = !DILocation(line: 1108, column: 19, scope: !915)
!1185 = !DILocation(line: 1108, column: 17, scope: !909)
!1186 = !DILocation(line: 1110, column: 22, scope: !914)
!1187 = !DILocation(line: 1110, column: 22, scope: !915)
!1188 = !DILocation(line: 1112, column: 21, scope: !911)
!1189 = !DILocation(line: 1112, column: 21, scope: !918)
!1190 = !DILocation(line: 1112, column: 21, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1192, file: !3, discriminator: 3)
!1192 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1112, column: 21)
!1193 = !DILocation(line: 1112, column: 21, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1195, file: !3, discriminator: 5)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 1112, column: 21)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1112, column: 21)
!1197 = !DILocation(line: 1112, column: 21, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1192, file: !3, discriminator: 2)
!1199 = !DILocation(line: 1112, column: 21, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1201, file: !3, discriminator: 6)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1112, column: 21)
!1202 = !DILocation(line: 1112, column: 21, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 13)
!1204 = !DILocation(line: 1112, column: 21, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !913, file: !3, discriminator: 13)
!1206 = !DILocation(line: 1115, column: 19, scope: !912)
!1207 = !DILocation(line: 1115, column: 19, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 1)
!1209 = !DILocation(line: 1115, column: 19, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 2)
!1211 = !DILocation(line: 1118, column: 22, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1118, column: 17)
!1213 = !DILocation(line: 1118, column: 19, scope: !1212)
!1214 = !DILocation(line: 1118, column: 36, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1212, file: !3, discriminator: 1)
!1216 = !DILocation(line: 1118, column: 33, scope: !1215)
!1217 = !DILocation(line: 1118, column: 26, scope: !1212)
!1218 = !DILocation(line: 1119, column: 15, scope: !1212)
!1219 = !DILocation(line: 1119, column: 15, scope: !1215)
!1220 = !DILocation(line: 1120, column: 17, scope: !909)
!1221 = !DILocation(line: 1122, column: 11, scope: !892)
!1222 = !DILocation(line: 1126, column: 11, scope: !892)
!1223 = !DILocation(line: 1129, column: 29, scope: !892)
!1224 = !DILocation(line: 1130, column: 11, scope: !892)
!1225 = !DILocation(line: 1133, column: 29, scope: !892)
!1226 = !DILocation(line: 1134, column: 11, scope: !892)
!1227 = !DILocation(line: 1137, column: 26, scope: !892)
!1228 = !DILocation(line: 1137, column: 11, scope: !892)
!1229 = !DILocation(line: 1139, column: 11, scope: !892)
!1230 = !DILocation(line: 1143, column: 11, scope: !892)
!1231 = !DILocation(line: 1145, column: 9, scope: !892)
!1232 = !DILocation(line: 1147, column: 9, scope: !892)
!1233 = !DILocation(line: 1147, column: 9, scope: !998)
!1234 = !DILocation(line: 1150, column: 11, scope: !892)
!1235 = !DILocation(line: 1153, column: 26, scope: !893)
!1236 = !DILocation(line: 1153, column: 24, scope: !893)
!1237 = distinct !{!1237, !1238, !1239}
!1238 = !DILocation(line: 1034, column: 3, scope: !821)
!1239 = !DILocation(line: 1154, column: 5, scope: !821)
!1240 = !DILocation(line: 1157, column: 20, scope: !821)
!1241 = !DILocation(line: 1158, column: 10, scope: !961)
!1242 = !DILocation(line: 1158, column: 17, scope: !961)
!1243 = !DILocation(line: 1158, column: 3, scope: !961)
!1244 = !DILocation(line: 1159, column: 31, scope: !821)
!1245 = !DILocation(line: 1159, column: 20, scope: !821)
!1246 = !DILocation(line: 1159, column: 5, scope: !821)
!1247 = distinct !{!1247, !1248, !1249}
!1248 = !DILocation(line: 1158, column: 3, scope: !821)
!1249 = !DILocation(line: 1160, column: 60, scope: !821)
!1250 = !DILocation(line: 1162, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1162, column: 7)
!1252 = !DILocation(line: 1162, column: 7, scope: !821)
!1253 = !DILocation(line: 1174, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1174, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1173, column: 3)
!1256 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1173, column: 3)
!1257 = !DILocation(line: 1174, column: 26, scope: !1254)
!1258 = !DILocation(line: 1174, column: 9, scope: !1255)
!1259 = !DILocation(line: 1165, column: 22, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1164, column: 11)
!1261 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1163, column: 5)
!1262 = !DILocation(line: 1165, column: 9, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1260, file: !3, discriminator: 1)
!1264 = !DILocation(line: 1165, column: 9, scope: !1260)
!1265 = !DILocation(line: 1167, column: 22, scope: !1260)
!1266 = !DILocation(line: 1167, column: 70, scope: !1260)
!1267 = !DILocation(line: 1167, column: 60, scope: !1260)
!1268 = !DILocation(line: 1167, column: 53, scope: !1263)
!1269 = !DILocation(line: 1167, column: 9, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1260, file: !3, discriminator: 2)
!1271 = !DILocation(line: 1168, column: 7, scope: !1261)
!1272 = !DILocation(line: 928, column: 25, scope: !1042, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 1176, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 1175, column: 7)
!1275 = !DILocation(line: 928, column: 37, scope: !1042, inlinedAt: !1273)
!1276 = !DILocation(line: 930, column: 7, scope: !1049, inlinedAt: !1273)
!1277 = !DILocation(line: 930, column: 24, scope: !1049, inlinedAt: !1273)
!1278 = !DILocation(line: 932, column: 37, scope: !1048, inlinedAt: !1273)
!1279 = !DILocation(line: 932, column: 25, scope: !1048, inlinedAt: !1273)
!1280 = !DILocation(line: 933, column: 25, scope: !1048, inlinedAt: !1273)
!1281 = !DILocation(line: 934, column: 7, scope: !1048, inlinedAt: !1273)
!1282 = !DILocation(line: 934, column: 7, scope: !1064, inlinedAt: !1273)
!1283 = !DILocation(line: 937, column: 8, scope: !1042, inlinedAt: !1273)
!1284 = !DILocation(line: 928, column: 25, scope: !1042, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 1177, column: 9, scope: !1274)
!1286 = !DILocation(line: 928, column: 37, scope: !1042, inlinedAt: !1285)
!1287 = !DILocation(line: 930, column: 7, scope: !1049, inlinedAt: !1285)
!1288 = !DILocation(line: 930, column: 24, scope: !1049, inlinedAt: !1285)
!1289 = !DILocation(line: 932, column: 37, scope: !1048, inlinedAt: !1285)
!1290 = !DILocation(line: 932, column: 25, scope: !1048, inlinedAt: !1285)
!1291 = !DILocation(line: 933, column: 25, scope: !1048, inlinedAt: !1285)
!1292 = !DILocation(line: 934, column: 7, scope: !1048, inlinedAt: !1285)
!1293 = !DILocation(line: 934, column: 7, scope: !1064, inlinedAt: !1285)
!1294 = !DILocation(line: 937, column: 8, scope: !1042, inlinedAt: !1285)
!1295 = !DILocation(line: 1178, column: 7, scope: !1274)
!1296 = !DILocation(line: 1181, column: 18, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1180, column: 7)
!1298 = !DILocation(line: 1181, column: 5, scope: !1297)
!1299 = !DILocation(line: 1182, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1182, column: 7)
!1301 = !DILocation(line: 1182, column: 20, scope: !1300)
!1302 = !DILocation(line: 1182, column: 7, scope: !821)
!1303 = !DILocation(line: 1185, column: 9, scope: !921)
!1304 = !DILocation(line: 1185, column: 9, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !924, file: !3, discriminator: 2)
!1306 = !DILocation(line: 1185, column: 9, scope: !924)
!1307 = !DILocation(line: 1185, column: 9, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1309, file: !3, discriminator: 3)
!1309 = distinct !DILexicalBlock(scope: !924, file: !3, line: 1185, column: 9)
!1310 = !DILocation(line: 1185, column: 9, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1309, file: !3, discriminator: 2)
!1312 = !DILocation(line: 1185, column: 9, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1314, file: !3, discriminator: 4)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1185, column: 9)
!1315 = !DILocation(line: 1185, column: 9, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !921, file: !3, discriminator: 11)
!1317 = !DILocation(line: 1185, column: 9, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 13)
!1319 = !DILocation(line: 1185, column: 35, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 14)
!1321 = !DILocation(line: 1185, column: 9, scope: !1320)
!1322 = !DILocation(line: 1185, column: 43, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 15)
!1324 = !DILocation(line: 1185, column: 9, scope: !1323)
!1325 = !DILocation(line: 1185, column: 9, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 16)
!1327 = !DILocation(line: 1014, column: 9, scope: !821)
!1328 = !DILocation(line: 1186, column: 8, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1186, column: 7)
!1330 = !DILocation(line: 1186, column: 7, scope: !821)
!1331 = !DILocation(line: 1187, column: 5, scope: !1329)
!1332 = !DILocation(line: 1187, column: 5, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1329, file: !3, discriminator: 1)
!1334 = !DILocation(line: 1187, column: 5, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1329, file: !3, discriminator: 2)
!1336 = !DILocation(line: 1188, column: 9, scope: !927)
!1337 = !DILocation(line: 1188, column: 9, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !930, file: !3, discriminator: 2)
!1339 = !DILocation(line: 1188, column: 9, scope: !930)
!1340 = !DILocation(line: 1188, column: 9, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !3, discriminator: 3)
!1342 = distinct !DILexicalBlock(scope: !930, file: !3, line: 1188, column: 9)
!1343 = !DILocation(line: 1188, column: 9, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1342, file: !3, discriminator: 2)
!1345 = !DILocation(line: 1188, column: 9, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1347, file: !3, discriminator: 4)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1188, column: 9)
!1348 = !DILocation(line: 1188, column: 9, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !927, file: !3, discriminator: 11)
!1350 = !DILocation(line: 1188, column: 9, scope: !1318)
!1351 = !DILocation(line: 1188, column: 35, scope: !1320)
!1352 = !DILocation(line: 1188, column: 9, scope: !1320)
!1353 = !DILocation(line: 1188, column: 43, scope: !1323)
!1354 = !DILocation(line: 1188, column: 9, scope: !1323)
!1355 = !DILocation(line: 1188, column: 9, scope: !1326)
!1356 = !DILocation(line: 1014, column: 15, scope: !821)
!1357 = !DILocation(line: 1189, column: 8, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1189, column: 7)
!1359 = !DILocation(line: 1189, column: 7, scope: !821)
!1360 = !DILocation(line: 1190, column: 5, scope: !1358)
!1361 = !DILocation(line: 1190, column: 5, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1358, file: !3, discriminator: 1)
!1363 = !DILocation(line: 1190, column: 5, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1358, file: !3, discriminator: 2)
!1365 = !DILocation(line: 1191, column: 11, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1191, column: 7)
!1367 = !DILocation(line: 1191, column: 7, scope: !821)
!1368 = !DILocation(line: 1192, column: 5, scope: !1366)
!1369 = !DILocation(line: 1192, column: 5, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1366, file: !3, discriminator: 1)
!1371 = !DILocation(line: 1192, column: 5, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1366, file: !3, discriminator: 2)
!1373 = !DILocalVariable(name: "fp1", arg: 1, scope: !1374, file: !3, line: 660, type: !834)
!1374 = distinct !DISubprogram(name: "system_join", scope: !3, file: !3, line: 660, type: !1375, isLocal: true, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !834, !834}
!1377 = !{!1373, !1378, !1379, !1386, !1387, !1388, !1389, !1390, !1395, !1396, !1398, !1404, !1408, !1412, !1413}
!1378 = !DILocalVariable(name: "fp2", arg: 2, scope: !1374, file: !3, line: 660, type: !834)
!1379 = !DILocalVariable(name: "seq1", scope: !1374, file: !3, line: 662, type: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq", file: !3, line: 83, size: 192, elements: !1381)
!1381 = !{!1382, !1383, !1384}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1380, file: !3, line: 85, baseType: !54, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1380, file: !3, line: 86, baseType: !54, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1380, file: !3, line: 87, baseType: !1385, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1386 = !DILocalVariable(name: "seq2", scope: !1374, file: !3, line: 662, type: !1380)
!1387 = !DILocalVariable(name: "diff", scope: !1374, file: !3, line: 663, type: !89)
!1388 = !DILocalVariable(name: "eof1", scope: !1374, file: !3, line: 664, type: !99)
!1389 = !DILocalVariable(name: "eof2", scope: !1374, file: !3, line: 664, type: !99)
!1390 = !DILocalVariable(name: "hline1", scope: !1391, file: !3, line: 683, type: !1393)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 682, column: 5)
!1392 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 681, column: 7)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1395 = !DILocalVariable(name: "hline2", scope: !1391, file: !3, line: 684, type: !1393)
!1396 = !DILocalVariable(name: "i", scope: !1397, file: !3, line: 696, type: !54)
!1397 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 695, column: 5)
!1398 = !DILocalVariable(name: "j", scope: !1399, file: !3, line: 746, type: !54)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 745, column: 13)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 744, column: 11)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 744, column: 11)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 743, column: 9)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 742, column: 11)
!1404 = !DILocalVariable(name: "tmp", scope: !1405, file: !3, line: 754, type: !152)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 754, column: 11)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 753, column: 9)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 752, column: 11)
!1408 = !DILocalVariable(name: "tmp", scope: !1409, file: !3, line: 762, type: !152)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 762, column: 11)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 761, column: 9)
!1411 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 760, column: 11)
!1412 = !DILocalVariable(name: "line", scope: !1374, file: !3, line: 773, type: !152)
!1413 = !DILocalVariable(name: "checktail", scope: !1374, file: !3, line: 774, type: !99)
!1414 = !DILocation(line: 660, column: 13, scope: !1374, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 1193, column: 3, scope: !821)
!1416 = !DILocation(line: 660, column: 24, scope: !1374, inlinedAt: !1415)
!1417 = !DILocation(line: 666, column: 3, scope: !1374, inlinedAt: !1415)
!1418 = !DILocation(line: 667, column: 3, scope: !1374, inlinedAt: !1415)
!1419 = !DILocation(line: 662, column: 14, scope: !1374, inlinedAt: !1415)
!1420 = !DILocalVariable(name: "fp", arg: 1, scope: !1421, file: !3, line: 506, type: !834)
!1421 = distinct !DISubprogram(name: "getseq", scope: !3, file: !3, line: 506, type: !1422, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1425)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!99, !834, !1424, !89}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1425 = !{!1420, !1426, !1427, !1428}
!1426 = !DILocalVariable(name: "seq", arg: 2, scope: !1421, file: !3, line: 506, type: !1424)
!1427 = !DILocalVariable(name: "whichfile", arg: 3, scope: !1421, file: !3, line: 506, type: !89)
!1428 = !DILocalVariable(name: "i", scope: !1429, file: !3, line: 510, type: !54)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 509, column: 5)
!1430 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 508, column: 7)
!1431 = !DILocation(line: 506, column: 15, scope: !1421, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 671, column: 3, scope: !1374, inlinedAt: !1415)
!1433 = !DILocation(line: 506, column: 31, scope: !1421, inlinedAt: !1432)
!1434 = !DILocation(line: 506, column: 40, scope: !1421, inlinedAt: !1432)
!1435 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 511, column: 20, scope: !1429, inlinedAt: !1432)
!1437 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !1436)
!1438 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !1436)
!1439 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !1436)
!1440 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !1436)
!1441 = !DILocation(line: 511, column: 18, scope: !1429, inlinedAt: !1432)
!1442 = !DILocation(line: 510, column: 14, scope: !1429, inlinedAt: !1432)
!1443 = !DILocation(line: 513, column: 23, scope: !1444, inlinedAt: !1432)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 512, column: 7)
!1445 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 512, column: 7)
!1446 = !DILocation(line: 516, column: 7, scope: !1447, inlinedAt: !1432)
!1447 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 516, column: 7)
!1448 = !DILocation(line: 662, column: 20, scope: !1374, inlinedAt: !1415)
!1449 = !DILocation(line: 506, column: 15, scope: !1421, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 673, column: 3, scope: !1374, inlinedAt: !1415)
!1451 = !DILocation(line: 506, column: 31, scope: !1421, inlinedAt: !1450)
!1452 = !DILocation(line: 506, column: 40, scope: !1421, inlinedAt: !1450)
!1453 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 511, column: 20, scope: !1429, inlinedAt: !1450)
!1455 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !1454)
!1456 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !1454)
!1457 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !1454)
!1458 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !1454)
!1459 = !DILocation(line: 511, column: 18, scope: !1429, inlinedAt: !1450)
!1460 = !DILocation(line: 510, column: 14, scope: !1429, inlinedAt: !1450)
!1461 = !DILocation(line: 513, column: 23, scope: !1444, inlinedAt: !1450)
!1462 = !DILocation(line: 516, column: 7, scope: !1421, inlinedAt: !1432)
!1463 = !DILocation(line: 516, column: 7, scope: !1447, inlinedAt: !1450)
!1464 = !DILocation(line: 516, column: 7, scope: !1421, inlinedAt: !1450)
!1465 = !DILocation(line: 675, column: 7, scope: !1374, inlinedAt: !1415)
!1466 = !DILocation(line: 677, column: 21, scope: !1467, inlinedAt: !1415)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 676, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 675, column: 7)
!1469 = !DILocation(line: 677, column: 34, scope: !1470, inlinedAt: !1415)
!1470 = !DILexicalBlockFile(scope: !1467, file: !3, discriminator: 1)
!1471 = !DILocation(line: 677, column: 49, scope: !1470, inlinedAt: !1415)
!1472 = !{!1473, !980, i64 24}
!1473 = !{!"line", !1474, i64 0, !980, i64 24, !980, i64 32, !769, i64 40}
!1474 = !{!"linebuffer", !980, i64 0, !980, i64 8, !769, i64 16}
!1475 = !DILocation(line: 677, column: 21, scope: !1470, inlinedAt: !1415)
!1476 = !DILocation(line: 677, column: 21, scope: !1477, inlinedAt: !1415)
!1477 = !DILexicalBlockFile(scope: !1467, file: !3, discriminator: 3)
!1478 = !DILocation(line: 677, column: 19, scope: !1477, inlinedAt: !1415)
!1479 = !DILocation(line: 678, column: 21, scope: !1467, inlinedAt: !1415)
!1480 = !DILocation(line: 678, column: 34, scope: !1470, inlinedAt: !1415)
!1481 = !DILocation(line: 678, column: 49, scope: !1470, inlinedAt: !1415)
!1482 = !DILocation(line: 678, column: 21, scope: !1470, inlinedAt: !1415)
!1483 = !DILocation(line: 678, column: 21, scope: !1477, inlinedAt: !1415)
!1484 = !DILocation(line: 678, column: 19, scope: !1477, inlinedAt: !1415)
!1485 = !DILocation(line: 679, column: 5, scope: !1467, inlinedAt: !1415)
!1486 = !DILocation(line: 681, column: 25, scope: !1392, inlinedAt: !1415)
!1487 = !DILocation(line: 681, column: 40, scope: !1488, inlinedAt: !1415)
!1488 = !DILexicalBlockFile(scope: !1392, file: !3, discriminator: 1)
!1489 = !DILocation(line: 681, column: 7, scope: !1490, inlinedAt: !1415)
!1490 = !DILexicalBlockFile(scope: !1374, file: !3, discriminator: 2)
!1491 = !DILocation(line: 683, column: 48, scope: !1492, inlinedAt: !1415)
!1492 = !DILexicalBlockFile(scope: !1391, file: !3, discriminator: 1)
!1493 = !DILocation(line: 683, column: 26, scope: !1391, inlinedAt: !1415)
!1494 = !DILocation(line: 684, column: 35, scope: !1391, inlinedAt: !1415)
!1495 = !DILocation(line: 684, column: 26, scope: !1391, inlinedAt: !1415)
!1496 = !DILocation(line: 685, column: 7, scope: !1391, inlinedAt: !1415)
!1497 = !DILocation(line: 687, column: 19, scope: !1391, inlinedAt: !1415)
!1498 = !DILocalVariable(name: "fp", arg: 1, scope: !1499, file: !3, line: 527, type: !834)
!1499 = distinct !DISubprogram(name: "advance_seq", scope: !3, file: !3, line: 527, type: !1500, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!99, !834, !1424, !99, !89}
!1502 = !{!1498, !1503, !1504, !1505}
!1503 = !DILocalVariable(name: "seq", arg: 2, scope: !1499, file: !3, line: 527, type: !1424)
!1504 = !DILocalVariable(name: "first", arg: 3, scope: !1499, file: !3, line: 527, type: !99)
!1505 = !DILocalVariable(name: "whichfile", arg: 4, scope: !1499, file: !3, line: 527, type: !89)
!1506 = !DILocation(line: 527, column: 20, scope: !1499, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 689, column: 9, scope: !1508, inlinedAt: !1415)
!1508 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 688, column: 11)
!1509 = !DILocation(line: 527, column: 36, scope: !1499, inlinedAt: !1507)
!1510 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1511 = !DILocation(line: 527, column: 46, scope: !1499, inlinedAt: !1507)
!1512 = !DILocation(line: 527, column: 57, scope: !1499, inlinedAt: !1507)
!1513 = !DILocation(line: 506, column: 15, scope: !1421, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 532, column: 10, scope: !1499, inlinedAt: !1507)
!1515 = !DILocation(line: 506, column: 31, scope: !1421, inlinedAt: !1514)
!1516 = !DILocation(line: 506, column: 40, scope: !1421, inlinedAt: !1514)
!1517 = !DILocation(line: 516, column: 7, scope: !1447, inlinedAt: !1514)
!1518 = !DILocation(line: 690, column: 11, scope: !1391, inlinedAt: !1415)
!1519 = !DILocation(line: 684, column: 48, scope: !1492, inlinedAt: !1415)
!1520 = !DILocation(line: 688, column: 11, scope: !1391, inlinedAt: !1415)
!1521 = !DILocation(line: 527, column: 20, scope: !1499, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 691, column: 9, scope: !1523, inlinedAt: !1415)
!1523 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 690, column: 11)
!1524 = !DILocation(line: 527, column: 36, scope: !1499, inlinedAt: !1522)
!1525 = !DILocation(line: 527, column: 46, scope: !1499, inlinedAt: !1522)
!1526 = !DILocation(line: 527, column: 57, scope: !1499, inlinedAt: !1522)
!1527 = !DILocation(line: 506, column: 15, scope: !1421, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 532, column: 10, scope: !1499, inlinedAt: !1522)
!1529 = !DILocation(line: 506, column: 31, scope: !1421, inlinedAt: !1528)
!1530 = !DILocation(line: 506, column: 40, scope: !1421, inlinedAt: !1528)
!1531 = !DILocation(line: 516, column: 7, scope: !1447, inlinedAt: !1528)
!1532 = !DILocation(line: 516, column: 7, scope: !1421, inlinedAt: !1528)
!1533 = !DILocation(line: 694, column: 10, scope: !1534, inlinedAt: !1415)
!1534 = !DILexicalBlockFile(scope: !1374, file: !3, discriminator: 1)
!1535 = !DILocation(line: 694, column: 21, scope: !1490, inlinedAt: !1415)
!1536 = !DILocation(line: 694, column: 21, scope: !1534, inlinedAt: !1415)
!1537 = !DILocation(line: 694, column: 3, scope: !1538, inlinedAt: !1415)
!1538 = !DILexicalBlockFile(scope: !1374, file: !3, discriminator: 3)
!1539 = !DILocation(line: 697, column: 22, scope: !1397, inlinedAt: !1415)
!1540 = !DILocation(line: 697, column: 37, scope: !1397, inlinedAt: !1415)
!1541 = !DILocation(line: 698, column: 22, scope: !1397, inlinedAt: !1415)
!1542 = !DILocation(line: 698, column: 36, scope: !1397, inlinedAt: !1415)
!1543 = !DILocation(line: 697, column: 14, scope: !1397, inlinedAt: !1415)
!1544 = !DILocation(line: 663, column: 7, scope: !1374, inlinedAt: !1415)
!1545 = !DILocation(line: 699, column: 16, scope: !1546, inlinedAt: !1415)
!1546 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 699, column: 11)
!1547 = !DILocation(line: 699, column: 11, scope: !1397, inlinedAt: !1415)
!1548 = !DILocation(line: 701, column: 15, scope: !1549, inlinedAt: !1415)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 701, column: 15)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 700, column: 9)
!1551 = !{i8 0, i8 2}
!1552 = !DILocation(line: 701, column: 15, scope: !1550, inlinedAt: !1415)
!1553 = !DILocation(line: 702, column: 21, scope: !1549, inlinedAt: !1415)
!1554 = !DILocation(line: 702, column: 13, scope: !1549, inlinedAt: !1415)
!1555 = !DILocation(line: 527, column: 20, scope: !1499, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 703, column: 11, scope: !1550, inlinedAt: !1415)
!1557 = !DILocation(line: 527, column: 36, scope: !1499, inlinedAt: !1556)
!1558 = !DILocation(line: 527, column: 46, scope: !1499, inlinedAt: !1556)
!1559 = !DILocation(line: 527, column: 57, scope: !1499, inlinedAt: !1556)
!1560 = !DILocation(line: 506, column: 15, scope: !1421, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 532, column: 10, scope: !1499, inlinedAt: !1556)
!1562 = !DILocation(line: 506, column: 31, scope: !1421, inlinedAt: !1561)
!1563 = !DILocation(line: 506, column: 40, scope: !1421, inlinedAt: !1561)
!1564 = !DILocation(line: 508, column: 18, scope: !1430, inlinedAt: !1561)
!1565 = !DILocation(line: 508, column: 7, scope: !1421, inlinedAt: !1561)
!1566 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 511, column: 20, scope: !1429, inlinedAt: !1561)
!1568 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !1567)
!1569 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !1567)
!1570 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !1567)
!1571 = !DILocation(line: 184, column: 9, scope: !1572, inlinedAt: !1567)
!1572 = distinct !DILexicalBlock(scope: !49, file: !48, line: 184, column: 7)
!1573 = !DILocation(line: 184, column: 7, scope: !49, inlinedAt: !1567)
!1574 = !DILocation(line: 211, column: 25, scope: !49, inlinedAt: !1567)
!1575 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !1567)
!1576 = !DILocation(line: 511, column: 18, scope: !1429, inlinedAt: !1561)
!1577 = !DILocation(line: 510, column: 14, scope: !1429, inlinedAt: !1561)
!1578 = !DILocation(line: 512, column: 7, scope: !1579, inlinedAt: !1561)
!1579 = !DILexicalBlockFile(scope: !1445, file: !3, discriminator: 1)
!1580 = !DILocation(line: 513, column: 23, scope: !1444, inlinedAt: !1561)
!1581 = !DILocation(line: 516, column: 7, scope: !1447, inlinedAt: !1561)
!1582 = !DILocation(line: 516, column: 7, scope: !1421, inlinedAt: !1561)
!1583 = !DILocation(line: 705, column: 11, scope: !1550, inlinedAt: !1415)
!1584 = distinct !{!1584, !1585, !1586}
!1585 = !DILocation(line: 694, column: 3, scope: !1374)
!1586 = !DILocation(line: 767, column: 5, scope: !1374)
!1587 = !DILocation(line: 707, column: 16, scope: !1588, inlinedAt: !1415)
!1588 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 707, column: 11)
!1589 = !DILocation(line: 707, column: 11, scope: !1397, inlinedAt: !1415)
!1590 = distinct !{!1590, !1591, !1592}
!1591 = !DILocation(line: 719, column: 7, scope: !1397)
!1592 = !DILocation(line: 727, column: 50, scope: !1397)
!1593 = !DILocation(line: 709, column: 15, scope: !1594, inlinedAt: !1415)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 709, column: 15)
!1595 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 708, column: 9)
!1596 = !DILocation(line: 709, column: 15, scope: !1595, inlinedAt: !1415)
!1597 = !DILocation(line: 710, column: 33, scope: !1594, inlinedAt: !1415)
!1598 = !DILocation(line: 710, column: 13, scope: !1594, inlinedAt: !1415)
!1599 = !DILocation(line: 527, column: 20, scope: !1499, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 711, column: 11, scope: !1595, inlinedAt: !1415)
!1601 = !DILocation(line: 527, column: 36, scope: !1499, inlinedAt: !1600)
!1602 = !DILocation(line: 527, column: 46, scope: !1499, inlinedAt: !1600)
!1603 = !DILocation(line: 527, column: 57, scope: !1499, inlinedAt: !1600)
!1604 = !DILocation(line: 506, column: 15, scope: !1421, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 532, column: 10, scope: !1499, inlinedAt: !1600)
!1606 = !DILocation(line: 506, column: 31, scope: !1421, inlinedAt: !1605)
!1607 = !DILocation(line: 506, column: 40, scope: !1421, inlinedAt: !1605)
!1608 = !DILocation(line: 508, column: 18, scope: !1430, inlinedAt: !1605)
!1609 = !DILocation(line: 508, column: 7, scope: !1421, inlinedAt: !1605)
!1610 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 511, column: 20, scope: !1429, inlinedAt: !1605)
!1612 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !1611)
!1613 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !1611)
!1614 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !1611)
!1615 = !DILocation(line: 184, column: 9, scope: !1572, inlinedAt: !1611)
!1616 = !DILocation(line: 184, column: 7, scope: !49, inlinedAt: !1611)
!1617 = !DILocation(line: 211, column: 25, scope: !49, inlinedAt: !1611)
!1618 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !1611)
!1619 = !DILocation(line: 511, column: 18, scope: !1429, inlinedAt: !1605)
!1620 = !DILocation(line: 510, column: 14, scope: !1429, inlinedAt: !1605)
!1621 = !DILocation(line: 512, column: 7, scope: !1579, inlinedAt: !1605)
!1622 = !DILocation(line: 513, column: 23, scope: !1444, inlinedAt: !1605)
!1623 = !DILocation(line: 516, column: 7, scope: !1447, inlinedAt: !1605)
!1624 = !DILocation(line: 516, column: 7, scope: !1421, inlinedAt: !1605)
!1625 = !DILocation(line: 527, column: 20, scope: !1499, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 720, column: 14, scope: !1627, inlinedAt: !1415)
!1627 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 720, column: 13)
!1628 = !DILocation(line: 527, column: 36, scope: !1499, inlinedAt: !1626)
!1629 = !DILocation(line: 527, column: 46, scope: !1499, inlinedAt: !1626)
!1630 = !DILocation(line: 527, column: 57, scope: !1499, inlinedAt: !1626)
!1631 = !DILocation(line: 506, column: 15, scope: !1421, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 532, column: 10, scope: !1499, inlinedAt: !1626)
!1633 = !DILocation(line: 506, column: 31, scope: !1421, inlinedAt: !1632)
!1634 = !DILocation(line: 506, column: 40, scope: !1421, inlinedAt: !1632)
!1635 = !DILocation(line: 508, column: 18, scope: !1430, inlinedAt: !1632)
!1636 = !DILocation(line: 508, column: 7, scope: !1421, inlinedAt: !1632)
!1637 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 511, column: 20, scope: !1429, inlinedAt: !1632)
!1639 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !1638)
!1640 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !1638)
!1641 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !1638)
!1642 = !DILocation(line: 184, column: 9, scope: !1572, inlinedAt: !1638)
!1643 = !DILocation(line: 184, column: 7, scope: !49, inlinedAt: !1638)
!1644 = !DILocation(line: 186, column: 13, scope: !1645, inlinedAt: !1638)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !48, line: 186, column: 11)
!1646 = distinct !DILexicalBlock(scope: !1572, file: !48, line: 185, column: 5)
!1647 = !DILocation(line: 186, column: 11, scope: !1646, inlinedAt: !1638)
!1648 = !DILocation(line: 205, column: 11, scope: !1649, inlinedAt: !1638)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !48, line: 204, column: 11)
!1650 = distinct !DILexicalBlock(scope: !1572, file: !48, line: 199, column: 5)
!1651 = !DILocation(line: 204, column: 11, scope: !1650, inlinedAt: !1638)
!1652 = !DILocation(line: 206, column: 9, scope: !1649, inlinedAt: !1638)
!1653 = !DILocation(line: 207, column: 14, scope: !1650, inlinedAt: !1638)
!1654 = !DILocation(line: 207, column: 18, scope: !1650, inlinedAt: !1638)
!1655 = !DILocation(line: 207, column: 9, scope: !1650, inlinedAt: !1638)
!1656 = !DILocation(line: 211, column: 25, scope: !49, inlinedAt: !1638)
!1657 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !1638)
!1658 = !DILocation(line: 511, column: 18, scope: !1429, inlinedAt: !1632)
!1659 = !DILocation(line: 510, column: 14, scope: !1429, inlinedAt: !1632)
!1660 = !DILocation(line: 512, column: 30, scope: !1661, inlinedAt: !1632)
!1661 = !DILexicalBlockFile(scope: !1444, file: !3, discriminator: 1)
!1662 = !DILocation(line: 512, column: 7, scope: !1579, inlinedAt: !1632)
!1663 = !DILocation(line: 513, column: 9, scope: !1444, inlinedAt: !1632)
!1664 = !DILocation(line: 513, column: 23, scope: !1444, inlinedAt: !1632)
!1665 = !DILocation(line: 516, column: 22, scope: !1447, inlinedAt: !1632)
!1666 = !DILocation(line: 516, column: 7, scope: !1447, inlinedAt: !1632)
!1667 = !DILocation(line: 516, column: 7, scope: !1421, inlinedAt: !1632)
!1668 = !DILocation(line: 726, column: 23, scope: !1397, inlinedAt: !1415)
!1669 = !DILocation(line: 726, column: 51, scope: !1397, inlinedAt: !1415)
!1670 = !DILocation(line: 727, column: 23, scope: !1397, inlinedAt: !1415)
!1671 = !DILocation(line: 727, column: 37, scope: !1397, inlinedAt: !1415)
!1672 = !DILocation(line: 726, column: 15, scope: !1397, inlinedAt: !1415)
!1673 = !DILocation(line: 726, column: 14, scope: !1397, inlinedAt: !1415)
!1674 = !DILocation(line: 720, column: 47, scope: !1675, inlinedAt: !1415)
!1675 = !DILexicalBlockFile(scope: !1627, file: !3, discriminator: 2)
!1676 = !DILocation(line: 664, column: 14, scope: !1374, inlinedAt: !1415)
!1677 = !DILocation(line: 732, column: 7, scope: !1397, inlinedAt: !1415)
!1678 = distinct !{!1678, !1679, !1680}
!1679 = !DILocation(line: 732, column: 7, scope: !1397)
!1680 = !DILocation(line: 740, column: 50, scope: !1397)
!1681 = !DILocation(line: 527, column: 20, scope: !1499, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 733, column: 14, scope: !1683, inlinedAt: !1415)
!1683 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 733, column: 13)
!1684 = !DILocation(line: 527, column: 36, scope: !1499, inlinedAt: !1682)
!1685 = !DILocation(line: 527, column: 46, scope: !1499, inlinedAt: !1682)
!1686 = !DILocation(line: 527, column: 57, scope: !1499, inlinedAt: !1682)
!1687 = !DILocation(line: 506, column: 15, scope: !1421, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 532, column: 10, scope: !1499, inlinedAt: !1682)
!1689 = !DILocation(line: 506, column: 31, scope: !1421, inlinedAt: !1688)
!1690 = !DILocation(line: 506, column: 40, scope: !1421, inlinedAt: !1688)
!1691 = !DILocation(line: 508, column: 18, scope: !1430, inlinedAt: !1688)
!1692 = !DILocation(line: 508, column: 7, scope: !1421, inlinedAt: !1688)
!1693 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 511, column: 20, scope: !1429, inlinedAt: !1688)
!1695 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !1694)
!1696 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !1694)
!1697 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !1694)
!1698 = !DILocation(line: 184, column: 9, scope: !1572, inlinedAt: !1694)
!1699 = !DILocation(line: 184, column: 7, scope: !49, inlinedAt: !1694)
!1700 = !DILocation(line: 186, column: 13, scope: !1645, inlinedAt: !1694)
!1701 = !DILocation(line: 186, column: 11, scope: !1646, inlinedAt: !1694)
!1702 = !DILocation(line: 205, column: 11, scope: !1649, inlinedAt: !1694)
!1703 = !DILocation(line: 204, column: 11, scope: !1650, inlinedAt: !1694)
!1704 = !DILocation(line: 206, column: 9, scope: !1649, inlinedAt: !1694)
!1705 = !DILocation(line: 207, column: 14, scope: !1650, inlinedAt: !1694)
!1706 = !DILocation(line: 207, column: 18, scope: !1650, inlinedAt: !1694)
!1707 = !DILocation(line: 207, column: 9, scope: !1650, inlinedAt: !1694)
!1708 = !DILocation(line: 211, column: 25, scope: !49, inlinedAt: !1694)
!1709 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !1694)
!1710 = !DILocation(line: 511, column: 18, scope: !1429, inlinedAt: !1688)
!1711 = !DILocation(line: 510, column: 14, scope: !1429, inlinedAt: !1688)
!1712 = !DILocation(line: 512, column: 30, scope: !1661, inlinedAt: !1688)
!1713 = !DILocation(line: 512, column: 7, scope: !1579, inlinedAt: !1688)
!1714 = !DILocation(line: 513, column: 9, scope: !1444, inlinedAt: !1688)
!1715 = !DILocation(line: 513, column: 23, scope: !1444, inlinedAt: !1688)
!1716 = !DILocation(line: 516, column: 22, scope: !1447, inlinedAt: !1688)
!1717 = !DILocation(line: 516, column: 7, scope: !1447, inlinedAt: !1688)
!1718 = !DILocation(line: 516, column: 7, scope: !1421, inlinedAt: !1688)
!1719 = !DILocation(line: 739, column: 23, scope: !1397, inlinedAt: !1415)
!1720 = !DILocation(line: 739, column: 38, scope: !1397, inlinedAt: !1415)
!1721 = !DILocation(line: 740, column: 23, scope: !1397, inlinedAt: !1415)
!1722 = !DILocation(line: 740, column: 37, scope: !1397, inlinedAt: !1415)
!1723 = !DILocation(line: 739, column: 15, scope: !1397, inlinedAt: !1415)
!1724 = !DILocation(line: 739, column: 14, scope: !1397, inlinedAt: !1415)
!1725 = !DILocation(line: 733, column: 47, scope: !1726, inlinedAt: !1415)
!1726 = !DILexicalBlockFile(scope: !1683, file: !3, discriminator: 2)
!1727 = !DILocation(line: 744, column: 25, scope: !1728, inlinedAt: !1415)
!1728 = !DILexicalBlockFile(scope: !1400, file: !3, discriminator: 1)
!1729 = !DILocation(line: 742, column: 11, scope: !1397, inlinedAt: !1415)
!1730 = !DILocation(line: 696, column: 14, scope: !1397, inlinedAt: !1415)
!1731 = !DILocation(line: 744, column: 11, scope: !1732, inlinedAt: !1415)
!1732 = !DILexicalBlockFile(scope: !1401, file: !3, discriminator: 1)
!1733 = !DILocation(line: 746, column: 22, scope: !1399, inlinedAt: !1415)
!1734 = !DILocation(line: 747, column: 15, scope: !1735, inlinedAt: !1415)
!1735 = !DILexicalBlockFile(scope: !1736, file: !3, discriminator: 1)
!1736 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 747, column: 15)
!1737 = !DILocation(line: 748, column: 25, scope: !1738, inlinedAt: !1415)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 747, column: 15)
!1739 = !DILocation(line: 748, column: 40, scope: !1738, inlinedAt: !1415)
!1740 = !DILocation(line: 748, column: 17, scope: !1738, inlinedAt: !1415)
!1741 = !DILocation(line: 747, column: 47, scope: !1742, inlinedAt: !1415)
!1742 = !DILexicalBlockFile(scope: !1738, file: !3, discriminator: 2)
!1743 = !DILocation(line: 747, column: 29, scope: !1744, inlinedAt: !1415)
!1744 = !DILexicalBlockFile(scope: !1738, file: !3, discriminator: 1)
!1745 = distinct !{!1745, !1746, !1747}
!1746 = !DILocation(line: 747, column: 15, scope: !1736)
!1747 = !DILocation(line: 748, column: 53, scope: !1736)
!1748 = !DILocation(line: 744, column: 43, scope: !1749, inlinedAt: !1415)
!1749 = !DILexicalBlockFile(scope: !1400, file: !3, discriminator: 2)
!1750 = distinct !{!1750, !1751, !1752}
!1751 = !DILocation(line: 744, column: 11, scope: !1401)
!1752 = !DILocation(line: 749, column: 13, scope: !1401)
!1753 = !DILocation(line: 752, column: 11, scope: !1397, inlinedAt: !1415)
!1754 = !DILocation(line: 754, column: 11, scope: !1755, inlinedAt: !1415)
!1755 = !DILexicalBlockFile(scope: !1405, file: !3, discriminator: 1)
!1756 = !DILocation(line: 756, column: 9, scope: !1406, inlinedAt: !1415)
!1757 = !DILocation(line: 760, column: 11, scope: !1397, inlinedAt: !1415)
!1758 = !DILocation(line: 762, column: 11, scope: !1759, inlinedAt: !1415)
!1759 = !DILexicalBlockFile(scope: !1409, file: !3, discriminator: 1)
!1760 = !DILocation(line: 764, column: 9, scope: !1410, inlinedAt: !1415)
!1761 = !DILocation(line: 773, column: 3, scope: !1374, inlinedAt: !1415)
!1762 = !DILocation(line: 773, column: 16, scope: !1374, inlinedAt: !1415)
!1763 = !DILocation(line: 774, column: 8, scope: !1374, inlinedAt: !1415)
!1764 = !DILocation(line: 776, column: 7, scope: !1765, inlinedAt: !1415)
!1765 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 776, column: 7)
!1766 = !DILocation(line: 776, column: 25, scope: !1765, inlinedAt: !1415)
!1767 = !DILocation(line: 777, column: 7, scope: !1765, inlinedAt: !1415)
!1768 = !DILocation(line: 777, column: 12, scope: !1769, inlinedAt: !1415)
!1769 = !DILexicalBlockFile(scope: !1765, file: !3, discriminator: 1)
!1770 = !DILocation(line: 777, column: 42, scope: !1771, inlinedAt: !1415)
!1771 = !DILexicalBlockFile(scope: !1765, file: !3, discriminator: 2)
!1772 = !DILocation(line: 777, column: 39, scope: !1769, inlinedAt: !1415)
!1773 = !DILocation(line: 780, column: 8, scope: !1774, inlinedAt: !1415)
!1774 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 780, column: 7)
!1775 = !DILocation(line: 780, column: 28, scope: !1774, inlinedAt: !1415)
!1776 = !DILocation(line: 780, column: 45, scope: !1777, inlinedAt: !1415)
!1777 = !DILexicalBlockFile(scope: !1774, file: !3, discriminator: 2)
!1778 = !DILocation(line: 782, column: 11, scope: !1779, inlinedAt: !1415)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 781, column: 5)
!1780 = !DILocation(line: 783, column: 17, scope: !1781, inlinedAt: !1415)
!1781 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 782, column: 11)
!1782 = !DILocation(line: 783, column: 9, scope: !1781, inlinedAt: !1415)
!1783 = !DILocation(line: 784, column: 11, scope: !1784, inlinedAt: !1415)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 784, column: 11)
!1785 = !DILocation(line: 784, column: 11, scope: !1779, inlinedAt: !1415)
!1786 = !DILocation(line: 785, column: 9, scope: !1784, inlinedAt: !1415)
!1787 = !DILocation(line: 786, column: 14, scope: !1788, inlinedAt: !1415)
!1788 = !DILexicalBlockFile(scope: !1779, file: !3, discriminator: 1)
!1789 = !DILocation(line: 786, column: 7, scope: !1788, inlinedAt: !1415)
!1790 = !DILocation(line: 788, column: 15, scope: !1791, inlinedAt: !1415)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 788, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 787, column: 9)
!1793 = !DILocation(line: 788, column: 15, scope: !1792, inlinedAt: !1415)
!1794 = !DILocation(line: 789, column: 21, scope: !1791, inlinedAt: !1415)
!1795 = !DILocation(line: 789, column: 13, scope: !1791, inlinedAt: !1415)
!1796 = !DILocation(line: 790, column: 46, scope: !1797, inlinedAt: !1415)
!1797 = !DILexicalBlockFile(scope: !1798, file: !3, discriminator: 1)
!1798 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 790, column: 15)
!1799 = !DILocation(line: 790, column: 15, scope: !1798, inlinedAt: !1415)
!1800 = !DILocation(line: 790, column: 42, scope: !1798, inlinedAt: !1415)
!1801 = distinct !{!1801, !1802, !1803}
!1802 = !DILocation(line: 786, column: 7, scope: !1779)
!1803 = !DILocation(line: 792, column: 9, scope: !1779)
!1804 = !DILocation(line: 795, column: 8, scope: !1805, inlinedAt: !1415)
!1805 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 795, column: 7)
!1806 = !DILocation(line: 795, column: 28, scope: !1805, inlinedAt: !1415)
!1807 = !DILocation(line: 795, column: 45, scope: !1808, inlinedAt: !1415)
!1808 = !DILexicalBlockFile(scope: !1805, file: !3, discriminator: 2)
!1809 = !DILocation(line: 797, column: 11, scope: !1810, inlinedAt: !1415)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 796, column: 5)
!1811 = !DILocation(line: 798, column: 29, scope: !1812, inlinedAt: !1415)
!1812 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 797, column: 11)
!1813 = !DILocation(line: 798, column: 9, scope: !1812, inlinedAt: !1415)
!1814 = !DILocation(line: 799, column: 11, scope: !1810, inlinedAt: !1415)
!1815 = !DILocation(line: 800, column: 9, scope: !1816, inlinedAt: !1415)
!1816 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 799, column: 11)
!1817 = !DILocation(line: 801, column: 14, scope: !1818, inlinedAt: !1415)
!1818 = !DILexicalBlockFile(scope: !1810, file: !3, discriminator: 1)
!1819 = !DILocation(line: 801, column: 7, scope: !1818, inlinedAt: !1415)
!1820 = !DILocation(line: 803, column: 15, scope: !1821, inlinedAt: !1415)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 803, column: 15)
!1822 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 802, column: 9)
!1823 = !DILocation(line: 803, column: 15, scope: !1822, inlinedAt: !1415)
!1824 = !DILocation(line: 804, column: 33, scope: !1821, inlinedAt: !1415)
!1825 = !DILocation(line: 804, column: 13, scope: !1821, inlinedAt: !1415)
!1826 = !DILocation(line: 805, column: 46, scope: !1827, inlinedAt: !1415)
!1827 = !DILexicalBlockFile(scope: !1828, file: !3, discriminator: 1)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 805, column: 15)
!1829 = !DILocation(line: 805, column: 15, scope: !1828, inlinedAt: !1415)
!1830 = !DILocation(line: 805, column: 42, scope: !1828, inlinedAt: !1415)
!1831 = distinct !{!1831, !1832, !1833}
!1832 = !DILocation(line: 801, column: 7, scope: !1810)
!1833 = !DILocation(line: 807, column: 9, scope: !1810)
!1834 = !DILocation(line: 810, column: 13, scope: !1374, inlinedAt: !1415)
!1835 = !DILocalVariable(name: "line", arg: 1, scope: !1836, file: !3, line: 310, type: !152)
!1836 = distinct !DISubprogram(name: "freeline", scope: !3, file: !3, line: 310, type: !1837, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !152}
!1839 = !{!1835}
!1840 = !DILocation(line: 310, column: 24, scope: !1836, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 810, column: 3, scope: !1374, inlinedAt: !1415)
!1842 = !DILocation(line: 312, column: 12, scope: !1843, inlinedAt: !1841)
!1843 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 312, column: 7)
!1844 = !DILocation(line: 312, column: 7, scope: !1836, inlinedAt: !1841)
!1845 = !DILocation(line: 314, column: 15, scope: !1836, inlinedAt: !1841)
!1846 = !{!1473, !769, i64 40}
!1847 = !DILocation(line: 314, column: 3, scope: !1836, inlinedAt: !1841)
!1848 = !DILocation(line: 315, column: 16, scope: !1836, inlinedAt: !1841)
!1849 = !DILocation(line: 316, column: 19, scope: !1836, inlinedAt: !1841)
!1850 = !{!1473, !769, i64 16}
!1851 = !DILocation(line: 316, column: 3, scope: !1836, inlinedAt: !1841)
!1852 = !DILocation(line: 318, column: 1, scope: !1836, inlinedAt: !1841)
!1853 = !DILocation(line: 811, column: 3, scope: !1374, inlinedAt: !1415)
!1854 = !DILocalVariable(name: "seq", arg: 1, scope: !1855, file: !3, line: 536, type: !1424)
!1855 = distinct !DISubprogram(name: "delseq", scope: !3, file: !3, line: 536, type: !1856, isLocal: true, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1424}
!1858 = !{!1854, !1859}
!1859 = !DILocalVariable(name: "i", scope: !1855, file: !3, line: 538, type: !54)
!1860 = !DILocation(line: 536, column: 21, scope: !1855, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 813, column: 3, scope: !1374, inlinedAt: !1415)
!1862 = !DILocation(line: 538, column: 10, scope: !1855, inlinedAt: !1861)
!1863 = !DILocation(line: 539, column: 17, scope: !1864, inlinedAt: !1861)
!1864 = !DILexicalBlockFile(scope: !1865, file: !3, discriminator: 1)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 539, column: 3)
!1866 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 539, column: 3)
!1867 = !DILocation(line: 539, column: 3, scope: !1868, inlinedAt: !1861)
!1868 = !DILexicalBlockFile(scope: !1866, file: !3, discriminator: 1)
!1869 = !DILocation(line: 541, column: 17, scope: !1870, inlinedAt: !1861)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 540, column: 5)
!1871 = !DILocation(line: 310, column: 24, scope: !1836, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 541, column: 7, scope: !1870, inlinedAt: !1861)
!1873 = !DILocation(line: 312, column: 12, scope: !1843, inlinedAt: !1872)
!1874 = !DILocation(line: 312, column: 7, scope: !1836, inlinedAt: !1872)
!1875 = !DILocation(line: 314, column: 15, scope: !1836, inlinedAt: !1872)
!1876 = !DILocation(line: 314, column: 3, scope: !1836, inlinedAt: !1872)
!1877 = !DILocation(line: 315, column: 16, scope: !1836, inlinedAt: !1872)
!1878 = !DILocation(line: 316, column: 19, scope: !1836, inlinedAt: !1872)
!1879 = !DILocation(line: 316, column: 3, scope: !1836, inlinedAt: !1872)
!1880 = !DILocation(line: 317, column: 20, scope: !1836, inlinedAt: !1872)
!1881 = !DILocation(line: 318, column: 1, scope: !1836, inlinedAt: !1872)
!1882 = !DILocation(line: 542, column: 13, scope: !1870, inlinedAt: !1861)
!1883 = !DILocation(line: 542, column: 7, scope: !1870, inlinedAt: !1861)
!1884 = !DILocation(line: 539, column: 32, scope: !1885, inlinedAt: !1861)
!1885 = !DILexicalBlockFile(scope: !1865, file: !3, discriminator: 2)
!1886 = distinct !{!1886, !1887, !1888}
!1887 = !DILocation(line: 539, column: 3, scope: !1866)
!1888 = !DILocation(line: 543, column: 5, scope: !1866)
!1889 = !DILocation(line: 544, column: 3, scope: !1855, inlinedAt: !1861)
!1890 = !DILocation(line: 536, column: 21, scope: !1855, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 814, column: 3, scope: !1374, inlinedAt: !1415)
!1892 = !DILocation(line: 538, column: 10, scope: !1855, inlinedAt: !1891)
!1893 = !DILocation(line: 539, column: 17, scope: !1864, inlinedAt: !1891)
!1894 = !DILocation(line: 539, column: 3, scope: !1868, inlinedAt: !1891)
!1895 = !DILocation(line: 541, column: 17, scope: !1870, inlinedAt: !1891)
!1896 = !DILocation(line: 310, column: 24, scope: !1836, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 541, column: 7, scope: !1870, inlinedAt: !1891)
!1898 = !DILocation(line: 312, column: 12, scope: !1843, inlinedAt: !1897)
!1899 = !DILocation(line: 312, column: 7, scope: !1836, inlinedAt: !1897)
!1900 = !DILocation(line: 314, column: 15, scope: !1836, inlinedAt: !1897)
!1901 = !DILocation(line: 314, column: 3, scope: !1836, inlinedAt: !1897)
!1902 = !DILocation(line: 315, column: 16, scope: !1836, inlinedAt: !1897)
!1903 = !DILocation(line: 316, column: 19, scope: !1836, inlinedAt: !1897)
!1904 = !DILocation(line: 316, column: 3, scope: !1836, inlinedAt: !1897)
!1905 = !DILocation(line: 317, column: 20, scope: !1836, inlinedAt: !1897)
!1906 = !DILocation(line: 318, column: 1, scope: !1836, inlinedAt: !1897)
!1907 = !DILocation(line: 542, column: 13, scope: !1870, inlinedAt: !1891)
!1908 = !DILocation(line: 542, column: 7, scope: !1870, inlinedAt: !1891)
!1909 = !DILocation(line: 539, column: 32, scope: !1885, inlinedAt: !1891)
!1910 = !DILocation(line: 544, column: 3, scope: !1855, inlinedAt: !1891)
!1911 = !DILocation(line: 815, column: 1, scope: !1374, inlinedAt: !1415)
!1912 = !DILocation(line: 1195, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1195, column: 7)
!1914 = !DILocation(line: 1195, column: 20, scope: !1913)
!1915 = !DILocation(line: 1195, column: 7, scope: !821)
!1916 = !DILocation(line: 1196, column: 5, scope: !1913)
!1917 = !DILocation(line: 1196, column: 5, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1913, file: !3, discriminator: 1)
!1919 = !DILocation(line: 1196, column: 5, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1913, file: !3, discriminator: 2)
!1921 = !DILocation(line: 1197, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1197, column: 7)
!1923 = !DILocation(line: 1197, column: 20, scope: !1922)
!1924 = !DILocation(line: 1197, column: 7, scope: !821)
!1925 = !DILocation(line: 1198, column: 5, scope: !1922)
!1926 = !DILocation(line: 1198, column: 5, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1922, file: !3, discriminator: 1)
!1928 = !DILocation(line: 1198, column: 5, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1922, file: !3, discriminator: 2)
!1930 = !DILocation(line: 1200, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1200, column: 7)
!1932 = !DILocation(line: 1200, column: 37, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1931, file: !3, discriminator: 1)
!1934 = !DILocation(line: 1200, column: 34, scope: !1931)
!1935 = !DILocation(line: 1204, column: 1, scope: !821)
!1936 = !DILocation(line: 1180, column: 7, scope: !821)
!1937 = distinct !DISubprogram(name: "free_spareline", scope: !3, file: !3, line: 481, type: !1938, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1940)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null}
!1940 = !{!1941}
!1941 = !DILocalVariable(name: "i", scope: !1937, file: !3, line: 483, type: !54)
!1942 = !DILocation(line: 483, column: 10, scope: !1937)
!1943 = !DILocation(line: 487, column: 11, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 487, column: 11)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 486, column: 5)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 485, column: 3)
!1947 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 485, column: 3)
!1948 = !DILocation(line: 487, column: 11, scope: !1945)
!1949 = !DILocation(line: 310, column: 24, scope: !1836, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 489, column: 11, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 488, column: 9)
!1952 = !DILocation(line: 314, column: 15, scope: !1836, inlinedAt: !1950)
!1953 = !DILocation(line: 314, column: 3, scope: !1836, inlinedAt: !1950)
!1954 = !DILocation(line: 315, column: 16, scope: !1836, inlinedAt: !1950)
!1955 = !DILocation(line: 316, column: 19, scope: !1836, inlinedAt: !1950)
!1956 = !DILocation(line: 316, column: 3, scope: !1836, inlinedAt: !1950)
!1957 = !DILocation(line: 317, column: 20, scope: !1836, inlinedAt: !1950)
!1958 = !DILocation(line: 490, column: 17, scope: !1951)
!1959 = !DILocation(line: 490, column: 11, scope: !1951)
!1960 = !DILocation(line: 491, column: 9, scope: !1951)
!1961 = !DILocation(line: 493, column: 1, scope: !1937)
!1962 = distinct !DISubprogram(name: "add_field_list", scope: !3, file: !3, line: 905, type: !1963, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !88}
!1965 = !{!1966, !1967, !1968, !1970, !1971}
!1966 = !DILocalVariable(name: "str", arg: 1, scope: !1962, file: !3, line: 905, type: !88)
!1967 = !DILocalVariable(name: "p", scope: !1962, file: !3, line: 907, type: !88)
!1968 = !DILocalVariable(name: "file_index", scope: !1969, file: !3, line: 911, type: !89)
!1969 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 910, column: 5)
!1970 = !DILocalVariable(name: "field_index", scope: !1969, file: !3, line: 912, type: !54)
!1971 = !DILocalVariable(name: "spec_item", scope: !1969, file: !3, line: 913, type: !85)
!1972 = !DILocation(line: 905, column: 23, scope: !1962)
!1973 = !DILocation(line: 907, column: 9, scope: !1962)
!1974 = !DILocation(line: 909, column: 3, scope: !1962)
!1975 = distinct !{!1975, !1974, !1976}
!1976 = !DILocation(line: 921, column: 11, scope: !1962)
!1977 = !DILocation(line: 913, column: 19, scope: !1969)
!1978 = !DILocation(line: 915, column: 11, scope: !1969)
!1979 = !DILocation(line: 916, column: 11, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 916, column: 11)
!1981 = !DILocation(line: 916, column: 11, scope: !1969)
!1982 = !DILocation(line: 917, column: 11, scope: !1980)
!1983 = !DILocation(line: 917, column: 14, scope: !1980)
!1984 = !DILocation(line: 917, column: 9, scope: !1980)
!1985 = !DILocalVariable(name: "s", arg: 1, scope: !1986, file: !3, line: 866, type: !85)
!1986 = distinct !DISubprogram(name: "decode_field_spec", scope: !3, file: !3, line: 866, type: !1987, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !85, !180, !53}
!1989 = !{!1985, !1990, !1991}
!1990 = !DILocalVariable(name: "file_index", arg: 2, scope: !1986, file: !3, line: 866, type: !180)
!1991 = !DILocalVariable(name: "field_index", arg: 3, scope: !1986, file: !3, line: 866, type: !53)
!1992 = !DILocation(line: 866, column: 32, scope: !1986, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 918, column: 7, scope: !1969)
!1994 = !DILocation(line: 869, column: 11, scope: !1986, inlinedAt: !1993)
!1995 = !DILocation(line: 869, column: 3, scope: !1986, inlinedAt: !1993)
!1996 = !DILocation(line: 872, column: 11, scope: !1997, inlinedAt: !1993)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 872, column: 11)
!1998 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 870, column: 5)
!1999 = !DILocation(line: 872, column: 11, scope: !1998, inlinedAt: !1993)
!2000 = !DILocation(line: 875, column: 11, scope: !2001, inlinedAt: !1993)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 873, column: 9)
!2002 = !DILocation(line: 875, column: 11, scope: !2003, inlinedAt: !1993)
!2003 = !DILexicalBlockFile(scope: !2001, file: !3, discriminator: 1)
!2004 = !DILocation(line: 875, column: 11, scope: !2005, inlinedAt: !1993)
!2005 = !DILexicalBlockFile(scope: !2001, file: !3, discriminator: 2)
!2006 = !DILocation(line: 883, column: 11, scope: !2007, inlinedAt: !1993)
!2007 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 883, column: 11)
!2008 = !DILocation(line: 883, column: 16, scope: !2007, inlinedAt: !1993)
!2009 = !DILocation(line: 883, column: 11, scope: !1998, inlinedAt: !1993)
!2010 = !DILocation(line: 884, column: 9, scope: !2007, inlinedAt: !1993)
!2011 = !DILocation(line: 884, column: 9, scope: !2012, inlinedAt: !1993)
!2012 = !DILexicalBlockFile(scope: !2007, file: !3, discriminator: 1)
!2013 = !DILocation(line: 884, column: 9, scope: !2014, inlinedAt: !1993)
!2014 = !DILexicalBlockFile(scope: !2007, file: !3, discriminator: 2)
!2015 = !DILocation(line: 885, column: 26, scope: !1998, inlinedAt: !1993)
!2016 = !DILocation(line: 886, column: 46, scope: !1998, inlinedAt: !1993)
!2017 = !DILocation(line: 844, column: 35, scope: !1007, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 886, column: 22, scope: !1998, inlinedAt: !1993)
!2019 = !DILocation(line: 847, column: 3, scope: !1007, inlinedAt: !2018)
!2020 = !DILocation(line: 847, column: 21, scope: !1007, inlinedAt: !2018)
!2021 = !DILocation(line: 850, column: 24, scope: !1007, inlinedAt: !2018)
!2022 = !DILocation(line: 850, column: 16, scope: !1007, inlinedAt: !2018)
!2023 = !DILocation(line: 851, column: 13, scope: !1022, inlinedAt: !2018)
!2024 = !DILocation(line: 851, column: 33, scope: !1022, inlinedAt: !2018)
!2025 = !DILocation(line: 852, column: 9, scope: !1022, inlinedAt: !2018)
!2026 = !DILocation(line: 852, column: 5, scope: !1022, inlinedAt: !2018)
!2027 = !DILocation(line: 851, column: 71, scope: !1027, inlinedAt: !2018)
!2028 = !DILocation(line: 853, column: 18, scope: !1029, inlinedAt: !2018)
!2029 = !DILocation(line: 853, column: 39, scope: !1031, inlinedAt: !2018)
!2030 = !DILocation(line: 853, column: 32, scope: !1029, inlinedAt: !2018)
!2031 = !DILocation(line: 854, column: 5, scope: !1029, inlinedAt: !2018)
!2032 = !DILocation(line: 854, column: 5, scope: !1031, inlinedAt: !2018)
!2033 = !DILocation(line: 854, column: 5, scope: !1036, inlinedAt: !2018)
!2034 = !DILocation(line: 856, column: 12, scope: !1007, inlinedAt: !2018)
!2035 = !DILocation(line: 856, column: 16, scope: !1007, inlinedAt: !2018)
!2036 = !DILocation(line: 846, column: 10, scope: !1007, inlinedAt: !2018)
!2037 = !DILocation(line: 859, column: 1, scope: !1007, inlinedAt: !2018)
!2038 = !DILocation(line: 887, column: 7, scope: !1998, inlinedAt: !1993)
!2039 = !DILocation(line: 890, column: 7, scope: !1998, inlinedAt: !1993)
!2040 = !DILocation(line: 890, column: 7, scope: !2041, inlinedAt: !1993)
!2041 = !DILexicalBlockFile(scope: !1998, file: !3, discriminator: 1)
!2042 = !DILocation(line: 890, column: 7, scope: !2043, inlinedAt: !1993)
!2043 = !DILexicalBlockFile(scope: !1998, file: !3, discriminator: 2)
!2044 = !DILocation(line: 827, column: 7, scope: !2045, inlinedAt: !2052)
!2045 = distinct !DISubprogram(name: "add_field", scope: !3, file: !3, line: 820, type: !2046, isLocal: true, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !89, !54}
!2048 = !{!2049, !2050, !2051}
!2049 = !DILocalVariable(name: "file", arg: 1, scope: !2045, file: !3, line: 820, type: !89)
!2050 = !DILocalVariable(name: "field", arg: 2, scope: !2045, file: !3, line: 820, type: !54)
!2051 = !DILocalVariable(name: "o", scope: !2045, file: !3, line: 822, type: !190)
!2052 = distinct !DILocation(line: 919, column: 7, scope: !1969)
!2053 = !DILocation(line: 828, column: 6, scope: !2045, inlinedAt: !2052)
!2054 = !DILocation(line: 828, column: 11, scope: !2045, inlinedAt: !2052)
!2055 = !{!2056, !938, i64 0}
!2056 = !{!"outlist", !938, i64 0, !980, i64 8, !769, i64 16}
!2057 = !DILocation(line: 829, column: 6, scope: !2045, inlinedAt: !2052)
!2058 = !DILocation(line: 829, column: 12, scope: !2045, inlinedAt: !2052)
!2059 = !{!2056, !980, i64 8}
!2060 = !DILocation(line: 830, column: 6, scope: !2045, inlinedAt: !2052)
!2061 = !DILocation(line: 830, column: 11, scope: !2045, inlinedAt: !2052)
!2062 = !{!2056, !769, i64 16}
!2063 = !DILocation(line: 833, column: 3, scope: !2045, inlinedAt: !2052)
!2064 = !DILocation(line: 833, column: 16, scope: !2045, inlinedAt: !2052)
!2065 = !DILocation(line: 833, column: 21, scope: !2045, inlinedAt: !2052)
!2066 = !DILocation(line: 834, column: 15, scope: !2045, inlinedAt: !2052)
!2067 = !DILocation(line: 920, column: 5, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !1969, file: !3, discriminator: 1)
!2069 = !DILocation(line: 922, column: 1, scope: !1962)
!2070 = distinct !DISubprogram(name: "add_file_name", scope: !3, file: !3, line: 962, type: !2071, isLocal: true, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !88, !824, !180, !180, !180, !180, !180}
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2085}
!2074 = !DILocalVariable(name: "name", arg: 1, scope: !2070, file: !3, line: 962, type: !88)
!2075 = !DILocalVariable(name: "names", arg: 2, scope: !2070, file: !3, line: 962, type: !824)
!2076 = !DILocalVariable(name: "operand_status", arg: 3, scope: !2070, file: !3, line: 963, type: !180)
!2077 = !DILocalVariable(name: "joption_count", arg: 4, scope: !2070, file: !3, line: 963, type: !180)
!2078 = !DILocalVariable(name: "nfiles", arg: 5, scope: !2070, file: !3, line: 963, type: !180)
!2079 = !DILocalVariable(name: "prev_optc_status", arg: 6, scope: !2070, file: !3, line: 964, type: !180)
!2080 = !DILocalVariable(name: "optc_status", arg: 7, scope: !2070, file: !3, line: 964, type: !180)
!2081 = !DILocalVariable(name: "n", scope: !2070, file: !3, line: 966, type: !89)
!2082 = !DILocalVariable(name: "op0", scope: !2083, file: !3, line: 970, type: !99)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 969, column: 5)
!2084 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 968, column: 7)
!2085 = !DILocalVariable(name: "arg", scope: !2083, file: !3, line: 971, type: !88)
!2086 = !DILocation(line: 966, column: 11, scope: !2070)
!2087 = !DILocation(line: 966, column: 7, scope: !2070)
!2088 = !DILocation(line: 968, column: 9, scope: !2084)
!2089 = !DILocation(line: 968, column: 7, scope: !2070)
!2090 = !DILocation(line: 970, column: 19, scope: !2083)
!2091 = !DILocation(line: 970, column: 37, scope: !2083)
!2092 = !DILocation(line: 971, column: 19, scope: !2083)
!2093 = !DILocation(line: 971, column: 13, scope: !2083)
!2094 = !DILocation(line: 972, column: 15, scope: !2083)
!2095 = !DILocation(line: 972, column: 7, scope: !2083)
!2096 = !DILocation(line: 975, column: 24, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 973, column: 9)
!2098 = !DILocation(line: 975, column: 47, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2097, file: !3, discriminator: 1)
!2100 = !DILocation(line: 975, column: 11, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2097, file: !3, discriminator: 2)
!2102 = !DILocation(line: 976, column: 11, scope: !2097)
!2103 = !DILocation(line: 979, column: 27, scope: !2097)
!2104 = !DILocation(line: 844, column: 35, scope: !1007, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 980, column: 42, scope: !2097)
!2106 = !DILocation(line: 847, column: 3, scope: !1007, inlinedAt: !2105)
!2107 = !DILocation(line: 847, column: 21, scope: !1007, inlinedAt: !2105)
!2108 = !DILocation(line: 850, column: 24, scope: !1007, inlinedAt: !2105)
!2109 = !DILocation(line: 850, column: 16, scope: !1007, inlinedAt: !2105)
!2110 = !DILocation(line: 851, column: 13, scope: !1022, inlinedAt: !2105)
!2111 = !DILocation(line: 851, column: 33, scope: !1022, inlinedAt: !2105)
!2112 = !DILocation(line: 852, column: 9, scope: !1022, inlinedAt: !2105)
!2113 = !DILocation(line: 852, column: 5, scope: !1022, inlinedAt: !2105)
!2114 = !DILocation(line: 851, column: 71, scope: !1027, inlinedAt: !2105)
!2115 = !DILocation(line: 853, column: 18, scope: !1029, inlinedAt: !2105)
!2116 = !DILocation(line: 853, column: 39, scope: !1031, inlinedAt: !2105)
!2117 = !DILocation(line: 853, column: 32, scope: !1029, inlinedAt: !2105)
!2118 = !DILocation(line: 854, column: 5, scope: !1029, inlinedAt: !2105)
!2119 = !DILocation(line: 854, column: 5, scope: !1031, inlinedAt: !2105)
!2120 = !DILocation(line: 854, column: 5, scope: !1036, inlinedAt: !2105)
!2121 = !DILocation(line: 856, column: 12, scope: !1007, inlinedAt: !2105)
!2122 = !DILocation(line: 856, column: 16, scope: !1007, inlinedAt: !2105)
!2123 = !DILocation(line: 846, column: 10, scope: !1007, inlinedAt: !2105)
!2124 = !DILocation(line: 859, column: 1, scope: !1007, inlinedAt: !2105)
!2125 = !DILocation(line: 928, column: 25, scope: !1042, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 980, column: 11, scope: !2099)
!2127 = !DILocation(line: 928, column: 37, scope: !1042, inlinedAt: !2126)
!2128 = !DILocation(line: 930, column: 7, scope: !1049, inlinedAt: !2126)
!2129 = !DILocation(line: 930, column: 12, scope: !1049, inlinedAt: !2126)
!2130 = !DILocation(line: 930, column: 32, scope: !1057, inlinedAt: !2126)
!2131 = !DILocation(line: 930, column: 24, scope: !1049, inlinedAt: !2126)
!2132 = !DILocation(line: 932, column: 37, scope: !1048, inlinedAt: !2126)
!2133 = !DILocation(line: 932, column: 25, scope: !1048, inlinedAt: !2126)
!2134 = !DILocation(line: 933, column: 25, scope: !1048, inlinedAt: !2126)
!2135 = !DILocation(line: 934, column: 7, scope: !1048, inlinedAt: !2126)
!2136 = !DILocation(line: 934, column: 7, scope: !1064, inlinedAt: !2126)
!2137 = !DILocation(line: 937, column: 8, scope: !1042, inlinedAt: !2126)
!2138 = !DILocation(line: 981, column: 11, scope: !2097)
!2139 = !DILocation(line: 984, column: 11, scope: !2097)
!2140 = !DILocation(line: 984, column: 27, scope: !2097)
!2141 = !DILocation(line: 844, column: 35, scope: !1007, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 985, column: 42, scope: !2097)
!2143 = !DILocation(line: 847, column: 3, scope: !1007, inlinedAt: !2142)
!2144 = !DILocation(line: 847, column: 21, scope: !1007, inlinedAt: !2142)
!2145 = !DILocation(line: 850, column: 24, scope: !1007, inlinedAt: !2142)
!2146 = !DILocation(line: 850, column: 16, scope: !1007, inlinedAt: !2142)
!2147 = !DILocation(line: 851, column: 13, scope: !1022, inlinedAt: !2142)
!2148 = !DILocation(line: 851, column: 33, scope: !1022, inlinedAt: !2142)
!2149 = !DILocation(line: 852, column: 9, scope: !1022, inlinedAt: !2142)
!2150 = !DILocation(line: 852, column: 5, scope: !1022, inlinedAt: !2142)
!2151 = !DILocation(line: 851, column: 71, scope: !1027, inlinedAt: !2142)
!2152 = !DILocation(line: 853, column: 18, scope: !1029, inlinedAt: !2142)
!2153 = !DILocation(line: 853, column: 39, scope: !1031, inlinedAt: !2142)
!2154 = !DILocation(line: 853, column: 32, scope: !1029, inlinedAt: !2142)
!2155 = !DILocation(line: 854, column: 5, scope: !1029, inlinedAt: !2142)
!2156 = !DILocation(line: 854, column: 5, scope: !1031, inlinedAt: !2142)
!2157 = !DILocation(line: 854, column: 5, scope: !1036, inlinedAt: !2142)
!2158 = !DILocation(line: 856, column: 12, scope: !1007, inlinedAt: !2142)
!2159 = !DILocation(line: 856, column: 16, scope: !1007, inlinedAt: !2142)
!2160 = !DILocation(line: 846, column: 10, scope: !1007, inlinedAt: !2142)
!2161 = !DILocation(line: 859, column: 1, scope: !1007, inlinedAt: !2142)
!2162 = !DILocation(line: 928, column: 25, scope: !1042, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 985, column: 11, scope: !2099)
!2164 = !DILocation(line: 928, column: 37, scope: !1042, inlinedAt: !2163)
!2165 = !DILocation(line: 930, column: 7, scope: !1049, inlinedAt: !2163)
!2166 = !DILocation(line: 930, column: 12, scope: !1049, inlinedAt: !2163)
!2167 = !DILocation(line: 930, column: 32, scope: !1057, inlinedAt: !2163)
!2168 = !DILocation(line: 930, column: 24, scope: !1049, inlinedAt: !2163)
!2169 = !DILocation(line: 932, column: 37, scope: !1048, inlinedAt: !2163)
!2170 = !DILocation(line: 932, column: 25, scope: !1048, inlinedAt: !2163)
!2171 = !DILocation(line: 933, column: 25, scope: !1048, inlinedAt: !2163)
!2172 = !DILocation(line: 934, column: 7, scope: !1048, inlinedAt: !2163)
!2173 = !DILocation(line: 934, column: 7, scope: !1064, inlinedAt: !2163)
!2174 = !DILocation(line: 937, column: 8, scope: !1042, inlinedAt: !2163)
!2175 = !DILocation(line: 986, column: 11, scope: !2097)
!2176 = !DILocation(line: 989, column: 11, scope: !2097)
!2177 = !DILocation(line: 990, column: 11, scope: !2097)
!2178 = !DILocation(line: 992, column: 11, scope: !2083)
!2179 = !DILocation(line: 994, column: 31, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 993, column: 9)
!2181 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 992, column: 11)
!2182 = !DILocation(line: 994, column: 29, scope: !2180)
!2183 = !DILocation(line: 995, column: 22, scope: !2180)
!2184 = !DILocation(line: 995, column: 20, scope: !2180)
!2185 = !DILocation(line: 996, column: 9, scope: !2180)
!2186 = !DILocation(line: 1000, column: 23, scope: !2070)
!2187 = !DILocation(line: 1000, column: 3, scope: !2070)
!2188 = !DILocation(line: 1000, column: 21, scope: !2070)
!2189 = !DILocation(line: 1001, column: 3, scope: !2070)
!2190 = !DILocation(line: 1001, column: 12, scope: !2070)
!2191 = !DILocation(line: 1002, column: 15, scope: !2070)
!2192 = !DILocation(line: 1002, column: 11, scope: !2070)
!2193 = !DILocation(line: 1003, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 1003, column: 7)
!2195 = !DILocation(line: 1003, column: 25, scope: !2194)
!2196 = !DILocation(line: 1003, column: 7, scope: !2070)
!2197 = !DILocation(line: 1004, column: 18, scope: !2194)
!2198 = !DILocation(line: 1004, column: 5, scope: !2194)
!2199 = !DILocation(line: 1005, column: 1, scope: !2070)
!2200 = distinct !DISubprogram(name: "get_line", scope: !3, file: !3, line: 447, type: !2201, isLocal: true, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!99, !834, !1385, !89}
!2203 = !{!2204, !2205, !2206, !2207, !2208}
!2204 = !DILocalVariable(name: "fp", arg: 1, scope: !2200, file: !3, line: 447, type: !834)
!2205 = !DILocalVariable(name: "linep", arg: 2, scope: !2200, file: !3, line: 447, type: !1385)
!2206 = !DILocalVariable(name: "which", arg: 3, scope: !2200, file: !3, line: 447, type: !89)
!2207 = !DILocalVariable(name: "line", scope: !2200, file: !3, line: 449, type: !152)
!2208 = !DILocalVariable(name: "tmp", scope: !2209, file: !3, line: 453, type: !152)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 453, column: 7)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 452, column: 5)
!2211 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 451, column: 7)
!2212 = !DILocation(line: 447, column: 17, scope: !2200)
!2213 = !DILocation(line: 447, column: 35, scope: !2200)
!2214 = !DILocation(line: 447, column: 46, scope: !2200)
!2215 = !DILocation(line: 449, column: 23, scope: !2200)
!2216 = !DILocation(line: 449, column: 16, scope: !2200)
!2217 = !DILocation(line: 451, column: 30, scope: !2211)
!2218 = !DILocation(line: 451, column: 15, scope: !2211)
!2219 = !DILocation(line: 451, column: 12, scope: !2211)
!2220 = !DILocation(line: 451, column: 7, scope: !2200)
!2221 = !DILocation(line: 453, column: 7, scope: !2209)
!2222 = !DILocation(line: 453, column: 7, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2209, file: !3, discriminator: 1)
!2224 = !DILocation(line: 454, column: 14, scope: !2210)
!2225 = !DILocation(line: 455, column: 5, scope: !2210)
!2226 = !DILocation(line: 457, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 457, column: 7)
!2228 = !DILocation(line: 457, column: 7, scope: !2200)
!2229 = !DILocalVariable(name: "line", arg: 1, scope: !2230, file: !3, line: 430, type: !152)
!2230 = distinct !DISubprogram(name: "reset_line", scope: !3, file: !3, line: 430, type: !1837, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2231)
!2231 = !{!2229}
!2232 = !DILocation(line: 430, column: 26, scope: !2230, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 458, column: 5, scope: !2227)
!2234 = !DILocation(line: 432, column: 9, scope: !2230, inlinedAt: !2233)
!2235 = !DILocation(line: 432, column: 17, scope: !2230, inlinedAt: !2233)
!2236 = !DILocation(line: 458, column: 5, scope: !2227)
!2237 = !DILocalVariable(name: "linep", arg: 1, scope: !2238, file: !3, line: 436, type: !1385)
!2238 = distinct !DISubprogram(name: "init_linep", scope: !3, file: !3, line: 436, type: !2239, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!152, !1385}
!2241 = !{!2237, !2242}
!2242 = !DILocalVariable(name: "line", scope: !2238, file: !3, line: 438, type: !152)
!2243 = !DILocation(line: 436, column: 27, scope: !2238, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 460, column: 12, scope: !2227)
!2245 = !DILocation(line: 438, column: 23, scope: !2238, inlinedAt: !2244)
!2246 = !DILocation(line: 438, column: 16, scope: !2238, inlinedAt: !2244)
!2247 = !DILocation(line: 439, column: 10, scope: !2238, inlinedAt: !2244)
!2248 = !DILocation(line: 462, column: 38, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 462, column: 7)
!2250 = !DILocation(line: 462, column: 9, scope: !2249)
!2251 = !DILocation(line: 462, column: 7, scope: !2200)
!2252 = !DILocalVariable(name: "__stream", arg: 1, scope: !2253, file: !2254, line: 132, type: !834)
!2253 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2254, file: !2254, line: 132, type: !2255, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2257)
!2254 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!89, !834}
!2257 = !{!2252}
!2258 = !DILocation(line: 132, column: 1, scope: !2253, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 464, column: 11, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 464, column: 11)
!2261 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 463, column: 5)
!2262 = !DILocation(line: 134, column: 10, scope: !2253, inlinedAt: !2259)
!2263 = !{!2264, !938, i64 0}
!2264 = !{!"_IO_FILE", !938, i64 0, !769, i64 8, !769, i64 16, !769, i64 24, !769, i64 32, !769, i64 40, !769, i64 48, !769, i64 56, !769, i64 64, !769, i64 72, !769, i64 80, !769, i64 88, !769, i64 96, !769, i64 104, !938, i64 112, !938, i64 116, !980, i64 120, !2265, i64 128, !770, i64 130, !770, i64 131, !769, i64 136, !980, i64 144, !769, i64 152, !769, i64 160, !769, i64 168, !769, i64 176, !980, i64 184, !938, i64 192, !770, i64 196}
!2265 = !{!"short", !770, i64 0}
!2266 = !DILocation(line: 464, column: 11, scope: !2260)
!2267 = !DILocation(line: 464, column: 11, scope: !2261)
!2268 = !DILocation(line: 465, column: 9, scope: !2260)
!2269 = !DILocation(line: 465, column: 9, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2260, file: !3, discriminator: 1)
!2271 = !DILocation(line: 465, column: 9, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2260, file: !3, discriminator: 2)
!2273 = !DILocation(line: 310, column: 24, scope: !1836, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 466, column: 7, scope: !2261)
!2275 = !DILocation(line: 312, column: 12, scope: !1843, inlinedAt: !2274)
!2276 = !DILocation(line: 312, column: 7, scope: !1836, inlinedAt: !2274)
!2277 = !DILocation(line: 314, column: 15, scope: !1836, inlinedAt: !2274)
!2278 = !DILocation(line: 314, column: 3, scope: !1836, inlinedAt: !2274)
!2279 = !DILocation(line: 315, column: 16, scope: !1836, inlinedAt: !2274)
!2280 = !DILocation(line: 316, column: 19, scope: !1836, inlinedAt: !2274)
!2281 = !DILocation(line: 316, column: 3, scope: !1836, inlinedAt: !2274)
!2282 = !DILocation(line: 317, column: 20, scope: !1836, inlinedAt: !2274)
!2283 = !DILocation(line: 318, column: 1, scope: !1836, inlinedAt: !2274)
!2284 = !DILocation(line: 469, column: 5, scope: !2200)
!2285 = !DILocation(line: 469, column: 3, scope: !2200)
!2286 = !DILocalVariable(name: "line", arg: 1, scope: !2287, file: !3, line: 271, type: !152)
!2287 = distinct !DISubprogram(name: "xfields", scope: !3, file: !3, line: 271, type: !1837, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2288)
!2288 = !{!2286, !2289, !2290, !2291, !2294}
!2289 = !DILocalVariable(name: "ptr", scope: !2287, file: !3, line: 273, type: !88)
!2290 = !DILocalVariable(name: "lim", scope: !2287, file: !3, line: 274, type: !85)
!2291 = !DILocalVariable(name: "sep", scope: !2292, file: !3, line: 281, type: !88)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 280, column: 5)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 279, column: 7)
!2294 = !DILocalVariable(name: "sep", scope: !2295, file: !3, line: 294, type: !88)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 293, column: 9)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 286, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 285, column: 12)
!2298 = !DILocation(line: 271, column: 23, scope: !2287, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 471, column: 3, scope: !2200)
!2300 = !DILocation(line: 273, column: 25, scope: !2287, inlinedAt: !2299)
!2301 = !DILocation(line: 273, column: 9, scope: !2287, inlinedAt: !2299)
!2302 = !DILocation(line: 274, column: 37, scope: !2287, inlinedAt: !2299)
!2303 = !{!1473, !980, i64 8}
!2304 = !DILocation(line: 274, column: 25, scope: !2287, inlinedAt: !2299)
!2305 = !DILocation(line: 274, column: 44, scope: !2287, inlinedAt: !2299)
!2306 = !DILocation(line: 274, column: 15, scope: !2287, inlinedAt: !2299)
!2307 = !DILocation(line: 276, column: 11, scope: !2308, inlinedAt: !2299)
!2308 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 276, column: 7)
!2309 = !DILocation(line: 276, column: 7, scope: !2287, inlinedAt: !2299)
!2310 = !DILocation(line: 279, column: 12, scope: !2293, inlinedAt: !2299)
!2311 = !DILocation(line: 279, column: 9, scope: !2293, inlinedAt: !2299)
!2312 = !DILocation(line: 279, column: 23, scope: !2313, inlinedAt: !2299)
!2313 = !DILexicalBlockFile(scope: !2293, file: !3, discriminator: 1)
!2314 = !DILocation(line: 279, column: 16, scope: !2293, inlinedAt: !2299)
!2315 = !DILocation(line: 282, column: 43, scope: !2316, inlinedAt: !2299)
!2316 = !DILexicalBlockFile(scope: !2317, file: !3, discriminator: 1)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 282, column: 7)
!2318 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 282, column: 7)
!2319 = !DILocation(line: 282, column: 21, scope: !2316, inlinedAt: !2299)
!2320 = !DILocation(line: 281, column: 13, scope: !2292, inlinedAt: !2299)
!2321 = !DILocation(line: 282, column: 51, scope: !2316, inlinedAt: !2299)
!2322 = !DILocation(line: 282, column: 7, scope: !2323, inlinedAt: !2299)
!2323 = !DILexicalBlockFile(scope: !2318, file: !3, discriminator: 1)
!2324 = !DILocation(line: 259, column: 13, scope: !2325, inlinedAt: !2333)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 259, column: 7)
!2326 = distinct !DISubprogram(name: "extract_field", scope: !3, file: !3, line: 257, type: !2327, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !152, !88, !54}
!2329 = !{!2330, !2331, !2332}
!2330 = !DILocalVariable(name: "line", arg: 1, scope: !2326, file: !3, line: 257, type: !152)
!2331 = !DILocalVariable(name: "field", arg: 2, scope: !2326, file: !3, line: 257, type: !88)
!2332 = !DILocalVariable(name: "len", arg: 3, scope: !2326, file: !3, line: 257, type: !54)
!2333 = distinct !DILocation(line: 283, column: 9, scope: !2317, inlinedAt: !2299)
!2334 = !DILocation(line: 283, column: 39, scope: !2317, inlinedAt: !2299)
!2335 = !DILocation(line: 257, column: 29, scope: !2326, inlinedAt: !2333)
!2336 = !DILocation(line: 257, column: 41, scope: !2326, inlinedAt: !2333)
!2337 = !DILocation(line: 257, column: 55, scope: !2326, inlinedAt: !2333)
!2338 = !DILocation(line: 259, column: 30, scope: !2325, inlinedAt: !2333)
!2339 = !{!1473, !980, i64 32}
!2340 = !DILocation(line: 259, column: 21, scope: !2325, inlinedAt: !2333)
!2341 = !DILocation(line: 259, column: 7, scope: !2326, inlinedAt: !2333)
!2342 = !DILocation(line: 261, column: 22, scope: !2343, inlinedAt: !2333)
!2343 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 260, column: 5)
!2344 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 261, column: 22, scope: !2343, inlinedAt: !2333)
!2346 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !2345)
!2347 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !2345)
!2348 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !2345)
!2349 = !DILocation(line: 184, column: 9, scope: !1572, inlinedAt: !2345)
!2350 = !DILocation(line: 184, column: 7, scope: !49, inlinedAt: !2345)
!2351 = !DILocation(line: 186, column: 13, scope: !1645, inlinedAt: !2345)
!2352 = !DILocation(line: 186, column: 11, scope: !1646, inlinedAt: !2345)
!2353 = !DILocation(line: 205, column: 11, scope: !1649, inlinedAt: !2345)
!2354 = !DILocation(line: 204, column: 11, scope: !1650, inlinedAt: !2345)
!2355 = !DILocation(line: 206, column: 9, scope: !1649, inlinedAt: !2345)
!2356 = !DILocation(line: 207, column: 14, scope: !1650, inlinedAt: !2345)
!2357 = !DILocation(line: 207, column: 18, scope: !1650, inlinedAt: !2345)
!2358 = !DILocation(line: 207, column: 9, scope: !1650, inlinedAt: !2345)
!2359 = !DILocation(line: 210, column: 7, scope: !49, inlinedAt: !2345)
!2360 = !DILocation(line: 211, column: 25, scope: !49, inlinedAt: !2345)
!2361 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !2345)
!2362 = !DILocation(line: 261, column: 20, scope: !2343, inlinedAt: !2333)
!2363 = !DILocation(line: 262, column: 5, scope: !2343, inlinedAt: !2333)
!2364 = !DILocation(line: 282, column: 34, scope: !2316, inlinedAt: !2299)
!2365 = !DILocation(line: 264, column: 9, scope: !2326, inlinedAt: !2333)
!2366 = !DILocation(line: 265, column: 3, scope: !2326, inlinedAt: !2333)
!2367 = !DILocation(line: 263, column: 31, scope: !2326, inlinedAt: !2333)
!2368 = !DILocation(line: 263, column: 35, scope: !2326, inlinedAt: !2333)
!2369 = !{!2370, !769, i64 0}
!2370 = !{!"field", !769, i64 0, !980, i64 8}
!2371 = !DILocation(line: 264, column: 31, scope: !2326, inlinedAt: !2333)
!2372 = !DILocation(line: 264, column: 35, scope: !2326, inlinedAt: !2333)
!2373 = !{!2370, !980, i64 8}
!2374 = !DILocation(line: 282, column: 70, scope: !2375, inlinedAt: !2299)
!2375 = !DILexicalBlockFile(scope: !2317, file: !3, discriminator: 2)
!2376 = distinct !{!2376, !2377, !2378}
!2377 = !DILocation(line: 282, column: 7, scope: !2318)
!2378 = !DILocation(line: 283, column: 44, scope: !2318)
!2379 = !DILocation(line: 285, column: 16, scope: !2297, inlinedAt: !2299)
!2380 = !DILocation(line: 285, column: 12, scope: !2293, inlinedAt: !2299)
!2381 = !DILocation(line: 162, column: 10, scope: !2382, inlinedAt: !2387)
!2382 = distinct !DISubprogram(name: "field_sep", scope: !122, file: !122, line: 160, type: !2383, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!99, !84}
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "ch", arg: 1, scope: !2382, file: !122, line: 160, type: !84)
!2387 = distinct !DILocation(line: 288, column: 14, scope: !2388, inlinedAt: !2299)
!2388 = !DILexicalBlockFile(scope: !2296, file: !3, discriminator: 1)
!2389 = !DILocation(line: 288, column: 25, scope: !2388, inlinedAt: !2299)
!2390 = !DILocation(line: 160, column: 26, scope: !2382, inlinedAt: !2387)
!2391 = !{!2265, !2265, i64 0}
!2392 = !DILocation(line: 162, column: 29, scope: !2393, inlinedAt: !2387)
!2393 = !DILexicalBlockFile(scope: !2382, file: !122, discriminator: 1)
!2394 = !DILocation(line: 162, column: 23, scope: !2382, inlinedAt: !2387)
!2395 = !DILocation(line: 288, column: 7, scope: !2388, inlinedAt: !2299)
!2396 = distinct !{!2396, !2397, !2398}
!2397 = !DILocation(line: 292, column: 7, scope: !2296)
!2398 = !DILocation(line: 303, column: 24, scope: !2296)
!2399 = !DILocation(line: 289, column: 13, scope: !2400, inlinedAt: !2299)
!2400 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 289, column: 13)
!2401 = !DILocation(line: 289, column: 19, scope: !2400, inlinedAt: !2299)
!2402 = !DILocation(line: 289, column: 13, scope: !2296, inlinedAt: !2299)
!2403 = distinct !{!2403, !2404, !2405}
!2404 = !DILocation(line: 288, column: 7, scope: !2296)
!2405 = !DILocation(line: 290, column: 11, scope: !2296)
!2406 = !DILocation(line: 295, column: 16, scope: !2407, inlinedAt: !2299)
!2407 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 295, column: 11)
!2408 = !DILocation(line: 294, column: 17, scope: !2295, inlinedAt: !2299)
!2409 = !DILocation(line: 295, column: 35, scope: !2410, inlinedAt: !2299)
!2410 = !DILexicalBlockFile(scope: !2411, file: !3, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 295, column: 11)
!2412 = !DILocation(line: 295, column: 42, scope: !2410, inlinedAt: !2299)
!2413 = !DILocation(line: 295, column: 58, scope: !2414, inlinedAt: !2299)
!2414 = !DILexicalBlockFile(scope: !2411, file: !3, discriminator: 2)
!2415 = !DILocation(line: 160, column: 26, scope: !2382, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 295, column: 47, scope: !2414, inlinedAt: !2299)
!2417 = !DILocation(line: 162, column: 10, scope: !2382, inlinedAt: !2416)
!2418 = !DILocation(line: 162, column: 29, scope: !2393, inlinedAt: !2416)
!2419 = !DILocation(line: 162, column: 23, scope: !2382, inlinedAt: !2416)
!2420 = !DILocation(line: 295, column: 11, scope: !2421, inlinedAt: !2299)
!2421 = !DILexicalBlockFile(scope: !2407, file: !3, discriminator: 3)
!2422 = distinct !{!2422, !2423, !2424}
!2423 = !DILocation(line: 295, column: 11, scope: !2407)
!2424 = !DILocation(line: 296, column: 13, scope: !2407)
!2425 = !DILocation(line: 297, column: 41, scope: !2295, inlinedAt: !2299)
!2426 = !DILocation(line: 257, column: 29, scope: !2326, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 297, column: 11, scope: !2295, inlinedAt: !2299)
!2428 = !DILocation(line: 257, column: 41, scope: !2326, inlinedAt: !2427)
!2429 = !DILocation(line: 257, column: 55, scope: !2326, inlinedAt: !2427)
!2430 = !DILocation(line: 259, column: 13, scope: !2325, inlinedAt: !2427)
!2431 = !DILocation(line: 259, column: 30, scope: !2325, inlinedAt: !2427)
!2432 = !DILocation(line: 259, column: 21, scope: !2325, inlinedAt: !2427)
!2433 = !DILocation(line: 259, column: 7, scope: !2326, inlinedAt: !2427)
!2434 = !DILocation(line: 261, column: 22, scope: !2343, inlinedAt: !2427)
!2435 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 261, column: 22, scope: !2343, inlinedAt: !2427)
!2437 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !2436)
!2438 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !2436)
!2439 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !2436)
!2440 = !DILocation(line: 184, column: 9, scope: !1572, inlinedAt: !2436)
!2441 = !DILocation(line: 184, column: 7, scope: !49, inlinedAt: !2436)
!2442 = !DILocation(line: 186, column: 13, scope: !1645, inlinedAt: !2436)
!2443 = !DILocation(line: 186, column: 11, scope: !1646, inlinedAt: !2436)
!2444 = !DILocation(line: 205, column: 11, scope: !1649, inlinedAt: !2436)
!2445 = !DILocation(line: 204, column: 11, scope: !1650, inlinedAt: !2436)
!2446 = !DILocation(line: 206, column: 9, scope: !1649, inlinedAt: !2436)
!2447 = !DILocation(line: 207, column: 14, scope: !1650, inlinedAt: !2436)
!2448 = !DILocation(line: 207, column: 18, scope: !1650, inlinedAt: !2436)
!2449 = !DILocation(line: 207, column: 9, scope: !1650, inlinedAt: !2436)
!2450 = !DILocation(line: 210, column: 7, scope: !49, inlinedAt: !2436)
!2451 = !DILocation(line: 211, column: 25, scope: !49, inlinedAt: !2436)
!2452 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !2436)
!2453 = !DILocation(line: 261, column: 20, scope: !2343, inlinedAt: !2427)
!2454 = !DILocation(line: 262, column: 5, scope: !2343, inlinedAt: !2427)
!2455 = !DILocation(line: 264, column: 9, scope: !2326, inlinedAt: !2427)
!2456 = !DILocation(line: 265, column: 3, scope: !2326, inlinedAt: !2427)
!2457 = !DILocation(line: 263, column: 31, scope: !2326, inlinedAt: !2427)
!2458 = !DILocation(line: 263, column: 35, scope: !2326, inlinedAt: !2427)
!2459 = !DILocation(line: 264, column: 31, scope: !2326, inlinedAt: !2427)
!2460 = !DILocation(line: 264, column: 35, scope: !2326, inlinedAt: !2427)
!2461 = !DILocation(line: 298, column: 15, scope: !2295, inlinedAt: !2299)
!2462 = !DILocation(line: 300, column: 35, scope: !2463, inlinedAt: !2299)
!2463 = !DILexicalBlockFile(scope: !2464, file: !3, discriminator: 1)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 300, column: 11)
!2465 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 300, column: 11)
!2466 = !DILocation(line: 300, column: 42, scope: !2463, inlinedAt: !2299)
!2467 = !DILocation(line: 300, column: 56, scope: !2468, inlinedAt: !2299)
!2468 = !DILexicalBlockFile(scope: !2464, file: !3, discriminator: 2)
!2469 = !DILocation(line: 160, column: 26, scope: !2382, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 300, column: 45, scope: !2468, inlinedAt: !2299)
!2471 = !DILocation(line: 162, column: 10, scope: !2382, inlinedAt: !2470)
!2472 = !DILocation(line: 162, column: 29, scope: !2393, inlinedAt: !2470)
!2473 = !DILocation(line: 162, column: 23, scope: !2382, inlinedAt: !2470)
!2474 = !DILocation(line: 300, column: 11, scope: !2475, inlinedAt: !2299)
!2475 = !DILexicalBlockFile(scope: !2465, file: !3, discriminator: 3)
!2476 = distinct !{!2476, !2477, !2478}
!2477 = !DILocation(line: 300, column: 11, scope: !2465)
!2478 = !DILocation(line: 301, column: 13, scope: !2465)
!2479 = !DILocation(line: 306, column: 33, scope: !2287, inlinedAt: !2299)
!2480 = !DILocation(line: 257, column: 29, scope: !2326, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 306, column: 3, scope: !2287, inlinedAt: !2299)
!2482 = !DILocation(line: 257, column: 41, scope: !2326, inlinedAt: !2481)
!2483 = !DILocation(line: 257, column: 55, scope: !2326, inlinedAt: !2481)
!2484 = !DILocation(line: 259, column: 13, scope: !2325, inlinedAt: !2481)
!2485 = !DILocation(line: 259, column: 30, scope: !2325, inlinedAt: !2481)
!2486 = !DILocation(line: 259, column: 21, scope: !2325, inlinedAt: !2481)
!2487 = !DILocation(line: 259, column: 7, scope: !2326, inlinedAt: !2481)
!2488 = !DILocation(line: 261, column: 22, scope: !2343, inlinedAt: !2481)
!2489 = !DILocation(line: 180, column: 19, scope: !49, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 261, column: 22, scope: !2343, inlinedAt: !2481)
!2491 = !DILocation(line: 180, column: 30, scope: !49, inlinedAt: !2490)
!2492 = !DILocation(line: 180, column: 41, scope: !49, inlinedAt: !2490)
!2493 = !DILocation(line: 182, column: 10, scope: !49, inlinedAt: !2490)
!2494 = !DILocation(line: 184, column: 9, scope: !1572, inlinedAt: !2490)
!2495 = !DILocation(line: 184, column: 7, scope: !49, inlinedAt: !2490)
!2496 = !DILocation(line: 186, column: 13, scope: !1645, inlinedAt: !2490)
!2497 = !DILocation(line: 186, column: 11, scope: !1646, inlinedAt: !2490)
!2498 = !DILocation(line: 205, column: 11, scope: !1649, inlinedAt: !2490)
!2499 = !DILocation(line: 204, column: 11, scope: !1650, inlinedAt: !2490)
!2500 = !DILocation(line: 206, column: 9, scope: !1649, inlinedAt: !2490)
!2501 = !DILocation(line: 207, column: 14, scope: !1650, inlinedAt: !2490)
!2502 = !DILocation(line: 207, column: 18, scope: !1650, inlinedAt: !2490)
!2503 = !DILocation(line: 207, column: 9, scope: !1650, inlinedAt: !2490)
!2504 = !DILocation(line: 210, column: 7, scope: !49, inlinedAt: !2490)
!2505 = !DILocation(line: 211, column: 25, scope: !49, inlinedAt: !2490)
!2506 = !DILocation(line: 211, column: 10, scope: !49, inlinedAt: !2490)
!2507 = !DILocation(line: 261, column: 20, scope: !2343, inlinedAt: !2481)
!2508 = !DILocation(line: 262, column: 5, scope: !2343, inlinedAt: !2481)
!2509 = !DILocation(line: 264, column: 9, scope: !2326, inlinedAt: !2481)
!2510 = !DILocation(line: 265, column: 3, scope: !2326, inlinedAt: !2481)
!2511 = !DILocation(line: 263, column: 31, scope: !2326, inlinedAt: !2481)
!2512 = !DILocation(line: 263, column: 35, scope: !2326, inlinedAt: !2481)
!2513 = !DILocation(line: 264, column: 31, scope: !2326, inlinedAt: !2481)
!2514 = !DILocation(line: 264, column: 35, scope: !2326, inlinedAt: !2481)
!2515 = !DILocation(line: 307, column: 1, scope: !2287, inlinedAt: !2299)
!2516 = !DILocation(line: 473, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 473, column: 7)
!2518 = !DILocation(line: 473, column: 7, scope: !2200)
!2519 = !DILocalVariable(name: "prev", arg: 1, scope: !2520, file: !3, line: 394, type: !1393)
!2520 = distinct !DISubprogram(name: "check_order", scope: !3, file: !3, line: 394, type: !2521, isLocal: true, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !1393, !1393, !89}
!2523 = !{!2519, !2524, !2525, !2526, !2531}
!2524 = !DILocalVariable(name: "current", arg: 2, scope: !2520, file: !3, line: 395, type: !1393)
!2525 = !DILocalVariable(name: "whatfile", arg: 3, scope: !2520, file: !3, line: 396, type: !89)
!2526 = !DILocalVariable(name: "join_field", scope: !2527, file: !3, line: 403, type: !54)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 402, column: 9)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 401, column: 11)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 400, column: 5)
!2530 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 398, column: 7)
!2531 = !DILocalVariable(name: "len", scope: !2532, file: !3, line: 407, type: !54)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 405, column: 13)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 404, column: 15)
!2534 = !DILocation(line: 394, column: 33, scope: !2520, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 474, column: 5, scope: !2517)
!2536 = !DILocation(line: 395, column: 33, scope: !2520, inlinedAt: !2535)
!2537 = !DILocation(line: 396, column: 18, scope: !2520, inlinedAt: !2535)
!2538 = !DILocation(line: 398, column: 7, scope: !2530, inlinedAt: !2535)
!2539 = !DILocation(line: 399, column: 7, scope: !2530, inlinedAt: !2535)
!2540 = !DILocation(line: 398, column: 7, scope: !2541, inlinedAt: !2535)
!2541 = !DILexicalBlockFile(scope: !2520, file: !3, discriminator: 1)
!2542 = !DILocation(line: 401, column: 12, scope: !2528, inlinedAt: !2535)
!2543 = !DILocation(line: 401, column: 11, scope: !2529, inlinedAt: !2535)
!2544 = !DILocation(line: 403, column: 40, scope: !2527, inlinedAt: !2535)
!2545 = !DILocation(line: 403, column: 18, scope: !2527, inlinedAt: !2535)
!2546 = !DILocation(line: 404, column: 15, scope: !2533, inlinedAt: !2535)
!2547 = !DILocation(line: 404, column: 62, scope: !2533, inlinedAt: !2535)
!2548 = !DILocation(line: 404, column: 15, scope: !2527, inlinedAt: !2535)
!2549 = !DILocation(line: 407, column: 41, scope: !2532, inlinedAt: !2535)
!2550 = !DILocation(line: 407, column: 22, scope: !2532, inlinedAt: !2535)
!2551 = !DILocation(line: 408, column: 21, scope: !2552, inlinedAt: !2535)
!2552 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 408, column: 19)
!2553 = !DILocation(line: 408, column: 27, scope: !2552, inlinedAt: !2535)
!2554 = !DILocation(line: 408, column: 43, scope: !2555, inlinedAt: !2535)
!2555 = !DILexicalBlockFile(scope: !2552, file: !3, discriminator: 1)
!2556 = !DILocation(line: 408, column: 54, scope: !2555, inlinedAt: !2535)
!2557 = !DILocation(line: 408, column: 30, scope: !2555, inlinedAt: !2535)
!2558 = !DILocation(line: 408, column: 59, scope: !2555, inlinedAt: !2535)
!2559 = !DILocation(line: 408, column: 19, scope: !2560, inlinedAt: !2535)
!2560 = !DILexicalBlockFile(scope: !2532, file: !3, discriminator: 1)
!2561 = !DILocation(line: 413, column: 21, scope: !2532, inlinedAt: !2535)
!2562 = !DILocation(line: 415, column: 23, scope: !2532, inlinedAt: !2535)
!2563 = !DILocation(line: 415, column: 41, scope: !2532, inlinedAt: !2535)
!2564 = !DILocation(line: 417, column: 25, scope: !2532, inlinedAt: !2535)
!2565 = !DILocation(line: 418, column: 22, scope: !2532, inlinedAt: !2535)
!2566 = !DILocation(line: 418, column: 45, scope: !2532, inlinedAt: !2535)
!2567 = !DILocation(line: 419, column: 22, scope: !2532, inlinedAt: !2535)
!2568 = !DILocation(line: 419, column: 46, scope: !2532, inlinedAt: !2535)
!2569 = !DILocation(line: 415, column: 15, scope: !2532, inlinedAt: !2535)
!2570 = !DILocation(line: 423, column: 51, scope: !2532, inlinedAt: !2535)
!2571 = !DILocation(line: 424, column: 13, scope: !2532, inlinedAt: !2535)
!2572 = !DILocation(line: 476, column: 23, scope: !2200)
!2573 = !DILocation(line: 477, column: 3, scope: !2200)
!2574 = !DILocation(line: 478, column: 1, scope: !2200)
!2575 = distinct !DISubprogram(name: "prjoin", scope: !3, file: !3, line: 592, type: !2576, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{null, !1393, !1393}
!2578 = !{!2579, !2580, !2581, !2584, !2585, !2586, !2587}
!2579 = !DILocalVariable(name: "line1", arg: 1, scope: !2575, file: !3, line: 592, type: !1393)
!2580 = !DILocalVariable(name: "line2", arg: 2, scope: !2575, file: !3, line: 592, type: !1393)
!2581 = !DILocalVariable(name: "outlist", scope: !2575, file: !3, line: 594, type: !2582)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!2584 = !DILocalVariable(name: "output_separator", scope: !2575, file: !3, line: 595, type: !87)
!2585 = !DILocalVariable(name: "field", scope: !2575, file: !3, line: 596, type: !54)
!2586 = !DILocalVariable(name: "line", scope: !2575, file: !3, line: 597, type: !1393)
!2587 = !DILocalVariable(name: "o", scope: !2588, file: !3, line: 602, type: !2582)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 601, column: 5)
!2589 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 600, column: 7)
!2590 = !DILocation(line: 592, column: 28, scope: !2575)
!2591 = !DILocation(line: 592, column: 54, scope: !2575)
!2592 = !DILocation(line: 595, column: 27, scope: !2575)
!2593 = !DILocation(line: 599, column: 26, scope: !2575)
!2594 = !DILocation(line: 594, column: 25, scope: !2575)
!2595 = !DILocation(line: 600, column: 7, scope: !2589)
!2596 = !DILocation(line: 600, column: 7, scope: !2575)
!2597 = !DILocation(line: 595, column: 31, scope: !2575)
!2598 = !DILocation(line: 602, column: 29, scope: !2588)
!2599 = !DILocation(line: 607, column: 18, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 607, column: 15)
!2601 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 606, column: 9)
!2602 = !DILocation(line: 607, column: 23, scope: !2600)
!2603 = !DILocation(line: 622, column: 31, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 621, column: 13)
!2605 = !DILocation(line: 622, column: 23, scope: !2604)
!2606 = !DILocation(line: 597, column: 22, scope: !2575)
!2607 = !DILocation(line: 623, column: 26, scope: !2604)
!2608 = !DILocation(line: 607, column: 15, scope: !2601)
!2609 = !DILocation(line: 596, column: 10, scope: !2575)
!2610 = !DILocalVariable(name: "n", arg: 1, scope: !2611, file: !3, line: 552, type: !54)
!2611 = distinct !DISubprogram(name: "prfield", scope: !3, file: !3, line: 552, type: !2612, isLocal: true, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !54, !1393}
!2614 = !{!2610, !2615, !2616}
!2615 = !DILocalVariable(name: "line", arg: 2, scope: !2611, file: !3, line: 552, type: !1393)
!2616 = !DILocalVariable(name: "len", scope: !2611, file: !3, line: 554, type: !54)
!2617 = !DILocation(line: 552, column: 17, scope: !2611, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 625, column: 11, scope: !2601)
!2619 = !DILocation(line: 552, column: 39, scope: !2611, inlinedAt: !2618)
!2620 = !DILocation(line: 556, column: 17, scope: !2621, inlinedAt: !2618)
!2621 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 556, column: 7)
!2622 = !DILocation(line: 556, column: 9, scope: !2621, inlinedAt: !2618)
!2623 = !DILocation(line: 556, column: 7, scope: !2611, inlinedAt: !2618)
!2624 = !DILocation(line: 558, column: 19, scope: !2625, inlinedAt: !2618)
!2625 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 557, column: 5)
!2626 = !DILocation(line: 558, column: 29, scope: !2625, inlinedAt: !2618)
!2627 = !DILocation(line: 554, column: 10, scope: !2611, inlinedAt: !2618)
!2628 = !DILocation(line: 559, column: 11, scope: !2629, inlinedAt: !2618)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 559, column: 11)
!2630 = !DILocation(line: 559, column: 11, scope: !2625, inlinedAt: !2618)
!2631 = !DILocation(line: 560, column: 9, scope: !2629, inlinedAt: !2618)
!2632 = !DILocation(line: 561, column: 16, scope: !2633, inlinedAt: !2618)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 561, column: 16)
!2634 = !DILocation(line: 561, column: 16, scope: !2629, inlinedAt: !2618)
!2635 = !DILocation(line: 562, column: 9, scope: !2633, inlinedAt: !2618)
!2636 = !DILocation(line: 564, column: 12, scope: !2637, inlinedAt: !2618)
!2637 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 564, column: 12)
!2638 = !DILocation(line: 564, column: 12, scope: !2621, inlinedAt: !2618)
!2639 = !DILocation(line: 565, column: 5, scope: !2637, inlinedAt: !2618)
!2640 = !DILocation(line: 626, column: 18, scope: !2601)
!2641 = !DILocation(line: 627, column: 17, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 627, column: 15)
!2643 = !DILocation(line: 627, column: 15, scope: !2601)
!2644 = !DILocalVariable(name: "__c", arg: 1, scope: !2645, file: !2254, line: 105, type: !89)
!2645 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2254, file: !2254, line: 105, type: !2646, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!89, !89}
!2648 = !{!2644}
!2649 = !DILocation(line: 105, column: 23, scope: !2645, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 629, column: 11, scope: !2601)
!2651 = !DILocation(line: 107, column: 10, scope: !2645, inlinedAt: !2650)
!2652 = !{!2264, !769, i64 40}
!2653 = !{!2264, !769, i64 48}
!2654 = !{!"branch_weights", i32 2000, i32 1}
!2655 = !DILocation(line: 107, column: 10, scope: !2656, inlinedAt: !2650)
!2656 = !DILexicalBlockFile(scope: !2645, file: !2254, discriminator: 1)
!2657 = distinct !{!2657, !2658, !2659}
!2658 = !DILocation(line: 605, column: 7, scope: !2588)
!2659 = !DILocation(line: 630, column: 9, scope: !2588)
!2660 = !DILocation(line: 107, column: 10, scope: !2661, inlinedAt: !2650)
!2661 = !DILexicalBlockFile(scope: !2645, file: !2254, discriminator: 2)
!2662 = !DILocation(line: 631, column: 7, scope: !2588)
!2663 = !DILocation(line: 105, column: 23, scope: !2645, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 631, column: 7, scope: !2588)
!2665 = !DILocation(line: 107, column: 10, scope: !2645, inlinedAt: !2664)
!2666 = !DILocation(line: 107, column: 10, scope: !2656, inlinedAt: !2664)
!2667 = !DILocation(line: 107, column: 10, scope: !2661, inlinedAt: !2664)
!2668 = !DILocation(line: 639, column: 9, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 636, column: 9)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 635, column: 11)
!2671 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 634, column: 5)
!2672 = !DILocation(line: 552, column: 17, scope: !2611, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 647, column: 7, scope: !2671)
!2674 = !DILocation(line: 552, column: 39, scope: !2611, inlinedAt: !2673)
!2675 = !DILocation(line: 556, column: 17, scope: !2621, inlinedAt: !2673)
!2676 = !DILocation(line: 556, column: 9, scope: !2621, inlinedAt: !2673)
!2677 = !DILocation(line: 556, column: 7, scope: !2611, inlinedAt: !2673)
!2678 = !DILocation(line: 558, column: 19, scope: !2625, inlinedAt: !2673)
!2679 = !DILocation(line: 558, column: 29, scope: !2625, inlinedAt: !2673)
!2680 = !DILocation(line: 554, column: 10, scope: !2611, inlinedAt: !2673)
!2681 = !DILocation(line: 559, column: 11, scope: !2629, inlinedAt: !2673)
!2682 = !DILocation(line: 559, column: 11, scope: !2625, inlinedAt: !2673)
!2683 = !DILocation(line: 560, column: 9, scope: !2629, inlinedAt: !2673)
!2684 = !DILocation(line: 561, column: 16, scope: !2633, inlinedAt: !2673)
!2685 = !DILocation(line: 561, column: 16, scope: !2629, inlinedAt: !2673)
!2686 = !DILocation(line: 562, column: 9, scope: !2633, inlinedAt: !2673)
!2687 = !DILocation(line: 564, column: 12, scope: !2637, inlinedAt: !2673)
!2688 = !DILocation(line: 564, column: 12, scope: !2621, inlinedAt: !2673)
!2689 = !DILocation(line: 565, column: 5, scope: !2637, inlinedAt: !2673)
!2690 = !DILocation(line: 650, column: 24, scope: !2671)
!2691 = !DILocation(line: 650, column: 38, scope: !2671)
!2692 = !DILocation(line: 650, column: 7, scope: !2671)
!2693 = !DILocation(line: 651, column: 24, scope: !2671)
!2694 = !DILocation(line: 651, column: 38, scope: !2671)
!2695 = !DILocation(line: 651, column: 7, scope: !2671)
!2696 = !DILocation(line: 653, column: 7, scope: !2671)
!2697 = !DILocation(line: 105, column: 23, scope: !2645, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 653, column: 7, scope: !2671)
!2699 = !DILocation(line: 107, column: 10, scope: !2645, inlinedAt: !2698)
!2700 = !DILocation(line: 107, column: 10, scope: !2656, inlinedAt: !2698)
!2701 = !DILocation(line: 107, column: 10, scope: !2661, inlinedAt: !2698)
!2702 = !DILocation(line: 655, column: 1, scope: !2575)
!2703 = distinct !DISubprogram(name: "keycmp", scope: !3, file: !3, line: 326, type: !2704, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!89, !1393, !1393, !54, !54}
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715}
!2707 = !DILocalVariable(name: "line1", arg: 1, scope: !2703, file: !3, line: 326, type: !1393)
!2708 = !DILocalVariable(name: "line2", arg: 2, scope: !2703, file: !3, line: 326, type: !1393)
!2709 = !DILocalVariable(name: "jf_1", arg: 3, scope: !2703, file: !3, line: 327, type: !54)
!2710 = !DILocalVariable(name: "jf_2", arg: 4, scope: !2703, file: !3, line: 327, type: !54)
!2711 = !DILocalVariable(name: "beg1", scope: !2703, file: !3, line: 330, type: !88)
!2712 = !DILocalVariable(name: "beg2", scope: !2703, file: !3, line: 331, type: !88)
!2713 = !DILocalVariable(name: "len1", scope: !2703, file: !3, line: 333, type: !54)
!2714 = !DILocalVariable(name: "len2", scope: !2703, file: !3, line: 334, type: !54)
!2715 = !DILocalVariable(name: "diff", scope: !2703, file: !3, line: 335, type: !89)
!2716 = !DILocation(line: 326, column: 28, scope: !2703)
!2717 = !DILocation(line: 326, column: 54, scope: !2703)
!2718 = !DILocation(line: 327, column: 16, scope: !2703)
!2719 = !DILocation(line: 327, column: 29, scope: !2703)
!2720 = !DILocation(line: 337, column: 21, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 337, column: 7)
!2722 = !DILocation(line: 337, column: 12, scope: !2721)
!2723 = !DILocation(line: 337, column: 7, scope: !2703)
!2724 = !DILocation(line: 339, column: 21, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 338, column: 5)
!2726 = !DILocation(line: 339, column: 34, scope: !2725)
!2727 = !DILocation(line: 330, column: 9, scope: !2703)
!2728 = !DILocation(line: 340, column: 34, scope: !2725)
!2729 = !DILocation(line: 333, column: 10, scope: !2703)
!2730 = !DILocation(line: 341, column: 5, scope: !2725)
!2731 = !DILocation(line: 348, column: 21, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 348, column: 7)
!2733 = !DILocation(line: 348, column: 12, scope: !2732)
!2734 = !DILocation(line: 348, column: 7, scope: !2703)
!2735 = !DILocation(line: 350, column: 21, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 349, column: 5)
!2737 = !DILocation(line: 350, column: 34, scope: !2736)
!2738 = !DILocation(line: 331, column: 9, scope: !2703)
!2739 = !DILocation(line: 351, column: 34, scope: !2736)
!2740 = !DILocation(line: 334, column: 10, scope: !2703)
!2741 = !DILocation(line: 352, column: 5, scope: !2736)
!2742 = !DILocation(line: 359, column: 12, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 359, column: 7)
!2744 = !DILocation(line: 359, column: 7, scope: !2703)
!2745 = !DILocation(line: 360, column: 12, scope: !2743)
!2746 = !DILocation(line: 360, column: 5, scope: !2743)
!2747 = !DILocation(line: 361, column: 7, scope: !2703)
!2748 = !DILocation(line: 364, column: 7, scope: !2703)
!2749 = !DILocation(line: 368, column: 38, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 365, column: 5)
!2751 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 364, column: 7)
!2752 = !DILocation(line: 368, column: 14, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2750, file: !3, discriminator: 3)
!2754 = !DILocation(line: 335, column: 7, scope: !2703)
!2755 = !DILocation(line: 369, column: 5, scope: !2750)
!2756 = !DILocation(line: 372, column: 11, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 372, column: 11)
!2758 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 371, column: 5)
!2759 = !DILocation(line: 372, column: 11, scope: !2758)
!2760 = !DILocation(line: 373, column: 16, scope: !2757)
!2761 = !DILocation(line: 373, column: 9, scope: !2757)
!2762 = !DILocation(line: 374, column: 34, scope: !2758)
!2763 = !DILocation(line: 374, column: 14, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2758, file: !3, discriminator: 3)
!2765 = !DILocation(line: 377, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 377, column: 7)
!2767 = !DILocation(line: 377, column: 7, scope: !2703)
!2768 = !DILocation(line: 379, column: 15, scope: !2703)
!2769 = !DILocation(line: 379, column: 34, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2703, file: !3, discriminator: 2)
!2771 = !DILocation(line: 379, column: 10, scope: !2703)
!2772 = !DILocation(line: 380, column: 1, scope: !2703)
!2773 = distinct !DISubprogram(name: "prfields", scope: !3, file: !3, line: 571, type: !2774, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !1393, !54, !54}
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782}
!2777 = !DILocalVariable(name: "line", arg: 1, scope: !2773, file: !3, line: 571, type: !1393)
!2778 = !DILocalVariable(name: "join_field", arg: 2, scope: !2773, file: !3, line: 571, type: !54)
!2779 = !DILocalVariable(name: "autocount", arg: 3, scope: !2773, file: !3, line: 571, type: !54)
!2780 = !DILocalVariable(name: "i", scope: !2773, file: !3, line: 573, type: !54)
!2781 = !DILocalVariable(name: "nfields", scope: !2773, file: !3, line: 574, type: !54)
!2782 = !DILocalVariable(name: "output_separator", scope: !2773, file: !3, line: 575, type: !87)
!2783 = !DILocation(line: 571, column: 30, scope: !2773)
!2784 = !DILocation(line: 571, column: 43, scope: !2773)
!2785 = !DILocation(line: 571, column: 62, scope: !2773)
!2786 = !DILocation(line: 574, column: 20, scope: !2773)
!2787 = !DILocation(line: 574, column: 51, scope: !2788)
!2788 = !DILexicalBlockFile(scope: !2773, file: !3, discriminator: 2)
!2789 = !DILocation(line: 574, column: 20, scope: !2788)
!2790 = !DILocation(line: 574, column: 20, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2773, file: !3, discriminator: 3)
!2792 = !DILocation(line: 574, column: 10, scope: !2773)
!2793 = !DILocation(line: 575, column: 27, scope: !2773)
!2794 = !DILocation(line: 575, column: 31, scope: !2773)
!2795 = !DILocation(line: 575, column: 27, scope: !2791)
!2796 = !DILocation(line: 575, column: 8, scope: !2773)
!2797 = !DILocation(line: 573, column: 10, scope: !2773)
!2798 = !DILocation(line: 577, column: 17, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2800, file: !3, discriminator: 1)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 577, column: 3)
!2801 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 577, column: 3)
!2802 = !DILocation(line: 577, column: 35, scope: !2803)
!2803 = !DILexicalBlockFile(scope: !2800, file: !3, discriminator: 2)
!2804 = !DILocation(line: 577, column: 30, scope: !2799)
!2805 = !DILocation(line: 582, column: 30, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2807, file: !3, discriminator: 1)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 582, column: 3)
!2808 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 582, column: 3)
!2809 = !DILocation(line: 582, column: 3, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2808, file: !3, discriminator: 1)
!2811 = !DILocation(line: 107, column: 10, scope: !2645, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 579, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 578, column: 5)
!2814 = !DILocation(line: 107, column: 10, scope: !2656, inlinedAt: !2812)
!2815 = !DILocation(line: 107, column: 10, scope: !2661, inlinedAt: !2812)
!2816 = !DILocation(line: 552, column: 17, scope: !2611, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 580, column: 7, scope: !2813)
!2818 = !DILocation(line: 552, column: 39, scope: !2611, inlinedAt: !2817)
!2819 = !DILocation(line: 556, column: 17, scope: !2621, inlinedAt: !2817)
!2820 = !DILocation(line: 556, column: 9, scope: !2621, inlinedAt: !2817)
!2821 = !DILocation(line: 556, column: 7, scope: !2611, inlinedAt: !2817)
!2822 = !DILocation(line: 558, column: 19, scope: !2625, inlinedAt: !2817)
!2823 = !DILocation(line: 558, column: 29, scope: !2625, inlinedAt: !2817)
!2824 = !DILocation(line: 554, column: 10, scope: !2611, inlinedAt: !2817)
!2825 = !DILocation(line: 559, column: 11, scope: !2629, inlinedAt: !2817)
!2826 = !DILocation(line: 559, column: 11, scope: !2625, inlinedAt: !2817)
!2827 = !DILocation(line: 560, column: 9, scope: !2629, inlinedAt: !2817)
!2828 = !DILocation(line: 561, column: 16, scope: !2633, inlinedAt: !2817)
!2829 = !DILocation(line: 561, column: 16, scope: !2629, inlinedAt: !2817)
!2830 = !DILocation(line: 562, column: 9, scope: !2633, inlinedAt: !2817)
!2831 = !DILocation(line: 564, column: 12, scope: !2637, inlinedAt: !2817)
!2832 = !DILocation(line: 564, column: 12, scope: !2621, inlinedAt: !2817)
!2833 = !DILocation(line: 565, column: 5, scope: !2637, inlinedAt: !2817)
!2834 = !DILocation(line: 577, column: 46, scope: !2835)
!2835 = !DILexicalBlockFile(scope: !2800, file: !3, discriminator: 4)
!2836 = distinct !{!2836, !2837, !2838}
!2837 = !DILocation(line: 577, column: 3, scope: !2801)
!2838 = !DILocation(line: 581, column: 5, scope: !2801)
!2839 = !DILocation(line: 107, column: 10, scope: !2645, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 584, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 583, column: 5)
!2842 = !DILocation(line: 107, column: 10, scope: !2656, inlinedAt: !2840)
!2843 = !DILocation(line: 107, column: 10, scope: !2661, inlinedAt: !2840)
!2844 = !DILocation(line: 552, column: 17, scope: !2611, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 585, column: 7, scope: !2841)
!2846 = !DILocation(line: 552, column: 39, scope: !2611, inlinedAt: !2845)
!2847 = !DILocation(line: 556, column: 17, scope: !2621, inlinedAt: !2845)
!2848 = !DILocation(line: 556, column: 9, scope: !2621, inlinedAt: !2845)
!2849 = !DILocation(line: 556, column: 7, scope: !2611, inlinedAt: !2845)
!2850 = !DILocation(line: 558, column: 19, scope: !2625, inlinedAt: !2845)
!2851 = !DILocation(line: 558, column: 29, scope: !2625, inlinedAt: !2845)
!2852 = !DILocation(line: 554, column: 10, scope: !2611, inlinedAt: !2845)
!2853 = !DILocation(line: 559, column: 11, scope: !2629, inlinedAt: !2845)
!2854 = !DILocation(line: 559, column: 11, scope: !2625, inlinedAt: !2845)
!2855 = !DILocation(line: 560, column: 9, scope: !2629, inlinedAt: !2845)
!2856 = distinct !{!2856, !2857, !2858}
!2857 = !DILocation(line: 582, column: 3, scope: !2808)
!2858 = !DILocation(line: 586, column: 5, scope: !2808)
!2859 = !DILocation(line: 561, column: 16, scope: !2633, inlinedAt: !2845)
!2860 = !DILocation(line: 561, column: 16, scope: !2629, inlinedAt: !2845)
!2861 = !DILocation(line: 562, column: 9, scope: !2633, inlinedAt: !2845)
!2862 = !DILocation(line: 564, column: 12, scope: !2637, inlinedAt: !2845)
!2863 = !DILocation(line: 564, column: 12, scope: !2621, inlinedAt: !2845)
!2864 = !DILocation(line: 565, column: 5, scope: !2637, inlinedAt: !2845)
!2865 = !DILocation(line: 587, column: 1, scope: !2773)
!2866 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !230, file: !230, line: 41, type: !123, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2867)
!2867 = !{!2868}
!2868 = !DILocalVariable(name: "file", arg: 1, scope: !2866, file: !230, line: 41, type: !85)
!2869 = !DILocation(line: 41, column: 41, scope: !2866)
!2870 = !DILocation(line: 43, column: 13, scope: !2866)
!2871 = !DILocation(line: 44, column: 1, scope: !2866)
!2872 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !230, file: !230, line: 78, type: !2873, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !99}
!2875 = !{!2876}
!2876 = !DILocalVariable(name: "ignore", arg: 1, scope: !2872, file: !230, line: 78, type: !99)
!2877 = !DILocation(line: 78, column: 37, scope: !2872)
!2878 = !DILocation(line: 80, column: 16, scope: !2872)
!2879 = !DILocation(line: 81, column: 1, scope: !2872)
!2880 = distinct !DISubprogram(name: "close_stdout", scope: !230, file: !230, line: 107, type: !1938, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2881)
!2881 = !{!2882}
!2882 = !DILocalVariable(name: "write_error", scope: !2883, file: !230, line: 112, type: !85)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !230, line: 111, column: 5)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !230, line: 109, column: 7)
!2885 = !DILocation(line: 109, column: 21, scope: !2884)
!2886 = !DILocation(line: 109, column: 7, scope: !2884)
!2887 = !DILocation(line: 109, column: 29, scope: !2884)
!2888 = !DILocation(line: 110, column: 7, scope: !2884)
!2889 = !DILocation(line: 110, column: 12, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2884, file: !230, discriminator: 1)
!2891 = !DILocation(line: 114, column: 19, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2883, file: !230, line: 113, column: 11)
!2893 = !DILocation(line: 110, column: 25, scope: !2890)
!2894 = !DILocation(line: 110, column: 28, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2884, file: !230, discriminator: 2)
!2896 = !DILocation(line: 110, column: 34, scope: !2895)
!2897 = !DILocation(line: 109, column: 7, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2880, file: !230, discriminator: 1)
!2899 = !DILocation(line: 112, column: 33, scope: !2883)
!2900 = !DILocation(line: 112, column: 19, scope: !2883)
!2901 = !DILocation(line: 113, column: 11, scope: !2892)
!2902 = !DILocation(line: 113, column: 11, scope: !2883)
!2903 = !DILocation(line: 114, column: 36, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !2892, file: !230, discriminator: 1)
!2905 = !DILocation(line: 114, column: 9, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2892, file: !230, discriminator: 2)
!2907 = !DILocation(line: 114, column: 9, scope: !2892)
!2908 = !DILocation(line: 117, column: 9, scope: !2904)
!2909 = !DILocation(line: 119, column: 14, scope: !2883)
!2910 = !DILocation(line: 119, column: 7, scope: !2883)
!2911 = !DILocation(line: 122, column: 22, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2880, file: !230, line: 122, column: 8)
!2913 = !DILocation(line: 122, column: 8, scope: !2912)
!2914 = !DILocation(line: 122, column: 30, scope: !2912)
!2915 = !DILocation(line: 122, column: 8, scope: !2880)
!2916 = !DILocation(line: 123, column: 13, scope: !2912)
!2917 = !DILocation(line: 123, column: 6, scope: !2912)
!2918 = !DILocation(line: 124, column: 1, scope: !2880)
!2919 = distinct !DISubprogram(name: "fdadvise", scope: !2920, file: !2920, line: 31, type: !2921, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !2925)
!2920 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !89, !2923, !2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !836, line: 91, baseType: !864)
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !39, line: 52, baseType: !38)
!2925 = !{!2926, !2927, !2928, !2929, !2930}
!2926 = !DILocalVariable(name: "fd", arg: 1, scope: !2919, file: !2920, line: 31, type: !89)
!2927 = !DILocalVariable(name: "offset", arg: 2, scope: !2919, file: !2920, line: 31, type: !2923)
!2928 = !DILocalVariable(name: "len", arg: 3, scope: !2919, file: !2920, line: 31, type: !2923)
!2929 = !DILocalVariable(name: "advice", arg: 4, scope: !2919, file: !2920, line: 31, type: !2924)
!2930 = !DILocalVariable(name: "__x", scope: !2931, file: !2920, line: 34, type: !89)
!2931 = distinct !DILexicalBlock(scope: !2919, file: !2920, line: 34, column: 3)
!2932 = !DILocation(line: 31, column: 15, scope: !2919)
!2933 = !DILocation(line: 31, column: 25, scope: !2919)
!2934 = !DILocation(line: 31, column: 39, scope: !2919)
!2935 = !DILocation(line: 31, column: 54, scope: !2919)
!2936 = !DILocation(line: 34, column: 3, scope: !2931)
!2937 = !DILocation(line: 36, column: 1, scope: !2919)
!2938 = distinct !DISubprogram(name: "fadvise", scope: !2920, file: !2920, line: 39, type: !2939, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !2981)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !2941, !2924}
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !2943)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2943, file: !838, line: 242, baseType: !89, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2943, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2943, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2943, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2943, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2943, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2943, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2943, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2943, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2943, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2943, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2943, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2943, file: !838, line: 260, baseType: !2958, size: 64, offset: 768)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !2960)
!2960 = !{!2961, !2962, !2964}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2959, file: !838, line: 157, baseType: !2958, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2959, file: !838, line: 158, baseType: !2963, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2959, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2943, file: !838, line: 262, baseType: !2963, size: 64, offset: 832)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2943, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2943, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2943, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2943, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2943, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2943, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2943, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2943, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2943, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2943, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2943, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2943, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2943, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2943, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2943, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!2981 = !{!2982, !2983}
!2982 = !DILocalVariable(name: "fp", arg: 1, scope: !2938, file: !2920, line: 39, type: !2941)
!2983 = !DILocalVariable(name: "advice", arg: 2, scope: !2938, file: !2920, line: 39, type: !2924)
!2984 = !DILocation(line: 39, column: 16, scope: !2938)
!2985 = !DILocation(line: 39, column: 30, scope: !2938)
!2986 = !DILocation(line: 41, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2938, file: !2920, line: 41, column: 7)
!2988 = !DILocation(line: 41, column: 7, scope: !2938)
!2989 = !DILocation(line: 42, column: 15, scope: !2987)
!2990 = !DILocation(line: 31, column: 15, scope: !2919, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 42, column: 5, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2987, file: !2920, discriminator: 1)
!2993 = !DILocation(line: 31, column: 25, scope: !2919, inlinedAt: !2991)
!2994 = !DILocation(line: 31, column: 39, scope: !2919, inlinedAt: !2991)
!2995 = !DILocation(line: 31, column: 54, scope: !2919, inlinedAt: !2991)
!2996 = !DILocation(line: 34, column: 3, scope: !2931, inlinedAt: !2991)
!2997 = !DILocation(line: 42, column: 5, scope: !2987)
!2998 = !DILocation(line: 43, column: 1, scope: !2938)
!2999 = distinct !DISubprogram(name: "fopen_safer", scope: !3000, file: !3000, line: 31, type: !3001, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !3043)
!3000 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!3003, !85, !85}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !3005)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !3006)
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3005, file: !838, line: 242, baseType: !89, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3005, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3005, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3005, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3005, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3005, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3005, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3005, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3005, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3005, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3005, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3005, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3005, file: !838, line: 260, baseType: !3020, size: 64, offset: 768)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !3022)
!3022 = !{!3023, !3024, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3021, file: !838, line: 157, baseType: !3020, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3021, file: !838, line: 158, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3021, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3005, file: !838, line: 262, baseType: !3025, size: 64, offset: 832)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3005, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3005, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3005, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3005, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3005, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3005, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3005, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3005, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3005, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3005, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3005, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3005, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3005, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3005, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3005, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!3043 = !{!3044, !3045, !3046, !3047, !3050, !3053, !3056}
!3044 = !DILocalVariable(name: "file", arg: 1, scope: !2999, file: !3000, line: 31, type: !85)
!3045 = !DILocalVariable(name: "mode", arg: 2, scope: !2999, file: !3000, line: 31, type: !85)
!3046 = !DILocalVariable(name: "fp", scope: !2999, file: !3000, line: 33, type: !3003)
!3047 = !DILocalVariable(name: "fd", scope: !3048, file: !3000, line: 37, type: !89)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !3000, line: 36, column: 5)
!3049 = distinct !DILexicalBlock(scope: !2999, file: !3000, line: 35, column: 7)
!3050 = !DILocalVariable(name: "f", scope: !3051, file: !3000, line: 41, type: !89)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3000, line: 40, column: 9)
!3052 = distinct !DILexicalBlock(scope: !3048, file: !3000, line: 39, column: 11)
!3053 = !DILocalVariable(name: "e", scope: !3054, file: !3000, line: 45, type: !89)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !3000, line: 44, column: 13)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !3000, line: 43, column: 15)
!3056 = !DILocalVariable(name: "e", scope: !3057, file: !3000, line: 54, type: !89)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !3000, line: 53, column: 13)
!3058 = distinct !DILexicalBlock(scope: !3051, file: !3000, line: 51, column: 15)
!3059 = !DILocation(line: 31, column: 26, scope: !2999)
!3060 = !DILocation(line: 31, column: 44, scope: !2999)
!3061 = !DILocation(line: 33, column: 14, scope: !2999)
!3062 = !DILocation(line: 33, column: 9, scope: !2999)
!3063 = !DILocation(line: 35, column: 7, scope: !3049)
!3064 = !DILocation(line: 35, column: 7, scope: !2999)
!3065 = !DILocation(line: 37, column: 16, scope: !3048)
!3066 = !DILocation(line: 37, column: 11, scope: !3048)
!3067 = !DILocation(line: 39, column: 19, scope: !3052)
!3068 = !DILocation(line: 41, column: 19, scope: !3051)
!3069 = !DILocation(line: 41, column: 15, scope: !3051)
!3070 = !DILocation(line: 43, column: 17, scope: !3055)
!3071 = !DILocation(line: 43, column: 15, scope: !3051)
!3072 = !DILocation(line: 45, column: 23, scope: !3054)
!3073 = !DILocation(line: 45, column: 19, scope: !3054)
!3074 = !DILocation(line: 46, column: 15, scope: !3054)
!3075 = !DILocation(line: 47, column: 21, scope: !3054)
!3076 = !DILocation(line: 51, column: 15, scope: !3058)
!3077 = !DILocation(line: 51, column: 27, scope: !3058)
!3078 = !DILocation(line: 52, column: 15, scope: !3058)
!3079 = !DILocation(line: 52, column: 26, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3058, file: !3000, discriminator: 1)
!3081 = !DILocation(line: 52, column: 24, scope: !3080)
!3082 = !DILocation(line: 51, column: 15, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3051, file: !3000, discriminator: 1)
!3084 = !DILocation(line: 54, column: 23, scope: !3057)
!3085 = !DILocation(line: 54, column: 19, scope: !3057)
!3086 = !DILocation(line: 55, column: 15, scope: !3057)
!3087 = !DILocation(line: 56, column: 21, scope: !3057)
!3088 = !DILocation(line: 63, column: 1, scope: !2999)
!3089 = distinct !DISubprogram(name: "hard_locale", scope: !3090, file: !3090, line: 38, type: !3091, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !696, variables: !3093)
!3090 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!99, !89}
!3093 = !{!3094, !3095, !3096, !3097, !3104, !3105, !3107, !3108, !3110, !3111, !3113}
!3094 = !DILocalVariable(name: "category", arg: 1, scope: !3089, file: !3090, line: 38, type: !89)
!3095 = !DILocalVariable(name: "hard", scope: !3089, file: !3090, line: 40, type: !99)
!3096 = !DILocalVariable(name: "p", scope: !3089, file: !3090, line: 41, type: !85)
!3097 = !DILocalVariable(name: "__s1_len", scope: !3098, file: !3090, line: 47, type: !54)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3090, line: 47, column: 15)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3090, line: 47, column: 15)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !3090, line: 46, column: 9)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !3090, line: 45, column: 11)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !3090, line: 44, column: 5)
!3103 = distinct !DILexicalBlock(scope: !3089, file: !3090, line: 43, column: 7)
!3104 = !DILocalVariable(name: "__s2_len", scope: !3098, file: !3090, line: 47, type: !54)
!3105 = !DILocalVariable(name: "__s2", scope: !3106, file: !3090, line: 47, type: !82)
!3106 = distinct !DILexicalBlock(scope: !3098, file: !3090, line: 47, column: 15)
!3107 = !DILocalVariable(name: "__result", scope: !3106, file: !3090, line: 47, type: !89)
!3108 = !DILocalVariable(name: "__s1_len", scope: !3109, file: !3090, line: 47, type: !54)
!3109 = distinct !DILexicalBlock(scope: !3099, file: !3090, line: 47, column: 39)
!3110 = !DILocalVariable(name: "__s2_len", scope: !3109, file: !3090, line: 47, type: !54)
!3111 = !DILocalVariable(name: "__s2", scope: !3112, file: !3090, line: 47, type: !82)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !3090, line: 47, column: 39)
!3113 = !DILocalVariable(name: "__result", scope: !3112, file: !3090, line: 47, type: !89)
!3114 = !DILocation(line: 38, column: 18, scope: !3089)
!3115 = !DILocation(line: 40, column: 8, scope: !3089)
!3116 = !DILocation(line: 41, column: 19, scope: !3089)
!3117 = !DILocation(line: 41, column: 15, scope: !3089)
!3118 = !DILocation(line: 43, column: 7, scope: !3103)
!3119 = !DILocation(line: 43, column: 7, scope: !3089)
!3120 = !DILocation(line: 47, column: 15, scope: !3098)
!3121 = !DILocation(line: 47, column: 15, scope: !3106)
!3122 = !DILocation(line: 47, column: 15, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3106, file: !3090, discriminator: 2)
!3124 = !DILocation(line: 47, column: 15, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3126, file: !3090, discriminator: 3)
!3126 = distinct !DILexicalBlock(scope: !3106, file: !3090, line: 47, column: 15)
!3127 = !DILocation(line: 47, column: 15, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3126, file: !3090, discriminator: 2)
!3129 = !DILocation(line: 47, column: 15, scope: !3130)
!3130 = !DILexicalBlockFile(scope: !3131, file: !3090, discriminator: 4)
!3131 = distinct !DILexicalBlock(scope: !3126, file: !3090, line: 47, column: 15)
!3132 = !DILocation(line: 47, column: 15, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3098, file: !3090, discriminator: 11)
!3134 = !DILocation(line: 47, column: 36, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3099, file: !3090, discriminator: 13)
!3136 = !DILocation(line: 47, column: 39, scope: !3109)
!3137 = !DILocation(line: 47, column: 39, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3109, file: !3090, discriminator: 26)
!3139 = !DILocation(line: 47, column: 59, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !3099, file: !3090, discriminator: 27)
!3141 = !DILocation(line: 47, column: 15, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !3100, file: !3090, discriminator: 27)
!3143 = !DILocation(line: 48, column: 13, scope: !3099)
!3144 = !DILocation(line: 71, column: 3, scope: !3089)
!3145 = distinct !DISubprogram(name: "initbuffer", scope: !3146, file: !3146, line: 37, type: !3147, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !3155)
!3146 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !3149}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !157, line: 26, size: 192, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3150, file: !157, line: 28, baseType: !54, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3150, file: !157, line: 29, baseType: !54, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3150, file: !157, line: 30, baseType: !88, size: 64, offset: 128)
!3155 = !{!3156}
!3156 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !3145, file: !3146, line: 37, type: !3149)
!3157 = !DILocation(line: 37, column: 32, scope: !3145)
!3158 = !DILocation(line: 39, column: 3, scope: !3145)
!3159 = !DILocation(line: 40, column: 1, scope: !3145)
!3160 = distinct !DISubprogram(name: "readlinebuffer", scope: !3146, file: !3146, line: 43, type: !3161, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !3203)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!3149, !3149, !3163}
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !3165)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3165, file: !838, line: 242, baseType: !89, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3165, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3165, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3165, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3165, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3165, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3165, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3165, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3165, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3165, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3165, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3165, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3165, file: !838, line: 260, baseType: !3180, size: 64, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !3182)
!3182 = !{!3183, !3184, !3186}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3181, file: !838, line: 157, baseType: !3180, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3181, file: !838, line: 158, baseType: !3185, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3181, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3165, file: !838, line: 262, baseType: !3185, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3165, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3165, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3165, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3165, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3165, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3165, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3165, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3165, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3165, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3165, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3165, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3165, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3165, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3165, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3165, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!3203 = !{!3204, !3205}
!3204 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !3160, file: !3146, line: 43, type: !3149)
!3205 = !DILocalVariable(name: "stream", arg: 2, scope: !3160, file: !3146, line: 43, type: !3163)
!3206 = !DILocation(line: 43, column: 36, scope: !3160)
!3207 = !DILocation(line: 43, column: 54, scope: !3160)
!3208 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !3209, file: !3146, line: 59, type: !3149)
!3209 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !3146, file: !3146, line: 59, type: !3210, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!3149, !3149, !3163, !87}
!3212 = !{!3208, !3213, !3214, !3215, !3216, !3217, !3218, !3219}
!3213 = !DILocalVariable(name: "stream", arg: 2, scope: !3209, file: !3146, line: 59, type: !3163)
!3214 = !DILocalVariable(name: "delimiter", arg: 3, scope: !3209, file: !3146, line: 60, type: !87)
!3215 = !DILocalVariable(name: "c", scope: !3209, file: !3146, line: 62, type: !89)
!3216 = !DILocalVariable(name: "buffer", scope: !3209, file: !3146, line: 63, type: !88)
!3217 = !DILocalVariable(name: "p", scope: !3209, file: !3146, line: 64, type: !88)
!3218 = !DILocalVariable(name: "end", scope: !3209, file: !3146, line: 65, type: !88)
!3219 = !DILocalVariable(name: "oldsize", scope: !3220, file: !3146, line: 83, type: !54)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !3146, line: 82, column: 9)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !3146, line: 81, column: 11)
!3222 = distinct !DILexicalBlock(scope: !3209, file: !3146, line: 71, column: 5)
!3223 = !DILocation(line: 59, column: 42, scope: !3209, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 45, column: 10, scope: !3160)
!3225 = !DILocation(line: 59, column: 60, scope: !3209, inlinedAt: !3224)
!3226 = !DILocation(line: 60, column: 28, scope: !3209, inlinedAt: !3224)
!3227 = !DILocation(line: 63, column: 30, scope: !3209, inlinedAt: !3224)
!3228 = !{!1474, !769, i64 16}
!3229 = !DILocation(line: 63, column: 9, scope: !3209, inlinedAt: !3224)
!3230 = !DILocation(line: 64, column: 9, scope: !3209, inlinedAt: !3224)
!3231 = !DILocation(line: 65, column: 36, scope: !3209, inlinedAt: !3224)
!3232 = !DILocalVariable(name: "__stream", arg: 1, scope: !3233, file: !2254, line: 125, type: !3163)
!3233 = distinct !DISubprogram(name: "feof_unlocked", scope: !2254, file: !2254, line: 125, type: !3234, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!89, !3163}
!3236 = !{!3232}
!3237 = !DILocation(line: 125, column: 1, scope: !3233, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 67, column: 7, scope: !3239, inlinedAt: !3224)
!3239 = distinct !DILexicalBlock(scope: !3209, file: !3146, line: 67, column: 7)
!3240 = !DILocation(line: 127, column: 10, scope: !3233, inlinedAt: !3238)
!3241 = !DILocation(line: 67, column: 7, scope: !3239, inlinedAt: !3224)
!3242 = !DILocation(line: 67, column: 7, scope: !3209, inlinedAt: !3224)
!3243 = distinct !{!3243, !3244, !3245}
!3244 = !DILocation(line: 70, column: 3, scope: !3209)
!3245 = !DILocation(line: 91, column: 24, scope: !3209)
!3246 = !{!1474, !980, i64 0}
!3247 = !DILocation(line: 65, column: 22, scope: !3209, inlinedAt: !3224)
!3248 = !DILocation(line: 65, column: 9, scope: !3209, inlinedAt: !3224)
!3249 = !DILocalVariable(name: "__fp", arg: 1, scope: !3250, file: !2254, line: 63, type: !3163)
!3250 = distinct !DISubprogram(name: "getc_unlocked", scope: !2254, file: !2254, line: 63, type: !3234, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !3251)
!3251 = !{!3249}
!3252 = !DILocation(line: 63, column: 22, scope: !3250, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 72, column: 11, scope: !3222, inlinedAt: !3224)
!3254 = !DILocation(line: 65, column: 10, scope: !3250, inlinedAt: !3253)
!3255 = !{!2264, !769, i64 8}
!3256 = !{!2264, !769, i64 16}
!3257 = !DILocation(line: 65, column: 10, scope: !3258, inlinedAt: !3253)
!3258 = !DILexicalBlockFile(scope: !3250, file: !2254, discriminator: 2)
!3259 = !DILocation(line: 62, column: 7, scope: !3209, inlinedAt: !3224)
!3260 = !DILocation(line: 73, column: 11, scope: !3222, inlinedAt: !3224)
!3261 = !DILocation(line: 65, column: 10, scope: !3262, inlinedAt: !3253)
!3262 = !DILexicalBlockFile(scope: !3250, file: !2254, discriminator: 1)
!3263 = !DILocation(line: 73, column: 13, scope: !3264, inlinedAt: !3224)
!3264 = distinct !DILexicalBlock(scope: !3222, file: !3146, line: 73, column: 11)
!3265 = !DILocation(line: 75, column: 17, scope: !3266, inlinedAt: !3224)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !3146, line: 75, column: 15)
!3267 = distinct !DILexicalBlock(scope: !3264, file: !3146, line: 74, column: 9)
!3268 = !DILocation(line: 75, column: 27, scope: !3266, inlinedAt: !3224)
!3269 = !DILocalVariable(name: "__stream", arg: 1, scope: !3270, file: !2254, line: 132, type: !3163)
!3270 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2254, file: !2254, line: 132, type: !3234, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !3271)
!3271 = !{!3269}
!3272 = !DILocation(line: 132, column: 1, scope: !3270, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 75, column: 30, scope: !3274, inlinedAt: !3224)
!3274 = !DILexicalBlockFile(scope: !3266, file: !3146, discriminator: 1)
!3275 = !DILocation(line: 134, column: 10, scope: !3270, inlinedAt: !3273)
!3276 = !DILocation(line: 75, column: 30, scope: !3274, inlinedAt: !3224)
!3277 = !DILocation(line: 75, column: 15, scope: !3278, inlinedAt: !3224)
!3278 = !DILexicalBlockFile(scope: !3267, file: !3146, discriminator: 1)
!3279 = !DILocation(line: 77, column: 15, scope: !3280, inlinedAt: !3224)
!3280 = distinct !DILexicalBlock(scope: !3267, file: !3146, line: 77, column: 15)
!3281 = !DILocation(line: 77, column: 21, scope: !3280, inlinedAt: !3224)
!3282 = !DILocation(line: 77, column: 15, scope: !3267, inlinedAt: !3224)
!3283 = !DILocation(line: 81, column: 13, scope: !3221, inlinedAt: !3224)
!3284 = !DILocation(line: 81, column: 11, scope: !3222, inlinedAt: !3224)
!3285 = !DILocation(line: 83, column: 40, scope: !3220, inlinedAt: !3224)
!3286 = !DILocation(line: 83, column: 18, scope: !3220, inlinedAt: !3224)
!3287 = !DILocation(line: 84, column: 20, scope: !3220, inlinedAt: !3224)
!3288 = !DILocation(line: 85, column: 22, scope: !3220, inlinedAt: !3224)
!3289 = !DILocation(line: 86, column: 30, scope: !3220, inlinedAt: !3224)
!3290 = !DILocation(line: 87, column: 38, scope: !3220, inlinedAt: !3224)
!3291 = !DILocation(line: 87, column: 24, scope: !3220, inlinedAt: !3224)
!3292 = !DILocation(line: 88, column: 9, scope: !3220, inlinedAt: !3224)
!3293 = !DILocation(line: 89, column: 14, scope: !3222, inlinedAt: !3224)
!3294 = !DILocation(line: 89, column: 9, scope: !3222, inlinedAt: !3224)
!3295 = !DILocation(line: 89, column: 12, scope: !3222, inlinedAt: !3224)
!3296 = !DILocation(line: 91, column: 12, scope: !3209, inlinedAt: !3224)
!3297 = !DILocation(line: 90, column: 5, scope: !3298, inlinedAt: !3224)
!3298 = !DILexicalBlockFile(scope: !3222, file: !3146, discriminator: 1)
!3299 = !DILocation(line: 93, column: 26, scope: !3209, inlinedAt: !3224)
!3300 = !DILocation(line: 93, column: 15, scope: !3209, inlinedAt: !3224)
!3301 = !DILocation(line: 93, column: 22, scope: !3209, inlinedAt: !3224)
!3302 = !{!1474, !980, i64 8}
!3303 = !DILocation(line: 94, column: 3, scope: !3209, inlinedAt: !3224)
!3304 = !DILocation(line: 45, column: 3, scope: !3160)
!3305 = !DILocation(line: 59, column: 42, scope: !3209)
!3306 = !DILocation(line: 59, column: 60, scope: !3209)
!3307 = !DILocation(line: 60, column: 28, scope: !3209)
!3308 = !DILocation(line: 63, column: 30, scope: !3209)
!3309 = !DILocation(line: 63, column: 9, scope: !3209)
!3310 = !DILocation(line: 64, column: 9, scope: !3209)
!3311 = !DILocation(line: 65, column: 36, scope: !3209)
!3312 = !DILocation(line: 65, column: 9, scope: !3209)
!3313 = !DILocation(line: 125, column: 1, scope: !3233, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 67, column: 7, scope: !3239)
!3315 = !DILocation(line: 127, column: 10, scope: !3233, inlinedAt: !3314)
!3316 = !DILocation(line: 67, column: 7, scope: !3239)
!3317 = !DILocation(line: 67, column: 7, scope: !3209)
!3318 = !DILocation(line: 65, column: 22, scope: !3209)
!3319 = !DILocation(line: 63, column: 22, scope: !3250, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 72, column: 11, scope: !3222)
!3321 = !DILocation(line: 65, column: 10, scope: !3250, inlinedAt: !3320)
!3322 = !DILocation(line: 65, column: 10, scope: !3258, inlinedAt: !3320)
!3323 = !DILocation(line: 62, column: 7, scope: !3209)
!3324 = !DILocation(line: 73, column: 11, scope: !3222)
!3325 = !DILocation(line: 65, column: 10, scope: !3262, inlinedAt: !3320)
!3326 = !DILocation(line: 73, column: 13, scope: !3264)
!3327 = !DILocation(line: 75, column: 17, scope: !3266)
!3328 = !DILocation(line: 75, column: 27, scope: !3266)
!3329 = !DILocation(line: 132, column: 1, scope: !3270, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 75, column: 30, scope: !3274)
!3331 = !DILocation(line: 134, column: 10, scope: !3270, inlinedAt: !3330)
!3332 = !DILocation(line: 75, column: 30, scope: !3274)
!3333 = !DILocation(line: 75, column: 15, scope: !3278)
!3334 = !DILocation(line: 77, column: 15, scope: !3280)
!3335 = !DILocation(line: 77, column: 21, scope: !3280)
!3336 = !DILocation(line: 77, column: 15, scope: !3267)
!3337 = !DILocation(line: 81, column: 13, scope: !3221)
!3338 = !DILocation(line: 81, column: 11, scope: !3222)
!3339 = !DILocation(line: 83, column: 40, scope: !3220)
!3340 = !DILocation(line: 83, column: 18, scope: !3220)
!3341 = !DILocation(line: 84, column: 20, scope: !3220)
!3342 = !DILocation(line: 85, column: 22, scope: !3220)
!3343 = !DILocation(line: 86, column: 30, scope: !3220)
!3344 = !DILocation(line: 87, column: 38, scope: !3220)
!3345 = !DILocation(line: 87, column: 24, scope: !3220)
!3346 = !DILocation(line: 88, column: 9, scope: !3220)
!3347 = !DILocation(line: 89, column: 14, scope: !3222)
!3348 = !DILocation(line: 89, column: 9, scope: !3222)
!3349 = !DILocation(line: 89, column: 12, scope: !3222)
!3350 = !DILocation(line: 91, column: 12, scope: !3209)
!3351 = !DILocation(line: 90, column: 5, scope: !3298)
!3352 = !DILocation(line: 93, column: 26, scope: !3209)
!3353 = !DILocation(line: 93, column: 15, scope: !3209)
!3354 = !DILocation(line: 93, column: 22, scope: !3209)
!3355 = !DILocation(line: 94, column: 3, scope: !3209)
!3356 = !DILocation(line: 95, column: 1, scope: !3209)
!3357 = distinct !DISubprogram(name: "freebuffer", scope: !3146, file: !3146, line: 100, type: !3147, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !3358)
!3358 = !{!3359}
!3359 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !3357, file: !3146, line: 100, type: !3149)
!3360 = !DILocation(line: 100, column: 32, scope: !3357)
!3361 = !DILocation(line: 102, column: 21, scope: !3357)
!3362 = !DILocation(line: 102, column: 3, scope: !3357)
!3363 = !DILocation(line: 103, column: 1, scope: !3357)
!3364 = distinct !DISubprogram(name: "memcasecmp", scope: !3365, file: !3365, line: 32, type: !3366, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !702, variables: !3368)
!3365 = !DIFile(filename: "lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!89, !80, !80, !54}
!3368 = !{!3369, !3370, !3371, !3372, !3373, !3374, !3375, !3379, !3380, !3381, !3383, !3384, !3386}
!3369 = !DILocalVariable(name: "vs1", arg: 1, scope: !3364, file: !3365, line: 32, type: !80)
!3370 = !DILocalVariable(name: "vs2", arg: 2, scope: !3364, file: !3365, line: 32, type: !80)
!3371 = !DILocalVariable(name: "n", arg: 3, scope: !3364, file: !3365, line: 32, type: !54)
!3372 = !DILocalVariable(name: "i", scope: !3364, file: !3365, line: 34, type: !54)
!3373 = !DILocalVariable(name: "s1", scope: !3364, file: !3365, line: 35, type: !85)
!3374 = !DILocalVariable(name: "s2", scope: !3364, file: !3365, line: 36, type: !85)
!3375 = !DILocalVariable(name: "u1", scope: !3376, file: !3365, line: 39, type: !84)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !3365, line: 38, column: 5)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3365, line: 37, column: 3)
!3378 = distinct !DILexicalBlock(scope: !3364, file: !3365, line: 37, column: 3)
!3379 = !DILocalVariable(name: "u2", scope: !3376, file: !3365, line: 40, type: !84)
!3380 = !DILocalVariable(name: "U1", scope: !3376, file: !3365, line: 41, type: !89)
!3381 = !DILocalVariable(name: "__res", scope: !3382, file: !3365, line: 41, type: !89)
!3382 = distinct !DILexicalBlock(scope: !3376, file: !3365, line: 41, column: 16)
!3383 = !DILocalVariable(name: "U2", scope: !3376, file: !3365, line: 42, type: !89)
!3384 = !DILocalVariable(name: "__res", scope: !3385, file: !3365, line: 42, type: !89)
!3385 = distinct !DILexicalBlock(scope: !3376, file: !3365, line: 42, column: 16)
!3386 = !DILocalVariable(name: "diff", scope: !3376, file: !3365, line: 43, type: !89)
!3387 = !DILocation(line: 32, column: 25, scope: !3364)
!3388 = !DILocation(line: 32, column: 42, scope: !3364)
!3389 = !DILocation(line: 32, column: 54, scope: !3364)
!3390 = !DILocation(line: 35, column: 15, scope: !3364)
!3391 = !DILocation(line: 36, column: 15, scope: !3364)
!3392 = !DILocation(line: 34, column: 10, scope: !3364)
!3393 = !DILocation(line: 37, column: 17, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !3377, file: !3365, discriminator: 1)
!3395 = !DILocation(line: 37, column: 3, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3378, file: !3365, discriminator: 1)
!3397 = !DILocation(line: 41, column: 16, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3382, file: !3365, line: 41, column: 16)
!3399 = distinct !{!3399, !3400, !3401}
!3400 = !DILocation(line: 37, column: 3, scope: !3378)
!3401 = !DILocation(line: 47, column: 5, scope: !3378)
!3402 = !DILocation(line: 39, column: 26, scope: !3376)
!3403 = !DILocation(line: 39, column: 21, scope: !3376)
!3404 = !DILocation(line: 40, column: 26, scope: !3376)
!3405 = !DILocation(line: 40, column: 21, scope: !3376)
!3406 = !DILocation(line: 41, column: 16, scope: !3382)
!3407 = !DILocation(line: 41, column: 11, scope: !3376)
!3408 = !DILocation(line: 42, column: 16, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3385, file: !3365, line: 42, column: 16)
!3410 = !DILocation(line: 42, column: 16, scope: !3385)
!3411 = !DILocation(line: 42, column: 11, scope: !3376)
!3412 = !DILocation(line: 43, column: 45, scope: !3376)
!3413 = !DILocation(line: 43, column: 11, scope: !3376)
!3414 = !DILocation(line: 45, column: 11, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3376, file: !3365, line: 45, column: 11)
!3416 = !DILocation(line: 37, column: 23, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3377, file: !3365, discriminator: 2)
!3418 = !DILocation(line: 49, column: 1, scope: !3364)
!3419 = distinct !DISubprogram(name: "set_program_name", scope: !244, file: !244, line: 39, type: !123, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !240, variables: !3420)
!3420 = !{!3421, !3422, !3423}
!3421 = !DILocalVariable(name: "argv0", arg: 1, scope: !3419, file: !244, line: 39, type: !85)
!3422 = !DILocalVariable(name: "slash", scope: !3419, file: !244, line: 46, type: !85)
!3423 = !DILocalVariable(name: "base", scope: !3419, file: !244, line: 47, type: !85)
!3424 = !DILocation(line: 39, column: 31, scope: !3419)
!3425 = !DILocation(line: 51, column: 13, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !244, line: 51, column: 7)
!3427 = !DILocation(line: 51, column: 7, scope: !3419)
!3428 = !DILocation(line: 55, column: 14, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !244, line: 52, column: 5)
!3430 = !DILocation(line: 54, column: 7, scope: !3429)
!3431 = !DILocation(line: 56, column: 7, scope: !3429)
!3432 = !DILocation(line: 59, column: 11, scope: !3419)
!3433 = !DILocation(line: 46, column: 15, scope: !3419)
!3434 = !DILocation(line: 60, column: 17, scope: !3419)
!3435 = !DILocation(line: 60, column: 33, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3419, file: !244, discriminator: 1)
!3437 = !DILocation(line: 60, column: 11, scope: !3419)
!3438 = !DILocation(line: 47, column: 15, scope: !3419)
!3439 = !DILocation(line: 61, column: 12, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3419, file: !244, line: 61, column: 7)
!3441 = !DILocation(line: 61, column: 20, scope: !3440)
!3442 = !DILocation(line: 61, column: 25, scope: !3440)
!3443 = !DILocation(line: 61, column: 28, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3440, file: !244, discriminator: 1)
!3445 = !DILocation(line: 61, column: 61, scope: !3444)
!3446 = !DILocation(line: 61, column: 7, scope: !3436)
!3447 = !DILocation(line: 64, column: 11, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !244, line: 64, column: 11)
!3449 = distinct !DILexicalBlock(scope: !3440, file: !244, line: 62, column: 5)
!3450 = !DILocation(line: 64, column: 36, scope: !3448)
!3451 = !DILocation(line: 64, column: 11, scope: !3449)
!3452 = !DILocation(line: 66, column: 24, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3448, file: !244, line: 65, column: 9)
!3454 = !DILocation(line: 70, column: 41, scope: !3453)
!3455 = !DILocation(line: 72, column: 9, scope: !3453)
!3456 = !DILocation(line: 84, column: 16, scope: !3419)
!3457 = !DILocation(line: 90, column: 27, scope: !3419)
!3458 = !DILocation(line: 92, column: 1, scope: !3419)
!3459 = distinct !DISubprogram(name: "clone_quoting_options", scope: !259, file: !259, line: 114, type: !3460, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !3463)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!3462, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!3463 = !{!3464, !3465, !3466}
!3464 = !DILocalVariable(name: "o", arg: 1, scope: !3459, file: !259, line: 114, type: !3462)
!3465 = !DILocalVariable(name: "e", scope: !3459, file: !259, line: 116, type: !89)
!3466 = !DILocalVariable(name: "p", scope: !3459, file: !259, line: 117, type: !3462)
!3467 = !DILocation(line: 114, column: 48, scope: !3459)
!3468 = !DILocation(line: 116, column: 11, scope: !3459)
!3469 = !DILocation(line: 116, column: 7, scope: !3459)
!3470 = !DILocation(line: 117, column: 40, scope: !3459)
!3471 = !DILocation(line: 117, column: 40, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3459, file: !259, discriminator: 3)
!3473 = !DILocation(line: 117, column: 31, scope: !3472)
!3474 = !DILocation(line: 117, column: 27, scope: !3459)
!3475 = !DILocation(line: 119, column: 9, scope: !3459)
!3476 = !DILocation(line: 120, column: 3, scope: !3459)
!3477 = distinct !DISubprogram(name: "get_quoting_style", scope: !259, file: !259, line: 125, type: !3478, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !3482)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!24, !3480}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!3482 = !{!3483}
!3483 = !DILocalVariable(name: "o", arg: 1, scope: !3477, file: !259, line: 125, type: !3480)
!3484 = !DILocation(line: 125, column: 50, scope: !3477)
!3485 = !DILocation(line: 127, column: 11, scope: !3477)
!3486 = !DILocation(line: 127, column: 46, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3477, file: !259, discriminator: 3)
!3488 = !{!3489, !770, i64 0}
!3489 = !{!"quoting_options", !770, i64 0, !938, i64 4, !770, i64 8, !769, i64 40, !769, i64 48}
!3490 = !DILocation(line: 127, column: 3, scope: !3487)
!3491 = distinct !DISubprogram(name: "set_quoting_style", scope: !259, file: !259, line: 133, type: !3492, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !3462, !24}
!3494 = !{!3495, !3496}
!3495 = !DILocalVariable(name: "o", arg: 1, scope: !3491, file: !259, line: 133, type: !3462)
!3496 = !DILocalVariable(name: "s", arg: 2, scope: !3491, file: !259, line: 133, type: !24)
!3497 = !DILocation(line: 133, column: 44, scope: !3491)
!3498 = !DILocation(line: 133, column: 66, scope: !3491)
!3499 = !DILocation(line: 135, column: 4, scope: !3491)
!3500 = !DILocation(line: 135, column: 39, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3491, file: !259, discriminator: 3)
!3502 = !DILocation(line: 135, column: 45, scope: !3501)
!3503 = !DILocation(line: 136, column: 1, scope: !3491)
!3504 = distinct !DISubprogram(name: "set_char_quoting", scope: !259, file: !259, line: 144, type: !3505, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!89, !3462, !87, !89}
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3514, !3515}
!3508 = !DILocalVariable(name: "o", arg: 1, scope: !3504, file: !259, line: 144, type: !3462)
!3509 = !DILocalVariable(name: "c", arg: 2, scope: !3504, file: !259, line: 144, type: !87)
!3510 = !DILocalVariable(name: "i", arg: 3, scope: !3504, file: !259, line: 144, type: !89)
!3511 = !DILocalVariable(name: "uc", scope: !3504, file: !259, line: 146, type: !84)
!3512 = !DILocalVariable(name: "p", scope: !3504, file: !259, line: 147, type: !3513)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!3514 = !DILocalVariable(name: "shift", scope: !3504, file: !259, line: 149, type: !89)
!3515 = !DILocalVariable(name: "r", scope: !3504, file: !259, line: 150, type: !89)
!3516 = !DILocation(line: 144, column: 43, scope: !3504)
!3517 = !DILocation(line: 144, column: 51, scope: !3504)
!3518 = !DILocation(line: 144, column: 58, scope: !3504)
!3519 = !DILocation(line: 146, column: 17, scope: !3504)
!3520 = !DILocation(line: 148, column: 6, scope: !3504)
!3521 = !DILocation(line: 148, column: 62, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3504, file: !259, discriminator: 3)
!3523 = !DILocation(line: 148, column: 57, scope: !3522)
!3524 = !DILocation(line: 147, column: 17, scope: !3504)
!3525 = !DILocation(line: 149, column: 18, scope: !3504)
!3526 = !DILocation(line: 149, column: 15, scope: !3504)
!3527 = !DILocation(line: 149, column: 7, scope: !3504)
!3528 = !DILocation(line: 150, column: 12, scope: !3504)
!3529 = !DILocation(line: 150, column: 15, scope: !3504)
!3530 = !DILocation(line: 150, column: 25, scope: !3504)
!3531 = !DILocation(line: 150, column: 7, scope: !3504)
!3532 = !DILocation(line: 151, column: 13, scope: !3504)
!3533 = !DILocation(line: 151, column: 18, scope: !3504)
!3534 = !DILocation(line: 151, column: 23, scope: !3504)
!3535 = !DILocation(line: 151, column: 6, scope: !3504)
!3536 = !DILocation(line: 152, column: 3, scope: !3504)
!3537 = distinct !DISubprogram(name: "set_quoting_flags", scope: !259, file: !259, line: 160, type: !3538, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!89, !3462, !89}
!3540 = !{!3541, !3542, !3543}
!3541 = !DILocalVariable(name: "o", arg: 1, scope: !3537, file: !259, line: 160, type: !3462)
!3542 = !DILocalVariable(name: "i", arg: 2, scope: !3537, file: !259, line: 160, type: !89)
!3543 = !DILocalVariable(name: "r", scope: !3537, file: !259, line: 162, type: !89)
!3544 = !DILocation(line: 160, column: 44, scope: !3537)
!3545 = !DILocation(line: 160, column: 51, scope: !3537)
!3546 = !DILocation(line: 163, column: 8, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3537, file: !259, line: 163, column: 7)
!3548 = !DILocation(line: 163, column: 7, scope: !3537)
!3549 = !DILocation(line: 165, column: 10, scope: !3537)
!3550 = !{!3489, !938, i64 4}
!3551 = !DILocation(line: 162, column: 7, scope: !3537)
!3552 = !DILocation(line: 166, column: 12, scope: !3537)
!3553 = !DILocation(line: 167, column: 3, scope: !3537)
!3554 = distinct !DISubprogram(name: "set_custom_quoting", scope: !259, file: !259, line: 171, type: !3555, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{null, !3462, !85, !85}
!3557 = !{!3558, !3559, !3560}
!3558 = !DILocalVariable(name: "o", arg: 1, scope: !3554, file: !259, line: 171, type: !3462)
!3559 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3554, file: !259, line: 172, type: !85)
!3560 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3554, file: !259, line: 172, type: !85)
!3561 = !DILocation(line: 171, column: 45, scope: !3554)
!3562 = !DILocation(line: 172, column: 33, scope: !3554)
!3563 = !DILocation(line: 172, column: 57, scope: !3554)
!3564 = !DILocation(line: 174, column: 8, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3554, file: !259, line: 174, column: 7)
!3566 = !DILocation(line: 174, column: 7, scope: !3554)
!3567 = !DILocation(line: 176, column: 6, scope: !3554)
!3568 = !DILocation(line: 176, column: 12, scope: !3554)
!3569 = !DILocation(line: 177, column: 8, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3554, file: !259, line: 177, column: 7)
!3571 = !DILocation(line: 177, column: 23, scope: !3572)
!3572 = !DILexicalBlockFile(scope: !3570, file: !259, discriminator: 1)
!3573 = !DILocation(line: 177, column: 19, scope: !3570)
!3574 = !DILocation(line: 178, column: 5, scope: !3570)
!3575 = !DILocation(line: 179, column: 6, scope: !3554)
!3576 = !DILocation(line: 179, column: 17, scope: !3554)
!3577 = !{!3489, !769, i64 40}
!3578 = !DILocation(line: 180, column: 6, scope: !3554)
!3579 = !DILocation(line: 180, column: 18, scope: !3554)
!3580 = !{!3489, !769, i64 48}
!3581 = !DILocation(line: 181, column: 1, scope: !3554)
!3582 = distinct !DISubprogram(name: "quotearg_buffer", scope: !259, file: !259, line: 776, type: !3583, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!54, !88, !54, !85, !54, !3480}
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3586 = !DILocalVariable(name: "buffer", arg: 1, scope: !3582, file: !259, line: 776, type: !88)
!3587 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3582, file: !259, line: 776, type: !54)
!3588 = !DILocalVariable(name: "arg", arg: 3, scope: !3582, file: !259, line: 777, type: !85)
!3589 = !DILocalVariable(name: "argsize", arg: 4, scope: !3582, file: !259, line: 777, type: !54)
!3590 = !DILocalVariable(name: "o", arg: 5, scope: !3582, file: !259, line: 778, type: !3480)
!3591 = !DILocalVariable(name: "p", scope: !3582, file: !259, line: 780, type: !3480)
!3592 = !DILocalVariable(name: "e", scope: !3582, file: !259, line: 781, type: !89)
!3593 = !DILocalVariable(name: "r", scope: !3582, file: !259, line: 782, type: !54)
!3594 = !DILocation(line: 776, column: 24, scope: !3582)
!3595 = !DILocation(line: 776, column: 39, scope: !3582)
!3596 = !DILocation(line: 777, column: 30, scope: !3582)
!3597 = !DILocation(line: 777, column: 42, scope: !3582)
!3598 = !DILocation(line: 778, column: 48, scope: !3582)
!3599 = !DILocation(line: 780, column: 37, scope: !3582)
!3600 = !DILocation(line: 780, column: 33, scope: !3582)
!3601 = !DILocation(line: 781, column: 11, scope: !3582)
!3602 = !DILocation(line: 781, column: 7, scope: !3582)
!3603 = !DILocation(line: 783, column: 43, scope: !3582)
!3604 = !DILocation(line: 783, column: 53, scope: !3582)
!3605 = !DILocation(line: 783, column: 60, scope: !3582)
!3606 = !DILocation(line: 784, column: 43, scope: !3582)
!3607 = !DILocation(line: 784, column: 58, scope: !3582)
!3608 = !DILocation(line: 782, column: 14, scope: !3582)
!3609 = !DILocation(line: 782, column: 10, scope: !3582)
!3610 = !DILocation(line: 785, column: 9, scope: !3582)
!3611 = !DILocation(line: 786, column: 3, scope: !3582)
!3612 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !259, file: !259, line: 248, type: !3613, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !3617)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!54, !88, !54, !85, !54, !24, !89, !3615, !85, !85}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3642, !3643, !3644, !3645, !3646, !3649, !3650, !3667, !3670, !3671, !3678}
!3618 = !DILocalVariable(name: "buffer", arg: 1, scope: !3612, file: !259, line: 248, type: !88)
!3619 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3612, file: !259, line: 248, type: !54)
!3620 = !DILocalVariable(name: "arg", arg: 3, scope: !3612, file: !259, line: 249, type: !85)
!3621 = !DILocalVariable(name: "argsize", arg: 4, scope: !3612, file: !259, line: 249, type: !54)
!3622 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3612, file: !259, line: 250, type: !24)
!3623 = !DILocalVariable(name: "flags", arg: 6, scope: !3612, file: !259, line: 250, type: !89)
!3624 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3612, file: !259, line: 251, type: !3615)
!3625 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3612, file: !259, line: 252, type: !85)
!3626 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3612, file: !259, line: 253, type: !85)
!3627 = !DILocalVariable(name: "i", scope: !3612, file: !259, line: 255, type: !54)
!3628 = !DILocalVariable(name: "len", scope: !3612, file: !259, line: 256, type: !54)
!3629 = !DILocalVariable(name: "orig_buffersize", scope: !3612, file: !259, line: 257, type: !54)
!3630 = !DILocalVariable(name: "quote_string", scope: !3612, file: !259, line: 258, type: !85)
!3631 = !DILocalVariable(name: "quote_string_len", scope: !3612, file: !259, line: 259, type: !54)
!3632 = !DILocalVariable(name: "backslash_escapes", scope: !3612, file: !259, line: 260, type: !99)
!3633 = !DILocalVariable(name: "unibyte_locale", scope: !3612, file: !259, line: 261, type: !99)
!3634 = !DILocalVariable(name: "elide_outer_quotes", scope: !3612, file: !259, line: 262, type: !99)
!3635 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3612, file: !259, line: 263, type: !99)
!3636 = !DILocalVariable(name: "encountered_single_quote", scope: !3612, file: !259, line: 264, type: !99)
!3637 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3612, file: !259, line: 265, type: !99)
!3638 = !DILocalVariable(name: "c", scope: !3639, file: !259, line: 394, type: !84)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !259, line: 393, column: 5)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !259, line: 392, column: 3)
!3641 = distinct !DILexicalBlock(scope: !3612, file: !259, line: 392, column: 3)
!3642 = !DILocalVariable(name: "esc", scope: !3639, file: !259, line: 395, type: !84)
!3643 = !DILocalVariable(name: "is_right_quote", scope: !3639, file: !259, line: 396, type: !99)
!3644 = !DILocalVariable(name: "escaping", scope: !3639, file: !259, line: 397, type: !99)
!3645 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3639, file: !259, line: 398, type: !99)
!3646 = !DILocalVariable(name: "m", scope: !3647, file: !259, line: 602, type: !54)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 600, column: 11)
!3648 = distinct !DILexicalBlock(scope: !3639, file: !259, line: 418, column: 9)
!3649 = !DILocalVariable(name: "printable", scope: !3647, file: !259, line: 604, type: !99)
!3650 = !DILocalVariable(name: "mbstate", scope: !3651, file: !259, line: 613, type: !3653)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !259, line: 612, column: 15)
!3652 = distinct !DILexicalBlock(scope: !3647, file: !259, line: 606, column: 17)
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3654, line: 107, baseType: !3655)
!3654 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3654, line: 95, baseType: !3656)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3654, line: 83, size: 64, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3656, file: !3654, line: 85, baseType: !89, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3656, file: !3654, line: 94, baseType: !3660, size: 32, offset: 32)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3656, file: !3654, line: 86, size: 32, elements: !3661)
!3661 = !{!3662, !3663}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3660, file: !3654, line: 89, baseType: !272, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3660, file: !3654, line: 93, baseType: !3664, size: 32)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 32, elements: !3665)
!3665 = !{!3666}
!3666 = !DISubrange(count: 4)
!3667 = !DILocalVariable(name: "w", scope: !3668, file: !259, line: 623, type: !3669)
!3668 = distinct !DILexicalBlock(scope: !3651, file: !259, line: 622, column: 19)
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !55, line: 90, baseType: !89)
!3670 = !DILocalVariable(name: "bytes", scope: !3668, file: !259, line: 624, type: !54)
!3671 = !DILocalVariable(name: "j", scope: !3672, file: !259, line: 649, type: !54)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !259, line: 648, column: 27)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !259, line: 646, column: 29)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !259, line: 641, column: 23)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !259, line: 633, column: 30)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !259, line: 628, column: 30)
!3677 = distinct !DILexicalBlock(scope: !3668, file: !259, line: 626, column: 25)
!3678 = !DILocalVariable(name: "ilim", scope: !3679, file: !259, line: 676, type: !54)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !259, line: 673, column: 15)
!3680 = distinct !DILexicalBlock(scope: !3647, file: !259, line: 672, column: 17)
!3681 = !DILocation(line: 248, column: 33, scope: !3612)
!3682 = !DILocation(line: 248, column: 48, scope: !3612)
!3683 = !DILocation(line: 249, column: 39, scope: !3612)
!3684 = !DILocation(line: 249, column: 51, scope: !3612)
!3685 = !DILocation(line: 250, column: 46, scope: !3612)
!3686 = !DILocation(line: 250, column: 65, scope: !3612)
!3687 = !DILocation(line: 251, column: 47, scope: !3612)
!3688 = !DILocation(line: 252, column: 39, scope: !3612)
!3689 = !DILocation(line: 253, column: 39, scope: !3612)
!3690 = !DILocation(line: 256, column: 10, scope: !3612)
!3691 = !DILocation(line: 257, column: 10, scope: !3612)
!3692 = !DILocation(line: 258, column: 15, scope: !3612)
!3693 = !DILocation(line: 259, column: 10, scope: !3612)
!3694 = !DILocation(line: 260, column: 8, scope: !3612)
!3695 = !DILocation(line: 261, column: 25, scope: !3612)
!3696 = !DILocation(line: 261, column: 36, scope: !3612)
!3697 = !DILocation(line: 262, column: 8, scope: !3612)
!3698 = !DILocation(line: 263, column: 8, scope: !3612)
!3699 = !DILocation(line: 264, column: 8, scope: !3612)
!3700 = !DILocation(line: 265, column: 8, scope: !3612)
!3701 = !DILocation(line: 265, column: 3, scope: !3612)
!3702 = !DILocation(line: 308, column: 3, scope: !3612)
!3703 = !DILocation(line: 315, column: 11, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3612, file: !259, line: 309, column: 5)
!3705 = !DILocation(line: 315, column: 12, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3704, file: !259, line: 315, column: 11)
!3707 = !DILocation(line: 316, column: 9, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !3709, file: !259, discriminator: 1)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !259, line: 316, column: 9)
!3710 = distinct !DILexicalBlock(scope: !3706, file: !259, line: 316, column: 9)
!3711 = !DILocation(line: 316, column: 9, scope: !3712)
!3712 = !DILexicalBlockFile(scope: !3710, file: !259, discriminator: 1)
!3713 = !DILocation(line: 316, column: 9, scope: !3714)
!3714 = !DILexicalBlockFile(scope: !3709, file: !259, discriminator: 2)
!3715 = !DILocation(line: 354, column: 26, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !259, line: 332, column: 11)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !259, line: 331, column: 13)
!3718 = distinct !DILexicalBlock(scope: !3704, file: !259, line: 330, column: 7)
!3719 = !DILocation(line: 355, column: 27, scope: !3716)
!3720 = !DILocation(line: 356, column: 11, scope: !3716)
!3721 = !DILocation(line: 357, column: 14, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3718, file: !259, line: 357, column: 13)
!3723 = !DILocation(line: 357, column: 13, scope: !3718)
!3724 = !DILocation(line: 358, column: 43, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !3726, file: !259, discriminator: 1)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !259, line: 358, column: 11)
!3727 = distinct !DILexicalBlock(scope: !3722, file: !259, line: 358, column: 11)
!3728 = !DILocation(line: 358, column: 11, scope: !3729)
!3729 = !DILexicalBlockFile(scope: !3727, file: !259, discriminator: 1)
!3730 = !DILocation(line: 359, column: 13, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3732, file: !259, discriminator: 1)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !259, line: 359, column: 13)
!3733 = distinct !DILexicalBlock(scope: !3726, file: !259, line: 359, column: 13)
!3734 = !DILocation(line: 359, column: 13, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3733, file: !259, discriminator: 1)
!3736 = !DILocation(line: 359, column: 13, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3732, file: !259, discriminator: 2)
!3738 = !DILocation(line: 359, column: 13, scope: !3739)
!3739 = !DILexicalBlockFile(scope: !3733, file: !259, discriminator: 3)
!3740 = !DILocation(line: 358, column: 70, scope: !3741)
!3741 = !DILexicalBlockFile(scope: !3726, file: !259, discriminator: 2)
!3742 = distinct !{!3742, !3743, !3744}
!3743 = !DILocation(line: 358, column: 11, scope: !3727)
!3744 = !DILocation(line: 359, column: 13, scope: !3727)
!3745 = !DILocation(line: 362, column: 28, scope: !3718)
!3746 = !DILocation(line: 364, column: 7, scope: !3704)
!3747 = !DILocation(line: 367, column: 7, scope: !3704)
!3748 = !DILocation(line: 370, column: 7, scope: !3704)
!3749 = !DILocation(line: 373, column: 12, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3704, file: !259, line: 373, column: 11)
!3751 = !DILocation(line: 373, column: 11, scope: !3704)
!3752 = !DILocation(line: 378, column: 12, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3704, file: !259, line: 378, column: 11)
!3754 = !DILocation(line: 378, column: 11, scope: !3704)
!3755 = !DILocation(line: 379, column: 9, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3757, file: !259, discriminator: 1)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !259, line: 379, column: 9)
!3758 = distinct !DILexicalBlock(scope: !3753, file: !259, line: 379, column: 9)
!3759 = !DILocation(line: 379, column: 9, scope: !3760)
!3760 = !DILexicalBlockFile(scope: !3758, file: !259, discriminator: 1)
!3761 = !DILocation(line: 379, column: 9, scope: !3762)
!3762 = !DILexicalBlockFile(scope: !3757, file: !259, discriminator: 2)
!3763 = !DILocation(line: 386, column: 7, scope: !3704)
!3764 = !DILocation(line: 389, column: 7, scope: !3704)
!3765 = !DILocation(line: 255, column: 10, scope: !3612)
!3766 = !DILocation(line: 392, column: 8, scope: !3641)
!3767 = !DILocation(line: 392, column: 27, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !3640, file: !259, discriminator: 1)
!3769 = !DILocation(line: 392, column: 19, scope: !3768)
!3770 = !DILocation(line: 392, column: 60, scope: !3771)
!3771 = !DILexicalBlockFile(scope: !3640, file: !259, discriminator: 3)
!3772 = !DILocation(line: 392, column: 3, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !3641, file: !259, discriminator: 4)
!3774 = !DILocation(line: 392, column: 41, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !3640, file: !259, discriminator: 2)
!3776 = !DILocation(line: 392, column: 48, scope: !3775)
!3777 = !DILocation(line: 396, column: 12, scope: !3639)
!3778 = !DILocation(line: 397, column: 12, scope: !3639)
!3779 = !DILocation(line: 398, column: 12, scope: !3639)
!3780 = !DILocation(line: 401, column: 11, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3639, file: !259, line: 400, column: 11)
!3782 = !DILocation(line: 403, column: 17, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !3781, file: !259, discriminator: 1)
!3784 = !DILocation(line: 404, column: 39, scope: !3781)
!3785 = !DILocation(line: 408, column: 32, scope: !3781)
!3786 = !DILocation(line: 404, column: 19, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !3781, file: !259, discriminator: 2)
!3788 = !DILocation(line: 404, column: 15, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !3781, file: !259, discriminator: 4)
!3790 = !DILocation(line: 409, column: 11, scope: !3781)
!3791 = !DILocation(line: 409, column: 26, scope: !3783)
!3792 = !DILocation(line: 409, column: 14, scope: !3783)
!3793 = !DILocation(line: 400, column: 11, scope: !3794)
!3794 = !DILexicalBlockFile(scope: !3639, file: !259, discriminator: 1)
!3795 = !DILocation(line: 416, column: 11, scope: !3639)
!3796 = !DILocation(line: 394, column: 21, scope: !3639)
!3797 = !DILocation(line: 417, column: 7, scope: !3639)
!3798 = !DILocation(line: 420, column: 15, scope: !3648)
!3799 = !DILocation(line: 422, column: 15, scope: !3800)
!3800 = !DILexicalBlockFile(scope: !3801, file: !259, discriminator: 1)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !259, line: 422, column: 15)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !259, line: 421, column: 13)
!3803 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 420, column: 15)
!3804 = !DILocation(line: 422, column: 15, scope: !3805)
!3805 = !DILexicalBlockFile(scope: !3806, file: !259, discriminator: 4)
!3806 = distinct !DILexicalBlock(scope: !3801, file: !259, line: 422, column: 15)
!3807 = !DILocation(line: 422, column: 15, scope: !3808)
!3808 = !DILexicalBlockFile(scope: !3806, file: !259, discriminator: 3)
!3809 = !DILocation(line: 422, column: 15, scope: !3810)
!3810 = !DILexicalBlockFile(scope: !3811, file: !259, discriminator: 6)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !259, line: 422, column: 15)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !259, line: 422, column: 15)
!3813 = distinct !DILexicalBlock(scope: !3806, file: !259, line: 422, column: 15)
!3814 = !DILocation(line: 422, column: 15, scope: !3815)
!3815 = !DILexicalBlockFile(scope: !3812, file: !259, discriminator: 6)
!3816 = !DILocation(line: 422, column: 15, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !3811, file: !259, discriminator: 7)
!3818 = !DILocation(line: 422, column: 15, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3812, file: !259, discriminator: 8)
!3820 = !DILocation(line: 422, column: 15, scope: !3821)
!3821 = !DILexicalBlockFile(scope: !3822, file: !259, discriminator: 11)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !259, line: 422, column: 15)
!3823 = distinct !DILexicalBlock(scope: !3813, file: !259, line: 422, column: 15)
!3824 = !DILocation(line: 422, column: 15, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !3823, file: !259, discriminator: 11)
!3826 = !DILocation(line: 422, column: 15, scope: !3827)
!3827 = !DILexicalBlockFile(scope: !3822, file: !259, discriminator: 12)
!3828 = !DILocation(line: 422, column: 15, scope: !3829)
!3829 = !DILexicalBlockFile(scope: !3823, file: !259, discriminator: 13)
!3830 = !DILocation(line: 422, column: 15, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !3832, file: !259, discriminator: 16)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !259, line: 422, column: 15)
!3833 = distinct !DILexicalBlock(scope: !3813, file: !259, line: 422, column: 15)
!3834 = !DILocation(line: 422, column: 15, scope: !3835)
!3835 = !DILexicalBlockFile(scope: !3833, file: !259, discriminator: 16)
!3836 = !DILocation(line: 422, column: 15, scope: !3837)
!3837 = !DILexicalBlockFile(scope: !3832, file: !259, discriminator: 17)
!3838 = !DILocation(line: 422, column: 15, scope: !3839)
!3839 = !DILexicalBlockFile(scope: !3833, file: !259, discriminator: 18)
!3840 = !DILocation(line: 422, column: 15, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !3813, file: !259, discriminator: 20)
!3842 = !DILocation(line: 422, column: 15, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !3844, file: !259, discriminator: 22)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !259, line: 422, column: 15)
!3845 = distinct !DILexicalBlock(scope: !3801, file: !259, line: 422, column: 15)
!3846 = !DILocation(line: 422, column: 15, scope: !3847)
!3847 = !DILexicalBlockFile(scope: !3845, file: !259, discriminator: 22)
!3848 = !DILocation(line: 422, column: 15, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !3844, file: !259, discriminator: 23)
!3850 = !DILocation(line: 422, column: 15, scope: !3851)
!3851 = !DILexicalBlockFile(scope: !3845, file: !259, discriminator: 24)
!3852 = !DILocation(line: 430, column: 19, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3802, file: !259, line: 429, column: 19)
!3854 = !DILocation(line: 430, column: 24, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !3853, file: !259, discriminator: 1)
!3856 = !DILocation(line: 430, column: 28, scope: !3855)
!3857 = !DILocation(line: 430, column: 38, scope: !3855)
!3858 = !DILocation(line: 430, column: 48, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !3853, file: !259, discriminator: 2)
!3860 = !DILocation(line: 430, column: 59, scope: !3859)
!3861 = !DILocation(line: 432, column: 19, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3863, file: !259, discriminator: 1)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !259, line: 432, column: 19)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !259, line: 432, column: 19)
!3865 = distinct !DILexicalBlock(scope: !3853, file: !259, line: 431, column: 17)
!3866 = !DILocation(line: 432, column: 19, scope: !3867)
!3867 = !DILexicalBlockFile(scope: !3864, file: !259, discriminator: 1)
!3868 = !DILocation(line: 432, column: 19, scope: !3869)
!3869 = !DILexicalBlockFile(scope: !3863, file: !259, discriminator: 2)
!3870 = !DILocation(line: 432, column: 19, scope: !3871)
!3871 = !DILexicalBlockFile(scope: !3864, file: !259, discriminator: 3)
!3872 = !DILocation(line: 433, column: 19, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3874, file: !259, discriminator: 1)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !259, line: 433, column: 19)
!3875 = distinct !DILexicalBlock(scope: !3865, file: !259, line: 433, column: 19)
!3876 = !DILocation(line: 433, column: 19, scope: !3877)
!3877 = !DILexicalBlockFile(scope: !3875, file: !259, discriminator: 1)
!3878 = !DILocation(line: 433, column: 19, scope: !3879)
!3879 = !DILexicalBlockFile(scope: !3874, file: !259, discriminator: 2)
!3880 = !DILocation(line: 433, column: 19, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !3875, file: !259, discriminator: 3)
!3882 = !DILocation(line: 434, column: 17, scope: !3865)
!3883 = !DILocation(line: 441, column: 20, scope: !3803)
!3884 = !DILocation(line: 446, column: 11, scope: !3648)
!3885 = !DILocation(line: 449, column: 19, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 447, column: 13)
!3887 = !DILocation(line: 455, column: 19, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3886, file: !259, line: 454, column: 19)
!3889 = !DILocation(line: 455, column: 24, scope: !3890)
!3890 = !DILexicalBlockFile(scope: !3888, file: !259, discriminator: 1)
!3891 = !DILocation(line: 455, column: 28, scope: !3890)
!3892 = !DILocation(line: 455, column: 38, scope: !3890)
!3893 = !DILocation(line: 455, column: 47, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3888, file: !259, discriminator: 2)
!3895 = !DILocation(line: 455, column: 41, scope: !3894)
!3896 = !DILocation(line: 455, column: 52, scope: !3894)
!3897 = !DILocation(line: 454, column: 19, scope: !3898)
!3898 = !DILexicalBlockFile(scope: !3886, file: !259, discriminator: 1)
!3899 = !DILocation(line: 456, column: 25, scope: !3888)
!3900 = !DILocation(line: 456, column: 17, scope: !3888)
!3901 = !DILocation(line: 463, column: 25, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3888, file: !259, line: 457, column: 19)
!3903 = !DILocation(line: 467, column: 21, scope: !3904)
!3904 = !DILexicalBlockFile(scope: !3905, file: !259, discriminator: 1)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !259, line: 467, column: 21)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !259, line: 467, column: 21)
!3907 = !DILocation(line: 467, column: 21, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3906, file: !259, discriminator: 1)
!3909 = !DILocation(line: 467, column: 21, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !3905, file: !259, discriminator: 2)
!3911 = !DILocation(line: 467, column: 21, scope: !3912)
!3912 = !DILexicalBlockFile(scope: !3906, file: !259, discriminator: 3)
!3913 = !DILocation(line: 468, column: 21, scope: !3914)
!3914 = !DILexicalBlockFile(scope: !3915, file: !259, discriminator: 1)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !259, line: 468, column: 21)
!3916 = distinct !DILexicalBlock(scope: !3902, file: !259, line: 468, column: 21)
!3917 = !DILocation(line: 468, column: 21, scope: !3918)
!3918 = !DILexicalBlockFile(scope: !3916, file: !259, discriminator: 1)
!3919 = !DILocation(line: 468, column: 21, scope: !3920)
!3920 = !DILexicalBlockFile(scope: !3915, file: !259, discriminator: 2)
!3921 = !DILocation(line: 468, column: 21, scope: !3922)
!3922 = !DILexicalBlockFile(scope: !3916, file: !259, discriminator: 3)
!3923 = !DILocation(line: 469, column: 21, scope: !3924)
!3924 = !DILexicalBlockFile(scope: !3925, file: !259, discriminator: 1)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !259, line: 469, column: 21)
!3926 = distinct !DILexicalBlock(scope: !3902, file: !259, line: 469, column: 21)
!3927 = !DILocation(line: 469, column: 21, scope: !3928)
!3928 = !DILexicalBlockFile(scope: !3926, file: !259, discriminator: 1)
!3929 = !DILocation(line: 469, column: 21, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3925, file: !259, discriminator: 2)
!3931 = !DILocation(line: 469, column: 21, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3926, file: !259, discriminator: 3)
!3933 = !DILocation(line: 470, column: 21, scope: !3934)
!3934 = !DILexicalBlockFile(scope: !3935, file: !259, discriminator: 1)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !259, line: 470, column: 21)
!3936 = distinct !DILexicalBlock(scope: !3902, file: !259, line: 470, column: 21)
!3937 = !DILocation(line: 470, column: 21, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3936, file: !259, discriminator: 1)
!3939 = !DILocation(line: 470, column: 21, scope: !3940)
!3940 = !DILexicalBlockFile(scope: !3935, file: !259, discriminator: 2)
!3941 = !DILocation(line: 470, column: 21, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3936, file: !259, discriminator: 3)
!3943 = !DILocation(line: 471, column: 21, scope: !3902)
!3944 = !DILocation(line: 395, column: 21, scope: !3639)
!3945 = !DILocation(line: 484, column: 31, scope: !3648)
!3946 = !DILocation(line: 485, column: 31, scope: !3648)
!3947 = !DILocation(line: 487, column: 31, scope: !3648)
!3948 = !DILocation(line: 488, column: 31, scope: !3648)
!3949 = !DILocation(line: 489, column: 31, scope: !3648)
!3950 = !DILocation(line: 492, column: 15, scope: !3648)
!3951 = !DILocation(line: 494, column: 19, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !259, line: 493, column: 13)
!3953 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 492, column: 15)
!3954 = !DILocation(line: 501, column: 33, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 501, column: 15)
!3956 = !DILocation(line: 506, column: 15, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 505, column: 15)
!3958 = !DILocation(line: 510, column: 15, scope: !3648)
!3959 = !DILocation(line: 518, column: 26, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 518, column: 15)
!3961 = !DILocation(line: 518, column: 15, scope: !3648)
!3962 = !DILocation(line: 518, column: 40, scope: !3963)
!3963 = !DILexicalBlockFile(scope: !3960, file: !259, discriminator: 1)
!3964 = !DILocation(line: 518, column: 47, scope: !3963)
!3965 = !DILocation(line: 522, column: 17, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 522, column: 15)
!3967 = !DILocation(line: 518, column: 18, scope: !3963)
!3968 = !DILocation(line: 518, column: 65, scope: !3969)
!3969 = !DILexicalBlockFile(scope: !3960, file: !259, discriminator: 2)
!3970 = !DILocation(line: 518, column: 15, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !3648, file: !259, discriminator: 2)
!3972 = !DILocation(line: 522, column: 15, scope: !3648)
!3973 = !DILocation(line: 526, column: 11, scope: !3648)
!3974 = !DILocation(line: 541, column: 15, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 540, column: 15)
!3976 = !DILocation(line: 548, column: 15, scope: !3648)
!3977 = !DILocation(line: 550, column: 19, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !259, line: 549, column: 13)
!3979 = distinct !DILexicalBlock(scope: !3648, file: !259, line: 548, column: 15)
!3980 = !DILocation(line: 553, column: 19, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !259, line: 553, column: 19)
!3982 = !DILocation(line: 553, column: 35, scope: !3983)
!3983 = !DILexicalBlockFile(scope: !3981, file: !259, discriminator: 1)
!3984 = !DILocation(line: 553, column: 30, scope: !3981)
!3985 = !DILocation(line: 562, column: 15, scope: !3986)
!3986 = !DILexicalBlockFile(scope: !3987, file: !259, discriminator: 1)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !259, line: 562, column: 15)
!3988 = distinct !DILexicalBlock(scope: !3978, file: !259, line: 562, column: 15)
!3989 = !DILocation(line: 562, column: 15, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3988, file: !259, discriminator: 1)
!3991 = !DILocation(line: 562, column: 15, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3987, file: !259, discriminator: 2)
!3993 = !DILocation(line: 562, column: 15, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3988, file: !259, discriminator: 3)
!3995 = !DILocation(line: 563, column: 15, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !3997, file: !259, discriminator: 1)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !259, line: 563, column: 15)
!3998 = distinct !DILexicalBlock(scope: !3978, file: !259, line: 563, column: 15)
!3999 = !DILocation(line: 563, column: 15, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !3998, file: !259, discriminator: 1)
!4001 = !DILocation(line: 563, column: 15, scope: !4002)
!4002 = !DILexicalBlockFile(scope: !3997, file: !259, discriminator: 2)
!4003 = !DILocation(line: 563, column: 15, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !3998, file: !259, discriminator: 3)
!4005 = !DILocation(line: 564, column: 15, scope: !4006)
!4006 = !DILexicalBlockFile(scope: !4007, file: !259, discriminator: 1)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !259, line: 564, column: 15)
!4008 = distinct !DILexicalBlock(scope: !3978, file: !259, line: 564, column: 15)
!4009 = !DILocation(line: 564, column: 15, scope: !4010)
!4010 = !DILexicalBlockFile(scope: !4008, file: !259, discriminator: 1)
!4011 = !DILocation(line: 564, column: 15, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !4007, file: !259, discriminator: 2)
!4013 = !DILocation(line: 564, column: 15, scope: !4014)
!4014 = !DILexicalBlockFile(scope: !4008, file: !259, discriminator: 3)
!4015 = !DILocation(line: 566, column: 13, scope: !3978)
!4016 = !DILocation(line: 606, column: 17, scope: !3647)
!4017 = !DILocation(line: 602, column: 20, scope: !3647)
!4018 = !DILocation(line: 609, column: 29, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3652, file: !259, line: 607, column: 15)
!4020 = !DILocation(line: 609, column: 27, scope: !4019)
!4021 = !DILocation(line: 604, column: 18, scope: !3647)
!4022 = !DILocation(line: 610, column: 15, scope: !4019)
!4023 = !DILocation(line: 613, column: 17, scope: !3651)
!4024 = !DILocation(line: 614, column: 17, scope: !3651)
!4025 = !DILocation(line: 618, column: 29, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !3651, file: !259, line: 618, column: 21)
!4027 = !DILocation(line: 618, column: 21, scope: !3651)
!4028 = distinct !{!4028, !4029, !4030}
!4029 = !DILocation(line: 621, column: 17, scope: !3651)
!4030 = !DILocation(line: 667, column: 44, scope: !3651)
!4031 = !DILocation(line: 619, column: 29, scope: !4026)
!4032 = !DILocation(line: 619, column: 19, scope: !4026)
!4033 = !DILocation(line: 623, column: 21, scope: !3668)
!4034 = !DILocation(line: 624, column: 56, scope: !3668)
!4035 = !DILocation(line: 624, column: 50, scope: !3668)
!4036 = !DILocation(line: 625, column: 53, scope: !3668)
!4037 = !DILocation(line: 613, column: 27, scope: !3651)
!4038 = !DILocation(line: 623, column: 29, scope: !3668)
!4039 = !DILocation(line: 624, column: 36, scope: !3668)
!4040 = !DILocation(line: 624, column: 28, scope: !3668)
!4041 = !DILocation(line: 626, column: 25, scope: !3668)
!4042 = !DILocation(line: 636, column: 38, scope: !4043)
!4043 = !DILexicalBlockFile(scope: !4044, file: !259, discriminator: 1)
!4044 = distinct !DILexicalBlock(scope: !3675, file: !259, line: 634, column: 23)
!4045 = !DILocation(line: 636, column: 48, scope: !4043)
!4046 = !DILocation(line: 636, column: 51, scope: !4047)
!4047 = !DILexicalBlockFile(scope: !4044, file: !259, discriminator: 2)
!4048 = !DILocation(line: 636, column: 48, scope: !4047)
!4049 = !DILocation(line: 636, column: 25, scope: !4050)
!4050 = !DILexicalBlockFile(scope: !4044, file: !259, discriminator: 3)
!4051 = !DILocation(line: 637, column: 28, scope: !4044)
!4052 = !DILocation(line: 636, column: 34, scope: !4043)
!4053 = distinct !{!4053, !4054, !4051}
!4054 = !DILocation(line: 636, column: 25, scope: !4044)
!4055 = !DILocation(line: 650, column: 43, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !4057, file: !259, discriminator: 1)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !259, line: 650, column: 29)
!4058 = distinct !DILexicalBlock(scope: !3672, file: !259, line: 650, column: 29)
!4059 = !DILocation(line: 647, column: 29, scope: !3673)
!4060 = !DILocation(line: 649, column: 36, scope: !3672)
!4061 = !DILocation(line: 651, column: 49, scope: !4057)
!4062 = !DILocation(line: 651, column: 39, scope: !4057)
!4063 = !DILocation(line: 651, column: 31, scope: !4057)
!4064 = !DILocation(line: 650, column: 53, scope: !4065)
!4065 = !DILexicalBlockFile(scope: !4057, file: !259, discriminator: 2)
!4066 = !DILocation(line: 650, column: 29, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4058, file: !259, discriminator: 1)
!4068 = distinct !{!4068, !4069, !4070}
!4069 = !DILocation(line: 650, column: 29, scope: !4058)
!4070 = !DILocation(line: 659, column: 33, scope: !4058)
!4071 = !DILocation(line: 666, column: 19, scope: !3651)
!4072 = !DILocation(line: 662, column: 41, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !3674, file: !259, line: 662, column: 29)
!4074 = !DILocation(line: 662, column: 31, scope: !4073)
!4075 = !DILocation(line: 662, column: 29, scope: !3674)
!4076 = !DILocation(line: 664, column: 27, scope: !3674)
!4077 = !DILocation(line: 667, column: 26, scope: !3651)
!4078 = !DILocation(line: 667, column: 24, scope: !3651)
!4079 = !DILocation(line: 666, column: 19, scope: !4080)
!4080 = !DILexicalBlockFile(scope: !3668, file: !259, discriminator: 3)
!4081 = !DILocation(line: 668, column: 15, scope: !3652)
!4082 = !DILocation(line: 670, column: 40, scope: !3647)
!4083 = !DILocation(line: 672, column: 19, scope: !3680)
!4084 = !DILocation(line: 672, column: 45, scope: !4085)
!4085 = !DILexicalBlockFile(scope: !3680, file: !259, discriminator: 1)
!4086 = !DILocation(line: 672, column: 23, scope: !3680)
!4087 = !DILocation(line: 676, column: 33, scope: !3679)
!4088 = !DILocation(line: 676, column: 24, scope: !3679)
!4089 = !DILocation(line: 678, column: 17, scope: !3679)
!4090 = !DILocation(line: 680, column: 43, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !259, line: 680, column: 25)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !259, line: 679, column: 19)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !259, line: 678, column: 17)
!4094 = distinct !DILexicalBlock(scope: !3679, file: !259, line: 678, column: 17)
!4095 = !DILocation(line: 682, column: 25, scope: !4096)
!4096 = !DILexicalBlockFile(scope: !4097, file: !259, discriminator: 1)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !259, line: 682, column: 25)
!4098 = distinct !DILexicalBlock(scope: !4091, file: !259, line: 681, column: 23)
!4099 = !DILocation(line: 682, column: 25, scope: !4100)
!4100 = !DILexicalBlockFile(scope: !4101, file: !259, discriminator: 4)
!4101 = distinct !DILexicalBlock(scope: !4097, file: !259, line: 682, column: 25)
!4102 = !DILocation(line: 682, column: 25, scope: !4103)
!4103 = !DILexicalBlockFile(scope: !4101, file: !259, discriminator: 3)
!4104 = !DILocation(line: 682, column: 25, scope: !4105)
!4105 = !DILexicalBlockFile(scope: !4106, file: !259, discriminator: 6)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !259, line: 682, column: 25)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !259, line: 682, column: 25)
!4108 = distinct !DILexicalBlock(scope: !4101, file: !259, line: 682, column: 25)
!4109 = !DILocation(line: 682, column: 25, scope: !4110)
!4110 = !DILexicalBlockFile(scope: !4107, file: !259, discriminator: 6)
!4111 = !DILocation(line: 682, column: 25, scope: !4112)
!4112 = !DILexicalBlockFile(scope: !4106, file: !259, discriminator: 7)
!4113 = !DILocation(line: 682, column: 25, scope: !4114)
!4114 = !DILexicalBlockFile(scope: !4107, file: !259, discriminator: 8)
!4115 = !DILocation(line: 682, column: 25, scope: !4116)
!4116 = !DILexicalBlockFile(scope: !4117, file: !259, discriminator: 11)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !259, line: 682, column: 25)
!4118 = distinct !DILexicalBlock(scope: !4108, file: !259, line: 682, column: 25)
!4119 = !DILocation(line: 682, column: 25, scope: !4120)
!4120 = !DILexicalBlockFile(scope: !4118, file: !259, discriminator: 11)
!4121 = !DILocation(line: 682, column: 25, scope: !4122)
!4122 = !DILexicalBlockFile(scope: !4117, file: !259, discriminator: 12)
!4123 = !DILocation(line: 682, column: 25, scope: !4124)
!4124 = !DILexicalBlockFile(scope: !4118, file: !259, discriminator: 13)
!4125 = !DILocation(line: 682, column: 25, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !4127, file: !259, discriminator: 16)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !259, line: 682, column: 25)
!4128 = distinct !DILexicalBlock(scope: !4108, file: !259, line: 682, column: 25)
!4129 = !DILocation(line: 682, column: 25, scope: !4130)
!4130 = !DILexicalBlockFile(scope: !4128, file: !259, discriminator: 16)
!4131 = !DILocation(line: 682, column: 25, scope: !4132)
!4132 = !DILexicalBlockFile(scope: !4127, file: !259, discriminator: 17)
!4133 = !DILocation(line: 682, column: 25, scope: !4134)
!4134 = !DILexicalBlockFile(scope: !4128, file: !259, discriminator: 18)
!4135 = !DILocation(line: 682, column: 25, scope: !4136)
!4136 = !DILexicalBlockFile(scope: !4108, file: !259, discriminator: 20)
!4137 = !DILocation(line: 682, column: 25, scope: !4138)
!4138 = !DILexicalBlockFile(scope: !4139, file: !259, discriminator: 22)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !259, line: 682, column: 25)
!4140 = distinct !DILexicalBlock(scope: !4097, file: !259, line: 682, column: 25)
!4141 = !DILocation(line: 682, column: 25, scope: !4142)
!4142 = !DILexicalBlockFile(scope: !4140, file: !259, discriminator: 22)
!4143 = !DILocation(line: 682, column: 25, scope: !4144)
!4144 = !DILexicalBlockFile(scope: !4139, file: !259, discriminator: 23)
!4145 = !DILocation(line: 682, column: 25, scope: !4146)
!4146 = !DILexicalBlockFile(scope: !4140, file: !259, discriminator: 24)
!4147 = !DILocation(line: 683, column: 25, scope: !4148)
!4148 = !DILexicalBlockFile(scope: !4149, file: !259, discriminator: 1)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !259, line: 683, column: 25)
!4150 = distinct !DILexicalBlock(scope: !4098, file: !259, line: 683, column: 25)
!4151 = !DILocation(line: 683, column: 25, scope: !4152)
!4152 = !DILexicalBlockFile(scope: !4150, file: !259, discriminator: 1)
!4153 = !DILocation(line: 683, column: 25, scope: !4154)
!4154 = !DILexicalBlockFile(scope: !4149, file: !259, discriminator: 2)
!4155 = !DILocation(line: 683, column: 25, scope: !4156)
!4156 = !DILexicalBlockFile(scope: !4150, file: !259, discriminator: 3)
!4157 = !DILocation(line: 684, column: 25, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4159, file: !259, discriminator: 1)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !259, line: 684, column: 25)
!4160 = distinct !DILexicalBlock(scope: !4098, file: !259, line: 684, column: 25)
!4161 = !DILocation(line: 684, column: 25, scope: !4162)
!4162 = !DILexicalBlockFile(scope: !4160, file: !259, discriminator: 1)
!4163 = !DILocation(line: 684, column: 25, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !4159, file: !259, discriminator: 2)
!4165 = !DILocation(line: 684, column: 25, scope: !4166)
!4166 = !DILexicalBlockFile(scope: !4160, file: !259, discriminator: 3)
!4167 = !DILocation(line: 685, column: 38, scope: !4098)
!4168 = !DILocation(line: 685, column: 33, scope: !4098)
!4169 = !DILocation(line: 686, column: 23, scope: !4098)
!4170 = !DILocation(line: 687, column: 30, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4091, file: !259, line: 687, column: 30)
!4172 = !DILocation(line: 687, column: 30, scope: !4091)
!4173 = !DILocation(line: 689, column: 25, scope: !4174)
!4174 = !DILexicalBlockFile(scope: !4175, file: !259, discriminator: 1)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !259, line: 689, column: 25)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !259, line: 689, column: 25)
!4177 = distinct !DILexicalBlock(scope: !4171, file: !259, line: 688, column: 23)
!4178 = !DILocation(line: 689, column: 25, scope: !4179)
!4179 = !DILexicalBlockFile(scope: !4176, file: !259, discriminator: 1)
!4180 = !DILocation(line: 689, column: 25, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !4175, file: !259, discriminator: 2)
!4182 = !DILocation(line: 689, column: 25, scope: !4183)
!4183 = !DILexicalBlockFile(scope: !4176, file: !259, discriminator: 3)
!4184 = !DILocation(line: 691, column: 23, scope: !4177)
!4185 = !DILocation(line: 692, column: 35, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4092, file: !259, line: 692, column: 25)
!4187 = !DILocation(line: 692, column: 30, scope: !4186)
!4188 = !DILocation(line: 692, column: 25, scope: !4092)
!4189 = !DILocation(line: 694, column: 21, scope: !4190)
!4190 = !DILexicalBlockFile(scope: !4191, file: !259, discriminator: 1)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !259, line: 694, column: 21)
!4192 = distinct !DILexicalBlock(scope: !4092, file: !259, line: 694, column: 21)
!4193 = !DILocation(line: 694, column: 21, scope: !4194)
!4194 = !DILexicalBlockFile(scope: !4191, file: !259, discriminator: 2)
!4195 = !DILocation(line: 694, column: 21, scope: !4196)
!4196 = !DILexicalBlockFile(scope: !4197, file: !259, discriminator: 4)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !259, line: 694, column: 21)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !259, line: 694, column: 21)
!4199 = distinct !DILexicalBlock(scope: !4191, file: !259, line: 694, column: 21)
!4200 = !DILocation(line: 694, column: 21, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !4198, file: !259, discriminator: 4)
!4202 = !DILocation(line: 694, column: 21, scope: !4203)
!4203 = !DILexicalBlockFile(scope: !4197, file: !259, discriminator: 5)
!4204 = !DILocation(line: 694, column: 21, scope: !4205)
!4205 = !DILexicalBlockFile(scope: !4198, file: !259, discriminator: 6)
!4206 = !DILocation(line: 694, column: 21, scope: !4207)
!4207 = !DILexicalBlockFile(scope: !4208, file: !259, discriminator: 9)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !259, line: 694, column: 21)
!4209 = distinct !DILexicalBlock(scope: !4199, file: !259, line: 694, column: 21)
!4210 = !DILocation(line: 694, column: 21, scope: !4211)
!4211 = !DILexicalBlockFile(scope: !4209, file: !259, discriminator: 9)
!4212 = !DILocation(line: 694, column: 21, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4208, file: !259, discriminator: 10)
!4214 = !DILocation(line: 694, column: 21, scope: !4215)
!4215 = !DILexicalBlockFile(scope: !4209, file: !259, discriminator: 11)
!4216 = !DILocation(line: 694, column: 21, scope: !4217)
!4217 = !DILexicalBlockFile(scope: !4199, file: !259, discriminator: 13)
!4218 = !DILocation(line: 695, column: 21, scope: !4219)
!4219 = !DILexicalBlockFile(scope: !4220, file: !259, discriminator: 1)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !259, line: 695, column: 21)
!4221 = distinct !DILexicalBlock(scope: !4092, file: !259, line: 695, column: 21)
!4222 = !DILocation(line: 695, column: 21, scope: !4223)
!4223 = !DILexicalBlockFile(scope: !4221, file: !259, discriminator: 1)
!4224 = !DILocation(line: 695, column: 21, scope: !4225)
!4225 = !DILexicalBlockFile(scope: !4220, file: !259, discriminator: 2)
!4226 = !DILocation(line: 695, column: 21, scope: !4227)
!4227 = !DILexicalBlockFile(scope: !4221, file: !259, discriminator: 3)
!4228 = !DILocation(line: 696, column: 25, scope: !4092)
!4229 = !DILocation(line: 678, column: 17, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4093, file: !259, discriminator: 1)
!4231 = distinct !{!4231, !4232, !4233}
!4232 = !DILocation(line: 678, column: 17, scope: !4094)
!4233 = !DILocation(line: 697, column: 19, scope: !4094)
!4234 = !DILocation(line: 704, column: 34, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !3639, file: !259, line: 704, column: 11)
!4236 = !DILocation(line: 706, column: 14, scope: !4235)
!4237 = !DILocation(line: 707, column: 14, scope: !4235)
!4238 = !DILocation(line: 707, column: 35, scope: !4239)
!4239 = !DILexicalBlockFile(scope: !4235, file: !259, discriminator: 1)
!4240 = !DILocation(line: 707, column: 17, scope: !4239)
!4241 = !DILocation(line: 707, column: 53, scope: !4239)
!4242 = !DILocation(line: 707, column: 47, scope: !4239)
!4243 = !DILocation(line: 707, column: 65, scope: !4239)
!4244 = !DILocation(line: 708, column: 15, scope: !4239)
!4245 = !DILocation(line: 708, column: 11, scope: !4235)
!4246 = !DILocation(line: 704, column: 11, scope: !4247)
!4247 = !DILexicalBlockFile(scope: !3639, file: !259, discriminator: 2)
!4248 = !DILocation(line: 712, column: 7, scope: !4249)
!4249 = !DILexicalBlockFile(scope: !4250, file: !259, discriminator: 1)
!4250 = distinct !DILexicalBlock(scope: !3639, file: !259, line: 712, column: 7)
!4251 = !DILocation(line: 712, column: 7, scope: !4252)
!4252 = !DILexicalBlockFile(scope: !4253, file: !259, discriminator: 4)
!4253 = distinct !DILexicalBlock(scope: !4250, file: !259, line: 712, column: 7)
!4254 = !DILocation(line: 712, column: 7, scope: !4255)
!4255 = !DILexicalBlockFile(scope: !4253, file: !259, discriminator: 3)
!4256 = !DILocation(line: 712, column: 7, scope: !4257)
!4257 = !DILexicalBlockFile(scope: !4258, file: !259, discriminator: 6)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !259, line: 712, column: 7)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !259, line: 712, column: 7)
!4260 = distinct !DILexicalBlock(scope: !4253, file: !259, line: 712, column: 7)
!4261 = !DILocation(line: 712, column: 7, scope: !4262)
!4262 = !DILexicalBlockFile(scope: !4259, file: !259, discriminator: 6)
!4263 = !DILocation(line: 712, column: 7, scope: !4264)
!4264 = !DILexicalBlockFile(scope: !4258, file: !259, discriminator: 7)
!4265 = !DILocation(line: 712, column: 7, scope: !4266)
!4266 = !DILexicalBlockFile(scope: !4259, file: !259, discriminator: 8)
!4267 = !DILocation(line: 712, column: 7, scope: !4268)
!4268 = !DILexicalBlockFile(scope: !4269, file: !259, discriminator: 11)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !259, line: 712, column: 7)
!4270 = distinct !DILexicalBlock(scope: !4260, file: !259, line: 712, column: 7)
!4271 = !DILocation(line: 712, column: 7, scope: !4272)
!4272 = !DILexicalBlockFile(scope: !4270, file: !259, discriminator: 11)
!4273 = !DILocation(line: 712, column: 7, scope: !4274)
!4274 = !DILexicalBlockFile(scope: !4269, file: !259, discriminator: 12)
!4275 = !DILocation(line: 712, column: 7, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !4270, file: !259, discriminator: 13)
!4277 = !DILocation(line: 712, column: 7, scope: !4278)
!4278 = !DILexicalBlockFile(scope: !4279, file: !259, discriminator: 16)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !259, line: 712, column: 7)
!4280 = distinct !DILexicalBlock(scope: !4260, file: !259, line: 712, column: 7)
!4281 = !DILocation(line: 712, column: 7, scope: !4282)
!4282 = !DILexicalBlockFile(scope: !4280, file: !259, discriminator: 16)
!4283 = !DILocation(line: 712, column: 7, scope: !4284)
!4284 = !DILexicalBlockFile(scope: !4279, file: !259, discriminator: 17)
!4285 = !DILocation(line: 712, column: 7, scope: !4286)
!4286 = !DILexicalBlockFile(scope: !4280, file: !259, discriminator: 18)
!4287 = !DILocation(line: 712, column: 7, scope: !4288)
!4288 = !DILexicalBlockFile(scope: !4260, file: !259, discriminator: 20)
!4289 = !DILocation(line: 712, column: 7, scope: !4290)
!4290 = !DILexicalBlockFile(scope: !4291, file: !259, discriminator: 22)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !259, line: 712, column: 7)
!4292 = distinct !DILexicalBlock(scope: !4250, file: !259, line: 712, column: 7)
!4293 = !DILocation(line: 712, column: 7, scope: !4294)
!4294 = !DILexicalBlockFile(scope: !4292, file: !259, discriminator: 22)
!4295 = !DILocation(line: 712, column: 7, scope: !4296)
!4296 = !DILexicalBlockFile(scope: !4291, file: !259, discriminator: 23)
!4297 = !DILocation(line: 712, column: 7, scope: !4298)
!4298 = !DILexicalBlockFile(scope: !4292, file: !259, discriminator: 24)
!4299 = !DILocation(line: 715, column: 7, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !4301, file: !259, discriminator: 1)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !259, line: 715, column: 7)
!4302 = distinct !DILexicalBlock(scope: !3639, file: !259, line: 715, column: 7)
!4303 = !DILocation(line: 715, column: 7, scope: !4304)
!4304 = !DILexicalBlockFile(scope: !4301, file: !259, discriminator: 2)
!4305 = !DILocation(line: 715, column: 7, scope: !4306)
!4306 = !DILexicalBlockFile(scope: !4307, file: !259, discriminator: 4)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !259, line: 715, column: 7)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !259, line: 715, column: 7)
!4309 = distinct !DILexicalBlock(scope: !4301, file: !259, line: 715, column: 7)
!4310 = !DILocation(line: 715, column: 7, scope: !4311)
!4311 = !DILexicalBlockFile(scope: !4308, file: !259, discriminator: 4)
!4312 = !DILocation(line: 715, column: 7, scope: !4313)
!4313 = !DILexicalBlockFile(scope: !4307, file: !259, discriminator: 5)
!4314 = !DILocation(line: 715, column: 7, scope: !4315)
!4315 = !DILexicalBlockFile(scope: !4308, file: !259, discriminator: 6)
!4316 = !DILocation(line: 715, column: 7, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !4318, file: !259, discriminator: 9)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !259, line: 715, column: 7)
!4319 = distinct !DILexicalBlock(scope: !4309, file: !259, line: 715, column: 7)
!4320 = !DILocation(line: 715, column: 7, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !4319, file: !259, discriminator: 9)
!4322 = !DILocation(line: 715, column: 7, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4318, file: !259, discriminator: 10)
!4324 = !DILocation(line: 715, column: 7, scope: !4325)
!4325 = !DILexicalBlockFile(scope: !4319, file: !259, discriminator: 11)
!4326 = !DILocation(line: 715, column: 7, scope: !4327)
!4327 = !DILexicalBlockFile(scope: !4309, file: !259, discriminator: 13)
!4328 = !DILocation(line: 716, column: 7, scope: !4329)
!4329 = !DILexicalBlockFile(scope: !4330, file: !259, discriminator: 1)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !259, line: 716, column: 7)
!4331 = distinct !DILexicalBlock(scope: !3639, file: !259, line: 716, column: 7)
!4332 = !DILocation(line: 716, column: 7, scope: !4333)
!4333 = !DILexicalBlockFile(scope: !4331, file: !259, discriminator: 1)
!4334 = !DILocation(line: 716, column: 7, scope: !4335)
!4335 = !DILexicalBlockFile(scope: !4330, file: !259, discriminator: 2)
!4336 = !DILocation(line: 716, column: 7, scope: !4337)
!4337 = !DILexicalBlockFile(scope: !4331, file: !259, discriminator: 3)
!4338 = !DILocation(line: 718, column: 13, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !3639, file: !259, line: 718, column: 11)
!4340 = !DILocation(line: 718, column: 11, scope: !3639)
!4341 = !DILocation(line: 720, column: 5, scope: !3640)
!4342 = !DILocation(line: 392, column: 75, scope: !4343)
!4343 = !DILexicalBlockFile(scope: !3640, file: !259, discriminator: 5)
!4344 = !DILocation(line: 392, column: 3, scope: !4343)
!4345 = distinct !{!4345, !4346, !4347}
!4346 = !DILocation(line: 392, column: 3, scope: !3641)
!4347 = !DILocation(line: 720, column: 5, scope: !3641)
!4348 = !DILocation(line: 722, column: 11, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !3612, file: !259, line: 722, column: 7)
!4350 = !DILocation(line: 722, column: 16, scope: !4349)
!4351 = !DILocation(line: 730, column: 51, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !3612, file: !259, line: 730, column: 7)
!4353 = !DILocation(line: 731, column: 10, scope: !4354)
!4354 = !DILexicalBlockFile(scope: !4352, file: !259, discriminator: 1)
!4355 = !DILocation(line: 733, column: 11, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !259, line: 733, column: 11)
!4357 = distinct !DILexicalBlock(scope: !4352, file: !259, line: 732, column: 5)
!4358 = !DILocation(line: 733, column: 11, scope: !4357)
!4359 = !DILocation(line: 734, column: 16, scope: !4356)
!4360 = !DILocation(line: 734, column: 9, scope: !4356)
!4361 = !DILocation(line: 738, column: 18, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4356, file: !259, line: 738, column: 16)
!4363 = !DILocation(line: 738, column: 32, scope: !4364)
!4364 = !DILexicalBlockFile(scope: !4362, file: !259, discriminator: 1)
!4365 = !DILocation(line: 738, column: 29, scope: !4362)
!4366 = !DILocation(line: 747, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !3612, file: !259, line: 747, column: 7)
!4368 = !DILocation(line: 747, column: 20, scope: !4367)
!4369 = !DILocation(line: 748, column: 12, scope: !4370)
!4370 = !DILexicalBlockFile(scope: !4371, file: !259, discriminator: 1)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !259, line: 748, column: 5)
!4372 = distinct !DILexicalBlock(scope: !4367, file: !259, line: 748, column: 5)
!4373 = !DILocation(line: 748, column: 5, scope: !4374)
!4374 = !DILexicalBlockFile(scope: !4372, file: !259, discriminator: 1)
!4375 = !DILocation(line: 749, column: 7, scope: !4376)
!4376 = !DILexicalBlockFile(scope: !4377, file: !259, discriminator: 1)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !259, line: 749, column: 7)
!4378 = distinct !DILexicalBlock(scope: !4371, file: !259, line: 749, column: 7)
!4379 = !DILocation(line: 749, column: 7, scope: !4380)
!4380 = !DILexicalBlockFile(scope: !4378, file: !259, discriminator: 1)
!4381 = !DILocation(line: 749, column: 7, scope: !4382)
!4382 = !DILexicalBlockFile(scope: !4377, file: !259, discriminator: 2)
!4383 = !DILocation(line: 749, column: 7, scope: !4384)
!4384 = !DILexicalBlockFile(scope: !4378, file: !259, discriminator: 3)
!4385 = !DILocation(line: 748, column: 39, scope: !4386)
!4386 = !DILexicalBlockFile(scope: !4371, file: !259, discriminator: 2)
!4387 = distinct !{!4387, !4388, !4389}
!4388 = !DILocation(line: 748, column: 5, scope: !4372)
!4389 = !DILocation(line: 749, column: 7, scope: !4372)
!4390 = !DILocation(line: 751, column: 11, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !3612, file: !259, line: 751, column: 7)
!4392 = !DILocation(line: 751, column: 7, scope: !3612)
!4393 = !DILocation(line: 752, column: 5, scope: !4391)
!4394 = !DILocation(line: 752, column: 17, scope: !4391)
!4395 = !DILocation(line: 758, column: 21, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !3612, file: !259, line: 758, column: 7)
!4397 = !DILocation(line: 758, column: 54, scope: !4398)
!4398 = !DILexicalBlockFile(scope: !4396, file: !259, discriminator: 1)
!4399 = !DILocation(line: 758, column: 51, scope: !4396)
!4400 = !DILocation(line: 762, column: 42, scope: !3612)
!4401 = !DILocation(line: 760, column: 10, scope: !3612)
!4402 = !DILocation(line: 760, column: 3, scope: !3612)
!4403 = !DILocation(line: 764, column: 1, scope: !3612)
!4404 = distinct !DISubprogram(name: "gettext_quote", scope: !259, file: !259, line: 199, type: !4405, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!85, !85, !24}
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DILocalVariable(name: "msgid", arg: 1, scope: !4404, file: !259, line: 199, type: !85)
!4409 = !DILocalVariable(name: "s", arg: 2, scope: !4404, file: !259, line: 199, type: !24)
!4410 = !DILocalVariable(name: "translation", scope: !4404, file: !259, line: 201, type: !85)
!4411 = !DILocalVariable(name: "locale_code", scope: !4404, file: !259, line: 202, type: !85)
!4412 = !DILocation(line: 199, column: 28, scope: !4404)
!4413 = !DILocation(line: 199, column: 54, scope: !4404)
!4414 = !DILocation(line: 201, column: 29, scope: !4404)
!4415 = !DILocation(line: 201, column: 15, scope: !4404)
!4416 = !DILocation(line: 204, column: 19, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4404, file: !259, line: 204, column: 7)
!4418 = !DILocation(line: 204, column: 7, scope: !4404)
!4419 = !DILocation(line: 225, column: 17, scope: !4404)
!4420 = !DILocation(line: 202, column: 15, scope: !4404)
!4421 = !DILocalVariable(name: "s2", arg: 2, scope: !4422, file: !4423, line: 160, type: !85)
!4422 = distinct !DISubprogram(name: "strcaseeq0", scope: !4423, file: !4423, line: 160, type: !4424, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4426)
!4423 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!89, !85, !85, !87, !87, !87, !87, !87, !87, !87, !87, !87}
!4426 = !{!4427, !4421, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436}
!4427 = !DILocalVariable(name: "s1", arg: 1, scope: !4422, file: !4423, line: 160, type: !85)
!4428 = !DILocalVariable(name: "s20", arg: 3, scope: !4422, file: !4423, line: 160, type: !87)
!4429 = !DILocalVariable(name: "s21", arg: 4, scope: !4422, file: !4423, line: 160, type: !87)
!4430 = !DILocalVariable(name: "s22", arg: 5, scope: !4422, file: !4423, line: 160, type: !87)
!4431 = !DILocalVariable(name: "s23", arg: 6, scope: !4422, file: !4423, line: 160, type: !87)
!4432 = !DILocalVariable(name: "s24", arg: 7, scope: !4422, file: !4423, line: 160, type: !87)
!4433 = !DILocalVariable(name: "s25", arg: 8, scope: !4422, file: !4423, line: 160, type: !87)
!4434 = !DILocalVariable(name: "s26", arg: 9, scope: !4422, file: !4423, line: 160, type: !87)
!4435 = !DILocalVariable(name: "s27", arg: 10, scope: !4422, file: !4423, line: 160, type: !87)
!4436 = !DILocalVariable(name: "s28", arg: 11, scope: !4422, file: !4423, line: 160, type: !87)
!4437 = !DILocation(line: 160, column: 41, scope: !4422, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 226, column: 7, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4404, file: !259, line: 226, column: 7)
!4440 = !DILocation(line: 160, column: 120, scope: !4422, inlinedAt: !4438)
!4441 = !DILocation(line: 160, column: 130, scope: !4422, inlinedAt: !4438)
!4442 = !DILocation(line: 162, column: 7, scope: !4443, inlinedAt: !4438)
!4443 = !DILexicalBlockFile(scope: !4444, file: !4423, discriminator: 1)
!4444 = distinct !DILexicalBlock(scope: !4422, file: !4423, line: 162, column: 7)
!4445 = !DILocalVariable(name: "s2", arg: 2, scope: !4446, file: !4423, line: 146, type: !85)
!4446 = distinct !DISubprogram(name: "strcaseeq1", scope: !4423, file: !4423, line: 146, type: !4447, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!89, !85, !85, !87, !87, !87, !87, !87, !87, !87, !87}
!4449 = !{!4450, !4445, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458}
!4450 = !DILocalVariable(name: "s1", arg: 1, scope: !4446, file: !4423, line: 146, type: !85)
!4451 = !DILocalVariable(name: "s21", arg: 3, scope: !4446, file: !4423, line: 146, type: !87)
!4452 = !DILocalVariable(name: "s22", arg: 4, scope: !4446, file: !4423, line: 146, type: !87)
!4453 = !DILocalVariable(name: "s23", arg: 5, scope: !4446, file: !4423, line: 146, type: !87)
!4454 = !DILocalVariable(name: "s24", arg: 6, scope: !4446, file: !4423, line: 146, type: !87)
!4455 = !DILocalVariable(name: "s25", arg: 7, scope: !4446, file: !4423, line: 146, type: !87)
!4456 = !DILocalVariable(name: "s26", arg: 8, scope: !4446, file: !4423, line: 146, type: !87)
!4457 = !DILocalVariable(name: "s27", arg: 9, scope: !4446, file: !4423, line: 146, type: !87)
!4458 = !DILocalVariable(name: "s28", arg: 10, scope: !4446, file: !4423, line: 146, type: !87)
!4459 = !DILocation(line: 146, column: 41, scope: !4446, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 167, column: 16, scope: !4461, inlinedAt: !4438)
!4461 = distinct !DILexicalBlock(scope: !4462, file: !4423, line: 164, column: 11)
!4462 = distinct !DILexicalBlock(scope: !4444, file: !4423, line: 163, column: 5)
!4463 = !DILocation(line: 146, column: 110, scope: !4446, inlinedAt: !4460)
!4464 = !DILocation(line: 146, column: 120, scope: !4446, inlinedAt: !4460)
!4465 = !DILocation(line: 148, column: 7, scope: !4466, inlinedAt: !4460)
!4466 = !DILexicalBlockFile(scope: !4467, file: !4423, discriminator: 1)
!4467 = distinct !DILexicalBlock(scope: !4446, file: !4423, line: 148, column: 7)
!4468 = !DILocalVariable(name: "s2", arg: 2, scope: !4469, file: !4423, line: 132, type: !85)
!4469 = distinct !DISubprogram(name: "strcaseeq2", scope: !4423, file: !4423, line: 132, type: !4470, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!89, !85, !85, !87, !87, !87, !87, !87, !87, !87}
!4472 = !{!4473, !4468, !4474, !4475, !4476, !4477, !4478, !4479, !4480}
!4473 = !DILocalVariable(name: "s1", arg: 1, scope: !4469, file: !4423, line: 132, type: !85)
!4474 = !DILocalVariable(name: "s22", arg: 3, scope: !4469, file: !4423, line: 132, type: !87)
!4475 = !DILocalVariable(name: "s23", arg: 4, scope: !4469, file: !4423, line: 132, type: !87)
!4476 = !DILocalVariable(name: "s24", arg: 5, scope: !4469, file: !4423, line: 132, type: !87)
!4477 = !DILocalVariable(name: "s25", arg: 6, scope: !4469, file: !4423, line: 132, type: !87)
!4478 = !DILocalVariable(name: "s26", arg: 7, scope: !4469, file: !4423, line: 132, type: !87)
!4479 = !DILocalVariable(name: "s27", arg: 8, scope: !4469, file: !4423, line: 132, type: !87)
!4480 = !DILocalVariable(name: "s28", arg: 9, scope: !4469, file: !4423, line: 132, type: !87)
!4481 = !DILocation(line: 132, column: 41, scope: !4469, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 153, column: 16, scope: !4483, inlinedAt: !4460)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !4423, line: 150, column: 11)
!4484 = distinct !DILexicalBlock(scope: !4467, file: !4423, line: 149, column: 5)
!4485 = !DILocation(line: 132, column: 100, scope: !4469, inlinedAt: !4482)
!4486 = !DILocation(line: 132, column: 110, scope: !4469, inlinedAt: !4482)
!4487 = !DILocation(line: 134, column: 7, scope: !4488, inlinedAt: !4482)
!4488 = !DILexicalBlockFile(scope: !4489, file: !4423, discriminator: 1)
!4489 = distinct !DILexicalBlock(scope: !4469, file: !4423, line: 134, column: 7)
!4490 = !DILocalVariable(name: "s2", arg: 2, scope: !4491, file: !4423, line: 118, type: !85)
!4491 = distinct !DISubprogram(name: "strcaseeq3", scope: !4423, file: !4423, line: 118, type: !4492, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!89, !85, !85, !87, !87, !87, !87, !87, !87}
!4494 = !{!4495, !4490, !4496, !4497, !4498, !4499, !4500, !4501}
!4495 = !DILocalVariable(name: "s1", arg: 1, scope: !4491, file: !4423, line: 118, type: !85)
!4496 = !DILocalVariable(name: "s23", arg: 3, scope: !4491, file: !4423, line: 118, type: !87)
!4497 = !DILocalVariable(name: "s24", arg: 4, scope: !4491, file: !4423, line: 118, type: !87)
!4498 = !DILocalVariable(name: "s25", arg: 5, scope: !4491, file: !4423, line: 118, type: !87)
!4499 = !DILocalVariable(name: "s26", arg: 6, scope: !4491, file: !4423, line: 118, type: !87)
!4500 = !DILocalVariable(name: "s27", arg: 7, scope: !4491, file: !4423, line: 118, type: !87)
!4501 = !DILocalVariable(name: "s28", arg: 8, scope: !4491, file: !4423, line: 118, type: !87)
!4502 = !DILocation(line: 118, column: 41, scope: !4491, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 139, column: 16, scope: !4504, inlinedAt: !4482)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !4423, line: 136, column: 11)
!4505 = distinct !DILexicalBlock(scope: !4489, file: !4423, line: 135, column: 5)
!4506 = !DILocation(line: 118, column: 90, scope: !4491, inlinedAt: !4503)
!4507 = !DILocation(line: 118, column: 100, scope: !4491, inlinedAt: !4503)
!4508 = !DILocation(line: 120, column: 7, scope: !4509, inlinedAt: !4503)
!4509 = !DILexicalBlockFile(scope: !4510, file: !4423, discriminator: 2)
!4510 = distinct !DILexicalBlock(scope: !4491, file: !4423, line: 120, column: 7)
!4511 = !DILocation(line: 120, column: 7, scope: !4512, inlinedAt: !4503)
!4512 = !DILexicalBlockFile(scope: !4491, file: !4423, discriminator: 2)
!4513 = !DILocalVariable(name: "s2", arg: 2, scope: !4514, file: !4423, line: 104, type: !85)
!4514 = distinct !DISubprogram(name: "strcaseeq4", scope: !4423, file: !4423, line: 104, type: !4515, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!89, !85, !85, !87, !87, !87, !87, !87}
!4517 = !{!4518, !4513, !4519, !4520, !4521, !4522, !4523}
!4518 = !DILocalVariable(name: "s1", arg: 1, scope: !4514, file: !4423, line: 104, type: !85)
!4519 = !DILocalVariable(name: "s24", arg: 3, scope: !4514, file: !4423, line: 104, type: !87)
!4520 = !DILocalVariable(name: "s25", arg: 4, scope: !4514, file: !4423, line: 104, type: !87)
!4521 = !DILocalVariable(name: "s26", arg: 5, scope: !4514, file: !4423, line: 104, type: !87)
!4522 = !DILocalVariable(name: "s27", arg: 6, scope: !4514, file: !4423, line: 104, type: !87)
!4523 = !DILocalVariable(name: "s28", arg: 7, scope: !4514, file: !4423, line: 104, type: !87)
!4524 = !DILocation(line: 104, column: 41, scope: !4514, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 125, column: 16, scope: !4526, inlinedAt: !4503)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !4423, line: 122, column: 11)
!4527 = distinct !DILexicalBlock(scope: !4510, file: !4423, line: 121, column: 5)
!4528 = !DILocation(line: 104, column: 80, scope: !4514, inlinedAt: !4525)
!4529 = !DILocation(line: 104, column: 90, scope: !4514, inlinedAt: !4525)
!4530 = !DILocation(line: 106, column: 7, scope: !4531, inlinedAt: !4525)
!4531 = !DILexicalBlockFile(scope: !4532, file: !4423, discriminator: 2)
!4532 = distinct !DILexicalBlock(scope: !4514, file: !4423, line: 106, column: 7)
!4533 = !DILocation(line: 106, column: 7, scope: !4534, inlinedAt: !4525)
!4534 = !DILexicalBlockFile(scope: !4514, file: !4423, discriminator: 2)
!4535 = !DILocalVariable(name: "s2", arg: 2, scope: !4536, file: !4423, line: 90, type: !85)
!4536 = distinct !DISubprogram(name: "strcaseeq5", scope: !4423, file: !4423, line: 90, type: !4537, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4539)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!89, !85, !85, !87, !87, !87, !87}
!4539 = !{!4540, !4535, !4541, !4542, !4543, !4544}
!4540 = !DILocalVariable(name: "s1", arg: 1, scope: !4536, file: !4423, line: 90, type: !85)
!4541 = !DILocalVariable(name: "s25", arg: 3, scope: !4536, file: !4423, line: 90, type: !87)
!4542 = !DILocalVariable(name: "s26", arg: 4, scope: !4536, file: !4423, line: 90, type: !87)
!4543 = !DILocalVariable(name: "s27", arg: 5, scope: !4536, file: !4423, line: 90, type: !87)
!4544 = !DILocalVariable(name: "s28", arg: 6, scope: !4536, file: !4423, line: 90, type: !87)
!4545 = !DILocation(line: 90, column: 41, scope: !4536, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 111, column: 16, scope: !4547, inlinedAt: !4525)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !4423, line: 108, column: 11)
!4548 = distinct !DILexicalBlock(scope: !4532, file: !4423, line: 107, column: 5)
!4549 = !DILocation(line: 90, column: 70, scope: !4536, inlinedAt: !4546)
!4550 = !DILocation(line: 90, column: 80, scope: !4536, inlinedAt: !4546)
!4551 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4546)
!4552 = !DILexicalBlockFile(scope: !4553, file: !4423, discriminator: 2)
!4553 = distinct !DILexicalBlock(scope: !4536, file: !4423, line: 92, column: 7)
!4554 = !DILocation(line: 92, column: 7, scope: !4555, inlinedAt: !4546)
!4555 = !DILexicalBlockFile(scope: !4536, file: !4423, discriminator: 2)
!4556 = !DILocation(line: 227, column: 12, scope: !4439)
!4557 = !DILocation(line: 227, column: 21, scope: !4439)
!4558 = !DILocation(line: 227, column: 5, scope: !4439)
!4559 = !DILocation(line: 146, column: 41, scope: !4446, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 167, column: 16, scope: !4461, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 228, column: 7, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4404, file: !259, line: 228, column: 7)
!4563 = !DILocation(line: 146, column: 110, scope: !4446, inlinedAt: !4560)
!4564 = !DILocation(line: 146, column: 120, scope: !4446, inlinedAt: !4560)
!4565 = !DILocation(line: 148, column: 7, scope: !4466, inlinedAt: !4560)
!4566 = !DILocation(line: 132, column: 41, scope: !4469, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 153, column: 16, scope: !4483, inlinedAt: !4560)
!4568 = !DILocation(line: 132, column: 100, scope: !4469, inlinedAt: !4567)
!4569 = !DILocation(line: 132, column: 110, scope: !4469, inlinedAt: !4567)
!4570 = !DILocation(line: 134, column: 7, scope: !4571, inlinedAt: !4567)
!4571 = !DILexicalBlockFile(scope: !4489, file: !4423, discriminator: 2)
!4572 = !DILocation(line: 134, column: 7, scope: !4573, inlinedAt: !4567)
!4573 = !DILexicalBlockFile(scope: !4469, file: !4423, discriminator: 2)
!4574 = !DILocation(line: 118, column: 41, scope: !4491, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 139, column: 16, scope: !4504, inlinedAt: !4567)
!4576 = !DILocation(line: 118, column: 90, scope: !4491, inlinedAt: !4575)
!4577 = !DILocation(line: 118, column: 100, scope: !4491, inlinedAt: !4575)
!4578 = !DILocation(line: 120, column: 7, scope: !4509, inlinedAt: !4575)
!4579 = !DILocation(line: 120, column: 7, scope: !4512, inlinedAt: !4575)
!4580 = !DILocation(line: 104, column: 41, scope: !4514, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 125, column: 16, scope: !4526, inlinedAt: !4575)
!4582 = !DILocation(line: 104, column: 80, scope: !4514, inlinedAt: !4581)
!4583 = !DILocation(line: 104, column: 90, scope: !4514, inlinedAt: !4581)
!4584 = !DILocation(line: 106, column: 7, scope: !4531, inlinedAt: !4581)
!4585 = !DILocation(line: 106, column: 7, scope: !4534, inlinedAt: !4581)
!4586 = !DILocation(line: 90, column: 41, scope: !4536, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 111, column: 16, scope: !4547, inlinedAt: !4581)
!4588 = !DILocation(line: 90, column: 70, scope: !4536, inlinedAt: !4587)
!4589 = !DILocation(line: 90, column: 80, scope: !4536, inlinedAt: !4587)
!4590 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4587)
!4591 = !DILocation(line: 92, column: 7, scope: !4555, inlinedAt: !4587)
!4592 = !DILocalVariable(name: "s2", arg: 2, scope: !4593, file: !4423, line: 76, type: !85)
!4593 = distinct !DISubprogram(name: "strcaseeq6", scope: !4423, file: !4423, line: 76, type: !4594, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4596)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!89, !85, !85, !87, !87, !87}
!4596 = !{!4597, !4592, !4598, !4599, !4600}
!4597 = !DILocalVariable(name: "s1", arg: 1, scope: !4593, file: !4423, line: 76, type: !85)
!4598 = !DILocalVariable(name: "s26", arg: 3, scope: !4593, file: !4423, line: 76, type: !87)
!4599 = !DILocalVariable(name: "s27", arg: 4, scope: !4593, file: !4423, line: 76, type: !87)
!4600 = !DILocalVariable(name: "s28", arg: 5, scope: !4593, file: !4423, line: 76, type: !87)
!4601 = !DILocation(line: 76, column: 41, scope: !4593, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 97, column: 16, scope: !4603, inlinedAt: !4587)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !4423, line: 94, column: 11)
!4604 = distinct !DILexicalBlock(scope: !4553, file: !4423, line: 93, column: 5)
!4605 = !DILocation(line: 76, column: 60, scope: !4593, inlinedAt: !4602)
!4606 = !DILocation(line: 76, column: 70, scope: !4593, inlinedAt: !4602)
!4607 = !DILocation(line: 78, column: 7, scope: !4608, inlinedAt: !4602)
!4608 = !DILexicalBlockFile(scope: !4609, file: !4423, discriminator: 2)
!4609 = distinct !DILexicalBlock(scope: !4593, file: !4423, line: 78, column: 7)
!4610 = !DILocation(line: 78, column: 7, scope: !4611, inlinedAt: !4602)
!4611 = !DILexicalBlockFile(scope: !4593, file: !4423, discriminator: 2)
!4612 = !DILocalVariable(name: "s2", arg: 2, scope: !4613, file: !4423, line: 62, type: !85)
!4613 = distinct !DISubprogram(name: "strcaseeq7", scope: !4423, file: !4423, line: 62, type: !4614, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4616)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!89, !85, !85, !87, !87}
!4616 = !{!4617, !4612, !4618, !4619}
!4617 = !DILocalVariable(name: "s1", arg: 1, scope: !4613, file: !4423, line: 62, type: !85)
!4618 = !DILocalVariable(name: "s27", arg: 3, scope: !4613, file: !4423, line: 62, type: !87)
!4619 = !DILocalVariable(name: "s28", arg: 4, scope: !4613, file: !4423, line: 62, type: !87)
!4620 = !DILocation(line: 62, column: 41, scope: !4613, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 83, column: 16, scope: !4622, inlinedAt: !4602)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !4423, line: 80, column: 11)
!4623 = distinct !DILexicalBlock(scope: !4609, file: !4423, line: 79, column: 5)
!4624 = !DILocation(line: 62, column: 50, scope: !4613, inlinedAt: !4621)
!4625 = !DILocation(line: 62, column: 60, scope: !4613, inlinedAt: !4621)
!4626 = !DILocation(line: 64, column: 7, scope: !4627, inlinedAt: !4621)
!4627 = !DILexicalBlockFile(scope: !4628, file: !4423, discriminator: 2)
!4628 = distinct !DILexicalBlock(scope: !4613, file: !4423, line: 64, column: 7)
!4629 = !DILocation(line: 228, column: 7, scope: !4404)
!4630 = !DILocation(line: 229, column: 12, scope: !4562)
!4631 = !DILocation(line: 229, column: 21, scope: !4562)
!4632 = !DILocation(line: 229, column: 5, scope: !4562)
!4633 = !DILocation(line: 231, column: 13, scope: !4404)
!4634 = !DILocation(line: 231, column: 11, scope: !4404)
!4635 = !DILocation(line: 231, column: 3, scope: !4404)
!4636 = !DILocation(line: 232, column: 1, scope: !4404)
!4637 = distinct !DISubprogram(name: "quotearg_alloc", scope: !259, file: !259, line: 791, type: !4638, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!88, !85, !54, !3480}
!4640 = !{!4641, !4642, !4643}
!4641 = !DILocalVariable(name: "arg", arg: 1, scope: !4637, file: !259, line: 791, type: !85)
!4642 = !DILocalVariable(name: "argsize", arg: 2, scope: !4637, file: !259, line: 791, type: !54)
!4643 = !DILocalVariable(name: "o", arg: 3, scope: !4637, file: !259, line: 792, type: !3480)
!4644 = !DILocation(line: 791, column: 29, scope: !4637)
!4645 = !DILocation(line: 791, column: 41, scope: !4637)
!4646 = !DILocation(line: 792, column: 47, scope: !4637)
!4647 = !DILocalVariable(name: "arg", arg: 1, scope: !4648, file: !259, line: 804, type: !85)
!4648 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !259, file: !259, line: 804, type: !4649, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4651)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!88, !85, !54, !53, !3480}
!4651 = !{!4647, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659}
!4652 = !DILocalVariable(name: "argsize", arg: 2, scope: !4648, file: !259, line: 804, type: !54)
!4653 = !DILocalVariable(name: "size", arg: 3, scope: !4648, file: !259, line: 804, type: !53)
!4654 = !DILocalVariable(name: "o", arg: 4, scope: !4648, file: !259, line: 805, type: !3480)
!4655 = !DILocalVariable(name: "p", scope: !4648, file: !259, line: 807, type: !3480)
!4656 = !DILocalVariable(name: "e", scope: !4648, file: !259, line: 808, type: !89)
!4657 = !DILocalVariable(name: "flags", scope: !4648, file: !259, line: 810, type: !89)
!4658 = !DILocalVariable(name: "bufsize", scope: !4648, file: !259, line: 811, type: !54)
!4659 = !DILocalVariable(name: "buf", scope: !4648, file: !259, line: 815, type: !88)
!4660 = !DILocation(line: 804, column: 33, scope: !4648, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 794, column: 10, scope: !4637)
!4662 = !DILocation(line: 804, column: 45, scope: !4648, inlinedAt: !4661)
!4663 = !DILocation(line: 804, column: 62, scope: !4648, inlinedAt: !4661)
!4664 = !DILocation(line: 805, column: 51, scope: !4648, inlinedAt: !4661)
!4665 = !DILocation(line: 807, column: 37, scope: !4648, inlinedAt: !4661)
!4666 = !DILocation(line: 807, column: 33, scope: !4648, inlinedAt: !4661)
!4667 = !DILocation(line: 808, column: 11, scope: !4648, inlinedAt: !4661)
!4668 = !DILocation(line: 808, column: 7, scope: !4648, inlinedAt: !4661)
!4669 = !DILocation(line: 810, column: 18, scope: !4648, inlinedAt: !4661)
!4670 = !DILocation(line: 810, column: 24, scope: !4648, inlinedAt: !4661)
!4671 = !DILocation(line: 810, column: 7, scope: !4648, inlinedAt: !4661)
!4672 = !DILocation(line: 811, column: 69, scope: !4648, inlinedAt: !4661)
!4673 = !DILocation(line: 812, column: 53, scope: !4648, inlinedAt: !4661)
!4674 = !DILocation(line: 813, column: 49, scope: !4648, inlinedAt: !4661)
!4675 = !DILocation(line: 814, column: 49, scope: !4648, inlinedAt: !4661)
!4676 = !DILocation(line: 811, column: 20, scope: !4648, inlinedAt: !4661)
!4677 = !DILocation(line: 814, column: 62, scope: !4648, inlinedAt: !4661)
!4678 = !DILocation(line: 811, column: 10, scope: !4648, inlinedAt: !4661)
!4679 = !DILocalVariable(name: "n", arg: 1, scope: !4680, file: !48, line: 220, type: !54)
!4680 = distinct !DISubprogram(name: "xcharalloc", scope: !48, file: !48, line: 220, type: !4681, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4683)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!88, !54}
!4683 = !{!4679}
!4684 = !DILocation(line: 220, column: 20, scope: !4680, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 815, column: 15, scope: !4648, inlinedAt: !4661)
!4686 = !DILocation(line: 222, column: 10, scope: !4680, inlinedAt: !4685)
!4687 = !DILocation(line: 815, column: 9, scope: !4648, inlinedAt: !4661)
!4688 = !DILocation(line: 816, column: 60, scope: !4648, inlinedAt: !4661)
!4689 = !DILocation(line: 818, column: 32, scope: !4648, inlinedAt: !4661)
!4690 = !DILocation(line: 818, column: 47, scope: !4648, inlinedAt: !4661)
!4691 = !DILocation(line: 816, column: 3, scope: !4648, inlinedAt: !4661)
!4692 = !DILocation(line: 819, column: 9, scope: !4648, inlinedAt: !4661)
!4693 = !DILocation(line: 794, column: 3, scope: !4637)
!4694 = !DILocation(line: 804, column: 33, scope: !4648)
!4695 = !DILocation(line: 804, column: 45, scope: !4648)
!4696 = !DILocation(line: 804, column: 62, scope: !4648)
!4697 = !DILocation(line: 805, column: 51, scope: !4648)
!4698 = !DILocation(line: 807, column: 37, scope: !4648)
!4699 = !DILocation(line: 807, column: 33, scope: !4648)
!4700 = !DILocation(line: 808, column: 11, scope: !4648)
!4701 = !DILocation(line: 808, column: 7, scope: !4648)
!4702 = !DILocation(line: 810, column: 18, scope: !4648)
!4703 = !DILocation(line: 810, column: 27, scope: !4648)
!4704 = !DILocation(line: 810, column: 24, scope: !4648)
!4705 = !DILocation(line: 810, column: 7, scope: !4648)
!4706 = !DILocation(line: 811, column: 69, scope: !4648)
!4707 = !DILocation(line: 812, column: 53, scope: !4648)
!4708 = !DILocation(line: 813, column: 49, scope: !4648)
!4709 = !DILocation(line: 814, column: 49, scope: !4648)
!4710 = !DILocation(line: 811, column: 20, scope: !4648)
!4711 = !DILocation(line: 814, column: 62, scope: !4648)
!4712 = !DILocation(line: 811, column: 10, scope: !4648)
!4713 = !DILocation(line: 220, column: 20, scope: !4680, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 815, column: 15, scope: !4648)
!4715 = !DILocation(line: 222, column: 10, scope: !4680, inlinedAt: !4714)
!4716 = !DILocation(line: 815, column: 9, scope: !4648)
!4717 = !DILocation(line: 816, column: 60, scope: !4648)
!4718 = !DILocation(line: 818, column: 32, scope: !4648)
!4719 = !DILocation(line: 818, column: 47, scope: !4648)
!4720 = !DILocation(line: 816, column: 3, scope: !4648)
!4721 = !DILocation(line: 819, column: 9, scope: !4648)
!4722 = !DILocation(line: 820, column: 7, scope: !4648)
!4723 = !DILocation(line: 821, column: 11, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4648, file: !259, line: 820, column: 7)
!4725 = !DILocation(line: 821, column: 5, scope: !4724)
!4726 = !DILocation(line: 822, column: 3, scope: !4648)
!4727 = distinct !DISubprogram(name: "quotearg_free", scope: !259, file: !259, line: 840, type: !1938, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4728)
!4728 = !{!4729, !4730}
!4729 = !DILocalVariable(name: "sv", scope: !4727, file: !259, line: 842, type: !284)
!4730 = !DILocalVariable(name: "i", scope: !4727, file: !259, line: 843, type: !89)
!4731 = !DILocation(line: 842, column: 24, scope: !4727)
!4732 = !DILocation(line: 842, column: 19, scope: !4727)
!4733 = !DILocation(line: 843, column: 7, scope: !4727)
!4734 = !DILocation(line: 844, column: 19, scope: !4735)
!4735 = !DILexicalBlockFile(scope: !4736, file: !259, discriminator: 1)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !259, line: 844, column: 3)
!4737 = distinct !DILexicalBlock(scope: !4727, file: !259, line: 844, column: 3)
!4738 = !DILocation(line: 844, column: 17, scope: !4735)
!4739 = !DILocation(line: 844, column: 3, scope: !4740)
!4740 = !DILexicalBlockFile(scope: !4737, file: !259, discriminator: 1)
!4741 = !DILocation(line: 845, column: 17, scope: !4736)
!4742 = !{!4743, !769, i64 8}
!4743 = !{!"slotvec", !980, i64 0, !769, i64 8}
!4744 = !DILocation(line: 845, column: 5, scope: !4736)
!4745 = !DILocation(line: 844, column: 28, scope: !4746)
!4746 = !DILexicalBlockFile(scope: !4736, file: !259, discriminator: 2)
!4747 = distinct !{!4747, !4748, !4749}
!4748 = !DILocation(line: 844, column: 3, scope: !4737)
!4749 = !DILocation(line: 845, column: 20, scope: !4737)
!4750 = !DILocation(line: 846, column: 13, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4727, file: !259, line: 846, column: 7)
!4752 = !DILocation(line: 846, column: 17, scope: !4751)
!4753 = !DILocation(line: 846, column: 7, scope: !4727)
!4754 = !DILocation(line: 848, column: 7, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4751, file: !259, line: 847, column: 5)
!4756 = !DILocation(line: 849, column: 21, scope: !4755)
!4757 = !{!4743, !980, i64 0}
!4758 = !DILocation(line: 850, column: 20, scope: !4755)
!4759 = !DILocation(line: 851, column: 5, scope: !4755)
!4760 = !DILocation(line: 852, column: 10, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4727, file: !259, line: 852, column: 7)
!4762 = !DILocation(line: 852, column: 7, scope: !4727)
!4763 = !DILocation(line: 854, column: 13, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4761, file: !259, line: 853, column: 5)
!4765 = !DILocation(line: 854, column: 7, scope: !4764)
!4766 = !DILocation(line: 855, column: 15, scope: !4764)
!4767 = !DILocation(line: 856, column: 5, scope: !4764)
!4768 = !DILocation(line: 857, column: 10, scope: !4727)
!4769 = !DILocation(line: 858, column: 1, scope: !4727)
!4770 = distinct !DISubprogram(name: "quotearg_n", scope: !259, file: !259, line: 922, type: !4771, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4773)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!88, !89, !85}
!4773 = !{!4774, !4775}
!4774 = !DILocalVariable(name: "n", arg: 1, scope: !4770, file: !259, line: 922, type: !89)
!4775 = !DILocalVariable(name: "arg", arg: 2, scope: !4770, file: !259, line: 922, type: !85)
!4776 = !DILocation(line: 922, column: 17, scope: !4770)
!4777 = !DILocation(line: 922, column: 32, scope: !4770)
!4778 = !DILocation(line: 924, column: 10, scope: !4770)
!4779 = !DILocation(line: 924, column: 3, scope: !4770)
!4780 = distinct !DISubprogram(name: "quotearg_n_options", scope: !259, file: !259, line: 869, type: !4781, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4783)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!88, !89, !85, !54, !3480}
!4783 = !{!4784, !4785, !4786, !4787, !4788, !4789, !4790, !4793, !4795, !4796, !4797}
!4784 = !DILocalVariable(name: "n", arg: 1, scope: !4780, file: !259, line: 869, type: !89)
!4785 = !DILocalVariable(name: "arg", arg: 2, scope: !4780, file: !259, line: 869, type: !85)
!4786 = !DILocalVariable(name: "argsize", arg: 3, scope: !4780, file: !259, line: 869, type: !54)
!4787 = !DILocalVariable(name: "options", arg: 4, scope: !4780, file: !259, line: 870, type: !3480)
!4788 = !DILocalVariable(name: "e", scope: !4780, file: !259, line: 872, type: !89)
!4789 = !DILocalVariable(name: "sv", scope: !4780, file: !259, line: 874, type: !284)
!4790 = !DILocalVariable(name: "preallocated", scope: !4791, file: !259, line: 881, type: !99)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !259, line: 880, column: 5)
!4792 = distinct !DILexicalBlock(scope: !4780, file: !259, line: 879, column: 7)
!4793 = !DILocalVariable(name: "size", scope: !4794, file: !259, line: 894, type: !54)
!4794 = distinct !DILexicalBlock(scope: !4780, file: !259, line: 893, column: 3)
!4795 = !DILocalVariable(name: "val", scope: !4794, file: !259, line: 895, type: !88)
!4796 = !DILocalVariable(name: "flags", scope: !4794, file: !259, line: 897, type: !89)
!4797 = !DILocalVariable(name: "qsize", scope: !4794, file: !259, line: 898, type: !54)
!4798 = !DILocation(line: 869, column: 25, scope: !4780)
!4799 = !DILocation(line: 869, column: 40, scope: !4780)
!4800 = !DILocation(line: 869, column: 52, scope: !4780)
!4801 = !DILocation(line: 870, column: 51, scope: !4780)
!4802 = !DILocation(line: 872, column: 11, scope: !4780)
!4803 = !DILocation(line: 872, column: 7, scope: !4780)
!4804 = !DILocation(line: 874, column: 24, scope: !4780)
!4805 = !DILocation(line: 874, column: 19, scope: !4780)
!4806 = !DILocation(line: 876, column: 9, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4780, file: !259, line: 876, column: 7)
!4808 = !DILocation(line: 876, column: 7, scope: !4780)
!4809 = !DILocation(line: 877, column: 5, scope: !4807)
!4810 = !DILocation(line: 879, column: 7, scope: !4792)
!4811 = !DILocation(line: 879, column: 14, scope: !4792)
!4812 = !DILocation(line: 879, column: 7, scope: !4780)
!4813 = !DILocation(line: 881, column: 31, scope: !4791)
!4814 = !DILocation(line: 883, column: 67, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4791, file: !259, line: 883, column: 11)
!4816 = !DILocation(line: 883, column: 11, scope: !4791)
!4817 = !DILocation(line: 884, column: 9, scope: !4815)
!4818 = !DILocation(line: 886, column: 32, scope: !4819)
!4819 = !DILexicalBlockFile(scope: !4791, file: !259, discriminator: 3)
!4820 = !DILocation(line: 886, column: 61, scope: !4819)
!4821 = !DILocation(line: 886, column: 58, scope: !4819)
!4822 = !DILocation(line: 886, column: 66, scope: !4819)
!4823 = !DILocation(line: 886, column: 22, scope: !4819)
!4824 = !DILocation(line: 886, column: 15, scope: !4819)
!4825 = !DILocation(line: 887, column: 11, scope: !4791)
!4826 = !DILocation(line: 888, column: 15, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4791, file: !259, line: 887, column: 11)
!4828 = !{i64 0, i64 8, !979, i64 8, i64 8, !768}
!4829 = !DILocation(line: 888, column: 9, scope: !4827)
!4830 = !DILocation(line: 889, column: 20, scope: !4791)
!4831 = !DILocation(line: 889, column: 18, scope: !4791)
!4832 = !DILocation(line: 889, column: 7, scope: !4791)
!4833 = !DILocation(line: 889, column: 38, scope: !4791)
!4834 = !DILocation(line: 889, column: 31, scope: !4791)
!4835 = !DILocation(line: 889, column: 48, scope: !4791)
!4836 = !DILocation(line: 890, column: 14, scope: !4791)
!4837 = !DILocation(line: 891, column: 5, scope: !4791)
!4838 = !DILocation(line: 894, column: 19, scope: !4794)
!4839 = !DILocation(line: 894, column: 25, scope: !4794)
!4840 = !DILocation(line: 894, column: 12, scope: !4794)
!4841 = !DILocation(line: 895, column: 23, scope: !4794)
!4842 = !DILocation(line: 895, column: 11, scope: !4794)
!4843 = !DILocation(line: 897, column: 26, scope: !4794)
!4844 = !DILocation(line: 897, column: 32, scope: !4794)
!4845 = !DILocation(line: 897, column: 9, scope: !4794)
!4846 = !DILocation(line: 899, column: 55, scope: !4794)
!4847 = !DILocation(line: 900, column: 46, scope: !4794)
!4848 = !DILocation(line: 901, column: 55, scope: !4794)
!4849 = !DILocation(line: 902, column: 55, scope: !4794)
!4850 = !DILocation(line: 898, column: 20, scope: !4794)
!4851 = !DILocation(line: 898, column: 12, scope: !4794)
!4852 = !DILocation(line: 904, column: 14, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4794, file: !259, line: 904, column: 9)
!4854 = !DILocation(line: 904, column: 9, scope: !4794)
!4855 = !DILocation(line: 906, column: 35, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !259, line: 905, column: 7)
!4857 = !DILocation(line: 906, column: 20, scope: !4856)
!4858 = !DILocation(line: 907, column: 17, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4856, file: !259, line: 907, column: 13)
!4860 = !DILocation(line: 907, column: 13, scope: !4856)
!4861 = !DILocation(line: 908, column: 11, scope: !4859)
!4862 = !DILocation(line: 220, column: 20, scope: !4680, inlinedAt: !4863)
!4863 = distinct !DILocation(line: 909, column: 27, scope: !4856)
!4864 = !DILocation(line: 222, column: 10, scope: !4680, inlinedAt: !4863)
!4865 = !DILocation(line: 909, column: 19, scope: !4856)
!4866 = !DILocation(line: 910, column: 69, scope: !4856)
!4867 = !DILocation(line: 912, column: 44, scope: !4856)
!4868 = !DILocation(line: 913, column: 44, scope: !4856)
!4869 = !DILocation(line: 910, column: 9, scope: !4856)
!4870 = !DILocation(line: 914, column: 7, scope: !4856)
!4871 = !DILocation(line: 916, column: 11, scope: !4794)
!4872 = !DILocation(line: 917, column: 5, scope: !4794)
!4873 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !259, file: !259, line: 928, type: !4874, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4876)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!88, !89, !85, !54}
!4876 = !{!4877, !4878, !4879}
!4877 = !DILocalVariable(name: "n", arg: 1, scope: !4873, file: !259, line: 928, type: !89)
!4878 = !DILocalVariable(name: "arg", arg: 2, scope: !4873, file: !259, line: 928, type: !85)
!4879 = !DILocalVariable(name: "argsize", arg: 3, scope: !4873, file: !259, line: 928, type: !54)
!4880 = !DILocation(line: 928, column: 21, scope: !4873)
!4881 = !DILocation(line: 928, column: 36, scope: !4873)
!4882 = !DILocation(line: 928, column: 48, scope: !4873)
!4883 = !DILocation(line: 930, column: 10, scope: !4873)
!4884 = !DILocation(line: 930, column: 3, scope: !4873)
!4885 = distinct !DISubprogram(name: "quotearg", scope: !259, file: !259, line: 934, type: !4886, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4888)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!88, !85}
!4888 = !{!4889}
!4889 = !DILocalVariable(name: "arg", arg: 1, scope: !4885, file: !259, line: 934, type: !85)
!4890 = !DILocation(line: 934, column: 23, scope: !4885)
!4891 = !DILocation(line: 922, column: 17, scope: !4770, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 936, column: 10, scope: !4885)
!4893 = !DILocation(line: 922, column: 32, scope: !4770, inlinedAt: !4892)
!4894 = !DILocation(line: 924, column: 10, scope: !4770, inlinedAt: !4892)
!4895 = !DILocation(line: 936, column: 3, scope: !4885)
!4896 = distinct !DISubprogram(name: "quotearg_mem", scope: !259, file: !259, line: 940, type: !4897, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4899)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!88, !85, !54}
!4899 = !{!4900, !4901}
!4900 = !DILocalVariable(name: "arg", arg: 1, scope: !4896, file: !259, line: 940, type: !85)
!4901 = !DILocalVariable(name: "argsize", arg: 2, scope: !4896, file: !259, line: 940, type: !54)
!4902 = !DILocation(line: 940, column: 27, scope: !4896)
!4903 = !DILocation(line: 940, column: 39, scope: !4896)
!4904 = !DILocation(line: 928, column: 21, scope: !4873, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 942, column: 10, scope: !4896)
!4906 = !DILocation(line: 928, column: 36, scope: !4873, inlinedAt: !4905)
!4907 = !DILocation(line: 928, column: 48, scope: !4873, inlinedAt: !4905)
!4908 = !DILocation(line: 930, column: 10, scope: !4873, inlinedAt: !4905)
!4909 = !DILocation(line: 942, column: 3, scope: !4896)
!4910 = distinct !DISubprogram(name: "quotearg_n_style", scope: !259, file: !259, line: 946, type: !4911, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4913)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!88, !89, !24, !85}
!4913 = !{!4914, !4915, !4916, !4917}
!4914 = !DILocalVariable(name: "n", arg: 1, scope: !4910, file: !259, line: 946, type: !89)
!4915 = !DILocalVariable(name: "s", arg: 2, scope: !4910, file: !259, line: 946, type: !24)
!4916 = !DILocalVariable(name: "arg", arg: 3, scope: !4910, file: !259, line: 946, type: !85)
!4917 = !DILocalVariable(name: "o", scope: !4910, file: !259, line: 948, type: !3481)
!4918 = !DILocalVariable(name: "o", scope: !4919, file: !259, line: 187, type: !266)
!4919 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !259, file: !259, line: 185, type: !4920, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4922)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!266, !24}
!4922 = !{!4923, !4918}
!4923 = !DILocalVariable(name: "style", arg: 1, scope: !4919, file: !259, line: 185, type: !24)
!4924 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4925 = !DILocation(line: 187, column: 26, scope: !4919, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 948, column: 36, scope: !4910)
!4927 = !DILocation(line: 946, column: 23, scope: !4910)
!4928 = !DILocation(line: 946, column: 45, scope: !4910)
!4929 = !DILocation(line: 946, column: 60, scope: !4910)
!4930 = !DILocation(line: 948, column: 3, scope: !4910)
!4931 = !DILocation(line: 948, column: 32, scope: !4910)
!4932 = !DILocation(line: 185, column: 48, scope: !4919, inlinedAt: !4926)
!4933 = !DILocation(line: 187, column: 3, scope: !4919, inlinedAt: !4926)
!4934 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4935 = !DILocation(line: 188, column: 13, scope: !4936, inlinedAt: !4926)
!4936 = distinct !DILexicalBlock(scope: !4919, file: !259, line: 188, column: 7)
!4937 = !DILocation(line: 188, column: 7, scope: !4919, inlinedAt: !4926)
!4938 = !DILocation(line: 189, column: 5, scope: !4936, inlinedAt: !4926)
!4939 = !{!4940}
!4940 = distinct !{!4940, !4941, !"quoting_options_from_style: argument 0"}
!4941 = distinct !{!4941, !"quoting_options_from_style"}
!4942 = !DILocation(line: 191, column: 10, scope: !4919, inlinedAt: !4926)
!4943 = !DILocation(line: 192, column: 1, scope: !4919, inlinedAt: !4926)
!4944 = !DILocation(line: 949, column: 10, scope: !4910)
!4945 = !DILocation(line: 950, column: 1, scope: !4910)
!4946 = !DILocation(line: 949, column: 3, scope: !4910)
!4947 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !259, file: !259, line: 953, type: !4948, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4950)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!88, !89, !24, !85, !54}
!4950 = !{!4951, !4952, !4953, !4954, !4955}
!4951 = !DILocalVariable(name: "n", arg: 1, scope: !4947, file: !259, line: 953, type: !89)
!4952 = !DILocalVariable(name: "s", arg: 2, scope: !4947, file: !259, line: 953, type: !24)
!4953 = !DILocalVariable(name: "arg", arg: 3, scope: !4947, file: !259, line: 954, type: !85)
!4954 = !DILocalVariable(name: "argsize", arg: 4, scope: !4947, file: !259, line: 954, type: !54)
!4955 = !DILocalVariable(name: "o", scope: !4947, file: !259, line: 956, type: !3481)
!4956 = !DILocation(line: 187, column: 26, scope: !4919, inlinedAt: !4957)
!4957 = distinct !DILocation(line: 956, column: 36, scope: !4947)
!4958 = !DILocation(line: 953, column: 27, scope: !4947)
!4959 = !DILocation(line: 953, column: 49, scope: !4947)
!4960 = !DILocation(line: 954, column: 35, scope: !4947)
!4961 = !DILocation(line: 954, column: 47, scope: !4947)
!4962 = !DILocation(line: 956, column: 3, scope: !4947)
!4963 = !DILocation(line: 956, column: 32, scope: !4947)
!4964 = !DILocation(line: 185, column: 48, scope: !4919, inlinedAt: !4957)
!4965 = !DILocation(line: 187, column: 3, scope: !4919, inlinedAt: !4957)
!4966 = !DILocation(line: 188, column: 13, scope: !4936, inlinedAt: !4957)
!4967 = !DILocation(line: 188, column: 7, scope: !4919, inlinedAt: !4957)
!4968 = !DILocation(line: 189, column: 5, scope: !4936, inlinedAt: !4957)
!4969 = !{!4970}
!4970 = distinct !{!4970, !4971, !"quoting_options_from_style: argument 0"}
!4971 = distinct !{!4971, !"quoting_options_from_style"}
!4972 = !DILocation(line: 191, column: 10, scope: !4919, inlinedAt: !4957)
!4973 = !DILocation(line: 192, column: 1, scope: !4919, inlinedAt: !4957)
!4974 = !DILocation(line: 957, column: 10, scope: !4947)
!4975 = !DILocation(line: 958, column: 1, scope: !4947)
!4976 = !DILocation(line: 957, column: 3, scope: !4947)
!4977 = distinct !DISubprogram(name: "quotearg_style", scope: !259, file: !259, line: 961, type: !4978, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4980)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!88, !24, !85}
!4980 = !{!4981, !4982}
!4981 = !DILocalVariable(name: "s", arg: 1, scope: !4977, file: !259, line: 961, type: !24)
!4982 = !DILocalVariable(name: "arg", arg: 2, scope: !4977, file: !259, line: 961, type: !85)
!4983 = !DILocation(line: 187, column: 26, scope: !4919, inlinedAt: !4984)
!4984 = distinct !DILocation(line: 948, column: 36, scope: !4910, inlinedAt: !4985)
!4985 = distinct !DILocation(line: 963, column: 10, scope: !4977)
!4986 = !DILocation(line: 961, column: 36, scope: !4977)
!4987 = !DILocation(line: 961, column: 51, scope: !4977)
!4988 = !DILocation(line: 946, column: 23, scope: !4910, inlinedAt: !4985)
!4989 = !DILocation(line: 946, column: 45, scope: !4910, inlinedAt: !4985)
!4990 = !DILocation(line: 946, column: 60, scope: !4910, inlinedAt: !4985)
!4991 = !DILocation(line: 948, column: 3, scope: !4910, inlinedAt: !4985)
!4992 = !DILocation(line: 948, column: 32, scope: !4910, inlinedAt: !4985)
!4993 = !DILocation(line: 185, column: 48, scope: !4919, inlinedAt: !4984)
!4994 = !DILocation(line: 187, column: 3, scope: !4919, inlinedAt: !4984)
!4995 = !DILocation(line: 188, column: 13, scope: !4936, inlinedAt: !4984)
!4996 = !DILocation(line: 188, column: 7, scope: !4919, inlinedAt: !4984)
!4997 = !DILocation(line: 189, column: 5, scope: !4936, inlinedAt: !4984)
!4998 = !{!4999}
!4999 = distinct !{!4999, !5000, !"quoting_options_from_style: argument 0"}
!5000 = distinct !{!5000, !"quoting_options_from_style"}
!5001 = !DILocation(line: 191, column: 10, scope: !4919, inlinedAt: !4984)
!5002 = !DILocation(line: 192, column: 1, scope: !4919, inlinedAt: !4984)
!5003 = !DILocation(line: 949, column: 10, scope: !4910, inlinedAt: !4985)
!5004 = !DILocation(line: 950, column: 1, scope: !4910, inlinedAt: !4985)
!5005 = !DILocation(line: 963, column: 3, scope: !4977)
!5006 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !259, file: !259, line: 967, type: !5007, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5009)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!88, !24, !85, !54}
!5009 = !{!5010, !5011, !5012}
!5010 = !DILocalVariable(name: "s", arg: 1, scope: !5006, file: !259, line: 967, type: !24)
!5011 = !DILocalVariable(name: "arg", arg: 2, scope: !5006, file: !259, line: 967, type: !85)
!5012 = !DILocalVariable(name: "argsize", arg: 3, scope: !5006, file: !259, line: 967, type: !54)
!5013 = !DILocation(line: 187, column: 26, scope: !4919, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 956, column: 36, scope: !4947, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 969, column: 10, scope: !5006)
!5016 = !DILocation(line: 967, column: 40, scope: !5006)
!5017 = !DILocation(line: 967, column: 55, scope: !5006)
!5018 = !DILocation(line: 967, column: 67, scope: !5006)
!5019 = !DILocation(line: 953, column: 27, scope: !4947, inlinedAt: !5015)
!5020 = !DILocation(line: 953, column: 49, scope: !4947, inlinedAt: !5015)
!5021 = !DILocation(line: 954, column: 35, scope: !4947, inlinedAt: !5015)
!5022 = !DILocation(line: 954, column: 47, scope: !4947, inlinedAt: !5015)
!5023 = !DILocation(line: 956, column: 3, scope: !4947, inlinedAt: !5015)
!5024 = !DILocation(line: 956, column: 32, scope: !4947, inlinedAt: !5015)
!5025 = !DILocation(line: 185, column: 48, scope: !4919, inlinedAt: !5014)
!5026 = !DILocation(line: 187, column: 3, scope: !4919, inlinedAt: !5014)
!5027 = !DILocation(line: 188, column: 13, scope: !4936, inlinedAt: !5014)
!5028 = !DILocation(line: 188, column: 7, scope: !4919, inlinedAt: !5014)
!5029 = !DILocation(line: 189, column: 5, scope: !4936, inlinedAt: !5014)
!5030 = !{!5031}
!5031 = distinct !{!5031, !5032, !"quoting_options_from_style: argument 0"}
!5032 = distinct !{!5032, !"quoting_options_from_style"}
!5033 = !DILocation(line: 191, column: 10, scope: !4919, inlinedAt: !5014)
!5034 = !DILocation(line: 192, column: 1, scope: !4919, inlinedAt: !5014)
!5035 = !DILocation(line: 957, column: 10, scope: !4947, inlinedAt: !5015)
!5036 = !DILocation(line: 958, column: 1, scope: !4947, inlinedAt: !5015)
!5037 = !DILocation(line: 969, column: 3, scope: !5006)
!5038 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !259, file: !259, line: 973, type: !5039, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5041)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!88, !85, !54, !87}
!5041 = !{!5042, !5043, !5044, !5045}
!5042 = !DILocalVariable(name: "arg", arg: 1, scope: !5038, file: !259, line: 973, type: !85)
!5043 = !DILocalVariable(name: "argsize", arg: 2, scope: !5038, file: !259, line: 973, type: !54)
!5044 = !DILocalVariable(name: "ch", arg: 3, scope: !5038, file: !259, line: 973, type: !87)
!5045 = !DILocalVariable(name: "options", scope: !5038, file: !259, line: 975, type: !266)
!5046 = !DILocation(line: 973, column: 32, scope: !5038)
!5047 = !DILocation(line: 973, column: 44, scope: !5038)
!5048 = !DILocation(line: 973, column: 58, scope: !5038)
!5049 = !DILocation(line: 975, column: 3, scope: !5038)
!5050 = !DILocation(line: 976, column: 13, scope: !5038)
!5051 = !{i64 0, i64 4, !959, i64 4, i64 4, !937, i64 8, i64 32, !959, i64 40, i64 8, !768, i64 48, i64 8, !768}
!5052 = !DILocation(line: 975, column: 26, scope: !5038)
!5053 = !DILocation(line: 144, column: 43, scope: !3504, inlinedAt: !5054)
!5054 = distinct !DILocation(line: 977, column: 3, scope: !5038)
!5055 = !DILocation(line: 144, column: 51, scope: !3504, inlinedAt: !5054)
!5056 = !DILocation(line: 144, column: 58, scope: !3504, inlinedAt: !5054)
!5057 = !DILocation(line: 146, column: 17, scope: !3504, inlinedAt: !5054)
!5058 = !DILocation(line: 148, column: 62, scope: !3522, inlinedAt: !5054)
!5059 = !DILocation(line: 148, column: 57, scope: !3522, inlinedAt: !5054)
!5060 = !DILocation(line: 147, column: 17, scope: !3504, inlinedAt: !5054)
!5061 = !DILocation(line: 149, column: 18, scope: !3504, inlinedAt: !5054)
!5062 = !DILocation(line: 149, column: 15, scope: !3504, inlinedAt: !5054)
!5063 = !DILocation(line: 149, column: 7, scope: !3504, inlinedAt: !5054)
!5064 = !DILocation(line: 150, column: 12, scope: !3504, inlinedAt: !5054)
!5065 = !DILocation(line: 150, column: 15, scope: !3504, inlinedAt: !5054)
!5066 = !DILocation(line: 150, column: 25, scope: !3504, inlinedAt: !5054)
!5067 = !DILocation(line: 150, column: 7, scope: !3504, inlinedAt: !5054)
!5068 = !DILocation(line: 151, column: 18, scope: !3504, inlinedAt: !5054)
!5069 = !DILocation(line: 151, column: 23, scope: !3504, inlinedAt: !5054)
!5070 = !DILocation(line: 151, column: 6, scope: !3504, inlinedAt: !5054)
!5071 = !DILocation(line: 978, column: 10, scope: !5038)
!5072 = !DILocation(line: 979, column: 1, scope: !5038)
!5073 = !DILocation(line: 978, column: 3, scope: !5038)
!5074 = distinct !DISubprogram(name: "quotearg_char", scope: !259, file: !259, line: 982, type: !5075, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!88, !85, !87}
!5077 = !{!5078, !5079}
!5078 = !DILocalVariable(name: "arg", arg: 1, scope: !5074, file: !259, line: 982, type: !85)
!5079 = !DILocalVariable(name: "ch", arg: 2, scope: !5074, file: !259, line: 982, type: !87)
!5080 = !DILocation(line: 982, column: 28, scope: !5074)
!5081 = !DILocation(line: 982, column: 38, scope: !5074)
!5082 = !DILocation(line: 973, column: 32, scope: !5038, inlinedAt: !5083)
!5083 = distinct !DILocation(line: 984, column: 10, scope: !5074)
!5084 = !DILocation(line: 973, column: 44, scope: !5038, inlinedAt: !5083)
!5085 = !DILocation(line: 973, column: 58, scope: !5038, inlinedAt: !5083)
!5086 = !DILocation(line: 975, column: 3, scope: !5038, inlinedAt: !5083)
!5087 = !DILocation(line: 976, column: 13, scope: !5038, inlinedAt: !5083)
!5088 = !DILocation(line: 975, column: 26, scope: !5038, inlinedAt: !5083)
!5089 = !DILocation(line: 144, column: 43, scope: !3504, inlinedAt: !5090)
!5090 = distinct !DILocation(line: 977, column: 3, scope: !5038, inlinedAt: !5083)
!5091 = !DILocation(line: 144, column: 51, scope: !3504, inlinedAt: !5090)
!5092 = !DILocation(line: 144, column: 58, scope: !3504, inlinedAt: !5090)
!5093 = !DILocation(line: 146, column: 17, scope: !3504, inlinedAt: !5090)
!5094 = !DILocation(line: 148, column: 62, scope: !3522, inlinedAt: !5090)
!5095 = !DILocation(line: 148, column: 57, scope: !3522, inlinedAt: !5090)
!5096 = !DILocation(line: 147, column: 17, scope: !3504, inlinedAt: !5090)
!5097 = !DILocation(line: 149, column: 18, scope: !3504, inlinedAt: !5090)
!5098 = !DILocation(line: 149, column: 15, scope: !3504, inlinedAt: !5090)
!5099 = !DILocation(line: 149, column: 7, scope: !3504, inlinedAt: !5090)
!5100 = !DILocation(line: 150, column: 12, scope: !3504, inlinedAt: !5090)
!5101 = !DILocation(line: 150, column: 15, scope: !3504, inlinedAt: !5090)
!5102 = !DILocation(line: 150, column: 25, scope: !3504, inlinedAt: !5090)
!5103 = !DILocation(line: 150, column: 7, scope: !3504, inlinedAt: !5090)
!5104 = !DILocation(line: 151, column: 18, scope: !3504, inlinedAt: !5090)
!5105 = !DILocation(line: 151, column: 23, scope: !3504, inlinedAt: !5090)
!5106 = !DILocation(line: 151, column: 6, scope: !3504, inlinedAt: !5090)
!5107 = !DILocation(line: 978, column: 10, scope: !5038, inlinedAt: !5083)
!5108 = !DILocation(line: 979, column: 1, scope: !5038, inlinedAt: !5083)
!5109 = !DILocation(line: 984, column: 3, scope: !5074)
!5110 = distinct !DISubprogram(name: "quotearg_colon", scope: !259, file: !259, line: 988, type: !4886, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5111)
!5111 = !{!5112}
!5112 = !DILocalVariable(name: "arg", arg: 1, scope: !5110, file: !259, line: 988, type: !85)
!5113 = !DILocation(line: 988, column: 29, scope: !5110)
!5114 = !DILocation(line: 982, column: 28, scope: !5074, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 990, column: 10, scope: !5110)
!5116 = !DILocation(line: 982, column: 38, scope: !5074, inlinedAt: !5115)
!5117 = !DILocation(line: 973, column: 32, scope: !5038, inlinedAt: !5118)
!5118 = distinct !DILocation(line: 984, column: 10, scope: !5074, inlinedAt: !5115)
!5119 = !DILocation(line: 973, column: 44, scope: !5038, inlinedAt: !5118)
!5120 = !DILocation(line: 973, column: 58, scope: !5038, inlinedAt: !5118)
!5121 = !DILocation(line: 975, column: 3, scope: !5038, inlinedAt: !5118)
!5122 = !DILocation(line: 976, column: 13, scope: !5038, inlinedAt: !5118)
!5123 = !DILocation(line: 975, column: 26, scope: !5038, inlinedAt: !5118)
!5124 = !DILocation(line: 144, column: 43, scope: !3504, inlinedAt: !5125)
!5125 = distinct !DILocation(line: 977, column: 3, scope: !5038, inlinedAt: !5118)
!5126 = !DILocation(line: 144, column: 51, scope: !3504, inlinedAt: !5125)
!5127 = !DILocation(line: 144, column: 58, scope: !3504, inlinedAt: !5125)
!5128 = !DILocation(line: 146, column: 17, scope: !3504, inlinedAt: !5125)
!5129 = !DILocation(line: 148, column: 57, scope: !3522, inlinedAt: !5125)
!5130 = !DILocation(line: 147, column: 17, scope: !3504, inlinedAt: !5125)
!5131 = !DILocation(line: 149, column: 7, scope: !3504, inlinedAt: !5125)
!5132 = !DILocation(line: 150, column: 12, scope: !3504, inlinedAt: !5125)
!5133 = !DILocation(line: 151, column: 6, scope: !3504, inlinedAt: !5125)
!5134 = !DILocation(line: 978, column: 10, scope: !5038, inlinedAt: !5118)
!5135 = !DILocation(line: 979, column: 1, scope: !5038, inlinedAt: !5118)
!5136 = !DILocation(line: 990, column: 3, scope: !5110)
!5137 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !259, file: !259, line: 994, type: !4897, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5138)
!5138 = !{!5139, !5140}
!5139 = !DILocalVariable(name: "arg", arg: 1, scope: !5137, file: !259, line: 994, type: !85)
!5140 = !DILocalVariable(name: "argsize", arg: 2, scope: !5137, file: !259, line: 994, type: !54)
!5141 = !DILocation(line: 994, column: 33, scope: !5137)
!5142 = !DILocation(line: 994, column: 45, scope: !5137)
!5143 = !DILocation(line: 973, column: 32, scope: !5038, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 996, column: 10, scope: !5137)
!5145 = !DILocation(line: 973, column: 44, scope: !5038, inlinedAt: !5144)
!5146 = !DILocation(line: 973, column: 58, scope: !5038, inlinedAt: !5144)
!5147 = !DILocation(line: 975, column: 3, scope: !5038, inlinedAt: !5144)
!5148 = !DILocation(line: 976, column: 13, scope: !5038, inlinedAt: !5144)
!5149 = !DILocation(line: 975, column: 26, scope: !5038, inlinedAt: !5144)
!5150 = !DILocation(line: 144, column: 43, scope: !3504, inlinedAt: !5151)
!5151 = distinct !DILocation(line: 977, column: 3, scope: !5038, inlinedAt: !5144)
!5152 = !DILocation(line: 144, column: 51, scope: !3504, inlinedAt: !5151)
!5153 = !DILocation(line: 144, column: 58, scope: !3504, inlinedAt: !5151)
!5154 = !DILocation(line: 146, column: 17, scope: !3504, inlinedAt: !5151)
!5155 = !DILocation(line: 148, column: 57, scope: !3522, inlinedAt: !5151)
!5156 = !DILocation(line: 147, column: 17, scope: !3504, inlinedAt: !5151)
!5157 = !DILocation(line: 149, column: 7, scope: !3504, inlinedAt: !5151)
!5158 = !DILocation(line: 150, column: 12, scope: !3504, inlinedAt: !5151)
!5159 = !DILocation(line: 151, column: 6, scope: !3504, inlinedAt: !5151)
!5160 = !DILocation(line: 978, column: 10, scope: !5038, inlinedAt: !5144)
!5161 = !DILocation(line: 979, column: 1, scope: !5038, inlinedAt: !5144)
!5162 = !DILocation(line: 996, column: 3, scope: !5137)
!5163 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !259, file: !259, line: 1000, type: !4911, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5164)
!5164 = !{!5165, !5166, !5167, !5168}
!5165 = !DILocalVariable(name: "n", arg: 1, scope: !5163, file: !259, line: 1000, type: !89)
!5166 = !DILocalVariable(name: "s", arg: 2, scope: !5163, file: !259, line: 1000, type: !24)
!5167 = !DILocalVariable(name: "arg", arg: 3, scope: !5163, file: !259, line: 1000, type: !85)
!5168 = !DILocalVariable(name: "options", scope: !5163, file: !259, line: 1002, type: !266)
!5169 = !DILocation(line: 187, column: 26, scope: !4919, inlinedAt: !5170)
!5170 = distinct !DILocation(line: 1003, column: 13, scope: !5163)
!5171 = !DILocation(line: 1000, column: 29, scope: !5163)
!5172 = !DILocation(line: 1000, column: 51, scope: !5163)
!5173 = !DILocation(line: 1000, column: 66, scope: !5163)
!5174 = !DILocation(line: 1002, column: 3, scope: !5163)
!5175 = !DILocation(line: 185, column: 48, scope: !4919, inlinedAt: !5170)
!5176 = !DILocation(line: 187, column: 3, scope: !4919, inlinedAt: !5170)
!5177 = !DILocation(line: 188, column: 13, scope: !4936, inlinedAt: !5170)
!5178 = !DILocation(line: 188, column: 7, scope: !4919, inlinedAt: !5170)
!5179 = !DILocation(line: 189, column: 5, scope: !4936, inlinedAt: !5170)
!5180 = !{!5181}
!5181 = distinct !{!5181, !5182, !"quoting_options_from_style: argument 0"}
!5182 = distinct !{!5182, !"quoting_options_from_style"}
!5183 = !DILocation(line: 191, column: 10, scope: !4919, inlinedAt: !5170)
!5184 = !DILocation(line: 192, column: 1, scope: !4919, inlinedAt: !5170)
!5185 = !DILocation(line: 1003, column: 13, scope: !5163)
!5186 = !DILocation(line: 1002, column: 26, scope: !5163)
!5187 = !DILocation(line: 144, column: 43, scope: !3504, inlinedAt: !5188)
!5188 = distinct !DILocation(line: 1004, column: 3, scope: !5163)
!5189 = !DILocation(line: 144, column: 51, scope: !3504, inlinedAt: !5188)
!5190 = !DILocation(line: 144, column: 58, scope: !3504, inlinedAt: !5188)
!5191 = !DILocation(line: 146, column: 17, scope: !3504, inlinedAt: !5188)
!5192 = !DILocation(line: 148, column: 57, scope: !3522, inlinedAt: !5188)
!5193 = !DILocation(line: 147, column: 17, scope: !3504, inlinedAt: !5188)
!5194 = !DILocation(line: 149, column: 7, scope: !3504, inlinedAt: !5188)
!5195 = !DILocation(line: 150, column: 12, scope: !3504, inlinedAt: !5188)
!5196 = !DILocation(line: 151, column: 6, scope: !3504, inlinedAt: !5188)
!5197 = !DILocation(line: 1005, column: 10, scope: !5163)
!5198 = !DILocation(line: 1006, column: 1, scope: !5163)
!5199 = !DILocation(line: 1005, column: 3, scope: !5163)
!5200 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !259, file: !259, line: 1009, type: !5201, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5203)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!88, !89, !85, !85, !85}
!5203 = !{!5204, !5205, !5206, !5207}
!5204 = !DILocalVariable(name: "n", arg: 1, scope: !5200, file: !259, line: 1009, type: !89)
!5205 = !DILocalVariable(name: "left_quote", arg: 2, scope: !5200, file: !259, line: 1009, type: !85)
!5206 = !DILocalVariable(name: "right_quote", arg: 3, scope: !5200, file: !259, line: 1010, type: !85)
!5207 = !DILocalVariable(name: "arg", arg: 4, scope: !5200, file: !259, line: 1010, type: !85)
!5208 = !DILocation(line: 1009, column: 24, scope: !5200)
!5209 = !DILocation(line: 1009, column: 39, scope: !5200)
!5210 = !DILocation(line: 1010, column: 32, scope: !5200)
!5211 = !DILocation(line: 1010, column: 57, scope: !5200)
!5212 = !DILocalVariable(name: "n", arg: 1, scope: !5213, file: !259, line: 1017, type: !89)
!5213 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !259, file: !259, line: 1017, type: !5214, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5216)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!88, !89, !85, !85, !85, !54}
!5216 = !{!5212, !5217, !5218, !5219, !5220, !5221}
!5217 = !DILocalVariable(name: "left_quote", arg: 2, scope: !5213, file: !259, line: 1017, type: !85)
!5218 = !DILocalVariable(name: "right_quote", arg: 3, scope: !5213, file: !259, line: 1018, type: !85)
!5219 = !DILocalVariable(name: "arg", arg: 4, scope: !5213, file: !259, line: 1019, type: !85)
!5220 = !DILocalVariable(name: "argsize", arg: 5, scope: !5213, file: !259, line: 1019, type: !54)
!5221 = !DILocalVariable(name: "o", scope: !5213, file: !259, line: 1021, type: !266)
!5222 = !DILocation(line: 1017, column: 28, scope: !5213, inlinedAt: !5223)
!5223 = distinct !DILocation(line: 1012, column: 10, scope: !5200)
!5224 = !DILocation(line: 1017, column: 43, scope: !5213, inlinedAt: !5223)
!5225 = !DILocation(line: 1018, column: 36, scope: !5213, inlinedAt: !5223)
!5226 = !DILocation(line: 1019, column: 36, scope: !5213, inlinedAt: !5223)
!5227 = !DILocation(line: 1019, column: 48, scope: !5213, inlinedAt: !5223)
!5228 = !DILocation(line: 1021, column: 3, scope: !5213, inlinedAt: !5223)
!5229 = !DILocation(line: 1021, column: 30, scope: !5213, inlinedAt: !5223)
!5230 = !DILocation(line: 1021, column: 26, scope: !5213, inlinedAt: !5223)
!5231 = !DILocation(line: 171, column: 45, scope: !3554, inlinedAt: !5232)
!5232 = distinct !DILocation(line: 1022, column: 3, scope: !5213, inlinedAt: !5223)
!5233 = !DILocation(line: 172, column: 33, scope: !3554, inlinedAt: !5232)
!5234 = !DILocation(line: 172, column: 57, scope: !3554, inlinedAt: !5232)
!5235 = !DILocation(line: 176, column: 6, scope: !3554, inlinedAt: !5232)
!5236 = !DILocation(line: 176, column: 12, scope: !3554, inlinedAt: !5232)
!5237 = !DILocation(line: 177, column: 8, scope: !3570, inlinedAt: !5232)
!5238 = !DILocation(line: 177, column: 23, scope: !3572, inlinedAt: !5232)
!5239 = !DILocation(line: 177, column: 19, scope: !3570, inlinedAt: !5232)
!5240 = !DILocation(line: 178, column: 5, scope: !3570, inlinedAt: !5232)
!5241 = !DILocation(line: 179, column: 6, scope: !3554, inlinedAt: !5232)
!5242 = !DILocation(line: 179, column: 17, scope: !3554, inlinedAt: !5232)
!5243 = !DILocation(line: 180, column: 6, scope: !3554, inlinedAt: !5232)
!5244 = !DILocation(line: 180, column: 18, scope: !3554, inlinedAt: !5232)
!5245 = !DILocation(line: 1023, column: 10, scope: !5213, inlinedAt: !5223)
!5246 = !DILocation(line: 1024, column: 1, scope: !5213, inlinedAt: !5223)
!5247 = !DILocation(line: 1012, column: 3, scope: !5200)
!5248 = !DILocation(line: 1017, column: 28, scope: !5213)
!5249 = !DILocation(line: 1017, column: 43, scope: !5213)
!5250 = !DILocation(line: 1018, column: 36, scope: !5213)
!5251 = !DILocation(line: 1019, column: 36, scope: !5213)
!5252 = !DILocation(line: 1019, column: 48, scope: !5213)
!5253 = !DILocation(line: 1021, column: 3, scope: !5213)
!5254 = !DILocation(line: 1021, column: 30, scope: !5213)
!5255 = !DILocation(line: 1021, column: 26, scope: !5213)
!5256 = !DILocation(line: 171, column: 45, scope: !3554, inlinedAt: !5257)
!5257 = distinct !DILocation(line: 1022, column: 3, scope: !5213)
!5258 = !DILocation(line: 172, column: 33, scope: !3554, inlinedAt: !5257)
!5259 = !DILocation(line: 172, column: 57, scope: !3554, inlinedAt: !5257)
!5260 = !DILocation(line: 176, column: 6, scope: !3554, inlinedAt: !5257)
!5261 = !DILocation(line: 176, column: 12, scope: !3554, inlinedAt: !5257)
!5262 = !DILocation(line: 177, column: 8, scope: !3570, inlinedAt: !5257)
!5263 = !DILocation(line: 177, column: 23, scope: !3572, inlinedAt: !5257)
!5264 = !DILocation(line: 177, column: 19, scope: !3570, inlinedAt: !5257)
!5265 = !DILocation(line: 178, column: 5, scope: !3570, inlinedAt: !5257)
!5266 = !DILocation(line: 179, column: 6, scope: !3554, inlinedAt: !5257)
!5267 = !DILocation(line: 179, column: 17, scope: !3554, inlinedAt: !5257)
!5268 = !DILocation(line: 180, column: 6, scope: !3554, inlinedAt: !5257)
!5269 = !DILocation(line: 180, column: 18, scope: !3554, inlinedAt: !5257)
!5270 = !DILocation(line: 1023, column: 10, scope: !5213)
!5271 = !DILocation(line: 1024, column: 1, scope: !5213)
!5272 = !DILocation(line: 1023, column: 3, scope: !5213)
!5273 = distinct !DISubprogram(name: "quotearg_custom", scope: !259, file: !259, line: 1027, type: !5274, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5276)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!88, !85, !85, !85}
!5276 = !{!5277, !5278, !5279}
!5277 = !DILocalVariable(name: "left_quote", arg: 1, scope: !5273, file: !259, line: 1027, type: !85)
!5278 = !DILocalVariable(name: "right_quote", arg: 2, scope: !5273, file: !259, line: 1027, type: !85)
!5279 = !DILocalVariable(name: "arg", arg: 3, scope: !5273, file: !259, line: 1028, type: !85)
!5280 = !DILocation(line: 1027, column: 30, scope: !5273)
!5281 = !DILocation(line: 1027, column: 54, scope: !5273)
!5282 = !DILocation(line: 1028, column: 30, scope: !5273)
!5283 = !DILocation(line: 1009, column: 24, scope: !5200, inlinedAt: !5284)
!5284 = distinct !DILocation(line: 1030, column: 10, scope: !5273)
!5285 = !DILocation(line: 1009, column: 39, scope: !5200, inlinedAt: !5284)
!5286 = !DILocation(line: 1010, column: 32, scope: !5200, inlinedAt: !5284)
!5287 = !DILocation(line: 1010, column: 57, scope: !5200, inlinedAt: !5284)
!5288 = !DILocation(line: 1017, column: 28, scope: !5213, inlinedAt: !5289)
!5289 = distinct !DILocation(line: 1012, column: 10, scope: !5200, inlinedAt: !5284)
!5290 = !DILocation(line: 1017, column: 43, scope: !5213, inlinedAt: !5289)
!5291 = !DILocation(line: 1018, column: 36, scope: !5213, inlinedAt: !5289)
!5292 = !DILocation(line: 1019, column: 36, scope: !5213, inlinedAt: !5289)
!5293 = !DILocation(line: 1019, column: 48, scope: !5213, inlinedAt: !5289)
!5294 = !DILocation(line: 1021, column: 3, scope: !5213, inlinedAt: !5289)
!5295 = !DILocation(line: 1021, column: 30, scope: !5213, inlinedAt: !5289)
!5296 = !DILocation(line: 1021, column: 26, scope: !5213, inlinedAt: !5289)
!5297 = !DILocation(line: 171, column: 45, scope: !3554, inlinedAt: !5298)
!5298 = distinct !DILocation(line: 1022, column: 3, scope: !5213, inlinedAt: !5289)
!5299 = !DILocation(line: 172, column: 33, scope: !3554, inlinedAt: !5298)
!5300 = !DILocation(line: 172, column: 57, scope: !3554, inlinedAt: !5298)
!5301 = !DILocation(line: 176, column: 6, scope: !3554, inlinedAt: !5298)
!5302 = !DILocation(line: 176, column: 12, scope: !3554, inlinedAt: !5298)
!5303 = !DILocation(line: 177, column: 8, scope: !3570, inlinedAt: !5298)
!5304 = !DILocation(line: 177, column: 23, scope: !3572, inlinedAt: !5298)
!5305 = !DILocation(line: 177, column: 19, scope: !3570, inlinedAt: !5298)
!5306 = !DILocation(line: 178, column: 5, scope: !3570, inlinedAt: !5298)
!5307 = !DILocation(line: 179, column: 6, scope: !3554, inlinedAt: !5298)
!5308 = !DILocation(line: 179, column: 17, scope: !3554, inlinedAt: !5298)
!5309 = !DILocation(line: 180, column: 6, scope: !3554, inlinedAt: !5298)
!5310 = !DILocation(line: 180, column: 18, scope: !3554, inlinedAt: !5298)
!5311 = !DILocation(line: 1023, column: 10, scope: !5213, inlinedAt: !5289)
!5312 = !DILocation(line: 1024, column: 1, scope: !5213, inlinedAt: !5289)
!5313 = !DILocation(line: 1030, column: 3, scope: !5273)
!5314 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !259, file: !259, line: 1034, type: !5315, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5317)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!88, !85, !85, !85, !54}
!5317 = !{!5318, !5319, !5320, !5321}
!5318 = !DILocalVariable(name: "left_quote", arg: 1, scope: !5314, file: !259, line: 1034, type: !85)
!5319 = !DILocalVariable(name: "right_quote", arg: 2, scope: !5314, file: !259, line: 1034, type: !85)
!5320 = !DILocalVariable(name: "arg", arg: 3, scope: !5314, file: !259, line: 1035, type: !85)
!5321 = !DILocalVariable(name: "argsize", arg: 4, scope: !5314, file: !259, line: 1035, type: !54)
!5322 = !DILocation(line: 1034, column: 34, scope: !5314)
!5323 = !DILocation(line: 1034, column: 58, scope: !5314)
!5324 = !DILocation(line: 1035, column: 34, scope: !5314)
!5325 = !DILocation(line: 1035, column: 46, scope: !5314)
!5326 = !DILocation(line: 1017, column: 28, scope: !5213, inlinedAt: !5327)
!5327 = distinct !DILocation(line: 1037, column: 10, scope: !5314)
!5328 = !DILocation(line: 1017, column: 43, scope: !5213, inlinedAt: !5327)
!5329 = !DILocation(line: 1018, column: 36, scope: !5213, inlinedAt: !5327)
!5330 = !DILocation(line: 1019, column: 36, scope: !5213, inlinedAt: !5327)
!5331 = !DILocation(line: 1019, column: 48, scope: !5213, inlinedAt: !5327)
!5332 = !DILocation(line: 1021, column: 3, scope: !5213, inlinedAt: !5327)
!5333 = !DILocation(line: 1021, column: 30, scope: !5213, inlinedAt: !5327)
!5334 = !DILocation(line: 1021, column: 26, scope: !5213, inlinedAt: !5327)
!5335 = !DILocation(line: 171, column: 45, scope: !3554, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 1022, column: 3, scope: !5213, inlinedAt: !5327)
!5337 = !DILocation(line: 172, column: 33, scope: !3554, inlinedAt: !5336)
!5338 = !DILocation(line: 172, column: 57, scope: !3554, inlinedAt: !5336)
!5339 = !DILocation(line: 176, column: 6, scope: !3554, inlinedAt: !5336)
!5340 = !DILocation(line: 176, column: 12, scope: !3554, inlinedAt: !5336)
!5341 = !DILocation(line: 177, column: 8, scope: !3570, inlinedAt: !5336)
!5342 = !DILocation(line: 177, column: 23, scope: !3572, inlinedAt: !5336)
!5343 = !DILocation(line: 177, column: 19, scope: !3570, inlinedAt: !5336)
!5344 = !DILocation(line: 178, column: 5, scope: !3570, inlinedAt: !5336)
!5345 = !DILocation(line: 179, column: 6, scope: !3554, inlinedAt: !5336)
!5346 = !DILocation(line: 179, column: 17, scope: !3554, inlinedAt: !5336)
!5347 = !DILocation(line: 180, column: 6, scope: !3554, inlinedAt: !5336)
!5348 = !DILocation(line: 180, column: 18, scope: !3554, inlinedAt: !5336)
!5349 = !DILocation(line: 1023, column: 10, scope: !5213, inlinedAt: !5327)
!5350 = !DILocation(line: 1024, column: 1, scope: !5213, inlinedAt: !5327)
!5351 = !DILocation(line: 1037, column: 3, scope: !5314)
!5352 = distinct !DISubprogram(name: "quote_n_mem", scope: !259, file: !259, line: 1052, type: !5353, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5355)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!85, !89, !85, !54}
!5355 = !{!5356, !5357, !5358}
!5356 = !DILocalVariable(name: "n", arg: 1, scope: !5352, file: !259, line: 1052, type: !89)
!5357 = !DILocalVariable(name: "arg", arg: 2, scope: !5352, file: !259, line: 1052, type: !85)
!5358 = !DILocalVariable(name: "argsize", arg: 3, scope: !5352, file: !259, line: 1052, type: !54)
!5359 = !DILocation(line: 1052, column: 18, scope: !5352)
!5360 = !DILocation(line: 1052, column: 33, scope: !5352)
!5361 = !DILocation(line: 1052, column: 45, scope: !5352)
!5362 = !DILocation(line: 1054, column: 10, scope: !5352)
!5363 = !DILocation(line: 1054, column: 3, scope: !5352)
!5364 = distinct !DISubprogram(name: "quote_mem", scope: !259, file: !259, line: 1058, type: !5365, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5367)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!85, !85, !54}
!5367 = !{!5368, !5369}
!5368 = !DILocalVariable(name: "arg", arg: 1, scope: !5364, file: !259, line: 1058, type: !85)
!5369 = !DILocalVariable(name: "argsize", arg: 2, scope: !5364, file: !259, line: 1058, type: !54)
!5370 = !DILocation(line: 1058, column: 24, scope: !5364)
!5371 = !DILocation(line: 1058, column: 36, scope: !5364)
!5372 = !DILocation(line: 1052, column: 18, scope: !5352, inlinedAt: !5373)
!5373 = distinct !DILocation(line: 1060, column: 10, scope: !5364)
!5374 = !DILocation(line: 1052, column: 33, scope: !5352, inlinedAt: !5373)
!5375 = !DILocation(line: 1052, column: 45, scope: !5352, inlinedAt: !5373)
!5376 = !DILocation(line: 1054, column: 10, scope: !5352, inlinedAt: !5373)
!5377 = !DILocation(line: 1060, column: 3, scope: !5364)
!5378 = distinct !DISubprogram(name: "quote_n", scope: !259, file: !259, line: 1064, type: !5379, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5381)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!85, !89, !85}
!5381 = !{!5382, !5383}
!5382 = !DILocalVariable(name: "n", arg: 1, scope: !5378, file: !259, line: 1064, type: !89)
!5383 = !DILocalVariable(name: "arg", arg: 2, scope: !5378, file: !259, line: 1064, type: !85)
!5384 = !DILocation(line: 1064, column: 14, scope: !5378)
!5385 = !DILocation(line: 1064, column: 29, scope: !5378)
!5386 = !DILocation(line: 1052, column: 18, scope: !5352, inlinedAt: !5387)
!5387 = distinct !DILocation(line: 1066, column: 10, scope: !5378)
!5388 = !DILocation(line: 1052, column: 33, scope: !5352, inlinedAt: !5387)
!5389 = !DILocation(line: 1052, column: 45, scope: !5352, inlinedAt: !5387)
!5390 = !DILocation(line: 1054, column: 10, scope: !5352, inlinedAt: !5387)
!5391 = !DILocation(line: 1066, column: 3, scope: !5378)
!5392 = distinct !DISubprogram(name: "quote", scope: !259, file: !259, line: 1070, type: !5393, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !5395)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!85, !85}
!5395 = !{!5396}
!5396 = !DILocalVariable(name: "arg", arg: 1, scope: !5392, file: !259, line: 1070, type: !85)
!5397 = !DILocation(line: 1070, column: 20, scope: !5392)
!5398 = !DILocation(line: 1064, column: 14, scope: !5378, inlinedAt: !5399)
!5399 = distinct !DILocation(line: 1072, column: 10, scope: !5392)
!5400 = !DILocation(line: 1064, column: 29, scope: !5378, inlinedAt: !5399)
!5401 = !DILocation(line: 1052, column: 18, scope: !5352, inlinedAt: !5402)
!5402 = distinct !DILocation(line: 1066, column: 10, scope: !5378, inlinedAt: !5399)
!5403 = !DILocation(line: 1052, column: 33, scope: !5352, inlinedAt: !5402)
!5404 = !DILocation(line: 1052, column: 45, scope: !5352, inlinedAt: !5402)
!5405 = !DILocation(line: 1054, column: 10, scope: !5352, inlinedAt: !5402)
!5406 = !DILocation(line: 1072, column: 3, scope: !5392)
!5407 = distinct !DISubprogram(name: "dup_safer", scope: !5408, file: !5408, line: 31, type: !2646, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !5409)
!5408 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5409 = !{!5410}
!5410 = !DILocalVariable(name: "fd", arg: 1, scope: !5407, file: !5408, line: 31, type: !89)
!5411 = !DILocation(line: 31, column: 16, scope: !5407)
!5412 = !DILocation(line: 33, column: 10, scope: !5407)
!5413 = !DILocation(line: 33, column: 3, scope: !5407)
!5414 = distinct !DISubprogram(name: "version_etc_arn", scope: !711, file: !711, line: 62, type: !5415, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !5458)
!5415 = !DISubroutineType(types: !5416)
!5416 = !{null, !5417, !85, !85, !85, !5457, !54}
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !5419)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !5420)
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5419, file: !838, line: 242, baseType: !89, size: 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5419, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5419, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5419, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5419, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5419, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5419, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5419, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5419, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5419, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5419, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5419, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5419, file: !838, line: 260, baseType: !5434, size: 64, offset: 768)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !5436)
!5436 = !{!5437, !5438, !5440}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5435, file: !838, line: 157, baseType: !5434, size: 64)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5435, file: !838, line: 158, baseType: !5439, size: 64, offset: 64)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5435, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5419, file: !838, line: 262, baseType: !5439, size: 64, offset: 832)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5419, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5419, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5419, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5419, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5419, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5419, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5419, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5419, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5419, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5419, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5419, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5419, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5419, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5419, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5419, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!5458 = !{!5459, !5460, !5461, !5462, !5463, !5464}
!5459 = !DILocalVariable(name: "stream", arg: 1, scope: !5414, file: !711, line: 62, type: !5417)
!5460 = !DILocalVariable(name: "command_name", arg: 2, scope: !5414, file: !711, line: 63, type: !85)
!5461 = !DILocalVariable(name: "package", arg: 3, scope: !5414, file: !711, line: 63, type: !85)
!5462 = !DILocalVariable(name: "version", arg: 4, scope: !5414, file: !711, line: 64, type: !85)
!5463 = !DILocalVariable(name: "authors", arg: 5, scope: !5414, file: !711, line: 65, type: !5457)
!5464 = !DILocalVariable(name: "n_authors", arg: 6, scope: !5414, file: !711, line: 65, type: !54)
!5465 = !DILocation(line: 62, column: 24, scope: !5414)
!5466 = !DILocation(line: 63, column: 30, scope: !5414)
!5467 = !DILocation(line: 63, column: 56, scope: !5414)
!5468 = !DILocation(line: 64, column: 30, scope: !5414)
!5469 = !DILocation(line: 65, column: 39, scope: !5414)
!5470 = !DILocation(line: 65, column: 55, scope: !5414)
!5471 = !DILocation(line: 67, column: 7, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5414, file: !711, line: 67, column: 7)
!5473 = !DILocation(line: 67, column: 7, scope: !5414)
!5474 = !DILocation(line: 68, column: 5, scope: !5472)
!5475 = !DILocation(line: 70, column: 5, scope: !5472)
!5476 = !DILocation(line: 84, column: 3, scope: !5414)
!5477 = !DILocation(line: 84, column: 3, scope: !5478)
!5478 = !DILexicalBlockFile(scope: !5414, file: !711, discriminator: 1)
!5479 = !DILocation(line: 86, column: 3, scope: !5414)
!5480 = !DILocation(line: 86, column: 3, scope: !5478)
!5481 = !DILocation(line: 95, column: 3, scope: !5414)
!5482 = !DILocation(line: 99, column: 7, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5414, file: !711, line: 96, column: 5)
!5484 = !DILocation(line: 102, column: 7, scope: !5483)
!5485 = !DILocation(line: 102, column: 7, scope: !5486)
!5486 = !DILexicalBlockFile(scope: !5483, file: !711, discriminator: 1)
!5487 = !DILocation(line: 103, column: 7, scope: !5483)
!5488 = !DILocation(line: 106, column: 7, scope: !5483)
!5489 = !DILocation(line: 106, column: 7, scope: !5486)
!5490 = !DILocation(line: 107, column: 7, scope: !5483)
!5491 = !DILocation(line: 110, column: 7, scope: !5483)
!5492 = !DILocation(line: 110, column: 7, scope: !5486)
!5493 = !DILocation(line: 112, column: 7, scope: !5483)
!5494 = !DILocation(line: 117, column: 7, scope: !5483)
!5495 = !DILocation(line: 117, column: 7, scope: !5486)
!5496 = !DILocation(line: 119, column: 7, scope: !5483)
!5497 = !DILocation(line: 124, column: 7, scope: !5483)
!5498 = !DILocation(line: 124, column: 7, scope: !5486)
!5499 = !DILocation(line: 126, column: 7, scope: !5483)
!5500 = !DILocation(line: 131, column: 7, scope: !5483)
!5501 = !DILocation(line: 131, column: 7, scope: !5486)
!5502 = !DILocation(line: 134, column: 7, scope: !5483)
!5503 = !DILocation(line: 139, column: 7, scope: !5483)
!5504 = !DILocation(line: 139, column: 7, scope: !5486)
!5505 = !DILocation(line: 142, column: 7, scope: !5483)
!5506 = !DILocation(line: 147, column: 7, scope: !5483)
!5507 = !DILocation(line: 147, column: 7, scope: !5486)
!5508 = !DILocation(line: 151, column: 7, scope: !5483)
!5509 = !DILocation(line: 156, column: 7, scope: !5483)
!5510 = !DILocation(line: 156, column: 7, scope: !5486)
!5511 = !DILocation(line: 160, column: 7, scope: !5483)
!5512 = !DILocation(line: 167, column: 7, scope: !5483)
!5513 = !DILocation(line: 167, column: 7, scope: !5486)
!5514 = !DILocation(line: 171, column: 7, scope: !5483)
!5515 = !DILocation(line: 173, column: 1, scope: !5414)
!5516 = distinct !DISubprogram(name: "version_etc_ar", scope: !711, file: !711, line: 180, type: !5517, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !5519)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{null, !5417, !85, !85, !85, !5457}
!5519 = !{!5520, !5521, !5522, !5523, !5524, !5525}
!5520 = !DILocalVariable(name: "stream", arg: 1, scope: !5516, file: !711, line: 180, type: !5417)
!5521 = !DILocalVariable(name: "command_name", arg: 2, scope: !5516, file: !711, line: 181, type: !85)
!5522 = !DILocalVariable(name: "package", arg: 3, scope: !5516, file: !711, line: 181, type: !85)
!5523 = !DILocalVariable(name: "version", arg: 4, scope: !5516, file: !711, line: 182, type: !85)
!5524 = !DILocalVariable(name: "authors", arg: 5, scope: !5516, file: !711, line: 182, type: !5457)
!5525 = !DILocalVariable(name: "n_authors", scope: !5516, file: !711, line: 184, type: !54)
!5526 = !DILocation(line: 180, column: 23, scope: !5516)
!5527 = !DILocation(line: 181, column: 29, scope: !5516)
!5528 = !DILocation(line: 181, column: 55, scope: !5516)
!5529 = !DILocation(line: 182, column: 29, scope: !5516)
!5530 = !DILocation(line: 182, column: 59, scope: !5516)
!5531 = !DILocation(line: 184, column: 10, scope: !5516)
!5532 = !DILocation(line: 186, column: 8, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5516, file: !711, line: 186, column: 3)
!5534 = !DILocation(line: 186, column: 23, scope: !5535)
!5535 = !DILexicalBlockFile(scope: !5536, file: !711, discriminator: 1)
!5536 = distinct !DILexicalBlock(scope: !5533, file: !711, line: 186, column: 3)
!5537 = !DILocation(line: 186, column: 3, scope: !5538)
!5538 = !DILexicalBlockFile(scope: !5533, file: !711, discriminator: 1)
!5539 = !DILocation(line: 186, column: 52, scope: !5540)
!5540 = !DILexicalBlockFile(scope: !5536, file: !711, discriminator: 3)
!5541 = distinct !{!5541, !5542, !5543}
!5542 = !DILocation(line: 186, column: 3, scope: !5533)
!5543 = !DILocation(line: 187, column: 5, scope: !5533)
!5544 = !DILocation(line: 188, column: 3, scope: !5516)
!5545 = !DILocation(line: 189, column: 1, scope: !5516)
!5546 = distinct !DISubprogram(name: "version_etc_va", scope: !711, file: !711, line: 196, type: !5547, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !5556)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{null, !5417, !85, !85, !85, !5549}
!5549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5550, size: 64)
!5550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !708, line: 189, size: 192, elements: !5551)
!5551 = !{!5552, !5553, !5554, !5555}
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5550, file: !708, line: 189, baseType: !272, size: 32)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5550, file: !708, line: 189, baseType: !272, size: 32, offset: 32)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5550, file: !708, line: 189, baseType: !52, size: 64, offset: 64)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5550, file: !708, line: 189, baseType: !52, size: 64, offset: 128)
!5556 = !{!5557, !5558, !5559, !5560, !5561, !5562, !5563}
!5557 = !DILocalVariable(name: "stream", arg: 1, scope: !5546, file: !711, line: 196, type: !5417)
!5558 = !DILocalVariable(name: "command_name", arg: 2, scope: !5546, file: !711, line: 197, type: !85)
!5559 = !DILocalVariable(name: "package", arg: 3, scope: !5546, file: !711, line: 197, type: !85)
!5560 = !DILocalVariable(name: "version", arg: 4, scope: !5546, file: !711, line: 198, type: !85)
!5561 = !DILocalVariable(name: "authors", arg: 5, scope: !5546, file: !711, line: 198, type: !5549)
!5562 = !DILocalVariable(name: "n_authors", scope: !5546, file: !711, line: 200, type: !54)
!5563 = !DILocalVariable(name: "authtab", scope: !5546, file: !711, line: 201, type: !5564)
!5564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 640, elements: !262)
!5565 = !DILocation(line: 196, column: 23, scope: !5546)
!5566 = !DILocation(line: 197, column: 29, scope: !5546)
!5567 = !DILocation(line: 197, column: 55, scope: !5546)
!5568 = !DILocation(line: 198, column: 29, scope: !5546)
!5569 = !DILocation(line: 198, column: 46, scope: !5546)
!5570 = !DILocation(line: 201, column: 3, scope: !5546)
!5571 = !DILocation(line: 201, column: 15, scope: !5546)
!5572 = !DILocation(line: 200, column: 10, scope: !5546)
!5573 = !DILocation(line: 205, column: 35, scope: !5574)
!5574 = !DILexicalBlockFile(scope: !5575, file: !711, discriminator: 1)
!5575 = distinct !DILexicalBlock(scope: !5576, file: !711, line: 203, column: 3)
!5576 = distinct !DILexicalBlock(scope: !5546, file: !711, line: 203, column: 3)
!5577 = !DILocation(line: 205, column: 35, scope: !5578)
!5578 = !DILexicalBlockFile(scope: !5575, file: !711, discriminator: 2)
!5579 = !DILocation(line: 205, column: 35, scope: !5580)
!5580 = !DILexicalBlockFile(scope: !5575, file: !711, discriminator: 3)
!5581 = !DILocation(line: 205, column: 35, scope: !5582)
!5582 = !DILexicalBlockFile(scope: !5575, file: !711, discriminator: 4)
!5583 = !DILocation(line: 205, column: 14, scope: !5582)
!5584 = !DILocation(line: 205, column: 33, scope: !5582)
!5585 = !DILocation(line: 205, column: 67, scope: !5582)
!5586 = !DILocation(line: 203, column: 3, scope: !5587)
!5587 = !DILexicalBlockFile(scope: !5576, file: !711, discriminator: 1)
!5588 = !DILocation(line: 208, column: 3, scope: !5546)
!5589 = !DILocation(line: 210, column: 1, scope: !5546)
!5590 = distinct !DISubprogram(name: "version_etc", scope: !711, file: !711, line: 227, type: !5591, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !5593)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{null, !5417, !85, !85, !85, null}
!5593 = !{!5594, !5595, !5596, !5597, !5598}
!5594 = !DILocalVariable(name: "stream", arg: 1, scope: !5590, file: !711, line: 227, type: !5417)
!5595 = !DILocalVariable(name: "command_name", arg: 2, scope: !5590, file: !711, line: 228, type: !85)
!5596 = !DILocalVariable(name: "package", arg: 3, scope: !5590, file: !711, line: 228, type: !85)
!5597 = !DILocalVariable(name: "version", arg: 4, scope: !5590, file: !711, line: 229, type: !85)
!5598 = !DILocalVariable(name: "authors", scope: !5590, file: !711, line: 231, type: !5599)
!5599 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !836, line: 80, baseType: !5600)
!5600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !320, line: 50, baseType: !5601)
!5601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !708, line: 231, baseType: !5602)
!5602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5550, size: 192, elements: !329)
!5603 = !DILocation(line: 227, column: 20, scope: !5590)
!5604 = !DILocation(line: 228, column: 26, scope: !5590)
!5605 = !DILocation(line: 228, column: 52, scope: !5590)
!5606 = !DILocation(line: 229, column: 26, scope: !5590)
!5607 = !DILocation(line: 231, column: 3, scope: !5590)
!5608 = !DILocation(line: 231, column: 11, scope: !5590)
!5609 = !DILocation(line: 233, column: 3, scope: !5590)
!5610 = !DILocation(line: 234, column: 3, scope: !5590)
!5611 = !DILocation(line: 235, column: 3, scope: !5590)
!5612 = !DILocation(line: 236, column: 1, scope: !5590)
!5613 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !711, file: !711, line: 239, type: !1938, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !221)
!5614 = !DILocation(line: 245, column: 3, scope: !5613)
!5615 = !DILocation(line: 245, column: 3, scope: !5616)
!5616 = !DILexicalBlockFile(scope: !5613, file: !711, discriminator: 1)
!5617 = !DILocation(line: 251, column: 3, scope: !5613)
!5618 = !DILocation(line: 251, column: 3, scope: !5616)
!5619 = !DILocation(line: 256, column: 3, scope: !5613)
!5620 = !DILocation(line: 256, column: 3, scope: !5616)
!5621 = !DILocation(line: 258, column: 1, scope: !5613)
!5622 = distinct !DISubprogram(name: "xnmalloc", scope: !48, file: !48, line: 105, type: !5623, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5625)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!52, !54, !54}
!5625 = !{!5626, !5627}
!5626 = !DILocalVariable(name: "n", arg: 1, scope: !5622, file: !48, line: 105, type: !54)
!5627 = !DILocalVariable(name: "s", arg: 2, scope: !5622, file: !48, line: 105, type: !54)
!5628 = !DILocation(line: 105, column: 18, scope: !5622)
!5629 = !DILocation(line: 105, column: 28, scope: !5622)
!5630 = !DILocation(line: 107, column: 7, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5622, file: !48, line: 107, column: 7)
!5632 = !DILocation(line: 107, column: 7, scope: !5622)
!5633 = !DILocation(line: 108, column: 5, scope: !5631)
!5634 = !DILocation(line: 109, column: 21, scope: !5622)
!5635 = !DILocalVariable(name: "n", arg: 1, scope: !5636, file: !5637, line: 39, type: !54)
!5636 = distinct !DISubprogram(name: "xmalloc", scope: !5637, file: !5637, line: 39, type: !5638, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5640)
!5637 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!52, !54}
!5640 = !{!5635, !5641}
!5641 = !DILocalVariable(name: "p", scope: !5636, file: !5637, line: 41, type: !52)
!5642 = !DILocation(line: 39, column: 17, scope: !5636, inlinedAt: !5643)
!5643 = distinct !DILocation(line: 109, column: 10, scope: !5622)
!5644 = !DILocation(line: 41, column: 13, scope: !5636, inlinedAt: !5643)
!5645 = !DILocation(line: 41, column: 9, scope: !5636, inlinedAt: !5643)
!5646 = !DILocation(line: 42, column: 8, scope: !5647, inlinedAt: !5643)
!5647 = distinct !DILexicalBlock(scope: !5636, file: !5637, line: 42, column: 7)
!5648 = !DILocation(line: 42, column: 15, scope: !5649, inlinedAt: !5643)
!5649 = !DILexicalBlockFile(scope: !5647, file: !5637, discriminator: 1)
!5650 = !DILocation(line: 42, column: 10, scope: !5647, inlinedAt: !5643)
!5651 = !DILocation(line: 43, column: 5, scope: !5647, inlinedAt: !5643)
!5652 = !DILocation(line: 109, column: 3, scope: !5622)
!5653 = !DILocation(line: 39, column: 17, scope: !5636)
!5654 = !DILocation(line: 41, column: 13, scope: !5636)
!5655 = !DILocation(line: 41, column: 9, scope: !5636)
!5656 = !DILocation(line: 42, column: 8, scope: !5647)
!5657 = !DILocation(line: 42, column: 15, scope: !5649)
!5658 = !DILocation(line: 42, column: 10, scope: !5647)
!5659 = !DILocation(line: 43, column: 5, scope: !5647)
!5660 = !DILocation(line: 44, column: 3, scope: !5636)
!5661 = distinct !DISubprogram(name: "xnrealloc", scope: !48, file: !48, line: 118, type: !5662, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5664)
!5662 = !DISubroutineType(types: !5663)
!5663 = !{!52, !52, !54, !54}
!5664 = !{!5665, !5666, !5667}
!5665 = !DILocalVariable(name: "p", arg: 1, scope: !5661, file: !48, line: 118, type: !52)
!5666 = !DILocalVariable(name: "n", arg: 2, scope: !5661, file: !48, line: 118, type: !54)
!5667 = !DILocalVariable(name: "s", arg: 3, scope: !5661, file: !48, line: 118, type: !54)
!5668 = !DILocation(line: 118, column: 18, scope: !5661)
!5669 = !DILocation(line: 118, column: 28, scope: !5661)
!5670 = !DILocation(line: 118, column: 38, scope: !5661)
!5671 = !DILocation(line: 120, column: 7, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5661, file: !48, line: 120, column: 7)
!5673 = !DILocation(line: 120, column: 7, scope: !5661)
!5674 = !DILocation(line: 121, column: 5, scope: !5672)
!5675 = !DILocation(line: 122, column: 25, scope: !5661)
!5676 = !DILocalVariable(name: "p", arg: 1, scope: !5677, file: !5637, line: 51, type: !52)
!5677 = distinct !DISubprogram(name: "xrealloc", scope: !5637, file: !5637, line: 51, type: !5678, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5680)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{!52, !52, !54}
!5680 = !{!5676, !5681}
!5681 = !DILocalVariable(name: "n", arg: 2, scope: !5677, file: !5637, line: 51, type: !54)
!5682 = !DILocation(line: 51, column: 17, scope: !5677, inlinedAt: !5683)
!5683 = distinct !DILocation(line: 122, column: 10, scope: !5661)
!5684 = !DILocation(line: 51, column: 27, scope: !5677, inlinedAt: !5683)
!5685 = !DILocation(line: 53, column: 8, scope: !5686, inlinedAt: !5683)
!5686 = distinct !DILexicalBlock(scope: !5677, file: !5637, line: 53, column: 7)
!5687 = !DILocation(line: 53, column: 13, scope: !5688, inlinedAt: !5683)
!5688 = !DILexicalBlockFile(scope: !5686, file: !5637, discriminator: 1)
!5689 = !DILocation(line: 53, column: 10, scope: !5686, inlinedAt: !5683)
!5690 = !DILocation(line: 57, column: 7, scope: !5691, inlinedAt: !5683)
!5691 = distinct !DILexicalBlock(scope: !5686, file: !5637, line: 54, column: 5)
!5692 = !DILocation(line: 58, column: 7, scope: !5691, inlinedAt: !5683)
!5693 = !DILocation(line: 61, column: 7, scope: !5677, inlinedAt: !5683)
!5694 = !DILocation(line: 62, column: 8, scope: !5695, inlinedAt: !5683)
!5695 = distinct !DILexicalBlock(scope: !5677, file: !5637, line: 62, column: 7)
!5696 = !DILocation(line: 62, column: 13, scope: !5697, inlinedAt: !5683)
!5697 = !DILexicalBlockFile(scope: !5695, file: !5637, discriminator: 1)
!5698 = !DILocation(line: 62, column: 10, scope: !5695, inlinedAt: !5683)
!5699 = !DILocation(line: 63, column: 5, scope: !5695, inlinedAt: !5683)
!5700 = !DILocation(line: 122, column: 3, scope: !5661)
!5701 = !DILocation(line: 51, column: 17, scope: !5677)
!5702 = !DILocation(line: 51, column: 27, scope: !5677)
!5703 = !DILocation(line: 53, column: 8, scope: !5686)
!5704 = !DILocation(line: 53, column: 13, scope: !5688)
!5705 = !DILocation(line: 53, column: 10, scope: !5686)
!5706 = !DILocation(line: 57, column: 7, scope: !5691)
!5707 = !DILocation(line: 58, column: 7, scope: !5691)
!5708 = !DILocation(line: 61, column: 7, scope: !5677)
!5709 = !DILocation(line: 62, column: 8, scope: !5695)
!5710 = !DILocation(line: 62, column: 13, scope: !5697)
!5711 = !DILocation(line: 62, column: 10, scope: !5695)
!5712 = !DILocation(line: 63, column: 5, scope: !5695)
!5713 = !DILocation(line: 65, column: 1, scope: !5677)
!5714 = !DILocation(line: 180, column: 19, scope: !719)
!5715 = !DILocation(line: 180, column: 30, scope: !719)
!5716 = !DILocation(line: 180, column: 41, scope: !719)
!5717 = !DILocation(line: 182, column: 14, scope: !719)
!5718 = !DILocation(line: 182, column: 10, scope: !719)
!5719 = !DILocation(line: 184, column: 9, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !719, file: !48, line: 184, column: 7)
!5721 = !DILocation(line: 184, column: 7, scope: !719)
!5722 = !DILocation(line: 186, column: 13, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5724, file: !48, line: 186, column: 11)
!5724 = distinct !DILexicalBlock(scope: !5720, file: !48, line: 185, column: 5)
!5725 = !DILocation(line: 186, column: 11, scope: !5724)
!5726 = !DILocation(line: 194, column: 30, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5723, file: !48, line: 187, column: 9)
!5728 = !DILocation(line: 195, column: 16, scope: !5727)
!5729 = !DILocation(line: 195, column: 13, scope: !5727)
!5730 = !DILocation(line: 196, column: 9, scope: !5727)
!5731 = !DILocation(line: 204, column: 69, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !48, line: 204, column: 11)
!5733 = distinct !DILexicalBlock(scope: !5720, file: !48, line: 199, column: 5)
!5734 = !DILocation(line: 205, column: 11, scope: !5732)
!5735 = !DILocation(line: 204, column: 11, scope: !5733)
!5736 = !DILocation(line: 206, column: 9, scope: !5732)
!5737 = !DILocation(line: 210, column: 7, scope: !719)
!5738 = !DILocation(line: 211, column: 25, scope: !719)
!5739 = !DILocation(line: 51, column: 17, scope: !5677, inlinedAt: !5740)
!5740 = distinct !DILocation(line: 211, column: 10, scope: !719)
!5741 = !DILocation(line: 51, column: 27, scope: !5677, inlinedAt: !5740)
!5742 = !DILocation(line: 53, column: 10, scope: !5686, inlinedAt: !5740)
!5743 = !DILocation(line: 207, column: 14, scope: !5733)
!5744 = !DILocation(line: 207, column: 18, scope: !5733)
!5745 = !DILocation(line: 207, column: 9, scope: !5733)
!5746 = !DILocation(line: 53, column: 8, scope: !5686, inlinedAt: !5740)
!5747 = !DILocation(line: 57, column: 7, scope: !5691, inlinedAt: !5740)
!5748 = !DILocation(line: 58, column: 7, scope: !5691, inlinedAt: !5740)
!5749 = !DILocation(line: 61, column: 7, scope: !5677, inlinedAt: !5740)
!5750 = !DILocation(line: 62, column: 8, scope: !5695, inlinedAt: !5740)
!5751 = !DILocation(line: 62, column: 13, scope: !5697, inlinedAt: !5740)
!5752 = !DILocation(line: 62, column: 10, scope: !5695, inlinedAt: !5740)
!5753 = !DILocation(line: 63, column: 5, scope: !5695, inlinedAt: !5740)
!5754 = !DILocation(line: 211, column: 3, scope: !719)
!5755 = distinct !DISubprogram(name: "xcharalloc", scope: !48, file: !48, line: 220, type: !4681, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5756)
!5756 = !{!5757}
!5757 = !DILocalVariable(name: "n", arg: 1, scope: !5755, file: !48, line: 220, type: !54)
!5758 = !DILocation(line: 220, column: 20, scope: !5755)
!5759 = !DILocation(line: 39, column: 17, scope: !5636, inlinedAt: !5760)
!5760 = distinct !DILocation(line: 222, column: 10, scope: !5755)
!5761 = !DILocation(line: 41, column: 13, scope: !5636, inlinedAt: !5760)
!5762 = !DILocation(line: 41, column: 9, scope: !5636, inlinedAt: !5760)
!5763 = !DILocation(line: 42, column: 8, scope: !5647, inlinedAt: !5760)
!5764 = !DILocation(line: 42, column: 15, scope: !5649, inlinedAt: !5760)
!5765 = !DILocation(line: 42, column: 10, scope: !5647, inlinedAt: !5760)
!5766 = !DILocation(line: 43, column: 5, scope: !5647, inlinedAt: !5760)
!5767 = !DILocation(line: 222, column: 3, scope: !5755)
!5768 = distinct !DISubprogram(name: "x2realloc", scope: !5637, file: !5637, line: 74, type: !5769, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5771)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!52, !52, !53}
!5771 = !{!5772, !5773}
!5772 = !DILocalVariable(name: "p", arg: 1, scope: !5768, file: !5637, line: 74, type: !52)
!5773 = !DILocalVariable(name: "pn", arg: 2, scope: !5768, file: !5637, line: 74, type: !53)
!5774 = !DILocation(line: 74, column: 18, scope: !5768)
!5775 = !DILocation(line: 74, column: 29, scope: !5768)
!5776 = !DILocation(line: 180, column: 19, scope: !719, inlinedAt: !5777)
!5777 = distinct !DILocation(line: 76, column: 10, scope: !5768)
!5778 = !DILocation(line: 180, column: 30, scope: !719, inlinedAt: !5777)
!5779 = !DILocation(line: 180, column: 41, scope: !719, inlinedAt: !5777)
!5780 = !DILocation(line: 182, column: 14, scope: !719, inlinedAt: !5777)
!5781 = !DILocation(line: 182, column: 10, scope: !719, inlinedAt: !5777)
!5782 = !DILocation(line: 184, column: 9, scope: !5720, inlinedAt: !5777)
!5783 = !DILocation(line: 184, column: 7, scope: !719, inlinedAt: !5777)
!5784 = !DILocation(line: 186, column: 13, scope: !5723, inlinedAt: !5777)
!5785 = !DILocation(line: 186, column: 11, scope: !5724, inlinedAt: !5777)
!5786 = !DILocation(line: 210, column: 7, scope: !719, inlinedAt: !5777)
!5787 = !DILocation(line: 51, column: 17, scope: !5677, inlinedAt: !5788)
!5788 = distinct !DILocation(line: 211, column: 10, scope: !719, inlinedAt: !5777)
!5789 = !DILocation(line: 51, column: 27, scope: !5677, inlinedAt: !5788)
!5790 = !DILocation(line: 53, column: 10, scope: !5686, inlinedAt: !5788)
!5791 = !DILocation(line: 205, column: 11, scope: !5732, inlinedAt: !5777)
!5792 = !DILocation(line: 204, column: 11, scope: !5733, inlinedAt: !5777)
!5793 = !DILocation(line: 206, column: 9, scope: !5732, inlinedAt: !5777)
!5794 = !DILocation(line: 207, column: 14, scope: !5733, inlinedAt: !5777)
!5795 = !DILocation(line: 207, column: 18, scope: !5733, inlinedAt: !5777)
!5796 = !DILocation(line: 207, column: 9, scope: !5733, inlinedAt: !5777)
!5797 = !DILocation(line: 53, column: 8, scope: !5686, inlinedAt: !5788)
!5798 = !DILocation(line: 57, column: 7, scope: !5691, inlinedAt: !5788)
!5799 = !DILocation(line: 58, column: 7, scope: !5691, inlinedAt: !5788)
!5800 = !DILocation(line: 61, column: 7, scope: !5677, inlinedAt: !5788)
!5801 = !DILocation(line: 62, column: 8, scope: !5695, inlinedAt: !5788)
!5802 = !DILocation(line: 62, column: 13, scope: !5697, inlinedAt: !5788)
!5803 = !DILocation(line: 62, column: 10, scope: !5695, inlinedAt: !5788)
!5804 = !DILocation(line: 63, column: 5, scope: !5695, inlinedAt: !5788)
!5805 = !DILocation(line: 76, column: 3, scope: !5768)
!5806 = distinct !DISubprogram(name: "xzalloc", scope: !5637, file: !5637, line: 84, type: !5638, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5807)
!5807 = !{!5808}
!5808 = !DILocalVariable(name: "s", arg: 1, scope: !5806, file: !5637, line: 84, type: !54)
!5809 = !DILocation(line: 84, column: 17, scope: !5806)
!5810 = !DILocation(line: 39, column: 17, scope: !5636, inlinedAt: !5811)
!5811 = distinct !DILocation(line: 86, column: 18, scope: !5806)
!5812 = !DILocation(line: 41, column: 13, scope: !5636, inlinedAt: !5811)
!5813 = !DILocation(line: 41, column: 9, scope: !5636, inlinedAt: !5811)
!5814 = !DILocation(line: 42, column: 8, scope: !5647, inlinedAt: !5811)
!5815 = !DILocation(line: 42, column: 15, scope: !5649, inlinedAt: !5811)
!5816 = !DILocation(line: 42, column: 10, scope: !5647, inlinedAt: !5811)
!5817 = !DILocation(line: 43, column: 5, scope: !5647, inlinedAt: !5811)
!5818 = !DILocation(line: 86, column: 10, scope: !5806)
!5819 = !DILocation(line: 86, column: 3, scope: !5806)
!5820 = distinct !DISubprogram(name: "xcalloc", scope: !5637, file: !5637, line: 93, type: !5623, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5821)
!5821 = !{!5822, !5823, !5824}
!5822 = !DILocalVariable(name: "n", arg: 1, scope: !5820, file: !5637, line: 93, type: !54)
!5823 = !DILocalVariable(name: "s", arg: 2, scope: !5820, file: !5637, line: 93, type: !54)
!5824 = !DILocalVariable(name: "p", scope: !5820, file: !5637, line: 95, type: !52)
!5825 = !DILocation(line: 93, column: 17, scope: !5820)
!5826 = !DILocation(line: 93, column: 27, scope: !5820)
!5827 = !DILocation(line: 100, column: 7, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5820, file: !5637, line: 100, column: 7)
!5829 = !DILocation(line: 101, column: 7, scope: !5828)
!5830 = !DILocation(line: 101, column: 18, scope: !5831)
!5831 = !DILexicalBlockFile(scope: !5828, file: !5637, discriminator: 1)
!5832 = !DILocation(line: 95, column: 9, scope: !5820)
!5833 = !DILocation(line: 101, column: 16, scope: !5831)
!5834 = !DILocation(line: 100, column: 7, scope: !5835)
!5835 = !DILexicalBlockFile(scope: !5820, file: !5637, discriminator: 1)
!5836 = !DILocation(line: 102, column: 5, scope: !5828)
!5837 = !DILocation(line: 103, column: 3, scope: !5820)
!5838 = distinct !DISubprogram(name: "xmemdup", scope: !5637, file: !5637, line: 111, type: !5839, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5841)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!52, !80, !54}
!5841 = !{!5842, !5843}
!5842 = !DILocalVariable(name: "p", arg: 1, scope: !5838, file: !5637, line: 111, type: !80)
!5843 = !DILocalVariable(name: "s", arg: 2, scope: !5838, file: !5637, line: 111, type: !54)
!5844 = !DILocation(line: 111, column: 22, scope: !5838)
!5845 = !DILocation(line: 111, column: 32, scope: !5838)
!5846 = !DILocation(line: 39, column: 17, scope: !5636, inlinedAt: !5847)
!5847 = distinct !DILocation(line: 113, column: 18, scope: !5838)
!5848 = !DILocation(line: 41, column: 13, scope: !5636, inlinedAt: !5847)
!5849 = !DILocation(line: 41, column: 9, scope: !5636, inlinedAt: !5847)
!5850 = !DILocation(line: 42, column: 8, scope: !5647, inlinedAt: !5847)
!5851 = !DILocation(line: 42, column: 15, scope: !5649, inlinedAt: !5847)
!5852 = !DILocation(line: 42, column: 10, scope: !5647, inlinedAt: !5847)
!5853 = !DILocation(line: 43, column: 5, scope: !5647, inlinedAt: !5847)
!5854 = !DILocation(line: 113, column: 10, scope: !5838)
!5855 = !DILocation(line: 113, column: 3, scope: !5838)
!5856 = distinct !DISubprogram(name: "xstrdup", scope: !5637, file: !5637, line: 119, type: !4886, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5857)
!5857 = !{!5858}
!5858 = !DILocalVariable(name: "string", arg: 1, scope: !5856, file: !5637, line: 119, type: !85)
!5859 = !DILocation(line: 119, column: 22, scope: !5856)
!5860 = !DILocation(line: 121, column: 27, scope: !5856)
!5861 = !DILocation(line: 121, column: 43, scope: !5856)
!5862 = !DILocation(line: 111, column: 22, scope: !5838, inlinedAt: !5863)
!5863 = distinct !DILocation(line: 121, column: 10, scope: !5864)
!5864 = !DILexicalBlockFile(scope: !5856, file: !5637, discriminator: 1)
!5865 = !DILocation(line: 111, column: 32, scope: !5838, inlinedAt: !5863)
!5866 = !DILocation(line: 39, column: 17, scope: !5636, inlinedAt: !5867)
!5867 = distinct !DILocation(line: 113, column: 18, scope: !5838, inlinedAt: !5863)
!5868 = !DILocation(line: 41, column: 13, scope: !5636, inlinedAt: !5867)
!5869 = !DILocation(line: 41, column: 9, scope: !5636, inlinedAt: !5867)
!5870 = !DILocation(line: 42, column: 8, scope: !5647, inlinedAt: !5867)
!5871 = !DILocation(line: 42, column: 15, scope: !5649, inlinedAt: !5867)
!5872 = !DILocation(line: 42, column: 10, scope: !5647, inlinedAt: !5867)
!5873 = !DILocation(line: 43, column: 5, scope: !5647, inlinedAt: !5867)
!5874 = !DILocation(line: 113, column: 10, scope: !5838, inlinedAt: !5863)
!5875 = !DILocation(line: 121, column: 3, scope: !5856)
!5876 = distinct !DISubprogram(name: "xalloc_die", scope: !5877, file: !5877, line: 32, type: !1938, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !726, variables: !221)
!5877 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5878 = !DILocation(line: 34, column: 10, scope: !5876)
!5879 = !DILocation(line: 34, column: 33, scope: !5876)
!5880 = !DILocation(line: 34, column: 3, scope: !5881)
!5881 = !DILexicalBlockFile(scope: !5876, file: !5877, discriminator: 1)
!5882 = !DILocation(line: 40, column: 3, scope: !5876)
!5883 = distinct !DISubprogram(name: "xmemcoll", scope: !5884, file: !5884, line: 54, type: !5885, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !728, variables: !5887)
!5884 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5885 = !DISubroutineType(types: !5886)
!5886 = !{!89, !88, !54, !88, !54}
!5887 = !{!5888, !5889, !5890, !5891, !5892, !5893}
!5888 = !DILocalVariable(name: "s1", arg: 1, scope: !5883, file: !5884, line: 54, type: !88)
!5889 = !DILocalVariable(name: "s1len", arg: 2, scope: !5883, file: !5884, line: 54, type: !54)
!5890 = !DILocalVariable(name: "s2", arg: 3, scope: !5883, file: !5884, line: 54, type: !88)
!5891 = !DILocalVariable(name: "s2len", arg: 4, scope: !5883, file: !5884, line: 54, type: !54)
!5892 = !DILocalVariable(name: "diff", scope: !5883, file: !5884, line: 56, type: !89)
!5893 = !DILocalVariable(name: "collation_errno", scope: !5883, file: !5884, line: 57, type: !89)
!5894 = !DILocation(line: 54, column: 17, scope: !5883)
!5895 = !DILocation(line: 54, column: 28, scope: !5883)
!5896 = !DILocation(line: 54, column: 41, scope: !5883)
!5897 = !DILocation(line: 54, column: 52, scope: !5883)
!5898 = !DILocation(line: 56, column: 14, scope: !5883)
!5899 = !DILocation(line: 56, column: 7, scope: !5883)
!5900 = !DILocation(line: 57, column: 25, scope: !5883)
!5901 = !DILocation(line: 57, column: 7, scope: !5883)
!5902 = !DILocation(line: 58, column: 7, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5883, file: !5884, line: 58, column: 7)
!5904 = !DILocation(line: 58, column: 7, scope: !5883)
!5905 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !5906, file: !5884, line: 35, type: !89)
!5906 = distinct !DISubprogram(name: "collate_error", scope: !5884, file: !5884, line: 35, type: !5907, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !728, variables: !5909)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{null, !89, !85, !54, !85, !54}
!5909 = !{!5905, !5910, !5911, !5912, !5913}
!5910 = !DILocalVariable(name: "s1", arg: 2, scope: !5906, file: !5884, line: 36, type: !85)
!5911 = !DILocalVariable(name: "s1len", arg: 3, scope: !5906, file: !5884, line: 36, type: !54)
!5912 = !DILocalVariable(name: "s2", arg: 4, scope: !5906, file: !5884, line: 37, type: !85)
!5913 = !DILocalVariable(name: "s2len", arg: 5, scope: !5906, file: !5884, line: 37, type: !54)
!5914 = !DILocation(line: 35, column: 20, scope: !5906, inlinedAt: !5915)
!5915 = distinct !DILocation(line: 59, column: 5, scope: !5903)
!5916 = !DILocation(line: 36, column: 28, scope: !5906, inlinedAt: !5915)
!5917 = !DILocation(line: 36, column: 39, scope: !5906, inlinedAt: !5915)
!5918 = !DILocation(line: 37, column: 28, scope: !5906, inlinedAt: !5915)
!5919 = !DILocation(line: 37, column: 39, scope: !5906, inlinedAt: !5915)
!5920 = !DILocation(line: 39, column: 30, scope: !5906, inlinedAt: !5915)
!5921 = !DILocation(line: 39, column: 3, scope: !5922, inlinedAt: !5915)
!5922 = !DILexicalBlockFile(scope: !5906, file: !5884, discriminator: 1)
!5923 = !DILocation(line: 40, column: 16, scope: !5906, inlinedAt: !5915)
!5924 = !DILocation(line: 40, column: 3, scope: !5922, inlinedAt: !5915)
!5925 = !DILocation(line: 41, column: 10, scope: !5906, inlinedAt: !5915)
!5926 = !DILocation(line: 42, column: 10, scope: !5906, inlinedAt: !5915)
!5927 = !DILocation(line: 43, column: 10, scope: !5906, inlinedAt: !5915)
!5928 = !DILocation(line: 44, column: 10, scope: !5906, inlinedAt: !5915)
!5929 = !DILocation(line: 41, column: 3, scope: !5906, inlinedAt: !5915)
!5930 = !DILocation(line: 59, column: 5, scope: !5903)
!5931 = !DILocation(line: 60, column: 3, scope: !5883)
!5932 = distinct !DISubprogram(name: "xmemcoll0", scope: !5884, file: !5884, line: 69, type: !5933, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !728, variables: !5935)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{!89, !85, !54, !85, !54}
!5935 = !{!5936, !5937, !5938, !5939, !5940, !5941}
!5936 = !DILocalVariable(name: "s1", arg: 1, scope: !5932, file: !5884, line: 69, type: !85)
!5937 = !DILocalVariable(name: "s1size", arg: 2, scope: !5932, file: !5884, line: 69, type: !54)
!5938 = !DILocalVariable(name: "s2", arg: 3, scope: !5932, file: !5884, line: 69, type: !85)
!5939 = !DILocalVariable(name: "s2size", arg: 4, scope: !5932, file: !5884, line: 69, type: !54)
!5940 = !DILocalVariable(name: "diff", scope: !5932, file: !5884, line: 71, type: !89)
!5941 = !DILocalVariable(name: "collation_errno", scope: !5932, file: !5884, line: 72, type: !89)
!5942 = !DILocation(line: 69, column: 24, scope: !5932)
!5943 = !DILocation(line: 69, column: 35, scope: !5932)
!5944 = !DILocation(line: 69, column: 55, scope: !5932)
!5945 = !DILocation(line: 69, column: 66, scope: !5932)
!5946 = !DILocation(line: 71, column: 14, scope: !5932)
!5947 = !DILocation(line: 71, column: 7, scope: !5932)
!5948 = !DILocation(line: 72, column: 25, scope: !5932)
!5949 = !DILocation(line: 72, column: 7, scope: !5932)
!5950 = !DILocation(line: 73, column: 7, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5932, file: !5884, line: 73, column: 7)
!5952 = !DILocation(line: 73, column: 7, scope: !5932)
!5953 = !DILocation(line: 74, column: 48, scope: !5951)
!5954 = !DILocation(line: 74, column: 64, scope: !5951)
!5955 = !DILocation(line: 35, column: 20, scope: !5906, inlinedAt: !5956)
!5956 = distinct !DILocation(line: 74, column: 5, scope: !5951)
!5957 = !DILocation(line: 36, column: 28, scope: !5906, inlinedAt: !5956)
!5958 = !DILocation(line: 36, column: 39, scope: !5906, inlinedAt: !5956)
!5959 = !DILocation(line: 37, column: 28, scope: !5906, inlinedAt: !5956)
!5960 = !DILocation(line: 37, column: 39, scope: !5906, inlinedAt: !5956)
!5961 = !DILocation(line: 39, column: 30, scope: !5906, inlinedAt: !5956)
!5962 = !DILocation(line: 39, column: 3, scope: !5922, inlinedAt: !5956)
!5963 = !DILocation(line: 40, column: 16, scope: !5906, inlinedAt: !5956)
!5964 = !DILocation(line: 40, column: 3, scope: !5922, inlinedAt: !5956)
!5965 = !DILocation(line: 41, column: 10, scope: !5906, inlinedAt: !5956)
!5966 = !DILocation(line: 42, column: 10, scope: !5906, inlinedAt: !5956)
!5967 = !DILocation(line: 43, column: 10, scope: !5906, inlinedAt: !5956)
!5968 = !DILocation(line: 44, column: 10, scope: !5906, inlinedAt: !5956)
!5969 = !DILocation(line: 41, column: 3, scope: !5906, inlinedAt: !5956)
!5970 = !DILocation(line: 74, column: 5, scope: !5951)
!5971 = !DILocation(line: 75, column: 3, scope: !5932)
!5972 = distinct !DISubprogram(name: "xstrtoul", scope: !5973, file: !5973, line: 88, type: !5974, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !731, variables: !5977)
!5973 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5974 = !DISubroutineType(types: !5975)
!5975 = !{!1014, !85, !824, !89, !5976, !85}
!5976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!5977 = !{!5978, !5979, !5980, !5981, !5982, !5983, !5984, !5985, !5986, !5987, !5990, !5991, !5994, !5995}
!5978 = !DILocalVariable(name: "s", arg: 1, scope: !5972, file: !5973, line: 88, type: !85)
!5979 = !DILocalVariable(name: "ptr", arg: 2, scope: !5972, file: !5973, line: 88, type: !824)
!5980 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !5972, file: !5973, line: 88, type: !89)
!5981 = !DILocalVariable(name: "val", arg: 4, scope: !5972, file: !5973, line: 89, type: !5976)
!5982 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !5972, file: !5973, line: 89, type: !85)
!5983 = !DILocalVariable(name: "t_ptr", scope: !5972, file: !5973, line: 91, type: !88)
!5984 = !DILocalVariable(name: "p", scope: !5972, file: !5973, line: 92, type: !824)
!5985 = !DILocalVariable(name: "tmp", scope: !5972, file: !5973, line: 93, type: !56)
!5986 = !DILocalVariable(name: "err", scope: !5972, file: !5973, line: 94, type: !1014)
!5987 = !DILocalVariable(name: "q", scope: !5988, file: !5973, line: 104, type: !85)
!5988 = distinct !DILexicalBlock(scope: !5989, file: !5973, line: 103, column: 5)
!5989 = distinct !DILexicalBlock(scope: !5972, file: !5973, line: 102, column: 7)
!5990 = !DILocalVariable(name: "ch", scope: !5988, file: !5973, line: 105, type: !84)
!5991 = !DILocalVariable(name: "base", scope: !5992, file: !5973, line: 141, type: !89)
!5992 = distinct !DILexicalBlock(scope: !5993, file: !5973, line: 140, column: 5)
!5993 = distinct !DILexicalBlock(scope: !5972, file: !5973, line: 139, column: 7)
!5994 = !DILocalVariable(name: "suffixes", scope: !5992, file: !5973, line: 142, type: !89)
!5995 = !DILocalVariable(name: "overflow", scope: !5992, file: !5973, line: 143, type: !1014)
!5996 = !DILocation(line: 88, column: 24, scope: !5972)
!5997 = !DILocation(line: 88, column: 34, scope: !5972)
!5998 = !DILocation(line: 88, column: 43, scope: !5972)
!5999 = !DILocation(line: 89, column: 24, scope: !5972)
!6000 = !DILocation(line: 89, column: 41, scope: !5972)
!6001 = !DILocation(line: 91, column: 3, scope: !5972)
!6002 = !DILocation(line: 94, column: 16, scope: !5972)
!6003 = !DILocation(line: 96, column: 3, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6005, file: !5973, line: 96, column: 3)
!6005 = distinct !DILexicalBlock(scope: !5972, file: !5973, line: 96, column: 3)
!6006 = !DILocation(line: 96, column: 3, scope: !6007)
!6007 = !DILexicalBlockFile(scope: !6004, file: !5973, discriminator: 3)
!6008 = !DILocation(line: 98, column: 8, scope: !5972)
!6009 = !DILocation(line: 92, column: 10, scope: !5972)
!6010 = !DILocation(line: 100, column: 3, scope: !5972)
!6011 = !DILocation(line: 100, column: 9, scope: !5972)
!6012 = !DILocation(line: 104, column: 19, scope: !5988)
!6013 = !DILocation(line: 106, column: 14, scope: !6014)
!6014 = !DILexicalBlockFile(scope: !5988, file: !5973, discriminator: 1)
!6015 = !DILocation(line: 106, column: 7, scope: !5988)
!6016 = !DILocation(line: 105, column: 21, scope: !5988)
!6017 = !DILocation(line: 106, column: 7, scope: !6014)
!6018 = !DILocation(line: 107, column: 15, scope: !5988)
!6019 = distinct !{!6019, !6015, !6020}
!6020 = !DILocation(line: 107, column: 17, scope: !5988)
!6021 = !DILocation(line: 109, column: 9, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !5988, file: !5973, line: 108, column: 11)
!6023 = !DILocation(line: 112, column: 9, scope: !5972)
!6024 = !DILocation(line: 93, column: 14, scope: !5972)
!6025 = !DILocation(line: 114, column: 7, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !5972, file: !5973, line: 114, column: 7)
!6027 = !DILocation(line: 114, column: 10, scope: !6026)
!6028 = !DILocation(line: 114, column: 7, scope: !5972)
!6029 = !DILocation(line: 118, column: 11, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6031, file: !5973, line: 118, column: 11)
!6031 = distinct !DILexicalBlock(scope: !6026, file: !5973, line: 115, column: 5)
!6032 = !DILocation(line: 118, column: 26, scope: !6030)
!6033 = !DILocation(line: 118, column: 29, scope: !6034)
!6034 = !DILexicalBlockFile(scope: !6030, file: !5973, discriminator: 1)
!6035 = !DILocation(line: 118, column: 33, scope: !6034)
!6036 = !DILocation(line: 118, column: 36, scope: !6037)
!6037 = !DILexicalBlockFile(scope: !6030, file: !5973, discriminator: 5)
!6038 = !DILocation(line: 118, column: 11, scope: !6039)
!6039 = !DILexicalBlockFile(scope: !6031, file: !5973, discriminator: 5)
!6040 = !DILocation(line: 123, column: 12, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6026, file: !5973, line: 123, column: 12)
!6042 = !DILocation(line: 123, column: 12, scope: !6026)
!6043 = !DILocation(line: 128, column: 5, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6041, file: !5973, line: 124, column: 5)
!6045 = !DILocation(line: 133, column: 8, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !5972, file: !5973, line: 133, column: 7)
!6047 = !DILocation(line: 133, column: 7, scope: !5972)
!6048 = !DILocation(line: 135, column: 12, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6046, file: !5973, line: 134, column: 5)
!6050 = !DILocation(line: 136, column: 7, scope: !6049)
!6051 = !DILocation(line: 139, column: 7, scope: !5993)
!6052 = !DILocation(line: 139, column: 11, scope: !5993)
!6053 = !DILocation(line: 139, column: 7, scope: !5972)
!6054 = !DILocation(line: 141, column: 11, scope: !5992)
!6055 = !DILocation(line: 142, column: 11, scope: !5992)
!6056 = !DILocation(line: 145, column: 12, scope: !6057)
!6057 = !DILexicalBlockFile(scope: !6058, file: !5973, discriminator: 3)
!6058 = distinct !DILexicalBlock(scope: !5992, file: !5973, line: 145, column: 11)
!6059 = !DILocation(line: 145, column: 11, scope: !6060)
!6060 = !DILexicalBlockFile(scope: !5992, file: !5973, discriminator: 3)
!6061 = !DILocation(line: 147, column: 16, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6058, file: !5973, line: 146, column: 9)
!6063 = !DILocation(line: 148, column: 22, scope: !6062)
!6064 = !DILocation(line: 148, column: 11, scope: !6062)
!6065 = !DILocation(line: 151, column: 7, scope: !5992)
!6066 = !DILocation(line: 163, column: 15, scope: !6067)
!6067 = !DILexicalBlockFile(scope: !6068, file: !5973, discriminator: 2)
!6068 = distinct !DILexicalBlock(scope: !6069, file: !5973, line: 163, column: 15)
!6069 = distinct !DILexicalBlock(scope: !5992, file: !5973, line: 152, column: 9)
!6070 = !DILocation(line: 163, column: 15, scope: !6071)
!6071 = !DILexicalBlockFile(scope: !6069, file: !5973, discriminator: 2)
!6072 = !DILocation(line: 164, column: 21, scope: !6068)
!6073 = !DILocation(line: 164, column: 13, scope: !6068)
!6074 = !DILocation(line: 167, column: 21, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !5973, line: 167, column: 21)
!6076 = distinct !DILexicalBlock(scope: !6068, file: !5973, line: 165, column: 15)
!6077 = !DILocation(line: 167, column: 29, scope: !6075)
!6078 = !DILocation(line: 167, column: 21, scope: !6076)
!6079 = !DILocation(line: 175, column: 17, scope: !6076)
!6080 = !DILocation(line: 179, column: 7, scope: !5992)
!6081 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !6082, file: !5973, line: 60, type: !89)
!6082 = distinct !DISubprogram(name: "bkm_scale", scope: !5973, file: !5973, line: 60, type: !6083, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !731, variables: !6085)
!6083 = !DISubroutineType(types: !6084)
!6084 = !{!1014, !5976, !89}
!6085 = !{!6086, !6081}
!6086 = !DILocalVariable(name: "x", arg: 1, scope: !6082, file: !5973, line: 60, type: !5976)
!6087 = !DILocation(line: 60, column: 31, scope: !6082, inlinedAt: !6088)
!6088 = distinct !DILocation(line: 182, column: 22, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !5992, file: !5973, line: 180, column: 9)
!6090 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6088)
!6091 = distinct !DILexicalBlock(scope: !6082, file: !5973, line: 67, column: 7)
!6092 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6088)
!6093 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6088)
!6094 = !DILocation(line: 143, column: 20, scope: !5992)
!6095 = !DILocation(line: 183, column: 11, scope: !6089)
!6096 = !DILocation(line: 60, column: 31, scope: !6082, inlinedAt: !6097)
!6097 = distinct !DILocation(line: 189, column: 22, scope: !6089)
!6098 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6097)
!6099 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6097)
!6100 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6097)
!6101 = !DILocation(line: 190, column: 11, scope: !6089)
!6102 = !DILocalVariable(name: "power", arg: 3, scope: !6103, file: !5973, line: 77, type: !89)
!6103 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !5973, file: !5973, line: 77, type: !6104, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !731, variables: !6106)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!1014, !5976, !89, !89}
!6106 = !{!6107, !6108, !6102, !6109}
!6107 = !DILocalVariable(name: "x", arg: 1, scope: !6103, file: !5973, line: 77, type: !5976)
!6108 = !DILocalVariable(name: "base", arg: 2, scope: !6103, file: !5973, line: 77, type: !89)
!6109 = !DILocalVariable(name: "err", scope: !6103, file: !5973, line: 79, type: !1014)
!6110 = !DILocation(line: 77, column: 50, scope: !6103, inlinedAt: !6111)
!6111 = distinct !DILocation(line: 197, column: 22, scope: !6089)
!6112 = !DILocation(line: 79, column: 16, scope: !6103, inlinedAt: !6111)
!6113 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6114)
!6114 = distinct !DILocation(line: 81, column: 12, scope: !6103, inlinedAt: !6111)
!6115 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6114)
!6116 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6114)
!6117 = !DILocation(line: 81, column: 9, scope: !6103, inlinedAt: !6111)
!6118 = !DILocation(line: 77, column: 50, scope: !6103, inlinedAt: !6119)
!6119 = distinct !DILocation(line: 202, column: 22, scope: !6089)
!6120 = !DILocation(line: 79, column: 16, scope: !6103, inlinedAt: !6119)
!6121 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6122)
!6122 = distinct !DILocation(line: 81, column: 12, scope: !6103, inlinedAt: !6119)
!6123 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6122)
!6124 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6122)
!6125 = !DILocation(line: 81, column: 9, scope: !6103, inlinedAt: !6119)
!6126 = !DILocation(line: 77, column: 50, scope: !6103, inlinedAt: !6127)
!6127 = distinct !DILocation(line: 207, column: 22, scope: !6089)
!6128 = !DILocation(line: 79, column: 16, scope: !6103, inlinedAt: !6127)
!6129 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6130)
!6130 = distinct !DILocation(line: 81, column: 12, scope: !6103, inlinedAt: !6127)
!6131 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6130)
!6132 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6130)
!6133 = !DILocation(line: 77, column: 50, scope: !6103, inlinedAt: !6134)
!6134 = distinct !DILocation(line: 212, column: 22, scope: !6089)
!6135 = !DILocation(line: 79, column: 16, scope: !6103, inlinedAt: !6134)
!6136 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6137)
!6137 = distinct !DILocation(line: 81, column: 12, scope: !6103, inlinedAt: !6134)
!6138 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6137)
!6139 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6137)
!6140 = !DILocation(line: 81, column: 9, scope: !6103, inlinedAt: !6134)
!6141 = !DILocation(line: 77, column: 50, scope: !6103, inlinedAt: !6142)
!6142 = distinct !DILocation(line: 216, column: 22, scope: !6089)
!6143 = !DILocation(line: 79, column: 16, scope: !6103, inlinedAt: !6142)
!6144 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6145)
!6145 = distinct !DILocation(line: 81, column: 12, scope: !6103, inlinedAt: !6142)
!6146 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6145)
!6147 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6145)
!6148 = !DILocation(line: 81, column: 9, scope: !6103, inlinedAt: !6142)
!6149 = !DILocation(line: 77, column: 50, scope: !6103, inlinedAt: !6150)
!6150 = distinct !DILocation(line: 221, column: 22, scope: !6089)
!6151 = !DILocation(line: 79, column: 16, scope: !6103, inlinedAt: !6150)
!6152 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6153)
!6153 = distinct !DILocation(line: 81, column: 12, scope: !6103, inlinedAt: !6150)
!6154 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6153)
!6155 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6153)
!6156 = !DILocation(line: 81, column: 9, scope: !6103, inlinedAt: !6150)
!6157 = !DILocation(line: 60, column: 31, scope: !6082, inlinedAt: !6158)
!6158 = distinct !DILocation(line: 225, column: 22, scope: !6089)
!6159 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6158)
!6160 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6158)
!6161 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6158)
!6162 = !DILocation(line: 226, column: 11, scope: !6089)
!6163 = !DILocation(line: 77, column: 50, scope: !6103, inlinedAt: !6164)
!6164 = distinct !DILocation(line: 229, column: 22, scope: !6089)
!6165 = !DILocation(line: 79, column: 16, scope: !6103, inlinedAt: !6164)
!6166 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6167)
!6167 = distinct !DILocation(line: 81, column: 12, scope: !6103, inlinedAt: !6164)
!6168 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6167)
!6169 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6167)
!6170 = !DILocation(line: 81, column: 9, scope: !6103, inlinedAt: !6164)
!6171 = !DILocation(line: 77, column: 50, scope: !6103, inlinedAt: !6172)
!6172 = distinct !DILocation(line: 233, column: 22, scope: !6089)
!6173 = !DILocation(line: 79, column: 16, scope: !6103, inlinedAt: !6172)
!6174 = !DILocation(line: 67, column: 39, scope: !6091, inlinedAt: !6175)
!6175 = distinct !DILocation(line: 81, column: 12, scope: !6103, inlinedAt: !6172)
!6176 = !DILocation(line: 72, column: 6, scope: !6082, inlinedAt: !6175)
!6177 = !DILocation(line: 67, column: 7, scope: !6082, inlinedAt: !6175)
!6178 = !DILocation(line: 81, column: 9, scope: !6103, inlinedAt: !6172)
!6179 = !DILocation(line: 237, column: 16, scope: !6089)
!6180 = !DILocation(line: 238, column: 22, scope: !6089)
!6181 = !DILocation(line: 238, column: 11, scope: !6089)
!6182 = !DILocation(line: 241, column: 11, scope: !5992)
!6183 = !DILocation(line: 242, column: 10, scope: !5992)
!6184 = !DILocation(line: 243, column: 11, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !5992, file: !5973, line: 243, column: 11)
!6186 = !DILocation(line: 244, column: 13, scope: !6185)
!6187 = !DILocation(line: 243, column: 11, scope: !5992)
!6188 = !DILocation(line: 247, column: 8, scope: !5972)
!6189 = !DILocation(line: 248, column: 3, scope: !5972)
!6190 = !DILocation(line: 249, column: 1, scope: !5972)
!6191 = distinct !DISubprogram(name: "rpl_calloc", scope: !6192, file: !6192, line: 42, type: !5623, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !6193)
!6192 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6193 = !{!6194, !6195, !6196, !6197}
!6194 = !DILocalVariable(name: "n", arg: 1, scope: !6191, file: !6192, line: 42, type: !54)
!6195 = !DILocalVariable(name: "s", arg: 2, scope: !6191, file: !6192, line: 42, type: !54)
!6196 = !DILocalVariable(name: "result", scope: !6191, file: !6192, line: 44, type: !52)
!6197 = !DILocalVariable(name: "bytes", scope: !6198, file: !6192, line: 56, type: !54)
!6198 = distinct !DILexicalBlock(scope: !6199, file: !6192, line: 53, column: 5)
!6199 = distinct !DILexicalBlock(scope: !6191, file: !6192, line: 47, column: 7)
!6200 = !DILocation(line: 42, column: 20, scope: !6191)
!6201 = !DILocation(line: 42, column: 30, scope: !6191)
!6202 = !DILocation(line: 47, column: 9, scope: !6199)
!6203 = !DILocation(line: 47, column: 19, scope: !6204)
!6204 = !DILexicalBlockFile(scope: !6199, file: !6192, discriminator: 1)
!6205 = !DILocation(line: 47, column: 14, scope: !6199)
!6206 = !DILocation(line: 56, column: 24, scope: !6198)
!6207 = !DILocation(line: 56, column: 14, scope: !6198)
!6208 = !DILocation(line: 57, column: 17, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6198, file: !6192, line: 57, column: 11)
!6210 = !DILocation(line: 57, column: 21, scope: !6209)
!6211 = !DILocation(line: 57, column: 11, scope: !6198)
!6212 = !DILocation(line: 59, column: 11, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6209, file: !6192, line: 58, column: 9)
!6214 = !DILocation(line: 59, column: 17, scope: !6213)
!6215 = !DILocation(line: 65, column: 12, scope: !6191)
!6216 = !DILocation(line: 44, column: 9, scope: !6191)
!6217 = !DILocation(line: 72, column: 3, scope: !6191)
!6218 = !DILocation(line: 73, column: 1, scope: !6191)
!6219 = distinct !DISubprogram(name: "rpl_fclose", scope: !6220, file: !6220, line: 56, type: !6221, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !737, variables: !6263)
!6220 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6221 = !DISubroutineType(types: !6222)
!6222 = !{!89, !6223}
!6223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6224, size: 64)
!6224 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !6225)
!6225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !6226)
!6226 = !{!6227, !6228, !6229, !6230, !6231, !6232, !6233, !6234, !6235, !6236, !6237, !6238, !6239, !6247, !6248, !6249, !6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257, !6258, !6259, !6260, !6261, !6262}
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6225, file: !838, line: 242, baseType: !89, size: 32)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6225, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6225, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6225, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6225, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6225, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6225, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6225, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6225, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6225, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6225, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6225, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6225, file: !838, line: 260, baseType: !6240, size: 64, offset: 768)
!6240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6241, size: 64)
!6241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !6242)
!6242 = !{!6243, !6244, !6246}
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6241, file: !838, line: 157, baseType: !6240, size: 64)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6241, file: !838, line: 158, baseType: !6245, size: 64, offset: 64)
!6245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6225, size: 64)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6241, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6225, file: !838, line: 262, baseType: !6245, size: 64, offset: 832)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6225, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6225, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6225, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6225, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6225, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6225, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6225, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6225, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6225, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6225, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6225, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6225, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6225, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6225, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6225, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!6263 = !{!6264, !6265, !6266, !6267}
!6264 = !DILocalVariable(name: "fp", arg: 1, scope: !6219, file: !6220, line: 56, type: !6223)
!6265 = !DILocalVariable(name: "saved_errno", scope: !6219, file: !6220, line: 58, type: !89)
!6266 = !DILocalVariable(name: "fd", scope: !6219, file: !6220, line: 59, type: !89)
!6267 = !DILocalVariable(name: "result", scope: !6219, file: !6220, line: 60, type: !89)
!6268 = !DILocation(line: 56, column: 19, scope: !6219)
!6269 = !DILocation(line: 58, column: 7, scope: !6219)
!6270 = !DILocation(line: 60, column: 7, scope: !6219)
!6271 = !DILocation(line: 63, column: 8, scope: !6219)
!6272 = !DILocation(line: 59, column: 7, scope: !6219)
!6273 = !DILocation(line: 64, column: 10, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6219, file: !6220, line: 64, column: 7)
!6275 = !DILocation(line: 64, column: 7, scope: !6219)
!6276 = !DILocation(line: 65, column: 12, scope: !6274)
!6277 = !DILocation(line: 65, column: 5, scope: !6274)
!6278 = !DILocation(line: 70, column: 9, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6219, file: !6220, line: 70, column: 7)
!6280 = !DILocation(line: 70, column: 23, scope: !6279)
!6281 = !DILocation(line: 70, column: 33, scope: !6282)
!6282 = !DILexicalBlockFile(scope: !6279, file: !6220, discriminator: 1)
!6283 = !DILocation(line: 70, column: 26, scope: !6284)
!6284 = !DILexicalBlockFile(scope: !6279, file: !6220, discriminator: 3)
!6285 = !DILocation(line: 70, column: 59, scope: !6282)
!6286 = !DILocation(line: 71, column: 7, scope: !6279)
!6287 = !DILocation(line: 71, column: 10, scope: !6282)
!6288 = !DILocation(line: 70, column: 7, scope: !6289)
!6289 = !DILexicalBlockFile(scope: !6219, file: !6220, discriminator: 2)
!6290 = !DILocation(line: 98, column: 12, scope: !6219)
!6291 = !DILocation(line: 103, column: 7, scope: !6219)
!6292 = !DILocation(line: 72, column: 19, scope: !6279)
!6293 = !DILocation(line: 103, column: 19, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6219, file: !6220, line: 103, column: 7)
!6295 = !DILocation(line: 105, column: 13, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6294, file: !6220, line: 104, column: 5)
!6297 = !DILocation(line: 107, column: 5, scope: !6296)
!6298 = !DILocation(line: 110, column: 1, scope: !6219)
!6299 = !DILocation(line: 272, column: 16, scope: !308)
!6300 = !DILocation(line: 272, column: 24, scope: !308)
!6301 = !DILocation(line: 274, column: 3, scope: !308)
!6302 = !DILocation(line: 274, column: 11, scope: !308)
!6303 = !DILocation(line: 275, column: 7, scope: !308)
!6304 = !DILocation(line: 276, column: 3, scope: !308)
!6305 = !DILocation(line: 277, column: 3, scope: !308)
!6306 = !DILocation(line: 322, column: 22, scope: !333)
!6307 = !DILocation(line: 322, column: 22, scope: !6308)
!6308 = !DILexicalBlockFile(scope: !333, file: !309, discriminator: 1)
!6309 = !DILocation(line: 322, column: 22, scope: !6310)
!6310 = !DILexicalBlockFile(scope: !333, file: !309, discriminator: 2)
!6311 = !DILocation(line: 322, column: 22, scope: !6312)
!6312 = !DILexicalBlockFile(scope: !333, file: !309, discriminator: 3)
!6313 = !DILocation(line: 322, column: 13, scope: !333)
!6314 = !DILocation(line: 336, column: 18, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !333, file: !309, line: 336, column: 13)
!6316 = !DILocation(line: 336, column: 15, scope: !6315)
!6317 = !DILocation(line: 336, column: 13, scope: !333)
!6318 = !DILocation(line: 338, column: 22, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6315, file: !309, line: 337, column: 11)
!6320 = !DILocation(line: 339, column: 19, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6319, file: !309, line: 339, column: 17)
!6322 = !DILocation(line: 339, column: 29, scope: !6321)
!6323 = !DILocation(line: 339, column: 32, scope: !6324)
!6324 = !DILexicalBlockFile(scope: !6321, file: !309, discriminator: 1)
!6325 = !DILocation(line: 339, column: 38, scope: !6324)
!6326 = !DILocation(line: 339, column: 17, scope: !6327)
!6327 = !DILexicalBlockFile(scope: !6319, file: !309, discriminator: 1)
!6328 = !DILocation(line: 349, column: 26, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6321, file: !309, line: 348, column: 15)
!6330 = !DILocation(line: 350, column: 28, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6329, file: !309, line: 350, column: 21)
!6332 = !DILocation(line: 350, column: 21, scope: !6329)
!6333 = !DILocation(line: 354, column: 11, scope: !6319)
!6334 = !DILocation(line: 356, column: 20, scope: !6315)
!6335 = !DILocation(line: 357, column: 28, scope: !6336)
!6336 = !DILexicalBlockFile(scope: !337, file: !309, discriminator: 1)
!6337 = !DILocation(line: 357, column: 15, scope: !337)
!6338 = !DILocation(line: 357, column: 47, scope: !6336)
!6339 = !DILocation(line: 357, column: 25, scope: !337)
!6340 = !DILocation(line: 359, column: 25, scope: !336)
!6341 = !DILocation(line: 359, column: 17, scope: !336)
!6342 = !DILocation(line: 360, column: 23, scope: !340)
!6343 = !DILocation(line: 360, column: 27, scope: !340)
!6344 = !DILocation(line: 360, column: 60, scope: !6345)
!6345 = !DILexicalBlockFile(scope: !340, file: !309, discriminator: 1)
!6346 = !DILocation(line: 360, column: 30, scope: !6345)
!6347 = !DILocation(line: 360, column: 74, scope: !6345)
!6348 = !DILocation(line: 360, column: 17, scope: !6349)
!6349 = !DILexicalBlockFile(scope: !336, file: !309, discriminator: 1)
!6350 = !DILocation(line: 362, column: 35, scope: !339)
!6351 = !DILocation(line: 362, column: 21, scope: !339)
!6352 = !DILocation(line: 363, column: 17, scope: !339)
!6353 = !DILocation(line: 364, column: 23, scope: !339)
!6354 = !DILocation(line: 366, column: 15, scope: !339)
!6355 = !DILocation(line: 404, column: 19, scope: !342)
!6356 = !DILocation(line: 404, column: 19, scope: !6357)
!6357 = !DILexicalBlockFile(scope: !342, file: !309, discriminator: 1)
!6358 = !DILocation(line: 404, column: 19, scope: !6359)
!6359 = !DILexicalBlockFile(scope: !342, file: !309, discriminator: 2)
!6360 = !DILocation(line: 404, column: 19, scope: !6361)
!6361 = !DILexicalBlockFile(scope: !342, file: !309, discriminator: 3)
!6362 = !DILocation(line: 404, column: 15, scope: !342)
!6363 = !DILocation(line: 405, column: 18, scope: !342)
!6364 = !DILocation(line: 412, column: 3, scope: !308)
!6365 = !DILocation(line: 414, column: 1, scope: !308)
!6366 = !DILocation(line: 413, column: 3, scope: !308)
!6367 = distinct !DISubprogram(name: "rpl_fflush", scope: !6368, file: !6368, line: 127, type: !6369, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !739, variables: !6411)
!6368 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6369 = !DISubroutineType(types: !6370)
!6370 = !{!89, !6371}
!6371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6372, size: 64)
!6372 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !6373)
!6373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !6374)
!6374 = !{!6375, !6376, !6377, !6378, !6379, !6380, !6381, !6382, !6383, !6384, !6385, !6386, !6387, !6395, !6396, !6397, !6398, !6399, !6400, !6401, !6402, !6403, !6404, !6405, !6406, !6407, !6408, !6409, !6410}
!6375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6373, file: !838, line: 242, baseType: !89, size: 32)
!6376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6373, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6373, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6373, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!6379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6373, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6373, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6373, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6373, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6373, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6373, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!6385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6373, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!6386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6373, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!6387 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6373, file: !838, line: 260, baseType: !6388, size: 64, offset: 768)
!6388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6389, size: 64)
!6389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !6390)
!6390 = !{!6391, !6392, !6394}
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6389, file: !838, line: 157, baseType: !6388, size: 64)
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6389, file: !838, line: 158, baseType: !6393, size: 64, offset: 64)
!6393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6373, size: 64)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6389, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6373, file: !838, line: 262, baseType: !6393, size: 64, offset: 832)
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6373, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6373, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6373, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!6399 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6373, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6373, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6373, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6373, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6373, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6373, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!6405 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6373, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6373, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6373, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6373, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6373, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6373, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!6411 = !{!6412}
!6412 = !DILocalVariable(name: "stream", arg: 1, scope: !6367, file: !6368, line: 127, type: !6371)
!6413 = !DILocation(line: 127, column: 19, scope: !6367)
!6414 = !DILocation(line: 148, column: 14, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6367, file: !6368, line: 148, column: 7)
!6416 = !DILocation(line: 148, column: 22, scope: !6415)
!6417 = !DILocation(line: 148, column: 27, scope: !6418)
!6418 = !DILexicalBlockFile(scope: !6415, file: !6368, discriminator: 1)
!6419 = !DILocation(line: 148, column: 7, scope: !6420)
!6420 = !DILexicalBlockFile(scope: !6367, file: !6368, discriminator: 1)
!6421 = !DILocation(line: 149, column: 12, scope: !6415)
!6422 = !DILocation(line: 149, column: 5, scope: !6415)
!6423 = !DILocalVariable(name: "fp", arg: 1, scope: !6424, file: !6368, line: 40, type: !6371)
!6424 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !6368, file: !6368, line: 40, type: !6425, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !739, variables: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{null, !6371}
!6427 = !{!6423}
!6428 = !DILocation(line: 40, column: 48, scope: !6424, inlinedAt: !6429)
!6429 = distinct !DILocation(line: 153, column: 3, scope: !6367)
!6430 = !DILocation(line: 42, column: 11, scope: !6431, inlinedAt: !6429)
!6431 = distinct !DILexicalBlock(scope: !6424, file: !6368, line: 42, column: 7)
!6432 = !DILocation(line: 42, column: 18, scope: !6431, inlinedAt: !6429)
!6433 = !DILocation(line: 42, column: 7, scope: !6424, inlinedAt: !6429)
!6434 = !DILocation(line: 44, column: 5, scope: !6431, inlinedAt: !6429)
!6435 = !DILocation(line: 155, column: 10, scope: !6367)
!6436 = !DILocation(line: 155, column: 3, scope: !6367)
!6437 = !DILocation(line: 229, column: 1, scope: !6367)
!6438 = distinct !DISubprogram(name: "rpl_fseeko", scope: !6439, file: !6439, line: 28, type: !6440, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !741, variables: !6482)
!6439 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6440 = !DISubroutineType(types: !6441)
!6441 = !{!89, !6442, !2923, !89}
!6442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6443, size: 64)
!6443 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !6444)
!6444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !6445)
!6445 = !{!6446, !6447, !6448, !6449, !6450, !6451, !6452, !6453, !6454, !6455, !6456, !6457, !6458, !6466, !6467, !6468, !6469, !6470, !6471, !6472, !6473, !6474, !6475, !6476, !6477, !6478, !6479, !6480, !6481}
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6444, file: !838, line: 242, baseType: !89, size: 32)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6444, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!6448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6444, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!6449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6444, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!6450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6444, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6444, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6444, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!6453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6444, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!6454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6444, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6444, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!6456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6444, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!6457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6444, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!6458 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6444, file: !838, line: 260, baseType: !6459, size: 64, offset: 768)
!6459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6460, size: 64)
!6460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !6461)
!6461 = !{!6462, !6463, !6465}
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6460, file: !838, line: 157, baseType: !6459, size: 64)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6460, file: !838, line: 158, baseType: !6464, size: 64, offset: 64)
!6464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6444, size: 64)
!6465 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6460, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!6466 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6444, file: !838, line: 262, baseType: !6464, size: 64, offset: 832)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6444, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6444, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6444, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6444, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!6471 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6444, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6444, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!6473 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6444, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!6474 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6444, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6444, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!6476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6444, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!6477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6444, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6444, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!6479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6444, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!6480 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6444, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!6481 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6444, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!6482 = !{!6483, !6484, !6485, !6486}
!6483 = !DILocalVariable(name: "fp", arg: 1, scope: !6438, file: !6439, line: 28, type: !6442)
!6484 = !DILocalVariable(name: "offset", arg: 2, scope: !6438, file: !6439, line: 28, type: !2923)
!6485 = !DILocalVariable(name: "whence", arg: 3, scope: !6438, file: !6439, line: 28, type: !89)
!6486 = !DILocalVariable(name: "pos", scope: !6487, file: !6439, line: 116, type: !2923)
!6487 = distinct !DILexicalBlock(scope: !6488, file: !6439, line: 112, column: 5)
!6488 = distinct !DILexicalBlock(scope: !6438, file: !6439, line: 51, column: 7)
!6489 = !DILocation(line: 28, column: 15, scope: !6438)
!6490 = !DILocation(line: 28, column: 25, scope: !6438)
!6491 = !DILocation(line: 28, column: 37, scope: !6438)
!6492 = !DILocation(line: 51, column: 11, scope: !6488)
!6493 = !DILocation(line: 51, column: 31, scope: !6488)
!6494 = !DILocation(line: 51, column: 24, scope: !6488)
!6495 = !DILocation(line: 52, column: 7, scope: !6488)
!6496 = !DILocation(line: 52, column: 14, scope: !6497)
!6497 = !DILexicalBlockFile(scope: !6488, file: !6439, discriminator: 1)
!6498 = !DILocation(line: 52, column: 35, scope: !6497)
!6499 = !{!2264, !769, i64 32}
!6500 = !DILocation(line: 52, column: 28, scope: !6497)
!6501 = !DILocation(line: 53, column: 7, scope: !6488)
!6502 = !DILocation(line: 53, column: 14, scope: !6497)
!6503 = !{!2264, !769, i64 72}
!6504 = !DILocation(line: 53, column: 28, scope: !6497)
!6505 = !DILocation(line: 51, column: 7, scope: !6506)
!6506 = !DILexicalBlockFile(scope: !6438, file: !6439, discriminator: 1)
!6507 = !DILocation(line: 116, column: 26, scope: !6487)
!6508 = !DILocation(line: 116, column: 19, scope: !6509)
!6509 = !DILexicalBlockFile(scope: !6487, file: !6439, discriminator: 1)
!6510 = !DILocation(line: 116, column: 13, scope: !6487)
!6511 = !DILocation(line: 117, column: 15, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6487, file: !6439, line: 117, column: 11)
!6513 = !DILocation(line: 117, column: 11, scope: !6487)
!6514 = !DILocation(line: 127, column: 11, scope: !6487)
!6515 = !DILocation(line: 127, column: 18, scope: !6487)
!6516 = !DILocation(line: 128, column: 11, scope: !6487)
!6517 = !DILocation(line: 128, column: 19, scope: !6487)
!6518 = !{!2264, !980, i64 144}
!6519 = !DILocation(line: 159, column: 7, scope: !6487)
!6520 = !DILocation(line: 161, column: 10, scope: !6438)
!6521 = !DILocation(line: 161, column: 3, scope: !6438)
!6522 = !DILocation(line: 162, column: 1, scope: !6438)
!6523 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !6524, file: !6524, line: 334, type: !6525, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !743, variables: !6539)
!6524 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6525 = !DISubroutineType(types: !6526)
!6526 = !{!54, !6527, !85, !54, !6528}
!6527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!6528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6529, size: 64)
!6529 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3654, line: 107, baseType: !6530)
!6530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3654, line: 95, baseType: !6531)
!6531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3654, line: 83, size: 64, elements: !6532)
!6532 = !{!6533, !6534}
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !6531, file: !3654, line: 85, baseType: !89, size: 32)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !6531, file: !3654, line: 94, baseType: !6535, size: 32, offset: 32)
!6535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6531, file: !3654, line: 86, size: 32, elements: !6536)
!6536 = !{!6537, !6538}
!6537 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !6535, file: !3654, line: 89, baseType: !272, size: 32)
!6538 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !6535, file: !3654, line: 93, baseType: !3664, size: 32)
!6539 = !{!6540, !6541, !6542, !6543, !6544, !6545, !6546}
!6540 = !DILocalVariable(name: "pwc", arg: 1, scope: !6523, file: !6524, line: 334, type: !6527)
!6541 = !DILocalVariable(name: "s", arg: 2, scope: !6523, file: !6524, line: 334, type: !85)
!6542 = !DILocalVariable(name: "n", arg: 3, scope: !6523, file: !6524, line: 334, type: !54)
!6543 = !DILocalVariable(name: "ps", arg: 4, scope: !6523, file: !6524, line: 334, type: !6528)
!6544 = !DILocalVariable(name: "ret", scope: !6523, file: !6524, line: 336, type: !54)
!6545 = !DILocalVariable(name: "wc", scope: !6523, file: !6524, line: 337, type: !3669)
!6546 = !DILocalVariable(name: "uc", scope: !6547, file: !6524, line: 398, type: !84)
!6547 = distinct !DILexicalBlock(scope: !6548, file: !6524, line: 397, column: 5)
!6548 = distinct !DILexicalBlock(scope: !6523, file: !6524, line: 396, column: 7)
!6549 = !DILocation(line: 334, column: 23, scope: !6523)
!6550 = !DILocation(line: 334, column: 40, scope: !6523)
!6551 = !DILocation(line: 334, column: 50, scope: !6523)
!6552 = !DILocation(line: 334, column: 64, scope: !6523)
!6553 = !DILocation(line: 337, column: 3, scope: !6523)
!6554 = !DILocation(line: 353, column: 9, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6523, file: !6524, line: 353, column: 7)
!6556 = !DILocation(line: 353, column: 7, scope: !6523)
!6557 = !DILocation(line: 388, column: 9, scope: !6523)
!6558 = !DILocation(line: 336, column: 10, scope: !6523)
!6559 = !DILocation(line: 396, column: 19, scope: !6548)
!6560 = !DILocation(line: 396, column: 31, scope: !6561)
!6561 = !DILexicalBlockFile(scope: !6548, file: !6524, discriminator: 1)
!6562 = !DILocation(line: 396, column: 26, scope: !6548)
!6563 = !DILocation(line: 396, column: 41, scope: !6564)
!6564 = !DILexicalBlockFile(scope: !6548, file: !6524, discriminator: 2)
!6565 = !DILocation(line: 396, column: 7, scope: !6566)
!6566 = !DILexicalBlockFile(scope: !6523, file: !6524, discriminator: 2)
!6567 = !DILocation(line: 398, column: 26, scope: !6547)
!6568 = !DILocation(line: 398, column: 21, scope: !6547)
!6569 = !DILocation(line: 399, column: 14, scope: !6547)
!6570 = !DILocation(line: 399, column: 12, scope: !6547)
!6571 = !DILocation(line: 405, column: 1, scope: !6523)
!6572 = distinct !DISubprogram(name: "close_stream", scope: !6573, file: !6573, line: 56, type: !6574, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !6616)
!6573 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6574 = !DISubroutineType(types: !6575)
!6575 = !{!89, !6576}
!6576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6577, size: 64)
!6577 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !6578)
!6578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !6579)
!6579 = !{!6580, !6581, !6582, !6583, !6584, !6585, !6586, !6587, !6588, !6589, !6590, !6591, !6592, !6600, !6601, !6602, !6603, !6604, !6605, !6606, !6607, !6608, !6609, !6610, !6611, !6612, !6613, !6614, !6615}
!6580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6578, file: !838, line: 242, baseType: !89, size: 32)
!6581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6578, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!6582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6578, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6578, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6578, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6578, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!6586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6578, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!6587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6578, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!6588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6578, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!6589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6578, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!6590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6578, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!6591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6578, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!6592 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6578, file: !838, line: 260, baseType: !6593, size: 64, offset: 768)
!6593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6594, size: 64)
!6594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !6595)
!6595 = !{!6596, !6597, !6599}
!6596 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6594, file: !838, line: 157, baseType: !6593, size: 64)
!6597 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6594, file: !838, line: 158, baseType: !6598, size: 64, offset: 64)
!6598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6578, size: 64)
!6599 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6594, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!6600 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6578, file: !838, line: 262, baseType: !6598, size: 64, offset: 832)
!6601 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6578, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!6602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6578, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6578, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!6604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6578, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!6605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6578, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6578, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!6607 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6578, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!6608 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6578, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6578, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6578, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!6611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6578, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!6612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6578, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!6613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6578, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!6614 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6578, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!6615 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6578, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!6616 = !{!6617, !6618, !6620, !6621}
!6617 = !DILocalVariable(name: "stream", arg: 1, scope: !6572, file: !6573, line: 56, type: !6576)
!6618 = !DILocalVariable(name: "some_pending", scope: !6572, file: !6573, line: 58, type: !6619)
!6619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!6620 = !DILocalVariable(name: "prev_fail", scope: !6572, file: !6573, line: 59, type: !6619)
!6621 = !DILocalVariable(name: "fclose_fail", scope: !6572, file: !6573, line: 60, type: !6619)
!6622 = !DILocation(line: 56, column: 21, scope: !6572)
!6623 = !DILocation(line: 58, column: 30, scope: !6572)
!6624 = !DILocalVariable(name: "__stream", arg: 1, scope: !6625, file: !2254, line: 132, type: !6576)
!6625 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2254, file: !2254, line: 132, type: !6574, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !6626)
!6626 = !{!6624}
!6627 = !DILocation(line: 132, column: 1, scope: !6625, inlinedAt: !6628)
!6628 = distinct !DILocation(line: 59, column: 27, scope: !6572)
!6629 = !DILocation(line: 134, column: 10, scope: !6625, inlinedAt: !6628)
!6630 = !DILocation(line: 59, column: 43, scope: !6572)
!6631 = !DILocation(line: 60, column: 29, scope: !6572)
!6632 = !DILocation(line: 60, column: 45, scope: !6572)
!6633 = !DILocation(line: 70, column: 17, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6572, file: !6573, line: 70, column: 7)
!6635 = !DILocation(line: 70, column: 33, scope: !6636)
!6636 = !DILexicalBlockFile(scope: !6634, file: !6573, discriminator: 1)
!6637 = !DILocation(line: 70, column: 53, scope: !6638)
!6638 = !DILexicalBlockFile(scope: !6634, file: !6573, discriminator: 3)
!6639 = !DILocation(line: 70, column: 7, scope: !6640)
!6640 = !DILexicalBlockFile(scope: !6572, file: !6573, discriminator: 3)
!6641 = !DILocation(line: 72, column: 11, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6634, file: !6573, line: 71, column: 5)
!6643 = !DILocation(line: 73, column: 9, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6642, file: !6573, line: 72, column: 11)
!6645 = !DILocation(line: 73, column: 15, scope: !6644)
!6646 = !DILocation(line: 78, column: 1, scope: !6572)
!6647 = distinct !DISubprogram(name: "locale_charset", scope: !689, file: !689, line: 393, type: !6648, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !345, variables: !6650)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!85}
!6650 = !{!6651, !6652, !6653, !6658}
!6651 = !DILocalVariable(name: "codeset", scope: !6647, file: !689, line: 395, type: !85)
!6652 = !DILocalVariable(name: "aliases", scope: !6647, file: !689, line: 396, type: !85)
!6653 = !DILocalVariable(name: "__s1_len", scope: !6654, file: !689, line: 592, type: !54)
!6654 = distinct !DILexicalBlock(scope: !6655, file: !689, line: 592, column: 9)
!6655 = distinct !DILexicalBlock(scope: !6656, file: !689, line: 592, column: 9)
!6656 = distinct !DILexicalBlock(scope: !6657, file: !689, line: 589, column: 3)
!6657 = distinct !DILexicalBlock(scope: !6647, file: !689, line: 589, column: 3)
!6658 = !DILocalVariable(name: "__s2_len", scope: !6654, file: !689, line: 592, type: !54)
!6659 = !DILocalVariable(name: "buf1", scope: !6660, file: !689, line: 196, type: !6727)
!6660 = distinct !DILexicalBlock(scope: !6661, file: !689, line: 194, column: 21)
!6661 = distinct !DILexicalBlock(scope: !6662, file: !689, line: 193, column: 19)
!6662 = distinct !DILexicalBlock(scope: !6663, file: !689, line: 193, column: 19)
!6663 = distinct !DILexicalBlock(scope: !6664, file: !689, line: 188, column: 17)
!6664 = distinct !DILexicalBlock(scope: !6665, file: !689, line: 181, column: 19)
!6665 = distinct !DILexicalBlock(scope: !6666, file: !689, line: 177, column: 13)
!6666 = distinct !DILexicalBlock(scope: !6667, file: !689, line: 173, column: 15)
!6667 = distinct !DILexicalBlock(scope: !6668, file: !689, line: 161, column: 9)
!6668 = distinct !DILexicalBlock(scope: !6669, file: !689, line: 157, column: 11)
!6669 = distinct !DILexicalBlock(scope: !6670, file: !689, line: 130, column: 5)
!6670 = distinct !DILexicalBlock(scope: !6671, file: !689, line: 129, column: 7)
!6671 = distinct !DISubprogram(name: "get_charset_aliases", scope: !689, file: !689, line: 124, type: !6648, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !345, variables: !6672)
!6672 = !{!6673, !6674, !6675, !6676, !6677, !6679, !6680, !6681, !6682, !6723, !6724, !6725, !6659, !6726, !6730, !6731, !6732}
!6673 = !DILocalVariable(name: "cp", scope: !6671, file: !689, line: 126, type: !85)
!6674 = !DILocalVariable(name: "dir", scope: !6669, file: !689, line: 132, type: !85)
!6675 = !DILocalVariable(name: "base", scope: !6669, file: !689, line: 133, type: !85)
!6676 = !DILocalVariable(name: "file_name", scope: !6669, file: !689, line: 134, type: !88)
!6677 = !DILocalVariable(name: "dir_len", scope: !6678, file: !689, line: 144, type: !54)
!6678 = distinct !DILexicalBlock(scope: !6669, file: !689, line: 143, column: 7)
!6679 = !DILocalVariable(name: "base_len", scope: !6678, file: !689, line: 145, type: !54)
!6680 = !DILocalVariable(name: "add_slash", scope: !6678, file: !689, line: 146, type: !89)
!6681 = !DILocalVariable(name: "fd", scope: !6667, file: !689, line: 162, type: !89)
!6682 = !DILocalVariable(name: "fp", scope: !6665, file: !689, line: 178, type: !6683)
!6683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6684, size: 64)
!6684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !836, line: 49, baseType: !6685)
!6685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !838, line: 241, size: 1728, elements: !6686)
!6686 = !{!6687, !6688, !6689, !6690, !6691, !6692, !6693, !6694, !6695, !6696, !6697, !6698, !6699, !6707, !6708, !6709, !6710, !6711, !6712, !6713, !6714, !6715, !6716, !6717, !6718, !6719, !6720, !6721, !6722}
!6687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6685, file: !838, line: 242, baseType: !89, size: 32)
!6688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6685, file: !838, line: 247, baseType: !88, size: 64, offset: 64)
!6689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6685, file: !838, line: 248, baseType: !88, size: 64, offset: 128)
!6690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6685, file: !838, line: 249, baseType: !88, size: 64, offset: 192)
!6691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6685, file: !838, line: 250, baseType: !88, size: 64, offset: 256)
!6692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6685, file: !838, line: 251, baseType: !88, size: 64, offset: 320)
!6693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6685, file: !838, line: 252, baseType: !88, size: 64, offset: 384)
!6694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6685, file: !838, line: 253, baseType: !88, size: 64, offset: 448)
!6695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6685, file: !838, line: 254, baseType: !88, size: 64, offset: 512)
!6696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6685, file: !838, line: 256, baseType: !88, size: 64, offset: 576)
!6697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6685, file: !838, line: 257, baseType: !88, size: 64, offset: 640)
!6698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6685, file: !838, line: 258, baseType: !88, size: 64, offset: 704)
!6699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6685, file: !838, line: 260, baseType: !6700, size: 64, offset: 768)
!6700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6701, size: 64)
!6701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !838, line: 156, size: 192, elements: !6702)
!6702 = !{!6703, !6704, !6706}
!6703 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6701, file: !838, line: 157, baseType: !6700, size: 64)
!6704 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6701, file: !838, line: 158, baseType: !6705, size: 64, offset: 64)
!6705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6685, size: 64)
!6706 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6701, file: !838, line: 162, baseType: !89, size: 32, offset: 128)
!6707 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6685, file: !838, line: 262, baseType: !6705, size: 64, offset: 832)
!6708 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6685, file: !838, line: 264, baseType: !89, size: 32, offset: 896)
!6709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6685, file: !838, line: 268, baseType: !89, size: 32, offset: 928)
!6710 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6685, file: !838, line: 270, baseType: !864, size: 64, offset: 960)
!6711 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6685, file: !838, line: 274, baseType: !90, size: 16, offset: 1024)
!6712 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6685, file: !838, line: 275, baseType: !868, size: 8, offset: 1040)
!6713 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6685, file: !838, line: 276, baseType: !870, size: 8, offset: 1048)
!6714 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6685, file: !838, line: 280, baseType: !872, size: 64, offset: 1088)
!6715 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6685, file: !838, line: 289, baseType: !875, size: 64, offset: 1152)
!6716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6685, file: !838, line: 297, baseType: !52, size: 64, offset: 1216)
!6717 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6685, file: !838, line: 298, baseType: !52, size: 64, offset: 1280)
!6718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6685, file: !838, line: 299, baseType: !52, size: 64, offset: 1344)
!6719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6685, file: !838, line: 300, baseType: !52, size: 64, offset: 1408)
!6720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6685, file: !838, line: 302, baseType: !54, size: 64, offset: 1472)
!6721 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6685, file: !838, line: 303, baseType: !89, size: 32, offset: 1536)
!6722 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6685, file: !838, line: 305, baseType: !883, size: 160, offset: 1568)
!6723 = !DILocalVariable(name: "res_ptr", scope: !6663, file: !689, line: 190, type: !88)
!6724 = !DILocalVariable(name: "res_size", scope: !6663, file: !689, line: 191, type: !54)
!6725 = !DILocalVariable(name: "c", scope: !6660, file: !689, line: 195, type: !89)
!6726 = !DILocalVariable(name: "buf2", scope: !6660, file: !689, line: 197, type: !6727)
!6727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 408, elements: !6728)
!6728 = !{!6729}
!6729 = !DISubrange(count: 51)
!6730 = !DILocalVariable(name: "l1", scope: !6660, file: !689, line: 198, type: !54)
!6731 = !DILocalVariable(name: "l2", scope: !6660, file: !689, line: 198, type: !54)
!6732 = !DILocalVariable(name: "old_res_ptr", scope: !6660, file: !689, line: 199, type: !88)
!6733 = !DILocation(line: 196, column: 28, scope: !6660, inlinedAt: !6734)
!6734 = distinct !DILocation(line: 589, column: 18, scope: !6657)
!6735 = !DILocation(line: 197, column: 28, scope: !6660, inlinedAt: !6734)
!6736 = !DILocation(line: 403, column: 13, scope: !6647)
!6737 = !DILocation(line: 395, column: 15, scope: !6647)
!6738 = !DILocation(line: 584, column: 15, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6647, file: !689, line: 584, column: 7)
!6740 = !DILocation(line: 584, column: 7, scope: !6647)
!6741 = !DILocation(line: 128, column: 8, scope: !6671, inlinedAt: !6734)
!6742 = !DILocation(line: 126, column: 15, scope: !6671, inlinedAt: !6734)
!6743 = !DILocation(line: 129, column: 10, scope: !6670, inlinedAt: !6734)
!6744 = !DILocation(line: 129, column: 7, scope: !6671, inlinedAt: !6734)
!6745 = !DILocation(line: 138, column: 13, scope: !6669, inlinedAt: !6734)
!6746 = !DILocation(line: 132, column: 19, scope: !6669, inlinedAt: !6734)
!6747 = !DILocation(line: 139, column: 15, scope: !6748, inlinedAt: !6734)
!6748 = distinct !DILexicalBlock(scope: !6669, file: !689, line: 139, column: 11)
!6749 = !DILocation(line: 139, column: 23, scope: !6748, inlinedAt: !6734)
!6750 = !DILocation(line: 139, column: 26, scope: !6751, inlinedAt: !6734)
!6751 = !DILexicalBlockFile(scope: !6748, file: !689, discriminator: 1)
!6752 = !DILocation(line: 139, column: 33, scope: !6751, inlinedAt: !6734)
!6753 = !DILocation(line: 139, column: 11, scope: !6754, inlinedAt: !6734)
!6754 = !DILexicalBlockFile(scope: !6669, file: !689, discriminator: 1)
!6755 = !DILocation(line: 140, column: 9, scope: !6748, inlinedAt: !6734)
!6756 = !DILocation(line: 144, column: 26, scope: !6678, inlinedAt: !6734)
!6757 = !DILocation(line: 144, column: 16, scope: !6678, inlinedAt: !6734)
!6758 = !DILocation(line: 145, column: 16, scope: !6678, inlinedAt: !6734)
!6759 = !DILocation(line: 146, column: 34, scope: !6678, inlinedAt: !6734)
!6760 = !DILocation(line: 146, column: 38, scope: !6678, inlinedAt: !6734)
!6761 = !DILocation(line: 146, column: 42, scope: !6762, inlinedAt: !6734)
!6762 = !DILexicalBlockFile(scope: !6678, file: !689, discriminator: 1)
!6763 = !DILocation(line: 146, column: 41, scope: !6762, inlinedAt: !6734)
!6764 = !DILocation(line: 147, column: 48, scope: !6678, inlinedAt: !6734)
!6765 = !DILocation(line: 147, column: 46, scope: !6678, inlinedAt: !6734)
!6766 = !DILocation(line: 147, column: 69, scope: !6678, inlinedAt: !6734)
!6767 = !DILocation(line: 147, column: 30, scope: !6678, inlinedAt: !6734)
!6768 = !DILocation(line: 134, column: 13, scope: !6669, inlinedAt: !6734)
!6769 = !DILocation(line: 148, column: 13, scope: !6678, inlinedAt: !6734)
!6770 = !DILocation(line: 150, column: 13, scope: !6771, inlinedAt: !6734)
!6771 = distinct !DILexicalBlock(scope: !6772, file: !689, line: 149, column: 11)
!6772 = distinct !DILexicalBlock(scope: !6678, file: !689, line: 148, column: 13)
!6773 = !DILocation(line: 151, column: 17, scope: !6771, inlinedAt: !6734)
!6774 = !DILocation(line: 152, column: 34, scope: !6775, inlinedAt: !6734)
!6775 = distinct !DILexicalBlock(scope: !6771, file: !689, line: 151, column: 17)
!6776 = !DILocation(line: 153, column: 41, scope: !6771, inlinedAt: !6734)
!6777 = !DILocation(line: 153, column: 13, scope: !6771, inlinedAt: !6734)
!6778 = !DILocation(line: 157, column: 11, scope: !6669, inlinedAt: !6734)
!6779 = !DILocation(line: 171, column: 16, scope: !6667, inlinedAt: !6734)
!6780 = !DILocation(line: 162, column: 15, scope: !6667, inlinedAt: !6734)
!6781 = !DILocation(line: 173, column: 18, scope: !6666, inlinedAt: !6734)
!6782 = !DILocation(line: 173, column: 15, scope: !6667, inlinedAt: !6734)
!6783 = !DILocation(line: 180, column: 20, scope: !6665, inlinedAt: !6734)
!6784 = !DILocation(line: 178, column: 21, scope: !6665, inlinedAt: !6734)
!6785 = !DILocation(line: 181, column: 22, scope: !6664, inlinedAt: !6734)
!6786 = !DILocation(line: 181, column: 19, scope: !6665, inlinedAt: !6734)
!6787 = !DILocation(line: 190, column: 25, scope: !6663, inlinedAt: !6734)
!6788 = !DILocation(line: 184, column: 19, scope: !6789, inlinedAt: !6734)
!6789 = distinct !DILexicalBlock(scope: !6664, file: !689, line: 182, column: 17)
!6790 = !DILocation(line: 186, column: 17, scope: !6789, inlinedAt: !6734)
!6791 = !DILocation(line: 191, column: 26, scope: !6663, inlinedAt: !6734)
!6792 = !DILocation(line: 196, column: 23, scope: !6660, inlinedAt: !6734)
!6793 = !DILocation(line: 197, column: 23, scope: !6660, inlinedAt: !6734)
!6794 = !DILocalVariable(name: "__fp", arg: 1, scope: !6795, file: !2254, line: 63, type: !6683)
!6795 = distinct !DISubprogram(name: "getc_unlocked", scope: !2254, file: !2254, line: 63, type: !6796, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !345, variables: !6798)
!6796 = !DISubroutineType(types: !6797)
!6797 = !{!89, !6683}
!6798 = !{!6794}
!6799 = !DILocation(line: 63, column: 22, scope: !6795, inlinedAt: !6800)
!6800 = distinct !DILocation(line: 201, column: 27, scope: !6660, inlinedAt: !6734)
!6801 = !DILocation(line: 65, column: 10, scope: !6795, inlinedAt: !6800)
!6802 = !DILocation(line: 65, column: 10, scope: !6803, inlinedAt: !6800)
!6803 = !DILexicalBlockFile(scope: !6795, file: !2254, discriminator: 1)
!6804 = !DILocation(line: 65, column: 10, scope: !6805, inlinedAt: !6800)
!6805 = !DILexicalBlockFile(scope: !6795, file: !2254, discriminator: 2)
!6806 = !DILocation(line: 65, column: 10, scope: !6807, inlinedAt: !6800)
!6807 = !DILexicalBlockFile(scope: !6795, file: !2254, discriminator: 3)
!6808 = !DILocation(line: 195, column: 27, scope: !6660, inlinedAt: !6734)
!6809 = !DILocation(line: 202, column: 27, scope: !6660, inlinedAt: !6734)
!6810 = !DILocation(line: 63, column: 22, scope: !6795, inlinedAt: !6811)
!6811 = distinct !DILocation(line: 210, column: 33, scope: !6812, inlinedAt: !6734)
!6812 = distinct !DILexicalBlock(scope: !6813, file: !689, line: 207, column: 25)
!6813 = distinct !DILexicalBlock(scope: !6660, file: !689, line: 206, column: 27)
!6814 = !DILocation(line: 65, column: 10, scope: !6795, inlinedAt: !6811)
!6815 = !DILocation(line: 65, column: 10, scope: !6803, inlinedAt: !6811)
!6816 = !DILocation(line: 65, column: 10, scope: !6805, inlinedAt: !6811)
!6817 = !DILocation(line: 65, column: 10, scope: !6807, inlinedAt: !6811)
!6818 = !DILocation(line: 210, column: 29, scope: !6819, inlinedAt: !6734)
!6819 = !DILexicalBlockFile(scope: !6812, file: !689, discriminator: 1)
!6820 = distinct !{!6820, !6821, !6822}
!6821 = !DILocation(line: 193, column: 19, scope: !6662)
!6822 = !DILocation(line: 241, column: 21, scope: !6662)
!6823 = !DILocation(line: 216, column: 23, scope: !6660, inlinedAt: !6734)
!6824 = !DILocation(line: 217, column: 27, scope: !6825, inlinedAt: !6734)
!6825 = distinct !DILexicalBlock(scope: !6660, file: !689, line: 217, column: 27)
!6826 = !DILocation(line: 217, column: 64, scope: !6825, inlinedAt: !6734)
!6827 = !DILocation(line: 217, column: 27, scope: !6660, inlinedAt: !6734)
!6828 = !DILocation(line: 219, column: 28, scope: !6660, inlinedAt: !6734)
!6829 = !DILocation(line: 198, column: 30, scope: !6660, inlinedAt: !6734)
!6830 = !DILocation(line: 220, column: 28, scope: !6660, inlinedAt: !6734)
!6831 = !DILocation(line: 198, column: 34, scope: !6660, inlinedAt: !6734)
!6832 = !DILocation(line: 199, column: 29, scope: !6660, inlinedAt: !6734)
!6833 = !DILocation(line: 222, column: 36, scope: !6834, inlinedAt: !6734)
!6834 = distinct !DILexicalBlock(scope: !6660, file: !689, line: 222, column: 27)
!6835 = !DILocation(line: 222, column: 27, scope: !6660, inlinedAt: !6734)
!6836 = !DILocation(line: 225, column: 63, scope: !6837, inlinedAt: !6734)
!6837 = distinct !DILexicalBlock(scope: !6834, file: !689, line: 223, column: 25)
!6838 = !DILocation(line: 225, column: 46, scope: !6837, inlinedAt: !6734)
!6839 = !DILocation(line: 226, column: 25, scope: !6837, inlinedAt: !6734)
!6840 = !DILocation(line: 229, column: 36, scope: !6841, inlinedAt: !6734)
!6841 = distinct !DILexicalBlock(scope: !6834, file: !689, line: 228, column: 25)
!6842 = !DILocation(line: 230, column: 73, scope: !6841, inlinedAt: !6734)
!6843 = !DILocation(line: 230, column: 46, scope: !6841, inlinedAt: !6734)
!6844 = !DILocation(line: 232, column: 35, scope: !6845, inlinedAt: !6734)
!6845 = distinct !DILexicalBlock(scope: !6660, file: !689, line: 232, column: 27)
!6846 = !DILocation(line: 232, column: 27, scope: !6660, inlinedAt: !6734)
!6847 = !DILocation(line: 236, column: 27, scope: !6848, inlinedAt: !6734)
!6848 = distinct !DILexicalBlock(scope: !6845, file: !689, line: 233, column: 25)
!6849 = !DILocation(line: 237, column: 27, scope: !6848, inlinedAt: !6734)
!6850 = !DILocation(line: 239, column: 39, scope: !6660, inlinedAt: !6734)
!6851 = !DILocation(line: 239, column: 50, scope: !6660, inlinedAt: !6734)
!6852 = !DILocation(line: 239, column: 61, scope: !6660, inlinedAt: !6734)
!6853 = !DILocalVariable(name: "__dest", arg: 1, scope: !6854, file: !6855, line: 107, type: !6858)
!6854 = distinct !DISubprogram(name: "strcpy", scope: !6855, file: !6855, line: 107, type: !6856, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !345, variables: !6860)
!6855 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6856 = !DISubroutineType(types: !6857)
!6857 = !{!88, !6858, !6859}
!6858 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!6859 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!6860 = !{!6853, !6861}
!6861 = !DILocalVariable(name: "__src", arg: 2, scope: !6854, file: !6855, line: 107, type: !6859)
!6862 = !DILocation(line: 107, column: 1, scope: !6854, inlinedAt: !6863)
!6863 = distinct !DILocation(line: 239, column: 23, scope: !6660, inlinedAt: !6734)
!6864 = !DILocation(line: 109, column: 49, scope: !6854, inlinedAt: !6863)
!6865 = !DILocation(line: 109, column: 10, scope: !6854, inlinedAt: !6863)
!6866 = !DILocation(line: 107, column: 1, scope: !6854, inlinedAt: !6867)
!6867 = distinct !DILocation(line: 240, column: 23, scope: !6660, inlinedAt: !6734)
!6868 = !DILocation(line: 109, column: 49, scope: !6854, inlinedAt: !6867)
!6869 = !DILocation(line: 109, column: 10, scope: !6854, inlinedAt: !6867)
!6870 = !DILocation(line: 241, column: 21, scope: !6661, inlinedAt: !6734)
!6871 = !DILocation(line: 242, column: 19, scope: !6663, inlinedAt: !6734)
!6872 = !DILocation(line: 243, column: 32, scope: !6873, inlinedAt: !6734)
!6873 = distinct !DILexicalBlock(scope: !6663, file: !689, line: 243, column: 23)
!6874 = !DILocation(line: 243, column: 23, scope: !6663, inlinedAt: !6734)
!6875 = !DILocation(line: 247, column: 33, scope: !6876, inlinedAt: !6734)
!6876 = distinct !DILexicalBlock(scope: !6873, file: !689, line: 246, column: 21)
!6877 = !DILocation(line: 247, column: 45, scope: !6876, inlinedAt: !6734)
!6878 = !DILocation(line: 253, column: 11, scope: !6667, inlinedAt: !6734)
!6879 = !DILocation(line: 377, column: 23, scope: !6669, inlinedAt: !6734)
!6880 = !DILocation(line: 378, column: 5, scope: !6669, inlinedAt: !6734)
!6881 = !DILocation(line: 396, column: 15, scope: !6647)
!6882 = !DILocation(line: 590, column: 8, scope: !6656)
!6883 = !DILocation(line: 590, column: 17, scope: !6656)
!6884 = !DILocation(line: 589, column: 3, scope: !6885)
!6885 = !DILexicalBlockFile(scope: !6657, file: !689, discriminator: 1)
!6886 = !DILocation(line: 592, column: 9, scope: !6654)
!6887 = !DILocation(line: 592, column: 35, scope: !6655)
!6888 = !DILocation(line: 593, column: 9, scope: !6655)
!6889 = !DILocation(line: 593, column: 24, scope: !6890)
!6890 = !DILexicalBlockFile(scope: !6655, file: !689, discriminator: 1)
!6891 = !DILocation(line: 593, column: 31, scope: !6890)
!6892 = !DILocation(line: 593, column: 34, scope: !6893)
!6893 = !DILexicalBlockFile(scope: !6655, file: !689, discriminator: 2)
!6894 = !DILocation(line: 593, column: 45, scope: !6893)
!6895 = !DILocation(line: 592, column: 9, scope: !6896)
!6896 = !DILexicalBlockFile(scope: !6656, file: !689, discriminator: 1)
!6897 = !DILocation(line: 595, column: 29, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6655, file: !689, line: 594, column: 7)
!6899 = !DILocation(line: 595, column: 27, scope: !6898)
!6900 = !DILocation(line: 595, column: 46, scope: !6898)
!6901 = !DILocation(line: 596, column: 9, scope: !6898)
!6902 = !DILocation(line: 591, column: 19, scope: !6656)
!6903 = !DILocation(line: 591, column: 36, scope: !6656)
!6904 = !DILocation(line: 591, column: 16, scope: !6656)
!6905 = !DILocation(line: 591, column: 52, scope: !6896)
!6906 = !DILocation(line: 591, column: 69, scope: !6656)
!6907 = !DILocation(line: 591, column: 49, scope: !6656)
!6908 = distinct !{!6908, !6909, !6910}
!6909 = !DILocation(line: 589, column: 3, scope: !6657)
!6910 = !DILocation(line: 597, column: 7, scope: !6657)
!6911 = !DILocation(line: 602, column: 7, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6647, file: !689, line: 602, column: 7)
!6913 = !DILocation(line: 602, column: 18, scope: !6912)
!6914 = !DILocation(line: 602, column: 7, scope: !6647)
!6915 = !DILocation(line: 612, column: 3, scope: !6647)
!6916 = distinct !DISubprogram(name: "memcoll", scope: !6917, file: !6917, line: 66, type: !5885, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !6918)
!6917 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6918 = !{!6919, !6920, !6921, !6922, !6923, !6924, !6927}
!6919 = !DILocalVariable(name: "s1", arg: 1, scope: !6916, file: !6917, line: 66, type: !88)
!6920 = !DILocalVariable(name: "s1len", arg: 2, scope: !6916, file: !6917, line: 66, type: !54)
!6921 = !DILocalVariable(name: "s2", arg: 3, scope: !6916, file: !6917, line: 66, type: !88)
!6922 = !DILocalVariable(name: "s2len", arg: 4, scope: !6916, file: !6917, line: 66, type: !54)
!6923 = !DILocalVariable(name: "diff", scope: !6916, file: !6917, line: 68, type: !89)
!6924 = !DILocalVariable(name: "n1", scope: !6925, file: !6917, line: 81, type: !87)
!6925 = distinct !DILexicalBlock(scope: !6926, file: !6917, line: 80, column: 5)
!6926 = distinct !DILexicalBlock(scope: !6916, file: !6917, line: 74, column: 7)
!6927 = !DILocalVariable(name: "n2", scope: !6925, file: !6917, line: 82, type: !87)
!6928 = !DILocation(line: 66, column: 16, scope: !6916)
!6929 = !DILocation(line: 66, column: 27, scope: !6916)
!6930 = !DILocation(line: 66, column: 40, scope: !6916)
!6931 = !DILocation(line: 66, column: 51, scope: !6916)
!6932 = !DILocation(line: 74, column: 13, scope: !6926)
!6933 = !DILocation(line: 74, column: 22, scope: !6926)
!6934 = !DILocation(line: 74, column: 25, scope: !6935)
!6935 = !DILexicalBlockFile(scope: !6926, file: !6917, discriminator: 1)
!6936 = !DILocation(line: 74, column: 48, scope: !6935)
!6937 = !DILocation(line: 74, column: 7, scope: !6938)
!6938 = !DILexicalBlockFile(scope: !6916, file: !6917, discriminator: 1)
!6939 = !DILocation(line: 76, column: 7, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6926, file: !6917, line: 75, column: 5)
!6941 = !DILocation(line: 76, column: 13, scope: !6940)
!6942 = !DILocation(line: 68, column: 7, scope: !6916)
!6943 = !DILocation(line: 78, column: 5, scope: !6940)
!6944 = !DILocation(line: 81, column: 17, scope: !6925)
!6945 = !DILocation(line: 81, column: 12, scope: !6925)
!6946 = !DILocation(line: 82, column: 17, scope: !6925)
!6947 = !DILocation(line: 82, column: 12, scope: !6925)
!6948 = !DILocation(line: 84, column: 17, scope: !6925)
!6949 = !DILocation(line: 85, column: 17, scope: !6925)
!6950 = !DILocation(line: 87, column: 38, scope: !6925)
!6951 = !DILocation(line: 87, column: 53, scope: !6925)
!6952 = !DILocalVariable(name: "s1", arg: 1, scope: !6953, file: !6917, line: 35, type: !85)
!6953 = distinct !DISubprogram(name: "strcoll_loop", scope: !6917, file: !6917, line: 35, type: !5933, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !6954)
!6954 = !{!6952, !6955, !6956, !6957, !6958, !6959, !6961}
!6955 = !DILocalVariable(name: "s1size", arg: 2, scope: !6953, file: !6917, line: 35, type: !54)
!6956 = !DILocalVariable(name: "s2", arg: 3, scope: !6953, file: !6917, line: 35, type: !85)
!6957 = !DILocalVariable(name: "s2size", arg: 4, scope: !6953, file: !6917, line: 35, type: !54)
!6958 = !DILocalVariable(name: "diff", scope: !6953, file: !6917, line: 37, type: !89)
!6959 = !DILocalVariable(name: "size1", scope: !6960, file: !6917, line: 44, type: !54)
!6960 = distinct !DILexicalBlock(scope: !6953, file: !6917, line: 40, column: 5)
!6961 = !DILocalVariable(name: "size2", scope: !6960, file: !6917, line: 45, type: !54)
!6962 = !DILocation(line: 35, column: 27, scope: !6953, inlinedAt: !6963)
!6963 = distinct !DILocation(line: 87, column: 14, scope: !6925)
!6964 = !DILocation(line: 35, column: 38, scope: !6953, inlinedAt: !6963)
!6965 = !DILocation(line: 35, column: 58, scope: !6953, inlinedAt: !6963)
!6966 = !DILocation(line: 35, column: 69, scope: !6953, inlinedAt: !6963)
!6967 = !DILocation(line: 39, column: 13, scope: !6968, inlinedAt: !6963)
!6968 = !DILexicalBlockFile(scope: !6953, file: !6917, discriminator: 1)
!6969 = !DILocation(line: 39, column: 3, scope: !6953, inlinedAt: !6963)
!6970 = !DILocation(line: 39, column: 19, scope: !6968, inlinedAt: !6963)
!6971 = !DILocation(line: 39, column: 32, scope: !6972, inlinedAt: !6963)
!6972 = !DILexicalBlockFile(scope: !6953, file: !6917, discriminator: 5)
!6973 = !DILocation(line: 37, column: 7, scope: !6953, inlinedAt: !6963)
!6974 = !DILocation(line: 39, column: 30, scope: !6968, inlinedAt: !6963)
!6975 = !DILocation(line: 39, column: 3, scope: !6976, inlinedAt: !6963)
!6976 = !DILexicalBlockFile(scope: !6953, file: !6917, discriminator: 3)
!6977 = !DILocation(line: 44, column: 22, scope: !6960, inlinedAt: !6963)
!6978 = !DILocation(line: 44, column: 34, scope: !6960, inlinedAt: !6963)
!6979 = !DILocation(line: 44, column: 14, scope: !6960, inlinedAt: !6963)
!6980 = !DILocation(line: 45, column: 22, scope: !6960, inlinedAt: !6963)
!6981 = !DILocation(line: 45, column: 34, scope: !6960, inlinedAt: !6963)
!6982 = !DILocation(line: 45, column: 14, scope: !6960, inlinedAt: !6963)
!6983 = !DILocation(line: 48, column: 14, scope: !6960, inlinedAt: !6963)
!6984 = !DILocation(line: 49, column: 14, scope: !6960, inlinedAt: !6963)
!6985 = !DILocation(line: 51, column: 18, scope: !6986, inlinedAt: !6963)
!6986 = distinct !DILexicalBlock(scope: !6960, file: !6917, line: 51, column: 11)
!6987 = !DILocation(line: 51, column: 11, scope: !6960, inlinedAt: !6963)
!6988 = !DILocation(line: 52, column: 26, scope: !6986, inlinedAt: !6963)
!6989 = !DILocation(line: 52, column: 16, scope: !6986, inlinedAt: !6963)
!6990 = !DILocation(line: 47, column: 10, scope: !6960, inlinedAt: !6963)
!6991 = !DILocation(line: 46, column: 10, scope: !6960, inlinedAt: !6963)
!6992 = !DILocation(line: 53, column: 18, scope: !6993, inlinedAt: !6963)
!6993 = distinct !DILexicalBlock(scope: !6960, file: !6917, line: 53, column: 11)
!6994 = distinct !{!6994, !6995, !6996}
!6995 = !DILocation(line: 39, column: 3, scope: !6953)
!6996 = !DILocation(line: 55, column: 5, scope: !6953)
!6997 = !DILocation(line: 89, column: 17, scope: !6925)
!6998 = !DILocation(line: 90, column: 17, scope: !6925)
!6999 = !DILocation(line: 93, column: 3, scope: !6916)
!7000 = distinct !DISubprogram(name: "memcoll0", scope: !6917, file: !6917, line: 102, type: !5933, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !7001)
!7001 = !{!7002, !7003, !7004, !7005}
!7002 = !DILocalVariable(name: "s1", arg: 1, scope: !7000, file: !6917, line: 102, type: !85)
!7003 = !DILocalVariable(name: "s1size", arg: 2, scope: !7000, file: !6917, line: 102, type: !54)
!7004 = !DILocalVariable(name: "s2", arg: 3, scope: !7000, file: !6917, line: 102, type: !85)
!7005 = !DILocalVariable(name: "s2size", arg: 4, scope: !7000, file: !6917, line: 102, type: !54)
!7006 = !DILocation(line: 102, column: 23, scope: !7000)
!7007 = !DILocation(line: 102, column: 34, scope: !7000)
!7008 = !DILocation(line: 102, column: 54, scope: !7000)
!7009 = !DILocation(line: 102, column: 65, scope: !7000)
!7010 = !DILocation(line: 104, column: 14, scope: !7011)
!7011 = distinct !DILexicalBlock(scope: !7000, file: !6917, line: 104, column: 7)
!7012 = !DILocation(line: 104, column: 24, scope: !7011)
!7013 = !DILocation(line: 104, column: 27, scope: !7014)
!7014 = !DILexicalBlockFile(scope: !7011, file: !6917, discriminator: 1)
!7015 = !DILocation(line: 104, column: 51, scope: !7014)
!7016 = !DILocation(line: 104, column: 7, scope: !7017)
!7017 = !DILexicalBlockFile(scope: !7000, file: !6917, discriminator: 1)
!7018 = !DILocation(line: 106, column: 7, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !7011, file: !6917, line: 105, column: 5)
!7020 = !DILocation(line: 106, column: 13, scope: !7019)
!7021 = !DILocation(line: 107, column: 7, scope: !7019)
!7022 = !DILocation(line: 35, column: 27, scope: !6953, inlinedAt: !7023)
!7023 = distinct !DILocation(line: 110, column: 12, scope: !7011)
!7024 = !DILocation(line: 35, column: 38, scope: !6953, inlinedAt: !7023)
!7025 = !DILocation(line: 35, column: 58, scope: !6953, inlinedAt: !7023)
!7026 = !DILocation(line: 35, column: 69, scope: !6953, inlinedAt: !7023)
!7027 = !DILocation(line: 39, column: 13, scope: !6968, inlinedAt: !7023)
!7028 = !DILocation(line: 39, column: 3, scope: !6953, inlinedAt: !7023)
!7029 = !DILocation(line: 39, column: 19, scope: !6968, inlinedAt: !7023)
!7030 = !DILocation(line: 39, column: 32, scope: !6972, inlinedAt: !7023)
!7031 = !DILocation(line: 37, column: 7, scope: !6953, inlinedAt: !7023)
!7032 = !DILocation(line: 39, column: 30, scope: !6968, inlinedAt: !7023)
!7033 = !DILocation(line: 39, column: 3, scope: !6976, inlinedAt: !7023)
!7034 = !DILocation(line: 44, column: 22, scope: !6960, inlinedAt: !7023)
!7035 = !DILocation(line: 44, column: 34, scope: !6960, inlinedAt: !7023)
!7036 = !DILocation(line: 44, column: 14, scope: !6960, inlinedAt: !7023)
!7037 = !DILocation(line: 45, column: 22, scope: !6960, inlinedAt: !7023)
!7038 = !DILocation(line: 45, column: 34, scope: !6960, inlinedAt: !7023)
!7039 = !DILocation(line: 45, column: 14, scope: !6960, inlinedAt: !7023)
!7040 = !DILocation(line: 48, column: 14, scope: !6960, inlinedAt: !7023)
!7041 = !DILocation(line: 49, column: 14, scope: !6960, inlinedAt: !7023)
!7042 = !DILocation(line: 51, column: 18, scope: !6986, inlinedAt: !7023)
!7043 = !DILocation(line: 51, column: 11, scope: !6960, inlinedAt: !7023)
!7044 = !DILocation(line: 52, column: 26, scope: !6986, inlinedAt: !7023)
!7045 = !DILocation(line: 52, column: 16, scope: !6986, inlinedAt: !7023)
!7046 = !DILocation(line: 47, column: 10, scope: !6960, inlinedAt: !7023)
!7047 = !DILocation(line: 46, column: 10, scope: !6960, inlinedAt: !7023)
!7048 = !DILocation(line: 53, column: 18, scope: !6993, inlinedAt: !7023)
!7049 = !DILocation(line: 111, column: 1, scope: !7000)
