; ModuleID = 'coreutils-8.27/src/join.bc'
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
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1
@print_pairables = internal unnamed_addr global i1 false, align 1
@seen_unpairable = internal unnamed_addr global i1 false, align 1
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1
@check_input_order = internal unnamed_addr global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"-a:e:i1:2:j:o:t:v:z\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"invalid field number: %s\00", align 1
@print_unpairables_1 = internal unnamed_addr global i8 0, align 1
@print_unpairables_2 = internal unnamed_addr global i8 0, align 1
@empty_filler = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [44 x i8] c"conflicting empty-field replacement strings\00", align 1
@ignore_case = internal unnamed_addr global i1 false, align 1
@join_field_1 = internal global i64 -1, align 8
@.str.52 = private unnamed_addr constant [34 x i8] c"incompatible join fields %lu, %lu\00", align 1
@join_field_2 = internal global i64 -1, align 8
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@autoformat = internal unnamed_addr global i1 false, align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"multi-character tab %s\00", align 1
@tab = internal unnamed_addr global i32 -1, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"incompatible tabs\00", align 1
@eolchar = internal unnamed_addr global i1 false, align 1
@join_header_lines = internal unnamed_addr global i1 false, align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Mike Haertel\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@g_names = internal global [2 x i8*] zeroinitializer, align 16
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"both files cannot be standard input\00", align 1
@autocount_1 = internal unnamed_addr global i64 0, align 8
@autocount_2 = internal unnamed_addr global i64 0, align 8
@uni_blank = internal global %struct.line zeroinitializer, align 8
@prevline = internal unnamed_addr global [2 x %struct.line*] zeroinitializer, align 16
@outlist_head = internal global %struct.outlist zeroinitializer, align 8
@spareline = internal unnamed_addr global [2 x %struct.line*] zeroinitializer, align 16
@.str.60 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@line_no = internal unnamed_addr global [2 x i64] zeroinitializer, align 16
@.str.61 = private unnamed_addr constant [28 x i8] c"%s:%lu: is not sorted: %.*s\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"invalid field specifier: %s\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"invalid file number in field spec: %s\00", align 1
@outlist_end = internal unnamed_addr global %struct.outlist* @outlist_head, align 8
@.str.45 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.1.37 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.125 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.129 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.130 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.131 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.135 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.153 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.154 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.155 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.156 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.157 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.158 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.2, i64 0, i64 0), i32 5) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 5) #11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.4, i64 0, i64 0), i32 5) #11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([491 x i8], [491 x i8]* @.str.6, i64 0, i64 0), i32 5) #11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 5) #11
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #11
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #11
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([818 x i8], [818 x i8]* @.str.10, i64 0, i64 0), i32 5) #11
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #11
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #11
  %41 = tail call i8* @setlocale(i32 5, i8* null) #11
  %42 = icmp eq i8* %41, null
  br i1 %42, label %49, label %43

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.41, i64 0, i64 0), i32 5) #11
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #11
  br label %49

; <label>:49:                                     ; preds = %8, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #11
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #11
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #11
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #11
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
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %14) #11
  %15 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %15) #11
  store i32 0, i32* %8, align 4
  %16 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %16) #11
  %17 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %17) #11
  store i64 0, i64* %10, align 8
  %18 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %18) #11
  store i32 0, i32* %12, align 4
  %19 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %19) #11
  %20 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %21 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #11
  %22 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #11
  %23 = tail call zeroext i1 @hard_locale(i32 3) #11
  %24 = zext i1 %23 to i8
  store i8 %24, i8* @hard_LC_COLLATE, align 1
  %25 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11
  %26 = tail call i32 @atexit(void ()* nonnull @free_spareline) #11
  store i1 true, i1* @print_pairables, align 1
  store i1 false, i1* @seen_unpairable, align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  store i32 0, i32* @check_input_order, align 4
  %27 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %225, label %29

; <label>:29:                                     ; preds = %2
  %30 = bitcast i64* %13 to i8*
  %31 = bitcast i64* %6 to i8*
  %32 = bitcast i64* %5 to i8*
  %33 = bitcast i64* %4 to i8*
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %35 = bitcast i64* %10 to i32*
  br label %36

; <label>:36:                                     ; preds = %29, %220
  %37 = phi i32 [ %27, %29 ], [ %222, %220 ]
  store i32 0, i32* %7, align 4
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
  ]

; <label>:38:                                     ; preds = %36
  store i1 false, i1* @print_pairables, align 1
  br label %39

; <label>:39:                                     ; preds = %36, %38
  call void @llvm.lifetime.start(i64 8, i8* nonnull %30) #11
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @xstrtoul(i8* %40, i8** null, i32 10, i64* nonnull %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %39
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, -1
  %46 = icmp ugt i64 %45, 1
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %39, %43
  %48 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i8* @quote(i8* %49) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48, i8* %50) #11
  unreachable

; <label>:51:                                     ; preds = %43
  %52 = icmp eq i64 %44, 1
  %53 = select i1 %52, i8* @print_unpairables_1, i8* @print_unpairables_2
  store i8 1, i8* %53, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %30) #11
  br label %220

; <label>:54:                                     ; preds = %36
  %55 = load i8*, i8** @empty_filler, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %54
  %58 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  br label %66

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i32 @strcmp(i8* nonnull %55, i8* %60) #11
  %62 = icmp eq i32 %61, 0
  %63 = ptrtoint i8* %60 to i64
  br i1 %62, label %66, label %64

; <label>:64:                                     ; preds = %59
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %65) #11
  unreachable

; <label>:66:                                     ; preds = %57, %59
  %67 = phi i64 [ %58, %57 ], [ %63, %59 ]
  store i64 %67, i64* bitcast (i8** @empty_filler to i64*), align 8
  br label %220

; <label>:68:                                     ; preds = %36
  store i1 true, i1* @ignore_case, align 1
  br label %220

; <label>:69:                                     ; preds = %36
  %70 = load i8*, i8** @optarg, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %31) #11
  %71 = call i32 @xstrtoul(i8* %70, i8** null, i32 10, i64* nonnull %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %69
  store i64 -1, i64* %6, align 8
  br label %82

; <label>:74:                                     ; preds = %69
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i32 %71, 0
  %77 = icmp eq i64 %75, 0
  %78 = or i1 %76, %77
  br i1 %78, label %79, label %82

; <label>:79:                                     ; preds = %74
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %81 = call i8* @quote(i8* %70) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %80, i8* %81) #11
  unreachable

; <label>:82:                                     ; preds = %73, %74
  %83 = phi i64 [ %75, %74 ], [ -1, %73 ]
  %84 = add i64 %83, -1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31) #11
  %85 = load i64, i64* @join_field_1, align 8
  %86 = icmp eq i64 %85, -1
  %87 = icmp eq i64 %85, %84
  %88 = or i1 %86, %87
  br i1 %88, label %92, label %89

; <label>:89:                                     ; preds = %82
  %90 = add i64 %85, 1
  %91 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %91, i64 %90, i64 %83) #11
  unreachable

; <label>:92:                                     ; preds = %82
  store i64 %84, i64* @join_field_1, align 8
  br label %220

; <label>:93:                                     ; preds = %36
  %94 = load i8*, i8** @optarg, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %32) #11
  %95 = call i32 @xstrtoul(i8* %94, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %93
  store i64 -1, i64* %5, align 8
  br label %106

; <label>:98:                                     ; preds = %93
  %99 = load i64, i64* %5, align 8
  %100 = icmp ne i32 %95, 0
  %101 = icmp eq i64 %99, 0
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %106

; <label>:103:                                    ; preds = %98
  %104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %105 = call i8* @quote(i8* %94) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %104, i8* %105) #11
  unreachable

; <label>:106:                                    ; preds = %97, %98
  %107 = phi i64 [ %99, %98 ], [ -1, %97 ]
  %108 = add i64 %107, -1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %32) #11
  %109 = load i64, i64* @join_field_2, align 8
  %110 = icmp eq i64 %109, -1
  %111 = icmp eq i64 %109, %108
  %112 = or i1 %110, %111
  br i1 %112, label %116, label %113

; <label>:113:                                    ; preds = %106
  %114 = add i64 %109, 1
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %115, i64 %114, i64 %107) #11
  unreachable

; <label>:116:                                    ; preds = %106
  store i64 %108, i64* @join_field_2, align 8
  br label %220

; <label>:117:                                    ; preds = %36
  %118 = load i8*, i8** @optarg, align 8
  %119 = load i8, i8* %118, align 1
  %120 = add i8 %119, -49
  %121 = icmp ult i8 %120, 2
  br i1 %121, label %122, label %141

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds i8, i8* %118, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %141

; <label>:126:                                    ; preds = %122
  %127 = load i32, i32* @optind, align 4
  %128 = add nsw i32 %127, -1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %1, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = icmp eq i8* %118, %132
  br i1 %133, label %134, label %141

; <label>:134:                                    ; preds = %126
  %135 = icmp eq i8 %119, 50
  %136 = zext i1 %135 to i64
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = select i1 %135, i32 2, i32 1
  store i32 %140, i32* %7, align 4
  br label %220

; <label>:141:                                    ; preds = %117, %122, %126
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #11
  %142 = call i32 @xstrtoul(i8* %118, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %145

; <label>:144:                                    ; preds = %141
  store i64 -1, i64* %4, align 8
  br label %153

; <label>:145:                                    ; preds = %141
  %146 = load i64, i64* %4, align 8
  %147 = icmp ne i32 %142, 0
  %148 = icmp eq i64 %146, 0
  %149 = or i1 %147, %148
  br i1 %149, label %150, label %153

; <label>:150:                                    ; preds = %145
  %151 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %152 = call i8* @quote(i8* %118) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %151, i8* %152) #11
  unreachable

; <label>:153:                                    ; preds = %144, %145
  %154 = phi i64 [ %146, %145 ], [ -1, %144 ]
  %155 = add i64 %154, -1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11
  %156 = load i64, i64* @join_field_1, align 8
  %157 = icmp eq i64 %156, -1
  %158 = icmp eq i64 %156, %155
  %159 = or i1 %157, %158
  br i1 %159, label %163, label %160

; <label>:160:                                    ; preds = %153
  %161 = add i64 %156, 1
  %162 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %162, i64 %161, i64 %154) #11
  unreachable

; <label>:163:                                    ; preds = %153
  store i64 %155, i64* @join_field_1, align 8
  %164 = load i64, i64* @join_field_2, align 8
  %165 = icmp eq i64 %164, -1
  %166 = icmp eq i64 %164, %155
  %167 = or i1 %165, %166
  br i1 %167, label %171, label %168

; <label>:168:                                    ; preds = %163
  %169 = add i64 %164, 1
  %170 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %170, i64 %169, i64 %154) #11
  unreachable

; <label>:171:                                    ; preds = %163
  store i64 %155, i64* @join_field_2, align 8
  br label %220

; <label>:172:                                    ; preds = %36
  %173 = load i8*, i8** @optarg, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #11
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

; <label>:176:                                    ; preds = %172
  store i1 true, i1* @autoformat, align 1
  br label %220

; <label>:177:                                    ; preds = %172
  call fastcc void @add_field_list(i8* %173)
  store i32 3, i32* %7, align 4
  br label %220

; <label>:178:                                    ; preds = %36
  %179 = load i8*, i8** @optarg, align 8
  %180 = load i8, i8* %179, align 1
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %198, label %182

; <label>:182:                                    ; preds = %178
  %183 = getelementptr inbounds i8, i8* %179, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %198, label %186

; <label>:186:                                    ; preds = %182
  %187 = icmp eq i8 %180, 92
  %188 = icmp eq i8 %184, 48
  %189 = and i1 %187, %188
  br i1 %189, label %190, label %194

; <label>:190:                                    ; preds = %186
  %191 = getelementptr inbounds i8, i8* %179, i64 2
  %192 = load i8, i8* %191, align 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %198, label %194

; <label>:194:                                    ; preds = %186, %190
  %195 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 5) #11
  %196 = load i8*, i8** @optarg, align 8
  %197 = call i8* @quote(i8* %196) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %195, i8* %197) #11
  unreachable

; <label>:198:                                    ; preds = %190, %178, %182
  %199 = phi i8 [ %180, %182 ], [ 10, %178 ], [ 0, %190 ]
  %200 = load i32, i32* @tab, align 4
  %201 = icmp slt i32 %200, 0
  %202 = zext i8 %199 to i32
  %203 = icmp eq i32 %200, %202
  %204 = or i1 %201, %203
  br i1 %204, label %207, label %205

