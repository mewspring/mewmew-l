; ModuleID = 'coreutils-8.27/src/cut.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.field_range_pair = type { i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s OPTION... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Print selected parts of lines from each FILE to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [177 x i8] c"  -b, --bytes=LIST        select only these bytes\0A  -c, --characters=LIST   select only these characters\0A  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter\0A\00", align 1
@.str.4 = private unnamed_addr constant [238 x i8] c"  -f, --fields=LIST       select only these fields;  also print any line\0A                            that contains no delimiter character, unless\0A                            the -s option is specified\0A  -n                      (ignored)\0A\00", align 1
@.str.5 = private unnamed_addr constant [114 x i8] c"      --complement        complement the set of selected bytes, characters\0A                            or fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [210 x i8] c"  -s, --only-delimited    do not print lines not containing delimiters\0A      --output-delimiter=STRING  use STRING as the output delimiter\0A                            the default is to use the input delimiter\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [204 x i8] c"\0AUse one, and only one of -b, -c or -f.  Each LIST is made up of one\0Arange, or many ranges separated by commas.  Selected input is written\0Ain the same order that it is read, and is written exactly once.\0A\00", align 1
@.str.11 = private unnamed_addr constant [262 x i8] c"Each range is one of:\0A\0A  N     N'th byte, character or field, counted from 1\0A  N-    from N'th byte, character or field, to end of line\0A  N-M   from N'th to M'th (included) byte, character or field\0A  -M    from first to M'th (included) byte, character or field\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@operating_mode = internal unnamed_addr global i32 0, align 4
@suppress_non_delimited = internal unnamed_addr global i1 false, align 1
@delim = internal unnamed_addr global i8 0, align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"b:c:d:f:nsz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [39 x i8] c"only one type of list may be specified\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@output_delimiter_specified = internal unnamed_addr global i1 false, align 1
@output_delimiter_length = internal unnamed_addr global i64 0, align 8
@output_delimiter_string = internal unnamed_addr global i8* null, align 8
@line_delim = internal unnamed_addr global i1 false, align 1
@complement = internal unnamed_addr global i1 false, align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@main.dummy = internal global [2 x i8] zeroinitializer, align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_rp = internal unnamed_addr global %struct.field_range_pair* null, align 8
@field_1_buffer = internal global i8* null, align 8
@field_1_bufsize = internal global i64 0, align 8
@.str.56 = private unnamed_addr constant [13 x i8] c"n_bytes != 0\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"src/cut.c\00", align 1
@__PRETTY_FUNCTION__.cut_fields = private unnamed_addr constant [24 x i8] c"void cut_fields(FILE *)\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"only-delimited\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@n_frp = common local_unnamed_addr global i64 0, align 8
@frp = common local_unnamed_addr global %struct.field_range_pair* null, align 8
@.str.1.5 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.2.6 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.3.7 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.4.8 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.5.9 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@n_frp_allocated = internal global i64 0, align 8
@.str.6.10 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal unnamed_addr global i8* null, align 8
@.str.7.11 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.8.12 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.9.13 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.10.14 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.11.15 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@.str.12.16 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@.str.13.17 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.58 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.65, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.70, i32 0, i32 0), i8* null], align 16
@.str.61 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.62 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.63 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.64 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.65 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.66 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.67 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.68 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.69 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.70 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.71 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.73 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.74 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.75 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.76 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.77 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.84 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.85 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.86 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.87 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.100 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.101 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.102 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.103 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.104 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.105 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.143 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.144 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.145 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.146 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.147 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.148 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.149 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11
  br label %63

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i32 5) #11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.28, i64 0, i64 0), i32 5) #11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.3, i64 0, i64 0), i32 5) #11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.4, i64 0, i64 0), i32 5) #11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.6, i64 0, i64 0), i32 5) #11
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 5) #11
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #11
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #11
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #11
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.10, i64 0, i64 0), i32 5) #11
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #11
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.11, i64 0, i64 0), i32 5) #11
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #11
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 5) #11
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0)) #11
  %50 = tail call i8* @setlocale(i32 5, i8* null) #11
  %51 = icmp eq i8* %50, null
  br i1 %51, label %58, label %52

; <label>:52:                                     ; preds = %8
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

; <label>:55:                                     ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i64 0, i64 0), i32 5) #11
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #11
  br label %58

; <label>:58:                                     ; preds = %8, %52, %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 5) #11
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #11
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i32 5) #11
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0)) #11
  br label %63

; <label>:63:                                     ; preds = %58, %3
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
  %3 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %3) #11
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #11
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #11
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11
  store i32 0, i32* @operating_mode, align 4
  store i1 false, i1* @suppress_non_delimited, align 1
  store i8 0, i8* @delim, align 1
  store i1 false, i1* @have_read_stdin, align 1
  br label %8

; <label>:8:                                      ; preds = %49, %2
  %9 = phi i8 [ 0, %2 ], [ %50, %49 ]
  %10 = phi i8* [ undef, %2 ], [ %51, %49 ]
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11
  switch i32 %11, label %56 [
    i32 -1, label %57
    i32 98, label %12
    i32 99, label %12
    i32 102, label %19
    i32 100, label %26
    i32 128, label %37
    i32 110, label %49
    i32 115, label %46
    i32 122, label %47
    i32 129, label %48
    i32 -130, label %52
    i32 -131, label %53
  ]

; <label>:12:                                     ; preds = %8, %8
  %13 = load i32, i32* @operating_mode, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:17:                                     ; preds = %12
  store i32 1, i32* @operating_mode, align 4
  %18 = load i8*, i8** @optarg, align 8
  br label %49

; <label>:19:                                     ; preds = %8
  %20 = load i32, i32* @operating_mode, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %23) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:24:                                     ; preds = %19
  store i32 2, i32* @operating_mode, align 4
  %25 = load i8*, i8** @optarg, align 8
  br label %49

; <label>:26:                                     ; preds = %8
  %27 = load i8*, i8** @optarg, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %27, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %30
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %35) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:36:                                     ; preds = %30, %26
  store i8 %28, i8* @delim, align 1
  br label %49

; <label>:37:                                     ; preds = %8
  store i1 true, i1* @output_delimiter_specified, align 1
  %38 = load i8*, i8** @optarg, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %37
  %42 = tail call i64 @strlen(i8* %38) #13
  br label %43

; <label>:43:                                     ; preds = %37, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %37 ]
  store i64 %44, i64* @output_delimiter_length, align 8
  %45 = tail call noalias i8* @xstrdup(i8* %38) #11
  store i8* %45, i8** @output_delimiter_string, align 8
  br label %49

; <label>:46:                                     ; preds = %8
  store i1 true, i1* @suppress_non_delimited, align 1
  br label %49

; <label>:47:                                     ; preds = %8
  store i1 true, i1* @line_delim, align 1
  br label %49

; <label>:48:                                     ; preds = %8
  store i1 true, i1* @complement, align 1
  br label %49

; <label>:49:                                     ; preds = %48, %47, %46, %43, %36, %24, %17, %8
  %50 = phi i8 [ %9, %48 ], [ %9, %47 ], [ %9, %46 ], [ %9, %43 ], [ 1, %36 ], [ %9, %24 ], [ %9, %17 ], [ %9, %8 ]
  %51 = phi i8* [ %10, %48 ], [ %10, %47 ], [ %10, %46 ], [ %10, %43 ], [ %10, %36 ], [ %25, %24 ], [ %18, %17 ], [ %10, %8 ]
  br label %8

; <label>:52:                                     ; preds = %8
  tail call void @usage(i32 0) #15
  unreachable

; <label>:53:                                     ; preds = %8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* null) #11
  tail call void @exit(i32 0) #14
  unreachable

; <label>:56:                                     ; preds = %8
  tail call void @usage(i32 1) #15
  unreachable

; <label>:57:                                     ; preds = %8
  %58 = load i32, i32* @operating_mode, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %61) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:62:                                     ; preds = %57
  %63 = icmp ne i8 %9, 0
  %64 = icmp ne i32 %58, 2
  %65 = and i1 %63, %64
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:68:                                     ; preds = %62
  %69 = load i1, i1* @suppress_non_delimited, align 1
  %70 = and i1 %64, %69
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:73:                                     ; preds = %68
  %74 = icmp eq i32 %58, 2
  %75 = select i1 %74, i32 0, i32 4
  %76 = load i1, i1* @complement, align 1
  %77 = select i1 %76, i32 2, i32 0
  %78 = or i32 %77, %75
  tail call void @set_fields(i8* %10, i32 %78) #11
  br i1 %63, label %80, label %79

; <label>:79:                                     ; preds = %73
  store i8 9, i8* @delim, align 1
  br label %80

; <label>:80:                                     ; preds = %79, %73
  %81 = load i8*, i8** @output_delimiter_string, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %85

; <label>:83:                                     ; preds = %80
  %84 = load i8, i8* @delim, align 1
  store i8 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 1), align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), i8** @output_delimiter_string, align 8
  store i64 1, i64* @output_delimiter_length, align 8
  br label %85

; <label>:85:                                     ; preds = %83, %80
  %86 = load i32, i32* @optind, align 4
  %87 = icmp eq i32 %86, %0
  br i1 %87, label %91, label %88

; <label>:88:                                     ; preds = %85
  %89 = icmp slt i32 %86, %0
  br i1 %89, label %90, label %107

; <label>:90:                                     ; preds = %88
  br label %94

; <label>:91:                                     ; preds = %85
  %92 = tail call fastcc zeroext i1 @cut_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %93 = zext i1 %92 to i8
  br label %107

; <label>:94:                                     ; preds = %90, %94
  %95 = phi i32 [ %104, %94 ], [ %86, %90 ]
  %96 = phi i8 [ %102, %94 ], [ 1, %90 ]
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8*, i8** %1, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = tail call fastcc zeroext i1 @cut_file(i8* %99)
  %101 = zext i1 %100 to i8
  %102 = and i8 %101, %96
  %103 = load i32, i32* @optind, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @optind, align 4
  %105 = icmp slt i32 %104, %0
  br i1 %105, label %94, label %106