; <label>:205:                                    ; preds = %198
  %206 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %206) #11
  unreachable

; <label>:207:                                    ; preds = %198
  store i32 %202, i32* @tab, align 4
  br label %220

; <label>:208:                                    ; preds = %36
  store i1 true, i1* @eolchar, align 1
  br label %220

; <label>:209:                                    ; preds = %36
  store i32 2, i32* @check_input_order, align 4
  br label %220

; <label>:210:                                    ; preds = %36
  store i32 1, i32* @check_input_order, align 4
  br label %220

; <label>:211:                                    ; preds = %36
  %212 = load i8*, i8** @optarg, align 8
  call fastcc void @add_file_name(i8* %212, i32* nonnull %34, i32* nonnull %35, i32* nonnull %12, i32* nonnull %8, i32* nonnull %7)
  %213 = load i32, i32* %7, align 4
  br label %220

; <label>:214:                                    ; preds = %36
  store i1 true, i1* @join_header_lines, align 1
  br label %220

; <label>:215:                                    ; preds = %36
  call void @usage(i32 0) #15
  unreachable

; <label>:216:                                    ; preds = %36
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %218 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %218, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* null) #11
  call void @exit(i32 0) #14
  unreachable

; <label>:219:                                    ; preds = %36
  call void @usage(i32 1) #15
  unreachable

; <label>:220:                                    ; preds = %176, %177, %134, %171, %214, %211, %210, %209, %208, %207, %116, %92, %68, %66, %51
  %221 = phi i32 [ 0, %176 ], [ 3, %177 ], [ %140, %134 ], [ 0, %171 ], [ 0, %214 ], [ %213, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %208 ], [ 0, %207 ], [ 0, %116 ], [ 0, %92 ], [ 0, %68 ], [ 0, %66 ], [ 0, %51 ]
  store i32 %221, i32* %8, align 4
  %222 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %36

; <label>:224:                                    ; preds = %220
  br label %225

; <label>:225:                                    ; preds = %224, %2
  store i32 0, i32* %8, align 4
  %226 = load i32, i32* @optind, align 4
  %227 = icmp slt i32 %226, %0
  br i1 %227, label %228, label %240

; <label>:228:                                    ; preds = %225
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %230 = bitcast i64* %10 to i32*
  br label %231

; <label>:231:                                    ; preds = %228, %231
  %232 = phi i32 [ %226, %228 ], [ %237, %231 ]
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* @optind, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8*, i8** %1, i64 %234
  %236 = load i8*, i8** %235, align 8
  call fastcc void @add_file_name(i8* %236, i32* nonnull %229, i32* nonnull %230, i32* nonnull %12, i32* nonnull %8, i32* nonnull %7)
  %237 = load i32, i32* @optind, align 4
  %238 = icmp slt i32 %237, %0
  br i1 %238, label %231, label %239

; <label>:239:                                    ; preds = %231
  br label %240

; <label>:240:                                    ; preds = %239, %225
  %241 = load i32, i32* %12, align 4
  switch i32 %241, label %248 [
    i32 2, label %242
    i32 0, label %246
  ]

; <label>:242:                                    ; preds = %240
  %243 = bitcast i64* %10 to i32*
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %271, label %256

; <label>:246:                                    ; preds = %240
  %247 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %247) #11
  br label %255

; <label>:248:                                    ; preds = %240
  %249 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #11
  %250 = add nsw i32 %0, -1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %1, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = call i8* @quote(i8* %253) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %249, i8* %254) #11
  br label %255

; <label>:255:                                    ; preds = %248, %246
  call void @usage(i32 1) #15
  unreachable

; <label>:256:                                    ; preds = %242
  %257 = load i64, i64* @join_field_1, align 8
  switch i64 %257, label %258 [
    i64 -1, label %263
    i64 0, label %263
  ]

; <label>:258:                                    ; preds = %760, %256
  %259 = phi i64 [ 1, %256 ], [ 2, %760 ]
  %260 = phi i64 [ %257, %256 ], [ %275, %760 ]
  %261 = add i64 %260, 1
  %262 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %262, i64 %261, i64 %259) #11
  unreachable

; <label>:263:                                    ; preds = %256, %256
  store i64 0, i64* @join_field_1, align 8
  %264 = load i64, i64* @join_field_2, align 8
  switch i64 %264, label %265 [
    i64 -1, label %270
    i64 0, label %270
  ]

; <label>:265:                                    ; preds = %761, %263
  %266 = phi i64 [ 1, %263 ], [ 2, %761 ]
  %267 = phi i64 [ %264, %263 ], [ %762, %761 ]
  %268 = add i64 %267, 1
  %269 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %269, i64 %268, i64 %266) #11
  unreachable

; <label>:270:                                    ; preds = %263, %263
  store i64 0, i64* @join_field_2, align 8
  br label %271

; <label>:271:                                    ; preds = %242, %270
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 0
  %275 = load i64, i64* @join_field_1, align 8
  br i1 %274, label %763, label %760

; <label>:276:                                    ; preds = %763
  store i64 0, i64* @join_field_1, align 8
  br label %277

; <label>:277:                                    ; preds = %276, %763
  %278 = load i64, i64* @join_field_2, align 8
  %279 = icmp eq i64 %278, -1
  br i1 %279, label %280, label %282

; <label>:280:                                    ; preds = %277, %761, %761
  %281 = phi i64 [ 1, %761 ], [ 1, %761 ], [ 0, %277 ]
  store i64 %281, i64* @join_field_2, align 8
  br label %282

; <label>:282:                                    ; preds = %280, %277
  %283 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16
  %284 = load i8, i8* %283, align 1
  %285 = icmp eq i8 %284, 45
  br i1 %285, label %286, label %292

; <label>:286:                                    ; preds = %282
  %287 = getelementptr inbounds i8, i8* %283, i64 1
  %288 = load i8, i8* %287, align 1
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %292

; <label>:290:                                    ; preds = %286
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %294

; <label>:292:                                    ; preds = %282, %286
  %293 = call %struct._IO_FILE* @fopen_safer(i8* %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #11
  br label %294

; <label>:294:                                    ; preds = %292, %290
  %295 = phi %struct._IO_FILE* [ %291, %290 ], [ %293, %292 ]
  %296 = icmp eq %struct._IO_FILE* %295, null
  br i1 %296, label %297, label %302

; <label>:297:                                    ; preds = %294
  %298 = tail call i32* @__errno_location() #1
  %299 = load i32, i32* %298, align 4
  %300 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16
  %301 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %300) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %301) #11
  unreachable

; <label>:302:                                    ; preds = %294
  %303 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8
  %304 = load i8, i8* %303, align 1
  %305 = icmp eq i8 %304, 45
  br i1 %305, label %306, label %312

; <label>:306:                                    ; preds = %302
  %307 = getelementptr inbounds i8, i8* %303, i64 1
  %308 = load i8, i8* %307, align 1
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %306
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %314

; <label>:312:                                    ; preds = %302, %306
  %313 = call %struct._IO_FILE* @fopen_safer(i8* %303, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #11
  br label %314

; <label>:314:                                    ; preds = %312, %310
  %315 = phi %struct._IO_FILE* [ %311, %310 ], [ %313, %312 ]
  %316 = icmp eq %struct._IO_FILE* %315, null
  br i1 %316, label %317, label %322

; <label>:317:                                    ; preds = %314
  %318 = tail call i32* @__errno_location() #1
  %319 = load i32, i32* %318, align 4
  %320 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8
  %321 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %320) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %319, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %321) #11
  unreachable

; <label>:322:                                    ; preds = %314
  %323 = icmp eq %struct._IO_FILE* %295, %315
  br i1 %323, label %324, label %328

; <label>:324:                                    ; preds = %322
  %325 = tail call i32* @__errno_location() #1
  %326 = load i32, i32* %325, align 4
  %327 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %326, i8* %327) #11
  unreachable

; <label>:328:                                    ; preds = %322
  call void @fadvise(%struct._IO_FILE* nonnull %295, i32 2) #11
  call void @fadvise(%struct._IO_FILE* nonnull %315, i32 2) #11
  %329 = call i8* @xrealloc(i8* null, i64 128) #11
  %330 = bitcast i8* %329 to %struct.line**
  call void @llvm.memset.p0i8.i64(i8* %329, i8 0, i64 128, i32 8, i1 false) #11
  %331 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** nonnull %330, i32 1) #11
  %332 = call i8* @xrealloc(i8* null, i64 128) #11
  %333 = bitcast i8* %332 to %struct.line**
  call void @llvm.memset.p0i8.i64(i8* %332, i8 0, i64 128, i32 8, i1 false) #11
  %334 = zext i1 %331 to i64
  %335 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** nonnull %333, i32 2) #11
  %336 = zext i1 %335 to i64
  %337 = load i1, i1* @autoformat, align 1
  br i1 %337, label %338, label %351

; <label>:338:                                    ; preds = %328
  br i1 %331, label %339, label %343

; <label>:339:                                    ; preds = %338
  %340 = load %struct.line*, %struct.line** %330, align 8
  %341 = getelementptr inbounds %struct.line, %struct.line* %340, i64 0, i32 1
  %342 = load i64, i64* %341, align 8
  br label %343

; <label>:343:                                    ; preds = %339, %338
  %344 = phi i64 [ %342, %339 ], [ 0, %338 ]
  store i64 %344, i64* @autocount_1, align 8
  br i1 %335, label %345, label %349

; <label>:345:                                    ; preds = %343
  %346 = load %struct.line*, %struct.line** %333, align 8
  %347 = getelementptr inbounds %struct.line, %struct.line* %346, i64 0, i32 1
  %348 = load i64, i64* %347, align 8
  br label %349

; <label>:349:                                    ; preds = %345, %343
  %350 = phi i64 [ %348, %345 ], [ 0, %343 ]
  store i64 %350, i64* @autocount_2, align 8
  br label %351

; <label>:351:                                    ; preds = %349, %328
  %352 = load i1, i1* @join_header_lines, align 1
  br i1 %352, label %353, label %370

; <label>:353:                                    ; preds = %351
  br i1 %331, label %355, label %354

; <label>:354:                                    ; preds = %353
  br i1 %335, label %360, label %612

; <label>:355:                                    ; preds = %353
  %356 = load %struct.line*, %struct.line** %330, align 8
  br i1 %335, label %360, label %357

; <label>:357:                                    ; preds = %355
  call fastcc void @prjoin(%struct.line* %356, %struct.line* nonnull @uni_blank) #11
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x %struct.line*]* @prevline to i8*), i8 0, i64 16, i32 16, i1 false) #11
  %358 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** nonnull %330, i32 1) #11
  %359 = zext i1 %358 to i64
  br label %370

; <label>:360:                                    ; preds = %355, %354
  %361 = phi %struct.line* [ %356, %355 ], [ @uni_blank, %354 ]
  %362 = load %struct.line*, %struct.line** %333, align 8
  call fastcc void @prjoin(%struct.line* %361, %struct.line* %362) #11
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x %struct.line*]* @prevline to i8*), i8 0, i64 16, i32 16, i1 false) #11
  br i1 %331, label %363, label %366

; <label>:363:                                    ; preds = %360
  %364 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** %330, i32 1) #11
  %365 = zext i1 %364 to i64
  br label %366

; <label>:366:                                    ; preds = %363, %360
  %367 = phi i64 [ %365, %363 ], [ 0, %360 ]
  %368 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** nonnull %333, i32 2) #11
  %369 = zext i1 %368 to i64
  br label %370

; <label>:370:                                    ; preds = %366, %357, %351
  %371 = phi i64 [ %367, %366 ], [ %334, %351 ], [ %359, %357 ]
  %372 = phi i64 [ %369, %366 ], [ %336, %351 ], [ %336, %357 ]
  %373 = icmp ne i64 %371, 0
  %374 = icmp ne i64 %372, 0
  %375 = and i1 %373, %374
  br i1 %375, label %376, label %612

; <label>:376:                                    ; preds = %370
  br label %377

; <label>:377:                                    ; preds = %376, %424
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
  br label %389

; <label>:389:                                    ; preds = %457, %377
  %390 = phi i64 [ %378, %377 ], [ %464, %457 ]
  %391 = phi i64 [ %379, %377 ], [ %462, %457 ]
  %392 = phi %struct.line** [ %380, %377 ], [ %461, %457 ]
  %393 = phi i8* [ %381, %377 ], [ %460, %457 ]
  %394 = phi i8* [ %382, %377 ], [ %459, %457 ]
  %395 = phi i8* [ %383, %377 ], [ %458, %457 ]
  %396 = load %struct.line*, %struct.line** %385, align 8
  %397 = load %struct.line*, %struct.line** %392, align 8
  %398 = load i64, i64* @join_field_1, align 8
  %399 = load i64, i64* @join_field_2, align 8
  %400 = call fastcc i32 @keycmp(%struct.line* %396, %struct.line* %397, i64 %398, i64 %399) #11
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %440

; <label>:402:                                    ; preds = %389
  %403 = load i8, i8* @print_unpairables_1, align 1
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %407, label %405

; <label>:405:                                    ; preds = %402
  %406 = load %struct.line*, %struct.line** %385, align 8
  call fastcc void @prjoin(%struct.line* %406, %struct.line* nonnull @uni_blank) #11
  br label %407

; <label>:407:                                    ; preds = %405, %402
  %408 = icmp eq i64 %384, 0
  br i1 %408, label %409, label %416

; <label>:409:                                    ; preds = %407
  %410 = icmp eq i8* %386, null
  %411 = select i1 %410, i64 16, i64 1
  %412 = shl nuw nsw i64 %411, 3
  %413 = call i8* @xrealloc(i8* %386, i64 %412) #11
  %414 = bitcast i8* %413 to %struct.line**
  %415 = select i1 %410, i64 128, i64 8
  call void @llvm.memset.p0i8.i64(i8* %413, i8 0, i64 %415, i32 8, i1 false) #11
  br label %416

; <label>:416:                                    ; preds = %409, %407
  %417 = phi i8* [ %388, %407 ], [ %413, %409 ]
  %418 = phi i8* [ %387, %407 ], [ %413, %409 ]
  %419 = phi i8* [ %386, %407 ], [ %413, %409 ]
  %420 = phi %struct.line** [ %385, %407 ], [ %414, %409 ]
  %421 = phi i64 [ %384, %407 ], [ %411, %409 ]
  %422 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** nonnull %420, i32 1) #11
  %423 = zext i1 %422 to i64
  store i1 true, i1* @seen_unpairable, align 1
  br label %424

; <label>:424:                                    ; preds = %597, %416
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
  %437 = icmp ne i64 %430, 0
  %438 = icmp ne i64 %436, 0
  %439 = and i1 %437, %438
  br i1 %439, label %377, label %603

; <label>:440:                                    ; preds = %389
  %441 = icmp eq i32 %400, 0
  br i1 %441, label %442, label %443

; <label>:442:                                    ; preds = %440
  br label %465

; <label>:443:                                    ; preds = %440
  %444 = load i8, i8* @print_unpairables_2, align 1
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %448, label %446

; <label>:446:                                    ; preds = %443
  %447 = load %struct.line*, %struct.line** %392, align 8
  call fastcc void @prjoin(%struct.line* nonnull @uni_blank, %struct.line* %447) #11
  br label %448

; <label>:448:                                    ; preds = %446, %443
  %449 = icmp eq i64 %391, 0
  br i1 %449, label %450, label %457

; <label>:450:                                    ; preds = %448
  %451 = icmp eq i8* %394, null
  %452 = select i1 %451, i64 16, i64 1
  %453 = shl nuw nsw i64 %452, 3
  %454 = call i8* @xrealloc(i8* %394, i64 %453) #11
  %455 = bitcast i8* %454 to %struct.line**
  %456 = select i1 %451, i64 128, i64 8
  call void @llvm.memset.p0i8.i64(i8* %454, i8 0, i64 %456, i32 8, i1 false) #11
  br label %457

; <label>:457:                                    ; preds = %450, %448
  %458 = phi i8* [ %395, %448 ], [ %454, %450 ]
  %459 = phi i8* [ %394, %448 ], [ %454, %450 ]
  %460 = phi i8* [ %393, %448 ], [ %454, %450 ]
  %461 = phi %struct.line** [ %392, %448 ], [ %455, %450 ]
  %462 = phi i64 [ %391, %448 ], [ %452, %450 ]
  %463 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** nonnull %461, i32 2) #11
  %464 = zext i1 %463 to i64
  store i1 true, i1* @seen_unpairable, align 1
  br i1 %463, label %389, label %602

; <label>:465:                                    ; preds = %442, %506
  %466 = phi i64 [ %473, %506 ], [ 0, %442 ]
  %467 = phi i8* [ %499, %506 ], [ %388, %442 ]
  %468 = phi i8* [ %500, %506 ], [ %387, %442 ]
  %469 = phi i8* [ %501, %506 ], [ %386, %442 ]
  %470 = phi %struct.line** [ %502, %506 ], [ %385, %442 ]
  %471 = phi i64 [ %503, %506 ], [ %384, %442 ]
  %472 = phi i64 [ %507, %506 ], [ 1, %442 ]
  %473 = add i64 %466, 1
  %474 = shl i64 %473, 3
  %475 = icmp eq i64 %472, %471
  br i1 %475, label %476, label %498

; <label>:476:                                    ; preds = %465
  %477 = icmp eq i8* %468, null
  br i1 %477, label %478, label %481

; <label>:478:                                    ; preds = %476
  %479 = icmp eq i64 %471, 0
  %480 = select i1 %479, i64 16, i64 %471
  br label %488

; <label>:481:                                    ; preds = %476
  %482 = icmp ult i64 %471, 768614336404564650
  br i1 %482, label %484, label %483

; <label>:483:                                    ; preds = %481
  call void @xalloc_die() #14
  unreachable

; <label>:484:                                    ; preds = %481
  %485 = lshr i64 %471, 1
  %486 = add i64 %471, 1
  %487 = add i64 %486, %485
  br label %488

; <label>:488:                                    ; preds = %484, %478
  %489 = phi i64 [ %487, %484 ], [ %480, %478 ]
  %490 = shl i64 %489, 3
  %491 = call i8* @xrealloc(i8* %468, i64 %490) #11
  %492 = bitcast i8* %491 to %struct.line**
  %493 = icmp ult i64 %471, %489
  br i1 %493, label %494, label %498

; <label>:494:                                    ; preds = %488
  %495 = getelementptr i8, i8* %491, i64 %474
  %496 = sub i64 %489, %473
  %497 = shl i64 %496, 3
  call void @llvm.memset.p0i8.i64(i8* %495, i8 0, i64 %497, i32 8, i1 false) #11
  br label %498

; <label>:498:                                    ; preds = %494, %488, %465
  %499 = phi i8* [ %491, %488 ], [ %467, %465 ], [ %491, %494 ]
  %500 = phi i8* [ %491, %488 ], [ %468, %465 ], [ %491, %494 ]
  %501 = phi i8* [ %491, %488 ], [ %469, %465 ], [ %491, %494 ]
  %502 = phi %struct.line** [ %492, %488 ], [ %470, %465 ], [ %492, %494 ]
  %503 = phi i64 [ %489, %488 ], [ %471, %465 ], [ %489, %494 ]
  %504 = getelementptr inbounds %struct.line*, %struct.line** %502, i64 %472
  %505 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** %504, i32 1) #11
  br i1 %505, label %506, label %514

; <label>:506:                                    ; preds = %498
  %507 = add i64 %472, 1
  %508 = load %struct.line*, %struct.line** %504, align 8
  %509 = load %struct.line*, %struct.line** %392, align 8
  %510 = load i64, i64* @join_field_1, align 8
  %511 = load i64, i64* @join_field_2, align 8
  %512 = call fastcc i32 @keycmp(%struct.line* %508, %struct.line* %509, i64 %510, i64 %511) #11
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %465, label %514

; <label>:514:                                    ; preds = %506, %498
  %515 = phi i1 [ false, %506 ], [ true, %498 ]
  br label %516

; <label>:516:                                    ; preds = %557, %514
  %517 = phi i64 [ %565, %557 ], [ 0, %514 ]
  %518 = phi i8* [ %550, %557 ], [ %395, %514 ]
  %519 = phi i8* [ %551, %557 ], [ %394, %514 ]
  %520 = phi i8* [ %552, %557 ], [ %393, %514 ]
  %521 = phi %struct.line** [ %553, %557 ], [ %392, %514 ]
  %522 = phi i64 [ %554, %557 ], [ %391, %514 ]
  %523 = phi i64 [ %558, %557 ], [ %390, %514 ]
  %524 = add i64 %517, %390
  %525 = shl i64 %524, 3
  %526 = icmp eq i64 %523, %522
  br i1 %526, label %527, label %549

; <label>:527:                                    ; preds = %516
  %528 = icmp eq i8* %520, null
  br i1 %528, label %529, label %532

; <label>:529:                                    ; preds = %527
  %530 = icmp eq i64 %522, 0
  %531 = select i1 %530, i64 16, i64 %522
  br label %539

; <label>:532:                                    ; preds = %527
  %533 = icmp ult i64 %522, 768614336404564650
  br i1 %533, label %535, label %534

; <label>:534:                                    ; preds = %532
  call void @xalloc_die() #14
  unreachable

; <label>:535:                                    ; preds = %532
  %536 = lshr i64 %522, 1
  %537 = add i64 %522, 1
  %538 = add i64 %537, %536
  br label %539

; <label>:539:                                    ; preds = %535, %529
  %540 = phi i64 [ %538, %535 ], [ %531, %529 ]
  %541 = shl i64 %540, 3
  %542 = call i8* @xrealloc(i8* %520, i64 %541) #11
  %543 = bitcast i8* %542 to %struct.line**
  %544 = icmp ult i64 %522, %540
  br i1 %544, label %545, label %549

; <label>:545:                                    ; preds = %539
  %546 = getelementptr i8, i8* %542, i64 %525
  %547 = sub i64 %540, %524
  %548 = shl i64 %547, 3
  call void @llvm.memset.p0i8.i64(i8* %546, i8 0, i64 %548, i32 8, i1 false) #11
  br label %549

; <label>:549:                                    ; preds = %545, %539, %516
  %550 = phi i8* [ %542, %539 ], [ %518, %516 ], [ %542, %545 ]
  %551 = phi i8* [ %542, %539 ], [ %519, %516 ], [ %542, %545 ]
  %552 = phi i8* [ %542, %539 ], [ %520, %516 ], [ %542, %545 ]
  %553 = phi %struct.line** [ %543, %539 ], [ %521, %516 ], [ %543, %545 ]
  %554 = phi i64 [ %540, %539 ], [ %522, %516 ], [ %540, %545 ]
  %555 = getelementptr inbounds %struct.line*, %struct.line** %553, i64 %523
  %556 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** %555, i32 2) #11
  br i1 %556, label %557, label %566

; <label>:557:                                    ; preds = %549
  %558 = add i64 %523, 1
  %559 = load %struct.line*, %struct.line** %502, align 8
  %560 = load %struct.line*, %struct.line** %555, align 8
  %561 = load i64, i64* @join_field_1, align 8
  %562 = load i64, i64* @join_field_2, align 8
  %563 = call fastcc i32 @keycmp(%struct.line* %559, %struct.line* %560, i64 %561, i64 %562) #11
  %564 = icmp eq i32 %563, 0
  %565 = add i64 %517, 1
  br i1 %564, label %516, label %566

; <label>:566:                                    ; preds = %557, %549
  %567 = phi i1 [ false, %557 ], [ true, %549 ]
  %568 = load i1, i1* @print_pairables, align 1
  %569 = icmp ne i64 %472, 0
  %570 = and i1 %569, %568
  br i1 %570, label %571, label %589

; <label>:571:                                    ; preds = %566
  %572 = icmp eq i64 %523, 0
  br label %573

; <label>:573:                                    ; preds = %585, %571
  %574 = phi i64 [ 0, %571 ], [ %586, %585 ]
  br i1 %572, label %585, label %575

; <label>:575:                                    ; preds = %573
  %576 = getelementptr inbounds %struct.line*, %struct.line** %502, i64 %574
  br label %577