; <label>:106:                                    ; preds = %94
  br label %107

; <label>:107:                                    ; preds = %106, %88, %91
  %108 = phi i8 [ %93, %91 ], [ 1, %88 ], [ %102, %106 ]
  %109 = load i1, i1* @have_read_stdin, align 1
  br i1 %109, label %110, label %117

; <label>:110:                                    ; preds = %107
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %112 = tail call i32 @rpl_fclose(%struct._IO_FILE* %111) #11
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %117

; <label>:114:                                    ; preds = %110
  %115 = tail call i32* @__errno_location() #1
  %116 = load i32, i32* %115, align 4
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #11
  br label %117

; <label>:117:                                    ; preds = %114, %110, %107
  %118 = phi i8 [ 0, %114 ], [ %108, %110 ], [ %108, %107 ]
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  %121 = zext i8 %120 to i32
  ret i32 %121
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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cut_file(i8*) unnamed_addr #6 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 45
  br i1 %3, label %4, label %10

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %4
  store i1 true, i1* @have_read_stdin, align 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %17

; <label>:10:                                     ; preds = %1, %4
  %11 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0))
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno_location() #1
  %15 = load i32, i32* %14, align 4
  %16 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %16) #11
  br label %429

; <label>:17:                                     ; preds = %10, %8
  %18 = phi %struct._IO_FILE* [ %9, %8 ], [ %11, %10 ]
  tail call void @fadvise(%struct._IO_FILE* %18, i32 2) #11
  %19 = load i32, i32* @operating_mode, align 4
  %20 = icmp eq i32 %19, 1
  %21 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8
  store i64 %21, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 1
  br i1 %20, label %23, label %117

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 2
  br label %25

; <label>:25:                                     ; preds = %59, %23
  %26 = phi i64 [ 0, %23 ], [ %60, %59 ]
  %27 = phi i8 [ 0, %23 ], [ %61, %59 ]
  br label %28

; <label>:28:                                     ; preds = %86, %25
  %29 = phi i64 [ %79, %86 ], [ %26, %25 ]
  %30 = load i8*, i8** %22, align 8
  %31 = load i8*, i8** %24, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %28
  %34 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11
  br label %39

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %36, i8** %22, align 8
  %37 = load i8, i8* %30, align 1
  %38 = zext i8 %37 to i32
  br label %39

; <label>:39:                                     ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ]
  %41 = load i1, i1* @line_delim, align 1
  %42 = select i1 %41, i32 0, i32 10
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %62

; <label>:44:                                     ; preds = %39
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %45, i64 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %45, i64 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ult i8* %47, %49
  br i1 %50, label %54, label %51

; <label>:51:                                     ; preds = %44
  %52 = and i32 %40, 255
  %53 = tail call i32 @__overflow(%struct._IO_FILE* %45, i32 %52) #11
  br label %57

; <label>:54:                                     ; preds = %44
  %55 = trunc i32 %40 to i8
  %56 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %56, i8** %46, align 8
  store i8 %55, i8* %47, align 1
  br label %57

; <label>:57:                                     ; preds = %54, %51
  %58 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8
  store i64 %58, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8
  br label %59

; <label>:59:                                     ; preds = %57, %111, %114
  %60 = phi i64 [ 0, %57 ], [ %79, %111 ], [ %79, %114 ]
  %61 = phi i8 [ 0, %57 ], [ %104, %111 ], [ %104, %114 ]
  br label %25

; <label>:62:                                     ; preds = %39
  %63 = icmp eq i32 %40, -1
  br i1 %63, label %64, label %78

; <label>:64:                                     ; preds = %62
  %65 = icmp eq i64 %29, 0
  br i1 %65, label %405, label %66

; <label>:66:                                     ; preds = %64
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ult i8* %69, %71
  br i1 %72, label %75, label %73

; <label>:73:                                     ; preds = %66
  %74 = tail call i32 @__overflow(%struct._IO_FILE* %67, i32 %42) #11
  br label %405

; <label>:75:                                     ; preds = %66
  %76 = trunc i32 %42 to i8
  %77 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %77, i8** %68, align 8
  store i8 %76, i8* %69, align 1
  br label %405

; <label>:78:                                     ; preds = %62
  %79 = add i64 %29, 1
  %80 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8
  %81 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %80, i64 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %79, %82
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %80, i64 1
  store %struct.field_range_pair* %85, %struct.field_range_pair** @current_rp, align 8
  br label %86

; <label>:86:                                     ; preds = %84, %78
  %87 = phi %struct.field_range_pair* [ %80, %78 ], [ %85, %84 ]
  %88 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %87, i64 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ugt i64 %89, %79
  br i1 %90, label %28, label %91

; <label>:91:                                     ; preds = %86
  %92 = load i1, i1* @output_delimiter_specified, align 1
  br i1 %92, label %93, label %103

; <label>:93:                                     ; preds = %91
  %94 = and i8 %27, 1
  %95 = icmp ne i8 %94, 0
  %96 = icmp eq i64 %89, %79
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %103

; <label>:98:                                     ; preds = %93
  %99 = load i8*, i8** @output_delimiter_string, align 8
  %100 = load i64, i64* @output_delimiter_length, align 8
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %102 = tail call i64 @fwrite_unlocked(i8* %99, i64 1, i64 %100, %struct._IO_FILE* %101) #11
  br label %103

; <label>:103:                                    ; preds = %98, %93, %91
  %104 = phi i8 [ %27, %91 ], [ 1, %93 ], [ 1, %98 ]
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ult i8* %107, %109
  br i1 %110, label %114, label %111

; <label>:111:                                    ; preds = %103
  %112 = and i32 %40, 255
  %113 = tail call i32 @__overflow(%struct._IO_FILE* %105, i32 %112) #11
  br label %59

; <label>:114:                                    ; preds = %103
  %115 = trunc i32 %40 to i8
  %116 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %116, i8** %106, align 8
  store i8 %115, i8* %107, align 1
  br label %59

; <label>:117:                                    ; preds = %17
  %118 = load i8*, i8** %22, align 8
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ult i8* %118, %120
  br i1 %121, label %122, label %126

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %123, i8** %22, align 8
  %124 = load i8, i8* %118, align 1
  %125 = zext i8 %124 to i32
  br label %129

; <label>:126:                                    ; preds = %117
  %127 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %405, label %129

; <label>:129:                                    ; preds = %126, %122
  %130 = phi i32 [ %125, %122 ], [ %127, %126 ]
  %131 = tail call i32 @ungetc(i32 %130, %struct._IO_FILE* nonnull %18) #11
  %132 = load i1, i1* @suppress_non_delimited, align 1
  %133 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8
  %134 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %133, i64 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ugt i64 %135, 1
  %137 = xor i1 %132, %136
  %138 = xor i1 %137, true
  br label %139

; <label>:139:                                    ; preds = %360, %129
  %140 = phi i64 [ 1, %129 ], [ %361, %360 ]
  %141 = phi i8 [ 0, %129 ], [ %362, %360 ]
  %142 = phi i32 [ 0, %129 ], [ %363, %360 ]
  %143 = icmp ne i64 %140, 1
  %144 = or i1 %143, %138
  br i1 %144, label %145, label %147

; <label>:145:                                    ; preds = %139
  %146 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8
  br label %241

; <label>:147:                                    ; preds = %139
  %148 = load i8, i8* @delim, align 1
  %149 = zext i8 %148 to i32
  %150 = load i1, i1* @line_delim, align 1
  %151 = select i1 %150, i32 0, i32 10
  %152 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %149, i32 %151, %struct._IO_FILE* nonnull %18) #11
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %156, label %154

; <label>:154:                                    ; preds = %147
  br label %164

; <label>:155:                                    ; preds = %177
  br label %157

; <label>:156:                                    ; preds = %147
  br label %157

; <label>:157:                                    ; preds = %156, %155
  %158 = load i8*, i8** @field_1_buffer, align 8
  tail call void @free(i8* %158) #11
  store i8* null, i8** @field_1_buffer, align 8
  %159 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 48
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %405

; <label>:163:                                    ; preds = %157
  tail call void @xalloc_die() #14
  unreachable

; <label>:164:                                    ; preds = %154, %177
  %165 = phi i64 [ %182, %177 ], [ %152, %154 ]
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %164
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i64 0, i64 0)) #14
  unreachable

; <label>:168:                                    ; preds = %164
  %169 = load i8*, i8** @field_1_buffer, align 8
  %170 = add i64 %165, -1
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = load i8, i8* @delim, align 1
  %174 = icmp eq i8 %172, %173
  br i1 %174, label %206, label %175

; <label>:175:                                    ; preds = %168
  %176 = load i1, i1* @suppress_non_delimited, align 1
  br i1 %176, label %177, label %184

; <label>:177:                                    ; preds = %203, %201, %184, %175
  %178 = load i8, i8* @delim, align 1
  %179 = zext i8 %178 to i32
  %180 = load i1, i1* @line_delim, align 1
  %181 = select i1 %180, i32 0, i32 10
  %182 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %179, i32 %181, %struct._IO_FILE* %18) #11
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %155, label %164

; <label>:184:                                    ; preds = %175
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %186 = tail call i64 @fwrite_unlocked(i8* %169, i64 1, i64 %165, %struct._IO_FILE* %185) #11
  %187 = load i8*, i8** @field_1_buffer, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 %170
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = load i1, i1* @line_delim, align 1
  %192 = select i1 %191, i32 0, i32 10
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %177, label %194

; <label>:194:                                    ; preds = %184
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %196 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %195, i64 0, i32 5
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %195, i64 0, i32 6
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ult i8* %197, %199
  br i1 %200, label %203, label %201

; <label>:201:                                    ; preds = %194
  %202 = tail call i32 @__overflow(%struct._IO_FILE* %195, i32 %192) #11
  br label %177

; <label>:203:                                    ; preds = %194
  %204 = trunc i32 %192 to i8
  %205 = getelementptr inbounds i8, i8* %197, i64 1
  store i8* %205, i8** %196, align 8
  store i8 %204, i8* %197, align 1
  br label %177

; <label>:206:                                    ; preds = %168
  %207 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8
  %208 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %207, i64 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ult i64 %209, 2
  br i1 %210, label %211, label %233

; <label>:211:                                    ; preds = %206
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %213 = tail call i64 @fwrite_unlocked(i8* %169, i64 1, i64 %170, %struct._IO_FILE* %212) #11
  %214 = load i8, i8* @delim, align 1
  %215 = zext i8 %214 to i32
  %216 = load i1, i1* @line_delim, align 1
  %217 = select i1 %216, i32 0, i32 10
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %233

; <label>:219:                                    ; preds = %211
  %220 = load i8*, i8** %22, align 8
  %221 = load i8*, i8** %119, align 8
  %222 = icmp ult i8* %220, %221
  br i1 %222, label %223, label %227

; <label>:223:                                    ; preds = %219
  %224 = getelementptr inbounds i8, i8* %220, i64 1
  store i8* %224, i8** %22, align 8
  %225 = load i8, i8* %220, align 1
  %226 = zext i8 %225 to i32
  br label %230

; <label>:227:                                    ; preds = %219
  %228 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %233, label %230

; <label>:230:                                    ; preds = %227, %223
  %231 = phi i32 [ %226, %223 ], [ %228, %227 ]
  %232 = tail call i32 @ungetc(i32 %231, %struct._IO_FILE* nonnull %18) #11
  br label %233

; <label>:233:                                    ; preds = %230, %227, %211, %206
  %234 = phi i8 [ %141, %206 ], [ 1, %230 ], [ %141, %227 ], [ 1, %211 ]
  %235 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8
  %236 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %235, i64 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ult i64 %237, 2
  br i1 %238, label %239, label %241

; <label>:239:                                    ; preds = %233
  %240 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %235, i64 1
  store %struct.field_range_pair* %240, %struct.field_range_pair** @current_rp, align 8
  br label %241

; <label>:241:                                    ; preds = %239, %233, %145
  %242 = phi %struct.field_range_pair* [ %235, %233 ], [ %240, %239 ], [ %146, %145 ]
  %243 = phi i64 [ 2, %233 ], [ 2, %239 ], [ %140, %145 ]
  %244 = phi i8 [ %234, %233 ], [ %234, %239 ], [ %141, %145 ]
  %245 = phi i32 [ 0, %233 ], [ 0, %239 ], [ %142, %145 ]
  %246 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %242, i64 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ugt i64 %247, %243
  br i1 %248, label %249, label %250

; <label>:249:                                    ; preds = %241
  br label %295

; <label>:250:                                    ; preds = %241
  %251 = and i8 %244, 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %258, label %253

; <label>:253:                                    ; preds = %250
  %254 = load i8*, i8** @output_delimiter_string, align 8
  %255 = load i64, i64* @output_delimiter_length, align 8
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %257 = tail call i64 @fwrite_unlocked(i8* %254, i64 1, i64 %255, %struct._IO_FILE* %256) #11
  br label %258

; <label>:258:                                    ; preds = %250, %253
  br label %259

; <label>:259:                                    ; preds = %291, %258
  %260 = phi i32 [ %245, %258 ], [ %271, %291 ]
  %261 = load i8*, i8** %22, align 8
  %262 = load i8*, i8** %119, align 8
  %263 = icmp ult i8* %261, %262
  br i1 %263, label %266, label %264

; <label>:264:                                    ; preds = %259
  %265 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11
  br label %270

; <label>:266:                                    ; preds = %259
  %267 = getelementptr inbounds i8, i8* %261, i64 1
  store i8* %267, i8** %22, align 8
  %268 = load i8, i8* %261, align 1
  %269 = zext i8 %268 to i32
  br label %270

; <label>:270:                                    ; preds = %266, %264
  %271 = phi i32 [ %265, %264 ], [ %269, %266 ]
  %272 = load i8, i8* @delim, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp eq i32 %271, %273
  br i1 %274, label %318, label %275

; <label>:275:                                    ; preds = %270
  %276 = load i1, i1* @line_delim, align 1
  %277 = select i1 %276, i32 0, i32 10
  %278 = icmp ne i32 %271, %277
  %279 = icmp ne i32 %271, -1
  %280 = and i1 %279, %278
  br i1 %280, label %281, label %318

; <label>:281:                                    ; preds = %275
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %283 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %282, i64 0, i32 5
  %284 = load i8*, i8** %283, align 8
  %285 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %282, i64 0, i32 6
  %286 = load i8*, i8** %285, align 8
  %287 = icmp ult i8* %284, %286
  br i1 %287, label %292, label %288

; <label>:288:                                    ; preds = %281
  %289 = and i32 %271, 255
  %290 = tail call i32 @__overflow(%struct._IO_FILE* %282, i32 %289) #11
  br label %291

; <label>:291:                                    ; preds = %288, %292
  br label %259

; <label>:292:                                    ; preds = %281
  %293 = trunc i32 %271 to i8
  %294 = getelementptr inbounds i8, i8* %284, i64 1
  store i8* %294, i8** %283, align 8
  store i8 %293, i8* %284, align 1
  br label %291

; <label>:295:                                    ; preds = %249, %311
  %296 = phi i32 [ %307, %311 ], [ %245, %249 ]
  %297 = load i8*, i8** %22, align 8
  %298 = load i8*, i8** %119, align 8
  %299 = icmp ult i8* %297, %298
  br i1 %299, label %302, label %300

; <label>:300:                                    ; preds = %295
  %301 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11
  br label %306

; <label>:302:                                    ; preds = %295
  %303 = getelementptr inbounds i8, i8* %297, i64 1
  store i8* %303, i8** %22, align 8
  %304 = load i8, i8* %297, align 1
  %305 = zext i8 %304 to i32
  br label %306

; <label>:306:                                    ; preds = %302, %300
  %307 = phi i32 [ %301, %300 ], [ %305, %302 ]
  %308 = load i8, i8* @delim, align 1
  %309 = zext i8 %308 to i32
  %310 = icmp eq i32 %307, %309
  br i1 %310, label %317, label %311

; <label>:311:                                    ; preds = %306
  %312 = load i1, i1* @line_delim, align 1
  %313 = select i1 %312, i32 0, i32 10
  %314 = icmp ne i32 %307, %313
  %315 = icmp ne i32 %307, -1
  %316 = and i1 %315, %314
  br i1 %316, label %295, label %317

; <label>:317:                                    ; preds = %306, %311
  br label %319

; <label>:318:                                    ; preds = %270, %275
  br label %319

; <label>:319:                                    ; preds = %318, %317
  %320 = phi i8 [ %308, %317 ], [ %272, %318 ]
  %321 = phi i8 [ %244, %317 ], [ 1, %318 ]
  %322 = phi i32 [ %296, %317 ], [ %260, %318 ]
  %323 = phi i32 [ %307, %317 ], [ %271, %318 ]
  %324 = zext i8 %320 to i32
  %325 = load i1, i1* @line_delim, align 1
  %326 = select i1 %325, i32 0, i32 10
  %327 = icmp eq i32 %324, %326
  %328 = icmp eq i32 %323, %324
  %329 = and i1 %328, %327
  br i1 %329, label %330, label %350

; <label>:330:                                    ; preds = %319
  %331 = load i8*, i8** %22, align 8
  %332 = load i8*, i8** %119, align 8
  %333 = icmp ult i8* %331, %332
  br i1 %333, label %334, label %338

; <label>:334:                                    ; preds = %330
  %335 = getelementptr inbounds i8, i8* %331, i64 1
  store i8* %335, i8** %22, align 8
  %336 = load i8, i8* %331, align 1
  %337 = zext i8 %336 to i32
  br label %346

; <label>:338:                                    ; preds = %330
  %339 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %341, label %346

; <label>:341:                                    ; preds = %338
  %342 = load i8, i8* @delim, align 1
  %343 = zext i8 %342 to i32
  %344 = load i1, i1* @line_delim, align 1
  %345 = select i1 %344, i32 0, i32 10
  br label %372

; <label>:346:                                    ; preds = %338, %334
  %347 = phi i32 [ %337, %334 ], [ %339, %338 ]
  %348 = tail call i32 @ungetc(i32 %347, %struct._IO_FILE* nonnull %18) #11
  %349 = load i8, i8* @delim, align 1
  br label %350

; <label>:350:                                    ; preds = %346, %319
  %351 = phi i8 [ %349, %346 ], [ %320, %319 ]
  %352 = zext i8 %351 to i32
  %353 = icmp eq i32 %323, %352
  br i1 %353, label %354, label %366

; <label>:354:                                    ; preds = %350
  %355 = add i64 %243, 1
  %356 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8
  %357 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %356, i64 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = icmp ugt i64 %355, %358
  br i1 %359, label %364, label %360

; <label>:360:                                    ; preds = %354, %364, %366, %402
  %361 = phi i64 [ 1, %402 ], [ %243, %366 ], [ %355, %354 ], [ %355, %364 ]
  %362 = phi i8 [ 0, %402 ], [ %321, %366 ], [ %321, %354 ], [ %321, %364 ]
  %363 = phi i32 [ %375, %402 ], [ %323, %366 ], [ %323, %354 ], [ %323, %364 ]
  br label %139

; <label>:364:                                    ; preds = %354
  %365 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %356, i64 1
  store %struct.field_range_pair* %365, %struct.field_range_pair** @current_rp, align 8
  br label %360