; <label>:577:                                    ; preds = %577, %575
  %578 = phi i64 [ 0, %575 ], [ %582, %577 ]
  %579 = load %struct.line*, %struct.line** %576, align 8
  %580 = getelementptr inbounds %struct.line*, %struct.line** %553, i64 %578
  %581 = load %struct.line*, %struct.line** %580, align 8
  call fastcc void @prjoin(%struct.line* %579, %struct.line* %581) #11
  %582 = add nuw i64 %578, 1
  %583 = icmp eq i64 %582, %523
  br i1 %583, label %584, label %577

; <label>:584:                                    ; preds = %577
  br label %585

; <label>:585:                                    ; preds = %584, %573
  %586 = add nuw i64 %574, 1
  %587 = icmp eq i64 %586, %472
  br i1 %587, label %588, label %573

; <label>:588:                                    ; preds = %585
  br label %589

; <label>:589:                                    ; preds = %588, %566
  br i1 %515, label %595, label %590

; <label>:590:                                    ; preds = %589
  %591 = bitcast %struct.line** %502 to i64*
  %592 = load i64, i64* %591, align 8
  %593 = bitcast %struct.line** %504 to i64*
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %591, align 8
  store i64 %592, i64* %593, align 8
  br label %595

; <label>:595:                                    ; preds = %590, %589
  %596 = phi i64 [ 1, %590 ], [ 0, %589 ]
  br i1 %567, label %603, label %597

; <label>:597:                                    ; preds = %595
  %598 = bitcast %struct.line** %553 to i64*
  %599 = load i64, i64* %598, align 8
  %600 = bitcast %struct.line** %555 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %598, align 8
  store i64 %599, i64* %600, align 8
  br label %424

; <label>:602:                                    ; preds = %457
  br label %612

; <label>:603:                                    ; preds = %424, %595
  %604 = phi i8* [ %425, %424 ], [ %499, %595 ]
  %605 = phi %struct.line** [ %428, %424 ], [ %502, %595 ]
  %606 = phi i64 [ %429, %424 ], [ %503, %595 ]
  %607 = phi i64 [ %430, %424 ], [ %596, %595 ]
  %608 = phi i8* [ %431, %424 ], [ %550, %595 ]
  %609 = phi %struct.line** [ %434, %424 ], [ %553, %595 ]
  %610 = phi i64 [ %435, %424 ], [ %554, %595 ]
  %611 = phi i64 [ %436, %424 ], [ 0, %595 ]
  br label %612

; <label>:612:                                    ; preds = %603, %602, %370, %354
  %613 = phi i8* [ %329, %370 ], [ %329, %354 ], [ %388, %602 ], [ %604, %603 ]
  %614 = phi %struct.line** [ %330, %370 ], [ %330, %354 ], [ %385, %602 ], [ %605, %603 ]
  %615 = phi i64 [ 16, %370 ], [ 16, %354 ], [ %384, %602 ], [ %606, %603 ]
  %616 = phi i64 [ %371, %370 ], [ 0, %354 ], [ 1, %602 ], [ %607, %603 ]
  %617 = phi i8* [ %332, %370 ], [ %332, %354 ], [ %458, %602 ], [ %608, %603 ]
  %618 = phi %struct.line** [ %333, %370 ], [ %333, %354 ], [ %461, %602 ], [ %609, %603 ]
  %619 = phi i64 [ 16, %370 ], [ 16, %354 ], [ %462, %602 ], [ %610, %603 ]
  %620 = phi i64 [ %372, %370 ], [ 0, %354 ], [ %464, %602 ], [ %611, %603 ]
  %621 = bitcast %struct.line** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %621) #11
  store %struct.line* null, %struct.line** %3, align 8
  %622 = load i32, i32* @check_input_order, align 4
  %623 = icmp eq i32 %622, 2
  br i1 %623, label %630, label %624

; <label>:624:                                    ; preds = %612
  %625 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  %626 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %627 = icmp ne i8 %625, 0
  %628 = icmp ne i8 %626, 0
  %629 = and i1 %627, %628
  br label %630

; <label>:630:                                    ; preds = %624, %612
  %631 = phi i1 [ true, %612 ], [ %629, %624 ]
  %632 = load i8, i8* @print_unpairables_1, align 1
  %633 = icmp eq i8 %632, 0
  %634 = and i1 %631, %633
  %635 = icmp eq i64 %616, 0
  %636 = or i1 %635, %634
  br i1 %636, label %659, label %637

; <label>:637:                                    ; preds = %630
  br i1 %633, label %640, label %638

; <label>:638:                                    ; preds = %637
  %639 = load %struct.line*, %struct.line** %614, align 8
  call fastcc void @prjoin(%struct.line* %639, %struct.line* nonnull @uni_blank) #11
  br label %640

; <label>:640:                                    ; preds = %638, %637
  %641 = icmp eq i64 %620, 0
  br i1 %641, label %643, label %642

; <label>:642:                                    ; preds = %640
  store i1 true, i1* @seen_unpairable, align 1
  br label %643

; <label>:643:                                    ; preds = %640, %642
  br label %644

; <label>:644:                                    ; preds = %643, %652
  %645 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %295, %struct.line** nonnull %3, i32 1) #11
  br i1 %645, label %646, label %658

; <label>:646:                                    ; preds = %644
  %647 = load i8, i8* @print_unpairables_1, align 1
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %652, label %649

; <label>:649:                                    ; preds = %646
  %650 = load %struct.line*, %struct.line** %3, align 8
  call fastcc void @prjoin(%struct.line* %650, %struct.line* nonnull @uni_blank) #11
  %651 = load i8, i8* @print_unpairables_1, align 1
  br label %652

; <label>:652:                                    ; preds = %649, %646
  %653 = phi i8 [ 0, %646 ], [ %651, %649 ]
  %654 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  %655 = icmp ne i8 %654, 0
  %656 = icmp eq i8 %653, 0
  %657 = and i1 %656, %655
  br i1 %657, label %658, label %644

; <label>:658:                                    ; preds = %644, %652
  br label %659

; <label>:659:                                    ; preds = %658, %630
  %660 = load i8, i8* @print_unpairables_2, align 1
  %661 = icmp eq i8 %660, 0
  %662 = and i1 %631, %661
  %663 = icmp eq i64 %620, 0
  %664 = or i1 %663, %662
  br i1 %664, label %686, label %665

; <label>:665:                                    ; preds = %659
  br i1 %661, label %668, label %666

; <label>:666:                                    ; preds = %665
  %667 = load %struct.line*, %struct.line** %618, align 8
  call fastcc void @prjoin(%struct.line* nonnull @uni_blank, %struct.line* %667) #11
  br label %668

; <label>:668:                                    ; preds = %666, %665
  br i1 %635, label %670, label %669

; <label>:669:                                    ; preds = %668
  store i1 true, i1* @seen_unpairable, align 1
  br label %670

; <label>:670:                                    ; preds = %668, %669
  br label %671

; <label>:671:                                    ; preds = %670, %679
  %672 = call fastcc zeroext i1 @get_line(%struct._IO_FILE* nonnull %315, %struct.line** nonnull %3, i32 2) #11
  br i1 %672, label %673, label %685

; <label>:673:                                    ; preds = %671
  %674 = load i8, i8* @print_unpairables_2, align 1
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %679, label %676

; <label>:676:                                    ; preds = %673
  %677 = load %struct.line*, %struct.line** %3, align 8
  call fastcc void @prjoin(%struct.line* nonnull @uni_blank, %struct.line* %677) #11
  %678 = load i8, i8* @print_unpairables_2, align 1
  br label %679

; <label>:679:                                    ; preds = %676, %673
  %680 = phi i8 [ 0, %673 ], [ %678, %676 ]
  %681 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %682 = icmp ne i8 %681, 0
  %683 = icmp eq i8 %680, 0
  %684 = and i1 %683, %682
  br i1 %684, label %685, label %671

; <label>:685:                                    ; preds = %671, %679
  br label %686

; <label>:686:                                    ; preds = %685, %659
  %687 = load %struct.line*, %struct.line** %3, align 8
  %688 = icmp eq %struct.line* %687, null
  %689 = bitcast %struct.line* %687 to i8*
  br i1 %688, label %696, label %690

; <label>:690:                                    ; preds = %686
  %691 = getelementptr inbounds %struct.line, %struct.line* %687, i64 0, i32 3
  %692 = bitcast %struct.field** %691 to i8**
  %693 = load i8*, i8** %692, align 8
  call void @free(i8* %693) #11
  store %struct.field* null, %struct.field** %691, align 8
  %694 = getelementptr inbounds %struct.line, %struct.line* %687, i64 0, i32 0, i32 2
  %695 = load i8*, i8** %694, align 8
  call void @free(i8* %695) #11
  br label %696

; <label>:696:                                    ; preds = %690, %686
  call void @free(i8* %689) #11
  %697 = icmp eq i64 %615, 0
  br i1 %697, label %717, label %698

; <label>:698:                                    ; preds = %696
  br label %699

; <label>:699:                                    ; preds = %698, %712
  %700 = phi i64 [ %714, %712 ], [ 0, %698 ]
  %701 = getelementptr inbounds %struct.line*, %struct.line** %614, i64 %700
  %702 = load %struct.line*, %struct.line** %701, align 8
  %703 = icmp eq %struct.line* %702, null
  br i1 %703, label %712, label %704

; <label>:704:                                    ; preds = %699
  %705 = getelementptr inbounds %struct.line, %struct.line* %702, i64 0, i32 3
  %706 = bitcast %struct.field** %705 to i8**
  %707 = load i8*, i8** %706, align 8
  call void @free(i8* %707) #11
  store %struct.field* null, %struct.field** %705, align 8
  %708 = getelementptr inbounds %struct.line, %struct.line* %702, i64 0, i32 0, i32 2
  %709 = load i8*, i8** %708, align 8
  call void @free(i8* %709) #11
  store i8* null, i8** %708, align 8
  %710 = bitcast %struct.line** %701 to i8**
  %711 = load i8*, i8** %710, align 8
  br label %712

; <label>:712:                                    ; preds = %699, %704
  %713 = phi i8* [ %711, %704 ], [ null, %699 ]
  call void @free(i8* %713) #11
  %714 = add nuw i64 %700, 1
  %715 = icmp eq i64 %714, %615
  br i1 %715, label %716, label %699

; <label>:716:                                    ; preds = %712
  br label %717

; <label>:717:                                    ; preds = %716, %696
  call void @free(i8* %613) #11
  %718 = icmp eq i64 %619, 0
  br i1 %718, label %738, label %719

; <label>:719:                                    ; preds = %717
  br label %720

; <label>:720:                                    ; preds = %719, %733
  %721 = phi i64 [ %735, %733 ], [ 0, %719 ]
  %722 = getelementptr inbounds %struct.line*, %struct.line** %618, i64 %721
  %723 = load %struct.line*, %struct.line** %722, align 8
  %724 = icmp eq %struct.line* %723, null
  br i1 %724, label %733, label %725

; <label>:725:                                    ; preds = %720
  %726 = getelementptr inbounds %struct.line, %struct.line* %723, i64 0, i32 3
  %727 = bitcast %struct.field** %726 to i8**
  %728 = load i8*, i8** %727, align 8
  call void @free(i8* %728) #11
  store %struct.field* null, %struct.field** %726, align 8
  %729 = getelementptr inbounds %struct.line, %struct.line* %723, i64 0, i32 0, i32 2
  %730 = load i8*, i8** %729, align 8
  call void @free(i8* %730) #11
  store i8* null, i8** %729, align 8
  %731 = bitcast %struct.line** %722 to i8**
  %732 = load i8*, i8** %731, align 8
  br label %733

; <label>:733:                                    ; preds = %720, %725
  %734 = phi i8* [ %732, %725 ], [ null, %720 ]
  call void @free(i8* %734) #11
  %735 = add nuw i64 %721, 1
  %736 = icmp eq i64 %735, %619
  br i1 %736, label %737, label %720

; <label>:737:                                    ; preds = %733
  br label %738

; <label>:738:                                    ; preds = %737, %717
  call void @free(i8* %617) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %621) #11
  %739 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %295) #11
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %746, label %741

; <label>:741:                                    ; preds = %738
  %742 = tail call i32* @__errno_location() #1
  %743 = load i32, i32* %742, align 4
  %744 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16
  %745 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %744) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %743, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %745) #11
  unreachable

; <label>:746:                                    ; preds = %738
  %747 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %315) #11
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %754, label %749

; <label>:749:                                    ; preds = %746
  %750 = tail call i32* @__errno_location() #1
  %751 = load i32, i32* %750, align 4
  %752 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8
  %753 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %752) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %751, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %753) #11
  unreachable

; <label>:754:                                    ; preds = %746
  %755 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  %756 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %757 = or i8 %756, %755
  %758 = icmp ne i8 %757, 0
  %759 = zext i1 %758 to i32
  call void @llvm.lifetime.end(i64 4, i8* nonnull %18) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %17) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #11
  call void @llvm.lifetime.end(i64 4, i8* nonnull %15) #11
  call void @llvm.lifetime.end(i64 4, i8* nonnull %14) #11
  ret i32 %759

; <label>:760:                                    ; preds = %271
  switch i64 %275, label %258 [
    i64 -1, label %761
    i64 1, label %761
  ]

; <label>:761:                                    ; preds = %760, %760
  store i64 1, i64* @join_field_1, align 8
  %762 = load i64, i64* @join_field_2, align 8
  switch i64 %762, label %265 [
    i64 -1, label %280
    i64 1, label %280
  ]

; <label>:763:                                    ; preds = %271
  %764 = icmp eq i64 %275, -1
  br i1 %764, label %276, label %277
}

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

; Function Attrs: nounwind sspstrong uwtable
define internal void @free_spareline() #6 {
  %1 = load %struct.line*, %struct.line** getelementptr inbounds ([2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 0), align 16
  %2 = icmp eq %struct.line* %1, null
  br i1 %2, label %10, label %3

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 3
  %5 = bitcast %struct.field** %4 to i8**
  %6 = load i8*, i8** %5, align 8
  tail call void @free(i8* %6) #11
  store %struct.field* null, %struct.field** %4, align 8
  %7 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  tail call void @free(i8* %8) #11
  store i8* null, i8** %7, align 8
  %9 = load i8*, i8** bitcast ([2 x %struct.line*]* @spareline to i8**), align 16
  tail call void @free(i8* %9) #11
  br label %10

; <label>:10:                                     ; preds = %0, %3
  %11 = load %struct.line*, %struct.line** getelementptr inbounds ([2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 1), align 8
  %12 = icmp eq %struct.line* %11, null
  br i1 %12, label %20, label %13

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.line, %struct.line* %11, i64 0, i32 3
  %15 = bitcast %struct.field** %14 to i8**
  %16 = load i8*, i8** %15, align 8
  tail call void @free(i8* %16) #11
  store %struct.field* null, %struct.field** %14, align 8
  %17 = getelementptr inbounds %struct.line, %struct.line* %11, i64 0, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  tail call void @free(i8* %18) #11
  store i8* null, i8** %17, align 8
  %19 = load i8*, i8** bitcast (%struct.line** getelementptr inbounds ([2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 1) to i8**), align 8
  tail call void @free(i8* %19) #11
  br label %20

; <label>:20:                                     ; preds = %13, %10
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @add_field_list(i8*) unnamed_addr #6 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  br label %4

; <label>:4:                                      ; preds = %48, %1
  %5 = phi i8* [ %0, %1 ], [ %11, %48 ]
  %6 = call i8* @strpbrk(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #11
  %7 = icmp eq i8* %6, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 0, i8* %6, align 1
  br label %10

; <label>:10:                                     ; preds = %4, %8
  %11 = phi i8* [ %9, %8 ], [ null, %4 ]
  %12 = load i8, i8* %5, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %45 [
    i32 48, label %14
    i32 49, label %21
    i32 50, label %21
  ]

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds i8, i8* %5, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %48, label %18

; <label>:18:                                     ; preds = %14
  %19 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i32 5) #11
  %20 = call i8* @quote(i8* nonnull %5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19, i8* %20) #11
  unreachable

; <label>:21:                                     ; preds = %10, %10
  %22 = getelementptr inbounds i8, i8* %5, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = icmp eq i8 %23, 46
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %21
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i32 5) #11
  %27 = call i8* @quote(i8* nonnull %5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26, i8* %27) #11
  unreachable

; <label>:28:                                     ; preds = %21
  %29 = add nsw i32 %13, -48
  %30 = getelementptr inbounds i8, i8* %5, i64 2
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #11
  %31 = call i32 @xstrtoul(i8* %30, i8** null, i32 10, i64* nonnull %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %28
  store i64 -1, i64* %2, align 8
  br label %42

; <label>:34:                                     ; preds = %28
  %35 = load i64, i64* %2, align 8
  %36 = icmp ne i32 %31, 0
  %37 = icmp eq i64 %35, 0
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %34
  %40 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %41 = call i8* @quote(i8* %30) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %40, i8* %41) #11
  unreachable

; <label>:42:                                     ; preds = %34, %33
  %43 = phi i64 [ %35, %34 ], [ -1, %33 ]
  %44 = add i64 %43, -1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11
  br label %48

; <label>:45:                                     ; preds = %10
  %46 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i64 0, i64 0), i32 5) #11
  %47 = call i8* @quote(i8* nonnull %5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %46, i8* %47) #11
  unreachable

; <label>:48:                                     ; preds = %42, %14
  %49 = phi i32 [ 0, %14 ], [ %29, %42 ]
  %50 = phi i64 [ 0, %14 ], [ %44, %42 ]
  %51 = call noalias i8* @xmalloc(i64 24) #11
  %52 = bitcast i8* %51 to i32*
  store i32 %49, i32* %52, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 8
  %54 = bitcast i8* %53 to i64*
  store i64 %50, i64* %54, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 16
  %56 = bitcast i8* %55 to %struct.outlist**
  store %struct.outlist* null, %struct.outlist** %56, align 8
  %57 = load %struct.outlist*, %struct.outlist** @outlist_end, align 8
  %58 = getelementptr inbounds %struct.outlist, %struct.outlist* %57, i64 0, i32 2
  %59 = bitcast %struct.outlist** %58 to i8**
  store i8* %51, i8** %59, align 8
  store i8* %51, i8** bitcast (%struct.outlist** @outlist_end to i8**), align 8
  %60 = icmp eq i8* %11, null
  br i1 %60, label %61, label %4

; <label>:61:                                     ; preds = %48
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @add_file_name(i8*, i32* nocapture, i32* nocapture, i32* nocapture, i32* nocapture readonly, i32* nocapture) unnamed_addr #6 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %81

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* @g_names, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i32, i32* %1, i64 %14
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %76 [
    i32 0, label %19
    i32 1, label %22
    i32 2, label %48
    i32 3, label %75
  ]

; <label>:19:                                     ; preds = %11
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i32 5) #11
  %21 = tail call i8* @quotearg_style(i32 4, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20, i8* %21) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:22:                                     ; preds = %11
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %2, align 4
  %25 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %25) #11
  %26 = call i32 @xstrtoul(i8* %16, i8** null, i32 10, i64* nonnull %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %22
  store i64 -1, i64* %8, align 8
  br label %37

; <label>:29:                                     ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i32 %26, 0
  %32 = icmp eq i64 %30, 0
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %29
  %35 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %36 = call i8* @quote(i8* %16) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35, i8* %36) #11
  unreachable

; <label>:37:                                     ; preds = %28, %29
  %38 = phi i64 [ %30, %29 ], [ -1, %28 ]
  %39 = add i64 %38, -1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %25) #11
  %40 = load i64, i64* @join_field_1, align 8
  %41 = icmp eq i64 %40, -1
  %42 = icmp eq i64 %40, %39
  %43 = or i1 %41, %42
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %37
  %45 = add i64 %40, 1
  %46 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %46, i64 %45, i64 %38) #11
  unreachable

; <label>:47:                                     ; preds = %37
  store i64 %39, i64* @join_field_1, align 8
  br label %76

; <label>:48:                                     ; preds = %11
  %49 = getelementptr inbounds i32, i32* %2, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %52) #11
  %53 = call i32 @xstrtoul(i8* %16, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %48
  store i64 -1, i64* %7, align 8
  br label %64

; <label>:56:                                     ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i32 %53, 0
  %59 = icmp eq i64 %57, 0
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %56
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %63 = call i8* @quote(i8* %16) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %62, i8* %63) #11
  unreachable

; <label>:64:                                     ; preds = %55, %56
  %65 = phi i64 [ %57, %56 ], [ -1, %55 ]
  %66 = add i64 %65, -1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %52) #11
  %67 = load i64, i64* @join_field_2, align 8
  %68 = icmp eq i64 %67, -1
  %69 = icmp eq i64 %67, %66
  %70 = or i1 %68, %69
  br i1 %70, label %74, label %71

; <label>:71:                                     ; preds = %64
  %72 = add i64 %67, 1
  %73 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %73, i64 %72, i64 %65) #11
  unreachable

; <label>:74:                                     ; preds = %64
  store i64 %66, i64* @join_field_2, align 8
  br label %76

; <label>:75:                                     ; preds = %11
  tail call fastcc void @add_field_list(i8* %16)
  br label %76

; <label>:76:                                     ; preds = %11, %75, %74, %47
  br i1 %13, label %81, label %77

; <label>:77:                                     ; preds = %76
  %78 = getelementptr inbounds i32, i32* %1, i64 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %1, align 4
  %80 = load i64, i64* bitcast (i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1) to i64*), align 8
  store i64 %80, i64* bitcast ([2 x i8*]* @g_names to i64*), align 16
  br label %81

; <label>:81:                                     ; preds = %76, %77, %6
  %82 = phi i32 [ %9, %6 ], [ 1, %77 ], [ 1, %76 ]
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %1, i64 %84
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* @g_names, i64 0, i64 %84
  store i8* %0, i8** %86, align 8
  %87 = add nsw i32 %82, 1
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %81
  store i32 3, i32* %5, align 4
  br label %91

; <label>:91:                                     ; preds = %90, %81
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @get_line(%struct._IO_FILE*, %struct.line** nocapture, i32) unnamed_addr #6 {
  %4 = load %struct.line*, %struct.line** %1, align 8
  %5 = add nsw i32 %2, -1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @prevline, i64 0, i64 %6
  %8 = load %struct.line*, %struct.line** %7, align 8
  %9 = icmp eq %struct.line* %4, %8
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 %6
  %12 = load %struct.line*, %struct.line** %11, align 8
  store %struct.line* %4, %struct.line** %11, align 8
  store %struct.line* %12, %struct.line** %1, align 8
  br label %13

; <label>:13:                                     ; preds = %10, %3
  %14 = phi %struct.line* [ %12, %10 ], [ %4, %3 ]
  %15 = icmp eq %struct.line* %14, null
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.line, %struct.line* %14, i64 0, i32 1
  store i64 0, i64* %17, align 8
  br label %22

; <label>:18:                                     ; preds = %13
  %19 = tail call noalias i8* @xcalloc(i64 1, i64 48) #11
  %20 = bitcast i8* %19 to %struct.line*
  %21 = bitcast %struct.line** %1 to i8**
  store i8* %19, i8** %21, align 8
  br label %22

; <label>:22:                                     ; preds = %18, %16
  %23 = phi %struct.line* [ %14, %16 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 0
  %25 = load i1, i1* @eolchar, align 1
  %26 = select i1 %25, i8 0, i8 10
  %27 = tail call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %24, %struct._IO_FILE* %0, i8 signext %26) #11
  %28 = icmp eq %struct.linebuffer* %27, null
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

; <label>:34:                                     ; preds = %29
  %35 = tail call i32* @__errno_location() #1
  %36 = load i32, i32* %35, align 4
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %36, i8* %37) #11
  unreachable

; <label>:38:                                     ; preds = %29
  %39 = icmp eq %struct.line* %23, null
  br i1 %39, label %294, label %40

; <label>:40:                                     ; preds = %38
  %41 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 3
  %42 = bitcast %struct.field** %41 to i8**
  %43 = load i8*, i8** %42, align 8
  tail call void @free(i8* %43) #11
  store %struct.field* null, %struct.field** %41, align 8
  %44 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  tail call void @free(i8* %45) #11
  store i8* null, i8** %44, align 8
  br label %294

; <label>:46:                                     ; preds = %22
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* @line_no, i64 0, i64 %6
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = icmp eq i8* %51, %55
  br i1 %56, label %252, label %57

; <label>:57:                                     ; preds = %46
  %58 = load i32, i32* @tab, align 4
  %59 = icmp sgt i32 %58, -1
  %60 = icmp ne i32 %58, 10
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %118