; <label>:366:                                    ; preds = %350
  %367 = load i1, i1* @line_delim, align 1
  %368 = select i1 %367, i32 0, i32 10
  %369 = icmp eq i32 %323, %368
  %370 = icmp eq i32 %323, -1
  %371 = or i1 %370, %369
  br i1 %371, label %372, label %360

; <label>:372:                                    ; preds = %366, %341
  %373 = phi i1 [ true, %341 ], [ %370, %366 ]
  %374 = phi i32 [ %345, %341 ], [ %368, %366 ]
  %375 = phi i32 [ -1, %341 ], [ %323, %366 ]
  %376 = phi i32 [ %343, %341 ], [ %352, %366 ]
  %377 = and i8 %321, 1
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %383

; <label>:379:                                    ; preds = %372
  %380 = load i1, i1* @suppress_non_delimited, align 1
  %381 = icmp eq i64 %243, 1
  %382 = and i1 %381, %380
  br i1 %382, label %401, label %383

; <label>:383:                                    ; preds = %379, %372
  %384 = icmp eq i32 %375, %374
  %385 = icmp ne i32 %322, %374
  %386 = or i1 %385, %384
  %387 = icmp eq i32 %376, %322
  %388 = or i1 %386, %387
  br i1 %388, label %389, label %401

; <label>:389:                                    ; preds = %383
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %391 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %390, i64 0, i32 5
  %392 = load i8*, i8** %391, align 8
  %393 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %390, i64 0, i32 6
  %394 = load i8*, i8** %393, align 8
  %395 = icmp ult i8* %392, %394
  br i1 %395, label %398, label %396

; <label>:396:                                    ; preds = %389
  %397 = tail call i32 @__overflow(%struct._IO_FILE* %390, i32 %374) #11
  br label %401

; <label>:398:                                    ; preds = %389
  %399 = trunc i32 %374 to i8
  %400 = getelementptr inbounds i8, i8* %392, i64 1
  store i8* %400, i8** %391, align 8
  store i8 %399, i8* %392, align 1
  br label %401

; <label>:401:                                    ; preds = %398, %396, %383, %379
  br i1 %373, label %404, label %402

; <label>:402:                                    ; preds = %401
  %403 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8
  store i64 %403, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8
  br label %360

; <label>:404:                                    ; preds = %401
  br label %405

; <label>:405:                                    ; preds = %404, %64, %73, %75, %126, %157
  %406 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = and i32 %407, 32
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %414, label %410

; <label>:410:                                    ; preds = %405
  %411 = tail call i32* @__errno_location() #1
  %412 = load i32, i32* %411, align 4
  %413 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %412, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %413) #11
  br label %429

; <label>:414:                                    ; preds = %405
  %415 = load i8, i8* %0, align 1
  %416 = icmp eq i8 %415, 45
  br i1 %416, label %417, label %422

; <label>:417:                                    ; preds = %414
  %418 = getelementptr inbounds i8, i8* %0, i64 1
  %419 = load i8, i8* %418, align 1
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %421, label %422

; <label>:421:                                    ; preds = %417
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %18) #11
  br label %429

; <label>:422:                                    ; preds = %414, %417
  %423 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #11
  %424 = icmp eq i32 %423, -1
  br i1 %424, label %425, label %429

; <label>:425:                                    ; preds = %422
  %426 = tail call i32* @__errno_location() #1
  %427 = load i32, i32* %426, align 4
  %428 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %427, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %428) #11
  br label %429

; <label>:429:                                    ; preds = %421, %422, %425, %410, %13
  %430 = phi i1 [ false, %410 ], [ false, %425 ], [ false, %13 ], [ true, %422 ], [ true, %421 ]
  ret i1 %430
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_fields(i8*, i32) local_unnamed_addr #6 {
  %3 = and i32 %1, 1
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %21

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %0, align 1
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 45, %7
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  br i1 %9, label %11, label %15

; <label>:11:                                     ; preds = %5
  %12 = load i8, i8* %10, align 1
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 0, %13
  br label %15

; <label>:15:                                     ; preds = %5, %11
  %16 = phi i32 [ %14, %11 ], [ %8, %5 ]
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = zext i1 %17 to i8
  %20 = select i1 %17, i8* %10, i8* %0
  br label %21

; <label>:21:                                     ; preds = %2, %15
  %22 = phi i64 [ %18, %15 ], [ 0, %2 ]
  %23 = phi i8 [ %19, %15 ], [ 0, %2 ]
  %24 = phi i8 [ %19, %15 ], [ 0, %2 ]
  %25 = phi i8* [ %20, %15 ], [ %0, %2 ]
  br label %26

; <label>:26:                                     ; preds = %21, %61
  %27 = phi i64 [ 0, %61 ], [ %22, %21 ]
  %28 = phi i8 [ %62, %61 ], [ %23, %21 ]
  %29 = phi i8 [ %63, %61 ], [ 0, %21 ]
  %30 = phi i8 [ %64, %61 ], [ %24, %21 ]
  %31 = phi i64 [ %65, %61 ], [ 1, %21 ]
  %32 = phi i8* [ %66, %61 ], [ %25, %21 ]
  %33 = and i8 %28, 1
  %34 = icmp eq i8 %33, 0
  br label %35

; <label>:35:                                     ; preds = %26, %241
  %36 = phi i64 [ %230, %241 ], [ %27, %26 ]
  %37 = phi i1 [ true, %241 ], [ false, %26 ]
  %38 = phi i8 [ %220, %241 ], [ %29, %26 ]
  %39 = phi i8 [ %221, %241 ], [ %30, %26 ]
  %40 = phi i8* [ %242, %241 ], [ %32, %26 ]
  %41 = load i8, i8* %40, align 1
  switch i8 %41, label %67 [
    i8 45, label %42
    i8 44, label %77
  ]

; <label>:42:                                     ; preds = %35
  br i1 %34, label %48, label %43

; <label>:43:                                     ; preds = %42
  %44 = and i32 %1, 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.6, i64 0, i64 0)
  %47 = tail call i8* @dcgettext(i8* null, i8* %46, i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %47) #11
  tail call void @usage(i32 1) #14
  unreachable

; <label>:48:                                     ; preds = %42
  %49 = and i8 %39, 1
  %50 = icmp ne i8 %49, 0
  %51 = xor i1 %50, true
  %52 = icmp ne i64 %36, 0
  %53 = or i1 %52, %51
  br i1 %53, label %59, label %54

; <label>:54:                                     ; preds = %48
  %55 = and i32 %1, 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.8, i64 0, i64 0)
  %58 = tail call i8* @dcgettext(i8* null, i8* %57, i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58) #11
  tail call void @usage(i32 1) #14
  unreachable

; <label>:59:                                     ; preds = %48
  %60 = select i1 %50, i64 %36, i64 1
  br label %61

; <label>:61:                                     ; preds = %199, %59
  %62 = phi i8 [ 1, %59 ], [ %204, %199 ]
  %63 = phi i8 [ %38, %59 ], [ 0, %199 ]
  %64 = phi i8 [ %39, %59 ], [ 0, %199 ]
  %65 = phi i64 [ %60, %59 ], [ %205, %199 ]
  %66 = getelementptr inbounds i8, i8* %40, i64 1
  br label %26

; <label>:67:                                     ; preds = %35
  %68 = tail call i16** @__ctype_b_loc() #1
  %69 = load i16*, i16** %68, align 8
  %70 = zext i8 %41 to i64
  %71 = getelementptr inbounds i16, i16* %69, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = and i16 %72, 1
  %74 = icmp ne i16 %73, 0
  %75 = icmp eq i8 %41, 0
  %76 = or i1 %75, %74
  br i1 %76, label %77, label %209

; <label>:77:                                     ; preds = %67, %35
  br i1 %34, label %159, label %78

; <label>:78:                                     ; preds = %77
  %79 = or i8 %39, %38
  %80 = and i8 %79, 1
  %81 = icmp ne i8 %80, 0
  %82 = or i1 %4, %81
  %83 = select i1 %81, i64 %31, i64 1
  br i1 %82, label %86, label %84

; <label>:84:                                     ; preds = %78
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.9, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85) #11
  tail call void @usage(i32 1) #14
  unreachable

; <label>:86:                                     ; preds = %78
  %87 = and i8 %38, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %122

; <label>:89:                                     ; preds = %86
  %90 = load i64, i64* @n_frp, align 8
  %91 = load i64, i64* @n_frp_allocated, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %96, label %93

; <label>:93:                                     ; preds = %89
  %94 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %95 = bitcast %struct.field_range_pair* %94 to i8*
  br label %115

; <label>:96:                                     ; preds = %89
  %97 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %96
  %100 = icmp eq i64 %90, 0
  %101 = select i1 %100, i64 8, i64 %90
  br label %109

; <label>:102:                                    ; preds = %96
  %103 = icmp ult i64 %90, 384307168202282325
  br i1 %103, label %105, label %104

; <label>:104:                                    ; preds = %102
  tail call void @xalloc_die() #14
  unreachable

; <label>:105:                                    ; preds = %102
  %106 = lshr i64 %90, 1
  %107 = add i64 %90, 1
  %108 = add i64 %107, %106
  br label %109

; <label>:109:                                    ; preds = %105, %99
  %110 = phi i64 [ %108, %105 ], [ %101, %99 ]
  store i64 %110, i64* @n_frp_allocated, align 8
  %111 = shl i64 %110, 4
  %112 = tail call i8* @xrealloc(i8* %97, i64 %111) #11
  store i8* %112, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %113 = bitcast i8* %112 to %struct.field_range_pair*
  %114 = load i64, i64* @n_frp, align 8
  br label %115