; <label>:62:                                     ; preds = %57
  %63 = ptrtoint i8* %55 to i64
  %64 = ptrtoint i8* %51 to i64
  %65 = sub i64 %63, %64
  %66 = tail call i8* @memchr(i8* %51, i32 %58, i64 %65) #13
  %67 = icmp eq i8* %66, null
  br i1 %67, label %211, label %68

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 1
  %70 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 2
  %71 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 3
  %72 = bitcast %struct.field** %71 to i8**
  %73 = load i64, i64* %69, align 8
  br label %74

; <label>:74:                                     ; preds = %106, %68
  %75 = phi i32 [ %58, %68 ], [ %107, %106 ]
  %76 = phi i64 [ %73, %68 ], [ %112, %106 ]
  %77 = phi i8* [ %66, %68 ], [ %116, %106 ]
  %78 = phi i64 [ %64, %68 ], [ %114, %106 ]
  %79 = phi i8* [ %51, %68 ], [ %113, %106 ]
  %80 = ptrtoint i8* %77 to i64
  %81 = sub i64 %80, %78
  %82 = load i64, i64* %70, align 8
  %83 = icmp ult i64 %76, %82
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %74
  %85 = load %struct.field*, %struct.field** %71, align 8
  br label %106

; <label>:86:                                     ; preds = %74
  %87 = load i8*, i8** %72, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %86
  %90 = icmp eq i64 %82, 0
  %91 = select i1 %90, i64 8, i64 %82
  br label %99

; <label>:92:                                     ; preds = %86
  %93 = icmp ult i64 %82, 384307168202282325
  br i1 %93, label %95, label %94

; <label>:94:                                     ; preds = %92
  tail call void @xalloc_die() #14
  unreachable

; <label>:95:                                     ; preds = %92
  %96 = lshr i64 %82, 1
  %97 = add i64 %82, 1
  %98 = add i64 %97, %96
  br label %99

; <label>:99:                                     ; preds = %95, %89
  %100 = phi i64 [ %98, %95 ], [ %91, %89 ]
  store i64 %100, i64* %70, align 8
  %101 = shl i64 %100, 4
  %102 = tail call i8* @xrealloc(i8* %87, i64 %101) #11
  store i8* %102, i8** %72, align 8
  %103 = bitcast i8* %102 to %struct.field*
  %104 = load i64, i64* %69, align 8
  %105 = load i32, i32* @tab, align 4
  br label %106

; <label>:106:                                    ; preds = %99, %84
  %107 = phi i32 [ %75, %84 ], [ %105, %99 ]
  %108 = phi %struct.field* [ %85, %84 ], [ %103, %99 ]
  %109 = phi i64 [ %76, %84 ], [ %104, %99 ]
  %110 = getelementptr inbounds %struct.field, %struct.field* %108, i64 %109, i32 0
  store i8* %79, i8** %110, align 8
  %111 = getelementptr inbounds %struct.field, %struct.field* %108, i64 %109, i32 1
  store i64 %81, i64* %111, align 8
  %112 = add i64 %109, 1
  store i64 %112, i64* %69, align 8
  %113 = getelementptr inbounds i8, i8* %77, i64 1
  %114 = ptrtoint i8* %113 to i64
  %115 = sub i64 %63, %114
  %116 = tail call i8* @memchr(i8* %113, i32 %107, i64 %115) #13
  %117 = icmp eq i8* %116, null
  br i1 %117, label %209, label %74

; <label>:118:                                    ; preds = %57
  %119 = icmp slt i32 %58, 0
  br i1 %119, label %120, label %211

; <label>:120:                                    ; preds = %118
  %121 = tail call i16** @__ctype_b_loc() #1
  %122 = load i16*, i16** %121, align 8
  br label %123

; <label>:123:                                    ; preds = %138, %120
  %124 = phi i8* [ %139, %138 ], [ %51, %120 ]
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds i16, i16* %122, i64 %126
  %128 = load i16, i16* %127, align 2
  %129 = and i16 %128, 1
  %130 = icmp eq i8 %125, 10
  %131 = icmp ne i16 %129, 0
  %132 = or i1 %130, %131
  br i1 %132, label %138, label %133

; <label>:133:                                    ; preds = %123
  %134 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 1
  %135 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 2
  %136 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 3
  %137 = bitcast %struct.field** %136 to i8**
  br label %142

; <label>:138:                                    ; preds = %123
  %139 = getelementptr inbounds i8, i8* %124, i64 1
  %140 = icmp eq i8* %139, %55
  br i1 %140, label %251, label %123

; <label>:141:                                    ; preds = %199
  br label %142

; <label>:142:                                    ; preds = %141, %133
  %143 = phi i16* [ %122, %133 ], [ %201, %141 ]
  %144 = phi i8* [ %124, %133 ], [ %197, %141 ]
  br label %145

; <label>:145:                                    ; preds = %149, %142
  %146 = phi i8* [ %144, %142 ], [ %147, %149 ]
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = icmp eq i8* %147, %55
  br i1 %148, label %158, label %149

; <label>:149:                                    ; preds = %145
  %150 = load i8, i8* %147, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds i16, i16* %143, i64 %151
  %153 = load i16, i16* %152, align 2
  %154 = and i16 %153, 1
  %155 = icmp eq i8 %150, 10
  %156 = icmp ne i16 %154, 0
  %157 = or i1 %155, %156
  br i1 %157, label %158, label %145

; <label>:158:                                    ; preds = %149, %145
  %159 = phi i8* [ %147, %149 ], [ %55, %145 ]
  %160 = phi i1 [ false, %149 ], [ true, %145 ]
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %144 to i64
  %163 = sub i64 %161, %162
  %164 = load i64, i64* %134, align 8
  %165 = load i64, i64* %135, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %169

; <label>:167:                                    ; preds = %158
  %168 = load %struct.field*, %struct.field** %136, align 8
  br label %188

; <label>:169:                                    ; preds = %158
  %170 = load i8*, i8** %137, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %175

; <label>:172:                                    ; preds = %169
  %173 = icmp eq i64 %165, 0
  %174 = select i1 %173, i64 8, i64 %165
  br label %182

; <label>:175:                                    ; preds = %169
  %176 = icmp ult i64 %165, 384307168202282325
  br i1 %176, label %178, label %177

; <label>:177:                                    ; preds = %175
  tail call void @xalloc_die() #14
  unreachable

; <label>:178:                                    ; preds = %175
  %179 = lshr i64 %165, 1
  %180 = add i64 %165, 1
  %181 = add i64 %180, %179
  br label %182

; <label>:182:                                    ; preds = %178, %172
  %183 = phi i64 [ %181, %178 ], [ %174, %172 ]
  store i64 %183, i64* %135, align 8
  %184 = shl i64 %183, 4
  %185 = tail call i8* @xrealloc(i8* %170, i64 %184) #11
  store i8* %185, i8** %137, align 8
  %186 = bitcast i8* %185 to %struct.field*
  %187 = load i64, i64* %134, align 8
  br label %188

; <label>:188:                                    ; preds = %182, %167
  %189 = phi %struct.field* [ %168, %167 ], [ %186, %182 ]
  %190 = phi i64 [ %164, %167 ], [ %187, %182 ]
  %191 = getelementptr inbounds %struct.field, %struct.field* %189, i64 %190, i32 0
  store i8* %144, i8** %191, align 8
  %192 = getelementptr inbounds %struct.field, %struct.field* %189, i64 %190, i32 1
  store i64 %163, i64* %192, align 8
  %193 = add i64 %190, 1
  store i64 %193, i64* %134, align 8
  br i1 %160, label %250, label %194

; <label>:194:                                    ; preds = %188
  br label %195

; <label>:195:                                    ; preds = %194, %199
  %196 = phi i8* [ %197, %199 ], [ %159, %194 ]
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = icmp eq i8* %197, %55
  br i1 %198, label %210, label %199

; <label>:199:                                    ; preds = %195
  %200 = load i8, i8* %197, align 1
  %201 = load i16*, i16** %121, align 8
  %202 = zext i8 %200 to i64
  %203 = getelementptr inbounds i16, i16* %201, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = and i16 %204, 1
  %206 = icmp eq i8 %200, 10
  %207 = icmp ne i16 %205, 0
  %208 = or i1 %206, %207
  br i1 %208, label %195, label %141

; <label>:209:                                    ; preds = %106
  br label %211

; <label>:210:                                    ; preds = %195
  br label %211

; <label>:211:                                    ; preds = %210, %209, %118, %62
  %212 = phi i8* [ %51, %118 ], [ %51, %62 ], [ %113, %209 ], [ %55, %210 ]
  %213 = ptrtoint i8* %55 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ult i64 %217, %219
  %221 = getelementptr inbounds %struct.line, %struct.line* %23, i64 0, i32 3
  br i1 %220, label %222, label %224

; <label>:222:                                    ; preds = %211
  %223 = load %struct.field*, %struct.field** %221, align 8
  br label %244

; <label>:224:                                    ; preds = %211
  %225 = bitcast %struct.field** %221 to i8**
  %226 = load i8*, i8** %225, align 8
  %227 = icmp eq i8* %226, null
  br i1 %227, label %228, label %231

; <label>:228:                                    ; preds = %224
  %229 = icmp eq i64 %219, 0
  %230 = select i1 %229, i64 8, i64 %219
  br label %238

; <label>:231:                                    ; preds = %224
  %232 = icmp ult i64 %219, 384307168202282325
  br i1 %232, label %234, label %233

; <label>:233:                                    ; preds = %231
  tail call void @xalloc_die() #14
  unreachable

; <label>:234:                                    ; preds = %231
  %235 = lshr i64 %219, 1
  %236 = add i64 %219, 1
  %237 = add i64 %236, %235
  br label %238

; <label>:238:                                    ; preds = %234, %228
  %239 = phi i64 [ %237, %234 ], [ %230, %228 ]
  store i64 %239, i64* %218, align 8
  %240 = shl i64 %239, 4
  %241 = tail call i8* @xrealloc(i8* %226, i64 %240) #11
  store i8* %241, i8** %225, align 8
  %242 = bitcast i8* %241 to %struct.field*
  %243 = load i64, i64* %216, align 8
  br label %244

; <label>:244:                                    ; preds = %238, %222
  %245 = phi %struct.field* [ %223, %222 ], [ %242, %238 ]
  %246 = phi i64 [ %217, %222 ], [ %243, %238 ]
  %247 = getelementptr inbounds %struct.field, %struct.field* %245, i64 %246, i32 0
  store i8* %212, i8** %247, align 8
  %248 = getelementptr inbounds %struct.field, %struct.field* %245, i64 %246, i32 1
  store i64 %215, i64* %248, align 8
  %249 = add i64 %246, 1
  store i64 %249, i64* %216, align 8
  br label %252

; <label>:250:                                    ; preds = %188
  br label %252

; <label>:251:                                    ; preds = %138
  br label %252

; <label>:252:                                    ; preds = %251, %250, %46, %244
  %253 = load %struct.line*, %struct.line** %7, align 8
  %254 = icmp eq %struct.line* %253, null
  br i1 %254, label %293, label %255

; <label>:255:                                    ; preds = %252
  %256 = load i32, i32* @check_input_order, align 4
  switch i32 %256, label %257 [
    i32 2, label %293
    i32 1, label %259
  ]

; <label>:257:                                    ; preds = %255
  %258 = load i1, i1* @seen_unpairable, align 1
  br i1 %258, label %259, label %293

; <label>:259:                                    ; preds = %257, %255
  %260 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %6
  %261 = load i8, i8* %260, align 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %293

; <label>:263:                                    ; preds = %259
  %264 = icmp eq i32 %2, 1
  %265 = load i64, i64* @join_field_1, align 8
  %266 = load i64, i64* @join_field_2, align 8
  %267 = select i1 %264, i64 %265, i64 %266
  %268 = tail call fastcc i32 @keycmp(%struct.line* nonnull %253, %struct.line* %23, i64 %267, i64 %267) #11
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %293

; <label>:270:                                    ; preds = %263
  %271 = load i64, i64* %52, align 8
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %280, label %273

; <label>:273:                                    ; preds = %270
  %274 = load i8*, i8** %50, align 8
  %275 = add i64 %271, -1
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = icmp eq i8 %277, 10
  %279 = select i1 %278, i64 %275, i64 %271
  br label %280

; <label>:280:                                    ; preds = %273, %270
  %281 = phi i64 [ %279, %273 ], [ 0, %270 ]
  %282 = icmp ult i64 %281, 2147483647
  %283 = select i1 %282, i64 %281, i64 2147483647
  %284 = load i32, i32* @check_input_order, align 4
  %285 = icmp eq i32 %284, 1
  %286 = zext i1 %285 to i32
  %287 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i64 0, i64 0), i32 5) #11
  %288 = getelementptr inbounds [2 x i8*], [2 x i8*]* @g_names, i64 0, i64 %6
  %289 = load i8*, i8** %288, align 8
  %290 = load i64, i64* %47, align 8
  %291 = trunc i64 %283 to i32
  %292 = load i8*, i8** %50, align 8
  tail call void (i32, i32, i8*, ...) @error(i32 %286, i32 0, i8* %287, i8* %289, i64 %290, i32 %291, i8* %292) #11
  store i8 1, i8* %260, align 1
  br label %293

; <label>:293:                                    ; preds = %280, %263, %259, %257, %255, %252
  store %struct.line* %23, %struct.line** %7, align 8
  br label %294

; <label>:294:                                    ; preds = %40, %38, %293
  %295 = phi i1 [ true, %293 ], [ false, %38 ], [ false, %40 ]
  ret i1 %295
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @prjoin(%struct.line* readonly, %struct.line* nocapture readonly) unnamed_addr #6 {
  %3 = load i32, i32* @tab, align 4
  %4 = load %struct.outlist*, %struct.outlist** getelementptr inbounds (%struct.outlist, %struct.outlist* @outlist_head, i64 0, i32 2), align 8
  %5 = icmp eq %struct.outlist* %4, null
  %6 = icmp eq %struct.line* %0, @uni_blank
  br i1 %5, label %83, label %7

; <label>:7:                                      ; preds = %2
  %8 = icmp slt i32 %3, 0
  %9 = select i1 %6, i64* @join_field_2, i64* @join_field_1
  %10 = select i1 %6, %struct.line* %1, %struct.line* %0
  %11 = shl i32 %3, 24
  %12 = ashr exact i32 %11, 24
  %13 = select i1 %8, i32 32, i32 %12
  %14 = trunc i32 %13 to i8
  %15 = and i32 %13, 255
  br label %16

; <label>:16:                                     ; preds = %66, %7
  %17 = phi %struct.outlist* [ %4, %7 ], [ %55, %66 ]
  %18 = getelementptr inbounds %struct.outlist, %struct.outlist* %17, i64 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %19, 1
  %22 = select i1 %21, %struct.line* %0, %struct.line* %1
  %23 = getelementptr inbounds %struct.outlist, %struct.outlist* %17, i64 0, i32 1
  %24 = select i1 %20, i64* %9, i64* %23
  %25 = select i1 %20, %struct.line* %10, %struct.line* %22
  %26 = load i64, i64* %24, align 8
  %27 = getelementptr inbounds %struct.line, %struct.line* %25, i64 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %28, %26
  br i1 %29, label %30, label %47

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds %struct.line, %struct.line* %25, i64 0, i32 3
  %32 = load %struct.field*, %struct.field** %31, align 8
  %33 = getelementptr inbounds %struct.field, %struct.field* %32, i64 %26, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %41, label %36

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.field, %struct.field* %32, i64 %26, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = tail call i64 @fwrite_unlocked(i8* %38, i64 1, i64 %34, %struct._IO_FILE* %39) #11
  br label %53

; <label>:41:                                     ; preds = %30
  %42 = load i8*, i8** @empty_filler, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %53, label %44

; <label>:44:                                     ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %46 = tail call i32 @fputs_unlocked(i8* nonnull %42, %struct._IO_FILE* %45) #11
  br label %53

; <label>:47:                                     ; preds = %16
  %48 = load i8*, i8** @empty_filler, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %53, label %50

; <label>:50:                                     ; preds = %47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %52 = tail call i32 @fputs_unlocked(i8* nonnull %48, %struct._IO_FILE* %51) #11
  br label %53

; <label>:53:                                     ; preds = %36, %41, %44, %47, %50
  %54 = getelementptr inbounds %struct.outlist, %struct.outlist* %17, i64 0, i32 2
  %55 = load %struct.outlist*, %struct.outlist** %54, align 8
  %56 = icmp eq %struct.outlist* %55, null
  br i1 %56, label %69, label %57

; <label>:57:                                     ; preds = %53
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %58, i64 0, i32 5
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %58, i64 0, i32 6
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ult i8* %60, %62
  br i1 %63, label %67, label %64

; <label>:64:                                     ; preds = %57
  %65 = tail call i32 @__overflow(%struct._IO_FILE* %58, i32 %15) #11
  br label %66

; <label>:66:                                     ; preds = %64, %67
  br label %16

; <label>:67:                                     ; preds = %57
  %68 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %68, i8** %59, align 8
  store i8 %14, i8* %60, align 1
  br label %66

; <label>:69:                                     ; preds = %53
  %70 = load i1, i1* @eolchar, align 1
  %71 = select i1 %70, i32 0, i32 10
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ult i8* %74, %76
  br i1 %77, label %80, label %78

; <label>:78:                                     ; preds = %69
  %79 = tail call i32 @__overflow(%struct._IO_FILE* %72, i32 %71) #11
  br label %132

; <label>:80:                                     ; preds = %69
  %81 = trunc i32 %71 to i8
  %82 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %82, i8** %73, align 8
  store i8 %81, i8* %74, align 1
  br label %132

; <label>:83:                                     ; preds = %2
  %84 = select i1 %6, %struct.line* %1, %struct.line* %0
  %85 = load i64, i64* @join_field_2, align 8
  %86 = load i64, i64* @join_field_1, align 8
  %87 = select i1 %6, i64 %85, i64 %86
  %88 = getelementptr inbounds %struct.line, %struct.line* %84, i64 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ugt i64 %89, %87
  br i1 %90, label %91, label %108

; <label>:91:                                     ; preds = %83
  %92 = getelementptr inbounds %struct.line, %struct.line* %84, i64 0, i32 3
  %93 = load %struct.field*, %struct.field** %92, align 8
  %94 = getelementptr inbounds %struct.field, %struct.field* %93, i64 %87, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %102, label %97

; <label>:97:                                     ; preds = %91
  %98 = getelementptr inbounds %struct.field, %struct.field* %93, i64 %87, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %101 = tail call i64 @fwrite_unlocked(i8* %99, i64 1, i64 %95, %struct._IO_FILE* %100) #11
  br label %114

; <label>:102:                                    ; preds = %91
  %103 = load i8*, i8** @empty_filler, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %114, label %105

; <label>:105:                                    ; preds = %102
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %107 = tail call i32 @fputs_unlocked(i8* nonnull %103, %struct._IO_FILE* %106) #11
  br label %114

; <label>:108:                                    ; preds = %83
  %109 = load i8*, i8** @empty_filler, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %114, label %111

; <label>:111:                                    ; preds = %108
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %113 = tail call i32 @fputs_unlocked(i8* nonnull %109, %struct._IO_FILE* %112) #11
  br label %114

; <label>:114:                                    ; preds = %97, %102, %105, %108, %111
  %115 = load i64, i64* @join_field_1, align 8
  %116 = load i64, i64* @autocount_1, align 8
  tail call fastcc void @prfields(%struct.line* %0, i64 %115, i64 %116)
  %117 = load i64, i64* @join_field_2, align 8
  %118 = load i64, i64* @autocount_2, align 8
  tail call fastcc void @prfields(%struct.line* %1, i64 %117, i64 %118)
  %119 = load i1, i1* @eolchar, align 1
  %120 = select i1 %119, i32 0, i32 10
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %122 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 6
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ult i8* %123, %125
  br i1 %126, label %129, label %127

; <label>:127:                                    ; preds = %114
  %128 = tail call i32 @__overflow(%struct._IO_FILE* %121, i32 %120) #11
  br label %132

; <label>:129:                                    ; preds = %114
  %130 = trunc i32 %120 to i8
  %131 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %131, i8** %122, align 8
  store i8 %130, i8* %123, align 1
  br label %132

; <label>:132:                                    ; preds = %129, %127, %80, %78
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @keycmp(%struct.line* nocapture readonly, %struct.line* nocapture readonly, i64, i64) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %6, %2
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 3
  %10 = load %struct.field*, %struct.field** %9, align 8
  %11 = getelementptr inbounds %struct.field, %struct.field* %10, i64 %2, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.field, %struct.field* %10, i64 %2, i32 1
  %14 = load i64, i64* %13, align 8
  br label %15