; <label>:115:                                    ; preds = %93, %109
  %116 = phi i8* [ %95, %93 ], [ %112, %109 ]
  %117 = phi %struct.field_range_pair* [ %94, %93 ], [ %113, %109 ]
  %118 = phi i64 [ %90, %93 ], [ %114, %109 ]
  %119 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %117, i64 %118, i32 0
  store i64 %83, i64* %119, align 8
  %120 = load i64, i64* @n_frp, align 8
  %121 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %117, i64 %120, i32 1
  br label %199

; <label>:122:                                    ; preds = %86
  %123 = icmp ult i64 %36, %83
  br i1 %123, label %124, label %126

; <label>:124:                                    ; preds = %122
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.10, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %125) #11
  tail call void @usage(i32 1) #14
  unreachable

; <label>:126:                                    ; preds = %122
  %127 = load i64, i64* @n_frp, align 8
  %128 = load i64, i64* @n_frp_allocated, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %133, label %130

; <label>:130:                                    ; preds = %126
  %131 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %132 = bitcast %struct.field_range_pair* %131 to i8*
  br label %152

; <label>:133:                                    ; preds = %126
  %134 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %139

; <label>:136:                                    ; preds = %133
  %137 = icmp eq i64 %127, 0
  %138 = select i1 %137, i64 8, i64 %127
  br label %146

; <label>:139:                                    ; preds = %133
  %140 = icmp ult i64 %127, 384307168202282325
  br i1 %140, label %142, label %141

; <label>:141:                                    ; preds = %139
  tail call void @xalloc_die() #14
  unreachable

; <label>:142:                                    ; preds = %139
  %143 = lshr i64 %127, 1
  %144 = add i64 %127, 1
  %145 = add i64 %144, %143
  br label %146

; <label>:146:                                    ; preds = %142, %136
  %147 = phi i64 [ %145, %142 ], [ %138, %136 ]
  store i64 %147, i64* @n_frp_allocated, align 8
  %148 = shl i64 %147, 4
  %149 = tail call i8* @xrealloc(i8* %134, i64 %148) #11
  store i8* %149, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %150 = bitcast i8* %149 to %struct.field_range_pair*
  %151 = load i64, i64* @n_frp, align 8
  br label %152

; <label>:152:                                    ; preds = %130, %146
  %153 = phi i8* [ %132, %130 ], [ %149, %146 ]
  %154 = phi %struct.field_range_pair* [ %131, %130 ], [ %150, %146 ]
  %155 = phi i64 [ %127, %130 ], [ %151, %146 ]
  %156 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %154, i64 %155, i32 0
  store i64 %83, i64* %156, align 8
  %157 = load i64, i64* @n_frp, align 8
  %158 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %154, i64 %157, i32 1
  br label %199

; <label>:159:                                    ; preds = %77
  %160 = icmp eq i64 %36, 0
  br i1 %160, label %161, label %166

; <label>:161:                                    ; preds = %159
  %162 = and i32 %1, 4
  %163 = icmp ne i32 %162, 0
  %164 = select i1 %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.8, i64 0, i64 0)
  %165 = tail call i8* @dcgettext(i8* null, i8* %164, i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %165) #11
  tail call void @usage(i32 1) #14
  unreachable

; <label>:166:                                    ; preds = %159
  %167 = load i64, i64* @n_frp, align 8
  %168 = load i64, i64* @n_frp_allocated, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %173, label %170

; <label>:170:                                    ; preds = %166
  %171 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %172 = bitcast %struct.field_range_pair* %171 to i8*
  br label %192

; <label>:173:                                    ; preds = %166
  %174 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %179

; <label>:176:                                    ; preds = %173
  %177 = icmp eq i64 %167, 0
  %178 = select i1 %177, i64 8, i64 %167
  br label %186

; <label>:179:                                    ; preds = %173
  %180 = icmp ult i64 %167, 384307168202282325
  br i1 %180, label %182, label %181

; <label>:181:                                    ; preds = %179
  tail call void @xalloc_die() #14
  unreachable

; <label>:182:                                    ; preds = %179
  %183 = lshr i64 %167, 1
  %184 = add i64 %167, 1
  %185 = add i64 %184, %183
  br label %186

; <label>:186:                                    ; preds = %182, %176
  %187 = phi i64 [ %185, %182 ], [ %178, %176 ]
  store i64 %187, i64* @n_frp_allocated, align 8
  %188 = shl i64 %187, 4
  %189 = tail call i8* @xrealloc(i8* %174, i64 %188) #11
  store i8* %189, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %190 = bitcast i8* %189 to %struct.field_range_pair*
  %191 = load i64, i64* @n_frp, align 8
  br label %192

; <label>:192:                                    ; preds = %170, %186
  %193 = phi i8* [ %172, %170 ], [ %189, %186 ]
  %194 = phi %struct.field_range_pair* [ %171, %170 ], [ %190, %186 ]
  %195 = phi i64 [ %167, %170 ], [ %191, %186 ]
  %196 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %194, i64 %195, i32 0
  store i64 %36, i64* %196, align 8
  %197 = load i64, i64* @n_frp, align 8
  %198 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %194, i64 %197, i32 1
  br label %199

; <label>:199:                                    ; preds = %115, %152, %192
  %200 = phi i8* [ %116, %115 ], [ %153, %152 ], [ %193, %192 ]
  %201 = phi i64* [ %121, %115 ], [ %158, %152 ], [ %198, %192 ]
  %202 = phi i64 [ -1, %115 ], [ %36, %152 ], [ %36, %192 ]
  %203 = phi i64 [ %120, %115 ], [ %157, %152 ], [ %197, %192 ]
  %204 = phi i8 [ 0, %115 ], [ 0, %152 ], [ %28, %192 ]
  %205 = phi i64 [ %83, %115 ], [ %83, %152 ], [ %31, %192 ]
  store i64 %202, i64* %201, align 8
  %206 = add i64 %203, 1
  store i64 %206, i64* @n_frp, align 8
  %207 = load i8, i8* %40, align 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %249, label %61

; <label>:209:                                    ; preds = %67
  %210 = sext i8 %41 to i32
  %211 = add nsw i32 %210, -48
  %212 = icmp ult i32 %211, 10
  br i1 %212, label %213, label %243

; <label>:213:                                    ; preds = %209
  %214 = load i8*, i8** @set_fields.num_start, align 8
  %215 = icmp ne i8* %214, null
  %216 = and i1 %37, %215
  br i1 %216, label %218, label %217

; <label>:217:                                    ; preds = %213
  store i8* %40, i8** @set_fields.num_start, align 8
  br label %218

; <label>:218:                                    ; preds = %213, %217
  %219 = phi i8* [ %214, %213 ], [ %40, %217 ]
  %220 = select i1 %34, i8 %38, i8 1
  %221 = select i1 %34, i8 1, i8 %39
  %222 = icmp ugt i64 %36, 1844674407370955161
  br i1 %222, label %233, label %223

; <label>:223:                                    ; preds = %218
  %224 = mul i64 %36, 10
  %225 = load i8, i8* %40, align 1
  %226 = sext i8 %225 to i64
  %227 = add i64 %224, -48
  %228 = add i64 %227, %226
  %229 = icmp ult i64 %228, %36
  %230 = select i1 %229, i64 %36, i64 %228
  %231 = icmp eq i64 %230, -1
  %232 = or i1 %229, %231
  br i1 %232, label %233, label %241

; <label>:233:                                    ; preds = %218, %223
  %234 = tail call i64 @strspn(i8* %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.11, i64 0, i64 0)) #11
  %235 = tail call i8* @xstrndup(i8* %219, i64 %234) #11
  %236 = and i32 %1, 4
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8.12, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.13, i64 0, i64 0)
  %239 = tail call i8* @dcgettext(i8* null, i8* %238, i32 5) #11
  %240 = tail call i8* @quote(i8* %235) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %239, i8* %240) #11
  tail call void @free(i8* %235) #11
  tail call void @usage(i32 1) #14
  unreachable

; <label>:241:                                    ; preds = %223
  %242 = getelementptr inbounds i8, i8* %40, i64 1
  br label %35

; <label>:243:                                    ; preds = %209
  %244 = and i32 %1, 4
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %245, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.14, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.15, i64 0, i64 0)
  %247 = tail call i8* @dcgettext(i8* null, i8* %246, i32 5) #11
  %248 = tail call i8* @quote(i8* %40) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %247, i8* %248) #11
  tail call void @usage(i32 1) #14
  unreachable

; <label>:249:                                    ; preds = %199
  %250 = icmp eq i64 %206, 0
  br i1 %250, label %251, label %256

; <label>:251:                                    ; preds = %249
  %252 = and i32 %1, 4
  %253 = icmp ne i32 %252, 0
  %254 = select i1 %253, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12.16, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13.17, i64 0, i64 0)
  %255 = tail call i8* @dcgettext(i8* null, i8* %254, i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %255) #11
  tail call void @usage(i32 1) #14
  unreachable

; <label>:256:                                    ; preds = %249
  tail call void @qsort(i8* %200, i64 %206, i64 16, i32 (i8*, i8*)* nonnull @compare_ranges) #11
  %257 = load i64, i64* @n_frp, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %302, label %259

; <label>:259:                                    ; preds = %256
  br label %262

; <label>:260:                                    ; preds = %275
  %261 = icmp ugt i64 %276, %272
  br i1 %261, label %262, label %301

; <label>:262:                                    ; preds = %259, %260
  %263 = phi i64 [ %276, %260 ], [ %257, %259 ]
  %264 = phi i64 [ %272, %260 ], [ 0, %259 ]
  br label %269

; <label>:265:                                    ; preds = %283
  br label %266

; <label>:266:                                    ; preds = %265, %269
  %267 = phi i64 [ %270, %269 ], [ %298, %265 ]
  %268 = icmp ult i64 %272, %267
  br i1 %268, label %269, label %300

; <label>:269:                                    ; preds = %262, %266
  %270 = phi i64 [ %263, %262 ], [ %267, %266 ]
  %271 = phi i64 [ %264, %262 ], [ %272, %266 ]
  %272 = add i64 %271, 1
  %273 = icmp ult i64 %272, %270
  br i1 %273, label %274, label %266

; <label>:274:                                    ; preds = %269
  br label %275

; <label>:275:                                    ; preds = %274, %283
  %276 = phi i64 [ %298, %283 ], [ %270, %274 ]
  %277 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %278 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %271, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ugt i64 %279, %281
  br i1 %282, label %260, label %283

; <label>:283:                                    ; preds = %275
  %284 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp ugt i64 %285, %281
  %287 = select i1 %286, i64 %272, i64 %271
  %288 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %287, i32 1
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %280, align 8
  %290 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272
  %291 = bitcast %struct.field_range_pair* %290 to i8*
  %292 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %290, i64 1
  %293 = bitcast %struct.field_range_pair* %292 to i8*
  %294 = sub i64 %276, %272
  %295 = shl i64 %294, 4
  %296 = add i64 %295, -16
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %291, i8* %293, i64 %296, i32 8, i1 false)
  %297 = load i64, i64* @n_frp, align 8
  %298 = add i64 %297, -1
  store i64 %298, i64* @n_frp, align 8
  %299 = icmp ult i64 %272, %298
  br i1 %299, label %275, label %265

; <label>:300:                                    ; preds = %266
  br label %302

; <label>:301:                                    ; preds = %260
  br label %302

; <label>:302:                                    ; preds = %301, %300, %256
  %303 = phi i64 [ 0, %256 ], [ %267, %300 ], [ %276, %301 ]
  %304 = and i32 %1, 2
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %418, label %306

; <label>:306:                                    ; preds = %302
  %307 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8
  store i64 0, i64* @n_frp, align 8
  store i64 0, i64* @n_frp_allocated, align 8
  %308 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ugt i64 %309, 1
  br i1 %310, label %311, label %320

; <label>:311:                                    ; preds = %306
  %312 = add i64 %309, -1
  store i64 8, i64* @n_frp_allocated, align 8
  %313 = tail call i8* @xrealloc(i8* null, i64 128) #11
  store i8* %313, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %314 = bitcast i8* %313 to %struct.field_range_pair*
  %315 = load i64, i64* @n_frp, align 8
  %316 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %314, i64 %315, i32 0
  store i64 1, i64* %316, align 8
  %317 = load i64, i64* @n_frp, align 8
  %318 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %314, i64 %317, i32 1
  store i64 %312, i64* %318, align 8
  %319 = add i64 %317, 1
  store i64 %319, i64* @n_frp, align 8
  br label %320

; <label>:320:                                    ; preds = %311, %306
  %321 = phi %struct.field_range_pair* [ %314, %311 ], [ null, %306 ]
  %322 = phi i8* [ %313, %311 ], [ null, %306 ]
  %323 = phi i64 [ %319, %311 ], [ 0, %306 ]
  %324 = icmp ugt i64 %303, 1
  br i1 %324, label %325, label %378

; <label>:325:                                    ; preds = %320
  br label %326

; <label>:326:                                    ; preds = %325, %370
  %327 = phi %struct.field_range_pair* [ %371, %370 ], [ %321, %325 ]
  %328 = phi i8* [ %372, %370 ], [ %322, %325 ]
  %329 = phi %struct.field_range_pair* [ %373, %370 ], [ %321, %325 ]
  %330 = phi i64 [ %374, %370 ], [ %323, %325 ]
  %331 = phi i64 [ %375, %370 ], [ 1, %325 ]
  %332 = add i64 %331, -1
  %333 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %332, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = add i64 %334, 1
  %336 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %331, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp eq i64 %335, %337
  br i1 %338, label %370, label %339

; <label>:339:                                    ; preds = %326
  %340 = add i64 %337, -1
  %341 = load i64, i64* @n_frp_allocated, align 8
  %342 = icmp eq i64 %330, %341
  br i1 %342, label %343, label %361

; <label>:343:                                    ; preds = %339
  %344 = icmp eq i8* %328, null
  br i1 %344, label %345, label %348

; <label>:345:                                    ; preds = %343
  %346 = icmp eq i64 %330, 0
  %347 = select i1 %346, i64 8, i64 %330
  br label %355

; <label>:348:                                    ; preds = %343
  %349 = icmp ult i64 %330, 384307168202282325
  br i1 %349, label %351, label %350

; <label>:350:                                    ; preds = %348
  tail call void @xalloc_die() #14
  unreachable

; <label>:351:                                    ; preds = %348
  %352 = lshr i64 %330, 1
  %353 = add i64 %330, 1
  %354 = add i64 %353, %352
  br label %355

; <label>:355:                                    ; preds = %351, %345
  %356 = phi i64 [ %354, %351 ], [ %347, %345 ]
  store i64 %356, i64* @n_frp_allocated, align 8
  %357 = shl i64 %356, 4
  %358 = tail call i8* @xrealloc(i8* %328, i64 %357) #11
  store i8* %358, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %359 = bitcast i8* %358 to %struct.field_range_pair*
  %360 = load i64, i64* @n_frp, align 8
  br label %361

; <label>:361:                                    ; preds = %355, %339
  %362 = phi %struct.field_range_pair* [ %359, %355 ], [ %327, %339 ]
  %363 = phi i8* [ %358, %355 ], [ %328, %339 ]
  %364 = phi %struct.field_range_pair* [ %359, %355 ], [ %329, %339 ]
  %365 = phi i64 [ %360, %355 ], [ %330, %339 ]
  %366 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %364, i64 %365, i32 0
  store i64 %335, i64* %366, align 8
  %367 = load i64, i64* @n_frp, align 8
  %368 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %364, i64 %367, i32 1
  store i64 %340, i64* %368, align 8
  %369 = add i64 %367, 1
  store i64 %369, i64* @n_frp, align 8
  br label %370

; <label>:370:                                    ; preds = %361, %326
  %371 = phi %struct.field_range_pair* [ %327, %326 ], [ %362, %361 ]
  %372 = phi i8* [ %328, %326 ], [ %363, %361 ]
  %373 = phi %struct.field_range_pair* [ %329, %326 ], [ %364, %361 ]
  %374 = phi i64 [ %330, %326 ], [ %369, %361 ]
  %375 = add nuw i64 %331, 1
  %376 = icmp ult i64 %375, %303
  br i1 %376, label %326, label %377

; <label>:377:                                    ; preds = %370
  br label %378

; <label>:378:                                    ; preds = %377, %320
  %379 = phi i8* [ %322, %320 ], [ %372, %377 ]
  %380 = phi %struct.field_range_pair* [ %321, %320 ], [ %371, %377 ]
  %381 = phi i64 [ %323, %320 ], [ %374, %377 ]
  %382 = add i64 %303, -1
  %383 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %382, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %384, -1
  br i1 %385, label %415, label %386

; <label>:386:                                    ; preds = %378
  %387 = add i64 %384, 1
  %388 = load i64, i64* @n_frp_allocated, align 8
  %389 = icmp eq i64 %381, %388
  br i1 %389, label %390, label %408

; <label>:390:                                    ; preds = %386
  %391 = icmp eq i8* %379, null
  br i1 %391, label %392, label %395

; <label>:392:                                    ; preds = %390
  %393 = icmp eq i64 %381, 0
  %394 = select i1 %393, i64 8, i64 %381
  br label %402

; <label>:395:                                    ; preds = %390
  %396 = icmp ult i64 %381, 384307168202282325
  br i1 %396, label %398, label %397

; <label>:397:                                    ; preds = %395
  tail call void @xalloc_die() #14
  unreachable

; <label>:398:                                    ; preds = %395
  %399 = lshr i64 %381, 1
  %400 = add i64 %381, 1
  %401 = add i64 %400, %399
  br label %402

; <label>:402:                                    ; preds = %398, %392
  %403 = phi i64 [ %401, %398 ], [ %394, %392 ]
  store i64 %403, i64* @n_frp_allocated, align 8
  %404 = shl i64 %403, 4
  %405 = tail call i8* @xrealloc(i8* %379, i64 %404) #11
  store i8* %405, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %406 = bitcast i8* %405 to %struct.field_range_pair*
  %407 = load i64, i64* @n_frp, align 8
  br label %408

; <label>:408:                                    ; preds = %402, %386
  %409 = phi %struct.field_range_pair* [ %406, %402 ], [ %380, %386 ]
  %410 = phi i64 [ %407, %402 ], [ %381, %386 ]
  %411 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %410, i32 0
  store i64 %387, i64* %411, align 8
  %412 = load i64, i64* @n_frp, align 8
  %413 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %412, i32 1
  store i64 -1, i64* %413, align 8
  %414 = add i64 %412, 1
  store i64 %414, i64* @n_frp, align 8
  br label %415

; <label>:415:                                    ; preds = %378, %408
  %416 = bitcast %struct.field_range_pair* %307 to i8*
  tail call void @free(i8* %416) #11
  %417 = load i64, i64* @n_frp, align 8
  br label %418