; <label>:15:                                     ; preds = %4, %8
  %16 = phi i8* [ %12, %8 ], [ null, %4 ]
  %17 = phi i64 [ %14, %8 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %19, %3
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 3
  %23 = load %struct.field*, %struct.field** %22, align 8
  %24 = getelementptr inbounds %struct.field, %struct.field* %23, i64 %3, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.field, %struct.field* %23, i64 %3, i32 1
  %27 = load i64, i64* %26, align 8
  br label %28

; <label>:28:                                     ; preds = %15, %21
  %29 = phi i8* [ %25, %21 ], [ null, %15 ]
  %30 = phi i64 [ %27, %21 ], [ 0, %15 ]
  %31 = icmp eq i64 %17, 0
  %32 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %36

; <label>:33:                                     ; preds = %28
  %34 = xor i1 %32, true
  %35 = sext i1 %34 to i32
  br label %60

; <label>:36:                                     ; preds = %28
  br i1 %32, label %60, label %37

; <label>:37:                                     ; preds = %36
  %38 = load i1, i1* @ignore_case, align 1
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %37
  %40 = icmp ult i64 %17, %30
  %41 = select i1 %40, i64 %17, i64 %30
  %42 = tail call i32 @memcasecmp(i8* %16, i8* %29, i64 %41) #13
  br label %52

; <label>:43:                                     ; preds = %37
  %44 = load i8, i8* @hard_LC_COLLATE, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

; <label>:46:                                     ; preds = %43
  %47 = tail call i32 @xmemcoll(i8* %16, i64 %17, i8* %29, i64 %30) #11
  br label %60

; <label>:48:                                     ; preds = %43
  %49 = icmp ult i64 %17, %30
  %50 = select i1 %49, i64 %17, i64 %30
  %51 = tail call i32 @memcmp(i8* %16, i8* %29, i64 %50) #13
  br label %52

; <label>:52:                                     ; preds = %48, %39
  %53 = phi i32 [ %42, %39 ], [ %51, %48 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %52
  %56 = icmp ult i64 %17, %30
  %57 = icmp ne i64 %17, %30
  %58 = zext i1 %57 to i32
  %59 = select i1 %56, i32 -1, i32 %58
  br label %60

; <label>:60:                                     ; preds = %55, %52, %36, %46, %33
  %61 = phi i32 [ %35, %33 ], [ %47, %46 ], [ 1, %36 ], [ %53, %52 ], [ %59, %55 ]
  ret i32 %61
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @prfields(%struct.line* nocapture readonly, i64, i64) unnamed_addr #6 {
  %4 = load i1, i1* @autoformat, align 1
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  br label %8

; <label>:8:                                      ; preds = %3, %5
  %9 = phi i64 [ %7, %5 ], [ %2, %3 ]
  %10 = load i32, i32* @tab, align 4
  %11 = icmp slt i32 %10, 0
  %12 = trunc i32 %10 to i8
  %13 = select i1 %11, i8 32, i8 %12
  %14 = icmp ne i64 %1, 0
  %15 = icmp ne i64 %9, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 3
  %20 = zext i8 %13 to i32
  br label %29

; <label>:21:                                     ; preds = %66
  br label %22

; <label>:22:                                     ; preds = %21, %8
  %23 = add i64 %1, 1
  %24 = icmp ult i64 %23, %9
  br i1 %24, label %25, label %112

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 3
  %28 = zext i8 %13 to i32
  br label %71

; <label>:29:                                     ; preds = %17, %66
  %30 = phi i64 [ 0, %17 ], [ %67, %66 ]
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %31, i64 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %31, i64 0, i32 6
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ult i8* %33, %35
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %29
  %38 = tail call i32 @__overflow(%struct._IO_FILE* %31, i32 %20) #11
  br label %41

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %40, i8** %32, align 8
  store i8 %13, i8* %33, align 1
  br label %41

; <label>:41:                                     ; preds = %37, %39
  %42 = load i64, i64* %18, align 8
  %43 = icmp ugt i64 %42, %30
  br i1 %43, label %44, label %60

; <label>:44:                                     ; preds = %41
  %45 = load %struct.field*, %struct.field** %19, align 8
  %46 = getelementptr inbounds %struct.field, %struct.field* %45, i64 %30, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %54, label %49

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.field, %struct.field* %45, i64 %30, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = tail call i64 @fwrite_unlocked(i8* %51, i64 1, i64 %47, %struct._IO_FILE* %52) #11
  br label %66

; <label>:54:                                     ; preds = %44
  %55 = load i8*, i8** @empty_filler, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %66, label %57

; <label>:57:                                     ; preds = %54
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = tail call i32 @fputs_unlocked(i8* nonnull %55, %struct._IO_FILE* %58) #11
  br label %66

; <label>:60:                                     ; preds = %41
  %61 = load i8*, i8** @empty_filler, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %66, label %63

; <label>:63:                                     ; preds = %60
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = tail call i32 @fputs_unlocked(i8* nonnull %61, %struct._IO_FILE* %64) #11
  br label %66

; <label>:66:                                     ; preds = %49, %54, %57, %60, %63
  %67 = add nuw i64 %30, 1
  %68 = icmp ult i64 %67, %1
  %69 = icmp ult i64 %67, %9
  %70 = and i1 %68, %69
  br i1 %70, label %29, label %21

; <label>:71:                                     ; preds = %96, %25
  %72 = phi i64 [ %23, %25 ], [ %97, %96 ]
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %73, i64 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %73, i64 0, i32 6
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ult i8* %75, %77
  br i1 %78, label %81, label %79

; <label>:79:                                     ; preds = %71
  %80 = tail call i32 @__overflow(%struct._IO_FILE* %73, i32 %28) #11
  br label %83

; <label>:81:                                     ; preds = %71
  %82 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %82, i8** %74, align 8
  store i8 %13, i8* %75, align 1
  br label %83

; <label>:83:                                     ; preds = %79, %81
  %84 = load i64, i64* %26, align 8
  %85 = icmp ugt i64 %84, %72
  br i1 %85, label %86, label %105

; <label>:86:                                     ; preds = %83
  %87 = load %struct.field*, %struct.field** %27, align 8
  %88 = getelementptr inbounds %struct.field, %struct.field* %87, i64 %72, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %99, label %91

; <label>:91:                                     ; preds = %86
  %92 = getelementptr inbounds %struct.field, %struct.field* %87, i64 %72, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %95 = tail call i64 @fwrite_unlocked(i8* %93, i64 1, i64 %89, %struct._IO_FILE* %94) #11
  br label %96

; <label>:96:                                     ; preds = %91, %99, %102, %105, %108
  %97 = add i64 %72, 1
  %98 = icmp eq i64 %97, %9
  br i1 %98, label %111, label %71

; <label>:99:                                     ; preds = %86
  %100 = load i8*, i8** @empty_filler, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %96, label %102

; <label>:102:                                    ; preds = %99
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %104 = tail call i32 @fputs_unlocked(i8* nonnull %100, %struct._IO_FILE* %103) #11
  br label %96

; <label>:105:                                    ; preds = %83
  %106 = load i8*, i8** @empty_filler, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %96, label %108

; <label>:108:                                    ; preds = %105
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %110 = tail call i32 @fputs_unlocked(i8* nonnull %106, %struct._IO_FILE* %109) #11
  br label %96

; <label>:111:                                    ; preds = %96
  br label %112

; <label>:112:                                    ; preds = %111, %22
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #4

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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 5) #11
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.27, i64 0, i64 0), i8* %17, i8* %12) #11
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.28, i64 0, i64 0), i8* %12) #11
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

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 {
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct._IO_FILE* %0, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %25, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #11
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11
  store i32 %13, i32* %12, align 4
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #11
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1
  %23 = load i32, i32* %22, align 4
  %24 = tail call i32 @close(i32 %9) #11
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

declare i32 @close(i32) local_unnamed_addr #3

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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.37, i64 0, i64 0)) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind sspstrong uwtable
define void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.linebuffer* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %63

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i8, i8* %4, i64 %11
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ]
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ]
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ]
  %19 = load i8*, i8** %13, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %23, i8** %13, align 8
  %24 = load i8, i8* %19, align 1
  %25 = zext i8 %24 to i32
  br label %39

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16
  br i1 %30, label %62, label %31

; <label>:31:                                     ; preds = %29
  %32 = load i32, i32* %6, align 8
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1
  %37 = load i8, i8* %36, align 1
  %38 = icmp eq i8 %37, 10
  br i1 %38, label %55, label %39

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ]
  %41 = icmp eq i8* %17, %18
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #11
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %44, i8** %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  br label %48

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ]
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ]
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ]
  %52 = trunc i32 %40 to i8
  %53 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %52, i8* %50, align 1
  %54 = icmp eq i32 %40, 10
  br i1 %54, label %55, label %15

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ]
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ]
  %58 = ptrtoint i8* %57 to i64
  %59 = ptrtoint i8* %56 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1
  store i64 %60, i64* %61, align 8
  br label %63

; <label>:62:                                     ; preds = %31, %29
  br label %63

; <label>:63:                                     ; preds = %62, %2, %55
  %64 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %62 ]
  ret %struct.linebuffer* %64
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %65

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %5, i64 %12
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17

; <label>:17:                                     ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ]
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ]
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ]
  %21 = load i8*, i8** %14, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %25, i8** %14, align 8
  %26 = load i8, i8* %21, align 1
  %27 = zext i8 %26 to i32
  br label %41

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %41

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18
  br i1 %32, label %64, label %33

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* %7, align 8
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %64

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, %2
  br i1 %40, label %57, label %41

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ]
  %43 = icmp eq i8* %19, %20
  br i1 %43, label %44, label %50

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #11
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %46, i8** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  br label %50

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ]
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ]
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ]
  %54 = trunc i32 %42 to i8
  %55 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %54, i8* %52, align 1
  %56 = icmp eq i32 %42, %16
  br i1 %56, label %57, label %17

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ]
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ]
  %60 = ptrtoint i8* %59 to i64
  %61 = ptrtoint i8* %58 to i64
  %62 = sub i64 %60, %61
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1
  store i64 %62, i64* %63, align 8
  br label %65

; <label>:64:                                     ; preds = %33, %31
  br label %65

; <label>:65:                                     ; preds = %64, %3, %57
  %66 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %64 ]
  ret %struct.linebuffer* %66
}

; Function Attrs: nounwind sspstrong uwtable
define void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #11
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @memcasecmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #10 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %27, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32** @__ctype_toupper_loc() #1
  %7 = load i32*, i32** %6, align 8
  br label %10

; <label>:8:                                      ; preds = %10
  %9 = icmp ult i64 %24, %2
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %5, %8
  %11 = phi i64 [ 0, %5 ], [ %24, %8 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %1, i64 %11
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %13 to i64
  %17 = getelementptr inbounds i32, i32* %7, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = zext i8 %15 to i64
  %20 = getelementptr inbounds i32, i32* %7, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = icmp eq i32 %22, 0
  %24 = add nuw i64 %11, 1
  br i1 %23, label %8, label %25

; <label>:25:                                     ; preds = %8, %10
  %26 = phi i32 [ 0, %8 ], [ %22, %10 ]
  br label %27

; <label>:27:                                     ; preds = %25, %3
  %28 = phi i32 [ 0, %3 ], [ %26, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #13
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ]
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

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
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %2, i8* %3) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.91, i64 0, i64 0), i32 5) #11
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.92, i64 0, i64 0), i32 5) #11
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.93, i64 0, i64 0), i32 5) #11
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.94, i64 0, i64 0), i32 5) #11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.95, i64 0, i64 0), i32 5) #11
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.96, i64 0, i64 0), i32 5) #11
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.97, i64 0, i64 0), i32 5) #11
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.98, i64 0, i64 0), i32 5) #11
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.99, i64 0, i64 0), i32 5) #11
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.100, i64 0, i64 0), i32 5) #11
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.101, i64 0, i64 0), i32 5) #11
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.102, i64 0, i64 0), i32 5) #11
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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.105, i64 0, i64 0), i32 5) #11
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.106, i64 0, i64 0)) #11
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.107, i64 0, i64 0), i32 5) #11
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.108, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.109, i64 0, i64 0)) #11
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.110, i64 0, i64 0), i32 5) #11
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
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.125, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i8* %2) #11
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #6 {
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #11
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #11
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #11
  %12 = load volatile i32, i32* @exit_failure, align 4
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.131, i64 0, i64 0), i32 5) #11
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #11
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #11
  br label %16

; <label>:16:                                     ; preds = %4, %9
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #6 {
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #11
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9:                                      ; preds = %4
  %10 = add i64 %1, -1
  %11 = add i64 %3, -1
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #11
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #11
  %14 = load volatile i32, i32* @exit_failure, align 4
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.131, i64 0, i64 0), i32 5) #11
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #11
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #11
  br label %18

; <label>:18:                                     ; preds = %4, %9
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.135, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #14
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
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #11
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
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #11
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
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %53) #11
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
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #11
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

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

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
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

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
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #11
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.153, i64 0, i64 0)) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.154, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.155, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.155, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.156, i64 0, i64 0)) #11
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.157, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #11
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.158, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #6 {
  %5 = icmp eq i64 %1, %3
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  store i32 0, i32* %10, align 4
  br label %45

; <label>:11:                                     ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %2, i64 %3
  %15 = load i8, i8* %14, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %14, align 1
  %16 = add i64 %1, 1
  %17 = add i64 %3, 1
  %18 = tail call i32* @__errno_location() #1
  br label %19

; <label>:19:                                     ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  store i32 0, i32* %18, align 4
  %24 = tail call i32 @strcoll(i8* %23, i8* %20) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

; <label>:26:                                     ; preds = %19
  %27 = tail call i64 @strlen(i8* %23) #13
  %28 = add i64 %27, 1
  %29 = tail call i64 @strlen(i8* %20) #13
  %30 = add i64 %29, 1
  %31 = sub i64 %22, %28
  %32 = sub i64 %21, %30
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %26
  %35 = icmp ne i64 %32, 0
  %36 = sext i1 %35 to i32
  br label %43

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30
  %39 = getelementptr inbounds i8, i8* %23, i64 %28
  %40 = icmp eq i64 %32, 0
  br i1 %40, label %41, label %19

; <label>:41:                                     ; preds = %37, %19
  %42 = phi i32 [ 1, %37 ], [ %24, %19 ]
  br label %43

; <label>:43:                                     ; preds = %41, %34
  %44 = phi i32 [ %36, %34 ], [ %42, %41 ]
  store i8 %13, i8* %12, align 1
  store i8 %15, i8* %14, align 1
  br label %45

; <label>:45:                                     ; preds = %43, %9
  %46 = phi i32 [ 0, %9 ], [ %44, %43 ]
  ret i32 %46
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %5 = icmp eq i64 %1, %3
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  store i32 0, i32* %10, align 4
  br label %37

; <label>:11:                                     ; preds = %6, %4
  %12 = tail call i32* @__errno_location() #1
  br label %13

; <label>:13:                                     ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  store i32 0, i32* %12, align 4
  %18 = tail call i32 @strcoll(i8* %17, i8* %14) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %13
  %21 = tail call i64 @strlen(i8* %17) #13
  %22 = add i64 %21, 1
  %23 = tail call i64 @strlen(i8* %14) #13
  %24 = add i64 %23, 1
  %25 = sub i64 %16, %22
  %26 = sub i64 %15, %24
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %20
  %29 = icmp ne i64 %26, 0
  %30 = sext i1 %29 to i32
  br label %37

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24
  %33 = getelementptr inbounds i8, i8* %17, i64 %22
  %34 = icmp eq i64 %26, 0
  br i1 %34, label %35, label %13

; <label>:35:                                     ; preds = %13, %31
  %36 = phi i32 [ 1, %31 ], [ %18, %13 ]
  br label %37

; <label>:37:                                     ; preds = %35, %28, %9
  %38 = phi i32 [ 0, %9 ], [ %30, %28 ], [ %36, %35 ]
  ret i32 %38
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