; <label>:418:                                    ; preds = %302, %415
  %419 = phi i64 [ %303, %302 ], [ %417, %415 ]
  %420 = add i64 %419, 1
  store i64 %420, i64* @n_frp, align 8
  %421 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %422 = shl i64 %420, 4
  %423 = tail call i8* @xrealloc(i8* %421, i64 %422) #11
  %424 = bitcast i8* %423 to %struct.field_range_pair*
  store i8* %423, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %425 = load i64, i64* @n_frp, align 8
  %426 = add i64 %425, -1
  %427 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %424, i64 %426, i32 0
  %428 = bitcast i64* %427 to i8*
  call void @llvm.memset.p0i8.i64(i8* %428, i8 -1, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @compare_ranges(i8* nocapture readonly, i8* nocapture readonly) #8 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = bitcast i8* %1 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define void @reset_fields() local_unnamed_addr #6 {
  store i64 0, i64* @n_frp, align 8
  store i64 0, i64* @n_frp_allocated, align 8
  %1 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  tail call void @free(i8* %1) #11
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8
  ret void
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #11
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %17, i8* %12) #11
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #11
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
declare void @_exit(i32) local_unnamed_addr #10

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
define i64 @getndelim2(i8** nocapture, i64* nocapture, i64, i64, i32, i32, %struct._IO_FILE*) local_unnamed_addr #6 {
  %8 = alloca i64, align 8
  %9 = load i8*, i8** %0, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp eq i8* %9, null
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %7
  %13 = icmp ult i64 %3, 64
  %14 = select i1 %13, i64 %3, i64 64
  %15 = tail call noalias i8* @malloc(i64 %14) #11
  %16 = icmp eq i8* %15, null
  br i1 %16, label %156, label %17

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ]
  %19 = phi i64 [ %10, %7 ], [ %14, %12 ]
  %20 = icmp ult i64 %19, %2
  br i1 %20, label %150, label %21

; <label>:21:                                     ; preds = %17
  %22 = sub i64 %19, %2
  %23 = icmp ne i64 %22, 0
  %24 = icmp ult i64 %19, %3
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %150

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %18, i64 %2
  %28 = icmp eq i32 %4, -1
  %29 = icmp eq i32 %5, -1
  %30 = select i1 %29, i32 %4, i32 %5
  %31 = select i1 %28, i32 %5, i32 %30
  %32 = select i1 %28, i32 %5, i32 %4
  %33 = bitcast i64* %8 to i8*
  %34 = icmp eq i32 %32, -1
  %35 = xor i64 %2, -9223372036854775808
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 1
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 2
  br label %38

; <label>:38:                                     ; preds = %26, %136
  %39 = phi i8* [ %129, %136 ], [ %27, %26 ]
  %40 = phi i8* [ %113, %136 ], [ %18, %26 ]
  %41 = phi i64 [ %114, %136 ], [ %19, %26 ]
  %42 = phi i8 [ %76, %136 ], [ 0, %26 ]
  %43 = phi i32 [ %77, %136 ], [ undef, %26 ]
  %44 = phi i64 [ %130, %136 ], [ %22, %26 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #11
  %45 = call i8* @freadptr(%struct._IO_FILE* %6, i64* nonnull %8) #11
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

; <label>:47:                                     ; preds = %38
  %48 = load i64, i64* %8, align 8
  br i1 %34, label %74, label %49

; <label>:49:                                     ; preds = %47
  %50 = call i8* @memchr2(i8* nonnull %45, i32 %32, i32 %31, i64 %48) #13
  %51 = icmp eq i8* %50, null
  br i1 %51, label %74, label %52

; <label>:52:                                     ; preds = %49
  %53 = ptrtoint i8* %50 to i64
  %54 = ptrtoint i8* %45 to i64
  %55 = sub i64 1, %54
  %56 = add i64 %55, %53
  store i64 %56, i64* %8, align 8
  br label %74

; <label>:57:                                     ; preds = %38
  %58 = load i8*, i8** %36, align 8
  %59 = load i8*, i8** %37, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %65

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %62, i8** %36, align 8
  %63 = load i8, i8* %58, align 1
  %64 = zext i8 %63 to i32
  br label %68

; <label>:65:                                     ; preds = %57
  %66 = call i32 @__uflow(%struct._IO_FILE* nonnull %6) #11
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %139, label %68

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i32 [ %64, %61 ], [ %66, %65 ]
  %70 = icmp eq i32 %69, %32
  %71 = icmp eq i32 %69, %31
  %72 = or i1 %70, %71
  %73 = select i1 %72, i8 1, i8 %42
  store i64 1, i64* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %47, %52, %49, %68
  %75 = phi i64 [ 1, %68 ], [ %56, %52 ], [ %48, %49 ], [ %48, %47 ]
  %76 = phi i8 [ %73, %68 ], [ 1, %52 ], [ %42, %49 ], [ %42, %47 ]
  %77 = phi i32 [ %69, %68 ], [ %43, %52 ], [ %43, %49 ], [ %43, %47 ]
  %78 = add i64 %75, 1
  %79 = icmp ult i64 %44, %78
  %80 = icmp ult i64 %41, %3
  %81 = and i1 %80, %79
  br i1 %81, label %82, label %111

; <label>:82:                                     ; preds = %74
  %83 = icmp ult i64 %41, 64
  %84 = add i64 %41, 64
  %85 = shl i64 %41, 1
  %86 = select i1 %83, i64 %84, i64 %85
  %87 = ptrtoint i8* %39 to i64
  %88 = ptrtoint i8* %40 to i64
  %89 = sub i64 %87, %88
  %90 = sub i64 %86, %89
  %91 = icmp ult i64 %90, %78
  %92 = add i64 %89, 1
  %93 = add i64 %92, %75
  %94 = select i1 %91, i64 %93, i64 %86
  %95 = icmp uge i64 %41, %94
  %96 = icmp ugt i64 %94, %3
  %97 = or i1 %95, %96
  %98 = select i1 %97, i64 %3, i64 %94
  %99 = sub i64 %98, %2
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

; <label>:101:                                    ; preds = %82
  %102 = icmp eq i64 %41, %35
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %101
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11
  br label %150

; <label>:104:                                    ; preds = %101, %82
  %105 = phi i64 [ %35, %101 ], [ %98, %82 ]
  %106 = sub i64 %105, %89
  %107 = call i8* @realloc(i8* %40, i64 %105) #11
  %108 = icmp eq i8* %107, null
  %109 = getelementptr inbounds i8, i8* %107, i64 %89
  br i1 %108, label %110, label %111

; <label>:110:                                    ; preds = %104
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11
  br label %150

; <label>:111:                                    ; preds = %104, %74
  %112 = phi i8* [ %39, %74 ], [ %109, %104 ]
  %113 = phi i8* [ %40, %74 ], [ %107, %104 ]
  %114 = phi i64 [ %41, %74 ], [ %105, %104 ]
  %115 = phi i64 [ %44, %74 ], [ %106, %104 ]
  %116 = icmp ugt i64 %115, 1
  br i1 %116, label %117, label %128

; <label>:117:                                    ; preds = %111
  %118 = add i64 %115, -1
  %119 = load i64, i64* %8, align 8
  %120 = icmp ult i64 %119, %118
  %121 = select i1 %120, i64 %119, i64 %118
  br i1 %46, label %122, label %123

; <label>:122:                                    ; preds = %117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* nonnull %45, i64 %121, i32 1, i1 false)
  br label %125

; <label>:123:                                    ; preds = %117
  %124 = trunc i32 %77 to i8
  store i8 %124, i8* %112, align 1
  br label %125

; <label>:125:                                    ; preds = %123, %122
  %126 = getelementptr inbounds i8, i8* %112, i64 %121
  %127 = sub i64 %115, %121
  br label %128

; <label>:128:                                    ; preds = %125, %111
  %129 = phi i8* [ %126, %125 ], [ %112, %111 ]
  %130 = phi i64 [ %127, %125 ], [ %115, %111 ]
  br i1 %46, label %131, label %136

; <label>:131:                                    ; preds = %128
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @freadseek(%struct._IO_FILE* %6, i64 %132) #11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

; <label>:135:                                    ; preds = %131
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11
  br label %150

; <label>:136:                                    ; preds = %128, %131
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11
  %137 = and i8 %76, 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %38, label %141

; <label>:139:                                    ; preds = %65
  %140 = icmp eq i8* %39, %40
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11
  br i1 %140, label %150, label %142

; <label>:141:                                    ; preds = %136
  br label %142

; <label>:142:                                    ; preds = %141, %139
  %143 = phi i64 [ %41, %139 ], [ %114, %141 ]
  %144 = phi i8* [ %40, %139 ], [ %113, %141 ]
  %145 = phi i8* [ %39, %139 ], [ %129, %141 ]
  store i8 0, i8* %145, align 1
  %146 = getelementptr inbounds i8, i8* %144, i64 %2
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  br label %150

; <label>:150:                                    ; preds = %139, %103, %110, %135, %21, %142, %17
  %151 = phi i64 [ -1, %17 ], [ -1, %139 ], [ %149, %142 ], [ -1, %21 ], [ -1, %135 ], [ -1, %110 ], [ -1, %103 ]
  %152 = phi i8* [ %18, %17 ], [ %40, %139 ], [ %144, %142 ], [ %18, %21 ], [ %113, %135 ], [ %40, %110 ], [ %40, %103 ]
  %153 = phi i64 [ %19, %17 ], [ %41, %139 ], [ %143, %142 ], [ %19, %21 ], [ %114, %135 ], [ %41, %110 ], [ %35, %103 ]
  store i8* %152, i8** %0, align 8
  store i64 %153, i64* %1, align 8
  %154 = icmp ne i64 %151, 0
  %155 = select i1 %154, i64 %151, i64 -1
  br label %156

; <label>:156:                                    ; preds = %12, %150
  %157 = phi i64 [ %155, %150 ], [ -1, %12 ]
  ret i64 %157
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @memchr2(i8*, i32, i32, i64) local_unnamed_addr #8 {
  %5 = and i32 %1, 255
  %6 = and i32 %2, 255
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %15, label %8

; <label>:8:                                      ; preds = %4
  %9 = ptrtoint i8* %0 to i64
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 0
  %12 = icmp ne i64 %3, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %34

; <label>:14:                                     ; preds = %8
  br label %17

; <label>:15:                                     ; preds = %4
  %16 = tail call i8* @memchr(i8* %0, i32 %5, i64 %3) #13
  br label %97

; <label>:17:                                     ; preds = %14, %25
  %18 = phi i64 [ %27, %25 ], [ %3, %14 ]
  %19 = phi i8* [ %26, %25 ], [ %0, %14 ]
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, %5
  %23 = icmp eq i32 %21, %6
  %24 = or i1 %22, %23
  br i1 %24, label %96, label %25

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds i8, i8* %19, i64 1
  %27 = add i64 %18, -1
  %28 = ptrtoint i8* %26 to i64
  %29 = and i64 %28, 7
  %30 = icmp ne i64 %29, 0
  %31 = icmp ne i64 %27, 0
  %32 = and i1 %31, %30
  br i1 %32, label %17, label %33

; <label>:33:                                     ; preds = %25
  br label %34

; <label>:34:                                     ; preds = %33, %8
  %35 = phi i8* [ %0, %8 ], [ %26, %33 ]
  %36 = phi i64 [ %3, %8 ], [ %27, %33 ]
  %37 = bitcast i8* %35 to i64*
  %38 = shl nuw nsw i32 %5, 8
  %39 = or i32 %38, %5
  %40 = shl nuw nsw i32 %6, 8
  %41 = or i32 %40, %6
  %42 = shl nuw i32 %39, 16
  %43 = or i32 %42, %39
  %44 = zext i32 %43 to i64
  %45 = shl nuw i32 %41, 16
  %46 = or i32 %45, %41
  %47 = zext i32 %46 to i64
  %48 = shl nuw i64 %44, 32
  %49 = or i64 %48, %44
  %50 = shl nuw i64 %47, 32
  %51 = or i64 %50, %47
  %52 = icmp ugt i64 %36, 7
  br i1 %52, label %53, label %76

; <label>:53:                                     ; preds = %34
  br label %54

; <label>:54:                                     ; preds = %53, %54
  %55 = phi i64* [ %71, %54 ], [ %37, %53 ]
  %56 = phi i64 [ %72, %54 ], [ %36, %53 ]
  %57 = load i64, i64* %55, align 8
  %58 = xor i64 %57, %49
  %59 = xor i64 %57, %51
  %60 = add i64 %58, -72340172838076673
  %61 = xor i64 %58, -9187201950435737472
  %62 = and i64 %60, %61
  %63 = add i64 %59, -72340172838076673
  %64 = xor i64 %59, -9187201950435737472
  %65 = and i64 %63, %64
  %66 = or i64 %62, %65
  %67 = and i64 %66, -9187201950435737472
  %68 = icmp eq i64 %67, 0
  %69 = getelementptr inbounds i64, i64* %55, i64 1
  %70 = add i64 %56, -8
  %71 = select i1 %68, i64* %69, i64* %55
  %72 = select i1 %68, i64 %70, i64 %56
  %73 = icmp ugt i64 %72, 7
  %74 = and i1 %68, %73
  br i1 %74, label %54, label %75

; <label>:75:                                     ; preds = %54
  br label %76

; <label>:76:                                     ; preds = %75, %34
  %77 = phi i64* [ %37, %34 ], [ %71, %75 ]
  %78 = phi i64 [ %36, %34 ], [ %72, %75 ]
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %97, label %80

; <label>:80:                                     ; preds = %76
  %81 = bitcast i64* %77 to i8*
  br label %82

; <label>:82:                                     ; preds = %80, %90
  %83 = phi i64 [ %91, %90 ], [ %78, %80 ]
  %84 = phi i8* [ %92, %90 ], [ %81, %80 ]
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, %5
  %88 = icmp eq i32 %86, %6
  %89 = or i1 %87, %88
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %82
  %91 = add i64 %83, -1
  %92 = getelementptr inbounds i8, i8* %84, i64 1
  %93 = icmp eq i64 %91, 0
  br i1 %93, label %94, label %82

; <label>:94:                                     ; preds = %90, %82
  %95 = phi i8* [ %84, %82 ], [ null, %90 ]
  br label %97

; <label>:96:                                     ; preds = %17
  br label %97

; <label>:97:                                     ; preds = %96, %94, %76, %15
  %98 = phi i8* [ %16, %15 ], [ null, %76 ], [ %95, %94 ], [ %19, %96 ]
  ret i8* %98
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.58, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.59, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i64 3) #13
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
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #8 {
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.71, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %41 ]
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.74, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.75, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.76, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.77, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

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

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* %2, i8* %3) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.86, i64 0, i64 0), i32 5) #11
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.87, i64 0, i64 0), i32 5) #11
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.88, i64 0, i64 0), i32 5) #11
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.89, i64 0, i64 0), i32 5) #11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.90, i64 0, i64 0), i32 5) #11
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.91, i64 0, i64 0), i32 5) #11
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.92, i64 0, i64 0), i32 5) #11
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.93, i64 0, i64 0), i32 5) #11
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.94, i64 0, i64 0), i32 5) #11
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.95, i64 0, i64 0), i32 5) #11
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.96, i64 0, i64 0), i32 5) #11
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.97, i64 0, i64 0), i32 5) #11
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.100, i64 0, i64 0), i32 5) #11
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.101, i64 0, i64 0)) #11
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.102, i64 0, i64 0), i32 5) #11
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.103, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.104, i64 0, i64 0)) #11
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.105, i64 0, i64 0), i32 5) #11
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
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), i8* %2) #11
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @__strndup(i8* %0, i64 %1) #11
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @__strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

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
define i8* @freadptr(%struct._IO_FILE* nocapture readonly, i64* nocapture) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ugt i8* %4, %6
  br i1 %7, label %19, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %10 = bitcast i8** %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %13 = bitcast i8** %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %8
  %18 = inttoptr i64 %14 to i8*
  store i64 %15, i64* %1, align 8
  br label %19

; <label>:19:                                     ; preds = %8, %2, %17
  %20 = phi i8* [ %18, %17 ], [ null, %2 ], [ null, %8 ]
  ret i8* %20
}

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
define i32 @freadseek(%struct._IO_FILE*, i64) local_unnamed_addr #6 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %73, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @freadahead(%struct._IO_FILE* %0) #13
  %8 = bitcast i64* %3 to i8*
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  br label %10

; <label>:10:                                     ; preds = %38, %6
  %11 = phi i64 [ %7, %6 ], [ %43, %38 ]
  %12 = phi i64 [ %1, %6 ], [ %39, %38 ]
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %44, label %14

; <label>:14:                                     ; preds = %10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #11
  %15 = call i8* @freadptr(%struct._IO_FILE* %0, i64* nonnull %3) #11
  %16 = icmp ne i8* %15, null
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %14
  %21 = icmp ult i64 %17, %12
  %22 = select i1 %21, i64 %17, i64 %12
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %9, align 8
  %25 = sub i64 %12, %22
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11
  br label %73

; <label>:28:                                     ; preds = %20
  %29 = sub i64 %11, %22
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11
  br label %45

; <label>:32:                                     ; preds = %28, %14
  %33 = phi i64 [ %11, %14 ], [ %29, %28 ]
  %34 = phi i64 [ %12, %14 ], [ %25, %28 ]
  %35 = call i32 @fgetc(%struct._IO_FILE* %0)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11
  br label %68

; <label>:38:                                     ; preds = %32
  %39 = add i64 %34, -1
  %40 = icmp eq i64 %39, 0
  %41 = xor i1 %40, true
  %42 = sext i1 %41 to i64
  %43 = add i64 %42, %33
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11
  br i1 %40, label %72, label %10

; <label>:44:                                     ; preds = %10
  br label %45

; <label>:45:                                     ; preds = %44, %31
  %46 = phi i64 [ %25, %31 ], [ %12, %44 ]
  %47 = call i32 @fileno(%struct._IO_FILE* %0) #11
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %45
  %50 = call i64 @lseek(i32 %47, i64 0, i32 1) #11
  %51 = icmp sgt i64 %50, -1
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %49
  %53 = call i32 @rpl_fseeko(%struct._IO_FILE* %0, i64 %46, i32 1) #11
  br label %73

; <label>:54:                                     ; preds = %49, %45
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* nonnull %55) #11
  br label %56

; <label>:56:                                     ; preds = %64, %54
  %57 = phi i64 [ %46, %54 ], [ %63, %64 ]
  %58 = icmp ult i64 %57, 4096
  %59 = select i1 %58, i64 %57, i64 4096
  %60 = call i64 @fread(i8* nonnull %55, i64 1, i64 %59, %struct._IO_FILE* %0)
  %61 = icmp ult i64 %60, %59
  %62 = select i1 %61, i64 0, i64 %59
  %63 = sub i64 %57, %62
  br i1 %61, label %67, label %64

; <label>:64:                                     ; preds = %56
  %65 = icmp eq i64 %63, 0
  br i1 %65, label %66, label %56

; <label>:66:                                     ; preds = %64
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %55) #11
  br label %73

; <label>:67:                                     ; preds = %56
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %55) #11
  br label %68

; <label>:68:                                     ; preds = %67, %37
  %69 = call i32 @ferror(%struct._IO_FILE* %0) #11
  %70 = icmp ne i32 %69, 0
  %71 = sext i1 %70 to i32
  br label %73

; <label>:72:                                     ; preds = %38
  br label %73

; <label>:73:                                     ; preds = %72, %27, %66, %68, %2, %52
  %74 = phi i32 [ %53, %52 ], [ 0, %2 ], [ %71, %68 ], [ 0, %66 ], [ 0, %27 ], [ 0, %72 ]
  ret i32 %74
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0)) #11
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
  %3 = tail call i8* @nl_langinfo(i32 14) #11
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.144, i64 0, i64 0)) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.145, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.147, i64 0, i64 0)) #11
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.148, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #11
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0), i8* %158
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

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @freadahead(%struct._IO_FILE* nocapture readonly) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ugt i8* %3, %5
  br i1 %6, label %30, label %7

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %9 = bitcast i8** %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %12 = bitcast i8** %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11
  %21 = bitcast i8** %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %24 = bitcast i8** %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  br label %27

; <label>:27:                                     ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ]
  %29 = add nsw i64 %14, %28
  br label %30

; <label>:30:                                     ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ]
  ret i64 %31
}

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
