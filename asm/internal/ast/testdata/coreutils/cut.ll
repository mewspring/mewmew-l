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
@operating_mode = internal unnamed_addr global i32 0, align 4, !dbg !0
@suppress_non_delimited = internal unnamed_addr global i1 false, align 1
@delim = internal unnamed_addr global i8 0, align 1, !dbg !77
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"b:c:d:f:nsz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !117
@.str.17 = private unnamed_addr constant [39 x i8] c"only one type of list may be specified\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@output_delimiter_specified = internal unnamed_addr global i1 false, align 1
@output_delimiter_length = internal unnamed_addr global i64 0, align 8, !dbg !81
@output_delimiter_string = internal unnamed_addr global i8* null, align 8, !dbg !83
@line_delim = internal unnamed_addr global i1 false, align 1
@complement = internal unnamed_addr global i1 false, align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@main.dummy = internal global [2 x i8] zeroinitializer, align 1, !dbg !55
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_rp = internal unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !133
@field_1_buffer = internal global i8* null, align 8, !dbg !140
@field_1_bufsize = internal global i64 0, align 8, !dbg !142
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
@n_frp = common local_unnamed_addr global i64 0, align 8, !dbg !144
@frp = common local_unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !223
@.str.1.5 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.2.6 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.3.7 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.4.8 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.5.9 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@n_frp_allocated = internal global i64 0, align 8, !dbg !226
@.str.6.10 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal unnamed_addr global i8* null, align 8, !dbg !187
@.str.7.11 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.8.12 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.9.13 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.10.14 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.11.15 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@.str.12.16 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@.str.13.17 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !228
@.str.29 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !234
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !239
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !242
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !249
@.str.58 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.65, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.70, i32 0, i32 0), i8* null], align 16, !dbg !256
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !268
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !275
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !287
@.str.11.71 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.73 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.74 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.75 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.76 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.77 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !294
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !301
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !289
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !303
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !307
@.str.1.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.143 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !316
@.str.3.144 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.145 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.146 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.147 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.148 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.149 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !725 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !729, metadata !730), !dbg !731
  %2 = icmp eq i32 %0, 0, !dbg !732
  br i1 %2, label %8, label %3, !dbg !734

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !735, !tbaa !738
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !735
  %6 = load i8*, i8** @program_name, align 8, !dbg !735, !tbaa !738
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !742
  br label %63, !dbg !744

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !746
  %10 = load i8*, i8** @program_name, align 8, !dbg !746, !tbaa !738
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !748
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !750
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !738
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !751
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !752
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !738
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !757
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !759
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !759, !tbaa !738
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !762
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !764
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764, !tbaa !738
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !765
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !766
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766, !tbaa !738
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !767
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !768
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !738
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !769
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !770
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !770, !tbaa !738
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !771
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !772
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772, !tbaa !738
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11, !dbg !773
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !774
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !774, !tbaa !738
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11, !dbg !775
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !776
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !776, !tbaa !738
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #11, !dbg !777
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !778
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !778, !tbaa !738
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #11, !dbg !779
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !780
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !780, !tbaa !738
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #11, !dbg !781
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !95, metadata !730) #11, !dbg !782
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !95, metadata !730) #11, !dbg !782
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !784
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !785
  %50 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !787
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !106, metadata !730) #11, !dbg !788
  %51 = icmp eq i8* %50, null, !dbg !789
  br i1 %51, label %58, label %52, !dbg !790

; <label>:52:                                     ; preds = %8
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #13, !dbg !791
  %54 = icmp eq i32 %53, 0, !dbg !791
  br i1 %54, label %58, label %55, !dbg !793

; <label>:55:                                     ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !795
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !797
  br label %58, !dbg !799

; <label>:58:                                     ; preds = %8, %52, %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !800
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !801
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !802
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0)) #11, !dbg !803
  br label %63

; <label>:63:                                     ; preds = %58, %3
  tail call void @exit(i32 %0) #14, !dbg !804
  unreachable, !dbg !804
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !57 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !63, metadata !730), !dbg !805
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !64, metadata !730), !dbg !806
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !68, metadata !730), !dbg !807
  %3 = load i8*, i8** %1, align 8, !dbg !808, !tbaa !738
  tail call void @set_program_name(i8* %3) #11, !dbg !809
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !810
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !811
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !812
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !813
  store i32 0, i32* @operating_mode, align 4, !dbg !814, !tbaa !815
  store i1 false, i1* @suppress_non_delimited, align 1
  store i8 0, i8* @delim, align 1, !dbg !816, !tbaa !815
  store i1 false, i1* @have_read_stdin, align 1
  br label %8, !dbg !817

; <label>:8:                                      ; preds = %49, %2
  %9 = phi i8 [ 0, %2 ], [ %50, %49 ]
  %10 = phi i8* [ undef, %2 ], [ %51, %49 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !69, metadata !730), !dbg !818
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !68, metadata !730), !dbg !807
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !819
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !65, metadata !730), !dbg !821
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
  ], !dbg !822

; <label>:12:                                     ; preds = %8, %8
  %13 = load i32, i32* @operating_mode, align 4, !dbg !823, !tbaa !815
  %14 = icmp eq i32 %13, 0, !dbg !827
  br i1 %14, label %17, label %15, !dbg !828

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !829
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16) #11, !dbg !832
  tail call void @usage(i32 1) #15, !dbg !834
  unreachable, !dbg !829

; <label>:17:                                     ; preds = %12
  store i32 1, i32* @operating_mode, align 4, !dbg !836, !tbaa !815
  %18 = load i8*, i8** @optarg, align 8, !dbg !837, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !69, metadata !730), !dbg !818
  br label %49, !dbg !838

; <label>:19:                                     ; preds = %8
  %20 = load i32, i32* @operating_mode, align 4, !dbg !839, !tbaa !815
  %21 = icmp eq i32 %20, 0, !dbg !841
  br i1 %21, label %24, label %22, !dbg !842

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !843
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %23) #11, !dbg !846
  tail call void @usage(i32 1) #15, !dbg !848
  unreachable, !dbg !843

; <label>:24:                                     ; preds = %19
  store i32 2, i32* @operating_mode, align 4, !dbg !850, !tbaa !815
  %25 = load i8*, i8** @optarg, align 8, !dbg !851, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !69, metadata !730), !dbg !818
  br label %49, !dbg !852

; <label>:26:                                     ; preds = %8
  %27 = load i8*, i8** @optarg, align 8, !dbg !853, !tbaa !738
  %28 = load i8, i8* %27, align 1, !dbg !853, !tbaa !815
  %29 = icmp eq i8 %28, 0, !dbg !855
  br i1 %29, label %36, label %30, !dbg !856

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !857
  %32 = load i8, i8* %31, align 1, !dbg !857, !tbaa !815
  %33 = icmp eq i8 %32, 0, !dbg !859
  br i1 %33, label %36, label %34, !dbg !860

; <label>:34:                                     ; preds = %30
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !862
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %35) #11, !dbg !865
  tail call void @usage(i32 1) #15, !dbg !867
  unreachable, !dbg !862

; <label>:36:                                     ; preds = %30, %26
  store i8 %28, i8* @delim, align 1, !dbg !869, !tbaa !815
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !68, metadata !730), !dbg !807
  br label %49, !dbg !870

; <label>:37:                                     ; preds = %8
  store i1 true, i1* @output_delimiter_specified, align 1
  %38 = load i8*, i8** @optarg, align 8, !dbg !871, !tbaa !738
  %39 = load i8, i8* %38, align 1, !dbg !871, !tbaa !815
  %40 = icmp eq i8 %39, 0, !dbg !872
  br i1 %40, label %43, label %41, !dbg !871

; <label>:41:                                     ; preds = %37
  %42 = tail call i64 @strlen(i8* %38) #13, !dbg !873
  br label %43, !dbg !874

; <label>:43:                                     ; preds = %37, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %37 ], !dbg !876
  store i64 %44, i64* @output_delimiter_length, align 8, !dbg !878, !tbaa !879
  %45 = tail call noalias i8* @xstrdup(i8* %38) #11, !dbg !881
  store i8* %45, i8** @output_delimiter_string, align 8, !dbg !882, !tbaa !738
  br label %49, !dbg !883

; <label>:46:                                     ; preds = %8
  store i1 true, i1* @suppress_non_delimited, align 1
  br label %49, !dbg !884

; <label>:47:                                     ; preds = %8
  store i1 true, i1* @line_delim, align 1
  br label %49, !dbg !885

; <label>:48:                                     ; preds = %8
  store i1 true, i1* @complement, align 1
  br label %49, !dbg !886

; <label>:49:                                     ; preds = %48, %47, %46, %43, %36, %24, %17, %8
  %50 = phi i8 [ %9, %48 ], [ %9, %47 ], [ %9, %46 ], [ %9, %43 ], [ 1, %36 ], [ %9, %24 ], [ %9, %17 ], [ %9, %8 ]
  %51 = phi i8* [ %10, %48 ], [ %10, %47 ], [ %10, %46 ], [ %10, %43 ], [ %10, %36 ], [ %25, %24 ], [ %18, %17 ], [ %10, %8 ]
  br label %8, !dbg !818, !llvm.loop !887

; <label>:52:                                     ; preds = %8
  tail call void @usage(i32 0) #15, !dbg !889
  unreachable, !dbg !889

; <label>:53:                                     ; preds = %8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !890, !tbaa !738
  %55 = load i8*, i8** @Version, align 8, !dbg !890, !tbaa !738
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* null) #11, !dbg !890
  tail call void @exit(i32 0) #14, !dbg !891
  unreachable, !dbg !890

; <label>:56:                                     ; preds = %8
  tail call void @usage(i32 1) #15, !dbg !892
  unreachable, !dbg !892

; <label>:57:                                     ; preds = %8
  %58 = load i32, i32* @operating_mode, align 4, !dbg !893, !tbaa !815
  %59 = icmp eq i32 %58, 0, !dbg !895
  br i1 %59, label %60, label %62, !dbg !896

; <label>:60:                                     ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !897
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %61) #11, !dbg !900
  tail call void @usage(i32 1) #15, !dbg !902
  unreachable, !dbg !897

; <label>:62:                                     ; preds = %57
  %63 = icmp ne i8 %9, 0, !dbg !904
  %64 = icmp ne i32 %58, 2, !dbg !906
  %65 = and i1 %63, %64, !dbg !908
  br i1 %65, label %66, label %68, !dbg !908

; <label>:66:                                     ; preds = %62
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0), i32 5) #11, !dbg !909
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #11, !dbg !912
  tail call void @usage(i32 1) #15, !dbg !914
  unreachable, !dbg !909

; <label>:68:                                     ; preds = %62
  %69 = load i1, i1* @suppress_non_delimited, align 1
  %70 = and i1 %64, %69, !dbg !916
  br i1 %70, label %71, label %73, !dbg !916

; <label>:71:                                     ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !918
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #11, !dbg !921
  tail call void @usage(i32 1) #15, !dbg !923
  unreachable, !dbg !918

; <label>:73:                                     ; preds = %68
  %74 = icmp eq i32 %58, 2, !dbg !925
  %75 = select i1 %74, i32 0, i32 4, !dbg !926
  %76 = load i1, i1* @complement, align 1
  %77 = select i1 %76, i32 2, i32 0, !dbg !927
  %78 = or i32 %77, %75, !dbg !928
  tail call void @set_fields(i8* %10, i32 %78) #11, !dbg !929
  br i1 %63, label %80, label %79, !dbg !930

; <label>:79:                                     ; preds = %73
  store i8 9, i8* @delim, align 1, !dbg !931, !tbaa !815
  br label %80, !dbg !933

; <label>:80:                                     ; preds = %79, %73
  %81 = load i8*, i8** @output_delimiter_string, align 8, !dbg !934, !tbaa !738
  %82 = icmp eq i8* %81, null, !dbg !936
  br i1 %82, label %83, label %85, !dbg !937

; <label>:83:                                     ; preds = %80
  %84 = load i8, i8* @delim, align 1, !dbg !938, !tbaa !815
  store i8 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), align 1, !dbg !940, !tbaa !815
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 1), align 1, !dbg !941, !tbaa !815
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), i8** @output_delimiter_string, align 8, !dbg !942, !tbaa !738
  store i64 1, i64* @output_delimiter_length, align 8, !dbg !943, !tbaa !879
  br label %85, !dbg !944

; <label>:85:                                     ; preds = %83, %80
  %86 = load i32, i32* @optind, align 4, !dbg !945, !tbaa !947
  %87 = icmp eq i32 %86, %0, !dbg !949
  br i1 %87, label %91, label %88, !dbg !950

; <label>:88:                                     ; preds = %85
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !66, metadata !730), !dbg !951
  %89 = icmp slt i32 %86, %0, !dbg !952
  br i1 %89, label %90, label %107, !dbg !956

; <label>:90:                                     ; preds = %88
  br label %94, !dbg !958

; <label>:91:                                     ; preds = %85
  %92 = tail call fastcc zeroext i1 @cut_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)), !dbg !959
  %93 = zext i1 %92 to i8, !dbg !960
  tail call void @llvm.dbg.value(metadata i8 %93, i64 0, metadata !66, metadata !730), !dbg !951
  br label %107, !dbg !961

; <label>:94:                                     ; preds = %90, %94
  %95 = phi i32 [ %104, %94 ], [ %86, %90 ]
  %96 = phi i8 [ %102, %94 ], [ 1, %90 ]
  %97 = sext i32 %95 to i64, !dbg !958
  %98 = getelementptr inbounds i8*, i8** %1, i64 %97, !dbg !958
  %99 = load i8*, i8** %98, align 8, !dbg !958, !tbaa !738
  %100 = tail call fastcc zeroext i1 @cut_file(i8* %99), !dbg !962
  %101 = zext i1 %100 to i8, !dbg !962
  %102 = and i8 %101, %96, !dbg !963
  tail call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !66, metadata !730), !dbg !951
  %103 = load i32, i32* @optind, align 4, !dbg !964, !tbaa !947
  %104 = add nsw i32 %103, 1, !dbg !964
  store i32 %104, i32* @optind, align 4, !dbg !964, !tbaa !947
  tail call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !66, metadata !730), !dbg !951
  %105 = icmp slt i32 %104, %0, !dbg !952
  br i1 %105, label %94, label %106, !dbg !956, !llvm.loop !966

; <label>:106:                                    ; preds = %94
  br label %107, !dbg !951

; <label>:107:                                    ; preds = %106, %88, %91
  %108 = phi i8 [ %93, %91 ], [ 1, %88 ], [ %102, %106 ]
  tail call void @llvm.dbg.value(metadata i8 %108, i64 0, metadata !66, metadata !730), !dbg !951
  %109 = load i1, i1* @have_read_stdin, align 1
  br i1 %109, label %110, label %117, !dbg !969

; <label>:110:                                    ; preds = %107
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !971, !tbaa !738
  %112 = tail call i32 @rpl_fclose(%struct._IO_FILE* %111) #11, !dbg !973
  %113 = icmp eq i32 %112, -1, !dbg !974
  br i1 %113, label %114, label %117, !dbg !975

; <label>:114:                                    ; preds = %110
  %115 = tail call i32* @__errno_location() #1, !dbg !976
  %116 = load i32, i32* %115, align 4, !dbg !976, !tbaa !947
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !978
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !66, metadata !730), !dbg !951
  br label %117, !dbg !980

; <label>:117:                                    ; preds = %114, %110, %107
  %118 = phi i8 [ 0, %114 ], [ %108, %110 ], [ %108, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %118, i64 0, metadata !66, metadata !730), !dbg !951
  %119 = and i8 %118, 1, !dbg !981
  %120 = xor i8 %119, 1, !dbg !981
  %121 = zext i8 %120 to i32, !dbg !981
  ret i32 %121, !dbg !982
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
define internal fastcc zeroext i1 @cut_file(i8*) unnamed_addr #6 !dbg !983 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !987, metadata !730), !dbg !1058
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1047, metadata !730), !dbg !1059
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1048, metadata !730), !dbg !1060
  %2 = load i8, i8* %0, align 1, !dbg !1061, !tbaa !815
  %3 = icmp eq i8 %2, 45, !dbg !1063
  br i1 %3, label %4, label %10, !dbg !1066

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1068
  %6 = load i8, i8* %5, align 1, !dbg !1068, !tbaa !815
  %7 = icmp eq i8 %6, 0, !dbg !1071
  br i1 %7, label %8, label %10, !dbg !1073

; <label>:8:                                      ; preds = %4
  store i1 true, i1* @have_read_stdin, align 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1075, !tbaa !738
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, i64 0, metadata !988, metadata !730), !dbg !1077
  br label %17, !dbg !1078

; <label>:10:                                     ; preds = %1, %4
  %11 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)), !dbg !1079
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %11, i64 0, metadata !988, metadata !730), !dbg !1077
  %12 = icmp eq %struct._IO_FILE* %11, null, !dbg !1081
  br i1 %12, label %13, label %17, !dbg !1083

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno_location() #1, !dbg !1084
  %15 = load i32, i32* %14, align 4, !dbg !1084, !tbaa !947
  %16 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #11, !dbg !1086
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %16) #11, !dbg !1088
  br label %429, !dbg !1090

; <label>:17:                                     ; preds = %10, %8
  %18 = phi %struct._IO_FILE* [ %9, %8 ], [ %11, %10 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !988, metadata !730), !dbg !1077
  tail call void @fadvise(%struct._IO_FILE* %18, i32 2) #11, !dbg !1091
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1092, metadata !730) #11, !dbg !1097
  %19 = load i32, i32* @operating_mode, align 4, !dbg !1099, !tbaa !815
  %20 = icmp eq i32 %19, 1, !dbg !1101
  %21 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !tbaa !738
  store i64 %21, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !tbaa !738
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 1
  br i1 %20, label %23, label %117, !dbg !1102

; <label>:23:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1103, metadata !730) #11, !dbg !1110
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1106, metadata !730) #11, !dbg !1112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1107, metadata !730) #11, !dbg !1113
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 2
  br label %25, !dbg !1114

; <label>:25:                                     ; preds = %59, %23
  %26 = phi i64 [ 0, %23 ], [ %60, %59 ]
  %27 = phi i8 [ 0, %23 ], [ %61, %59 ]
  br label %28, !dbg !1113

; <label>:28:                                     ; preds = %86, %25
  %29 = phi i64 [ %79, %86 ], [ %26, %25 ]
  tail call void @llvm.dbg.value(metadata i8 %27, i64 0, metadata !1107, metadata !730) #11, !dbg !1113
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1115, metadata !730) #11, !dbg !1121
  %30 = load i8*, i8** %22, align 8, !dbg !1123, !tbaa !1124
  %31 = load i8*, i8** %24, align 8, !dbg !1123, !tbaa !1127
  %32 = icmp ult i8* %30, %31, !dbg !1123
  br i1 %32, label %35, label %33, !dbg !1123, !prof !1128

; <label>:33:                                     ; preds = %28
  %34 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11, !dbg !1129
  br label %39, !dbg !1129

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1131
  store i8* %36, i8** %22, align 8, !dbg !1131, !tbaa !1124
  %37 = load i8, i8* %30, align 1, !dbg !1131, !tbaa !815
  %38 = zext i8 %37 to i32, !dbg !1131
  br label %39, !dbg !1131

; <label>:39:                                     ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ], !dbg !1133
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1108, metadata !730) #11, !dbg !1135
  %41 = load i1, i1* @line_delim, align 1
  %42 = select i1 %41, i32 0, i32 10, !dbg !1136
  %43 = icmp eq i32 %40, %42, !dbg !1138
  br i1 %43, label %44, label %62, !dbg !1139

; <label>:44:                                     ; preds = %39
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1140, metadata !730) #11, !dbg !1145
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1148, !tbaa !738
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %45, i64 0, i32 5, !dbg !1148
  %47 = load i8*, i8** %46, align 8, !dbg !1148, !tbaa !1149
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %45, i64 0, i32 6, !dbg !1148
  %49 = load i8*, i8** %48, align 8, !dbg !1148, !tbaa !1150
  %50 = icmp ult i8* %47, %49, !dbg !1148
  br i1 %50, label %54, label %51, !dbg !1148, !prof !1128

; <label>:51:                                     ; preds = %44
  %52 = and i32 %40, 255, !dbg !1151
  %53 = tail call i32 @__overflow(%struct._IO_FILE* %45, i32 %52) #11, !dbg !1151
  br label %57, !dbg !1151

; <label>:54:                                     ; preds = %44
  %55 = trunc i32 %40 to i8, !dbg !1153
  %56 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1153
  store i8* %56, i8** %46, align 8, !dbg !1153, !tbaa !1149
  store i8 %55, i8* %47, align 1, !dbg !1153, !tbaa !815
  br label %57, !dbg !1153

; <label>:57:                                     ; preds = %54, %51
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1106, metadata !730) #11, !dbg !1112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1107, metadata !730) #11, !dbg !1113
  %58 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1155, !tbaa !738
  store i64 %58, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1156, !tbaa !738
  br label %59, !dbg !1157

; <label>:59:                                     ; preds = %57, %111, %114
  %60 = phi i64 [ 0, %57 ], [ %79, %111 ], [ %79, %114 ]
  %61 = phi i8 [ 0, %57 ], [ %104, %111 ], [ %104, %114 ]
  br label %25, !dbg !1113

; <label>:62:                                     ; preds = %39
  %63 = icmp eq i32 %40, -1, !dbg !1158
  br i1 %63, label %64, label %78, !dbg !1160

; <label>:64:                                     ; preds = %62
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1106, metadata !730) #11, !dbg !1112
  %65 = icmp eq i64 %29, 0, !dbg !1161
  br i1 %65, label %405, label %66, !dbg !1164

; <label>:66:                                     ; preds = %64
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1140, metadata !730) #11, !dbg !1165
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1167, !tbaa !738
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5, !dbg !1167
  %69 = load i8*, i8** %68, align 8, !dbg !1167, !tbaa !1149
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6, !dbg !1167
  %71 = load i8*, i8** %70, align 8, !dbg !1167, !tbaa !1150
  %72 = icmp ult i8* %69, %71, !dbg !1167
  br i1 %72, label %75, label %73, !dbg !1167, !prof !1128

; <label>:73:                                     ; preds = %66
  %74 = tail call i32 @__overflow(%struct._IO_FILE* %67, i32 %42) #11, !dbg !1168
  br label %405, !dbg !1168

; <label>:75:                                     ; preds = %66
  %76 = trunc i32 %42 to i8, !dbg !1169
  %77 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1169
  store i8* %77, i8** %68, align 8, !dbg !1169, !tbaa !1149
  store i8 %76, i8* %69, align 1, !dbg !1169, !tbaa !815
  br label %405, !dbg !1169

; <label>:78:                                     ; preds = %62
  %79 = add i64 %29, 1, !dbg !1170
  %80 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1178, !tbaa !738
  %81 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %80, i64 0, i32 1, !dbg !1180
  %82 = load i64, i64* %81, align 8, !dbg !1180, !tbaa !1181
  %83 = icmp ugt i64 %79, %82, !dbg !1183
  br i1 %83, label %84, label %86, !dbg !1184

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %80, i64 1, !dbg !1185
  store %struct.field_range_pair* %85, %struct.field_range_pair** @current_rp, align 8, !dbg !1185, !tbaa !738
  br label %86, !dbg !1186

; <label>:86:                                     ; preds = %84, %78
  %87 = phi %struct.field_range_pair* [ %80, %78 ], [ %85, %84 ], !dbg !1187
  tail call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !1106, metadata !730) #11, !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !1192, metadata !730) #11, !dbg !1195
  %88 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %87, i64 0, i32 0, !dbg !1196
  %89 = load i64, i64* %88, align 8, !dbg !1196, !tbaa !1197
  %90 = icmp ugt i64 %89, %79, !dbg !1198
  br i1 %90, label %28, label %91, !dbg !1199

; <label>:91:                                     ; preds = %86
  %92 = load i1, i1* @output_delimiter_specified, align 1
  br i1 %92, label %93, label %103, !dbg !1200

; <label>:93:                                     ; preds = %91
  %94 = and i8 %27, 1, !dbg !1202
  %95 = icmp ne i8 %94, 0, !dbg !1202
  %96 = icmp eq i64 %89, %79, !dbg !1206
  %97 = and i1 %95, %96, !dbg !1212
  tail call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !1106, metadata !730) #11, !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !1209, metadata !730) #11, !dbg !1213
  br i1 %97, label %98, label %103, !dbg !1212

; <label>:98:                                     ; preds = %93
  %99 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1214, !tbaa !738
  %100 = load i64, i64* @output_delimiter_length, align 8, !dbg !1214, !tbaa !879
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1214, !tbaa !738
  %102 = tail call i64 @fwrite_unlocked(i8* %99, i64 1, i64 %100, %struct._IO_FILE* %101) #11, !dbg !1214
  br label %103, !dbg !1216

; <label>:103:                                    ; preds = %98, %93, %91
  %104 = phi i8 [ %27, %91 ], [ 1, %93 ], [ 1, %98 ]
  tail call void @llvm.dbg.value(metadata i8 %104, i64 0, metadata !1107, metadata !730) #11, !dbg !1113
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1140, metadata !730) #11, !dbg !1217
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1219, !tbaa !738
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5, !dbg !1219
  %107 = load i8*, i8** %106, align 8, !dbg !1219, !tbaa !1149
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6, !dbg !1219
  %109 = load i8*, i8** %108, align 8, !dbg !1219, !tbaa !1150
  %110 = icmp ult i8* %107, %109, !dbg !1219
  br i1 %110, label %114, label %111, !dbg !1219, !prof !1128

; <label>:111:                                    ; preds = %103
  %112 = and i32 %40, 255, !dbg !1220
  %113 = tail call i32 @__overflow(%struct._IO_FILE* %105, i32 %112) #11, !dbg !1220
  br label %59, !dbg !1220

; <label>:114:                                    ; preds = %103
  %115 = trunc i32 %40 to i8, !dbg !1221
  %116 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !1221
  store i8* %116, i8** %106, align 8, !dbg !1221, !tbaa !1149
  store i8 %115, i8* %107, align 1, !dbg !1221, !tbaa !815
  br label %59, !dbg !1221

; <label>:117:                                    ; preds = %17
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1222, metadata !730) #11, !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1226, metadata !730) #11, !dbg !1247
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1227, metadata !730) #11, !dbg !1248
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1115, metadata !730) #11, !dbg !1249
  %118 = load i8*, i8** %22, align 8, !dbg !1251, !tbaa !1124
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 2, !dbg !1251
  %120 = load i8*, i8** %119, align 8, !dbg !1251, !tbaa !1127
  %121 = icmp ult i8* %118, %120, !dbg !1251
  br i1 %121, label %122, label %126, !dbg !1251, !prof !1128

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1252
  store i8* %123, i8** %22, align 8, !dbg !1252, !tbaa !1124
  %124 = load i8, i8* %118, align 1, !dbg !1252, !tbaa !815
  %125 = zext i8 %124 to i32, !dbg !1252
  tail call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  br label %129, !dbg !1254

; <label>:126:                                    ; preds = %117
  %127 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11, !dbg !1255
  tail call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  %128 = icmp eq i32 %127, -1, !dbg !1256
  br i1 %128, label %405, label %129, !dbg !1254

; <label>:129:                                    ; preds = %126, %122
  %130 = phi i32 [ %125, %122 ], [ %127, %126 ]
  %131 = tail call i32 @ungetc(i32 %130, %struct._IO_FILE* nonnull %18) #11, !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  %132 = load i1, i1* @suppress_non_delimited, align 1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1192, metadata !730) #11, !dbg !1259
  %133 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1261, !tbaa !738
  %134 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %133, i64 0, i32 0, !dbg !1262
  %135 = load i64, i64* %134, align 8, !dbg !1262, !tbaa !1197
  %136 = icmp ugt i64 %135, 1, !dbg !1263
  %137 = xor i1 %132, %136, !dbg !1264
  %138 = xor i1 %137, true
  br label %139, !dbg !1265

; <label>:139:                                    ; preds = %360, %129
  %140 = phi i64 [ 1, %129 ], [ %361, %360 ]
  %141 = phi i8 [ 0, %129 ], [ %362, %360 ]
  %142 = phi i32 [ 0, %129 ], [ %363, %360 ]
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  tail call void @llvm.dbg.value(metadata i8 %141, i64 0, metadata !1227, metadata !730) #11, !dbg !1248
  tail call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !1226, metadata !730) #11, !dbg !1247
  %143 = icmp ne i64 %140, 1, !dbg !1266
  %144 = or i1 %143, %138, !dbg !1266
  br i1 %144, label %145, label %147, !dbg !1266

; <label>:145:                                    ; preds = %139
  %146 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !tbaa !738
  br label %241, !dbg !1266

; <label>:147:                                    ; preds = %139
  %148 = load i8, i8* @delim, align 1, !dbg !1267, !tbaa !815
  %149 = zext i8 %148 to i32, !dbg !1267
  %150 = load i1, i1* @line_delim, align 1
  %151 = select i1 %150, i32 0, i32 10, !dbg !1268
  %152 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %149, i32 %151, %struct._IO_FILE* nonnull %18) #11, !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !1229, metadata !730) #11, !dbg !1270
  %153 = icmp slt i64 %152, 0, !dbg !1271
  br i1 %153, label %156, label %154, !dbg !1273

; <label>:154:                                    ; preds = %147
  br label %164, !dbg !1274

; <label>:155:                                    ; preds = %177
  br label %157, !dbg !1275

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !1275

; <label>:157:                                    ; preds = %156, %155
  %158 = load i8*, i8** @field_1_buffer, align 8, !dbg !1275, !tbaa !738
  tail call void @free(i8* %158) #11, !dbg !1277
  store i8* null, i8** @field_1_buffer, align 8, !dbg !1278, !tbaa !738
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1279, metadata !730) #11, !dbg !1282
  %159 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 0, !dbg !1285
  %160 = load i32, i32* %159, align 8, !dbg !1285, !tbaa !1286
  %161 = and i32 %160, 48, !dbg !1287
  %162 = icmp eq i32 %161, 0, !dbg !1287
  br i1 %162, label %163, label %405, !dbg !1287

; <label>:163:                                    ; preds = %157
  tail call void @xalloc_die() #14, !dbg !1288
  unreachable, !dbg !1288

; <label>:164:                                    ; preds = %154, %177
  %165 = phi i64 [ %182, %177 ], [ %152, %154 ]
  tail call void @llvm.dbg.value(metadata i64 %165, i64 0, metadata !1235, metadata !730) #11, !dbg !1274
  %166 = icmp eq i64 %165, 0, !dbg !1289
  br i1 %166, label %167, label %168, !dbg !1292

; <label>:167:                                    ; preds = %164
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i64 0, i64 0)) #14, !dbg !1293
  unreachable, !dbg !1293

; <label>:168:                                    ; preds = %164
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  %169 = load i8*, i8** @field_1_buffer, align 8, !dbg !1295, !tbaa !738
  %170 = add i64 %165, -1, !dbg !1297
  %171 = getelementptr inbounds i8, i8* %169, i64 %170, !dbg !1295
  %172 = load i8, i8* %171, align 1, !dbg !1295, !tbaa !815
  %173 = load i8, i8* @delim, align 1, !dbg !1298, !tbaa !815
  %174 = icmp eq i8 %172, %173, !dbg !1299
  br i1 %174, label %206, label %175, !dbg !1300

; <label>:175:                                    ; preds = %168
  %176 = load i1, i1* @suppress_non_delimited, align 1
  br i1 %176, label %177, label %184, !dbg !1301

; <label>:177:                                    ; preds = %203, %201, %184, %175
  %178 = load i8, i8* @delim, align 1, !dbg !1267, !tbaa !815
  %179 = zext i8 %178 to i32, !dbg !1267
  %180 = load i1, i1* @line_delim, align 1
  %181 = select i1 %180, i32 0, i32 10, !dbg !1268
  %182 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %179, i32 %181, %struct._IO_FILE* %18) #11, !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1229, metadata !730) #11, !dbg !1270
  %183 = icmp slt i64 %182, 0, !dbg !1271
  br i1 %183, label %155, label %164, !dbg !1273

; <label>:184:                                    ; preds = %175
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1303, !tbaa !738
  %186 = tail call i64 @fwrite_unlocked(i8* %169, i64 1, i64 %165, %struct._IO_FILE* %185) #11, !dbg !1303
  %187 = load i8*, i8** @field_1_buffer, align 8, !dbg !1306, !tbaa !738
  %188 = getelementptr inbounds i8, i8* %187, i64 %170, !dbg !1306
  %189 = load i8, i8* %188, align 1, !dbg !1306, !tbaa !815
  %190 = sext i8 %189 to i32, !dbg !1306
  %191 = load i1, i1* @line_delim, align 1
  %192 = select i1 %191, i32 0, i32 10, !dbg !1308
  %193 = icmp eq i32 %190, %192, !dbg !1309
  br i1 %193, label %177, label %194, !dbg !1310

; <label>:194:                                    ; preds = %184
  tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !1140, metadata !730) #11, !dbg !1311
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1313, !tbaa !738
  %196 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %195, i64 0, i32 5, !dbg !1313
  %197 = load i8*, i8** %196, align 8, !dbg !1313, !tbaa !1149
  %198 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %195, i64 0, i32 6, !dbg !1313
  %199 = load i8*, i8** %198, align 8, !dbg !1313, !tbaa !1150
  %200 = icmp ult i8* %197, %199, !dbg !1313
  br i1 %200, label %203, label %201, !dbg !1313, !prof !1128

; <label>:201:                                    ; preds = %194
  %202 = tail call i32 @__overflow(%struct._IO_FILE* %195, i32 %192) #11, !dbg !1314
  br label %177, !dbg !1314

; <label>:203:                                    ; preds = %194
  %204 = trunc i32 %192 to i8, !dbg !1315
  %205 = getelementptr inbounds i8, i8* %197, i64 1, !dbg !1315
  store i8* %205, i8** %196, align 8, !dbg !1315, !tbaa !1149
  store i8 %204, i8* %197, align 1, !dbg !1315, !tbaa !815
  br label %177, !dbg !1315

; <label>:206:                                    ; preds = %168
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1192, metadata !730) #11, !dbg !1316
  %207 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1318, !tbaa !738
  %208 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %207, i64 0, i32 0, !dbg !1319
  %209 = load i64, i64* %208, align 8, !dbg !1319, !tbaa !1197
  %210 = icmp ult i64 %209, 2, !dbg !1320
  br i1 %210, label %211, label %233, !dbg !1321

; <label>:211:                                    ; preds = %206
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1322, !tbaa !738
  %213 = tail call i64 @fwrite_unlocked(i8* %169, i64 1, i64 %170, %struct._IO_FILE* %212) #11, !dbg !1322
  %214 = load i8, i8* @delim, align 1, !dbg !1323, !tbaa !815
  %215 = zext i8 %214 to i32, !dbg !1323
  %216 = load i1, i1* @line_delim, align 1
  %217 = select i1 %216, i32 0, i32 10, !dbg !1324
  %218 = icmp eq i32 %215, %217, !dbg !1325
  br i1 %218, label %219, label %233, !dbg !1326

; <label>:219:                                    ; preds = %211
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1115, metadata !730) #11, !dbg !1327
  %220 = load i8*, i8** %22, align 8, !dbg !1329, !tbaa !1124
  %221 = load i8*, i8** %119, align 8, !dbg !1329, !tbaa !1127
  %222 = icmp ult i8* %220, %221, !dbg !1329
  br i1 %222, label %223, label %227, !dbg !1329, !prof !1128

; <label>:223:                                    ; preds = %219
  %224 = getelementptr inbounds i8, i8* %220, i64 1, !dbg !1330
  store i8* %224, i8** %22, align 8, !dbg !1330, !tbaa !1124
  %225 = load i8, i8* %220, align 1, !dbg !1330, !tbaa !815
  %226 = zext i8 %225 to i32, !dbg !1330
  tail call void @llvm.dbg.value(metadata i32 %228, i64 0, metadata !1236, metadata !730) #11, !dbg !1331
  br label %230, !dbg !1332

; <label>:227:                                    ; preds = %219
  %228 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11, !dbg !1333
  tail call void @llvm.dbg.value(metadata i32 %228, i64 0, metadata !1236, metadata !730) #11, !dbg !1331
  %229 = icmp eq i32 %228, -1, !dbg !1334
  br i1 %229, label %233, label %230, !dbg !1332

; <label>:230:                                    ; preds = %227, %223
  %231 = phi i32 [ %226, %223 ], [ %228, %227 ]
  %232 = tail call i32 @ungetc(i32 %231, %struct._IO_FILE* nonnull %18) #11, !dbg !1336
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1227, metadata !730) #11, !dbg !1248
  br label %233, !dbg !1338

; <label>:233:                                    ; preds = %230, %227, %211, %206
  %234 = phi i8 [ %141, %206 ], [ 1, %230 ], [ %141, %227 ], [ 1, %211 ]
  tail call void @llvm.dbg.value(metadata i8 %234, i64 0, metadata !1227, metadata !730) #11, !dbg !1248
  %235 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1339, !tbaa !738
  %236 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %235, i64 0, i32 1, !dbg !1341
  %237 = load i64, i64* %236, align 8, !dbg !1341, !tbaa !1181
  %238 = icmp ult i64 %237, 2, !dbg !1342
  br i1 %238, label %239, label %241, !dbg !1343

; <label>:239:                                    ; preds = %233
  %240 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %235, i64 1, !dbg !1344
  store %struct.field_range_pair* %240, %struct.field_range_pair** @current_rp, align 8, !dbg !1344, !tbaa !738
  br label %241, !dbg !1345

; <label>:241:                                    ; preds = %239, %233, %145
  %242 = phi %struct.field_range_pair* [ %235, %233 ], [ %240, %239 ], [ %146, %145 ], !dbg !1346
  %243 = phi i64 [ 2, %233 ], [ 2, %239 ], [ %140, %145 ]
  %244 = phi i8 [ %234, %233 ], [ %234, %239 ], [ %141, %145 ]
  %245 = phi i32 [ 0, %233 ], [ 0, %239 ], [ %142, %145 ]
  tail call void @llvm.dbg.value(metadata i32 %245, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  tail call void @llvm.dbg.value(metadata i8 %244, i64 0, metadata !1227, metadata !730) #11, !dbg !1248
  tail call void @llvm.dbg.value(metadata i32 %245, i64 0, metadata !1241, metadata !730) #11, !dbg !1349
  tail call void @llvm.dbg.value(metadata i64 %243, i64 0, metadata !1226, metadata !730) #11, !dbg !1247
  tail call void @llvm.dbg.value(metadata i64 %243, i64 0, metadata !1192, metadata !730) #11, !dbg !1350
  %246 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %242, i64 0, i32 0, !dbg !1351
  %247 = load i64, i64* %246, align 8, !dbg !1351, !tbaa !1197
  %248 = icmp ugt i64 %247, %243, !dbg !1352
  br i1 %248, label %249, label %250, !dbg !1353

; <label>:249:                                    ; preds = %241
  br label %295, !dbg !1349

; <label>:250:                                    ; preds = %241
  %251 = and i8 %244, 1, !dbg !1354
  %252 = icmp eq i8 %251, 0, !dbg !1354
  br i1 %252, label %258, label %253, !dbg !1357

; <label>:253:                                    ; preds = %250
  %254 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1358, !tbaa !738
  %255 = load i64, i64* @output_delimiter_length, align 8, !dbg !1358, !tbaa !879
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1358, !tbaa !738
  %257 = tail call i64 @fwrite_unlocked(i8* %254, i64 1, i64 %255, %struct._IO_FILE* %256) #11, !dbg !1358
  br label %258, !dbg !1360

; <label>:258:                                    ; preds = %250, %253
  br label %259, !dbg !1349

; <label>:259:                                    ; preds = %291, %258
  %260 = phi i32 [ %245, %258 ], [ %271, %291 ]
  tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !1241, metadata !730) #11, !dbg !1349
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1115, metadata !730) #11, !dbg !1361
  %261 = load i8*, i8** %22, align 8, !dbg !1364, !tbaa !1124
  %262 = load i8*, i8** %119, align 8, !dbg !1364, !tbaa !1127
  %263 = icmp ult i8* %261, %262, !dbg !1364
  br i1 %263, label %266, label %264, !dbg !1364, !prof !1128

; <label>:264:                                    ; preds = %259
  %265 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11, !dbg !1365
  br label %270, !dbg !1365

; <label>:266:                                    ; preds = %259
  %267 = getelementptr inbounds i8, i8* %261, i64 1, !dbg !1366
  store i8* %267, i8** %22, align 8, !dbg !1366, !tbaa !1124
  %268 = load i8, i8* %261, align 1, !dbg !1366, !tbaa !815
  %269 = zext i8 %268 to i32, !dbg !1366
  br label %270, !dbg !1366

; <label>:270:                                    ; preds = %266, %264
  %271 = phi i32 [ %265, %264 ], [ %269, %266 ], !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %271, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  %272 = load i8, i8* @delim, align 1, !dbg !1368, !tbaa !815
  %273 = zext i8 %272 to i32, !dbg !1368
  %274 = icmp eq i32 %271, %273, !dbg !1369
  br i1 %274, label %318, label %275, !dbg !1370

; <label>:275:                                    ; preds = %270
  %276 = load i1, i1* @line_delim, align 1
  %277 = select i1 %276, i32 0, i32 10, !dbg !1371
  %278 = icmp ne i32 %271, %277, !dbg !1373
  %279 = icmp ne i32 %271, -1, !dbg !1374
  %280 = and i1 %279, %278, !dbg !1376
  br i1 %280, label %281, label %318, !dbg !1376

; <label>:281:                                    ; preds = %275
  tail call void @llvm.dbg.value(metadata i32 %271, i64 0, metadata !1140, metadata !730) #11, !dbg !1377
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1380, !tbaa !738
  %283 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %282, i64 0, i32 5, !dbg !1380
  %284 = load i8*, i8** %283, align 8, !dbg !1380, !tbaa !1149
  %285 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %282, i64 0, i32 6, !dbg !1380
  %286 = load i8*, i8** %285, align 8, !dbg !1380, !tbaa !1150
  %287 = icmp ult i8* %284, %286, !dbg !1380
  br i1 %287, label %292, label %288, !dbg !1380, !prof !1128

; <label>:288:                                    ; preds = %281
  %289 = and i32 %271, 255, !dbg !1381
  %290 = tail call i32 @__overflow(%struct._IO_FILE* %282, i32 %289) #11, !dbg !1381
  br label %291, !dbg !1381

; <label>:291:                                    ; preds = %288, %292
  br label %259, !dbg !1349, !llvm.loop !1382

; <label>:292:                                    ; preds = %281
  %293 = trunc i32 %271 to i8, !dbg !1385
  %294 = getelementptr inbounds i8, i8* %284, i64 1, !dbg !1385
  store i8* %294, i8** %283, align 8, !dbg !1385, !tbaa !1149
  store i8 %293, i8* %284, align 1, !dbg !1385, !tbaa !815
  br label %291, !dbg !1385

; <label>:295:                                    ; preds = %249, %311
  %296 = phi i32 [ %307, %311 ], [ %245, %249 ]
  tail call void @llvm.dbg.value(metadata i32 %296, i64 0, metadata !1241, metadata !730) #11, !dbg !1349
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1115, metadata !730) #11, !dbg !1386
  %297 = load i8*, i8** %22, align 8, !dbg !1390, !tbaa !1124
  %298 = load i8*, i8** %119, align 8, !dbg !1390, !tbaa !1127
  %299 = icmp ult i8* %297, %298, !dbg !1390
  br i1 %299, label %302, label %300, !dbg !1390, !prof !1128

; <label>:300:                                    ; preds = %295
  %301 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11, !dbg !1391
  br label %306, !dbg !1391

; <label>:302:                                    ; preds = %295
  %303 = getelementptr inbounds i8, i8* %297, i64 1, !dbg !1392
  store i8* %303, i8** %22, align 8, !dbg !1392, !tbaa !1124
  %304 = load i8, i8* %297, align 1, !dbg !1392, !tbaa !815
  %305 = zext i8 %304 to i32, !dbg !1392
  br label %306, !dbg !1392

; <label>:306:                                    ; preds = %302, %300
  %307 = phi i32 [ %301, %300 ], [ %305, %302 ], !dbg !1393
  tail call void @llvm.dbg.value(metadata i32 %307, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  %308 = load i8, i8* @delim, align 1, !dbg !1394, !tbaa !815
  %309 = zext i8 %308 to i32, !dbg !1394
  %310 = icmp eq i32 %307, %309, !dbg !1395
  br i1 %310, label %317, label %311, !dbg !1396

; <label>:311:                                    ; preds = %306
  %312 = load i1, i1* @line_delim, align 1
  %313 = select i1 %312, i32 0, i32 10, !dbg !1397
  %314 = icmp ne i32 %307, %313, !dbg !1399
  %315 = icmp ne i32 %307, -1, !dbg !1400
  %316 = and i1 %315, %314, !dbg !1402
  br i1 %316, label %295, label %317, !dbg !1402, !llvm.loop !1403

; <label>:317:                                    ; preds = %306, %311
  br label %319, !dbg !1253

; <label>:318:                                    ; preds = %270, %275
  br label %319, !dbg !1253

; <label>:319:                                    ; preds = %318, %317
  %320 = phi i8 [ %308, %317 ], [ %272, %318 ], !dbg !1406
  %321 = phi i8 [ %244, %317 ], [ 1, %318 ]
  %322 = phi i32 [ %296, %317 ], [ %260, %318 ]
  %323 = phi i32 [ %307, %317 ], [ %271, %318 ]
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  tail call void @llvm.dbg.value(metadata i32 %322, i64 0, metadata !1241, metadata !730) #11, !dbg !1349
  tail call void @llvm.dbg.value(metadata i8 %321, i64 0, metadata !1227, metadata !730) #11, !dbg !1248
  %324 = zext i8 %320 to i32, !dbg !1406
  %325 = load i1, i1* @line_delim, align 1
  %326 = select i1 %325, i32 0, i32 10, !dbg !1407
  %327 = icmp eq i32 %324, %326, !dbg !1408
  %328 = icmp eq i32 %323, %324, !dbg !1409
  %329 = and i1 %328, %327, !dbg !1411
  br i1 %329, label %330, label %350, !dbg !1411

; <label>:330:                                    ; preds = %319
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1115, metadata !730) #11, !dbg !1412
  %331 = load i8*, i8** %22, align 8, !dbg !1414, !tbaa !1124
  %332 = load i8*, i8** %119, align 8, !dbg !1414, !tbaa !1127
  %333 = icmp ult i8* %331, %332, !dbg !1414
  br i1 %333, label %334, label %338, !dbg !1414, !prof !1128

; <label>:334:                                    ; preds = %330
  %335 = getelementptr inbounds i8, i8* %331, i64 1, !dbg !1415
  store i8* %335, i8** %22, align 8, !dbg !1415, !tbaa !1124
  %336 = load i8, i8* %331, align 1, !dbg !1415, !tbaa !815
  %337 = zext i8 %336 to i32, !dbg !1415
  tail call void @llvm.dbg.value(metadata i32 %339, i64 0, metadata !1242, metadata !730) #11, !dbg !1416
  br label %346, !dbg !1417

; <label>:338:                                    ; preds = %330
  %339 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %18) #11, !dbg !1418
  tail call void @llvm.dbg.value(metadata i32 %339, i64 0, metadata !1242, metadata !730) #11, !dbg !1416
  %340 = icmp eq i32 %339, -1, !dbg !1419
  br i1 %340, label %341, label %346, !dbg !1417

; <label>:341:                                    ; preds = %338
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  %342 = load i8, i8* @delim, align 1, !dbg !1421, !tbaa !815
  %343 = zext i8 %342 to i32, !dbg !1421
  %344 = load i1, i1* @line_delim, align 1
  %345 = select i1 %344, i32 0, i32 10, !dbg !1423
  br label %372, !dbg !1425

; <label>:346:                                    ; preds = %338, %334
  %347 = phi i32 [ %337, %334 ], [ %339, %338 ]
  %348 = tail call i32 @ungetc(i32 %347, %struct._IO_FILE* nonnull %18) #11, !dbg !1426
  %349 = load i8, i8* @delim, align 1, !tbaa !815
  br label %350, !dbg !1426

; <label>:350:                                    ; preds = %346, %319
  %351 = phi i8 [ %349, %346 ], [ %320, %319 ], !dbg !1421
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !1225, metadata !730) #11, !dbg !1253
  %352 = zext i8 %351 to i32, !dbg !1421
  %353 = icmp eq i32 %323, %352, !dbg !1427
  br i1 %353, label %354, label %366, !dbg !1428

; <label>:354:                                    ; preds = %350
  %355 = add i64 %243, 1, !dbg !1429
  %356 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1431, !tbaa !738
  %357 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %356, i64 0, i32 1, !dbg !1432
  %358 = load i64, i64* %357, align 8, !dbg !1432, !tbaa !1181
  %359 = icmp ugt i64 %355, %358, !dbg !1433
  br i1 %359, label %364, label %360, !dbg !1434

; <label>:360:                                    ; preds = %354, %364, %366, %402
  %361 = phi i64 [ 1, %402 ], [ %243, %366 ], [ %355, %354 ], [ %355, %364 ]
  %362 = phi i8 [ 0, %402 ], [ %321, %366 ], [ %321, %354 ], [ %321, %364 ]
  %363 = phi i32 [ %375, %402 ], [ %323, %366 ], [ %323, %354 ], [ %323, %364 ]
  br label %139, !dbg !1253

; <label>:364:                                    ; preds = %354
  %365 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %356, i64 1, !dbg !1435
  store %struct.field_range_pair* %365, %struct.field_range_pair** @current_rp, align 8, !dbg !1435, !tbaa !738
  br label %360, !dbg !1436

; <label>:366:                                    ; preds = %350
  %367 = load i1, i1* @line_delim, align 1
  %368 = select i1 %367, i32 0, i32 10, !dbg !1423
  %369 = icmp eq i32 %323, %368, !dbg !1437
  %370 = icmp eq i32 %323, -1, !dbg !1438
  %371 = or i1 %370, %369, !dbg !1425
  br i1 %371, label %372, label %360, !dbg !1425

; <label>:372:                                    ; preds = %366, %341
  %373 = phi i1 [ true, %341 ], [ %370, %366 ]
  %374 = phi i32 [ %345, %341 ], [ %368, %366 ]
  %375 = phi i32 [ -1, %341 ], [ %323, %366 ]
  %376 = phi i32 [ %343, %341 ], [ %352, %366 ]
  %377 = and i8 %321, 1, !dbg !1440
  %378 = icmp eq i8 %377, 0, !dbg !1440
  br i1 %378, label %379, label %383, !dbg !1443

; <label>:379:                                    ; preds = %372
  %380 = load i1, i1* @suppress_non_delimited, align 1
  tail call void @llvm.dbg.value(metadata i64 %243, i64 0, metadata !1226, metadata !730) #11, !dbg !1247
  %381 = icmp eq i64 %243, 1, !dbg !1444
  %382 = and i1 %381, %380, !dbg !1446
  br i1 %382, label %401, label %383, !dbg !1446

; <label>:383:                                    ; preds = %379, %372
  %384 = icmp eq i32 %375, %374, !dbg !1448
  %385 = icmp ne i32 %322, %374, !dbg !1448
  %386 = or i1 %385, %384, !dbg !1448
  %387 = icmp eq i32 %376, %322, !dbg !1451
  %388 = or i1 %386, %387, !dbg !1448
  br i1 %388, label %389, label %401, !dbg !1448

; <label>:389:                                    ; preds = %383
  tail call void @llvm.dbg.value(metadata i32 %368, i64 0, metadata !1140, metadata !730) #11, !dbg !1453
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1455, !tbaa !738
  %391 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %390, i64 0, i32 5, !dbg !1455
  %392 = load i8*, i8** %391, align 8, !dbg !1455, !tbaa !1149
  %393 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %390, i64 0, i32 6, !dbg !1455
  %394 = load i8*, i8** %393, align 8, !dbg !1455, !tbaa !1150
  %395 = icmp ult i8* %392, %394, !dbg !1455
  br i1 %395, label %398, label %396, !dbg !1455, !prof !1128

; <label>:396:                                    ; preds = %389
  %397 = tail call i32 @__overflow(%struct._IO_FILE* %390, i32 %374) #11, !dbg !1456
  br label %401, !dbg !1456

; <label>:398:                                    ; preds = %389
  %399 = trunc i32 %374 to i8, !dbg !1457
  %400 = getelementptr inbounds i8, i8* %392, i64 1, !dbg !1457
  store i8* %400, i8** %391, align 8, !dbg !1457, !tbaa !1149
  store i8 %399, i8* %392, align 1, !dbg !1457, !tbaa !815
  br label %401, !dbg !1457

; <label>:401:                                    ; preds = %398, %396, %383, %379
  br i1 %373, label %404, label %402, !dbg !1458

; <label>:402:                                    ; preds = %401
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1226, metadata !730) #11, !dbg !1247
  %403 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1459, !tbaa !738
  store i64 %403, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1460, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1227, metadata !730) #11, !dbg !1248
  br label %360, !dbg !1461

; <label>:404:                                    ; preds = %401
  br label %405, !dbg !1462

; <label>:405:                                    ; preds = %404, %64, %73, %75, %126, %157
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1279, metadata !730), !dbg !1462
  %406 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 0, !dbg !1465
  %407 = load i32, i32* %406, align 8, !dbg !1465, !tbaa !1286
  %408 = and i32 %407, 32, !dbg !1465
  %409 = icmp eq i32 %408, 0, !dbg !1466
  br i1 %409, label %414, label %410, !dbg !1467

; <label>:410:                                    ; preds = %405
  %411 = tail call i32* @__errno_location() #1, !dbg !1468
  %412 = load i32, i32* %411, align 4, !dbg !1468, !tbaa !947
  %413 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1470
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %412, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %413) #11, !dbg !1472
  br label %429, !dbg !1474

; <label>:414:                                    ; preds = %405
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1054, metadata !730), !dbg !1475
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1055, metadata !730), !dbg !1476
  %415 = load i8, i8* %0, align 1, !dbg !1477, !tbaa !815
  %416 = icmp eq i8 %415, 45, !dbg !1479
  br i1 %416, label %417, label %422, !dbg !1482

; <label>:417:                                    ; preds = %414
  %418 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1484
  %419 = load i8, i8* %418, align 1, !dbg !1484, !tbaa !815
  %420 = icmp eq i8 %419, 0, !dbg !1487
  br i1 %420, label %421, label %422, !dbg !1489

; <label>:421:                                    ; preds = %417
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %18) #11, !dbg !1490
  br label %429, !dbg !1490

; <label>:422:                                    ; preds = %414, %417
  %423 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #11, !dbg !1491
  %424 = icmp eq i32 %423, -1, !dbg !1493
  br i1 %424, label %425, label %429, !dbg !1494

; <label>:425:                                    ; preds = %422
  %426 = tail call i32* @__errno_location() #1, !dbg !1495
  %427 = load i32, i32* %426, align 4, !dbg !1495, !tbaa !947
  %428 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #11, !dbg !1497
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %427, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %428) #11, !dbg !1499
  br label %429, !dbg !1501

; <label>:429:                                    ; preds = %421, %422, %425, %410, %13
  %430 = phi i1 [ false, %410 ], [ false, %425 ], [ false, %13 ], [ true, %422 ], [ true, %421 ]
  ret i1 %430, !dbg !1502
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
define void @set_fields(i8*, i32) local_unnamed_addr #6 !dbg !189 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !193, metadata !730), !dbg !1503
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !194, metadata !730), !dbg !1504
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !195, metadata !730), !dbg !1505
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !196, metadata !730), !dbg !1506
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !197, metadata !730), !dbg !1507
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !198, metadata !730), !dbg !1508
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !199, metadata !730), !dbg !1509
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !201, metadata !730), !dbg !1510
  %3 = and i32 %1, 1, !dbg !1511
  %4 = icmp ne i32 %3, 0, !dbg !1511
  br i1 %4, label %5, label %21, !dbg !1512

; <label>:5:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !205, metadata !730), !dbg !1513
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !206, metadata !730), !dbg !1514
  %6 = load i8, i8* %0, align 1, !dbg !1515, !tbaa !815
  %7 = zext i8 %6 to i32, !dbg !1515
  %8 = sub nsw i32 45, %7, !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !208, metadata !730), !dbg !1514
  %9 = icmp eq i32 %8, 0, !dbg !1517
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  br i1 %9, label %11, label %15, !dbg !1520

; <label>:11:                                     ; preds = %5
  %12 = load i8, i8* %10, align 1, !dbg !1522, !tbaa !815
  %13 = zext i8 %12 to i32, !dbg !1522
  %14 = sub nsw i32 0, %13, !dbg !1522
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !208, metadata !730), !dbg !1514
  br label %15, !dbg !1525

; <label>:15:                                     ; preds = %5, %11
  %16 = phi i32 [ %14, %11 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !208, metadata !730), !dbg !1514
  %17 = icmp eq i32 %16, 0, !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !196, metadata !730), !dbg !1506
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !197, metadata !730), !dbg !1507
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !199, metadata !730), !dbg !1509
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !193, metadata !730), !dbg !1503
  %18 = zext i1 %17 to i64, !dbg !1530
  %19 = zext i1 %17 to i8, !dbg !1530
  %20 = select i1 %17, i8* %10, i8* %0, !dbg !1530
  br label %21, !dbg !1530

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
  br label %35, !dbg !1506

; <label>:35:                                     ; preds = %26, %241
  %36 = phi i64 [ %230, %241 ], [ %27, %26 ]
  %37 = phi i1 [ true, %241 ], [ false, %26 ]
  %38 = phi i8 [ %220, %241 ], [ %29, %26 ]
  %39 = phi i8 [ %221, %241 ], [ %30, %26 ]
  %40 = phi i8* [ %242, %241 ], [ %32, %26 ]
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !196, metadata !730), !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !193, metadata !730), !dbg !1503
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !195, metadata !730), !dbg !1505
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !197, metadata !730), !dbg !1507
  tail call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !198, metadata !730), !dbg !1508
  tail call void @llvm.dbg.value(metadata i8 %28, i64 0, metadata !199, metadata !730), !dbg !1509
  %41 = load i8, i8* %40, align 1, !dbg !1532, !tbaa !815
  switch i8 %41, label %67 [
    i8 45, label %42
    i8 44, label %77
  ], !dbg !1533

; <label>:42:                                     ; preds = %35
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !201, metadata !730), !dbg !1510
  br i1 %34, label %48, label %43, !dbg !1534

; <label>:43:                                     ; preds = %42
  %44 = and i32 %1, 4, !dbg !1536
  %45 = icmp ne i32 %44, 0, !dbg !1536
  %46 = select i1 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.6, i64 0, i64 0), !dbg !1536
  %47 = tail call i8* @dcgettext(i8* null, i8* %46, i32 5) #11, !dbg !1540
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %47) #11, !dbg !1542
  tail call void @usage(i32 1) #14, !dbg !1544
  unreachable, !dbg !1542

; <label>:48:                                     ; preds = %42
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !199, metadata !730), !dbg !1509
  %49 = and i8 %39, 1, !dbg !1546
  %50 = icmp ne i8 %49, 0, !dbg !1546
  %51 = xor i1 %50, true, !dbg !1548
  %52 = icmp ne i64 %36, 0, !dbg !1549
  %53 = or i1 %52, %51, !dbg !1548
  br i1 %53, label %59, label %54, !dbg !1548

; <label>:54:                                     ; preds = %48
  %55 = and i32 %1, 4, !dbg !1551
  %56 = icmp ne i32 %55, 0, !dbg !1551
  %57 = select i1 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.8, i64 0, i64 0), !dbg !1551
  %58 = tail call i8* @dcgettext(i8* null, i8* %57, i32 5) #11, !dbg !1554
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58) #11, !dbg !1556
  tail call void @usage(i32 1) #14, !dbg !1558
  unreachable, !dbg !1556

; <label>:59:                                     ; preds = %48
  %60 = select i1 %50, i64 %36, i64 1, !dbg !1560
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !195, metadata !730), !dbg !1505
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !196, metadata !730), !dbg !1506
  br label %61, !dbg !1561

; <label>:61:                                     ; preds = %199, %59
  %62 = phi i8 [ 1, %59 ], [ %204, %199 ]
  %63 = phi i8 [ %38, %59 ], [ 0, %199 ]
  %64 = phi i8 [ %39, %59 ], [ 0, %199 ]
  %65 = phi i64 [ %60, %59 ], [ %205, %199 ]
  %66 = getelementptr inbounds i8, i8* %40, i64 1
  br label %26, !llvm.loop !1562

; <label>:67:                                     ; preds = %35
  %68 = tail call i16** @__ctype_b_loc() #1, !dbg !1565
  %69 = load i16*, i16** %68, align 8, !dbg !1565, !tbaa !738
  %70 = zext i8 %41 to i64, !dbg !1565
  %71 = getelementptr inbounds i16, i16* %69, i64 %70, !dbg !1565
  %72 = load i16, i16* %71, align 2, !dbg !1565, !tbaa !1567
  %73 = and i16 %72, 1, !dbg !1565
  %74 = icmp ne i16 %73, 0, !dbg !1565
  %75 = icmp eq i8 %41, 0, !dbg !1568
  %76 = or i1 %75, %74, !dbg !1570
  br i1 %76, label %77, label %209, !dbg !1570

; <label>:77:                                     ; preds = %67, %35
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !201, metadata !730), !dbg !1510
  br i1 %34, label %159, label %78, !dbg !1571

; <label>:78:                                     ; preds = %77
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !199, metadata !730), !dbg !1509
  %79 = or i8 %39, %38, !dbg !1573
  %80 = and i8 %79, 1, !dbg !1573
  %81 = icmp ne i8 %80, 0, !dbg !1573
  %82 = or i1 %4, %81, !dbg !1573
  %83 = select i1 %81, i64 %31, i64 1, !dbg !1573
  br i1 %82, label %86, label %84, !dbg !1573

; <label>:84:                                     ; preds = %78
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.9, i64 0, i64 0), i32 5) #11, !dbg !1577
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85) #11, !dbg !1582
  tail call void @usage(i32 1) #14, !dbg !1584
  unreachable, !dbg !1577

; <label>:86:                                     ; preds = %78
  %87 = and i8 %38, 1, !dbg !1586
  %88 = icmp eq i8 %87, 0, !dbg !1586
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !195, metadata !730), !dbg !1505
  br i1 %88, label %89, label %122, !dbg !1588

; <label>:89:                                     ; preds = %86
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !1589, metadata !730) #11, !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1594, metadata !730) #11, !dbg !1599
  %90 = load i64, i64* @n_frp, align 8, !dbg !1600, !tbaa !879
  %91 = load i64, i64* @n_frp_allocated, align 8, !dbg !1602, !tbaa !879
  %92 = icmp eq i64 %90, %91, !dbg !1603
  br i1 %92, label %96, label %93, !dbg !1604

; <label>:93:                                     ; preds = %89
  %94 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !tbaa !738
  %95 = bitcast %struct.field_range_pair* %94 to i8*, !dbg !1604
  br label %115, !dbg !1604

; <label>:96:                                     ; preds = %89
  %97 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1605, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !171, metadata !730) #11, !dbg !1606
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !172, metadata !730) #11, !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !173, metadata !730) #11, !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !174, metadata !730) #11, !dbg !1610
  %98 = icmp eq i8* %97, null, !dbg !1611
  br i1 %98, label %99, label %102, !dbg !1613

; <label>:99:                                     ; preds = %96
  %100 = icmp eq i64 %90, 0, !dbg !1614
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1610
  %101 = select i1 %100, i64 8, i64 %90, !dbg !1617
  br label %109, !dbg !1617

; <label>:102:                                    ; preds = %96
  %103 = icmp ult i64 %90, 384307168202282325, !dbg !1618
  br i1 %103, label %105, label %104, !dbg !1621

; <label>:104:                                    ; preds = %102
  tail call void @xalloc_die() #14, !dbg !1622
  unreachable, !dbg !1622

; <label>:105:                                    ; preds = %102
  %106 = lshr i64 %90, 1, !dbg !1623
  %107 = add i64 %90, 1, !dbg !1624
  %108 = add i64 %107, %106, !dbg !1625
  tail call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !174, metadata !730) #11, !dbg !1610
  br label %109

; <label>:109:                                    ; preds = %105, %99
  %110 = phi i64 [ %108, %105 ], [ %101, %99 ]
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !174, metadata !730) #11, !dbg !1610
  store i64 %110, i64* @n_frp_allocated, align 8, !dbg !1626, !tbaa !879
  %111 = shl i64 %110, 4, !dbg !1627
  %112 = tail call i8* @xrealloc(i8* %97, i64 %111) #11, !dbg !1628
  store i8* %112, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1629, !tbaa !738
  %113 = bitcast i8* %112 to %struct.field_range_pair*, !dbg !1630
  %114 = load i64, i64* @n_frp, align 8, !tbaa !879
  br label %115, !dbg !1630

; <label>:115:                                    ; preds = %93, %109
  %116 = phi i8* [ %95, %93 ], [ %112, %109 ]
  %117 = phi %struct.field_range_pair* [ %94, %93 ], [ %113, %109 ], !dbg !1631
  %118 = phi i64 [ %90, %93 ], [ %114, %109 ], !dbg !1632
  %119 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %117, i64 %118, i32 0, !dbg !1633
  store i64 %83, i64* %119, align 8, !dbg !1634, !tbaa !1197
  %120 = load i64, i64* @n_frp, align 8, !dbg !1635, !tbaa !879
  %121 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %117, i64 %120, i32 1, !dbg !1636
  br label %199, !dbg !1637

; <label>:122:                                    ; preds = %86
  %123 = icmp ult i64 %36, %83, !dbg !1638
  br i1 %123, label %124, label %126, !dbg !1641

; <label>:124:                                    ; preds = %122
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.10, i64 0, i64 0), i32 5) #11, !dbg !1642
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %125) #11, !dbg !1645
  tail call void @usage(i32 1) #14, !dbg !1647
  unreachable, !dbg !1642

; <label>:126:                                    ; preds = %122
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !1589, metadata !730) #11, !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1594, metadata !730) #11, !dbg !1651
  %127 = load i64, i64* @n_frp, align 8, !dbg !1652, !tbaa !879
  %128 = load i64, i64* @n_frp_allocated, align 8, !dbg !1653, !tbaa !879
  %129 = icmp eq i64 %127, %128, !dbg !1654
  br i1 %129, label %133, label %130, !dbg !1655

; <label>:130:                                    ; preds = %126
  %131 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !tbaa !738
  %132 = bitcast %struct.field_range_pair* %131 to i8*, !dbg !1655
  br label %152, !dbg !1655

; <label>:133:                                    ; preds = %126
  %134 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1656, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !171, metadata !730) #11, !dbg !1657
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !172, metadata !730) #11, !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !173, metadata !730) #11, !dbg !1660
  tail call void @llvm.dbg.value(metadata i64 %128, i64 0, metadata !174, metadata !730) #11, !dbg !1661
  %135 = icmp eq i8* %134, null, !dbg !1662
  br i1 %135, label %136, label %139, !dbg !1663

; <label>:136:                                    ; preds = %133
  %137 = icmp eq i64 %127, 0, !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1661
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1661
  %138 = select i1 %137, i64 8, i64 %127, !dbg !1665
  br label %146, !dbg !1665

; <label>:139:                                    ; preds = %133
  %140 = icmp ult i64 %127, 384307168202282325, !dbg !1666
  br i1 %140, label %142, label %141, !dbg !1667

; <label>:141:                                    ; preds = %139
  tail call void @xalloc_die() #14, !dbg !1668
  unreachable, !dbg !1668

; <label>:142:                                    ; preds = %139
  %143 = lshr i64 %127, 1, !dbg !1669
  %144 = add i64 %127, 1, !dbg !1670
  %145 = add i64 %144, %143, !dbg !1671
  tail call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !174, metadata !730) #11, !dbg !1661
  br label %146

; <label>:146:                                    ; preds = %142, %136
  %147 = phi i64 [ %145, %142 ], [ %138, %136 ]
  tail call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !174, metadata !730) #11, !dbg !1661
  store i64 %147, i64* @n_frp_allocated, align 8, !dbg !1672, !tbaa !879
  %148 = shl i64 %147, 4, !dbg !1673
  %149 = tail call i8* @xrealloc(i8* %134, i64 %148) #11, !dbg !1674
  store i8* %149, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1675, !tbaa !738
  %150 = bitcast i8* %149 to %struct.field_range_pair*, !dbg !1676
  %151 = load i64, i64* @n_frp, align 8, !tbaa !879
  br label %152, !dbg !1676

; <label>:152:                                    ; preds = %130, %146
  %153 = phi i8* [ %132, %130 ], [ %149, %146 ]
  %154 = phi %struct.field_range_pair* [ %131, %130 ], [ %150, %146 ], !dbg !1677
  %155 = phi i64 [ %127, %130 ], [ %151, %146 ], !dbg !1678
  %156 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %154, i64 %155, i32 0, !dbg !1679
  store i64 %83, i64* %156, align 8, !dbg !1680, !tbaa !1197
  %157 = load i64, i64* @n_frp, align 8, !dbg !1681, !tbaa !879
  %158 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %154, i64 %157, i32 1, !dbg !1682
  br label %199

; <label>:159:                                    ; preds = %77
  %160 = icmp eq i64 %36, 0, !dbg !1683
  br i1 %160, label %161, label %166, !dbg !1686

; <label>:161:                                    ; preds = %159
  %162 = and i32 %1, 4, !dbg !1687
  %163 = icmp ne i32 %162, 0, !dbg !1687
  %164 = select i1 %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.8, i64 0, i64 0), !dbg !1687
  %165 = tail call i8* @dcgettext(i8* null, i8* %164, i32 5) #11, !dbg !1690
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %165) #11, !dbg !1692
  tail call void @usage(i32 1) #14, !dbg !1694
  unreachable, !dbg !1692

; <label>:166:                                    ; preds = %159
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1589, metadata !730) #11, !dbg !1696
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1594, metadata !730) #11, !dbg !1698
  %167 = load i64, i64* @n_frp, align 8, !dbg !1699, !tbaa !879
  %168 = load i64, i64* @n_frp_allocated, align 8, !dbg !1700, !tbaa !879
  %169 = icmp eq i64 %167, %168, !dbg !1701
  br i1 %169, label %173, label %170, !dbg !1702

; <label>:170:                                    ; preds = %166
  %171 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !tbaa !738
  %172 = bitcast %struct.field_range_pair* %171 to i8*, !dbg !1702
  br label %192, !dbg !1702

; <label>:173:                                    ; preds = %166
  %174 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1703, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !171, metadata !730) #11, !dbg !1704
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !172, metadata !730) #11, !dbg !1706
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !173, metadata !730) #11, !dbg !1707
  tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !174, metadata !730) #11, !dbg !1708
  %175 = icmp eq i8* %174, null, !dbg !1709
  br i1 %175, label %176, label %179, !dbg !1710

; <label>:176:                                    ; preds = %173
  %177 = icmp eq i64 %167, 0, !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1708
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1708
  %178 = select i1 %177, i64 8, i64 %167, !dbg !1712
  br label %186, !dbg !1712

; <label>:179:                                    ; preds = %173
  %180 = icmp ult i64 %167, 384307168202282325, !dbg !1713
  br i1 %180, label %182, label %181, !dbg !1714

; <label>:181:                                    ; preds = %179
  tail call void @xalloc_die() #14, !dbg !1715
  unreachable, !dbg !1715

; <label>:182:                                    ; preds = %179
  %183 = lshr i64 %167, 1, !dbg !1716
  %184 = add i64 %167, 1, !dbg !1717
  %185 = add i64 %184, %183, !dbg !1718
  tail call void @llvm.dbg.value(metadata i64 %185, i64 0, metadata !174, metadata !730) #11, !dbg !1708
  br label %186

; <label>:186:                                    ; preds = %182, %176
  %187 = phi i64 [ %185, %182 ], [ %178, %176 ]
  tail call void @llvm.dbg.value(metadata i64 %187, i64 0, metadata !174, metadata !730) #11, !dbg !1708
  store i64 %187, i64* @n_frp_allocated, align 8, !dbg !1719, !tbaa !879
  %188 = shl i64 %187, 4, !dbg !1720
  %189 = tail call i8* @xrealloc(i8* %174, i64 %188) #11, !dbg !1721
  store i8* %189, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1722, !tbaa !738
  %190 = bitcast i8* %189 to %struct.field_range_pair*, !dbg !1723
  %191 = load i64, i64* @n_frp, align 8, !tbaa !879
  br label %192, !dbg !1723

; <label>:192:                                    ; preds = %170, %186
  %193 = phi i8* [ %172, %170 ], [ %189, %186 ]
  %194 = phi %struct.field_range_pair* [ %171, %170 ], [ %190, %186 ], !dbg !1724
  %195 = phi i64 [ %167, %170 ], [ %191, %186 ], !dbg !1725
  %196 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %194, i64 %195, i32 0, !dbg !1726
  store i64 %36, i64* %196, align 8, !dbg !1727, !tbaa !1197
  %197 = load i64, i64* @n_frp, align 8, !dbg !1728, !tbaa !879
  %198 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %194, i64 %197, i32 1, !dbg !1729
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !196, metadata !730), !dbg !1506
  br label %199

; <label>:199:                                    ; preds = %115, %152, %192
  %200 = phi i8* [ %116, %115 ], [ %153, %152 ], [ %193, %192 ], !dbg !1730
  %201 = phi i64* [ %121, %115 ], [ %158, %152 ], [ %198, %192 ]
  %202 = phi i64 [ -1, %115 ], [ %36, %152 ], [ %36, %192 ]
  %203 = phi i64 [ %120, %115 ], [ %157, %152 ], [ %197, %192 ]
  %204 = phi i8 [ 0, %115 ], [ 0, %152 ], [ %28, %192 ]
  %205 = phi i64 [ %83, %115 ], [ %83, %152 ], [ %31, %192 ]
  store i64 %202, i64* %201, align 8, !dbg !1731, !tbaa !1181
  %206 = add i64 %203, 1, !dbg !1732
  store i64 %206, i64* @n_frp, align 8, !dbg !1732, !tbaa !879
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !196, metadata !730), !dbg !1506
  tail call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !195, metadata !730), !dbg !1505
  tail call void @llvm.dbg.value(metadata i8 %204, i64 0, metadata !199, metadata !730), !dbg !1509
  %207 = load i8, i8* %40, align 1, !dbg !1733, !tbaa !815
  %208 = icmp eq i8 %207, 0, !dbg !1735
  br i1 %208, label %249, label %61, !dbg !1736

; <label>:209:                                    ; preds = %67
  %210 = sext i8 %41 to i32, !dbg !1737
  %211 = add nsw i32 %210, -48, !dbg !1738
  %212 = icmp ult i32 %211, 10, !dbg !1738
  br i1 %212, label %213, label %243, !dbg !1739

; <label>:213:                                    ; preds = %209
  %214 = load i8*, i8** @set_fields.num_start, align 8, !dbg !1740
  %215 = icmp ne i8* %214, null, !dbg !1740
  %216 = and i1 %37, %215, !dbg !1743
  br i1 %216, label %218, label %217, !dbg !1743

; <label>:217:                                    ; preds = %213
  store i8* %40, i8** @set_fields.num_start, align 8, !dbg !1744, !tbaa !738
  br label %218, !dbg !1745

; <label>:218:                                    ; preds = %213, %217
  %219 = phi i8* [ %214, %213 ], [ %40, %217 ], !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !201, metadata !730), !dbg !1510
  %220 = select i1 %34, i8 %38, i8 1
  %221 = select i1 %34, i8 1, i8 %39
  tail call void @llvm.dbg.value(metadata i8 %221, i64 0, metadata !197, metadata !730), !dbg !1507
  tail call void @llvm.dbg.value(metadata i8 %220, i64 0, metadata !198, metadata !730), !dbg !1508
  %222 = icmp ugt i64 %36, 1844674407370955161, !dbg !1747
  br i1 %222, label %233, label %223, !dbg !1747

; <label>:223:                                    ; preds = %218
  %224 = mul i64 %36, 10, !dbg !1748
  %225 = load i8, i8* %40, align 1, !dbg !1748, !tbaa !815
  %226 = sext i8 %225 to i64, !dbg !1748
  %227 = add i64 %224, -48, !dbg !1748
  %228 = add i64 %227, %226, !dbg !1748
  %229 = icmp ult i64 %228, %36, !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %228, i64 0, metadata !196, metadata !730), !dbg !1506
  %230 = select i1 %229, i64 %36, i64 %228, !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !196, metadata !730), !dbg !1506
  %231 = icmp eq i64 %230, -1, !dbg !1750
  %232 = or i1 %229, %231, !dbg !1751
  br i1 %232, label %233, label %241, !dbg !1751

; <label>:233:                                    ; preds = %218, %223
  %234 = tail call i64 @strspn(i8* %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.11, i64 0, i64 0)) #11, !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !209, metadata !730), !dbg !1752
  %235 = tail call i8* @xstrndup(i8* %219, i64 %234) #11, !dbg !1753
  tail call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !217, metadata !730), !dbg !1754
  %236 = and i32 %1, 4, !dbg !1755
  %237 = icmp ne i32 %236, 0, !dbg !1755
  %238 = select i1 %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8.12, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.13, i64 0, i64 0), !dbg !1756
  %239 = tail call i8* @dcgettext(i8* null, i8* %238, i32 5) #11, !dbg !1757
  %240 = tail call i8* @quote(i8* %235) #11, !dbg !1758
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %239, i8* %240) #11, !dbg !1759
  tail call void @free(i8* %235) #11, !dbg !1761
  tail call void @usage(i32 1) #14, !dbg !1762
  unreachable, !dbg !1762

; <label>:241:                                    ; preds = %223
  %242 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1763
  tail call void @llvm.dbg.value(metadata i8* %242, i64 0, metadata !193, metadata !730), !dbg !1503
  br label %35, !llvm.loop !1562

; <label>:243:                                    ; preds = %209
  %244 = and i32 %1, 4, !dbg !1764
  %245 = icmp ne i32 %244, 0, !dbg !1764
  %246 = select i1 %245, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.14, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.15, i64 0, i64 0), !dbg !1766
  %247 = tail call i8* @dcgettext(i8* null, i8* %246, i32 5) #11, !dbg !1767
  %248 = tail call i8* @quote(i8* %40) #11, !dbg !1768
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %247, i8* %248) #11, !dbg !1769
  tail call void @usage(i32 1) #14, !dbg !1771
  unreachable, !dbg !1771

; <label>:249:                                    ; preds = %199
  %250 = icmp eq i64 %206, 0, !dbg !1772
  br i1 %250, label %251, label %256, !dbg !1774

; <label>:251:                                    ; preds = %249
  %252 = and i32 %1, 4, !dbg !1775
  %253 = icmp ne i32 %252, 0, !dbg !1775
  %254 = select i1 %253, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12.16, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13.17, i64 0, i64 0), !dbg !1775
  %255 = tail call i8* @dcgettext(i8* null, i8* %254, i32 5) #11, !dbg !1778
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %255) #11, !dbg !1780
  tail call void @usage(i32 1) #14, !dbg !1782
  unreachable, !dbg !1780

; <label>:256:                                    ; preds = %249
  tail call void @qsort(i8* %200, i64 %206, i64 16, i32 (i8*, i8*)* nonnull @compare_ranges) #11, !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !200, metadata !730), !dbg !1785
  %257 = load i64, i64* @n_frp, align 8, !dbg !1786, !tbaa !879
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !200, metadata !730), !dbg !1785
  %258 = icmp eq i64 %257, 0, !dbg !1788
  br i1 %258, label %302, label %259, !dbg !1789

; <label>:259:                                    ; preds = %256
  br label %262, !dbg !1789

; <label>:260:                                    ; preds = %275
  tail call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !200, metadata !730), !dbg !1785
  %261 = icmp ugt i64 %276, %272, !dbg !1788
  br i1 %261, label %262, label %301, !dbg !1789

; <label>:262:                                    ; preds = %259, %260
  %263 = phi i64 [ %276, %260 ], [ %257, %259 ]
  %264 = phi i64 [ %272, %260 ], [ 0, %259 ]
  br label %269, !dbg !1789

; <label>:265:                                    ; preds = %283
  br label %266, !dbg !1785

; <label>:266:                                    ; preds = %265, %269
  %267 = phi i64 [ %270, %269 ], [ %298, %265 ]
  tail call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !200, metadata !730), !dbg !1785
  %268 = icmp ult i64 %272, %267, !dbg !1788
  br i1 %268, label %269, label %300, !dbg !1789

; <label>:269:                                    ; preds = %262, %266
  %270 = phi i64 [ %263, %262 ], [ %267, %266 ], !dbg !1791
  %271 = phi i64 [ %264, %262 ], [ %272, %266 ]
  %272 = add i64 %271, 1, !dbg !1794
  tail call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !218, metadata !730), !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !218, metadata !730), !dbg !1795
  %273 = icmp ult i64 %272, %270, !dbg !1796
  br i1 %273, label %274, label %266, !dbg !1797, !llvm.loop !1799

; <label>:274:                                    ; preds = %269
  br label %275, !dbg !1802

; <label>:275:                                    ; preds = %274, %283
  %276 = phi i64 [ %298, %283 ], [ %270, %274 ], !dbg !1786
  %277 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1802, !tbaa !738
  %278 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272, i32 0, !dbg !1805
  %279 = load i64, i64* %278, align 8, !dbg !1805, !tbaa !1197
  %280 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %271, i32 1, !dbg !1806
  %281 = load i64, i64* %280, align 8, !dbg !1806, !tbaa !1181
  %282 = icmp ugt i64 %279, %281, !dbg !1807
  br i1 %282, label %260, label %283, !dbg !1808, !llvm.loop !1799

; <label>:283:                                    ; preds = %275
  %284 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272, i32 1, !dbg !1809
  %285 = load i64, i64* %284, align 8, !dbg !1809, !tbaa !1181
  %286 = icmp ugt i64 %285, %281, !dbg !1809
  %287 = select i1 %286, i64 %272, i64 %271, !dbg !1809
  %288 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %287, i32 1
  %289 = load i64, i64* %288, align 8, !tbaa !1181
  store i64 %289, i64* %280, align 8, !dbg !1811, !tbaa !1181
  %290 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272, !dbg !1813
  %291 = bitcast %struct.field_range_pair* %290 to i8*, !dbg !1814
  %292 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %290, i64 1, !dbg !1815
  %293 = bitcast %struct.field_range_pair* %292 to i8*, !dbg !1814
  %294 = sub i64 %276, %272, !dbg !1816
  %295 = shl i64 %294, 4, !dbg !1817
  %296 = add i64 %295, -16, !dbg !1817
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %291, i8* %293, i64 %296, i32 8, i1 false), !dbg !1814
  %297 = load i64, i64* @n_frp, align 8, !dbg !1818, !tbaa !879
  %298 = add i64 %297, -1, !dbg !1818
  store i64 %298, i64* @n_frp, align 8, !dbg !1818, !tbaa !879
  tail call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !218, metadata !730), !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !218, metadata !730), !dbg !1795
  %299 = icmp ult i64 %272, %298, !dbg !1796
  br i1 %299, label %275, label %265, !dbg !1797, !llvm.loop !1819

; <label>:300:                                    ; preds = %266
  br label %302, !dbg !1822

; <label>:301:                                    ; preds = %260
  br label %302, !dbg !1822

; <label>:302:                                    ; preds = %301, %300, %256
  %303 = phi i64 [ 0, %256 ], [ %267, %300 ], [ %276, %301 ]
  %304 = and i32 %1, 2, !dbg !1822
  %305 = icmp eq i32 %304, 0, !dbg !1822
  br i1 %305, label %418, label %306, !dbg !1824

; <label>:306:                                    ; preds = %302
  %307 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1825, !tbaa !738
  tail call void @llvm.dbg.value(metadata %struct.field_range_pair* %307, i64 0, metadata !1828, metadata !730) #11, !dbg !1832
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1829, metadata !730) #11, !dbg !1833
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !1834, !tbaa !738
  store i64 0, i64* @n_frp, align 8, !dbg !1835, !tbaa !879
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1836, !tbaa !879
  %308 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 0, i32 0, !dbg !1837
  %309 = load i64, i64* %308, align 8, !dbg !1837, !tbaa !1197
  %310 = icmp ugt i64 %309, 1, !dbg !1839
  br i1 %310, label %311, label %320, !dbg !1840

; <label>:311:                                    ; preds = %306
  %312 = add i64 %309, -1, !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1589, metadata !730) #11, !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1594, metadata !730) #11, !dbg !1844
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !171, metadata !730) #11, !dbg !1845
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !172, metadata !730) #11, !dbg !1847
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !173, metadata !730) #11, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !174, metadata !730) #11, !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1849
  store i64 8, i64* @n_frp_allocated, align 8, !dbg !1850, !tbaa !879
  %313 = tail call i8* @xrealloc(i8* null, i64 128) #11, !dbg !1851
  store i8* %313, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1852, !tbaa !738
  %314 = bitcast i8* %313 to %struct.field_range_pair*, !dbg !1853
  %315 = load i64, i64* @n_frp, align 8, !tbaa !879
  %316 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %314, i64 %315, i32 0, !dbg !1854
  store i64 1, i64* %316, align 8, !dbg !1855, !tbaa !1197
  %317 = load i64, i64* @n_frp, align 8, !dbg !1856, !tbaa !879
  %318 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %314, i64 %317, i32 1, !dbg !1857
  store i64 %312, i64* %318, align 8, !dbg !1858, !tbaa !1181
  %319 = add i64 %317, 1, !dbg !1859
  store i64 %319, i64* @n_frp, align 8, !dbg !1859, !tbaa !879
  br label %320, !dbg !1860

; <label>:320:                                    ; preds = %311, %306
  %321 = phi %struct.field_range_pair* [ %314, %311 ], [ null, %306 ]
  %322 = phi i8* [ %313, %311 ], [ null, %306 ]
  %323 = phi i64 [ %319, %311 ], [ 0, %306 ]
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1830, metadata !730) #11, !dbg !1861
  %324 = icmp ugt i64 %303, 1, !dbg !1862
  br i1 %324, label %325, label %378, !dbg !1866

; <label>:325:                                    ; preds = %320
  br label %326, !dbg !1868

; <label>:326:                                    ; preds = %325, %370
  %327 = phi %struct.field_range_pair* [ %371, %370 ], [ %321, %325 ]
  %328 = phi i8* [ %372, %370 ], [ %322, %325 ], !dbg !1871
  %329 = phi %struct.field_range_pair* [ %373, %370 ], [ %321, %325 ]
  %330 = phi i64 [ %374, %370 ], [ %323, %325 ], !dbg !1873
  %331 = phi i64 [ %375, %370 ], [ 1, %325 ]
  %332 = add i64 %331, -1, !dbg !1868
  %333 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %332, i32 1, !dbg !1874
  %334 = load i64, i64* %333, align 8, !dbg !1874, !tbaa !1181
  %335 = add i64 %334, 1, !dbg !1875
  %336 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %331, i32 0, !dbg !1876
  %337 = load i64, i64* %336, align 8, !dbg !1876, !tbaa !1197
  %338 = icmp eq i64 %335, %337, !dbg !1877
  br i1 %338, label %370, label %339, !dbg !1878

; <label>:339:                                    ; preds = %326
  %340 = add i64 %337, -1, !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %335, i64 0, metadata !1589, metadata !730) #11, !dbg !1880
  tail call void @llvm.dbg.value(metadata i64 %340, i64 0, metadata !1594, metadata !730) #11, !dbg !1881
  %341 = load i64, i64* @n_frp_allocated, align 8, !dbg !1882, !tbaa !879
  %342 = icmp eq i64 %330, %341, !dbg !1883
  br i1 %342, label %343, label %361, !dbg !1884

; <label>:343:                                    ; preds = %339
  tail call void @llvm.dbg.value(metadata i8* %328, i64 0, metadata !171, metadata !730) #11, !dbg !1885
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !172, metadata !730) #11, !dbg !1887
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !173, metadata !730) #11, !dbg !1888
  tail call void @llvm.dbg.value(metadata i64 %341, i64 0, metadata !174, metadata !730) #11, !dbg !1889
  %344 = icmp eq i8* %328, null, !dbg !1890
  br i1 %344, label %345, label %348, !dbg !1891

; <label>:345:                                    ; preds = %343
  %346 = icmp eq i64 %330, 0, !dbg !1892
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1889
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1889
  %347 = select i1 %346, i64 8, i64 %330, !dbg !1893
  br label %355, !dbg !1893

; <label>:348:                                    ; preds = %343
  %349 = icmp ult i64 %330, 384307168202282325, !dbg !1894
  br i1 %349, label %351, label %350, !dbg !1895

; <label>:350:                                    ; preds = %348
  tail call void @xalloc_die() #14, !dbg !1896
  unreachable, !dbg !1896

; <label>:351:                                    ; preds = %348
  %352 = lshr i64 %330, 1, !dbg !1897
  %353 = add i64 %330, 1, !dbg !1898
  %354 = add i64 %353, %352, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %354, i64 0, metadata !174, metadata !730) #11, !dbg !1889
  br label %355

; <label>:355:                                    ; preds = %351, %345
  %356 = phi i64 [ %354, %351 ], [ %347, %345 ]
  tail call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !174, metadata !730) #11, !dbg !1889
  store i64 %356, i64* @n_frp_allocated, align 8, !dbg !1900, !tbaa !879
  %357 = shl i64 %356, 4, !dbg !1901
  %358 = tail call i8* @xrealloc(i8* %328, i64 %357) #11, !dbg !1902
  store i8* %358, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1903, !tbaa !738
  %359 = bitcast i8* %358 to %struct.field_range_pair*, !dbg !1904
  %360 = load i64, i64* @n_frp, align 8, !tbaa !879
  br label %361, !dbg !1904

; <label>:361:                                    ; preds = %355, %339
  %362 = phi %struct.field_range_pair* [ %359, %355 ], [ %327, %339 ]
  %363 = phi i8* [ %358, %355 ], [ %328, %339 ]
  %364 = phi %struct.field_range_pair* [ %359, %355 ], [ %329, %339 ]
  %365 = phi i64 [ %360, %355 ], [ %330, %339 ], !dbg !1905
  %366 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %364, i64 %365, i32 0, !dbg !1906
  store i64 %335, i64* %366, align 8, !dbg !1907, !tbaa !1197
  %367 = load i64, i64* @n_frp, align 8, !dbg !1908, !tbaa !879
  %368 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %364, i64 %367, i32 1, !dbg !1909
  store i64 %340, i64* %368, align 8, !dbg !1910, !tbaa !1181
  %369 = add i64 %367, 1, !dbg !1911
  store i64 %369, i64* @n_frp, align 8, !dbg !1911, !tbaa !879
  br label %370, !dbg !1912

; <label>:370:                                    ; preds = %361, %326
  %371 = phi %struct.field_range_pair* [ %327, %326 ], [ %362, %361 ]
  %372 = phi i8* [ %328, %326 ], [ %363, %361 ]
  %373 = phi %struct.field_range_pair* [ %329, %326 ], [ %364, %361 ]
  %374 = phi i64 [ %330, %326 ], [ %369, %361 ]
  %375 = add nuw i64 %331, 1, !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1830, metadata !730) #11, !dbg !1861
  tail call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1830, metadata !730) #11, !dbg !1861
  %376 = icmp ult i64 %375, %303, !dbg !1862
  br i1 %376, label %326, label %377, !dbg !1866, !llvm.loop !1915

; <label>:377:                                    ; preds = %370
  br label %378, !dbg !1918

; <label>:378:                                    ; preds = %377, %320
  %379 = phi i8* [ %322, %320 ], [ %372, %377 ], !dbg !1920
  %380 = phi %struct.field_range_pair* [ %321, %320 ], [ %371, %377 ]
  %381 = phi i64 [ %323, %320 ], [ %374, %377 ], !dbg !1922
  %382 = add i64 %303, -1, !dbg !1918
  %383 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %382, i32 1, !dbg !1923
  %384 = load i64, i64* %383, align 8, !dbg !1923, !tbaa !1181
  %385 = icmp eq i64 %384, -1, !dbg !1924
  br i1 %385, label %415, label %386, !dbg !1925

; <label>:386:                                    ; preds = %378
  %387 = add i64 %384, 1, !dbg !1926
  tail call void @llvm.dbg.value(metadata i64 %387, i64 0, metadata !1589, metadata !730) #11, !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1594, metadata !730) #11, !dbg !1928
  %388 = load i64, i64* @n_frp_allocated, align 8, !dbg !1929, !tbaa !879
  %389 = icmp eq i64 %381, %388, !dbg !1930
  br i1 %389, label %390, label %408, !dbg !1931

; <label>:390:                                    ; preds = %386
  tail call void @llvm.dbg.value(metadata i8* %379, i64 0, metadata !171, metadata !730) #11, !dbg !1932
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !172, metadata !730) #11, !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !173, metadata !730) #11, !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 %388, i64 0, metadata !174, metadata !730) #11, !dbg !1936
  %391 = icmp eq i8* %379, null, !dbg !1937
  br i1 %391, label %392, label %395, !dbg !1938

; <label>:392:                                    ; preds = %390
  %393 = icmp eq i64 %381, 0, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1936
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !174, metadata !730) #11, !dbg !1936
  %394 = select i1 %393, i64 8, i64 %381, !dbg !1940
  br label %402, !dbg !1940

; <label>:395:                                    ; preds = %390
  %396 = icmp ult i64 %381, 384307168202282325, !dbg !1941
  br i1 %396, label %398, label %397, !dbg !1942

; <label>:397:                                    ; preds = %395
  tail call void @xalloc_die() #14, !dbg !1943
  unreachable, !dbg !1943

; <label>:398:                                    ; preds = %395
  %399 = lshr i64 %381, 1, !dbg !1944
  %400 = add i64 %381, 1, !dbg !1945
  %401 = add i64 %400, %399, !dbg !1946
  tail call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !174, metadata !730) #11, !dbg !1936
  br label %402

; <label>:402:                                    ; preds = %398, %392
  %403 = phi i64 [ %401, %398 ], [ %394, %392 ]
  tail call void @llvm.dbg.value(metadata i64 %403, i64 0, metadata !174, metadata !730) #11, !dbg !1936
  store i64 %403, i64* @n_frp_allocated, align 8, !dbg !1947, !tbaa !879
  %404 = shl i64 %403, 4, !dbg !1948
  %405 = tail call i8* @xrealloc(i8* %379, i64 %404) #11, !dbg !1949
  store i8* %405, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1950, !tbaa !738
  %406 = bitcast i8* %405 to %struct.field_range_pair*, !dbg !1951
  %407 = load i64, i64* @n_frp, align 8, !tbaa !879
  br label %408, !dbg !1951

; <label>:408:                                    ; preds = %402, %386
  %409 = phi %struct.field_range_pair* [ %406, %402 ], [ %380, %386 ], !dbg !1952
  %410 = phi i64 [ %407, %402 ], [ %381, %386 ], !dbg !1953
  %411 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %410, i32 0, !dbg !1954
  store i64 %387, i64* %411, align 8, !dbg !1955, !tbaa !1197
  %412 = load i64, i64* @n_frp, align 8, !dbg !1956, !tbaa !879
  %413 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %412, i32 1, !dbg !1957
  store i64 -1, i64* %413, align 8, !dbg !1958, !tbaa !1181
  %414 = add i64 %412, 1, !dbg !1959
  store i64 %414, i64* @n_frp, align 8, !dbg !1959, !tbaa !879
  br label %415, !dbg !1960

; <label>:415:                                    ; preds = %378, %408
  %416 = bitcast %struct.field_range_pair* %307 to i8*, !dbg !1961
  tail call void @free(i8* %416) #11, !dbg !1962
  %417 = load i64, i64* @n_frp, align 8, !tbaa !879
  br label %418, !dbg !1963

; <label>:418:                                    ; preds = %302, %415
  %419 = phi i64 [ %303, %302 ], [ %417, %415 ], !dbg !1964
  %420 = add i64 %419, 1, !dbg !1964
  store i64 %420, i64* @n_frp, align 8, !dbg !1964, !tbaa !879
  %421 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1965, !tbaa !738
  %422 = shl i64 %420, 4, !dbg !1966
  %423 = tail call i8* @xrealloc(i8* %421, i64 %422) #11, !dbg !1967
  %424 = bitcast i8* %423 to %struct.field_range_pair*, !dbg !1967
  store i8* %423, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1968, !tbaa !738
  %425 = load i64, i64* @n_frp, align 8, !dbg !1969, !tbaa !879
  %426 = add i64 %425, -1, !dbg !1970
  %427 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %424, i64 %426, i32 0, !dbg !1971
  %428 = bitcast i64* %427 to i8*, !dbg !1972
  call void @llvm.memset.p0i8.i64(i8* %428, i8 -1, i64 16, i32 8, i1 false), !dbg !1973
  ret void, !dbg !1972
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @compare_ranges(i8* nocapture readonly, i8* nocapture readonly) #8 !dbg !1974 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1978, metadata !730), !dbg !1982
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1979, metadata !730), !dbg !1983
  %3 = bitcast i8* %0 to i64*, !dbg !1984
  %4 = load i64, i64* %3, align 8, !dbg !1984, !tbaa !1197
  %5 = trunc i64 %4 to i32, !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1980, metadata !730), !dbg !1986
  %6 = bitcast i8* %1 to i64*, !dbg !1987
  %7 = load i64, i64* %6, align 8, !dbg !1987, !tbaa !1197
  %8 = trunc i64 %7 to i32, !dbg !1988
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1981, metadata !730), !dbg !1989
  %9 = icmp slt i32 %5, %8, !dbg !1990
  %10 = icmp sgt i32 %5, %8, !dbg !1991
  %11 = zext i1 %10 to i32, !dbg !1991
  %12 = select i1 %9, i32 -1, i32 %11, !dbg !1993
  ret i32 %12, !dbg !1994
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define void @reset_fields() local_unnamed_addr #6 !dbg !1996 {
  store i64 0, i64* @n_frp, align 8, !dbg !1997, !tbaa !879
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1998, !tbaa !879
  %1 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1999, !tbaa !738
  tail call void @free(i8* %1) #11, !dbg !2000
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !2001, !tbaa !738
  ret void, !dbg !2002
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2003 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2005, metadata !730), !dbg !2006
  store i8* %0, i8** @file_name, align 8, !dbg !2007, !tbaa !738
  ret void, !dbg !2008
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2009 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2013, metadata !2014), !dbg !2015
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2016, !tbaa !2017
  ret void, !dbg !2019
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !2020 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2025, !tbaa !738
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !2026
  %3 = icmp eq i32 %2, 0, !dbg !2027
  br i1 %3, label %21, label %4, !dbg !2028

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2029, !tbaa !2017, !range !2031
  %6 = icmp eq i8 %5, 0, !dbg !2029
  %7 = tail call i32* @__errno_location() #1, !dbg !2032
  br i1 %6, label %11, label %8, !dbg !2034

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !2035, !tbaa !947
  %10 = icmp eq i32 %9, 32, !dbg !2037
  br i1 %10, label %21, label %11, !dbg !2038

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !2040
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2022, metadata !730), !dbg !2041
  %13 = load i8*, i8** @file_name, align 8, !dbg !2042, !tbaa !738
  %14 = icmp eq i8* %13, null, !dbg !2042
  %15 = load i32, i32* %7, align 4, !tbaa !947
  br i1 %14, label %18, label %16, !dbg !2043

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !2044
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !2046
  br label %19, !dbg !2048

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #11, !dbg !2049
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2050, !tbaa !947
  tail call void @_exit(i32 %20) #14, !dbg !2051
  unreachable, !dbg !2051

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2052, !tbaa !738
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !2054
  %24 = icmp eq i32 %23, 0, !dbg !2055
  br i1 %24, label %27, label %25, !dbg !2056

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2057, !tbaa !947
  tail call void @_exit(i32 %26) #14, !dbg !2058
  unreachable, !dbg !2058

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2059
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2060 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2067, metadata !730), !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2068, metadata !730), !dbg !2074
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2069, metadata !730), !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2070, metadata !730), !dbg !2076
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !2077
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2071, metadata !730), !dbg !2077
  ret void, !dbg !2078
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2079 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2123, metadata !730), !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2124, metadata !730), !dbg !2126
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2127
  br i1 %3, label %7, label %4, !dbg !2129

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2067, metadata !730) #11, !dbg !2131
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2068, metadata !730) #11, !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2069, metadata !730) #11, !dbg !2135
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2070, metadata !730) #11, !dbg !2136
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2071, metadata !730) #11, !dbg !2137
  br label %7, !dbg !2138

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2139
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @getndelim2(i8** nocapture, i64* nocapture, i64, i64, i32, i32, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !2140 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !2185, metadata !730), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2186, metadata !730), !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2187, metadata !730), !dbg !2219
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2188, metadata !730), !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2189, metadata !730), !dbg !2221
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2190, metadata !730), !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, i64 0, metadata !2191, metadata !730), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2194, metadata !730), !dbg !2224
  %9 = load i8*, i8** %0, align 8, !dbg !2225, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !2195, metadata !730), !dbg !2226
  %10 = load i64, i64* %1, align 8, !dbg !2227, !tbaa !879
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !2196, metadata !730), !dbg !2228
  %11 = icmp eq i8* %9, null, !dbg !2229
  br i1 %11, label %12, label %17, !dbg !2231

; <label>:12:                                     ; preds = %7
  %13 = icmp ult i64 %3, 64, !dbg !2232
  %14 = select i1 %13, i64 %3, i64 64, !dbg !2234
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2196, metadata !730), !dbg !2228
  %15 = tail call noalias i8* @malloc(i64 %14) #11, !dbg !2235
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2195, metadata !730), !dbg !2226
  %16 = icmp eq i8* %15, null, !dbg !2236
  br i1 %16, label %156, label %17, !dbg !2238

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ]
  %19 = phi i64 [ %10, %7 ], [ %14, %12 ]
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2196, metadata !730), !dbg !2228
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2195, metadata !730), !dbg !2226
  %20 = icmp ult i64 %19, %2, !dbg !2239
  br i1 %20, label %150, label %21, !dbg !2241

; <label>:21:                                     ; preds = %17
  %22 = sub i64 %19, %2, !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !2192, metadata !730), !dbg !2243
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !2193, metadata !730), !dbg !2244
  %23 = icmp ne i64 %22, 0, !dbg !2245
  %24 = icmp ult i64 %19, %3, !dbg !2247
  %25 = or i1 %24, %23, !dbg !2249
  br i1 %25, label %26, label %150, !dbg !2249

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %18, i64 %2, !dbg !2250
  %28 = icmp eq i32 %4, -1, !dbg !2251
  %29 = icmp eq i32 %5, -1, !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2190, metadata !730), !dbg !2222
  %30 = select i1 %29, i32 %4, i32 %5, !dbg !2255
  %31 = select i1 %28, i32 %5, i32 %30, !dbg !2256
  %32 = select i1 %28, i32 %5, i32 %4, !dbg !2256
  %33 = bitcast i64* %8 to i8*
  %34 = icmp eq i32 %32, -1
  %35 = xor i64 %2, -9223372036854775808
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 1
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 2
  br label %38, !dbg !2256, !llvm.loop !2257

; <label>:38:                                     ; preds = %26, %136
  %39 = phi i8* [ %129, %136 ], [ %27, %26 ]
  %40 = phi i8* [ %113, %136 ], [ %18, %26 ]
  %41 = phi i64 [ %114, %136 ], [ %19, %26 ]
  %42 = phi i8 [ %76, %136 ], [ 0, %26 ]
  %43 = phi i32 [ %77, %136 ], [ undef, %26 ]
  %44 = phi i64 [ %130, %136 ], [ %22, %26 ]
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2192, metadata !730), !dbg !2243
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2198, metadata !730), !dbg !2260
  call void @llvm.dbg.value(metadata i8 %42, i64 0, metadata !2197, metadata !730), !dbg !2261
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !2196, metadata !730), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !2193, metadata !730), !dbg !2244
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #11, !dbg !2262
  call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !2201, metadata !2263), !dbg !2264
  %45 = call i8* @freadptr(%struct._IO_FILE* %6, i64* nonnull %8) #11, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !2200, metadata !730), !dbg !2266
  %46 = icmp ne i8* %45, null, !dbg !2267
  br i1 %46, label %47, label %57, !dbg !2268

; <label>:47:                                     ; preds = %38
  %48 = load i64, i64* %8, align 8, !tbaa !879
  br i1 %34, label %74, label %49, !dbg !2269

; <label>:49:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !2201, metadata !730), !dbg !2264
  %50 = call i8* @memchr2(i8* nonnull %45, i32 %32, i32 %31, i64 %48) #13, !dbg !2270
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2202, metadata !730), !dbg !2271
  %51 = icmp eq i8* %50, null, !dbg !2272
  br i1 %51, label %74, label %52, !dbg !2274

; <label>:52:                                     ; preds = %49
  %53 = ptrtoint i8* %50 to i64, !dbg !2275
  %54 = ptrtoint i8* %45 to i64, !dbg !2275
  %55 = sub i64 1, %54, !dbg !2275
  %56 = add i64 %55, %53, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !2201, metadata !730), !dbg !2264
  store i64 %56, i64* %8, align 8, !dbg !2278, !tbaa !879
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2197, metadata !730), !dbg !2261
  br label %74, !dbg !2279

; <label>:57:                                     ; preds = %38
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, i64 0, metadata !2280, metadata !730) #11, !dbg !2285
  %58 = load i8*, i8** %36, align 8, !dbg !2288, !tbaa !1124
  %59 = load i8*, i8** %37, align 8, !dbg !2288, !tbaa !1127
  %60 = icmp ult i8* %58, %59, !dbg !2288
  br i1 %60, label %61, label %65, !dbg !2288, !prof !1128

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !2289
  store i8* %62, i8** %36, align 8, !dbg !2289, !tbaa !1124
  %63 = load i8, i8* %58, align 1, !dbg !2289, !tbaa !815
  %64 = zext i8 %63 to i32, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !2198, metadata !730), !dbg !2260
  br label %68, !dbg !2291

; <label>:65:                                     ; preds = %57
  %66 = call i32 @__uflow(%struct._IO_FILE* nonnull %6) #11, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !2198, metadata !730), !dbg !2260
  %67 = icmp eq i32 %66, -1, !dbg !2294
  br i1 %67, label %139, label %68, !dbg !2291

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i32 [ %64, %61 ], [ %66, %65 ]
  %70 = icmp eq i32 %69, %32, !dbg !2296
  %71 = icmp eq i32 %69, %31, !dbg !2298
  %72 = or i1 %70, %71, !dbg !2300
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2197, metadata !730), !dbg !2261
  %73 = select i1 %72, i8 1, i8 %42, !dbg !2300
  call void @llvm.dbg.value(metadata i8 %73, i64 0, metadata !2197, metadata !730), !dbg !2261
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2201, metadata !730), !dbg !2264
  store i64 1, i64* %8, align 8, !dbg !2301, !tbaa !879
  br label %74

; <label>:74:                                     ; preds = %47, %52, %49, %68
  %75 = phi i64 [ 1, %68 ], [ %56, %52 ], [ %48, %49 ], [ %48, %47 ], !dbg !2302
  %76 = phi i8 [ %73, %68 ], [ 1, %52 ], [ %42, %49 ], [ %42, %47 ]
  %77 = phi i32 [ %69, %68 ], [ %43, %52 ], [ %43, %49 ], [ %43, %47 ]
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !2198, metadata !730), !dbg !2260
  call void @llvm.dbg.value(metadata i8 %76, i64 0, metadata !2197, metadata !730), !dbg !2261
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2201, metadata !730), !dbg !2264
  %78 = add i64 %75, 1, !dbg !2303
  %79 = icmp ult i64 %44, %78, !dbg !2304
  %80 = icmp ult i64 %41, %3, !dbg !2305
  %81 = and i1 %80, %79, !dbg !2307
  br i1 %81, label %82, label %111, !dbg !2307

; <label>:82:                                     ; preds = %74
  %83 = icmp ult i64 %41, 64, !dbg !2308
  %84 = add i64 %41, 64, !dbg !2309
  %85 = shl i64 %41, 1, !dbg !2311
  %86 = select i1 %83, i64 %84, i64 %85, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !2207, metadata !730), !dbg !2314
  %87 = ptrtoint i8* %39 to i64, !dbg !2315
  %88 = ptrtoint i8* %40 to i64, !dbg !2315
  %89 = sub i64 %87, %88, !dbg !2315
  %90 = sub i64 %86, %89, !dbg !2317
  %91 = icmp ult i64 %90, %78, !dbg !2318
  %92 = add i64 %89, 1, !dbg !2319
  %93 = add i64 %92, %75, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !2207, metadata !730), !dbg !2314
  %94 = select i1 %91, i64 %93, i64 %86, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !2207, metadata !730), !dbg !2314
  %95 = icmp uge i64 %41, %94, !dbg !2322
  %96 = icmp ugt i64 %94, %3, !dbg !2324
  %97 = or i1 %95, %96, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2207, metadata !730), !dbg !2314
  %98 = select i1 %97, i64 %3, i64 %94, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2207, metadata !730), !dbg !2314
  %99 = sub i64 %98, %2, !dbg !2327
  %100 = icmp slt i64 %99, 0, !dbg !2328
  br i1 %100, label %101, label %104, !dbg !2329

; <label>:101:                                    ; preds = %82
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2211, metadata !730), !dbg !2330
  %102 = icmp eq i64 %41, %35, !dbg !2331
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %101
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2192, metadata !730), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !2196, metadata !730), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !2193, metadata !730), !dbg !2244
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11, !dbg !2333
  br label %150

; <label>:104:                                    ; preds = %101, %82
  %105 = phi i64 [ %35, %101 ], [ %98, %82 ]
  call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !2207, metadata !730), !dbg !2314
  %106 = sub i64 %105, %89, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !2192, metadata !730), !dbg !2243
  %107 = call i8* @realloc(i8* %40, i64 %105) #11, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !2210, metadata !730), !dbg !2336
  %108 = icmp eq i8* %107, null, !dbg !2337
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !2196, metadata !730), !dbg !2228
  %109 = getelementptr inbounds i8, i8* %107, i64 %89, !dbg !2339
  call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !2193, metadata !730), !dbg !2244
  br i1 %108, label %110, label %111

; <label>:110:                                    ; preds = %104
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2192, metadata !730), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !2196, metadata !730), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !2193, metadata !730), !dbg !2244
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11, !dbg !2333
  br label %150

; <label>:111:                                    ; preds = %104, %74
  %112 = phi i8* [ %39, %74 ], [ %109, %104 ]
  %113 = phi i8* [ %40, %74 ], [ %107, %104 ]
  %114 = phi i64 [ %41, %74 ], [ %105, %104 ]
  %115 = phi i64 [ %44, %74 ], [ %106, %104 ]
  call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !2192, metadata !730), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !2196, metadata !730), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !2193, metadata !730), !dbg !2244
  %116 = icmp ugt i64 %115, 1, !dbg !2340
  br i1 %116, label %117, label %128, !dbg !2341

; <label>:117:                                    ; preds = %111
  %118 = add i64 %115, -1, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !2214, metadata !730), !dbg !2343
  %119 = load i64, i64* %8, align 8, !dbg !2344, !tbaa !879
  call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !2201, metadata !730), !dbg !2264
  %120 = icmp ult i64 %119, %118, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !2214, metadata !730), !dbg !2343
  %121 = select i1 %120, i64 %119, i64 %118, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !2214, metadata !730), !dbg !2343
  br i1 %46, label %122, label %123, !dbg !2348

; <label>:122:                                    ; preds = %117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* nonnull %45, i64 %121, i32 1, i1 false), !dbg !2349
  br label %125, !dbg !2349

; <label>:123:                                    ; preds = %117
  %124 = trunc i32 %77 to i8, !dbg !2351
  store i8 %124, i8* %112, align 1, !dbg !2352, !tbaa !815
  br label %125

; <label>:125:                                    ; preds = %123, %122
  %126 = getelementptr inbounds i8, i8* %112, i64 %121, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !2193, metadata !730), !dbg !2244
  %127 = sub i64 %115, %121, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2192, metadata !730), !dbg !2243
  br label %128, !dbg !2355

; <label>:128:                                    ; preds = %125, %111
  %129 = phi i8* [ %126, %125 ], [ %112, %111 ]
  %130 = phi i64 [ %127, %125 ], [ %115, %111 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2192, metadata !730), !dbg !2243
  call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !2193, metadata !730), !dbg !2244
  br i1 %46, label %131, label %136, !dbg !2356

; <label>:131:                                    ; preds = %128
  %132 = load i64, i64* %8, align 8, !dbg !2358, !tbaa !879
  call void @llvm.dbg.value(metadata i64 %132, i64 0, metadata !2201, metadata !730), !dbg !2264
  %133 = call i32 @freadseek(%struct._IO_FILE* %6, i64 %132) #11, !dbg !2360
  %134 = icmp eq i32 %133, 0, !dbg !2360
  br i1 %134, label %136, label %135, !dbg !2361

; <label>:135:                                    ; preds = %131
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2192, metadata !730), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !2196, metadata !730), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !2193, metadata !730), !dbg !2244
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11, !dbg !2333
  br label %150

; <label>:136:                                    ; preds = %128, %131
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2192, metadata !730), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !2196, metadata !730), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !2193, metadata !730), !dbg !2244
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11, !dbg !2333
  %137 = and i8 %76, 1, !dbg !2363
  %138 = icmp eq i8 %137, 0, !dbg !2364
  br i1 %138, label %38, label %141, !dbg !2365, !llvm.loop !2257

; <label>:139:                                    ; preds = %65
  %140 = icmp eq i8* %39, %40, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2192, metadata !730), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !2196, metadata !730), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !2193, metadata !730), !dbg !2244
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #11, !dbg !2333
  br i1 %140, label %150, label %142

; <label>:141:                                    ; preds = %136
  br label %142, !dbg !2370

; <label>:142:                                    ; preds = %141, %139
  %143 = phi i64 [ %41, %139 ], [ %114, %141 ]
  %144 = phi i8* [ %40, %139 ], [ %113, %141 ]
  %145 = phi i8* [ %39, %139 ], [ %129, %141 ]
  store i8 0, i8* %145, align 1, !dbg !2370, !tbaa !815
  %146 = getelementptr inbounds i8, i8* %144, i64 %2, !dbg !2371
  %147 = ptrtoint i8* %145 to i64, !dbg !2372
  %148 = ptrtoint i8* %146 to i64, !dbg !2372
  %149 = sub i64 %147, %148, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !2194, metadata !730), !dbg !2224
  br label %150, !dbg !2373

; <label>:150:                                    ; preds = %139, %103, %110, %135, %21, %142, %17
  %151 = phi i64 [ -1, %17 ], [ -1, %139 ], [ %149, %142 ], [ -1, %21 ], [ -1, %135 ], [ -1, %110 ], [ -1, %103 ]
  %152 = phi i8* [ %18, %17 ], [ %40, %139 ], [ %144, %142 ], [ %18, %21 ], [ %113, %135 ], [ %40, %110 ], [ %40, %103 ]
  %153 = phi i64 [ %19, %17 ], [ %41, %139 ], [ %143, %142 ], [ %19, %21 ], [ %114, %135 ], [ %41, %110 ], [ %35, %103 ]
  call void @llvm.dbg.value(metadata i64 %153, i64 0, metadata !2196, metadata !730), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !2195, metadata !730), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !2194, metadata !730), !dbg !2224
  store i8* %152, i8** %0, align 8, !dbg !2374, !tbaa !738
  store i64 %153, i64* %1, align 8, !dbg !2375, !tbaa !879
  %154 = icmp ne i64 %151, 0, !dbg !2376
  %155 = select i1 %154, i64 %151, i64 -1, !dbg !2376
  br label %156, !dbg !2377

; <label>:156:                                    ; preds = %12, %150
  %157 = phi i64 [ %155, %150 ], [ -1, %12 ]
  ret i64 %157, !dbg !2379
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
define i8* @memchr2(i8*, i32, i32, i64) local_unnamed_addr #8 !dbg !2380 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2385, metadata !730), !dbg !2403
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2386, metadata !730), !dbg !2404
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2387, metadata !730), !dbg !2405
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2388, metadata !730), !dbg !2406
  %5 = and i32 %1, 255, !dbg !2407
  %6 = and i32 %2, 255, !dbg !2409
  %7 = icmp eq i32 %5, %6, !dbg !2410
  br i1 %7, label %15, label %8, !dbg !2411

; <label>:8:                                      ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2388, metadata !730), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2390, metadata !730), !dbg !2412
  %9 = ptrtoint i8* %0 to i64, !dbg !2413
  %10 = and i64 %9, 7, !dbg !2417
  %11 = icmp ne i64 %10, 0, !dbg !2418
  %12 = icmp ne i64 %3, 0, !dbg !2419
  %13 = and i1 %12, %11, !dbg !2419
  br i1 %13, label %14, label %34, !dbg !2420

; <label>:14:                                     ; preds = %8
  br label %17, !dbg !2422

; <label>:15:                                     ; preds = %4
  %16 = tail call i8* @memchr(i8* %0, i32 %5, i64 %3) #13, !dbg !2423
  br label %97, !dbg !2424

; <label>:17:                                     ; preds = %14, %25
  %18 = phi i64 [ %27, %25 ], [ %3, %14 ]
  %19 = phi i8* [ %26, %25 ], [ %0, %14 ]
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2389, metadata !730), !dbg !2422
  %20 = load i8, i8* %19, align 1, !dbg !2425, !tbaa !815
  %21 = zext i8 %20 to i32, !dbg !2425
  %22 = icmp eq i32 %21, %5, !dbg !2428
  %23 = icmp eq i32 %21, %6, !dbg !2429
  %24 = or i1 %22, %23, !dbg !2431
  br i1 %24, label %96, label %25, !dbg !2431

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2432
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !2390, metadata !730), !dbg !2412
  %27 = add i64 %18, -1, !dbg !2433
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !2388, metadata !730), !dbg !2406
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !2388, metadata !730), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !2390, metadata !730), !dbg !2412
  %28 = ptrtoint i8* %26 to i64, !dbg !2413
  %29 = and i64 %28, 7, !dbg !2417
  %30 = icmp ne i64 %29, 0, !dbg !2418
  %31 = icmp ne i64 %27, 0, !dbg !2419
  %32 = and i1 %31, %30, !dbg !2419
  br i1 %32, label %17, label %33, !dbg !2420, !llvm.loop !2434

; <label>:33:                                     ; preds = %25
  br label %34, !dbg !2437

; <label>:34:                                     ; preds = %33, %8
  %35 = phi i8* [ %0, %8 ], [ %26, %33 ]
  %36 = phi i64 [ %3, %8 ], [ %27, %33 ]
  %37 = bitcast i8* %35 to i64*, !dbg !2437
  tail call void @llvm.dbg.value(metadata i64* %37, i64 0, metadata !2391, metadata !730), !dbg !2438
  tail call void @llvm.dbg.value(metadata i64 16843009, i64 0, metadata !2395, metadata !730), !dbg !2439
  %38 = shl nuw nsw i32 %5, 8, !dbg !2440
  %39 = or i32 %38, %5, !dbg !2441
  %40 = shl nuw nsw i32 %6, 8, !dbg !2442
  %41 = or i32 %40, %6, !dbg !2443
  %42 = shl nuw i32 %39, 16, !dbg !2444
  %43 = or i32 %42, %39, !dbg !2445
  %44 = zext i32 %43 to i64, !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2396, metadata !730), !dbg !2446
  %45 = shl nuw i32 %41, 16, !dbg !2447
  %46 = or i32 %45, %41, !dbg !2448
  %47 = zext i32 %46 to i64, !dbg !2448
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !2397, metadata !730), !dbg !2449
  tail call void @llvm.dbg.value(metadata i64 72340172838076673, i64 0, metadata !2395, metadata !730), !dbg !2439
  %48 = shl nuw i64 %44, 32, !dbg !2450
  %49 = or i64 %48, %44, !dbg !2453
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2396, metadata !730), !dbg !2446
  %50 = shl nuw i64 %47, 32, !dbg !2454
  %51 = or i64 %50, %47, !dbg !2455
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2397, metadata !730), !dbg !2449
  %52 = icmp ugt i64 %36, 7, !dbg !2456
  br i1 %52, label %53, label %76, !dbg !2458

; <label>:53:                                     ; preds = %34
  br label %54, !dbg !2406

; <label>:54:                                     ; preds = %53, %54
  %55 = phi i64* [ %71, %54 ], [ %37, %53 ]
  %56 = phi i64 [ %72, %54 ], [ %36, %53 ]
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !2388, metadata !730), !dbg !2406
  tail call void @llvm.dbg.value(metadata i64* %55, i64 0, metadata !2391, metadata !730), !dbg !2438
  %57 = load i64, i64* %55, align 8, !dbg !2459, !tbaa !879
  %58 = xor i64 %57, %49, !dbg !2460
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !2400, metadata !730), !dbg !2461
  %59 = xor i64 %57, %51, !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !2402, metadata !730), !dbg !2463
  %60 = add i64 %58, -72340172838076673, !dbg !2464
  %61 = xor i64 %58, -9187201950435737472, !dbg !2466
  %62 = and i64 %60, %61, !dbg !2467
  %63 = add i64 %59, -72340172838076673, !dbg !2468
  %64 = xor i64 %59, -9187201950435737472, !dbg !2469
  %65 = and i64 %63, %64, !dbg !2470
  %66 = or i64 %62, %65, !dbg !2471
  %67 = and i64 %66, -9187201950435737472, !dbg !2472
  %68 = icmp eq i64 %67, 0, !dbg !2473
  %69 = getelementptr inbounds i64, i64* %55, i64 1, !dbg !2474
  tail call void @llvm.dbg.value(metadata i64* %69, i64 0, metadata !2391, metadata !730), !dbg !2438
  %70 = add i64 %56, -8, !dbg !2475
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !2388, metadata !730), !dbg !2406
  %71 = select i1 %68, i64* %69, i64* %55, !dbg !2476
  %72 = select i1 %68, i64 %70, i64 %56, !dbg !2476
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !2388, metadata !730), !dbg !2406
  tail call void @llvm.dbg.value(metadata i64* %71, i64 0, metadata !2391, metadata !730), !dbg !2438
  %73 = icmp ugt i64 %72, 7, !dbg !2456
  %74 = and i1 %68, %73
  br i1 %74, label %54, label %75, !llvm.loop !2477

; <label>:75:                                     ; preds = %54
  br label %76, !dbg !2406

; <label>:76:                                     ; preds = %75, %34
  %77 = phi i64* [ %37, %34 ], [ %71, %75 ]
  %78 = phi i64 [ %36, %34 ], [ %72, %75 ]
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !2388, metadata !730), !dbg !2406
  tail call void @llvm.dbg.value(metadata i64* %77, i64 0, metadata !2391, metadata !730), !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !2389, metadata !730), !dbg !2422
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !2388, metadata !730), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !2389, metadata !730), !dbg !2422
  %79 = icmp eq i64 %78, 0, !dbg !2480
  br i1 %79, label %97, label %80, !dbg !2484

; <label>:80:                                     ; preds = %76
  %81 = bitcast i64* %77 to i8*, !dbg !2486
  br label %82, !dbg !2487

; <label>:82:                                     ; preds = %80, %90
  %83 = phi i64 [ %91, %90 ], [ %78, %80 ]
  %84 = phi i8* [ %92, %90 ], [ %81, %80 ]
  %85 = load i8, i8* %84, align 1, !dbg !2487, !tbaa !815
  %86 = zext i8 %85 to i32, !dbg !2487
  %87 = icmp eq i32 %86, %5, !dbg !2490
  %88 = icmp eq i32 %86, %6, !dbg !2491
  %89 = or i1 %87, %88, !dbg !2493
  br i1 %89, label %94, label %90, !dbg !2493

; <label>:90:                                     ; preds = %82
  %91 = add i64 %83, -1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !2388, metadata !730), !dbg !2406
  %92 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !2496
  tail call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !2389, metadata !730), !dbg !2422
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !2388, metadata !730), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !2389, metadata !730), !dbg !2422
  %93 = icmp eq i64 %91, 0, !dbg !2480
  br i1 %93, label %94, label %82, !dbg !2484, !llvm.loop !2497

; <label>:94:                                     ; preds = %90, %82
  %95 = phi i8* [ %84, %82 ], [ null, %90 ]
  br label %97, !dbg !2500

; <label>:96:                                     ; preds = %17
  br label %97, !dbg !2500

; <label>:97:                                     ; preds = %96, %94, %76, %15
  %98 = phi i8* [ %16, %15 ], [ null, %76 ], [ %95, %94 ], [ %19, %96 ]
  ret i8* %98, !dbg !2500
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2501 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2503, metadata !730), !dbg !2506
  %2 = icmp eq i8* %0, null, !dbg !2507
  br i1 %2, label %3, label %6, !dbg !2509

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2510, !tbaa !738
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.58, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2512
  tail call void @abort() #14, !dbg !2513
  unreachable, !dbg !2513

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2514
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2504, metadata !730), !dbg !2515
  %8 = icmp ne i8* %7, null, !dbg !2516
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2517
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2519
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2505, metadata !730), !dbg !2520
  %11 = ptrtoint i8* %10 to i64, !dbg !2521
  %12 = ptrtoint i8* %0 to i64, !dbg !2521
  %13 = sub i64 %11, %12, !dbg !2521
  %14 = icmp sgt i64 %13, 6, !dbg !2523
  br i1 %14, label %15, label %24, !dbg !2524

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2525
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.59, i64 0, i64 0), i64 7) #13, !dbg !2525
  %18 = icmp eq i32 %17, 0, !dbg !2527
  br i1 %18, label %19, label %24, !dbg !2528

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2503, metadata !730), !dbg !2506
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i64 3) #13, !dbg !2529
  %21 = icmp eq i32 %20, 0, !dbg !2532
  br i1 %21, label %22, label %24, !dbg !2533

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2534
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2503, metadata !730), !dbg !2506
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2536, !tbaa !738
  br label %24, !dbg !2537

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2503, metadata !730), !dbg !2506
  store i8* %25, i8** @program_name, align 8, !dbg !2538, !tbaa !738
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2539, !tbaa !738
  ret void, !dbg !2540
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2541 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2546, metadata !730), !dbg !2549
  %2 = tail call i32* @__errno_location() #1, !dbg !2550
  %3 = load i32, i32* %2, align 4, !dbg !2550, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2547, metadata !730), !dbg !2551
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2552
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2553
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2553
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2555
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2555
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2548, metadata !730), !dbg !2556
  store i32 %3, i32* %2, align 4, !dbg !2557, !tbaa !947
  ret %struct.quoting_options* %8, !dbg !2558
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #8 !dbg !2559 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2565, metadata !730), !dbg !2566
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2567
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2567
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2568
  %5 = load i32, i32* %4, align 8, !dbg !2568, !tbaa !2570
  ret i32 %5, !dbg !2572
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2573 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2577, metadata !730), !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2578, metadata !730), !dbg !2580
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2581
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2581
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2582
  store i32 %1, i32* %5, align 8, !dbg !2584, !tbaa !2570
  ret void, !dbg !2585
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2586 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2590, metadata !730), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2591, metadata !730), !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2592, metadata !730), !dbg !2600
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2593, metadata !730), !dbg !2601
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2602
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2602
  %6 = lshr i8 %1, 5, !dbg !2603
  %7 = zext i8 %6 to i64, !dbg !2603
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2605
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2594, metadata !730), !dbg !2606
  %9 = and i8 %1, 31, !dbg !2607
  %10 = zext i8 %9 to i32, !dbg !2608
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2596, metadata !730), !dbg !2609
  %11 = load i32, i32* %8, align 4, !dbg !2610, !tbaa !947
  %12 = lshr i32 %11, %10, !dbg !2611
  %13 = and i32 %12, 1, !dbg !2612
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2597, metadata !730), !dbg !2613
  %14 = and i32 %2, 1, !dbg !2614
  %15 = xor i32 %13, %14, !dbg !2615
  %16 = shl i32 %15, %10, !dbg !2616
  %17 = xor i32 %16, %11, !dbg !2617
  store i32 %17, i32* %8, align 4, !dbg !2617, !tbaa !947
  ret i32 %13, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2619 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2623, metadata !730), !dbg !2626
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2624, metadata !730), !dbg !2627
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2628
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2623, metadata !730), !dbg !2626
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2623, metadata !730), !dbg !2626
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2631
  %6 = load i32, i32* %5, align 4, !dbg !2631, !tbaa !2632
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2625, metadata !730), !dbg !2633
  store i32 %1, i32* %5, align 4, !dbg !2634, !tbaa !2632
  ret i32 %6, !dbg !2635
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2636 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2640, metadata !730), !dbg !2643
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2641, metadata !730), !dbg !2644
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2642, metadata !730), !dbg !2645
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2646
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2640, metadata !730), !dbg !2643
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2640, metadata !730), !dbg !2643
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2649
  store i32 10, i32* %6, align 8, !dbg !2650, !tbaa !2570
  %7 = icmp ne i8* %1, null, !dbg !2651
  %8 = icmp ne i8* %2, null, !dbg !2653
  %9 = and i1 %7, %8, !dbg !2655
  br i1 %9, label %11, label %10, !dbg !2655

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2656
  unreachable, !dbg !2656

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2657
  store i8* %1, i8** %12, align 8, !dbg !2658, !tbaa !2659
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2660
  store i8* %2, i8** %13, align 8, !dbg !2661, !tbaa !2662
  ret void, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2664 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2668, metadata !730), !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2669, metadata !730), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2670, metadata !730), !dbg !2678
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2671, metadata !730), !dbg !2679
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2672, metadata !730), !dbg !2680
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2681
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2673, metadata !730), !dbg !2682
  %8 = tail call i32* @__errno_location() #1, !dbg !2683
  %9 = load i32, i32* %8, align 4, !dbg !2683, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2674, metadata !730), !dbg !2684
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2685
  %11 = load i32, i32* %10, align 8, !dbg !2685, !tbaa !2570
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2686
  %13 = load i32, i32* %12, align 4, !dbg !2686, !tbaa !2632
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2687
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2688
  %16 = load i8*, i8** %15, align 8, !dbg !2688, !tbaa !2659
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2689
  %18 = load i8*, i8** %17, align 8, !dbg !2689, !tbaa !2662
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2675, metadata !730), !dbg !2691
  store i32 %9, i32* %8, align 4, !dbg !2692, !tbaa !947
  ret i64 %19, !dbg !2693
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2694 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2700, metadata !730), !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2701, metadata !730), !dbg !2764
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2702, metadata !730), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2703, metadata !730), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2704, metadata !730), !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2705, metadata !730), !dbg !2768
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2706, metadata !730), !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2707, metadata !730), !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2708, metadata !730), !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2710, metadata !730), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2711, metadata !730), !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2712, metadata !730), !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2713, metadata !730), !dbg !2775
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2714, metadata !730), !dbg !2776
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2777
  %14 = icmp eq i64 %13, 1, !dbg !2778
  %15 = lshr i32 %5, 1, !dbg !2779
  %16 = trunc i32 %15 to i8, !dbg !2779
  %17 = and i8 %16, 1, !dbg !2779
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2716, metadata !730), !dbg !2779
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2717, metadata !730), !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2718, metadata !730), !dbg !2781
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2719, metadata !730), !dbg !2782
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2783

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2701, metadata !730), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2719, metadata !730), !dbg !2782
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2718, metadata !730), !dbg !2781
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2716, metadata !730), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2703, metadata !730), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2714, metadata !730), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2713, metadata !730), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2712, metadata !730), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2711, metadata !730), !dbg !2773
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2708, metadata !730), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2707, metadata !730), !dbg !2770
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2704, metadata !730), !dbg !2767
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
  ], !dbg !2784

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2704, metadata !730), !dbg !2767
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2716, metadata !730), !dbg !2779
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2716, metadata !730), !dbg !2779
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2704, metadata !730), !dbg !2767
  br label %95, !dbg !2785

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2716, metadata !730), !dbg !2779
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2704, metadata !730), !dbg !2767
  %43 = and i8 %36, 1, !dbg !2787
  %44 = icmp eq i8 %43, 0, !dbg !2787
  br i1 %44, label %45, label %95, !dbg !2785

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2789
  br i1 %46, label %95, label %47, !dbg !2793

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2795, !tbaa !815
  br label %95, !dbg !2795

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.71, i64 0, i64 0), i32 %28), !dbg !2797
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2707, metadata !730), !dbg !2770
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), i32 %28), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2708, metadata !730), !dbg !2771
  br label %51, !dbg !2802

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2708, metadata !730), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2707, metadata !730), !dbg !2770
  %54 = and i8 %36, 1, !dbg !2803
  %55 = icmp eq i8 %54, 0, !dbg !2803
  br i1 %55, label %56, label %73, !dbg !2805

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2712, metadata !730), !dbg !2774
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2710, metadata !730), !dbg !2772
  %57 = load i8, i8* %52, align 1, !dbg !2806, !tbaa !815
  %58 = icmp eq i8 %57, 0, !dbg !2810
  br i1 %58, label %73, label %59, !dbg !2810

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2812

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2812
  br i1 %64, label %65, label %67, !dbg !2816

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2818
  store i8 %61, i8* %66, align 1, !dbg !2818, !tbaa !815
  br label %67, !dbg !2818

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2710, metadata !730), !dbg !2772
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2822
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2712, metadata !730), !dbg !2774
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2712, metadata !730), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2710, metadata !730), !dbg !2772
  %70 = load i8, i8* %69, align 1, !dbg !2806, !tbaa !815
  %71 = icmp eq i8 %70, 0, !dbg !2810
  br i1 %71, label %72, label %60, !dbg !2810, !llvm.loop !2824

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2772

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2714, metadata !730), !dbg !2776
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2712, metadata !730), !dbg !2774
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2713, metadata !730), !dbg !2775
  br label %95, !dbg !2828

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2714, metadata !730), !dbg !2776
  br label %77, !dbg !2829

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2714, metadata !730), !dbg !2776
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2716, metadata !730), !dbg !2779
  br label %79, !dbg !2830

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2716, metadata !730), !dbg !2779
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2714, metadata !730), !dbg !2776
  %82 = and i8 %81, 1, !dbg !2831
  %83 = icmp eq i8 %82, 0, !dbg !2831
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2714, metadata !730), !dbg !2776
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2833
  br label %85, !dbg !2833

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2716, metadata !730), !dbg !2779
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2714, metadata !730), !dbg !2776
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2704, metadata !730), !dbg !2767
  %88 = and i8 %87, 1, !dbg !2834
  %89 = icmp eq i8 %88, 0, !dbg !2834
  br i1 %89, label %90, label %95, !dbg !2836

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2837
  br i1 %91, label %95, label %92, !dbg !2841

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2843, !tbaa !815
  br label %95, !dbg !2843

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2716, metadata !730), !dbg !2779
  br label %95, !dbg !2845

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2846
  unreachable, !dbg !2846

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2716, metadata !730), !dbg !2779
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2714, metadata !730), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2713, metadata !730), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2712, metadata !730), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2708, metadata !730), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2707, metadata !730), !dbg !2770
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2704, metadata !730), !dbg !2767
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2709, metadata !730), !dbg !2847
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
  br label %123, !dbg !2848

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2701, metadata !730), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2719, metadata !730), !dbg !2782
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2718, metadata !730), !dbg !2781
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2703, metadata !730), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2711, metadata !730), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2709, metadata !730), !dbg !2847
  %132 = icmp eq i64 %127, -1, !dbg !2849
  br i1 %132, label %135, label %133, !dbg !2851

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2852
  br i1 %134, label %597, label %139, !dbg !2854

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2856
  %137 = load i8, i8* %136, align 1, !dbg !2856, !tbaa !815
  %138 = icmp eq i8 %137, 0, !dbg !2858
  br i1 %138, label %597, label %139, !dbg !2854

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2725, metadata !730), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2726, metadata !730), !dbg !2860
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2727, metadata !730), !dbg !2861
  br i1 %109, label %140, label %155, !dbg !2862

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2864
  %142 = and i1 %110, %132, !dbg !2866
  br i1 %142, label %143, label %145, !dbg !2866

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2703, metadata !730), !dbg !2766
  br label %145, !dbg !2868

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2703, metadata !730), !dbg !2766
  %147 = icmp ugt i64 %141, %146, !dbg !2870
  br i1 %147, label %155, label %148, !dbg !2872

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2873
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2874
  %151 = icmp ne i32 %150, 0, !dbg !2875
  %152 = or i1 %151, %112, !dbg !2875
  %153 = xor i1 %151, true, !dbg !2875
  %154 = zext i1 %153 to i8, !dbg !2875
  br i1 %152, label %155, label %644, !dbg !2875

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2725, metadata !730), !dbg !2859
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2703, metadata !730), !dbg !2766
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2877
  %159 = load i8, i8* %158, align 1, !dbg !2877, !tbaa !815
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2720, metadata !730), !dbg !2878
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
  ], !dbg !2879

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2880

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2881

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2726, metadata !730), !dbg !2860
  %163 = and i8 %128, 1, !dbg !2886
  %164 = icmp eq i8 %163, 0, !dbg !2886
  %165 = and i1 %114, %164, !dbg !2889
  br i1 %165, label %166, label %182, !dbg !2889

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2891
  br i1 %167, label %168, label %170, !dbg !2896

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2898
  store i8 39, i8* %169, align 1, !dbg !2898, !tbaa !815
  br label %170, !dbg !2898

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2710, metadata !730), !dbg !2772
  %172 = icmp ult i64 %171, %131, !dbg !2902
  br i1 %172, label %173, label %175, !dbg !2906

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2908
  store i8 36, i8* %174, align 1, !dbg !2908, !tbaa !815
  br label %175, !dbg !2908

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2710, metadata !730), !dbg !2772
  %177 = icmp ult i64 %176, %131, !dbg !2912
  br i1 %177, label %178, label %180, !dbg !2916

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2918
  store i8 39, i8* %179, align 1, !dbg !2918, !tbaa !815
  br label %180, !dbg !2918

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2717, metadata !730), !dbg !2780
  br label %182, !dbg !2922

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2710, metadata !730), !dbg !2772
  %185 = icmp ult i64 %183, %131, !dbg !2924
  br i1 %185, label %186, label %188, !dbg !2928

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2930
  store i8 92, i8* %187, align 1, !dbg !2930, !tbaa !815
  br label %188, !dbg !2930

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2710, metadata !730), !dbg !2772
  br i1 %106, label %190, label %476, !dbg !2934

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2936
  %192 = icmp ult i64 %191, %156, !dbg !2938
  br i1 %192, label %193, label %476, !dbg !2939

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2940
  %195 = load i8, i8* %194, align 1, !dbg !2940, !tbaa !815
  %196 = add i8 %195, -48, !dbg !2942
  %197 = icmp ult i8 %196, 10, !dbg !2942
  br i1 %197, label %198, label %476, !dbg !2942

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2943
  br i1 %199, label %200, label %202, !dbg !2948

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2950
  store i8 48, i8* %201, align 1, !dbg !2950, !tbaa !815
  br label %202, !dbg !2950

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2710, metadata !730), !dbg !2772
  %204 = icmp ult i64 %203, %131, !dbg !2954
  br i1 %204, label %205, label %207, !dbg !2958

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2960
  store i8 48, i8* %206, align 1, !dbg !2960, !tbaa !815
  br label %207, !dbg !2960

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2710, metadata !730), !dbg !2772
  br label %476, !dbg !2964

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2965

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2966

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2967

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2969

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2971
  %215 = icmp ult i64 %214, %156, !dbg !2973
  br i1 %215, label %216, label %476, !dbg !2974

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2975
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2977
  %219 = load i8, i8* %218, align 1, !dbg !2977, !tbaa !815
  %220 = icmp eq i8 %219, 63, !dbg !2978
  br i1 %220, label %221, label %476, !dbg !2979

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2981
  %223 = load i8, i8* %222, align 1, !dbg !2981, !tbaa !815
  %224 = sext i8 %223 to i32, !dbg !2981
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
  ], !dbg !2982

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2983

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2720, metadata !730), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2709, metadata !730), !dbg !2847
  %227 = icmp ult i64 %125, %131, !dbg !2985
  br i1 %227, label %228, label %230, !dbg !2989

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2991
  store i8 63, i8* %229, align 1, !dbg !2991, !tbaa !815
  br label %230, !dbg !2991

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2710, metadata !730), !dbg !2772
  %232 = icmp ult i64 %231, %131, !dbg !2995
  br i1 %232, label %233, label %235, !dbg !2999

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3001
  store i8 34, i8* %234, align 1, !dbg !3001, !tbaa !815
  br label %235, !dbg !3001

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2710, metadata !730), !dbg !2772
  %237 = icmp ult i64 %236, %131, !dbg !3005
  br i1 %237, label %238, label %240, !dbg !3009

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3011
  store i8 34, i8* %239, align 1, !dbg !3011, !tbaa !815
  br label %240, !dbg !3011

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2710, metadata !730), !dbg !2772
  %242 = icmp ult i64 %241, %131, !dbg !3015
  br i1 %242, label %243, label %245, !dbg !3019

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3021
  store i8 63, i8* %244, align 1, !dbg !3021, !tbaa !815
  br label %245, !dbg !3021

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2710, metadata !730), !dbg !2772
  br label %476, !dbg !3025

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2724, metadata !730), !dbg !3026
  br label %257, !dbg !3027

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2724, metadata !730), !dbg !3026
  br label %257, !dbg !3028

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2724, metadata !730), !dbg !3026
  br label %255, !dbg !3029

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2724, metadata !730), !dbg !3026
  br label %255, !dbg !3030

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2724, metadata !730), !dbg !3026
  br label %257, !dbg !3031

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2724, metadata !730), !dbg !3026
  br i1 %114, label %253, label %254, !dbg !3032

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !3033

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !3036

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2724, metadata !730), !dbg !3026
  br i1 %118, label %257, label %644, !dbg !3038

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2724, metadata !730), !dbg !3026
  br i1 %105, label %503, label %476, !dbg !3040

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !3041
  br i1 %260, label %261, label %266, !dbg !3043

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !3044, !tbaa !815
  %263 = icmp ne i8 %262, 0, !dbg !3046
  %264 = icmp ne i64 %124, 0, !dbg !3047
  %265 = or i1 %264, %263, !dbg !3049
  br i1 %265, label %476, label %272, !dbg !3049

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !3050
  %268 = icmp ne i64 %124, 0, !dbg !3047
  %269 = or i1 %268, %267, !dbg !3052
  br i1 %269, label %476, label %272, !dbg !3052

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !3047
  br i1 %271, label %272, label %476, !dbg !3054

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2727, metadata !730), !dbg !2861
  br label %273, !dbg !3055

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2727, metadata !730), !dbg !2861
  br i1 %118, label %476, label %644, !dbg !3056

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2718, metadata !730), !dbg !2781
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2727, metadata !730), !dbg !2861
  br i1 %114, label %276, label %476, !dbg !3058

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !3059

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !3062
  %279 = icmp ne i64 %126, 0, !dbg !3064
  %280 = or i1 %279, %278, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2711, metadata !730), !dbg !2773
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2701, metadata !730), !dbg !2764
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !3066
  %282 = select i1 %280, i64 %131, i64 0, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2701, metadata !730), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2711, metadata !730), !dbg !2773
  %283 = icmp ult i64 %125, %282, !dbg !3067
  br i1 %283, label %284, label %286, !dbg !3071

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3073
  store i8 39, i8* %285, align 1, !dbg !3073, !tbaa !815
  br label %286, !dbg !3073

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2710, metadata !730), !dbg !2772
  %288 = icmp ult i64 %287, %282, !dbg !3077
  br i1 %288, label %289, label %291, !dbg !3081

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3083
  store i8 92, i8* %290, align 1, !dbg !3083, !tbaa !815
  br label %291, !dbg !3083

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2710, metadata !730), !dbg !2772
  %293 = icmp ult i64 %292, %282, !dbg !3087
  br i1 %293, label %294, label %296, !dbg !3091

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3093
  store i8 39, i8* %295, align 1, !dbg !3093, !tbaa !815
  br label %296, !dbg !3093

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2717, metadata !730), !dbg !2780
  br label %476, !dbg !3097

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !3098

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2728, metadata !730), !dbg !3099
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !3100
  %301 = load i16*, i16** %300, align 8, !dbg !3100, !tbaa !738
  %302 = zext i8 %159 to i64, !dbg !3100
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3100
  %304 = load i16, i16* %303, align 2, !dbg !3100, !tbaa !1567
  %305 = lshr i16 %304, 14, !dbg !3102
  %306 = trunc i16 %305 to i8, !dbg !3102
  %307 = and i8 %306, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2731, metadata !730), !dbg !3103
  br label %368, !dbg !3104

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !3105
  store i64 0, i64* %10, align 8, !dbg !3106
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2728, metadata !730), !dbg !3099
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2731, metadata !730), !dbg !3103
  %309 = icmp eq i64 %156, -1, !dbg !3107
  br i1 %309, label %310, label %312, !dbg !3109, !llvm.loop !3110

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2703, metadata !730), !dbg !2766
  br label %312, !dbg !3114, !llvm.loop !3110

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !3103

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2731, metadata !730), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2728, metadata !730), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2703, metadata !730), !dbg !2766
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !3115
  %317 = add i64 %315, %124, !dbg !3116
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3117
  %319 = sub i64 %313, %317, !dbg !3118
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2732, metadata !2263), !dbg !3119
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2749, metadata !2263), !dbg !3120
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !3121
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2752, metadata !730), !dbg !3122
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !3123

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2728, metadata !730), !dbg !3099
  %322 = icmp ugt i64 %313, %317, !dbg !3124
  br i1 %322, label %323, label %351, !dbg !3127

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !3128

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3128
  %328 = load i8, i8* %327, align 1, !dbg !3128, !tbaa !815
  %329 = icmp eq i8 %328, 0, !dbg !3130
  br i1 %329, label %348, label %330, !dbg !3131

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2728, metadata !730), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2728, metadata !730), !dbg !3099
  %332 = add i64 %331, %124, !dbg !3134
  %333 = icmp ult i64 %332, %313, !dbg !3124
  br i1 %333, label %324, label %348, !dbg !3127, !llvm.loop !3135

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !3137
  %336 = and i1 %116, %335, !dbg !3141
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2753, metadata !730), !dbg !3142
  br i1 %336, label %337, label %355, !dbg !3141

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !3143

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !3143
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3144
  %342 = load i8, i8* %341, align 1, !dbg !3144, !tbaa !815
  %343 = sext i8 %342 to i32, !dbg !3144
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !3145

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2753, metadata !730), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2753, metadata !730), !dbg !3142
  %346 = icmp ult i64 %345, %320, !dbg !3137
  br i1 %346, label %338, label %354, !dbg !3148, !llvm.loop !3150

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !3103

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !3103

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !3103

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2731, metadata !730), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2728, metadata !730), !dbg !3099
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !3153
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !3154

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !3154, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2749, metadata !730), !dbg !3120
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !3156
  %358 = icmp eq i32 %357, 0, !dbg !3156
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2731, metadata !730), !dbg !3103
  %359 = select i1 %358, i8 0, i8 %316, !dbg !3157
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2731, metadata !730), !dbg !3103
  %360 = add i64 %320, %315, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2728, metadata !730), !dbg !3099
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2731, metadata !730), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2728, metadata !730), !dbg !3099
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !3153
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2732, metadata !2263), !dbg !3119
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !3159
  %362 = icmp eq i32 %361, 0, !dbg !3160
  br i1 %362, label %314, label %363, !dbg !3161, !llvm.loop !3110

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !3163

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !3163
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2731, metadata !730), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2728, metadata !730), !dbg !3099
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !3153
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !3163
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2731, metadata !730), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2728, metadata !730), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2703, metadata !730), !dbg !2766
  %372 = and i8 %371, 1, !dbg !3164
  %373 = icmp ne i8 %372, 0, !dbg !3164
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2727, metadata !730), !dbg !2861
  %374 = icmp ult i64 %370, 2, !dbg !3165
  %375 = or i1 %373, %113, !dbg !3166
  %376 = and i1 %374, %375, !dbg !3168
  br i1 %376, label %476, label %377, !dbg !3168

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2760, metadata !730), !dbg !3170
  br label %379, !dbg !3171

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2726, metadata !730), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2725, metadata !730), !dbg !2859
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2720, metadata !730), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2709, metadata !730), !dbg !2847
  br i1 %375, label %432, label %386, !dbg !3172

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !3177

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2726, metadata !730), !dbg !2860
  %388 = and i8 %382, 1, !dbg !3181
  %389 = icmp eq i8 %388, 0, !dbg !3181
  %390 = and i1 %114, %389, !dbg !3184
  br i1 %390, label %391, label %407, !dbg !3184

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !3186
  br i1 %392, label %393, label %395, !dbg !3191

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3193
  store i8 39, i8* %394, align 1, !dbg !3193, !tbaa !815
  br label %395, !dbg !3193

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2710, metadata !730), !dbg !2772
  %397 = icmp ult i64 %396, %131, !dbg !3197
  br i1 %397, label %398, label %400, !dbg !3201

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3203
  store i8 36, i8* %399, align 1, !dbg !3203, !tbaa !815
  br label %400, !dbg !3203

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2710, metadata !730), !dbg !2772
  %402 = icmp ult i64 %401, %131, !dbg !3207
  br i1 %402, label %403, label %405, !dbg !3211

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3213
  store i8 39, i8* %404, align 1, !dbg !3213, !tbaa !815
  br label %405, !dbg !3213

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2717, metadata !730), !dbg !2780
  br label %407, !dbg !3217

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2710, metadata !730), !dbg !2772
  %410 = icmp ult i64 %408, %131, !dbg !3219
  br i1 %410, label %411, label %413, !dbg !3223

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3225
  store i8 92, i8* %412, align 1, !dbg !3225, !tbaa !815
  br label %413, !dbg !3225

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2710, metadata !730), !dbg !2772
  %415 = icmp ult i64 %414, %131, !dbg !3229
  br i1 %415, label %416, label %420, !dbg !3233

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !3235
  %418 = or i8 %417, 48, !dbg !3235
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3235
  store i8 %418, i8* %419, align 1, !dbg !3235, !tbaa !815
  br label %420, !dbg !3235

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2710, metadata !730), !dbg !2772
  %422 = icmp ult i64 %421, %131, !dbg !3239
  br i1 %422, label %423, label %428, !dbg !3243

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !3245
  %425 = and i8 %424, 7, !dbg !3245
  %426 = or i8 %425, 48, !dbg !3245
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3245
  store i8 %426, i8* %427, align 1, !dbg !3245, !tbaa !815
  br label %428, !dbg !3245

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2710, metadata !730), !dbg !2772
  %430 = and i8 %383, 7, !dbg !3249
  %431 = or i8 %430, 48, !dbg !3250
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2720, metadata !730), !dbg !2878
  br label %441, !dbg !3251

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !3252
  %434 = icmp eq i8 %433, 0, !dbg !3252
  br i1 %434, label %441, label %435, !dbg !3254

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !3255
  br i1 %436, label %437, label %439, !dbg !3260

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3262
  store i8 92, i8* %438, align 1, !dbg !3262, !tbaa !815
  br label %439, !dbg !3262

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2725, metadata !730), !dbg !2859
  br label %441, !dbg !3266

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2726, metadata !730), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2725, metadata !730), !dbg !2859
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2720, metadata !730), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2710, metadata !730), !dbg !2772
  %447 = add i64 %380, 1, !dbg !3267
  %448 = icmp ugt i64 %378, %447, !dbg !3269
  br i1 %448, label %449, label %541, !dbg !3270

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3271
  %451 = icmp ne i8 %450, 0, !dbg !3271
  %452 = and i8 %446, 1, !dbg !3275
  %453 = icmp eq i8 %452, 0, !dbg !3275
  %454 = and i1 %451, %453, !dbg !3271
  br i1 %454, label %455, label %466, !dbg !3271

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3277
  br i1 %456, label %457, label %459, !dbg !3282

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3284
  store i8 39, i8* %458, align 1, !dbg !3284, !tbaa !815
  br label %459, !dbg !3284

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2710, metadata !730), !dbg !2772
  %461 = icmp ult i64 %460, %131, !dbg !3288
  br i1 %461, label %462, label %464, !dbg !3292

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3294
  store i8 39, i8* %463, align 1, !dbg !3294, !tbaa !815
  br label %464, !dbg !3294

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3296
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2717, metadata !730), !dbg !2780
  br label %466, !dbg !3298

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2710, metadata !730), !dbg !2772
  %469 = icmp ult i64 %467, %131, !dbg !3300
  br i1 %469, label %470, label %472, !dbg !3304

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3306
  store i8 %444, i8* %471, align 1, !dbg !3306, !tbaa !815
  br label %472, !dbg !3306

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2709, metadata !730), !dbg !2847
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3310
  %475 = load i8, i8* %474, align 1, !dbg !3310, !tbaa !815
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2720, metadata !730), !dbg !2878
  br label %379, !dbg !3311, !llvm.loop !3313

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2701, metadata !730), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2727, metadata !730), !dbg !2861
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2726, metadata !730), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2725, metadata !730), !dbg !2859
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2720, metadata !730), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2718, metadata !730), !dbg !2781
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2703, metadata !730), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2711, metadata !730), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2709, metadata !730), !dbg !2847
  br i1 %107, label %488, label %487, !dbg !3316

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3318

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3319

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3320
  %491 = zext i8 %490 to i64, !dbg !3320
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3322
  %493 = load i32, i32* %492, align 4, !dbg !3322, !tbaa !947
  %494 = and i8 %483, 31, !dbg !3323
  %495 = zext i8 %494 to i32, !dbg !3324
  %496 = shl i32 1, %495, !dbg !3325
  %497 = and i32 %493, %496, !dbg !3325
  %498 = icmp eq i32 %497, 0, !dbg !3325
  %499 = icmp eq i8 %157, 0, !dbg !3326
  %500 = and i1 %499, %498, !dbg !3327
  br i1 %500, label %542, label %503, !dbg !3327

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3326
  br i1 %502, label %542, label %503, !dbg !3328

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2701, metadata !730), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2727, metadata !730), !dbg !2861
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2720, metadata !730), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2718, metadata !730), !dbg !2781
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2703, metadata !730), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2711, metadata !730), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2709, metadata !730), !dbg !2847
  br i1 %112, label %513, label %644, !dbg !3330

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2726, metadata !730), !dbg !2860
  %514 = and i8 %508, 1, !dbg !3333
  %515 = icmp eq i8 %514, 0, !dbg !3333
  %516 = and i1 %114, %515, !dbg !3336
  br i1 %516, label %517, label %533, !dbg !3336

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3338
  br i1 %518, label %519, label %521, !dbg !3343

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3345
  store i8 39, i8* %520, align 1, !dbg !3345, !tbaa !815
  br label %521, !dbg !3345

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2710, metadata !730), !dbg !2772
  %523 = icmp ult i64 %522, %512, !dbg !3349
  br i1 %523, label %524, label %526, !dbg !3353

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3355
  store i8 36, i8* %525, align 1, !dbg !3355, !tbaa !815
  br label %526, !dbg !3355

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2710, metadata !730), !dbg !2772
  %528 = icmp ult i64 %527, %512, !dbg !3359
  br i1 %528, label %529, label %531, !dbg !3363

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3365
  store i8 39, i8* %530, align 1, !dbg !3365, !tbaa !815
  br label %531, !dbg !3365

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3367
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2717, metadata !730), !dbg !2780
  br label %533, !dbg !3369

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2710, metadata !730), !dbg !2772
  %536 = icmp ult i64 %534, %512, !dbg !3371
  br i1 %536, label %537, label %539, !dbg !3375

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3377
  store i8 92, i8* %538, align 1, !dbg !3377, !tbaa !815
  br label %539, !dbg !3377

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2701, metadata !730), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2727, metadata !730), !dbg !2861
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2726, metadata !730), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2720, metadata !730), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2718, metadata !730), !dbg !2781
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2703, metadata !730), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2711, metadata !730), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2709, metadata !730), !dbg !2847
  br label %569, !dbg !3381

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2764

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2701, metadata !730), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2727, metadata !730), !dbg !2861
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2726, metadata !730), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2720, metadata !730), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2718, metadata !730), !dbg !2781
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2703, metadata !730), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2711, metadata !730), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2709, metadata !730), !dbg !2847
  %553 = and i8 %547, 1, !dbg !3381
  %554 = icmp ne i8 %553, 0, !dbg !3381
  %555 = and i8 %550, 1, !dbg !3385
  %556 = icmp eq i8 %555, 0, !dbg !3385
  %557 = and i1 %554, %556, !dbg !3381
  br i1 %557, label %558, label %569, !dbg !3381

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3387
  br i1 %559, label %560, label %562, !dbg !3392

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3394
  store i8 39, i8* %561, align 1, !dbg !3394, !tbaa !815
  br label %562, !dbg !3394

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2710, metadata !730), !dbg !2772
  %564 = icmp ult i64 %563, %552, !dbg !3398
  br i1 %564, label %565, label %567, !dbg !3402

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3404
  store i8 39, i8* %566, align 1, !dbg !3404, !tbaa !815
  br label %567, !dbg !3404

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2710, metadata !730), !dbg !2772
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2717, metadata !730), !dbg !2780
  br label %569, !dbg !3408

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2717, metadata !730), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2710, metadata !730), !dbg !2772
  %579 = icmp ult i64 %577, %570, !dbg !3410
  br i1 %579, label %580, label %582, !dbg !3414

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3416
  store i8 %572, i8* %581, align 1, !dbg !3416, !tbaa !815
  br label %582, !dbg !3416

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2710, metadata !730), !dbg !2772
  %584 = and i8 %571, 1, !dbg !3420
  %585 = icmp eq i8 %584, 0, !dbg !3420
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2719, metadata !730), !dbg !2782
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3422
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2719, metadata !730), !dbg !2782
  br label %587, !dbg !3423

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2709, metadata !730), !dbg !2847
  br label %123, !dbg !3426, !llvm.loop !3427

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3430
  %600 = and i1 %114, %599, !dbg !3432
  %601 = xor i1 %600, true, !dbg !3432
  %602 = or i1 %112, %601, !dbg !3432
  br i1 %602, label %603, label %648, !dbg !3432

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3433
  %605 = xor i1 %604, true, !dbg !3433
  %606 = and i8 %129, 1, !dbg !3435
  %607 = icmp eq i8 %606, 0, !dbg !3435
  %608 = or i1 %607, %605, !dbg !3433
  br i1 %608, label %618, label %609, !dbg !3433

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3437
  %611 = icmp eq i8 %610, 0, !dbg !3437
  br i1 %611, label %614, label %612, !dbg !3440

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3441
  br label %659, !dbg !3442

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3443
  %616 = icmp ne i64 %126, 0, !dbg !3445
  %617 = and i1 %616, %615, !dbg !3447
  br i1 %617, label %27, label %618, !dbg !3447

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3448
  %620 = and i1 %619, %112, !dbg !3450
  br i1 %620, label %621, label %638, !dbg !3450

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2712, metadata !730), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2710, metadata !730), !dbg !2772
  %622 = load i8, i8* %100, align 1, !dbg !3451, !tbaa !815
  %623 = icmp eq i8 %622, 0, !dbg !3455
  br i1 %623, label %638, label %624, !dbg !3455

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3457

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3457
  br i1 %629, label %630, label %632, !dbg !3461

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3463
  store i8 %626, i8* %631, align 1, !dbg !3463, !tbaa !815
  br label %632, !dbg !3463

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3465
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2710, metadata !730), !dbg !2772
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2712, metadata !730), !dbg !2774
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2712, metadata !730), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2710, metadata !730), !dbg !2772
  %635 = load i8, i8* %634, align 1, !dbg !3451, !tbaa !815
  %636 = icmp eq i8 %635, 0, !dbg !3455
  br i1 %636, label %637, label %625, !dbg !3455, !llvm.loop !3469

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2772

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2710, metadata !730), !dbg !2772
  %640 = icmp ult i64 %639, %131, !dbg !3472
  br i1 %640, label %641, label %659, !dbg !3474

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3475
  store i8 0, i8* %642, align 1, !dbg !3476, !tbaa !815
  br label %659, !dbg !3475

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2764

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2764

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2764

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2701, metadata !730), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2703, metadata !730), !dbg !2766
  %653 = icmp ne i32 %650, 2, !dbg !3477
  %654 = icmp eq i8 %104, 0, !dbg !3479
  %655 = or i1 %653, %654, !dbg !3481
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2704, metadata !730), !dbg !2767
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2704, metadata !730), !dbg !2767
  %657 = and i32 %5, -3, !dbg !3482
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3483
  br label %659, !dbg !3484

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3485
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3486 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3490, metadata !730), !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3491, metadata !730), !dbg !3495
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !3496
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3492, metadata !730), !dbg !3497
  %4 = icmp eq i8* %3, %0, !dbg !3498
  br i1 %4, label %5, label %75, !dbg !3500

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !3501
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3493, metadata !730), !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3503, metadata !730), !dbg !3519
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3517, metadata !730), !dbg !3522
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3518, metadata !730), !dbg !3523
  %7 = load i8, i8* %6, align 1, !tbaa !815
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3524
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3524

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3527, metadata !730), !dbg !3541
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3539, metadata !730), !dbg !3545
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3540, metadata !730), !dbg !3546
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !815
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3547
  %15 = icmp eq i32 %14, 84, !dbg !3547
  br i1 %15, label %16, label %72, !dbg !3547

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3550, metadata !730), !dbg !3563
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3561, metadata !730), !dbg !3567
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3562, metadata !730), !dbg !3568
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !815
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3569
  %21 = icmp eq i32 %20, 70, !dbg !3569
  br i1 %21, label %22, label %72, !dbg !3569

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3572, metadata !730), !dbg !3584
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3582, metadata !730), !dbg !3588
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3583, metadata !730), !dbg !3589
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !815
  %25 = icmp eq i8 %24, 45, !dbg !3590
  br i1 %25, label %26, label %72, !dbg !3593

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3595, metadata !730), !dbg !3606
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3604, metadata !730), !dbg !3610
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3605, metadata !730), !dbg !3611
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !815
  %29 = icmp eq i8 %28, 56, !dbg !3612
  br i1 %29, label %30, label %72, !dbg !3615

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3617, metadata !730), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3625, metadata !730), !dbg !3631
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3626, metadata !730), !dbg !3632
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !815
  %33 = icmp eq i8 %32, 0, !dbg !3633
  br i1 %33, label %34, label %72, !dbg !3636

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3638, !tbaa !815
  %36 = icmp eq i8 %35, 96, !dbg !3639
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.74, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.75, i64 0, i64 0), !dbg !3638
  br label %75, !dbg !3640

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3527, metadata !730), !dbg !3641
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3539, metadata !730), !dbg !3645
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3540, metadata !730), !dbg !3646
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !815
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3647
  %43 = icmp eq i32 %42, 66, !dbg !3647
  br i1 %43, label %44, label %72, !dbg !3647

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3550, metadata !730), !dbg !3648
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3561, metadata !730), !dbg !3650
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3562, metadata !730), !dbg !3651
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !815
  %47 = icmp eq i8 %46, 49, !dbg !3652
  br i1 %47, label %48, label %72, !dbg !3654

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3572, metadata !730), !dbg !3656
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3582, metadata !730), !dbg !3658
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3583, metadata !730), !dbg !3659
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !815
  %51 = icmp eq i8 %50, 56, !dbg !3660
  br i1 %51, label %52, label %72, !dbg !3661

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3595, metadata !730), !dbg !3662
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3604, metadata !730), !dbg !3664
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3605, metadata !730), !dbg !3665
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !815
  %55 = icmp eq i8 %54, 48, !dbg !3666
  br i1 %55, label %56, label %72, !dbg !3667

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3617, metadata !730), !dbg !3668
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3625, metadata !730), !dbg !3670
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3626, metadata !730), !dbg !3671
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !815
  %59 = icmp eq i8 %58, 51, !dbg !3672
  br i1 %59, label %60, label %72, !dbg !3673

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3674, metadata !730), !dbg !3683
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3681, metadata !730), !dbg !3687
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3682, metadata !730), !dbg !3688
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !815
  %63 = icmp eq i8 %62, 48, !dbg !3689
  br i1 %63, label %64, label %72, !dbg !3692

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3694, metadata !730), !dbg !3702
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3700, metadata !730), !dbg !3706
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3701, metadata !730), !dbg !3707
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !815
  %67 = icmp eq i8 %66, 0, !dbg !3708
  br i1 %67, label %68, label %72, !dbg !3711

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3712, !tbaa !815
  %70 = icmp eq i8 %69, 96, !dbg !3713
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.76, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.77, i64 0, i64 0), !dbg !3712
  br label %75, !dbg !3714

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3715
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), !dbg !3716
  br label %75, !dbg !3717

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3718
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3719 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3723, metadata !730), !dbg !3726
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3724, metadata !730), !dbg !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3725, metadata !730), !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3729, metadata !730) #11, !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3734, metadata !730) #11, !dbg !3744
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3735, metadata !730) #11, !dbg !3745
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3736, metadata !730) #11, !dbg !3746
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3747
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3747
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3737, metadata !730) #11, !dbg !3748
  %6 = tail call i32* @__errno_location() #1, !dbg !3749
  %7 = load i32, i32* %6, align 4, !dbg !3749, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3738, metadata !730) #11, !dbg !3750
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3751
  %9 = load i32, i32* %8, align 4, !dbg !3751, !tbaa !2632
  %10 = or i32 %9, 1, !dbg !3752
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3739, metadata !730) #11, !dbg !3753
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3754
  %12 = load i32, i32* %11, align 8, !dbg !3754, !tbaa !2570
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3755
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3756
  %15 = load i8*, i8** %14, align 8, !dbg !3756, !tbaa !2659
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3757
  %17 = load i8*, i8** %16, align 8, !dbg !3757, !tbaa !2662
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3758
  %19 = add i64 %18, 1, !dbg !3759
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3740, metadata !730) #11, !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3761, metadata !730) #11, !dbg !3766
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3768
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3741, metadata !730) #11, !dbg !3769
  %21 = load i32, i32* %11, align 8, !dbg !3770, !tbaa !2570
  %22 = load i8*, i8** %14, align 8, !dbg !3771, !tbaa !2659
  %23 = load i8*, i8** %16, align 8, !dbg !3772, !tbaa !2662
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3773
  store i32 %7, i32* %6, align 4, !dbg !3774, !tbaa !947
  ret i8* %20, !dbg !3775
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3730 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3729, metadata !730), !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3734, metadata !730), !dbg !3777
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3735, metadata !730), !dbg !3778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3736, metadata !730), !dbg !3779
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3780
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3737, metadata !730), !dbg !3781
  %7 = tail call i32* @__errno_location() #1, !dbg !3782
  %8 = load i32, i32* %7, align 4, !dbg !3782, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3738, metadata !730), !dbg !3783
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3784
  %10 = load i32, i32* %9, align 4, !dbg !3784, !tbaa !2632
  %11 = icmp ne i64* %2, null, !dbg !3785
  %12 = xor i1 %11, true, !dbg !3785
  %13 = zext i1 %12 to i32, !dbg !3785
  %14 = or i32 %10, %13, !dbg !3786
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3739, metadata !730), !dbg !3787
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3788
  %16 = load i32, i32* %15, align 8, !dbg !3788, !tbaa !2570
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3789
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3790
  %19 = load i8*, i8** %18, align 8, !dbg !3790, !tbaa !2659
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3791
  %21 = load i8*, i8** %20, align 8, !dbg !3791, !tbaa !2662
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3792
  %23 = add i64 %22, 1, !dbg !3793
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3740, metadata !730), !dbg !3794
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3761, metadata !730) #11, !dbg !3795
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3797
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3741, metadata !730), !dbg !3798
  %25 = load i32, i32* %15, align 8, !dbg !3799, !tbaa !2570
  %26 = load i8*, i8** %18, align 8, !dbg !3800, !tbaa !2659
  %27 = load i8*, i8** %20, align 8, !dbg !3801, !tbaa !2662
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3802
  store i32 %8, i32* %7, align 4, !dbg !3803, !tbaa !947
  br i1 %11, label %29, label %30, !dbg !3804

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3805, !tbaa !879
  br label %30, !dbg !3807

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3808
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3809 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3813, !tbaa !738
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3811, metadata !730), !dbg !3814
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3812, metadata !730), !dbg !3815
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3812, metadata !730), !dbg !3815
  %2 = load i32, i32* @nslots, align 4, !dbg !3816, !tbaa !947
  %3 = icmp sgt i32 %2, 1, !dbg !3820
  br i1 %3, label %4, label %14, !dbg !3821

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3823

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3823
  %8 = load i8*, i8** %7, align 8, !dbg !3823, !tbaa !3824
  tail call void @free(i8* %8) #11, !dbg !3826
  %9 = add nuw i64 %6, 1, !dbg !3827
  %10 = load i32, i32* @nslots, align 4, !dbg !3816, !tbaa !947
  %11 = sext i32 %10 to i64, !dbg !3820
  %12 = icmp slt i64 %9, %11, !dbg !3820
  br i1 %12, label %5, label %13, !dbg !3821, !llvm.loop !3829

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3832

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3832
  %16 = load i8*, i8** %15, align 8, !dbg !3832, !tbaa !3824
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3834
  br i1 %17, label %19, label %18, !dbg !3835

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3836
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3838, !tbaa !3839
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3840, !tbaa !3824
  br label %19, !dbg !3841

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3842
  br i1 %20, label %23, label %21, !dbg !3844

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3845
  tail call void @free(i8* %22) #11, !dbg !3847
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3848, !tbaa !738
  br label %23, !dbg !3849

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3850, !tbaa !947
  ret void, !dbg !3851
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3852 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3856, metadata !730), !dbg !3858
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3857, metadata !730), !dbg !3859
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3860
  ret i8* %3, !dbg !3861
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3862 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3866, metadata !730), !dbg !3880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3867, metadata !730), !dbg !3881
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3868, metadata !730), !dbg !3882
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3869, metadata !730), !dbg !3883
  %5 = tail call i32* @__errno_location() #1, !dbg !3884
  %6 = load i32, i32* %5, align 4, !dbg !3884, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3870, metadata !730), !dbg !3885
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3886, !tbaa !738
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3871, metadata !730), !dbg !3887
  %8 = icmp slt i32 %0, 0, !dbg !3888
  br i1 %8, label %9, label %10, !dbg !3890

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3891
  unreachable, !dbg !3891

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3892, !tbaa !947
  %12 = icmp sgt i32 %11, %0, !dbg !3893
  br i1 %12, label %34, label %13, !dbg !3894

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3895
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3896
  br i1 %15, label %16, label %17, !dbg !3898

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3899
  unreachable, !dbg !3899

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3900
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3900
  %20 = add nsw i32 %0, 1, !dbg !3902
  %21 = sext i32 %20 to i64, !dbg !3903
  %22 = shl nsw i64 %21, 4, !dbg !3904
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3905
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3905
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3871, metadata !730), !dbg !3887
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3906, !tbaa !738
  br i1 %14, label %25, label %26, !dbg !3907

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3908, !tbaa.struct !3910
  br label %26, !dbg !3911

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3912, !tbaa !947
  %28 = sext i32 %27 to i64, !dbg !3913
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3913
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3914
  %31 = sub nsw i32 %20, %27, !dbg !3915
  %32 = sext i32 %31 to i64, !dbg !3916
  %33 = shl nsw i64 %32, 4, !dbg !3917
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3914
  store i32 %20, i32* @nslots, align 4, !dbg !3918, !tbaa !947
  br label %34, !dbg !3919

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3871, metadata !730), !dbg !3887
  %36 = sext i32 %0 to i64, !dbg !3920
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3921
  %38 = load i64, i64* %37, align 8, !dbg !3921, !tbaa !3839
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3875, metadata !730), !dbg !3922
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3923
  %40 = load i8*, i8** %39, align 8, !dbg !3923, !tbaa !3824
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3877, metadata !730), !dbg !3924
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3925
  %42 = load i32, i32* %41, align 4, !dbg !3925, !tbaa !2632
  %43 = or i32 %42, 1, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3878, metadata !730), !dbg !3927
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3928
  %45 = load i32, i32* %44, align 8, !dbg !3928, !tbaa !2570
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3929
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3930
  %48 = load i8*, i8** %47, align 8, !dbg !3930, !tbaa !2659
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3931
  %50 = load i8*, i8** %49, align 8, !dbg !3931, !tbaa !2662
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3879, metadata !730), !dbg !3933
  %52 = icmp ugt i64 %38, %51, !dbg !3934
  br i1 %52, label %63, label %53, !dbg !3936

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3875, metadata !730), !dbg !3922
  store i64 %54, i64* %37, align 8, !dbg !3939, !tbaa !3839
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3940
  br i1 %55, label %57, label %56, !dbg !3942

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3943
  br label %57, !dbg !3943

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3761, metadata !730) #11, !dbg !3944
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3946
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3877, metadata !730), !dbg !3924
  store i8* %58, i8** %39, align 8, !dbg !3947, !tbaa !3824
  %59 = load i32, i32* %44, align 8, !dbg !3948, !tbaa !2570
  %60 = load i8*, i8** %47, align 8, !dbg !3949, !tbaa !2659
  %61 = load i8*, i8** %49, align 8, !dbg !3950, !tbaa !2662
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3951
  br label %63, !dbg !3952

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3877, metadata !730), !dbg !3924
  store i32 %6, i32* %5, align 4, !dbg !3953, !tbaa !947
  ret i8* %64, !dbg !3954
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3955 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3959, metadata !730), !dbg !3962
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3960, metadata !730), !dbg !3963
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3961, metadata !730), !dbg !3964
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3965
  ret i8* %4, !dbg !3966
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3967 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3971, metadata !730), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3856, metadata !730) #11, !dbg !3973
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3857, metadata !730) #11, !dbg !3975
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3976
  ret i8* %2, !dbg !3977
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3978 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3982, metadata !730), !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3983, metadata !730), !dbg !3985
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3959, metadata !730) #11, !dbg !3986
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3960, metadata !730) #11, !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3961, metadata !730) #11, !dbg !3989
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3990
  ret i8* %3, !dbg !3991
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3992 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4000, metadata !4006), !dbg !4007
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3996, metadata !730), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3997, metadata !730), !dbg !4010
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3998, metadata !730), !dbg !4011
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4012
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3999, metadata !2263), !dbg !4013
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4005, metadata !730) #11, !dbg !4014
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4015
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4015
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4000, metadata !730) #11, !dbg !4007
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4000, metadata !4016) #11, !dbg !4007
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4007
  %8 = icmp eq i32 %1, 10, !dbg !4017
  br i1 %8, label %9, label %10, !dbg !4019

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4020, !noalias !4021
  unreachable, !dbg !4020

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4000, metadata !4016) #11, !dbg !4007
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4024
  store i32 %1, i32* %11, align 8, !dbg !4024, !alias.scope !4021
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4024
  %13 = bitcast i32* %12 to i8*, !dbg !4024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !4024
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4025
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3999, metadata !2263), !dbg !4013
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4026
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4027
  ret i8* %14, !dbg !4028
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4029 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4000, metadata !4006), !dbg !4038
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4033, metadata !730), !dbg !4040
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4034, metadata !730), !dbg !4041
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4035, metadata !730), !dbg !4042
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4036, metadata !730), !dbg !4043
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4044
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !4044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4037, metadata !2263), !dbg !4045
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4005, metadata !730) #11, !dbg !4046
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4047
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4047
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4000, metadata !730) #11, !dbg !4038
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4000, metadata !4016) #11, !dbg !4038
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4038
  %9 = icmp eq i32 %1, 10, !dbg !4048
  br i1 %9, label %10, label %11, !dbg !4049

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4050, !noalias !4051
  unreachable, !dbg !4050

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4000, metadata !4016) #11, !dbg !4038
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4054
  store i32 %1, i32* %12, align 8, !dbg !4054, !alias.scope !4051
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4054
  %14 = bitcast i32* %13 to i8*, !dbg !4054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !4054
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4055
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4037, metadata !2263), !dbg !4045
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4056
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !4057
  ret i8* %15, !dbg !4058
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4059 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4000, metadata !4006), !dbg !4065
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4063, metadata !730), !dbg !4068
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4064, metadata !730), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3996, metadata !730) #11, !dbg !4070
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3997, metadata !730) #11, !dbg !4071
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3998, metadata !730) #11, !dbg !4072
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4073
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !4073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3999, metadata !2263) #11, !dbg !4074
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4005, metadata !730) #11, !dbg !4075
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4076
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4076
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4000, metadata !730) #11, !dbg !4065
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4000, metadata !4016) #11, !dbg !4065
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4065
  %7 = icmp eq i32 %0, 10, !dbg !4077
  br i1 %7, label %8, label %9, !dbg !4078

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !4079, !noalias !4080
  unreachable, !dbg !4079

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4000, metadata !4016) #11, !dbg !4065
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4083
  store i32 %0, i32* %10, align 8, !dbg !4083, !alias.scope !4080
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4083
  %12 = bitcast i32* %11 to i8*, !dbg !4083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !4083
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3999, metadata !2263) #11, !dbg !4074
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !4085
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !4086
  ret i8* %13, !dbg !4087
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4088 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4000, metadata !4006), !dbg !4095
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4092, metadata !730), !dbg !4098
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4093, metadata !730), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4094, metadata !730), !dbg !4100
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4033, metadata !730) #11, !dbg !4101
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4034, metadata !730) #11, !dbg !4102
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4035, metadata !730) #11, !dbg !4103
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4036, metadata !730) #11, !dbg !4104
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4105
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4037, metadata !2263) #11, !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4005, metadata !730) #11, !dbg !4107
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4108
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4108
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4000, metadata !730) #11, !dbg !4095
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4000, metadata !4016) #11, !dbg !4095
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4095
  %8 = icmp eq i32 %0, 10, !dbg !4109
  br i1 %8, label %9, label %10, !dbg !4110

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4111, !noalias !4112
  unreachable, !dbg !4111

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4000, metadata !4016) #11, !dbg !4095
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4115
  store i32 %0, i32* %11, align 8, !dbg !4115, !alias.scope !4112
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4115
  %13 = bitcast i32* %12 to i8*, !dbg !4115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !4115
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4116
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4037, metadata !2263) #11, !dbg !4106
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !4117
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4118
  ret i8* %14, !dbg !4119
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4120 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4124, metadata !730), !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4125, metadata !730), !dbg !4129
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4126, metadata !730), !dbg !4130
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4131
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !4131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4132, !tbaa.struct !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4127, metadata !2263), !dbg !4134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2590, metadata !730), !dbg !4135
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2591, metadata !730), !dbg !4137
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2592, metadata !730), !dbg !4138
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2593, metadata !730), !dbg !4139
  %6 = lshr i8 %2, 5, !dbg !4140
  %7 = zext i8 %6 to i64, !dbg !4140
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4141
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2594, metadata !730), !dbg !4142
  %9 = and i8 %2, 31, !dbg !4143
  %10 = zext i8 %9 to i32, !dbg !4144
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2596, metadata !730), !dbg !4145
  %11 = load i32, i32* %8, align 4, !dbg !4146, !tbaa !947
  %12 = lshr i32 %11, %10, !dbg !4147
  %13 = and i32 %12, 1, !dbg !4148
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2597, metadata !730), !dbg !4149
  %14 = xor i32 %13, 1, !dbg !4150
  %15 = shl i32 %14, %10, !dbg !4151
  %16 = xor i32 %15, %11, !dbg !4152
  store i32 %16, i32* %8, align 4, !dbg !4152, !tbaa !947
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4127, metadata !2263), !dbg !4134
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4153
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !4154
  ret i8* %17, !dbg !4155
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4156 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4160, metadata !730), !dbg !4162
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4161, metadata !730), !dbg !4163
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4124, metadata !730) #11, !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4125, metadata !730) #11, !dbg !4166
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4126, metadata !730) #11, !dbg !4167
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4168
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !4168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4169, !tbaa.struct !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4127, metadata !2263) #11, !dbg !4170
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2590, metadata !730) #11, !dbg !4171
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2591, metadata !730) #11, !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2592, metadata !730) #11, !dbg !4174
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2593, metadata !730) #11, !dbg !4175
  %5 = lshr i8 %1, 5, !dbg !4176
  %6 = zext i8 %5 to i64, !dbg !4176
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4177
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2594, metadata !730) #11, !dbg !4178
  %8 = and i8 %1, 31, !dbg !4179
  %9 = zext i8 %8 to i32, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2596, metadata !730) #11, !dbg !4181
  %10 = load i32, i32* %7, align 4, !dbg !4182, !tbaa !947
  %11 = lshr i32 %10, %9, !dbg !4183
  %12 = and i32 %11, 1, !dbg !4184
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2597, metadata !730) #11, !dbg !4185
  %13 = xor i32 %12, 1, !dbg !4186
  %14 = shl i32 %13, %9, !dbg !4187
  %15 = xor i32 %14, %10, !dbg !4188
  store i32 %15, i32* %7, align 4, !dbg !4188, !tbaa !947
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4127, metadata !2263) #11, !dbg !4170
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !4189
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !4190
  ret i8* %16, !dbg !4191
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4192 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4194, metadata !730), !dbg !4195
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4160, metadata !730) #11, !dbg !4196
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4161, metadata !730) #11, !dbg !4198
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4124, metadata !730) #11, !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4125, metadata !730) #11, !dbg !4201
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4126, metadata !730) #11, !dbg !4202
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4203
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !4203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4204, !tbaa.struct !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4127, metadata !2263) #11, !dbg !4205
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2590, metadata !730) #11, !dbg !4206
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2591, metadata !730) #11, !dbg !4208
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2592, metadata !730) #11, !dbg !4209
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2593, metadata !730) #11, !dbg !4210
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4211
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2594, metadata !730) #11, !dbg !4212
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2596, metadata !730) #11, !dbg !4213
  %5 = load i32, i32* %4, align 4, !dbg !4214, !tbaa !947
  %6 = or i32 %5, 67108864, !dbg !4215
  store i32 %6, i32* %4, align 4, !dbg !4215, !tbaa !947
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4127, metadata !2263) #11, !dbg !4205
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !4216
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !4217
  ret i8* %7, !dbg !4218
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4219 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4221, metadata !730), !dbg !4223
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4222, metadata !730), !dbg !4224
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4124, metadata !730) #11, !dbg !4225
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4125, metadata !730) #11, !dbg !4227
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4126, metadata !730) #11, !dbg !4228
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4229
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !4229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4230, !tbaa.struct !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4127, metadata !2263) #11, !dbg !4231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2590, metadata !730) #11, !dbg !4232
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2591, metadata !730) #11, !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2592, metadata !730) #11, !dbg !4235
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2593, metadata !730) #11, !dbg !4236
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4237
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2594, metadata !730) #11, !dbg !4238
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2596, metadata !730) #11, !dbg !4239
  %6 = load i32, i32* %5, align 4, !dbg !4240, !tbaa !947
  %7 = or i32 %6, 67108864, !dbg !4241
  store i32 %7, i32* %5, align 4, !dbg !4241, !tbaa !947
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4127, metadata !2263) #11, !dbg !4231
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !4242
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !4243
  ret i8* %8, !dbg !4244
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4245 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4000, metadata !4006), !dbg !4251
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4247, metadata !730), !dbg !4253
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4248, metadata !730), !dbg !4254
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4249, metadata !730), !dbg !4255
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4256
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !4256
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4005, metadata !730) #11, !dbg !4257
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4258
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4258
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4000, metadata !730) #11, !dbg !4251
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4000, metadata !4016) #11, !dbg !4251
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4251
  %9 = icmp eq i32 %1, 10, !dbg !4259
  br i1 %9, label %10, label %11, !dbg !4260

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4261, !noalias !4262
  unreachable, !dbg !4261

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4000, metadata !4016) #11, !dbg !4251
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4265
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4266
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4267
  store i32 %1, i32* %13, align 8, !dbg !4267
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4267
  %15 = bitcast i32* %14 to i8*, !dbg !4267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4250, metadata !2263), !dbg !4268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2590, metadata !730), !dbg !4269
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2591, metadata !730), !dbg !4271
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2592, metadata !730), !dbg !4272
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2593, metadata !730), !dbg !4273
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4274
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2594, metadata !730), !dbg !4275
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2596, metadata !730), !dbg !4276
  %17 = load i32, i32* %16, align 4, !dbg !4277, !tbaa !947
  %18 = or i32 %17, 67108864, !dbg !4278
  store i32 %18, i32* %16, align 4, !dbg !4278, !tbaa !947
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4250, metadata !2263), !dbg !4268
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4279
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !4280
  ret i8* %19, !dbg !4281
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4282 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4286, metadata !730), !dbg !4290
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4287, metadata !730), !dbg !4291
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4288, metadata !730), !dbg !4292
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4289, metadata !730), !dbg !4293
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4294, metadata !730) #11, !dbg !4304
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4299, metadata !730) #11, !dbg !4306
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4300, metadata !730) #11, !dbg !4307
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4301, metadata !730) #11, !dbg !4308
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4302, metadata !730) #11, !dbg !4309
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4310
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4311, !tbaa.struct !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4303, metadata !2263) #11, !dbg !4312
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2640, metadata !730) #11, !dbg !4313
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2641, metadata !730) #11, !dbg !4315
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2642, metadata !730) #11, !dbg !4316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2640, metadata !730) #11, !dbg !4313
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2640, metadata !730) #11, !dbg !4313
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4317
  store i32 10, i32* %7, align 8, !dbg !4318, !tbaa !2570
  %8 = icmp ne i8* %1, null, !dbg !4319
  %9 = icmp ne i8* %2, null, !dbg !4320
  %10 = and i1 %8, %9, !dbg !4321
  br i1 %10, label %12, label %11, !dbg !4321

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4322
  unreachable, !dbg !4322

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4323
  store i8* %1, i8** %13, align 8, !dbg !4324, !tbaa !2659
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4325
  store i8* %2, i8** %14, align 8, !dbg !4326, !tbaa !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4303, metadata !2263) #11, !dbg !4312
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !4327
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4328
  ret i8* %15, !dbg !4329
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4295 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4294, metadata !730), !dbg !4330
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4299, metadata !730), !dbg !4331
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4300, metadata !730), !dbg !4332
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4301, metadata !730), !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4302, metadata !730), !dbg !4334
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4335
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !4335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4336, !tbaa.struct !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4303, metadata !2263), !dbg !4337
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2640, metadata !730) #11, !dbg !4338
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2641, metadata !730) #11, !dbg !4340
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2642, metadata !730) #11, !dbg !4341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2640, metadata !730) #11, !dbg !4338
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2640, metadata !730) #11, !dbg !4338
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4342
  store i32 10, i32* %8, align 8, !dbg !4343, !tbaa !2570
  %9 = icmp ne i8* %1, null, !dbg !4344
  %10 = icmp ne i8* %2, null, !dbg !4345
  %11 = and i1 %9, %10, !dbg !4346
  br i1 %11, label %13, label %12, !dbg !4346

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !4347
  unreachable, !dbg !4347

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4348
  store i8* %1, i8** %14, align 8, !dbg !4349, !tbaa !2659
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4350
  store i8* %2, i8** %15, align 8, !dbg !4351, !tbaa !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4303, metadata !2263), !dbg !4337
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4352
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !4353
  ret i8* %16, !dbg !4354
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4355 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4359, metadata !730), !dbg !4362
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4360, metadata !730), !dbg !4363
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4361, metadata !730), !dbg !4364
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4286, metadata !730) #11, !dbg !4365
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4287, metadata !730) #11, !dbg !4367
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4288, metadata !730) #11, !dbg !4368
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4289, metadata !730) #11, !dbg !4369
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4294, metadata !730) #11, !dbg !4370
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4299, metadata !730) #11, !dbg !4372
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4300, metadata !730) #11, !dbg !4373
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4301, metadata !730) #11, !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4302, metadata !730) #11, !dbg !4375
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4376
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !4376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4377, !tbaa.struct !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4303, metadata !2263) #11, !dbg !4378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2640, metadata !730) #11, !dbg !4379
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2641, metadata !730) #11, !dbg !4381
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2642, metadata !730) #11, !dbg !4382
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2640, metadata !730) #11, !dbg !4379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2640, metadata !730) #11, !dbg !4379
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4383
  store i32 10, i32* %6, align 8, !dbg !4384, !tbaa !2570
  %7 = icmp ne i8* %0, null, !dbg !4385
  %8 = icmp ne i8* %1, null, !dbg !4386
  %9 = and i1 %7, %8, !dbg !4387
  br i1 %9, label %11, label %10, !dbg !4387

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4388
  unreachable, !dbg !4388

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4389
  store i8* %0, i8** %12, align 8, !dbg !4390, !tbaa !2659
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4391
  store i8* %1, i8** %13, align 8, !dbg !4392, !tbaa !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4303, metadata !2263) #11, !dbg !4378
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !4393
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !4394
  ret i8* %14, !dbg !4395
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4396 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4400, metadata !730), !dbg !4404
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4401, metadata !730), !dbg !4405
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4402, metadata !730), !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4403, metadata !730), !dbg !4407
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4294, metadata !730) #11, !dbg !4408
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4299, metadata !730) #11, !dbg !4410
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4300, metadata !730) #11, !dbg !4411
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4301, metadata !730) #11, !dbg !4412
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4302, metadata !730) #11, !dbg !4413
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4414
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4415, !tbaa.struct !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4303, metadata !2263) #11, !dbg !4416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2640, metadata !730) #11, !dbg !4417
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2641, metadata !730) #11, !dbg !4419
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2642, metadata !730) #11, !dbg !4420
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2640, metadata !730) #11, !dbg !4417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2640, metadata !730) #11, !dbg !4417
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4421
  store i32 10, i32* %7, align 8, !dbg !4422, !tbaa !2570
  %8 = icmp ne i8* %0, null, !dbg !4423
  %9 = icmp ne i8* %1, null, !dbg !4424
  %10 = and i1 %8, %9, !dbg !4425
  br i1 %10, label %12, label %11, !dbg !4425

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4426
  unreachable, !dbg !4426

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4427
  store i8* %0, i8** %13, align 8, !dbg !4428, !tbaa !2659
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4429
  store i8* %1, i8** %14, align 8, !dbg !4430, !tbaa !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4303, metadata !2263) #11, !dbg !4416
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !4431
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4432
  ret i8* %15, !dbg !4433
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4434 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4438, metadata !730), !dbg !4441
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4439, metadata !730), !dbg !4442
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4440, metadata !730), !dbg !4443
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4444
  ret i8* %4, !dbg !4445
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4446 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4450, metadata !730), !dbg !4452
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4451, metadata !730), !dbg !4453
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !730) #11, !dbg !4454
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4439, metadata !730) #11, !dbg !4456
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4440, metadata !730) #11, !dbg !4457
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4458
  ret i8* %3, !dbg !4459
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4460 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4464, metadata !730), !dbg !4466
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4465, metadata !730), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4438, metadata !730) #11, !dbg !4468
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4439, metadata !730) #11, !dbg !4470
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4440, metadata !730) #11, !dbg !4471
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4472
  ret i8* %3, !dbg !4473
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4474 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4478, metadata !730), !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4464, metadata !730) #11, !dbg !4480
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4465, metadata !730) #11, !dbg !4482
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !730) #11, !dbg !4483
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4439, metadata !730) #11, !dbg !4485
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4440, metadata !730) #11, !dbg !4486
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4487
  ret i8* %2, !dbg !4488
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4489 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4534, metadata !730), !dbg !4540
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4535, metadata !730), !dbg !4541
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4536, metadata !730), !dbg !4542
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4537, metadata !730), !dbg !4543
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4538, metadata !730), !dbg !4544
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4539, metadata !730), !dbg !4545
  %7 = icmp eq i8* %1, null, !dbg !4546
  br i1 %7, label %10, label %8, !dbg !4548

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !4549
  br label %12, !dbg !4549

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !4550
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.86, i64 0, i64 0), i32 5) #11, !dbg !4551
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !4552
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.87, i64 0, i64 0), i32 5) #11, !dbg !4554
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !4555
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
  ], !dbg !4556

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4557
  unreachable, !dbg !4557

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.88, i64 0, i64 0), i32 5) #11, !dbg !4559
  %20 = load i8*, i8** %4, align 8, !dbg !4559, !tbaa !738
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !4560
  br label %146, !dbg !4562

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.89, i64 0, i64 0), i32 5) #11, !dbg !4563
  %24 = load i8*, i8** %4, align 8, !dbg !4563, !tbaa !738
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4563
  %26 = load i8*, i8** %25, align 8, !dbg !4563, !tbaa !738
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !4564
  br label %146, !dbg !4565

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.90, i64 0, i64 0), i32 5) #11, !dbg !4566
  %30 = load i8*, i8** %4, align 8, !dbg !4566, !tbaa !738
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4566
  %32 = load i8*, i8** %31, align 8, !dbg !4566, !tbaa !738
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4566
  %34 = load i8*, i8** %33, align 8, !dbg !4566, !tbaa !738
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !4567
  br label %146, !dbg !4568

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.91, i64 0, i64 0), i32 5) #11, !dbg !4569
  %38 = load i8*, i8** %4, align 8, !dbg !4569, !tbaa !738
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4569
  %40 = load i8*, i8** %39, align 8, !dbg !4569, !tbaa !738
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4569
  %42 = load i8*, i8** %41, align 8, !dbg !4569, !tbaa !738
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4569
  %44 = load i8*, i8** %43, align 8, !dbg !4569, !tbaa !738
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !4570
  br label %146, !dbg !4571

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.92, i64 0, i64 0), i32 5) #11, !dbg !4572
  %48 = load i8*, i8** %4, align 8, !dbg !4572, !tbaa !738
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4572
  %50 = load i8*, i8** %49, align 8, !dbg !4572, !tbaa !738
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4572
  %52 = load i8*, i8** %51, align 8, !dbg !4572, !tbaa !738
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4572
  %54 = load i8*, i8** %53, align 8, !dbg !4572, !tbaa !738
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4572
  %56 = load i8*, i8** %55, align 8, !dbg !4572, !tbaa !738
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !4573
  br label %146, !dbg !4574

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.93, i64 0, i64 0), i32 5) #11, !dbg !4575
  %60 = load i8*, i8** %4, align 8, !dbg !4575, !tbaa !738
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4575
  %62 = load i8*, i8** %61, align 8, !dbg !4575, !tbaa !738
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4575
  %64 = load i8*, i8** %63, align 8, !dbg !4575, !tbaa !738
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4575
  %66 = load i8*, i8** %65, align 8, !dbg !4575, !tbaa !738
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4575
  %68 = load i8*, i8** %67, align 8, !dbg !4575, !tbaa !738
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4575
  %70 = load i8*, i8** %69, align 8, !dbg !4575, !tbaa !738
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !4576
  br label %146, !dbg !4577

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.94, i64 0, i64 0), i32 5) #11, !dbg !4578
  %74 = load i8*, i8** %4, align 8, !dbg !4578, !tbaa !738
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4578
  %76 = load i8*, i8** %75, align 8, !dbg !4578, !tbaa !738
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4578
  %78 = load i8*, i8** %77, align 8, !dbg !4578, !tbaa !738
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4578
  %80 = load i8*, i8** %79, align 8, !dbg !4578, !tbaa !738
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4578
  %82 = load i8*, i8** %81, align 8, !dbg !4578, !tbaa !738
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4578
  %84 = load i8*, i8** %83, align 8, !dbg !4578, !tbaa !738
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4578
  %86 = load i8*, i8** %85, align 8, !dbg !4578, !tbaa !738
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !4579
  br label %146, !dbg !4580

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.95, i64 0, i64 0), i32 5) #11, !dbg !4581
  %90 = load i8*, i8** %4, align 8, !dbg !4581, !tbaa !738
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4581
  %92 = load i8*, i8** %91, align 8, !dbg !4581, !tbaa !738
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4581
  %94 = load i8*, i8** %93, align 8, !dbg !4581, !tbaa !738
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4581
  %96 = load i8*, i8** %95, align 8, !dbg !4581, !tbaa !738
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4581
  %98 = load i8*, i8** %97, align 8, !dbg !4581, !tbaa !738
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4581
  %100 = load i8*, i8** %99, align 8, !dbg !4581, !tbaa !738
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4581
  %102 = load i8*, i8** %101, align 8, !dbg !4581, !tbaa !738
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4581
  %104 = load i8*, i8** %103, align 8, !dbg !4581, !tbaa !738
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !4582
  br label %146, !dbg !4583

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.96, i64 0, i64 0), i32 5) #11, !dbg !4584
  %108 = load i8*, i8** %4, align 8, !dbg !4584, !tbaa !738
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4584
  %110 = load i8*, i8** %109, align 8, !dbg !4584, !tbaa !738
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4584
  %112 = load i8*, i8** %111, align 8, !dbg !4584, !tbaa !738
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4584
  %114 = load i8*, i8** %113, align 8, !dbg !4584, !tbaa !738
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4584
  %116 = load i8*, i8** %115, align 8, !dbg !4584, !tbaa !738
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4584
  %118 = load i8*, i8** %117, align 8, !dbg !4584, !tbaa !738
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4584
  %120 = load i8*, i8** %119, align 8, !dbg !4584, !tbaa !738
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4584
  %122 = load i8*, i8** %121, align 8, !dbg !4584, !tbaa !738
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4584
  %124 = load i8*, i8** %123, align 8, !dbg !4584, !tbaa !738
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !4585
  br label %146, !dbg !4586

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.97, i64 0, i64 0), i32 5) #11, !dbg !4587
  %128 = load i8*, i8** %4, align 8, !dbg !4587, !tbaa !738
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4587
  %130 = load i8*, i8** %129, align 8, !dbg !4587, !tbaa !738
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4587
  %132 = load i8*, i8** %131, align 8, !dbg !4587, !tbaa !738
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4587
  %134 = load i8*, i8** %133, align 8, !dbg !4587, !tbaa !738
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4587
  %136 = load i8*, i8** %135, align 8, !dbg !4587, !tbaa !738
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4587
  %138 = load i8*, i8** %137, align 8, !dbg !4587, !tbaa !738
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4587
  %140 = load i8*, i8** %139, align 8, !dbg !4587, !tbaa !738
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4587
  %142 = load i8*, i8** %141, align 8, !dbg !4587, !tbaa !738
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4587
  %144 = load i8*, i8** %143, align 8, !dbg !4587, !tbaa !738
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !4588
  br label %146, !dbg !4589

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4590
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4591 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4595, metadata !730), !dbg !4601
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4596, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4597, metadata !730), !dbg !4603
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4598, metadata !730), !dbg !4604
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4599, metadata !730), !dbg !4605
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4600, metadata !730), !dbg !4606
  br label %6, !dbg !4607

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4600, metadata !730), !dbg !4606
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4609
  %9 = load i8*, i8** %8, align 8, !dbg !4609, !tbaa !738
  %10 = icmp eq i8* %9, null, !dbg !4612
  %11 = add i64 %7, 1, !dbg !4614
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4600, metadata !730), !dbg !4606
  br i1 %10, label %12, label %6, !dbg !4612, !llvm.loop !4616

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4619
  ret void, !dbg !4620
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4621 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4632, metadata !730), !dbg !4640
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4633, metadata !730), !dbg !4641
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4634, metadata !730), !dbg !4642
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4635, metadata !730), !dbg !4643
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4636, metadata !730), !dbg !4644
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4645
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !4645
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4638, metadata !730), !dbg !4646
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4637, metadata !730), !dbg !4647
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4648
  %12 = icmp ult i32 %11, 41, !dbg !4648
  br i1 %12, label %13, label %18, !dbg !4648

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4652
  %15 = sext i32 %11 to i64, !dbg !4652
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4652
  %17 = add i32 %11, 8, !dbg !4652
  store i32 %17, i32* %8, align 8, !dbg !4652
  br label %21, !dbg !4652

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4654
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4654
  store i8* %20, i8** %10, align 8, !dbg !4654
  br label %21, !dbg !4654

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4648
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4656
  %25 = load i8*, i8** %24, align 8, !dbg !4656
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4658
  store i8* %25, i8** %26, align 16, !dbg !4659, !tbaa !738
  %27 = icmp eq i8* %25, null, !dbg !4660
  br i1 %27, label %30, label %28, !dbg !4661

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %29 = icmp ult i32 %22, 41, !dbg !4648
  br i1 %29, label %35, label %32, !dbg !4648

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4663
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !4664
  ret void, !dbg !4664

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4654
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4654
  store i8* %34, i8** %10, align 8, !dbg !4654
  br label %40, !dbg !4654

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4652
  %37 = sext i32 %22 to i64, !dbg !4652
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4652
  %39 = add i32 %22, 8, !dbg !4652
  store i32 %39, i32* %8, align 8, !dbg !4652
  br label %40, !dbg !4652

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4648
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4656
  %44 = load i8*, i8** %43, align 8, !dbg !4656
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4658
  store i8* %44, i8** %45, align 8, !dbg !4659, !tbaa !738
  %46 = icmp eq i8* %44, null, !dbg !4660
  br i1 %46, label %30, label %47, !dbg !4661

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %48 = icmp ult i32 %41, 41, !dbg !4648
  br i1 %48, label %52, label %49, !dbg !4648

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4654
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4654
  store i8* %51, i8** %10, align 8, !dbg !4654
  br label %57, !dbg !4654

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4652
  %54 = sext i32 %41 to i64, !dbg !4652
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4652
  %56 = add i32 %41, 8, !dbg !4652
  store i32 %56, i32* %8, align 8, !dbg !4652
  br label %57, !dbg !4652

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4648
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4656
  %61 = load i8*, i8** %60, align 8, !dbg !4656
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4658
  store i8* %61, i8** %62, align 16, !dbg !4659, !tbaa !738
  %63 = icmp eq i8* %61, null, !dbg !4660
  br i1 %63, label %30, label %64, !dbg !4661

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %65 = icmp ult i32 %58, 41, !dbg !4648
  br i1 %65, label %69, label %66, !dbg !4648

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4654
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4654
  store i8* %68, i8** %10, align 8, !dbg !4654
  br label %74, !dbg !4654

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4652
  %71 = sext i32 %58 to i64, !dbg !4652
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4652
  %73 = add i32 %58, 8, !dbg !4652
  store i32 %73, i32* %8, align 8, !dbg !4652
  br label %74, !dbg !4652

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4648
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4656
  %78 = load i8*, i8** %77, align 8, !dbg !4656
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4658
  store i8* %78, i8** %79, align 8, !dbg !4659, !tbaa !738
  %80 = icmp eq i8* %78, null, !dbg !4660
  br i1 %80, label %30, label %81, !dbg !4661

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %82 = icmp ult i32 %75, 41, !dbg !4648
  br i1 %82, label %86, label %83, !dbg !4648

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4654
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4654
  store i8* %85, i8** %10, align 8, !dbg !4654
  br label %91, !dbg !4654

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4652
  %88 = sext i32 %75 to i64, !dbg !4652
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4652
  %90 = add i32 %75, 8, !dbg !4652
  store i32 %90, i32* %8, align 8, !dbg !4652
  br label %91, !dbg !4652

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4648
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4656
  %95 = load i8*, i8** %94, align 8, !dbg !4656
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4658
  store i8* %95, i8** %96, align 16, !dbg !4659, !tbaa !738
  %97 = icmp eq i8* %95, null, !dbg !4660
  br i1 %97, label %30, label %98, !dbg !4661

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %99 = icmp ult i32 %92, 41, !dbg !4648
  br i1 %99, label %103, label %100, !dbg !4648

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4654
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4654
  store i8* %102, i8** %10, align 8, !dbg !4654
  br label %108, !dbg !4654

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4652
  %105 = sext i32 %92 to i64, !dbg !4652
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4652
  %107 = add i32 %92, 8, !dbg !4652
  store i32 %107, i32* %8, align 8, !dbg !4652
  br label %108, !dbg !4652

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4656
  %111 = load i8*, i8** %110, align 8, !dbg !4656
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4658
  store i8* %111, i8** %112, align 8, !dbg !4659, !tbaa !738
  %113 = icmp eq i8* %111, null, !dbg !4660
  br i1 %113, label %30, label %114, !dbg !4661

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %115 = load i8*, i8** %10, align 8, !dbg !4654
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4654
  store i8* %116, i8** %10, align 8, !dbg !4654
  %117 = bitcast i8* %115 to i8**, !dbg !4656
  %118 = load i8*, i8** %117, align 8, !dbg !4656
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4658
  store i8* %118, i8** %119, align 16, !dbg !4659, !tbaa !738
  %120 = icmp eq i8* %118, null, !dbg !4660
  br i1 %120, label %30, label %121, !dbg !4661

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %122 = load i8*, i8** %10, align 8, !dbg !4654
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4654
  store i8* %123, i8** %10, align 8, !dbg !4654
  %124 = bitcast i8* %122 to i8**, !dbg !4656
  %125 = load i8*, i8** %124, align 8, !dbg !4656
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4658
  store i8* %125, i8** %126, align 8, !dbg !4659, !tbaa !738
  %127 = icmp eq i8* %125, null, !dbg !4660
  br i1 %127, label %30, label %128, !dbg !4661

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %129 = load i8*, i8** %10, align 8, !dbg !4654
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4654
  store i8* %130, i8** %10, align 8, !dbg !4654
  %131 = bitcast i8* %129 to i8**, !dbg !4656
  %132 = load i8*, i8** %131, align 8, !dbg !4656
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4658
  store i8* %132, i8** %133, align 16, !dbg !4659, !tbaa !738
  %134 = icmp eq i8* %132, null, !dbg !4660
  br i1 %134, label %30, label %135, !dbg !4661

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %136 = load i8*, i8** %10, align 8, !dbg !4654
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4654
  store i8* %137, i8** %10, align 8, !dbg !4654
  %138 = bitcast i8* %136 to i8**, !dbg !4656
  %139 = load i8*, i8** %138, align 8, !dbg !4656
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4658
  store i8* %139, i8** %140, align 8, !dbg !4659, !tbaa !738
  %141 = icmp eq i8* %139, null, !dbg !4660
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4637, metadata !730), !dbg !4647
  %142 = select i1 %141, i64 9, i64 10, !dbg !4661
  br label %30, !dbg !4661
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4665 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4669, metadata !730), !dbg !4679
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4670, metadata !730), !dbg !4680
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4671, metadata !730), !dbg !4681
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4672, metadata !730), !dbg !4682
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4683
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4683
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4673, metadata !730), !dbg !4684
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4685
  call void @llvm.va_start(i8* nonnull %6), !dbg !4685
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4686
  call void @llvm.va_end(i8* nonnull %6), !dbg !4687
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4688
  ret void, !dbg !4688
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4689 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.100, i64 0, i64 0), i32 5) #11, !dbg !4690
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.101, i64 0, i64 0)) #11, !dbg !4691
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.102, i64 0, i64 0), i32 5) #11, !dbg !4693
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.103, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.104, i64 0, i64 0)) #11, !dbg !4694
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.105, i64 0, i64 0), i32 5) #11, !dbg !4695
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4695, !tbaa !738
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4696
  ret void, !dbg !4697
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4698 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4702, metadata !730), !dbg !4704
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4703, metadata !730), !dbg !4705
  %3 = udiv i64 9223372036854775807, %1, !dbg !4706
  %4 = icmp ult i64 %3, %0, !dbg !4706
  br i1 %4, label %5, label %6, !dbg !4708

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4709
  unreachable, !dbg !4709

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4710
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4711, metadata !730) #11, !dbg !4718
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4720
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4717, metadata !730) #11, !dbg !4721
  %9 = icmp eq i8* %8, null, !dbg !4722
  %10 = icmp ne i64 %7, 0, !dbg !4724
  %11 = and i1 %10, %9, !dbg !4726
  br i1 %11, label %12, label %13, !dbg !4726

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4727
  unreachable, !dbg !4727

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4728
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4712 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4711, metadata !730), !dbg !4729
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4730
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4717, metadata !730), !dbg !4731
  %3 = icmp eq i8* %2, null, !dbg !4732
  %4 = icmp ne i64 %0, 0, !dbg !4733
  %5 = and i1 %4, %3, !dbg !4734
  br i1 %5, label %6, label %7, !dbg !4734

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4735
  unreachable, !dbg !4735

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4736
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4737 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4741, metadata !730), !dbg !4744
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4742, metadata !730), !dbg !4745
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4743, metadata !730), !dbg !4746
  %4 = udiv i64 9223372036854775807, %2, !dbg !4747
  %5 = icmp ult i64 %4, %1, !dbg !4747
  br i1 %5, label %6, label %7, !dbg !4749

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4750
  unreachable, !dbg !4750

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4751
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4752, metadata !730) #11, !dbg !4758
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4757, metadata !730) #11, !dbg !4760
  %9 = icmp eq i64 %8, 0, !dbg !4761
  %10 = icmp ne i8* %0, null, !dbg !4763
  %11 = and i1 %10, %9, !dbg !4765
  br i1 %11, label %12, label %13, !dbg !4765

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4766
  br label %19, !dbg !4768

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4769
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4752, metadata !730) #11, !dbg !4758
  %15 = icmp eq i8* %14, null, !dbg !4770
  %16 = icmp ne i64 %8, 0, !dbg !4772
  %17 = and i1 %16, %15, !dbg !4774
  br i1 %17, label %18, label %19, !dbg !4774

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4775
  unreachable, !dbg !4775

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4776
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4753 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4752, metadata !730), !dbg !4777
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4757, metadata !730), !dbg !4778
  %3 = icmp eq i64 %1, 0, !dbg !4779
  %4 = icmp ne i8* %0, null, !dbg !4780
  %5 = and i1 %4, %3, !dbg !4781
  br i1 %5, label %6, label %7, !dbg !4781

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4782
  br label %13, !dbg !4783

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4784
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4752, metadata !730), !dbg !4777
  %9 = icmp eq i8* %8, null, !dbg !4785
  %10 = icmp ne i64 %1, 0, !dbg !4786
  %11 = and i1 %10, %9, !dbg !4787
  br i1 %11, label %12, label %13, !dbg !4787

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4788
  unreachable, !dbg !4788

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4789
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !686 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !688, metadata !730), !dbg !4790
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !689, metadata !730), !dbg !4791
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !690, metadata !730), !dbg !4792
  %4 = load i64, i64* %1, align 8, !dbg !4793, !tbaa !879
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !691, metadata !730), !dbg !4794
  %5 = icmp eq i8* %0, null, !dbg !4795
  br i1 %5, label %6, label %13, !dbg !4797

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4798
  br i1 %7, label %8, label %17, !dbg !4801

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4802
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !691, metadata !730), !dbg !4794
  %10 = icmp ugt i64 %2, 128, !dbg !4804
  %11 = zext i1 %10 to i64, !dbg !4804
  %12 = add nuw nsw i64 %9, %11, !dbg !4805
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !691, metadata !730), !dbg !4794
  br label %17, !dbg !4806

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4807
  %15 = icmp ugt i64 %14, %4, !dbg !4810
  br i1 %15, label %20, label %16, !dbg !4811

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4812
  unreachable, !dbg !4812

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !691, metadata !730), !dbg !4794
  store i64 %18, i64* %1, align 8, !dbg !4813, !tbaa !879
  %19 = mul i64 %18, %2, !dbg !4814
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4752, metadata !730) #11, !dbg !4815
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4757, metadata !730) #11, !dbg !4817
  br label %27, !dbg !4818

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4819
  %22 = add i64 %4, 1, !dbg !4820
  %23 = add i64 %22, %21, !dbg !4821
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !691, metadata !730), !dbg !4794
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !691, metadata !730), !dbg !4794
  store i64 %23, i64* %1, align 8, !dbg !4813, !tbaa !879
  %24 = mul i64 %23, %2, !dbg !4814
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4752, metadata !730) #11, !dbg !4815
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4757, metadata !730) #11, !dbg !4817
  %25 = icmp eq i64 %24, 0, !dbg !4822
  br i1 %25, label %26, label %27, !dbg !4818

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4823
  br label %34, !dbg !4824

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4825
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4752, metadata !730) #11, !dbg !4815
  %30 = icmp eq i8* %29, null, !dbg !4826
  %31 = icmp ne i64 %28, 0, !dbg !4827
  %32 = and i1 %31, %30, !dbg !4828
  br i1 %32, label %33, label %34, !dbg !4828

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4829
  unreachable, !dbg !4829

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4830
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4831 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4833, metadata !730), !dbg !4834
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4711, metadata !730) #11, !dbg !4835
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4837
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4717, metadata !730) #11, !dbg !4838
  %3 = icmp eq i8* %2, null, !dbg !4839
  %4 = icmp ne i64 %0, 0, !dbg !4840
  %5 = and i1 %4, %3, !dbg !4841
  br i1 %5, label %6, label %7, !dbg !4841

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4842
  unreachable, !dbg !4842

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4843
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4844 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4848, metadata !730), !dbg !4850
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4849, metadata !730), !dbg !4851
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !688, metadata !730) #11, !dbg !4852
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !689, metadata !730) #11, !dbg !4854
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !690, metadata !730) #11, !dbg !4855
  %3 = load i64, i64* %1, align 8, !dbg !4856, !tbaa !879
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !691, metadata !730) #11, !dbg !4857
  %4 = icmp eq i8* %0, null, !dbg !4858
  br i1 %4, label %5, label %8, !dbg !4859

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4860
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !691, metadata !730) #11, !dbg !4857
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !691, metadata !730) #11, !dbg !4857
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4861
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !691, metadata !730) #11, !dbg !4857
  store i64 %7, i64* %1, align 8, !dbg !4862, !tbaa !879
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4752, metadata !730) #11, !dbg !4863
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4757, metadata !730) #11, !dbg !4865
  br label %17, !dbg !4866

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4867
  br i1 %9, label %11, label %10, !dbg !4868

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4869
  unreachable, !dbg !4869

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4870
  %13 = add i64 %3, 1, !dbg !4871
  %14 = add i64 %13, %12, !dbg !4872
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !691, metadata !730) #11, !dbg !4857
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !691, metadata !730) #11, !dbg !4857
  store i64 %14, i64* %1, align 8, !dbg !4862, !tbaa !879
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4752, metadata !730) #11, !dbg !4863
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4757, metadata !730) #11, !dbg !4865
  %15 = icmp eq i64 %14, 0, !dbg !4873
  br i1 %15, label %16, label %17, !dbg !4866

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4874
  br label %24, !dbg !4875

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4876
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4752, metadata !730) #11, !dbg !4863
  %20 = icmp eq i8* %19, null, !dbg !4877
  %21 = icmp ne i64 %18, 0, !dbg !4878
  %22 = and i1 %21, %20, !dbg !4879
  br i1 %22, label %23, label %24, !dbg !4879

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4880
  unreachable, !dbg !4880

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4881
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4882 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4884, metadata !730), !dbg !4885
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4711, metadata !730) #11, !dbg !4886
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4888
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4717, metadata !730) #11, !dbg !4889
  %3 = icmp eq i8* %2, null, !dbg !4890
  %4 = icmp ne i64 %0, 0, !dbg !4891
  %5 = and i1 %4, %3, !dbg !4892
  br i1 %5, label %6, label %7, !dbg !4892

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4893
  unreachable, !dbg !4893

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4894
  ret i8* %2, !dbg !4895
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4896 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4898, metadata !730), !dbg !4901
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4899, metadata !730), !dbg !4902
  %3 = udiv i64 9223372036854775807, %1, !dbg !4903
  %4 = icmp ult i64 %3, %0, !dbg !4903
  br i1 %4, label %8, label %5, !dbg !4905

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4906
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4900, metadata !730), !dbg !4908
  %7 = icmp eq i8* %6, null, !dbg !4909
  br i1 %7, label %8, label %9, !dbg !4910

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4912
  unreachable, !dbg !4912

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4913
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4914 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4918, metadata !730), !dbg !4920
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4919, metadata !730), !dbg !4921
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4711, metadata !730) #11, !dbg !4922
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4924
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4717, metadata !730) #11, !dbg !4925
  %4 = icmp eq i8* %3, null, !dbg !4926
  %5 = icmp ne i64 %1, 0, !dbg !4927
  %6 = and i1 %5, %4, !dbg !4928
  br i1 %6, label %7, label %8, !dbg !4928

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4929
  unreachable, !dbg !4929

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4930
  ret i8* %3, !dbg !4931
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4932 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4934, metadata !730), !dbg !4935
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4936
  %3 = add i64 %2, 1, !dbg !4937
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4918, metadata !730) #11, !dbg !4938
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4919, metadata !730) #11, !dbg !4941
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4711, metadata !730) #11, !dbg !4942
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4944
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4717, metadata !730) #11, !dbg !4945
  %5 = icmp eq i8* %4, null, !dbg !4946
  %6 = icmp ne i64 %3, 0, !dbg !4947
  %7 = and i1 %6, %5, !dbg !4948
  br i1 %7, label %8, label %9, !dbg !4948

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4949
  unreachable, !dbg !4949

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4950
  ret i8* %4, !dbg !4951
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4952 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4954, !tbaa !947
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #11, !dbg !4955
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), i8* %2) #11, !dbg !4956
  tail call void @abort() #14, !dbg !4958
  unreachable, !dbg !4958
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4959 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4962, metadata !730), !dbg !4965
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4963, metadata !730), !dbg !4966
  %3 = tail call noalias i8* @__strndup(i8* %0, i64 %1) #11, !dbg !4967
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4964, metadata !730), !dbg !4968
  %4 = icmp eq i8* %3, null, !dbg !4969
  br i1 %4, label %5, label %6, !dbg !4971

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4972
  unreachable, !dbg !4972

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !4973
}

; Function Attrs: nounwind
declare noalias i8* @__strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4974 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4977, metadata !730), !dbg !4983
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4978, metadata !730), !dbg !4984
  %3 = icmp eq i64 %0, 0, !dbg !4985
  %4 = icmp eq i64 %1, 0, !dbg !4986
  %5 = or i1 %3, %4, !dbg !4988
  br i1 %5, label %12, label %6, !dbg !4988

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4989
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4980, metadata !730), !dbg !4990
  %8 = udiv i64 %7, %1, !dbg !4991
  %9 = icmp eq i64 %8, %0, !dbg !4993
  br i1 %9, label %12, label %10, !dbg !4994

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4995
  store i32 12, i32* %11, align 4, !dbg !4997, !tbaa !947
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4977, metadata !730), !dbg !4983
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4978, metadata !730), !dbg !4984
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4998
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4979, metadata !730), !dbg !4999
  br label %16, !dbg !5000

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5001
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5002 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5047, metadata !730), !dbg !5051
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5048, metadata !730), !dbg !5052
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5050, metadata !730), !dbg !5053
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5054
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5049, metadata !730), !dbg !5055
  %3 = icmp slt i32 %2, 0, !dbg !5056
  br i1 %3, label %4, label %6, !dbg !5058

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5059
  br label %24, !dbg !5060

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5061
  %8 = icmp eq i32 %7, 0, !dbg !5061
  br i1 %8, label %13, label %9, !dbg !5063

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5064
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !5066
  %12 = icmp eq i64 %11, -1, !dbg !5068
  br i1 %12, label %16, label %13, !dbg !5069

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !5070
  %15 = icmp eq i32 %14, 0, !dbg !5070
  br i1 %15, label %16, label %18, !dbg !5071

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5048, metadata !730), !dbg !5052
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5073
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5050, metadata !730), !dbg !5053
  br label %24, !dbg !5074

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5075
  %20 = load i32, i32* %19, align 4, !dbg !5075, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5048, metadata !730), !dbg !5052
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5048, metadata !730), !dbg !5052
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5073
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5050, metadata !730), !dbg !5053
  %22 = icmp eq i32 %20, 0, !dbg !5076
  br i1 %22, label %24, label %23, !dbg !5074

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5078, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5050, metadata !730), !dbg !5053
  br label %24, !dbg !5080

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5081
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5082 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5127, metadata !730), !dbg !5128
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5129
  br i1 %2, label %6, label %3, !dbg !5131

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5132
  %5 = icmp eq i32 %4, 0, !dbg !5132
  br i1 %5, label %6, label %8, !dbg !5134

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5136
  br label %17, !dbg !5137

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5138, metadata !730) #11, !dbg !5143
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5145
  %10 = load i32, i32* %9, align 8, !dbg !5145, !tbaa !1286
  %11 = and i32 %10, 256, !dbg !5147
  %12 = icmp eq i32 %11, 0, !dbg !5147
  br i1 %12, label %15, label %13, !dbg !5148

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !5149
  br label %15, !dbg !5149

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5150
  br label %17, !dbg !5151

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5152
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @freadptr(%struct._IO_FILE* nocapture readonly, i64* nocapture) local_unnamed_addr #6 !dbg !5153 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5198, metadata !730), !dbg !5201
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5199, metadata !730), !dbg !5202
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5203
  %4 = load i8*, i8** %3, align 8, !dbg !5203, !tbaa !1149
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5205
  %6 = load i8*, i8** %5, align 8, !dbg !5205, !tbaa !5206
  %7 = icmp ugt i8* %4, %6, !dbg !5207
  br i1 %7, label %19, label %8, !dbg !5208

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5209
  %10 = bitcast i8** %9 to i64*, !dbg !5209
  %11 = load i64, i64* %10, align 8, !dbg !5209, !tbaa !1127
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5210
  %13 = bitcast i8** %12 to i64*, !dbg !5210
  %14 = load i64, i64* %13, align 8, !dbg !5210, !tbaa !1124
  %15 = sub i64 %11, %14, !dbg !5211
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !5200, metadata !730), !dbg !5212
  %16 = icmp eq i64 %15, 0, !dbg !5213
  br i1 %16, label %19, label %17, !dbg !5215

; <label>:17:                                     ; preds = %8
  %18 = inttoptr i64 %14 to i8*, !dbg !5215
  store i64 %15, i64* %1, align 8, !dbg !5216, !tbaa !879
  br label %19, !dbg !5217

; <label>:19:                                     ; preds = %8, %2, %17
  %20 = phi i8* [ %18, %17 ], [ null, %2 ], [ null, %8 ]
  ret i8* %20, !dbg !5218
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5219 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5264, metadata !730), !dbg !5270
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5265, metadata !730), !dbg !5271
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5266, metadata !730), !dbg !5272
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5273
  %5 = load i8*, i8** %4, align 8, !dbg !5273, !tbaa !1127
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5274
  %7 = load i8*, i8** %6, align 8, !dbg !5274, !tbaa !1124
  %8 = icmp eq i8* %5, %7, !dbg !5275
  br i1 %8, label %9, label %28, !dbg !5276

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5277
  %11 = load i8*, i8** %10, align 8, !dbg !5277, !tbaa !1149
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5279
  %13 = load i8*, i8** %12, align 8, !dbg !5279, !tbaa !5206
  %14 = icmp eq i8* %11, %13, !dbg !5280
  br i1 %14, label %15, label %28, !dbg !5281

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5282
  %17 = load i8*, i8** %16, align 8, !dbg !5282, !tbaa !5283
  %18 = icmp eq i8* %17, null, !dbg !5284
  br i1 %18, label %19, label %28, !dbg !5285

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5287
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5288
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5267, metadata !730), !dbg !5290
  %22 = icmp eq i64 %21, -1, !dbg !5291
  br i1 %22, label %30, label %23, !dbg !5293

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5294
  %25 = load i32, i32* %24, align 8, !dbg !5295, !tbaa !1286
  %26 = and i32 %25, -17, !dbg !5295
  store i32 %26, i32* %24, align 8, !dbg !5295, !tbaa !1286
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5296
  store i64 %21, i64* %27, align 8, !dbg !5297, !tbaa !5298
  br label %30, !dbg !5299

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5300
  br label %30, !dbg !5301

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5302
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5303 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5320, metadata !730), !dbg !5329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5321, metadata !730), !dbg !5330
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5322, metadata !730), !dbg !5331
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5323, metadata !730), !dbg !5332
  %6 = bitcast i32* %5 to i8*, !dbg !5333
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !5333
  %7 = icmp eq i32* %0, null, !dbg !5334
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5320, metadata !730), !dbg !5329
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5336
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5320, metadata !730), !dbg !5329
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !5337
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5324, metadata !730), !dbg !5338
  %10 = icmp ugt i64 %9, -3, !dbg !5339
  %11 = icmp ne i64 %2, 0, !dbg !5340
  %12 = and i1 %11, %10, !dbg !5342
  br i1 %12, label %13, label %18, !dbg !5342

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !5343
  br i1 %14, label %18, label %15, !dbg !5345

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5347, !tbaa !815
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5326, metadata !730), !dbg !5348
  %17 = zext i8 %16 to i32, !dbg !5349
  store i32 %17, i32* %8, align 4, !dbg !5350, !tbaa !947
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !5351
  ret i64 %19, !dbg !5351
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5352 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5397, metadata !730), !dbg !5402
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !5403
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5404, metadata !730), !dbg !5407
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5409
  %4 = load i32, i32* %3, align 8, !dbg !5409, !tbaa !1286
  %5 = and i32 %4, 32, !dbg !5409
  %6 = icmp eq i32 %5, 0, !dbg !5410
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !5411
  %8 = icmp ne i32 %7, 0, !dbg !5412
  br i1 %6, label %9, label %19, !dbg !5413

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5415
  %11 = icmp ne i64 %2, 0, !dbg !5415
  %12 = or i1 %11, %10, !dbg !5415
  %13 = sext i1 %8 to i32, !dbg !5415
  br i1 %12, label %22, label %14, !dbg !5415

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5417
  %16 = load i32, i32* %15, align 4, !dbg !5417, !tbaa !947
  %17 = icmp ne i32 %16, 9, !dbg !5419
  %18 = sext i1 %17 to i32, !dbg !5419
  br label %22, !dbg !5419

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5421

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5423
  store i32 0, i32* %21, align 4, !dbg !5425, !tbaa !947
  br label %22, !dbg !5423

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5426
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @freadseek(%struct._IO_FILE*, i64) local_unnamed_addr #6 !dbg !5427 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5472, metadata !730), !dbg !5489
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5473, metadata !730), !dbg !5490
  %5 = icmp eq i64 %1, 0, !dbg !5491
  br i1 %5, label %73, label %6, !dbg !5493

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @freadahead(%struct._IO_FILE* %0) #13, !dbg !5494
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5474, metadata !730), !dbg !5495
  %8 = bitcast i64* %3 to i8*
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  br label %10, !dbg !5496

; <label>:10:                                     ; preds = %38, %6
  %11 = phi i64 [ %7, %6 ], [ %43, %38 ]
  %12 = phi i64 [ %1, %6 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !5473, metadata !730), !dbg !5490
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5474, metadata !730), !dbg !5495
  %13 = icmp eq i64 %11, 0, !dbg !5497
  br i1 %13, label %44, label %14, !dbg !5499

; <label>:14:                                     ; preds = %10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #11, !dbg !5500
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !5476, metadata !2263), !dbg !5501
  %15 = call i8* @freadptr(%struct._IO_FILE* %0, i64* nonnull %3) #11, !dbg !5502
  %16 = icmp ne i8* %15, null, !dbg !5503
  %17 = load i64, i64* %3, align 8, !dbg !5504
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5476, metadata !730), !dbg !5501
  %18 = icmp ne i64 %17, 0, !dbg !5506
  %19 = and i1 %16, %18, !dbg !5507
  br i1 %19, label %20, label %32, !dbg !5507

; <label>:20:                                     ; preds = %14
  %21 = icmp ult i64 %17, %12, !dbg !5508
  %22 = select i1 %21, i64 %17, i64 %12, !dbg !5509
  call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5478, metadata !730), !dbg !5510
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5511, metadata !730), !dbg !5517
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5516, metadata !730), !dbg !5519
  %23 = load i8*, i8** %9, align 8, !dbg !5520, !tbaa !1124
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !5520
  store i8* %24, i8** %9, align 8, !dbg !5520, !tbaa !1124
  %25 = sub i64 %12, %22, !dbg !5521
  call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !5473, metadata !730), !dbg !5490
  %26 = icmp eq i64 %25, 0, !dbg !5522
  br i1 %26, label %27, label %28, !dbg !5524

; <label>:27:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !5473, metadata !730), !dbg !5490
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5474, metadata !730), !dbg !5495
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11, !dbg !5525
  br label %73

; <label>:28:                                     ; preds = %20
  %29 = sub i64 %11, %22, !dbg !5526
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !5474, metadata !730), !dbg !5495
  %30 = icmp eq i64 %29, 0, !dbg !5527
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !5473, metadata !730), !dbg !5490
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5474, metadata !730), !dbg !5495
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11, !dbg !5525
  br label %45

; <label>:32:                                     ; preds = %28, %14
  %33 = phi i64 [ %11, %14 ], [ %29, %28 ]
  %34 = phi i64 [ %12, %14 ], [ %25, %28 ]
  call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !5473, metadata !730), !dbg !5490
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !5474, metadata !730), !dbg !5495
  %35 = call i32 @fgetc(%struct._IO_FILE* %0), !dbg !5529
  %36 = icmp eq i32 %35, -1, !dbg !5531
  br i1 %36, label %37, label %38, !dbg !5532

; <label>:37:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !5473, metadata !730), !dbg !5490
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5474, metadata !730), !dbg !5495
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11, !dbg !5525
  br label %68

; <label>:38:                                     ; preds = %32
  %39 = add i64 %34, -1, !dbg !5533
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !5473, metadata !730), !dbg !5490
  %40 = icmp eq i64 %39, 0, !dbg !5534
  %41 = xor i1 %40, true, !dbg !5536
  %42 = sext i1 %41 to i64, !dbg !5536
  %43 = add i64 %42, %33, !dbg !5536
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !5473, metadata !730), !dbg !5490
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5474, metadata !730), !dbg !5495
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11, !dbg !5525
  br i1 %40, label %72, label %10

; <label>:44:                                     ; preds = %10
  br label %45, !dbg !5490

; <label>:45:                                     ; preds = %44, %31
  %46 = phi i64 [ %25, %31 ], [ %12, %44 ]
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !5473, metadata !730), !dbg !5490
  %47 = call i32 @fileno(%struct._IO_FILE* %0) #11, !dbg !5537
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !5475, metadata !730), !dbg !5538
  %48 = icmp sgt i32 %47, -1, !dbg !5539
  br i1 %48, label %49, label %54, !dbg !5540

; <label>:49:                                     ; preds = %45
  %50 = call i64 @lseek(i32 %47, i64 0, i32 1) #11, !dbg !5541
  %51 = icmp sgt i64 %50, -1, !dbg !5543
  br i1 %51, label %52, label %54, !dbg !5544

; <label>:52:                                     ; preds = %49
  %53 = call i32 @rpl_fseeko(%struct._IO_FILE* %0, i64 %46, i32 1) #11, !dbg !5545
  br label %73, !dbg !5547

; <label>:54:                                     ; preds = %49, %45
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !5548
  call void @llvm.lifetime.start(i64 4096, i8* nonnull %55) #11, !dbg !5548
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !5481, metadata !730), !dbg !5549
  br label %56, !dbg !5550, !llvm.loop !5551

; <label>:56:                                     ; preds = %64, %54
  %57 = phi i64 [ %46, %54 ], [ %63, %64 ]
  call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !5473, metadata !730), !dbg !5490
  %58 = icmp ult i64 %57, 4096, !dbg !5553
  %59 = select i1 %58, i64 %57, i64 4096, !dbg !5553
  call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !5487, metadata !730), !dbg !5554
  %60 = call i64 @fread(i8* nonnull %55, i64 1, i64 %59, %struct._IO_FILE* %0), !dbg !5555
  %61 = icmp ult i64 %60, %59, !dbg !5557
  %62 = select i1 %61, i64 0, i64 %59, !dbg !5558
  %63 = sub i64 %57, %62, !dbg !5558
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !5473, metadata !730), !dbg !5490
  br i1 %61, label %67, label %64

; <label>:64:                                     ; preds = %56
  %65 = icmp eq i64 %63, 0, !dbg !5559
  br i1 %65, label %66, label %56, !dbg !5560, !llvm.loop !5551

; <label>:66:                                     ; preds = %64
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %55) #11, !dbg !5562
  br label %73

; <label>:67:                                     ; preds = %56
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %55) #11, !dbg !5562
  br label %68

; <label>:68:                                     ; preds = %67, %37
  %69 = call i32 @ferror(%struct._IO_FILE* %0) #11, !dbg !5563
  %70 = icmp ne i32 %69, 0, !dbg !5565
  %71 = sext i1 %70 to i32, !dbg !5565
  br label %73, !dbg !5565

; <label>:72:                                     ; preds = %38
  br label %73, !dbg !5566

; <label>:73:                                     ; preds = %72, %27, %66, %68, %2, %52
  %74 = phi i32 [ %53, %52 ], [ 0, %2 ], [ %71, %68 ], [ 0, %66 ], [ 0, %27 ], [ 0, %72 ]
  ret i32 %74, !dbg !5566
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5567 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5572, metadata !730), !dbg !5592
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5573, metadata !730), !dbg !5593
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !5594
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5574, metadata !730), !dbg !5595
  %3 = icmp eq i8* %2, null, !dbg !5596
  br i1 %3, label %15, label %4, !dbg !5597

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5582, metadata !730), !dbg !5598
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5583, metadata !730), !dbg !5599
  %5 = load i8, i8* %2, align 1, !dbg !5600, !tbaa !815
  %6 = icmp eq i8 %5, 67, !dbg !5602
  br i1 %6, label %7, label %11, !dbg !5605

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5607
  %9 = load i8, i8* %8, align 1, !dbg !5607, !tbaa !815
  %10 = icmp eq i8 %9, 0, !dbg !5610
  br i1 %10, label %14, label %11, !dbg !5612

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5588, metadata !730), !dbg !5614
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0)) #11, !dbg !5615
  %13 = icmp eq i32 %12, 0, !dbg !5617
  br i1 %13, label %14, label %15, !dbg !5619

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5573, metadata !730), !dbg !5593
  br label %15, !dbg !5621

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5622
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5623 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5634, metadata !730), !dbg !5708
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5701, metadata !730), !dbg !5710
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !5711
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5626, metadata !730), !dbg !5712
  %4 = icmp eq i8* %3, null, !dbg !5713
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), i8* %3, !dbg !5715
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5626, metadata !730), !dbg !5712
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5716, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5648, metadata !730) #11, !dbg !5717
  %7 = icmp eq i8* %6, null, !dbg !5718
  br i1 %7, label %8, label %127, !dbg !5719

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.144, i64 0, i64 0)) #11, !dbg !5720
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5649, metadata !730) #11, !dbg !5721
  %10 = icmp eq i8* %9, null, !dbg !5722
  br i1 %10, label %14, label %11, !dbg !5724

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5725, !tbaa !815
  %13 = icmp eq i8 %12, 0, !dbg !5727
  br i1 %13, label %14, label %15, !dbg !5728

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5730

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.145, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5649, metadata !730) #11, !dbg !5721
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5731
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5652, metadata !730) #11, !dbg !5732
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5654, metadata !730) #11, !dbg !5733
  %18 = icmp eq i64 %17, 0, !dbg !5734
  br i1 %18, label %24, label %19, !dbg !5735

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5736
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5736
  %22 = load i8, i8* %21, align 1, !dbg !5736, !tbaa !815
  %23 = icmp ne i8 %22, 47, !dbg !5738
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5739
  %27 = add i64 %17, 14, !dbg !5740
  %28 = add i64 %27, %26, !dbg !5741
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !5742
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5651, metadata !730) #11, !dbg !5743
  %30 = icmp eq i8* %29, null, !dbg !5744
  br i1 %30, label %125, label %31, !dbg !5744

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !5745
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5748

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5749, !tbaa !815
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5751
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5752
  br label %37, !dbg !5753

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5751
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5752
  br label %37, !dbg !5753

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !5754
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5656, metadata !730) #11, !dbg !5755
  %39 = icmp slt i32 %38, 0, !dbg !5756
  br i1 %39, label %123, label %40, !dbg !5757

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.147, i64 0, i64 0)) #11, !dbg !5758
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5657, metadata !730) #11, !dbg !5759
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5760
  br i1 %42, label %48, label %43, !dbg !5761

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5762

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !5763
  br label %123, !dbg !5765

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5698, metadata !730) #11, !dbg !5762
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5699, metadata !730) #11, !dbg !5766
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !5767
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !5768
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5769, metadata !730) #11, !dbg !5774
  %53 = load i8*, i8** %46, align 8, !dbg !5776, !tbaa !1124
  %54 = load i8*, i8** %47, align 8, !dbg !5776, !tbaa !1127
  %55 = icmp ult i8* %53, %54, !dbg !5776
  br i1 %55, label %58, label %56, !dbg !5776, !prof !1128

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5777
  br label %62, !dbg !5777

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5779
  store i8* %59, i8** %46, align 8, !dbg !5779, !tbaa !1124
  %60 = load i8, i8* %53, align 1, !dbg !5779, !tbaa !815
  %61 = zext i8 %60 to i32, !dbg !5779
  br label %62, !dbg !5779

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5781
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5700, metadata !730) #11, !dbg !5783
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5784

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5785

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5769, metadata !730) #11, !dbg !5785
  %66 = load i8*, i8** %46, align 8, !dbg !5789, !tbaa !1124
  %67 = load i8*, i8** %47, align 8, !dbg !5789, !tbaa !1127
  %68 = icmp ult i8* %66, %67, !dbg !5789
  br i1 %68, label %71, label %69, !dbg !5789, !prof !1128

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5790
  br label %75, !dbg !5790

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5791
  store i8* %72, i8** %46, align 8, !dbg !5791, !tbaa !1124
  %73 = load i8, i8* %66, align 1, !dbg !5791, !tbaa !815
  %74 = zext i8 %73 to i32, !dbg !5791
  br label %75, !dbg !5791

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5792
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5700, metadata !730) #11, !dbg !5783
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5793, !llvm.loop !5795

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !5798
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.148, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !5799
  %80 = icmp slt i32 %79, 2, !dbg !5801
  br i1 %80, label %115, label %81, !dbg !5802

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5803
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5705, metadata !730) #11, !dbg !5804
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5805
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5706, metadata !730) #11, !dbg !5806
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5707, metadata !730) #11, !dbg !5807
  %84 = icmp eq i64 %51, 0, !dbg !5808
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5810

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5699, metadata !730) #11, !dbg !5766
  %89 = add i64 %86, 2, !dbg !5811
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !5813
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5698, metadata !730) #11, !dbg !5762
  br label %95, !dbg !5814

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5815
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5699, metadata !730) #11, !dbg !5766
  %93 = add i64 %92, 1, !dbg !5817
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !5818
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5698, metadata !730) #11, !dbg !5762
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5698, metadata !730) #11, !dbg !5762
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5699, metadata !730) #11, !dbg !5766
  %98 = icmp eq i8* %97, null, !dbg !5819
  br i1 %98, label %99, label %100, !dbg !5821

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5699, metadata !730) #11, !dbg !5766
  call void @free(i8* %52) #11, !dbg !5822
  br label %116, !dbg !5824

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5825
  %102 = xor i64 %83, -1, !dbg !5826
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5826
  %104 = xor i64 %82, -1, !dbg !5827
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5827
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5828, metadata !730) #11, !dbg !5837
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5836, metadata !730) #11, !dbg !5837
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !5839
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !5840
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5828, metadata !730) #11, !dbg !5841
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5836, metadata !730) #11, !dbg !5841
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !5843
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !5844
  br label %111, !dbg !5845

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5762

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5698, metadata !730) #11, !dbg !5762
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5699, metadata !730) #11, !dbg !5766
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5845
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5845
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5762

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5762

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5698, metadata !730) #11, !dbg !5762
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5699, metadata !730) #11, !dbg !5766
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5845
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5845
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5846
  %120 = icmp eq i64 %117, 0, !dbg !5847
  br i1 %120, label %123, label %121, !dbg !5849

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5850
  store i8 0, i8* %122, align 1, !dbg !5852, !tbaa !815
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5648, metadata !730) #11, !dbg !5717
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5648, metadata !730) #11, !dbg !5717
  call void @free(i8* %29) #11, !dbg !5853
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5648, metadata !730) #11, !dbg !5717
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5854, !tbaa !738
  br label %127, !dbg !5855

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5627, metadata !730), !dbg !5856
  %129 = load i8, i8* %128, align 1, !dbg !5857, !tbaa !815
  %130 = icmp eq i8 %129, 0, !dbg !5858
  br i1 %130, label %157, label %131, !dbg !5859

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5861

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !5861
  %136 = icmp eq i32 %135, 0, !dbg !5862
  br i1 %136, label %143, label %137, !dbg !5863

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5864
  br i1 %138, label %139, label %147, !dbg !5866

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5867
  %141 = load i8, i8* %140, align 1, !dbg !5867, !tbaa !815
  %142 = icmp eq i8 %141, 0, !dbg !5869
  br i1 %142, label %143, label %147, !dbg !5870

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5872
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5874
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5875
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5626, metadata !730), !dbg !5712
  br label %157, !dbg !5876

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5877
  %149 = add i64 %148, 1, !dbg !5878
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5879
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5627, metadata !730), !dbg !5856
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5880
  %152 = add i64 %151, 1, !dbg !5881
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5882
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5627, metadata !730), !dbg !5856
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5627, metadata !730), !dbg !5856
  %154 = load i8, i8* %153, align 1, !dbg !5857, !tbaa !815
  %155 = icmp eq i8 %154, 0, !dbg !5858
  br i1 %155, label %156, label %132, !dbg !5859, !llvm.loop !5883

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5712

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5626, metadata !730), !dbg !5712
  %159 = load i8, i8* %158, align 1, !dbg !5886, !tbaa !815
  %160 = icmp eq i8 %159, 0, !dbg !5888
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0), i8* %158, !dbg !5889
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5626, metadata !730), !dbg !5712
  ret i8* %161, !dbg !5890
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
define i64 @freadahead(%struct._IO_FILE* nocapture readonly) local_unnamed_addr #8 !dbg !5891 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5936, metadata !730), !dbg !5937
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5938
  %3 = load i8*, i8** %2, align 8, !dbg !5938, !tbaa !1149
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5940
  %5 = load i8*, i8** %4, align 8, !dbg !5940, !tbaa !5206
  %6 = icmp ugt i8* %3, %5, !dbg !5941
  br i1 %6, label %30, label %7, !dbg !5942

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5943
  %9 = bitcast i8** %8 to i64*, !dbg !5943
  %10 = load i64, i64* %9, align 8, !dbg !5943, !tbaa !1127
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5944
  %12 = bitcast i8** %11 to i64*, !dbg !5944
  %13 = load i64, i64* %12, align 8, !dbg !5944, !tbaa !1124
  %14 = sub i64 %10, %13, !dbg !5945
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5946
  %16 = load i32, i32* %15, align 8, !dbg !5946, !tbaa !1286
  %17 = and i32 %16, 256, !dbg !5947
  %18 = icmp eq i32 %17, 0, !dbg !5947
  br i1 %18, label %27, label %19, !dbg !5948

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11, !dbg !5949
  %21 = bitcast i8** %20 to i64*, !dbg !5949
  %22 = load i64, i64* %21, align 8, !dbg !5949, !tbaa !5951
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5952
  %24 = bitcast i8** %23 to i64*, !dbg !5952
  %25 = load i64, i64* %24, align 8, !dbg !5952, !tbaa !5283
  %26 = sub i64 %22, %25, !dbg !5953
  br label %27, !dbg !5954

; <label>:27:                                     ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ], !dbg !5955
  %29 = add nsw i64 %14, %28, !dbg !5957
  br label %30, !dbg !5958

; <label>:30:                                     ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ]
  ret i64 %31, !dbg !5959
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

!llvm.dbg.cu = !{!2, !146, !230, !236, !244, !663, !666, !669, !251, !258, !674, !309, !682, !693, !695, !697, !699, !701, !703, !706, !708, !711, !713, !715, !318, !718}
!llvm.ident = !{!720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720}
!llvm.module.flags = !{!721, !722, !723, !724}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "operating_mode", scope: !2, file: !3, line: 87, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !54)
!3 = !DIFile(filename: "src/cut.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !16, !30}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operating_mode", file: !3, line: 76, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "undefined_mode", value: 0)
!8 = !DIEnumerator(name: "byte_mode", value: 1)
!9 = !DIEnumerator(name: "field_mode", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 33, size: 32, elements: !12)
!11 = !DIFile(filename: "src/set-fields.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15}
!13 = !DIEnumerator(name: "SETFLD_ALLOW_DASH", value: 1)
!14 = !DIEnumerator(name: "SETFLD_COMPLEMENT", value: 2)
!15 = !DIEnumerator(name: "SETFLD_ERRMSG_USE_POS", value: 4)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !17, line: 32, size: 32, elements: !18)
!17 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!19 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!20 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!21 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!22 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!23 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!24 = !DIEnumerator(name: "c_quoting_style", value: 5)
!25 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!26 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!27 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!28 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!29 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 45, size: 32, elements: !32)
!31 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!34 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!35 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!36 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!37 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!38 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!39 = !{!40, !42, !43, !46, !48, !51, !53, !50}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 62, baseType: !45)
!44 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!54 = !{!55, !0, !73, !75, !77, !79, !81, !83, !85, !87, !117, !131, !133, !140, !142}
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "dummy", scope: !57, file: !3, line: 586, type: !70, isLocal: true, isDefinition: true)
!57 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 480, type: !58, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !62)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !60, !61}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!62 = !{!63, !64, !65, !66, !68, !69}
!63 = !DILocalVariable(name: "argc", arg: 1, scope: !57, file: !3, line: 480, type: !60)
!64 = !DILocalVariable(name: "argv", arg: 2, scope: !57, file: !3, line: 480, type: !61)
!65 = !DILocalVariable(name: "optc", scope: !57, file: !3, line: 482, type: !60)
!66 = !DILocalVariable(name: "ok", scope: !57, file: !3, line: 483, type: !67)
!67 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!68 = !DILocalVariable(name: "delim_specified", scope: !57, file: !3, line: 484, type: !67)
!69 = !DILocalVariable(name: "spec_list_string", scope: !57, file: !3, line: 485, type: !40)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 2)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "suppress_non_delimited", scope: !2, file: !3, line: 92, type: !67, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "complement", scope: !2, file: !3, line: 96, type: !67, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 99, type: !50, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "output_delimiter_specified", scope: !2, file: !3, line: 105, type: !67, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "output_delimiter_length", scope: !2, file: !3, line: 108, type: !43, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "output_delimiter_string", scope: !2, file: !3, line: 112, type: !40, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 115, type: !67, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "infomap", scope: !89, file: !90, line: 632, type: !114, isLocal: true, isDefinition: true)
!89 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !90, file: !90, line: 630, type: !91, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !93)
!90 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !DISubroutineType(types: !92)
!92 = !{null, !51}
!93 = !{!94, !95, !96, !103, !105, !106, !107, !110, !111, !113}
!94 = !DILocalVariable(name: "program", arg: 1, scope: !89, file: !90, line: 630, type: !51)
!95 = !DILocalVariable(name: "node", scope: !89, file: !90, line: 642, type: !51)
!96 = !DILocalVariable(name: "map_prog", scope: !89, file: !90, line: 643, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !89, file: !90, line: 632, size: 128, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !99, file: !90, line: 632, baseType: !51, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !99, file: !90, line: 632, baseType: !51, size: 64, offset: 64)
!103 = !DILocalVariable(name: "__s1_len", scope: !104, file: !90, line: 645, type: !43)
!104 = distinct !DILexicalBlock(scope: !89, file: !90, line: 645, column: 33)
!105 = !DILocalVariable(name: "__s2_len", scope: !104, file: !90, line: 645, type: !43)
!106 = !DILocalVariable(name: "lc_messages", scope: !89, file: !90, line: 655, type: !51)
!107 = !DILocalVariable(name: "__s1_len", scope: !108, file: !90, line: 656, type: !43)
!108 = distinct !DILexicalBlock(scope: !109, file: !90, line: 656, column: 22)
!109 = distinct !DILexicalBlock(scope: !89, file: !90, line: 656, column: 7)
!110 = !DILocalVariable(name: "__s2_len", scope: !108, file: !90, line: 656, type: !43)
!111 = !DILocalVariable(name: "__s2", scope: !112, file: !90, line: 656, type: !48)
!112 = distinct !DILexicalBlock(scope: !108, file: !90, line: 656, column: 22)
!113 = !DILocalVariable(name: "__result", scope: !112, file: !90, line: 656, type: !60)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 896, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 7)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 125, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 2816, elements: !129)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !122, line: 104, size: 256, elements: !123)
!122 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !{!124, !125, !126, !128}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !122, line: 106, baseType: !51, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !121, file: !122, line: 109, baseType: !60, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !121, file: !122, line: 110, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !121, file: !122, line: 111, baseType: !60, size: 32, offset: 192)
!129 = !{!130}
!130 = !DISubrange(count: 11)
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 102, type: !50, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134)
!134 = distinct !DIGlobalVariable(name: "current_rp", scope: !2, file: !3, line: 62, type: !135, isLocal: true, isDefinition: true)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !11, line: 20, size: 128, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !136, file: !11, line: 22, baseType: !43, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !136, file: !11, line: 23, baseType: !43, size: 64, offset: 64)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "field_1_buffer", scope: !2, file: !3, line: 71, type: !40, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143)
!143 = distinct !DIGlobalVariable(name: "field_1_bufsize", scope: !2, file: !3, line: 74, type: !43, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "n_frp", scope: !146, file: !147, line: 31, type: !43, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !177, globals: !186)
!147 = !DIFile(filename: "src/set-fields.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!10, !149, !164}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 46, size: 32, elements: !151)
!150 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!152 = !DIEnumerator(name: "_ISupper", value: 256)
!153 = !DIEnumerator(name: "_ISlower", value: 512)
!154 = !DIEnumerator(name: "_ISalpha", value: 1024)
!155 = !DIEnumerator(name: "_ISdigit", value: 2048)
!156 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!157 = !DIEnumerator(name: "_ISspace", value: 8192)
!158 = !DIEnumerator(name: "_ISprint", value: 16384)
!159 = !DIEnumerator(name: "_ISgraph", value: 32768)
!160 = !DIEnumerator(name: "_ISblank", value: 1)
!161 = !DIEnumerator(name: "_IScntrl", value: 2)
!162 = !DIEnumerator(name: "_ISpunct", value: 4)
!163 = !DIEnumerator(name: "_ISalnum", value: 8)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !166, file: !165, line: 192, size: 32, elements: !175)
!165 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!166 = distinct !DISubprogram(name: "x2nrealloc", scope: !165, file: !165, line: 180, type: !167, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !170)
!167 = !DISubroutineType(types: !168)
!168 = !{!42, !42, !169, !43}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!170 = !{!171, !172, !173, !174}
!171 = !DILocalVariable(name: "p", arg: 1, scope: !166, file: !165, line: 180, type: !42)
!172 = !DILocalVariable(name: "pn", arg: 2, scope: !166, file: !165, line: 180, type: !169)
!173 = !DILocalVariable(name: "s", arg: 3, scope: !166, file: !165, line: 180, type: !43)
!174 = !DILocalVariable(name: "n", scope: !166, file: !165, line: 182, type: !43)
!175 = !{!176}
!176 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!177 = !{!43, !46, !48, !51, !60, !178, !179, !169, !42, !180}
!178 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!179 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !11, line: 20, size: 128, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !182, file: !11, line: 22, baseType: !43, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !182, file: !11, line: 23, baseType: !43, size: 64, offset: 64)
!186 = !{!187, !223, !144, !226}
!187 = !DIGlobalVariableExpression(var: !188)
!188 = distinct !DIGlobalVariable(name: "num_start", scope: !189, file: !147, line: 241, type: !51, isLocal: true, isDefinition: true)
!189 = distinct !DISubprogram(name: "set_fields", scope: !147, file: !147, line: 139, type: !190, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !51, !179}
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !205, !206, !208, !209, !217, !218}
!193 = !DILocalVariable(name: "fieldstr", arg: 1, scope: !189, file: !147, line: 139, type: !51)
!194 = !DILocalVariable(name: "options", arg: 2, scope: !189, file: !147, line: 139, type: !179)
!195 = !DILocalVariable(name: "initial", scope: !189, file: !147, line: 141, type: !43)
!196 = !DILocalVariable(name: "value", scope: !189, file: !147, line: 142, type: !43)
!197 = !DILocalVariable(name: "lhs_specified", scope: !189, file: !147, line: 143, type: !67)
!198 = !DILocalVariable(name: "rhs_specified", scope: !189, file: !147, line: 144, type: !67)
!199 = !DILocalVariable(name: "dash_found", scope: !189, file: !147, line: 145, type: !67)
!200 = !DILocalVariable(name: "i", scope: !189, file: !147, line: 147, type: !43)
!201 = !DILocalVariable(name: "in_digits", scope: !189, file: !147, line: 148, type: !67)
!202 = !DILocalVariable(name: "__s1_len", scope: !203, file: !147, line: 153, type: !43)
!203 = distinct !DILexicalBlock(scope: !204, file: !147, line: 153, column: 40)
!204 = distinct !DILexicalBlock(scope: !189, file: !147, line: 153, column: 7)
!205 = !DILocalVariable(name: "__s2_len", scope: !203, file: !147, line: 153, type: !43)
!206 = !DILocalVariable(name: "__s2", scope: !207, file: !147, line: 153, type: !48)
!207 = distinct !DILexicalBlock(scope: !203, file: !147, line: 153, column: 40)
!208 = !DILocalVariable(name: "__result", scope: !207, file: !147, line: 153, type: !60)
!209 = !DILocalVariable(name: "len", scope: !210, file: !147, line: 258, type: !43)
!210 = distinct !DILexicalBlock(scope: !211, file: !147, line: 254, column: 13)
!211 = distinct !DILexicalBlock(scope: !212, file: !147, line: 252, column: 15)
!212 = distinct !DILexicalBlock(scope: !213, file: !147, line: 238, column: 9)
!213 = distinct !DILexicalBlock(scope: !214, file: !147, line: 237, column: 16)
!214 = distinct !DILexicalBlock(scope: !215, file: !147, line: 183, column: 16)
!215 = distinct !DILexicalBlock(scope: !216, file: !147, line: 163, column: 11)
!216 = distinct !DILexicalBlock(scope: !189, file: !147, line: 162, column: 5)
!217 = !DILocalVariable(name: "bad_num", scope: !210, file: !147, line: 259, type: !40)
!218 = !DILocalVariable(name: "j", scope: !219, file: !147, line: 290, type: !43)
!219 = distinct !DILexicalBlock(scope: !220, file: !147, line: 290, column: 7)
!220 = distinct !DILexicalBlock(scope: !221, file: !147, line: 289, column: 5)
!221 = distinct !DILexicalBlock(scope: !222, file: !147, line: 288, column: 3)
!222 = distinct !DILexicalBlock(scope: !189, file: !147, line: 288, column: 3)
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "frp", scope: !146, file: !147, line: 28, type: !225, isLocal: false, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!226 = !DIGlobalVariableExpression(var: !227)
!227 = distinct !DIGlobalVariable(name: "n_frp_allocated", scope: !146, file: !147, line: 34, type: !43, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229)
!229 = distinct !DIGlobalVariable(name: "Version", scope: !230, file: !231, line: 2, type: !51, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !233)
!231 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!232 = !{}
!233 = !{!228}
!234 = !DIGlobalVariableExpression(var: !235)
!235 = distinct !DIGlobalVariable(name: "file_name", scope: !236, file: !241, line: 36, type: !51, isLocal: true, isDefinition: true)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !238)
!237 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!238 = !{!234, !239}
!239 = !DIGlobalVariableExpression(var: !240)
!240 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !236, file: !241, line: 46, type: !67, isLocal: true, isDefinition: true)
!241 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !DIGlobalVariableExpression(var: !243)
!243 = distinct !DIGlobalVariable(name: "exit_failure", scope: !244, file: !247, line: 24, type: !248, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !246)
!245 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!246 = !{!242}
!247 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!249 = !DIGlobalVariableExpression(var: !250)
!250 = distinct !DIGlobalVariable(name: "program_name", scope: !251, file: !255, line: 33, type: !51, isLocal: false, isDefinition: true)
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !253, globals: !254)
!252 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!253 = !{!42, !40}
!254 = !{!249}
!255 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !258, file: !270, line: 77, type: !305, isLocal: false, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !266, globals: !267)
!259 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !{!16, !261, !149}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !17, line: 242, size: 32, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!264 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!265 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!266 = !{!60, !178, !43, !40}
!267 = !{!256, !268, !275, !287, !289, !294, !301, !303}
!268 = !DIGlobalVariableExpression(var: !269)
!269 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !258, file: !270, line: 93, type: !271, isLocal: false, isDefinition: true)
!270 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 320, elements: !273)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!273 = !{!274}
!274 = !DISubrange(count: 10)
!275 = !DIGlobalVariableExpression(var: !276)
!276 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !258, file: !270, line: 1043, type: !277, isLocal: false, isDefinition: true)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !270, line: 57, size: 448, elements: !278)
!278 = !{!279, !280, !281, !285, !286}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !277, file: !270, line: 60, baseType: !16, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !270, line: 63, baseType: !60, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !277, file: !270, line: 67, baseType: !282, size: 256, offset: 64)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 8)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !277, file: !270, line: 70, baseType: !51, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !277, file: !270, line: 73, baseType: !51, size: 64, offset: 384)
!287 = !DIGlobalVariableExpression(var: !288)
!288 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !258, file: !270, line: 108, type: !277, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290)
!290 = distinct !DIGlobalVariable(name: "slot0", scope: !258, file: !270, line: 834, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 256)
!294 = !DIGlobalVariableExpression(var: !295)
!295 = distinct !DIGlobalVariable(name: "slotvec", scope: !258, file: !270, line: 837, type: !296, isLocal: true, isDefinition: true)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !270, line: 826, size: 128, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !270, line: 828, baseType: !43, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !297, file: !270, line: 829, baseType: !40, size: 64, offset: 64)
!301 = !DIGlobalVariableExpression(var: !302)
!302 = distinct !DIGlobalVariable(name: "nslots", scope: !258, file: !270, line: 835, type: !60, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304)
!304 = distinct !DIGlobalVariable(name: "slotvec0", scope: !258, file: !270, line: 836, type: !297, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 704, elements: !129)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!307 = !DIGlobalVariableExpression(var: !308)
!308 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !309, file: !312, line: 26, type: !313, isLocal: false, isDefinition: true)
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !311)
!310 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!311 = !{!307}
!312 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 47)
!316 = !DIGlobalVariableExpression(var: !317)
!317 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !318, file: !661, line: 120, type: !662, isLocal: true, isDefinition: true)
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !320, retainedTypes: !659, globals: !660)
!319 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!320 = !{!321}
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 41, size: 32, elements: !323)
!322 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!324 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!325 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!326 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!327 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!328 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!329 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!330 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!331 = !DIEnumerator(name: "DAY_1", value: 131079)
!332 = !DIEnumerator(name: "DAY_2", value: 131080)
!333 = !DIEnumerator(name: "DAY_3", value: 131081)
!334 = !DIEnumerator(name: "DAY_4", value: 131082)
!335 = !DIEnumerator(name: "DAY_5", value: 131083)
!336 = !DIEnumerator(name: "DAY_6", value: 131084)
!337 = !DIEnumerator(name: "DAY_7", value: 131085)
!338 = !DIEnumerator(name: "ABMON_1", value: 131086)
!339 = !DIEnumerator(name: "ABMON_2", value: 131087)
!340 = !DIEnumerator(name: "ABMON_3", value: 131088)
!341 = !DIEnumerator(name: "ABMON_4", value: 131089)
!342 = !DIEnumerator(name: "ABMON_5", value: 131090)
!343 = !DIEnumerator(name: "ABMON_6", value: 131091)
!344 = !DIEnumerator(name: "ABMON_7", value: 131092)
!345 = !DIEnumerator(name: "ABMON_8", value: 131093)
!346 = !DIEnumerator(name: "ABMON_9", value: 131094)
!347 = !DIEnumerator(name: "ABMON_10", value: 131095)
!348 = !DIEnumerator(name: "ABMON_11", value: 131096)
!349 = !DIEnumerator(name: "ABMON_12", value: 131097)
!350 = !DIEnumerator(name: "MON_1", value: 131098)
!351 = !DIEnumerator(name: "MON_2", value: 131099)
!352 = !DIEnumerator(name: "MON_3", value: 131100)
!353 = !DIEnumerator(name: "MON_4", value: 131101)
!354 = !DIEnumerator(name: "MON_5", value: 131102)
!355 = !DIEnumerator(name: "MON_6", value: 131103)
!356 = !DIEnumerator(name: "MON_7", value: 131104)
!357 = !DIEnumerator(name: "MON_8", value: 131105)
!358 = !DIEnumerator(name: "MON_9", value: 131106)
!359 = !DIEnumerator(name: "MON_10", value: 131107)
!360 = !DIEnumerator(name: "MON_11", value: 131108)
!361 = !DIEnumerator(name: "MON_12", value: 131109)
!362 = !DIEnumerator(name: "AM_STR", value: 131110)
!363 = !DIEnumerator(name: "PM_STR", value: 131111)
!364 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!365 = !DIEnumerator(name: "D_FMT", value: 131113)
!366 = !DIEnumerator(name: "T_FMT", value: 131114)
!367 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!368 = !DIEnumerator(name: "ERA", value: 131116)
!369 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!370 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!371 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!372 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!373 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!374 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!375 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!376 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!377 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!378 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!379 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!380 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!381 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!382 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!383 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!384 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!385 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!386 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!387 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!388 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!389 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!390 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!391 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!392 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!393 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!394 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!395 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!396 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!397 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!398 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!399 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!400 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!401 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!402 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!403 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!404 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!405 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!406 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!407 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!408 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!409 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!410 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!411 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!412 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!413 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!414 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!415 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!416 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!417 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!418 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!419 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!420 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!421 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!422 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!423 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!424 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!425 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!426 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!427 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!428 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!429 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!430 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!431 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!432 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!433 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!434 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!435 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!436 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!437 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!438 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!439 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!440 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!441 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!442 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!443 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!444 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!445 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!446 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!447 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!448 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!449 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!450 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!451 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!452 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!453 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!454 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!455 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!456 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!457 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!458 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!459 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!460 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!461 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!462 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!463 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!464 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!465 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!466 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!467 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!468 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!469 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!470 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!471 = !DIEnumerator(name: "CODESET", value: 14)
!472 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!473 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!474 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!475 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!519 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!522 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!523 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!524 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!526 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!527 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!528 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!543 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!544 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!545 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!546 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!547 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!548 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!549 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!550 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!551 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!552 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!553 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!554 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!555 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!556 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!557 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!558 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!559 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!560 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!561 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!562 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!563 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!564 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!565 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!582 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!583 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!586 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!587 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!588 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!589 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!590 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!591 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!592 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!593 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!594 = !DIEnumerator(name: "THOUSEP", value: 65537)
!595 = !DIEnumerator(name: "__GROUPING", value: 65538)
!596 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!597 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!598 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!599 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!600 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!601 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!602 = !DIEnumerator(name: "__YESSTR", value: 327682)
!603 = !DIEnumerator(name: "__NOSTR", value: 327683)
!604 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!605 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!606 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!607 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!608 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!609 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!610 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!611 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!612 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!613 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!614 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!615 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!616 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!617 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!618 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!619 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!620 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!621 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!622 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!623 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!624 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!625 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!626 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!627 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!628 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!629 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!630 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!631 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!632 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!633 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!634 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!635 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!636 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!637 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!638 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!639 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!640 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!657 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!658 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!659 = !{!42, !40, !53}
!660 = !{!316}
!661 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!662 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !665)
!664 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = !{!30}
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !668)
!667 = !DIFile(filename: "./lib/getndelim2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = !{!53}
!669 = distinct !DICompileUnit(language: DW_LANG_C99, file: !670, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !671)
!670 = !DIFile(filename: "./lib/memchr2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!671 = !{!50, !672, !42, !48}
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !673, line: 124, baseType: !45)
!673 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !676, retainedTypes: !681)
!675 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = !{!677}
!677 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !678, line: 41, size: 32, elements: !679)
!678 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!679 = !{!680}
!680 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!681 = !{!42}
!682 = distinct !DICompileUnit(language: DW_LANG_C99, file: !683, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !684, retainedTypes: !692)
!683 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!684 = !{!685}
!685 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !686, file: !165, line: 192, size: 32, elements: !175)
!686 = distinct !DISubprogram(name: "x2nrealloc", scope: !165, file: !165, line: 180, type: !167, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !687)
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "p", arg: 1, scope: !686, file: !165, line: 180, type: !42)
!689 = !DILocalVariable(name: "pn", arg: 2, scope: !686, file: !165, line: 180, type: !169)
!690 = !DILocalVariable(name: "s", arg: 3, scope: !686, file: !165, line: 180, type: !43)
!691 = !DILocalVariable(name: "n", scope: !686, file: !165, line: 182, type: !43)
!692 = !{!43, !40, !42}
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!694 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!696 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !681)
!698 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!700 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !681)
!702 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !705)
!704 = !DIFile(filename: "./lib/freadptr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!705 = !{!51}
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !707, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !681)
!707 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !709, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !710)
!709 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!710 = !{!43}
!711 = distinct !DICompileUnit(language: DW_LANG_C99, file: !712, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!712 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!713 = distinct !DICompileUnit(language: DW_LANG_C99, file: !714, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !681)
!714 = !DIFile(filename: "./lib/freadseek.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!715 = distinct !DICompileUnit(language: DW_LANG_C99, file: !716, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !717)
!716 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!717 = !{!43, !46, !48, !51}
!718 = distinct !DICompileUnit(language: DW_LANG_C99, file: !719, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!719 = !DIFile(filename: "./lib/freadahead.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!720 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!721 = !{i32 2, !"Dwarf Version", i32 4}
!722 = !{i32 2, !"Debug Info Version", i32 3}
!723 = !{i32 1, !"PIC Level", i32 2}
!724 = !{i32 1, !"PIE Level", i32 2}
!725 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 141, type: !726, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !60}
!728 = !{!729}
!729 = !DILocalVariable(name: "status", arg: 1, scope: !725, file: !3, line: 141, type: !60)
!730 = !DIExpression()
!731 = !DILocation(line: 141, column: 12, scope: !725)
!732 = !DILocation(line: 143, column: 14, scope: !733)
!733 = distinct !DILexicalBlock(scope: !725, file: !3, line: 143, column: 7)
!734 = !DILocation(line: 143, column: 7, scope: !725)
!735 = !DILocation(line: 144, column: 5, scope: !736)
!736 = !DILexicalBlockFile(scope: !737, file: !3, discriminator: 1)
!737 = distinct !DILexicalBlock(scope: !733, file: !3, line: 144, column: 5)
!738 = !{!739, !739, i64 0}
!739 = !{!"any pointer", !740, i64 0}
!740 = !{!"omnipotent char", !741, i64 0}
!741 = !{!"Simple C/C++ TBAA"}
!742 = !DILocation(line: 144, column: 5, scope: !743)
!743 = !DILexicalBlockFile(scope: !737, file: !3, discriminator: 3)
!744 = !DILocation(line: 144, column: 5, scope: !745)
!745 = !DILexicalBlockFile(scope: !737, file: !3, discriminator: 2)
!746 = !DILocation(line: 147, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !733, file: !3, line: 146, column: 5)
!748 = !DILocation(line: 147, column: 7, scope: !749)
!749 = !DILexicalBlockFile(scope: !747, file: !3, discriminator: 1)
!750 = !DILocation(line: 151, column: 7, scope: !747)
!751 = !DILocation(line: 151, column: 7, scope: !749)
!752 = !DILocation(line: 580, column: 3, scope: !753, inlinedAt: !756)
!753 = distinct !DISubprogram(name: "emit_stdin_note", scope: !90, file: !90, line: 578, type: !754, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !232)
!754 = !DISubroutineType(types: !755)
!755 = !{null}
!756 = distinct !DILocation(line: 155, column: 7, scope: !747)
!757 = !DILocation(line: 580, column: 3, scope: !758, inlinedAt: !756)
!758 = !DILexicalBlockFile(scope: !753, file: !90, discriminator: 1)
!759 = !DILocation(line: 587, column: 3, scope: !760, inlinedAt: !761)
!760 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !90, file: !90, line: 585, type: !754, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !232)
!761 = distinct !DILocation(line: 156, column: 7, scope: !747)
!762 = !DILocation(line: 587, column: 3, scope: !763, inlinedAt: !761)
!763 = !DILexicalBlockFile(scope: !760, file: !90, discriminator: 1)
!764 = !DILocation(line: 158, column: 7, scope: !747)
!765 = !DILocation(line: 158, column: 7, scope: !749)
!766 = !DILocation(line: 163, column: 7, scope: !747)
!767 = !DILocation(line: 163, column: 7, scope: !749)
!768 = !DILocation(line: 169, column: 7, scope: !747)
!769 = !DILocation(line: 169, column: 7, scope: !749)
!770 = !DILocation(line: 173, column: 7, scope: !747)
!771 = !DILocation(line: 173, column: 7, scope: !749)
!772 = !DILocation(line: 178, column: 7, scope: !747)
!773 = !DILocation(line: 178, column: 7, scope: !749)
!774 = !DILocation(line: 181, column: 7, scope: !747)
!775 = !DILocation(line: 181, column: 7, scope: !749)
!776 = !DILocation(line: 182, column: 7, scope: !747)
!777 = !DILocation(line: 182, column: 7, scope: !749)
!778 = !DILocation(line: 183, column: 7, scope: !747)
!779 = !DILocation(line: 183, column: 7, scope: !749)
!780 = !DILocation(line: 189, column: 7, scope: !747)
!781 = !DILocation(line: 189, column: 7, scope: !749)
!782 = !DILocation(line: 642, column: 15, scope: !89, inlinedAt: !783)
!783 = distinct !DILocation(line: 197, column: 7, scope: !747)
!784 = !DILocation(line: 651, column: 3, scope: !89, inlinedAt: !783)
!785 = !DILocation(line: 651, column: 3, scope: !786, inlinedAt: !783)
!786 = !DILexicalBlockFile(scope: !89, file: !90, discriminator: 1)
!787 = !DILocation(line: 655, column: 29, scope: !89, inlinedAt: !783)
!788 = !DILocation(line: 655, column: 15, scope: !89, inlinedAt: !783)
!789 = !DILocation(line: 656, column: 7, scope: !109, inlinedAt: !783)
!790 = !DILocation(line: 656, column: 19, scope: !109, inlinedAt: !783)
!791 = !DILocation(line: 656, column: 22, scope: !792, inlinedAt: !783)
!792 = !DILexicalBlockFile(scope: !109, file: !90, discriminator: 16)
!793 = !DILocation(line: 656, column: 7, scope: !794, inlinedAt: !783)
!794 = !DILexicalBlockFile(scope: !89, file: !90, discriminator: 16)
!795 = !DILocation(line: 662, column: 7, scope: !796, inlinedAt: !783)
!796 = distinct !DILexicalBlock(scope: !109, file: !90, line: 657, column: 5)
!797 = !DILocation(line: 662, column: 7, scope: !798, inlinedAt: !783)
!798 = !DILexicalBlockFile(scope: !796, file: !90, discriminator: 1)
!799 = !DILocation(line: 664, column: 5, scope: !796, inlinedAt: !783)
!800 = !DILocation(line: 665, column: 3, scope: !89, inlinedAt: !783)
!801 = !DILocation(line: 665, column: 3, scope: !786, inlinedAt: !783)
!802 = !DILocation(line: 667, column: 3, scope: !89, inlinedAt: !783)
!803 = !DILocation(line: 667, column: 3, scope: !786, inlinedAt: !783)
!804 = !DILocation(line: 199, column: 3, scope: !725)
!805 = !DILocation(line: 480, column: 11, scope: !57)
!806 = !DILocation(line: 480, column: 24, scope: !57)
!807 = !DILocation(line: 484, column: 8, scope: !57)
!808 = !DILocation(line: 488, column: 21, scope: !57)
!809 = !DILocation(line: 488, column: 3, scope: !57)
!810 = !DILocation(line: 489, column: 3, scope: !57)
!811 = !DILocation(line: 490, column: 3, scope: !57)
!812 = !DILocation(line: 491, column: 3, scope: !57)
!813 = !DILocation(line: 493, column: 3, scope: !57)
!814 = !DILocation(line: 495, column: 18, scope: !57)
!815 = !{!740, !740, i64 0}
!816 = !DILocation(line: 500, column: 9, scope: !57)
!817 = !DILocation(line: 503, column: 3, scope: !57)
!818 = !DILocation(line: 485, column: 9, scope: !57)
!819 = !DILocation(line: 503, column: 18, scope: !820)
!820 = !DILexicalBlockFile(scope: !57, file: !3, discriminator: 1)
!821 = !DILocation(line: 482, column: 7, scope: !57)
!822 = !DILocation(line: 503, column: 3, scope: !820)
!823 = !DILocation(line: 510, column: 15, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 510, column: 15)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 506, column: 9)
!826 = distinct !DILexicalBlock(scope: !57, file: !3, line: 504, column: 5)
!827 = !DILocation(line: 510, column: 30, scope: !824)
!828 = !DILocation(line: 510, column: 15, scope: !825)
!829 = !DILocation(line: 511, column: 13, scope: !830)
!830 = !DILexicalBlockFile(scope: !831, file: !3, discriminator: 1)
!831 = distinct !DILexicalBlock(scope: !824, file: !3, line: 511, column: 13)
!832 = !DILocation(line: 511, column: 13, scope: !833)
!833 = !DILexicalBlockFile(scope: !831, file: !3, discriminator: 4)
!834 = !DILocation(line: 511, column: 13, scope: !835)
!835 = !DILexicalBlockFile(scope: !831, file: !3, discriminator: 5)
!836 = !DILocation(line: 512, column: 26, scope: !825)
!837 = !DILocation(line: 513, column: 30, scope: !825)
!838 = !DILocation(line: 514, column: 11, scope: !825)
!839 = !DILocation(line: 518, column: 15, scope: !840)
!840 = distinct !DILexicalBlock(scope: !825, file: !3, line: 518, column: 15)
!841 = !DILocation(line: 518, column: 30, scope: !840)
!842 = !DILocation(line: 518, column: 15, scope: !825)
!843 = !DILocation(line: 519, column: 13, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !3, discriminator: 1)
!845 = distinct !DILexicalBlock(scope: !840, file: !3, line: 519, column: 13)
!846 = !DILocation(line: 519, column: 13, scope: !847)
!847 = !DILexicalBlockFile(scope: !845, file: !3, discriminator: 4)
!848 = !DILocation(line: 519, column: 13, scope: !849)
!849 = !DILexicalBlockFile(scope: !845, file: !3, discriminator: 5)
!850 = !DILocation(line: 520, column: 26, scope: !825)
!851 = !DILocation(line: 521, column: 30, scope: !825)
!852 = !DILocation(line: 522, column: 11, scope: !825)
!853 = !DILocation(line: 527, column: 15, scope: !854)
!854 = distinct !DILexicalBlock(scope: !825, file: !3, line: 527, column: 15)
!855 = !DILocation(line: 527, column: 25, scope: !854)
!856 = !DILocation(line: 527, column: 33, scope: !854)
!857 = !DILocation(line: 527, column: 36, scope: !858)
!858 = !DILexicalBlockFile(scope: !854, file: !3, discriminator: 1)
!859 = !DILocation(line: 527, column: 46, scope: !858)
!860 = !DILocation(line: 527, column: 15, scope: !861)
!861 = !DILexicalBlockFile(scope: !825, file: !3, discriminator: 1)
!862 = !DILocation(line: 528, column: 13, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !854, file: !3, line: 528, column: 13)
!865 = !DILocation(line: 528, column: 13, scope: !866)
!866 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 4)
!867 = !DILocation(line: 528, column: 13, scope: !868)
!868 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 5)
!869 = !DILocation(line: 529, column: 17, scope: !825)
!870 = !DILocation(line: 531, column: 11, scope: !825)
!871 = !DILocation(line: 537, column: 38, scope: !825)
!872 = !DILocation(line: 537, column: 48, scope: !825)
!873 = !DILocation(line: 538, column: 44, scope: !825)
!874 = !DILocation(line: 537, column: 38, scope: !875)
!875 = !DILexicalBlockFile(scope: !825, file: !3, discriminator: 2)
!876 = !DILocation(line: 537, column: 38, scope: !877)
!877 = !DILexicalBlockFile(scope: !825, file: !3, discriminator: 3)
!878 = !DILocation(line: 537, column: 35, scope: !877)
!879 = !{!880, !880, i64 0}
!880 = !{!"long", !740, i64 0}
!881 = !DILocation(line: 539, column: 37, scope: !825)
!882 = !DILocation(line: 539, column: 35, scope: !825)
!883 = !DILocation(line: 540, column: 11, scope: !825)
!884 = !DILocation(line: 547, column: 11, scope: !825)
!885 = !DILocation(line: 551, column: 11, scope: !825)
!886 = !DILocation(line: 555, column: 11, scope: !825)
!887 = distinct !{!887, !817, !888}
!888 = !DILocation(line: 564, column: 5, scope: !57)
!889 = !DILocation(line: 557, column: 9, scope: !825)
!890 = !DILocation(line: 559, column: 9, scope: !825)
!891 = !DILocation(line: 559, column: 9, scope: !861)
!892 = !DILocation(line: 562, column: 11, scope: !825)
!893 = !DILocation(line: 566, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !57, file: !3, line: 566, column: 7)
!895 = !DILocation(line: 566, column: 22, scope: !894)
!896 = !DILocation(line: 566, column: 7, scope: !57)
!897 = !DILocation(line: 567, column: 5, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !3, discriminator: 1)
!899 = distinct !DILexicalBlock(scope: !894, file: !3, line: 567, column: 5)
!900 = !DILocation(line: 567, column: 5, scope: !901)
!901 = !DILexicalBlockFile(scope: !899, file: !3, discriminator: 4)
!902 = !DILocation(line: 567, column: 5, scope: !903)
!903 = !DILexicalBlockFile(scope: !899, file: !3, discriminator: 5)
!904 = !DILocation(line: 569, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !57, file: !3, line: 569, column: 7)
!906 = !DILocation(line: 569, column: 41, scope: !907)
!907 = !DILexicalBlockFile(scope: !905, file: !3, discriminator: 1)
!908 = !DILocation(line: 569, column: 23, scope: !905)
!909 = !DILocation(line: 570, column: 5, scope: !910)
!910 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 1)
!911 = distinct !DILexicalBlock(scope: !905, file: !3, line: 570, column: 5)
!912 = !DILocation(line: 570, column: 5, scope: !913)
!913 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 4)
!914 = !DILocation(line: 570, column: 5, scope: !915)
!915 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 5)
!916 = !DILocation(line: 573, column: 30, scope: !917)
!917 = distinct !DILexicalBlock(scope: !57, file: !3, line: 573, column: 7)
!918 = !DILocation(line: 574, column: 5, scope: !919)
!919 = !DILexicalBlockFile(scope: !920, file: !3, discriminator: 1)
!920 = distinct !DILexicalBlock(scope: !917, file: !3, line: 574, column: 5)
!921 = !DILocation(line: 574, column: 5, scope: !922)
!922 = !DILexicalBlockFile(scope: !920, file: !3, discriminator: 4)
!923 = !DILocation(line: 574, column: 5, scope: !924)
!924 = !DILexicalBlockFile(scope: !920, file: !3, discriminator: 5)
!925 = !DILocation(line: 578, column: 33, scope: !57)
!926 = !DILocation(line: 578, column: 17, scope: !57)
!927 = !DILocation(line: 579, column: 18, scope: !57)
!928 = !DILocation(line: 579, column: 15, scope: !57)
!929 = !DILocation(line: 577, column: 3, scope: !57)
!930 = !DILocation(line: 581, column: 7, scope: !57)
!931 = !DILocation(line: 582, column: 11, scope: !932)
!932 = distinct !DILexicalBlock(scope: !57, file: !3, line: 581, column: 7)
!933 = !DILocation(line: 582, column: 5, scope: !932)
!934 = !DILocation(line: 584, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !57, file: !3, line: 584, column: 7)
!936 = !DILocation(line: 584, column: 31, scope: !935)
!937 = !DILocation(line: 584, column: 7, scope: !57)
!938 = !DILocation(line: 587, column: 18, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !3, line: 585, column: 5)
!940 = !DILocation(line: 587, column: 16, scope: !939)
!941 = !DILocation(line: 588, column: 16, scope: !939)
!942 = !DILocation(line: 589, column: 31, scope: !939)
!943 = !DILocation(line: 590, column: 31, scope: !939)
!944 = !DILocation(line: 591, column: 5, scope: !939)
!945 = !DILocation(line: 593, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !57, file: !3, line: 593, column: 7)
!947 = !{!948, !948, i64 0}
!948 = !{!"int", !740, i64 0}
!949 = !DILocation(line: 593, column: 14, scope: !946)
!950 = !DILocation(line: 593, column: 7, scope: !57)
!951 = !DILocation(line: 483, column: 8, scope: !57)
!952 = !DILocation(line: 596, column: 28, scope: !953)
!953 = !DILexicalBlockFile(scope: !954, file: !3, discriminator: 1)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 596, column: 5)
!955 = distinct !DILexicalBlock(scope: !946, file: !3, line: 596, column: 5)
!956 = !DILocation(line: 596, column: 5, scope: !957)
!957 = !DILexicalBlockFile(scope: !955, file: !3, discriminator: 1)
!958 = !DILocation(line: 597, column: 23, scope: !954)
!959 = !DILocation(line: 594, column: 10, scope: !946)
!960 = !DILocation(line: 594, column: 8, scope: !946)
!961 = !DILocation(line: 594, column: 5, scope: !946)
!962 = !DILocation(line: 597, column: 13, scope: !954)
!963 = !DILocation(line: 597, column: 10, scope: !954)
!964 = !DILocation(line: 596, column: 42, scope: !965)
!965 = !DILexicalBlockFile(scope: !954, file: !3, discriminator: 2)
!966 = distinct !{!966, !967, !968}
!967 = !DILocation(line: 596, column: 5, scope: !955)
!968 = !DILocation(line: 597, column: 35, scope: !955)
!969 = !DILocation(line: 600, column: 23, scope: !970)
!970 = distinct !DILexicalBlock(scope: !57, file: !3, line: 600, column: 7)
!971 = !DILocation(line: 600, column: 34, scope: !972)
!972 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 1)
!973 = !DILocation(line: 600, column: 26, scope: !972)
!974 = !DILocation(line: 600, column: 41, scope: !972)
!975 = !DILocation(line: 600, column: 7, scope: !820)
!976 = !DILocation(line: 602, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !970, file: !3, line: 601, column: 5)
!978 = !DILocation(line: 602, column: 7, scope: !979)
!979 = !DILexicalBlockFile(scope: !977, file: !3, discriminator: 1)
!980 = !DILocation(line: 604, column: 5, scope: !977)
!981 = !DILocation(line: 608, column: 10, scope: !57)
!982 = !DILocation(line: 609, column: 1, scope: !57)
!983 = distinct !DISubprogram(name: "cut_file", scope: !3, file: !3, line: 441, type: !984, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !986)
!984 = !DISubroutineType(types: !985)
!985 = !{!67, !51}
!986 = !{!987, !988, !1044, !1047, !1048, !1050, !1051, !1054, !1055, !1057}
!987 = !DILocalVariable(name: "file", arg: 1, scope: !983, file: !3, line: 441, type: !51)
!988 = !DILocalVariable(name: "stream", scope: !983, file: !3, line: 443, type: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !992)
!991 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !994)
!993 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1015, !1016, !1017, !1018, !1022, !1023, !1025, !1029, !1032, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !992, file: !993, line: 242, baseType: !60, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !992, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !992, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !992, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !992, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !992, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !992, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !992, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !992, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !992, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !992, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !992, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !992, file: !993, line: 260, baseType: !1008, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !1010)
!1010 = !{!1011, !1012, !1014}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1009, file: !993, line: 157, baseType: !1008, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1009, file: !993, line: 158, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1009, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !992, file: !993, line: 262, baseType: !1013, size: 64, offset: 832)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !992, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !992, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !992, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1020, line: 140, baseType: !1021)
!1020 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1021 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !992, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !992, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!1024 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !992, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 1)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !992, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !993, line: 150, baseType: null)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !992, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1020, line: 141, baseType: !1021)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !992, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !992, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !992, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !992, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !992, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !992, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !992, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 20)
!1044 = !DILocalVariable(name: "__s1_len", scope: !1045, file: !3, line: 445, type: !43)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 445, column: 7)
!1046 = distinct !DILexicalBlock(scope: !983, file: !3, line: 445, column: 7)
!1047 = !DILocalVariable(name: "__s2_len", scope: !1045, file: !3, line: 445, type: !43)
!1048 = !DILocalVariable(name: "__s2", scope: !1049, file: !3, line: 445, type: !48)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 445, column: 7)
!1050 = !DILocalVariable(name: "__result", scope: !1049, file: !3, line: 445, type: !60)
!1051 = !DILocalVariable(name: "__s1_len", scope: !1052, file: !3, line: 469, type: !43)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 469, column: 7)
!1053 = distinct !DILexicalBlock(scope: !983, file: !3, line: 469, column: 7)
!1054 = !DILocalVariable(name: "__s2_len", scope: !1052, file: !3, line: 469, type: !43)
!1055 = !DILocalVariable(name: "__s2", scope: !1056, file: !3, line: 469, type: !48)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 469, column: 7)
!1057 = !DILocalVariable(name: "__result", scope: !1056, file: !3, line: 469, type: !60)
!1058 = !DILocation(line: 441, column: 23, scope: !983)
!1059 = !DILocation(line: 445, column: 7, scope: !1045)
!1060 = !DILocation(line: 445, column: 7, scope: !1049)
!1061 = !DILocation(line: 445, column: 7, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1049, file: !3, discriminator: 2)
!1063 = !DILocation(line: 445, column: 7, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1065, file: !3, discriminator: 3)
!1065 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 445, column: 7)
!1066 = !DILocation(line: 445, column: 7, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1065, file: !3, discriminator: 2)
!1068 = !DILocation(line: 445, column: 7, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1070, file: !3, discriminator: 4)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 445, column: 7)
!1071 = !DILocation(line: 445, column: 7, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1045, file: !3, discriminator: 11)
!1073 = !DILocation(line: 445, column: 7, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 13)
!1075 = !DILocation(line: 448, column: 16, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 446, column: 5)
!1077 = !DILocation(line: 443, column: 9, scope: !983)
!1078 = !DILocation(line: 449, column: 5, scope: !1076)
!1079 = !DILocation(line: 452, column: 16, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 451, column: 5)
!1081 = !DILocation(line: 453, column: 18, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 453, column: 11)
!1083 = !DILocation(line: 453, column: 11, scope: !1080)
!1084 = !DILocation(line: 455, column: 21, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 454, column: 9)
!1086 = !DILocation(line: 455, column: 34, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1085, file: !3, discriminator: 1)
!1088 = !DILocation(line: 455, column: 11, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1085, file: !3, discriminator: 2)
!1090 = !DILocation(line: 456, column: 11, scope: !1085)
!1091 = !DILocation(line: 460, column: 3, scope: !983)
!1092 = !DILocalVariable(name: "stream", arg: 1, scope: !1093, file: !3, line: 429, type: !989)
!1093 = distinct !DISubprogram(name: "cut_stream", scope: !3, file: !3, line: 429, type: !1094, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !989}
!1096 = !{!1092}
!1097 = !DILocation(line: 429, column: 19, scope: !1093, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 462, column: 3, scope: !983)
!1099 = !DILocation(line: 431, column: 7, scope: !1100, inlinedAt: !1098)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 431, column: 7)
!1101 = !DILocation(line: 431, column: 22, scope: !1100, inlinedAt: !1098)
!1102 = !DILocation(line: 431, column: 7, scope: !1093, inlinedAt: !1098)
!1103 = !DILocalVariable(name: "stream", arg: 1, scope: !1104, file: !3, line: 233, type: !989)
!1104 = distinct !DISubprogram(name: "cut_bytes", scope: !3, file: !3, line: 233, type: !1094, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1105)
!1105 = !{!1103, !1106, !1107, !1108}
!1106 = !DILocalVariable(name: "byte_idx", scope: !1104, file: !3, line: 235, type: !43)
!1107 = !DILocalVariable(name: "print_delimiter", scope: !1104, file: !3, line: 238, type: !67)
!1108 = !DILocalVariable(name: "c", scope: !1109, file: !3, line: 245, type: !60)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 244, column: 5)
!1110 = !DILocation(line: 233, column: 18, scope: !1104, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 432, column: 5, scope: !1100, inlinedAt: !1098)
!1112 = !DILocation(line: 235, column: 10, scope: !1104, inlinedAt: !1111)
!1113 = !DILocation(line: 238, column: 8, scope: !1104, inlinedAt: !1111)
!1114 = !DILocation(line: 243, column: 3, scope: !1104, inlinedAt: !1111)
!1115 = !DILocalVariable(name: "__fp", arg: 1, scope: !1116, file: !1117, line: 63, type: !989)
!1116 = distinct !DISubprogram(name: "getc_unlocked", scope: !1117, file: !1117, line: 63, type: !1118, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1120)
!1117 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!60, !989}
!1120 = !{!1115}
!1121 = !DILocation(line: 63, column: 22, scope: !1116, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 247, column: 11, scope: !1109, inlinedAt: !1111)
!1123 = !DILocation(line: 65, column: 10, scope: !1116, inlinedAt: !1122)
!1124 = !{!1125, !739, i64 8}
!1125 = !{!"_IO_FILE", !948, i64 0, !739, i64 8, !739, i64 16, !739, i64 24, !739, i64 32, !739, i64 40, !739, i64 48, !739, i64 56, !739, i64 64, !739, i64 72, !739, i64 80, !739, i64 88, !739, i64 96, !739, i64 104, !948, i64 112, !948, i64 116, !880, i64 120, !1126, i64 128, !740, i64 130, !740, i64 131, !739, i64 136, !880, i64 144, !739, i64 152, !739, i64 160, !739, i64 168, !739, i64 176, !880, i64 184, !948, i64 192, !740, i64 196}
!1126 = !{!"short", !740, i64 0}
!1127 = !{!1125, !739, i64 16}
!1128 = !{!"branch_weights", i32 2000, i32 1}
!1129 = !DILocation(line: 65, column: 10, scope: !1130, inlinedAt: !1122)
!1130 = !DILexicalBlockFile(scope: !1116, file: !1117, discriminator: 1)
!1131 = !DILocation(line: 65, column: 10, scope: !1132, inlinedAt: !1122)
!1132 = !DILexicalBlockFile(scope: !1116, file: !1117, discriminator: 2)
!1133 = !DILocation(line: 65, column: 10, scope: !1134, inlinedAt: !1122)
!1134 = !DILexicalBlockFile(scope: !1116, file: !1117, discriminator: 3)
!1135 = !DILocation(line: 245, column: 11, scope: !1109, inlinedAt: !1111)
!1136 = !DILocation(line: 249, column: 16, scope: !1137, inlinedAt: !1111)
!1137 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 249, column: 11)
!1138 = !DILocation(line: 249, column: 13, scope: !1137, inlinedAt: !1111)
!1139 = !DILocation(line: 249, column: 11, scope: !1109, inlinedAt: !1111)
!1140 = !DILocalVariable(name: "__c", arg: 1, scope: !1141, file: !1117, line: 105, type: !60)
!1141 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1117, file: !1117, line: 105, type: !1142, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!60, !60}
!1144 = !{!1140}
!1145 = !DILocation(line: 105, column: 23, scope: !1141, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 251, column: 11, scope: !1147, inlinedAt: !1111)
!1147 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 250, column: 9)
!1148 = !DILocation(line: 107, column: 10, scope: !1141, inlinedAt: !1146)
!1149 = !{!1125, !739, i64 40}
!1150 = !{!1125, !739, i64 48}
!1151 = !DILocation(line: 107, column: 10, scope: !1152, inlinedAt: !1146)
!1152 = !DILexicalBlockFile(scope: !1141, file: !1117, discriminator: 1)
!1153 = !DILocation(line: 107, column: 10, scope: !1154, inlinedAt: !1146)
!1154 = !DILexicalBlockFile(scope: !1141, file: !1117, discriminator: 2)
!1155 = !DILocation(line: 254, column: 24, scope: !1147, inlinedAt: !1111)
!1156 = !DILocation(line: 254, column: 22, scope: !1147, inlinedAt: !1111)
!1157 = !DILocation(line: 255, column: 9, scope: !1147, inlinedAt: !1111)
!1158 = !DILocation(line: 256, column: 18, scope: !1159, inlinedAt: !1111)
!1159 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 256, column: 16)
!1160 = !DILocation(line: 256, column: 16, scope: !1137, inlinedAt: !1111)
!1161 = !DILocation(line: 258, column: 24, scope: !1162, inlinedAt: !1111)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 258, column: 15)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 257, column: 9)
!1164 = !DILocation(line: 258, column: 15, scope: !1163, inlinedAt: !1111)
!1165 = !DILocation(line: 105, column: 23, scope: !1141, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 259, column: 13, scope: !1162, inlinedAt: !1111)
!1167 = !DILocation(line: 107, column: 10, scope: !1141, inlinedAt: !1166)
!1168 = !DILocation(line: 107, column: 10, scope: !1152, inlinedAt: !1166)
!1169 = !DILocation(line: 107, column: 10, scope: !1154, inlinedAt: !1166)
!1170 = !DILocation(line: 209, column: 14, scope: !1171, inlinedAt: !1176)
!1171 = distinct !DISubprogram(name: "next_item", scope: !3, file: !3, line: 207, type: !1172, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !169}
!1174 = !{!1175}
!1175 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1171, file: !3, line: 207, type: !169)
!1176 = distinct !DILocation(line: 264, column: 11, scope: !1177, inlinedAt: !1111)
!1177 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 263, column: 9)
!1178 = !DILocation(line: 210, column: 21, scope: !1179, inlinedAt: !1176)
!1179 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 210, column: 7)
!1180 = !DILocation(line: 210, column: 33, scope: !1179, inlinedAt: !1176)
!1181 = !{!1182, !880, i64 8}
!1182 = !{!"field_range_pair", !880, i64 0, !880, i64 8}
!1183 = !DILocation(line: 210, column: 19, scope: !1179, inlinedAt: !1176)
!1184 = !DILocation(line: 210, column: 7, scope: !1171, inlinedAt: !1176)
!1185 = !DILocation(line: 211, column: 15, scope: !1179, inlinedAt: !1176)
!1186 = !DILocation(line: 211, column: 5, scope: !1179, inlinedAt: !1176)
!1187 = !DILocation(line: 219, column: 10, scope: !1188, inlinedAt: !1193)
!1188 = distinct !DISubprogram(name: "print_kth", scope: !3, file: !3, line: 217, type: !1189, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!67, !43}
!1191 = !{!1192}
!1192 = !DILocalVariable(name: "k", arg: 1, scope: !1188, file: !3, line: 217, type: !43)
!1193 = distinct !DILocation(line: 265, column: 15, scope: !1194, inlinedAt: !1111)
!1194 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 265, column: 15)
!1195 = !DILocation(line: 217, column: 19, scope: !1188, inlinedAt: !1193)
!1196 = !DILocation(line: 219, column: 22, scope: !1188, inlinedAt: !1193)
!1197 = !{!1182, !880, i64 0}
!1198 = !DILocation(line: 219, column: 25, scope: !1188, inlinedAt: !1193)
!1199 = !DILocation(line: 265, column: 15, scope: !1177, inlinedAt: !1111)
!1200 = !DILocation(line: 267, column: 19, scope: !1201, inlinedAt: !1111)
!1201 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 266, column: 13)
!1202 = !DILocation(line: 269, column: 23, scope: !1203, inlinedAt: !1111)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 269, column: 23)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 268, column: 17)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 267, column: 19)
!1206 = !DILocation(line: 227, column: 12, scope: !1207, inlinedAt: !1210)
!1207 = distinct !DISubprogram(name: "is_range_start_index", scope: !3, file: !3, line: 225, type: !1189, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1208)
!1208 = !{!1209}
!1209 = !DILocalVariable(name: "k", arg: 1, scope: !1207, file: !3, line: 225, type: !43)
!1210 = distinct !DILocation(line: 269, column: 42, scope: !1211, inlinedAt: !1111)
!1211 = !DILexicalBlockFile(scope: !1203, file: !3, discriminator: 1)
!1212 = !DILocation(line: 269, column: 39, scope: !1203, inlinedAt: !1111)
!1213 = !DILocation(line: 225, column: 30, scope: !1207, inlinedAt: !1210)
!1214 = !DILocation(line: 271, column: 23, scope: !1215, inlinedAt: !1111)
!1215 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 270, column: 21)
!1216 = !DILocation(line: 273, column: 21, scope: !1215, inlinedAt: !1111)
!1217 = !DILocation(line: 105, column: 23, scope: !1141, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 277, column: 15, scope: !1201, inlinedAt: !1111)
!1219 = !DILocation(line: 107, column: 10, scope: !1141, inlinedAt: !1218)
!1220 = !DILocation(line: 107, column: 10, scope: !1152, inlinedAt: !1218)
!1221 = !DILocation(line: 107, column: 10, scope: !1154, inlinedAt: !1218)
!1222 = !DILocalVariable(name: "stream", arg: 1, scope: !1223, file: !3, line: 286, type: !989)
!1223 = distinct !DISubprogram(name: "cut_fields", scope: !3, file: !3, line: 286, type: !1094, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1224)
!1224 = !{!1222, !1225, !1226, !1227, !1228, !1229, !1235, !1236, !1241, !1242}
!1225 = !DILocalVariable(name: "c", scope: !1223, file: !3, line: 288, type: !60)
!1226 = !DILocalVariable(name: "field_idx", scope: !1223, file: !3, line: 289, type: !43)
!1227 = !DILocalVariable(name: "found_any_selected_field", scope: !1223, file: !3, line: 290, type: !67)
!1228 = !DILocalVariable(name: "buffer_first_field", scope: !1223, file: !3, line: 291, type: !67)
!1229 = !DILocalVariable(name: "len", scope: !1230, file: !3, line: 314, type: !1233)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 313, column: 9)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 312, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 311, column: 5)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !991, line: 105, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1020, line: 181, baseType: !1021)
!1235 = !DILocalVariable(name: "n_bytes", scope: !1230, file: !3, line: 315, type: !43)
!1236 = !DILocalVariable(name: "last_c", scope: !1237, file: !3, line: 360, type: !60)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 359, column: 17)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 358, column: 19)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 353, column: 13)
!1240 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 352, column: 15)
!1241 = !DILocalVariable(name: "prev_c", scope: !1232, file: !3, line: 373, type: !60)
!1242 = !DILocalVariable(name: "last_c", scope: !1243, file: !3, line: 401, type: !60)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 400, column: 9)
!1244 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 399, column: 11)
!1245 = !DILocation(line: 286, column: 19, scope: !1223, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 434, column: 5, scope: !1100, inlinedAt: !1098)
!1247 = !DILocation(line: 289, column: 10, scope: !1223, inlinedAt: !1246)
!1248 = !DILocation(line: 290, column: 8, scope: !1223, inlinedAt: !1246)
!1249 = !DILocation(line: 63, column: 22, scope: !1116, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 295, column: 7, scope: !1223, inlinedAt: !1246)
!1251 = !DILocation(line: 65, column: 10, scope: !1116, inlinedAt: !1250)
!1252 = !DILocation(line: 65, column: 10, scope: !1132, inlinedAt: !1250)
!1253 = !DILocation(line: 288, column: 7, scope: !1223, inlinedAt: !1246)
!1254 = !DILocation(line: 296, column: 7, scope: !1223, inlinedAt: !1246)
!1255 = !DILocation(line: 65, column: 10, scope: !1130, inlinedAt: !1250)
!1256 = !DILocation(line: 296, column: 9, scope: !1257, inlinedAt: !1246)
!1257 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 296, column: 7)
!1258 = !DILocation(line: 299, column: 3, scope: !1223, inlinedAt: !1246)
!1259 = !DILocation(line: 217, column: 19, scope: !1188, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 308, column: 51, scope: !1223, inlinedAt: !1246)
!1261 = !DILocation(line: 219, column: 10, scope: !1188, inlinedAt: !1260)
!1262 = !DILocation(line: 219, column: 22, scope: !1188, inlinedAt: !1260)
!1263 = !DILocation(line: 308, column: 50, scope: !1223, inlinedAt: !1246)
!1264 = !DILocation(line: 308, column: 48, scope: !1223, inlinedAt: !1246)
!1265 = !DILocation(line: 310, column: 3, scope: !1223, inlinedAt: !1246)
!1266 = !DILocation(line: 312, column: 26, scope: !1231, inlinedAt: !1246)
!1267 = !DILocation(line: 318, column: 48, scope: !1230, inlinedAt: !1246)
!1268 = !DILocation(line: 318, column: 55, scope: !1230, inlinedAt: !1246)
!1269 = !DILocation(line: 317, column: 17, scope: !1230, inlinedAt: !1246)
!1270 = !DILocation(line: 314, column: 19, scope: !1230, inlinedAt: !1246)
!1271 = !DILocation(line: 319, column: 19, scope: !1272, inlinedAt: !1246)
!1272 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 319, column: 15)
!1273 = !DILocation(line: 319, column: 15, scope: !1230, inlinedAt: !1246)
!1274 = !DILocation(line: 315, column: 18, scope: !1230, inlinedAt: !1246)
!1275 = !DILocation(line: 321, column: 21, scope: !1276, inlinedAt: !1246)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 320, column: 13)
!1277 = !DILocation(line: 321, column: 15, scope: !1276, inlinedAt: !1246)
!1278 = !DILocation(line: 322, column: 30, scope: !1276, inlinedAt: !1246)
!1279 = !DILocalVariable(name: "__stream", arg: 1, scope: !1280, file: !1117, line: 132, type: !989)
!1280 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1117, file: !1117, line: 132, type: !1118, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1281)
!1281 = !{!1279}
!1282 = !DILocation(line: 132, column: 1, scope: !1280, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 323, column: 19, scope: !1284, inlinedAt: !1246)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 323, column: 19)
!1285 = !DILocation(line: 134, column: 10, scope: !1280, inlinedAt: !1283)
!1286 = !{!1125, !948, i64 0}
!1287 = !DILocation(line: 323, column: 35, scope: !1284, inlinedAt: !1246)
!1288 = !DILocation(line: 325, column: 15, scope: !1276, inlinedAt: !1246)
!1289 = !DILocation(line: 329, column: 11, scope: !1290, inlinedAt: !1246)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 329, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 329, column: 11)
!1292 = !DILocation(line: 329, column: 11, scope: !1291, inlinedAt: !1246)
!1293 = !DILocation(line: 329, column: 11, scope: !1294, inlinedAt: !1246)
!1294 = !DILexicalBlockFile(scope: !1290, file: !3, discriminator: 2)
!1295 = !DILocation(line: 336, column: 25, scope: !1296, inlinedAt: !1246)
!1296 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 336, column: 15)
!1297 = !DILocation(line: 336, column: 48, scope: !1296, inlinedAt: !1246)
!1298 = !DILocation(line: 336, column: 57, scope: !1296, inlinedAt: !1246)
!1299 = !DILocation(line: 336, column: 54, scope: !1296, inlinedAt: !1246)
!1300 = !DILocation(line: 336, column: 15, scope: !1230, inlinedAt: !1246)
!1301 = !DILocation(line: 338, column: 19, scope: !1302, inlinedAt: !1246)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 337, column: 13)
!1303 = !DILocation(line: 344, column: 19, scope: !1304, inlinedAt: !1246)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 343, column: 17)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 338, column: 19)
!1306 = !DILocation(line: 346, column: 23, scope: !1307, inlinedAt: !1246)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 346, column: 23)
!1308 = !DILocation(line: 346, column: 54, scope: !1307, inlinedAt: !1246)
!1309 = !DILocation(line: 346, column: 51, scope: !1307, inlinedAt: !1246)
!1310 = !DILocation(line: 346, column: 23, scope: !1304, inlinedAt: !1246)
!1311 = !DILocation(line: 105, column: 23, scope: !1141, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 347, column: 21, scope: !1307, inlinedAt: !1246)
!1313 = !DILocation(line: 107, column: 10, scope: !1141, inlinedAt: !1312)
!1314 = !DILocation(line: 107, column: 10, scope: !1152, inlinedAt: !1312)
!1315 = !DILocation(line: 107, column: 10, scope: !1154, inlinedAt: !1312)
!1316 = !DILocation(line: 217, column: 19, scope: !1188, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 352, column: 15, scope: !1240, inlinedAt: !1246)
!1318 = !DILocation(line: 219, column: 10, scope: !1188, inlinedAt: !1317)
!1319 = !DILocation(line: 219, column: 22, scope: !1188, inlinedAt: !1317)
!1320 = !DILocation(line: 219, column: 25, scope: !1188, inlinedAt: !1317)
!1321 = !DILocation(line: 352, column: 15, scope: !1230, inlinedAt: !1246)
!1322 = !DILocation(line: 355, column: 15, scope: !1239, inlinedAt: !1246)
!1323 = !DILocation(line: 358, column: 19, scope: !1238, inlinedAt: !1246)
!1324 = !DILocation(line: 358, column: 28, scope: !1238, inlinedAt: !1246)
!1325 = !DILocation(line: 358, column: 25, scope: !1238, inlinedAt: !1246)
!1326 = !DILocation(line: 358, column: 19, scope: !1239, inlinedAt: !1246)
!1327 = !DILocation(line: 63, column: 22, scope: !1116, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 360, column: 32, scope: !1237, inlinedAt: !1246)
!1329 = !DILocation(line: 65, column: 10, scope: !1116, inlinedAt: !1328)
!1330 = !DILocation(line: 65, column: 10, scope: !1132, inlinedAt: !1328)
!1331 = !DILocation(line: 360, column: 23, scope: !1237, inlinedAt: !1246)
!1332 = !DILocation(line: 361, column: 23, scope: !1237, inlinedAt: !1246)
!1333 = !DILocation(line: 65, column: 10, scope: !1130, inlinedAt: !1328)
!1334 = !DILocation(line: 361, column: 30, scope: !1335, inlinedAt: !1246)
!1335 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 361, column: 23)
!1336 = !DILocation(line: 363, column: 23, scope: !1337, inlinedAt: !1246)
!1337 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 362, column: 21)
!1338 = !DILocation(line: 365, column: 21, scope: !1337, inlinedAt: !1246)
!1339 = !DILocation(line: 210, column: 21, scope: !1179, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 370, column: 11, scope: !1230, inlinedAt: !1246)
!1341 = !DILocation(line: 210, column: 33, scope: !1179, inlinedAt: !1340)
!1342 = !DILocation(line: 210, column: 19, scope: !1179, inlinedAt: !1340)
!1343 = !DILocation(line: 210, column: 7, scope: !1171, inlinedAt: !1340)
!1344 = !DILocation(line: 211, column: 15, scope: !1179, inlinedAt: !1340)
!1345 = !DILocation(line: 211, column: 5, scope: !1179, inlinedAt: !1340)
!1346 = !DILocation(line: 219, column: 10, scope: !1188, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 375, column: 11, scope: !1348, inlinedAt: !1246)
!1348 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 375, column: 11)
!1349 = !DILocation(line: 373, column: 11, scope: !1232, inlinedAt: !1246)
!1350 = !DILocation(line: 217, column: 19, scope: !1188, inlinedAt: !1347)
!1351 = !DILocation(line: 219, column: 22, scope: !1188, inlinedAt: !1347)
!1352 = !DILocation(line: 219, column: 25, scope: !1188, inlinedAt: !1347)
!1353 = !DILocation(line: 375, column: 11, scope: !1232, inlinedAt: !1246)
!1354 = !DILocation(line: 377, column: 15, scope: !1355, inlinedAt: !1246)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 377, column: 15)
!1356 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 376, column: 9)
!1357 = !DILocation(line: 377, column: 15, scope: !1356, inlinedAt: !1246)
!1358 = !DILocation(line: 379, column: 15, scope: !1359, inlinedAt: !1246)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 378, column: 13)
!1360 = !DILocation(line: 381, column: 13, scope: !1359, inlinedAt: !1246)
!1361 = !DILocation(line: 63, column: 22, scope: !1116, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 384, column: 23, scope: !1363, inlinedAt: !1246)
!1363 = !DILexicalBlockFile(scope: !1356, file: !3, discriminator: 1)
!1364 = !DILocation(line: 65, column: 10, scope: !1116, inlinedAt: !1362)
!1365 = !DILocation(line: 65, column: 10, scope: !1130, inlinedAt: !1362)
!1366 = !DILocation(line: 65, column: 10, scope: !1132, inlinedAt: !1362)
!1367 = !DILocation(line: 65, column: 10, scope: !1134, inlinedAt: !1362)
!1368 = !DILocation(line: 384, column: 41, scope: !1363, inlinedAt: !1246)
!1369 = !DILocation(line: 384, column: 38, scope: !1363, inlinedAt: !1246)
!1370 = !DILocation(line: 384, column: 47, scope: !1363, inlinedAt: !1246)
!1371 = !DILocation(line: 384, column: 55, scope: !1372, inlinedAt: !1246)
!1372 = !DILexicalBlockFile(scope: !1356, file: !3, discriminator: 2)
!1373 = !DILocation(line: 384, column: 52, scope: !1372, inlinedAt: !1246)
!1374 = !DILocation(line: 384, column: 71, scope: !1375, inlinedAt: !1246)
!1375 = !DILexicalBlockFile(scope: !1356, file: !3, discriminator: 3)
!1376 = !DILocation(line: 384, column: 66, scope: !1372, inlinedAt: !1246)
!1377 = !DILocation(line: 105, column: 23, scope: !1141, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 386, column: 15, scope: !1379, inlinedAt: !1246)
!1379 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 385, column: 13)
!1380 = !DILocation(line: 107, column: 10, scope: !1141, inlinedAt: !1378)
!1381 = !DILocation(line: 107, column: 10, scope: !1152, inlinedAt: !1378)
!1382 = distinct !{!1382, !1383, !1384}
!1383 = !DILocation(line: 384, column: 11, scope: !1356)
!1384 = !DILocation(line: 388, column: 13, scope: !1356)
!1385 = !DILocation(line: 107, column: 10, scope: !1154, inlinedAt: !1378)
!1386 = !DILocation(line: 63, column: 22, scope: !1116, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 392, column: 23, scope: !1388, inlinedAt: !1246)
!1388 = !DILexicalBlockFile(scope: !1389, file: !3, discriminator: 1)
!1389 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 391, column: 9)
!1390 = !DILocation(line: 65, column: 10, scope: !1116, inlinedAt: !1387)
!1391 = !DILocation(line: 65, column: 10, scope: !1130, inlinedAt: !1387)
!1392 = !DILocation(line: 65, column: 10, scope: !1132, inlinedAt: !1387)
!1393 = !DILocation(line: 65, column: 10, scope: !1134, inlinedAt: !1387)
!1394 = !DILocation(line: 392, column: 41, scope: !1388, inlinedAt: !1246)
!1395 = !DILocation(line: 392, column: 38, scope: !1388, inlinedAt: !1246)
!1396 = !DILocation(line: 392, column: 47, scope: !1388, inlinedAt: !1246)
!1397 = !DILocation(line: 392, column: 55, scope: !1398, inlinedAt: !1246)
!1398 = !DILexicalBlockFile(scope: !1389, file: !3, discriminator: 2)
!1399 = !DILocation(line: 392, column: 52, scope: !1398, inlinedAt: !1246)
!1400 = !DILocation(line: 392, column: 71, scope: !1401, inlinedAt: !1246)
!1401 = !DILexicalBlockFile(scope: !1389, file: !3, discriminator: 3)
!1402 = !DILocation(line: 392, column: 66, scope: !1398, inlinedAt: !1246)
!1403 = distinct !{!1403, !1404, !1405}
!1404 = !DILocation(line: 392, column: 11, scope: !1389)
!1405 = !DILocation(line: 395, column: 13, scope: !1389)
!1406 = !DILocation(line: 399, column: 11, scope: !1244, inlinedAt: !1246)
!1407 = !DILocation(line: 399, column: 20, scope: !1244, inlinedAt: !1246)
!1408 = !DILocation(line: 399, column: 17, scope: !1244, inlinedAt: !1246)
!1409 = !DILocation(line: 399, column: 36, scope: !1410, inlinedAt: !1246)
!1410 = !DILexicalBlockFile(scope: !1244, file: !3, discriminator: 1)
!1411 = !DILocation(line: 399, column: 31, scope: !1244, inlinedAt: !1246)
!1412 = !DILocation(line: 63, column: 22, scope: !1116, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 401, column: 24, scope: !1243, inlinedAt: !1246)
!1414 = !DILocation(line: 65, column: 10, scope: !1116, inlinedAt: !1413)
!1415 = !DILocation(line: 65, column: 10, scope: !1132, inlinedAt: !1413)
!1416 = !DILocation(line: 401, column: 15, scope: !1243, inlinedAt: !1246)
!1417 = !DILocation(line: 402, column: 15, scope: !1243, inlinedAt: !1246)
!1418 = !DILocation(line: 65, column: 10, scope: !1130, inlinedAt: !1413)
!1419 = !DILocation(line: 402, column: 22, scope: !1420, inlinedAt: !1246)
!1420 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 402, column: 15)
!1421 = !DILocation(line: 408, column: 16, scope: !1422, inlinedAt: !1246)
!1422 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 408, column: 11)
!1423 = !DILocation(line: 410, column: 21, scope: !1424, inlinedAt: !1246)
!1424 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 410, column: 16)
!1425 = !DILocation(line: 410, column: 32, scope: !1424, inlinedAt: !1246)
!1426 = !DILocation(line: 403, column: 13, scope: !1420, inlinedAt: !1246)
!1427 = !DILocation(line: 408, column: 13, scope: !1422, inlinedAt: !1246)
!1428 = !DILocation(line: 408, column: 11, scope: !1232, inlinedAt: !1246)
!1429 = !DILocation(line: 209, column: 14, scope: !1171, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 409, column: 9, scope: !1422, inlinedAt: !1246)
!1431 = !DILocation(line: 210, column: 21, scope: !1179, inlinedAt: !1430)
!1432 = !DILocation(line: 210, column: 33, scope: !1179, inlinedAt: !1430)
!1433 = !DILocation(line: 210, column: 19, scope: !1179, inlinedAt: !1430)
!1434 = !DILocation(line: 210, column: 7, scope: !1171, inlinedAt: !1430)
!1435 = !DILocation(line: 211, column: 15, scope: !1179, inlinedAt: !1430)
!1436 = !DILocation(line: 211, column: 5, scope: !1179, inlinedAt: !1430)
!1437 = !DILocation(line: 410, column: 18, scope: !1424, inlinedAt: !1246)
!1438 = !DILocation(line: 410, column: 37, scope: !1439, inlinedAt: !1246)
!1439 = !DILexicalBlockFile(scope: !1424, file: !3, discriminator: 1)
!1440 = !DILocation(line: 412, column: 15, scope: !1441, inlinedAt: !1246)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 412, column: 15)
!1442 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 411, column: 9)
!1443 = !DILocation(line: 413, column: 15, scope: !1441, inlinedAt: !1246)
!1444 = !DILocation(line: 413, column: 56, scope: !1445, inlinedAt: !1246)
!1445 = !DILexicalBlockFile(scope: !1441, file: !3, discriminator: 2)
!1446 = !DILocation(line: 413, column: 43, scope: !1447, inlinedAt: !1246)
!1447 = !DILexicalBlockFile(scope: !1441, file: !3, discriminator: 1)
!1448 = !DILocation(line: 415, column: 35, scope: !1449, inlinedAt: !1246)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 415, column: 19)
!1450 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 414, column: 13)
!1451 = !DILocation(line: 416, column: 28, scope: !1452, inlinedAt: !1246)
!1452 = !DILexicalBlockFile(scope: !1449, file: !3, discriminator: 1)
!1453 = !DILocation(line: 105, column: 23, scope: !1141, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 417, column: 17, scope: !1449, inlinedAt: !1246)
!1455 = !DILocation(line: 107, column: 10, scope: !1141, inlinedAt: !1454)
!1456 = !DILocation(line: 107, column: 10, scope: !1152, inlinedAt: !1454)
!1457 = !DILocation(line: 107, column: 10, scope: !1154, inlinedAt: !1454)
!1458 = !DILocation(line: 419, column: 15, scope: !1442, inlinedAt: !1246)
!1459 = !DILocation(line: 422, column: 24, scope: !1442, inlinedAt: !1246)
!1460 = !DILocation(line: 422, column: 22, scope: !1442, inlinedAt: !1246)
!1461 = !DILocation(line: 424, column: 9, scope: !1442, inlinedAt: !1246)
!1462 = !DILocation(line: 132, column: 1, scope: !1280, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 464, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !983, file: !3, line: 464, column: 7)
!1465 = !DILocation(line: 134, column: 10, scope: !1280, inlinedAt: !1463)
!1466 = !DILocation(line: 464, column: 7, scope: !1464)
!1467 = !DILocation(line: 464, column: 7, scope: !983)
!1468 = !DILocation(line: 466, column: 17, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 465, column: 5)
!1470 = !DILocation(line: 466, column: 30, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1469, file: !3, discriminator: 1)
!1472 = !DILocation(line: 466, column: 7, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1469, file: !3, discriminator: 2)
!1474 = !DILocation(line: 467, column: 7, scope: !1469)
!1475 = !DILocation(line: 469, column: 7, scope: !1052)
!1476 = !DILocation(line: 469, column: 7, scope: !1056)
!1477 = !DILocation(line: 469, column: 7, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1056, file: !3, discriminator: 2)
!1479 = !DILocation(line: 469, column: 7, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1481, file: !3, discriminator: 3)
!1481 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 469, column: 7)
!1482 = !DILocation(line: 469, column: 7, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1481, file: !3, discriminator: 2)
!1484 = !DILocation(line: 469, column: 7, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1486, file: !3, discriminator: 4)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 469, column: 7)
!1487 = !DILocation(line: 469, column: 7, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1052, file: !3, discriminator: 11)
!1489 = !DILocation(line: 469, column: 7, scope: !1074)
!1490 = !DILocation(line: 470, column: 5, scope: !1053)
!1491 = !DILocation(line: 471, column: 12, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 471, column: 12)
!1493 = !DILocation(line: 471, column: 28, scope: !1492)
!1494 = !DILocation(line: 471, column: 12, scope: !1053)
!1495 = !DILocation(line: 473, column: 17, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 472, column: 5)
!1497 = !DILocation(line: 473, column: 30, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1496, file: !3, discriminator: 1)
!1499 = !DILocation(line: 473, column: 7, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1496, file: !3, discriminator: 2)
!1501 = !DILocation(line: 474, column: 7, scope: !1496)
!1502 = !DILocation(line: 477, column: 1, scope: !983)
!1503 = !DILocation(line: 139, column: 25, scope: !189)
!1504 = !DILocation(line: 139, column: 48, scope: !189)
!1505 = !DILocation(line: 141, column: 10, scope: !189)
!1506 = !DILocation(line: 142, column: 10, scope: !189)
!1507 = !DILocation(line: 143, column: 8, scope: !189)
!1508 = !DILocation(line: 144, column: 8, scope: !189)
!1509 = !DILocation(line: 145, column: 8, scope: !189)
!1510 = !DILocation(line: 148, column: 8, scope: !189)
!1511 = !DILocation(line: 153, column: 16, scope: !204)
!1512 = !DILocation(line: 153, column: 37, scope: !204)
!1513 = !DILocation(line: 153, column: 40, scope: !203)
!1514 = !DILocation(line: 153, column: 40, scope: !207)
!1515 = !DILocation(line: 153, column: 40, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !207, file: !147, discriminator: 3)
!1517 = !DILocation(line: 153, column: 40, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1519, file: !147, discriminator: 4)
!1519 = distinct !DILexicalBlock(scope: !207, file: !147, line: 153, column: 40)
!1520 = !DILocation(line: 153, column: 40, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1519, file: !147, discriminator: 3)
!1522 = !DILocation(line: 153, column: 40, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1524, file: !147, discriminator: 5)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !147, line: 153, column: 40)
!1525 = !DILocation(line: 153, column: 40, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1527, file: !147, discriminator: 5)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !147, line: 153, column: 40)
!1528 = !DILocation(line: 153, column: 40, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !204, file: !147, discriminator: 14)
!1530 = !DILocation(line: 153, column: 7, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !189, file: !147, discriminator: 14)
!1532 = !DILocation(line: 163, column: 11, scope: !215)
!1533 = !DILocation(line: 163, column: 11, scope: !216)
!1534 = !DILocation(line: 167, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !215, file: !147, line: 164, column: 9)
!1536 = !DILocation(line: 168, column: 13, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1538, file: !147, discriminator: 1)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !147, line: 168, column: 13)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !147, line: 167, column: 15)
!1540 = !DILocation(line: 168, column: 13, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1538, file: !147, discriminator: 3)
!1542 = !DILocation(line: 168, column: 13, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1538, file: !147, discriminator: 4)
!1544 = !DILocation(line: 168, column: 13, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1538, file: !147, discriminator: 7)
!1546 = !DILocation(line: 175, column: 15, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1535, file: !147, line: 175, column: 15)
!1548 = !DILocation(line: 175, column: 29, scope: !1547)
!1549 = !DILocation(line: 175, column: 33, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1547, file: !147, discriminator: 1)
!1551 = !DILocation(line: 176, column: 13, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !147, discriminator: 1)
!1553 = distinct !DILexicalBlock(scope: !1547, file: !147, line: 176, column: 13)
!1554 = !DILocation(line: 176, column: 13, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1553, file: !147, discriminator: 3)
!1556 = !DILocation(line: 176, column: 13, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1553, file: !147, discriminator: 4)
!1558 = !DILocation(line: 176, column: 13, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1553, file: !147, discriminator: 7)
!1560 = !DILocation(line: 180, column: 22, scope: !1535)
!1561 = !DILocation(line: 182, column: 9, scope: !1535)
!1562 = distinct !{!1562, !1563, !1564}
!1563 = !DILocation(line: 161, column: 3, scope: !189)
!1564 = !DILocation(line: 278, column: 5, scope: !189)
!1565 = !DILocation(line: 184, column: 19, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !214, file: !147, discriminator: 1)
!1567 = !{!1126, !1126, i64 0}
!1568 = !DILocation(line: 184, column: 63, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !214, file: !147, discriminator: 2)
!1570 = !DILocation(line: 184, column: 50, scope: !1566)
!1571 = !DILocation(line: 188, column: 15, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !214, file: !147, line: 185, column: 9)
!1573 = !DILocation(line: 192, column: 34, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !147, line: 192, column: 19)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !147, line: 189, column: 13)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !147, line: 188, column: 15)
!1577 = !DILocation(line: 198, column: 21, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1579, file: !147, discriminator: 1)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !147, line: 198, column: 21)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !147, line: 195, column: 23)
!1581 = distinct !DILexicalBlock(scope: !1574, file: !147, line: 193, column: 17)
!1582 = !DILocation(line: 198, column: 21, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1579, file: !147, discriminator: 3)
!1584 = !DILocation(line: 198, column: 21, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1579, file: !147, discriminator: 4)
!1586 = !DILocation(line: 192, column: 38, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1574, file: !147, discriminator: 1)
!1588 = !DILocation(line: 203, column: 19, scope: !1575)
!1589 = !DILocalVariable(name: "lo", arg: 1, scope: !1590, file: !147, line: 48, type: !43)
!1590 = distinct !DISubprogram(name: "add_range_pair", scope: !147, file: !147, line: 48, type: !1591, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !43, !43}
!1593 = !{!1589, !1594}
!1594 = !DILocalVariable(name: "hi", arg: 2, scope: !1590, file: !147, line: 48, type: !43)
!1595 = !DILocation(line: 48, column: 24, scope: !1590, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 206, column: 19, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !147, line: 204, column: 17)
!1598 = distinct !DILexicalBlock(scope: !1575, file: !147, line: 203, column: 19)
!1599 = !DILocation(line: 48, column: 35, scope: !1590, inlinedAt: !1596)
!1600 = !DILocation(line: 50, column: 7, scope: !1601, inlinedAt: !1596)
!1601 = distinct !DILexicalBlock(scope: !1590, file: !147, line: 50, column: 7)
!1602 = !DILocation(line: 50, column: 16, scope: !1601, inlinedAt: !1596)
!1603 = !DILocation(line: 50, column: 13, scope: !1601, inlinedAt: !1596)
!1604 = !DILocation(line: 50, column: 7, scope: !1590, inlinedAt: !1596)
!1605 = !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1596)
!1606 = !DILocation(line: 180, column: 19, scope: !166, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1596)
!1608 = !DILocation(line: 180, column: 30, scope: !166, inlinedAt: !1607)
!1609 = !DILocation(line: 180, column: 41, scope: !166, inlinedAt: !1607)
!1610 = !DILocation(line: 182, column: 10, scope: !166, inlinedAt: !1607)
!1611 = !DILocation(line: 184, column: 9, scope: !1612, inlinedAt: !1607)
!1612 = distinct !DILexicalBlock(scope: !166, file: !165, line: 184, column: 7)
!1613 = !DILocation(line: 184, column: 7, scope: !166, inlinedAt: !1607)
!1614 = !DILocation(line: 186, column: 13, scope: !1615, inlinedAt: !1607)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !165, line: 186, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !165, line: 185, column: 5)
!1617 = !DILocation(line: 186, column: 11, scope: !1616, inlinedAt: !1607)
!1618 = !DILocation(line: 205, column: 11, scope: !1619, inlinedAt: !1607)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !165, line: 204, column: 11)
!1620 = distinct !DILexicalBlock(scope: !1612, file: !165, line: 199, column: 5)
!1621 = !DILocation(line: 204, column: 11, scope: !1620, inlinedAt: !1607)
!1622 = !DILocation(line: 206, column: 9, scope: !1619, inlinedAt: !1607)
!1623 = !DILocation(line: 207, column: 14, scope: !1620, inlinedAt: !1607)
!1624 = !DILocation(line: 207, column: 18, scope: !1620, inlinedAt: !1607)
!1625 = !DILocation(line: 207, column: 9, scope: !1620, inlinedAt: !1607)
!1626 = !DILocation(line: 210, column: 7, scope: !166, inlinedAt: !1607)
!1627 = !DILocation(line: 211, column: 25, scope: !166, inlinedAt: !1607)
!1628 = !DILocation(line: 211, column: 10, scope: !166, inlinedAt: !1607)
!1629 = !DILocation(line: 51, column: 9, scope: !1601, inlinedAt: !1596)
!1630 = !DILocation(line: 51, column: 5, scope: !1601, inlinedAt: !1596)
!1631 = !DILocation(line: 53, column: 3, scope: !1590, inlinedAt: !1596)
!1632 = !DILocation(line: 52, column: 7, scope: !1590, inlinedAt: !1596)
!1633 = !DILocation(line: 52, column: 14, scope: !1590, inlinedAt: !1596)
!1634 = !DILocation(line: 52, column: 17, scope: !1590, inlinedAt: !1596)
!1635 = !DILocation(line: 53, column: 7, scope: !1590, inlinedAt: !1596)
!1636 = !DILocation(line: 53, column: 14, scope: !1590, inlinedAt: !1596)
!1637 = !DILocation(line: 207, column: 17, scope: !1597)
!1638 = !DILocation(line: 211, column: 29, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !147, line: 211, column: 23)
!1640 = distinct !DILexicalBlock(scope: !1598, file: !147, line: 209, column: 17)
!1641 = !DILocation(line: 211, column: 23, scope: !1640)
!1642 = !DILocation(line: 212, column: 21, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1644, file: !147, discriminator: 1)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !147, line: 212, column: 21)
!1645 = !DILocation(line: 212, column: 21, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1644, file: !147, discriminator: 4)
!1647 = !DILocation(line: 212, column: 21, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1644, file: !147, discriminator: 5)
!1649 = !DILocation(line: 48, column: 24, scope: !1590, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 214, column: 19, scope: !1640)
!1651 = !DILocation(line: 48, column: 35, scope: !1590, inlinedAt: !1650)
!1652 = !DILocation(line: 50, column: 7, scope: !1601, inlinedAt: !1650)
!1653 = !DILocation(line: 50, column: 16, scope: !1601, inlinedAt: !1650)
!1654 = !DILocation(line: 50, column: 13, scope: !1601, inlinedAt: !1650)
!1655 = !DILocation(line: 50, column: 7, scope: !1590, inlinedAt: !1650)
!1656 = !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1650)
!1657 = !DILocation(line: 180, column: 19, scope: !166, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1650)
!1659 = !DILocation(line: 180, column: 30, scope: !166, inlinedAt: !1658)
!1660 = !DILocation(line: 180, column: 41, scope: !166, inlinedAt: !1658)
!1661 = !DILocation(line: 182, column: 10, scope: !166, inlinedAt: !1658)
!1662 = !DILocation(line: 184, column: 9, scope: !1612, inlinedAt: !1658)
!1663 = !DILocation(line: 184, column: 7, scope: !166, inlinedAt: !1658)
!1664 = !DILocation(line: 186, column: 13, scope: !1615, inlinedAt: !1658)
!1665 = !DILocation(line: 186, column: 11, scope: !1616, inlinedAt: !1658)
!1666 = !DILocation(line: 205, column: 11, scope: !1619, inlinedAt: !1658)
!1667 = !DILocation(line: 204, column: 11, scope: !1620, inlinedAt: !1658)
!1668 = !DILocation(line: 206, column: 9, scope: !1619, inlinedAt: !1658)
!1669 = !DILocation(line: 207, column: 14, scope: !1620, inlinedAt: !1658)
!1670 = !DILocation(line: 207, column: 18, scope: !1620, inlinedAt: !1658)
!1671 = !DILocation(line: 207, column: 9, scope: !1620, inlinedAt: !1658)
!1672 = !DILocation(line: 210, column: 7, scope: !166, inlinedAt: !1658)
!1673 = !DILocation(line: 211, column: 25, scope: !166, inlinedAt: !1658)
!1674 = !DILocation(line: 211, column: 10, scope: !166, inlinedAt: !1658)
!1675 = !DILocation(line: 51, column: 9, scope: !1601, inlinedAt: !1650)
!1676 = !DILocation(line: 51, column: 5, scope: !1601, inlinedAt: !1650)
!1677 = !DILocation(line: 53, column: 3, scope: !1590, inlinedAt: !1650)
!1678 = !DILocation(line: 52, column: 7, scope: !1590, inlinedAt: !1650)
!1679 = !DILocation(line: 52, column: 14, scope: !1590, inlinedAt: !1650)
!1680 = !DILocation(line: 52, column: 17, scope: !1590, inlinedAt: !1650)
!1681 = !DILocation(line: 53, column: 7, scope: !1590, inlinedAt: !1650)
!1682 = !DILocation(line: 53, column: 14, scope: !1590, inlinedAt: !1650)
!1683 = !DILocation(line: 221, column: 25, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !147, line: 221, column: 19)
!1685 = distinct !DILexicalBlock(scope: !1576, file: !147, line: 219, column: 13)
!1686 = !DILocation(line: 221, column: 19, scope: !1685)
!1687 = !DILocation(line: 222, column: 17, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1689, file: !147, discriminator: 1)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !147, line: 222, column: 17)
!1690 = !DILocation(line: 222, column: 17, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1689, file: !147, discriminator: 3)
!1692 = !DILocation(line: 222, column: 17, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1689, file: !147, discriminator: 4)
!1694 = !DILocation(line: 222, column: 17, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1689, file: !147, discriminator: 7)
!1696 = !DILocation(line: 48, column: 24, scope: !1590, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 226, column: 15, scope: !1685)
!1698 = !DILocation(line: 48, column: 35, scope: !1590, inlinedAt: !1697)
!1699 = !DILocation(line: 50, column: 7, scope: !1601, inlinedAt: !1697)
!1700 = !DILocation(line: 50, column: 16, scope: !1601, inlinedAt: !1697)
!1701 = !DILocation(line: 50, column: 13, scope: !1601, inlinedAt: !1697)
!1702 = !DILocation(line: 50, column: 7, scope: !1590, inlinedAt: !1697)
!1703 = !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1697)
!1704 = !DILocation(line: 180, column: 19, scope: !166, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1697)
!1706 = !DILocation(line: 180, column: 30, scope: !166, inlinedAt: !1705)
!1707 = !DILocation(line: 180, column: 41, scope: !166, inlinedAt: !1705)
!1708 = !DILocation(line: 182, column: 10, scope: !166, inlinedAt: !1705)
!1709 = !DILocation(line: 184, column: 9, scope: !1612, inlinedAt: !1705)
!1710 = !DILocation(line: 184, column: 7, scope: !166, inlinedAt: !1705)
!1711 = !DILocation(line: 186, column: 13, scope: !1615, inlinedAt: !1705)
!1712 = !DILocation(line: 186, column: 11, scope: !1616, inlinedAt: !1705)
!1713 = !DILocation(line: 205, column: 11, scope: !1619, inlinedAt: !1705)
!1714 = !DILocation(line: 204, column: 11, scope: !1620, inlinedAt: !1705)
!1715 = !DILocation(line: 206, column: 9, scope: !1619, inlinedAt: !1705)
!1716 = !DILocation(line: 207, column: 14, scope: !1620, inlinedAt: !1705)
!1717 = !DILocation(line: 207, column: 18, scope: !1620, inlinedAt: !1705)
!1718 = !DILocation(line: 207, column: 9, scope: !1620, inlinedAt: !1705)
!1719 = !DILocation(line: 210, column: 7, scope: !166, inlinedAt: !1705)
!1720 = !DILocation(line: 211, column: 25, scope: !166, inlinedAt: !1705)
!1721 = !DILocation(line: 211, column: 10, scope: !166, inlinedAt: !1705)
!1722 = !DILocation(line: 51, column: 9, scope: !1601, inlinedAt: !1697)
!1723 = !DILocation(line: 51, column: 5, scope: !1601, inlinedAt: !1697)
!1724 = !DILocation(line: 53, column: 3, scope: !1590, inlinedAt: !1697)
!1725 = !DILocation(line: 52, column: 7, scope: !1590, inlinedAt: !1697)
!1726 = !DILocation(line: 52, column: 14, scope: !1590, inlinedAt: !1697)
!1727 = !DILocation(line: 52, column: 17, scope: !1590, inlinedAt: !1697)
!1728 = !DILocation(line: 53, column: 7, scope: !1590, inlinedAt: !1697)
!1729 = !DILocation(line: 53, column: 14, scope: !1590, inlinedAt: !1697)
!1730 = !DILocation(line: 285, column: 10, scope: !189)
!1731 = !DILocation(line: 53, column: 17, scope: !1590, inlinedAt: !1596)
!1732 = !DILocation(line: 54, column: 3, scope: !1590, inlinedAt: !1596)
!1733 = !DILocation(line: 230, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1572, file: !147, line: 230, column: 15)
!1735 = !DILocation(line: 230, column: 25, scope: !1734)
!1736 = !DILocation(line: 230, column: 15, scope: !1572)
!1737 = !DILocation(line: 184, column: 53, scope: !1569)
!1738 = !DILocation(line: 237, column: 16, scope: !213)
!1739 = !DILocation(line: 237, column: 16, scope: !214)
!1740 = !DILocation(line: 242, column: 30, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1742, file: !147, discriminator: 1)
!1742 = distinct !DILexicalBlock(scope: !212, file: !147, line: 242, column: 15)
!1743 = !DILocation(line: 242, column: 26, scope: !1742)
!1744 = !DILocation(line: 243, column: 23, scope: !1742)
!1745 = !DILocation(line: 243, column: 13, scope: !1742)
!1746 = !DILocation(line: 258, column: 28, scope: !210)
!1747 = !DILocation(line: 252, column: 16, scope: !211)
!1748 = !DILocation(line: 252, column: 16, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !211, file: !147, discriminator: 1)
!1750 = !DILocation(line: 253, column: 24, scope: !1749)
!1751 = !DILocation(line: 253, column: 15, scope: !211)
!1752 = !DILocation(line: 258, column: 22, scope: !210)
!1753 = !DILocation(line: 259, column: 31, scope: !210)
!1754 = !DILocation(line: 259, column: 21, scope: !210)
!1755 = !DILocation(line: 260, column: 37, scope: !210)
!1756 = !DILocation(line: 260, column: 28, scope: !210)
!1757 = !DILocation(line: 262, column: 29, scope: !210)
!1758 = !DILocation(line: 263, column: 28, scope: !210)
!1759 = !DILocation(line: 260, column: 15, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !210, file: !147, discriminator: 3)
!1761 = !DILocation(line: 264, column: 15, scope: !210)
!1762 = !DILocation(line: 265, column: 15, scope: !210)
!1763 = !DILocation(line: 268, column: 19, scope: !212)
!1764 = !DILocation(line: 272, column: 33, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !213, file: !147, line: 271, column: 9)
!1766 = !DILocation(line: 272, column: 24, scope: !1765)
!1767 = !DILocation(line: 274, column: 25, scope: !1765)
!1768 = !DILocation(line: 275, column: 24, scope: !1765)
!1769 = !DILocation(line: 272, column: 11, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1765, file: !147, discriminator: 3)
!1771 = !DILocation(line: 276, column: 11, scope: !1765)
!1772 = !DILocation(line: 280, column: 8, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !189, file: !147, line: 280, column: 7)
!1774 = !DILocation(line: 280, column: 7, scope: !189)
!1775 = !DILocation(line: 281, column: 5, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1777, file: !147, discriminator: 1)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !147, line: 281, column: 5)
!1778 = !DILocation(line: 281, column: 5, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1777, file: !147, discriminator: 3)
!1780 = !DILocation(line: 281, column: 5, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1777, file: !147, discriminator: 4)
!1782 = !DILocation(line: 281, column: 5, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1777, file: !147, discriminator: 7)
!1784 = !DILocation(line: 285, column: 3, scope: !189)
!1785 = !DILocation(line: 147, column: 10, scope: !189)
!1786 = !DILocation(line: 288, column: 19, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !221, file: !147, discriminator: 1)
!1788 = !DILocation(line: 288, column: 17, scope: !1787)
!1789 = !DILocation(line: 288, column: 3, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !222, file: !147, discriminator: 1)
!1791 = !DILocation(line: 290, column: 34, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !147, discriminator: 1)
!1793 = distinct !DILexicalBlock(scope: !219, file: !147, line: 290, column: 7)
!1794 = !DILocation(line: 290, column: 25, scope: !219)
!1795 = !DILocation(line: 290, column: 19, scope: !219)
!1796 = !DILocation(line: 290, column: 32, scope: !1792)
!1797 = !DILocation(line: 290, column: 7, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !219, file: !147, discriminator: 1)
!1799 = distinct !{!1799, !1800, !1801}
!1800 = !DILocation(line: 288, column: 3, scope: !222)
!1801 = !DILocation(line: 302, column: 5, scope: !222)
!1802 = !DILocation(line: 292, column: 15, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !147, line: 292, column: 15)
!1804 = distinct !DILexicalBlock(scope: !1793, file: !147, line: 291, column: 9)
!1805 = !DILocation(line: 292, column: 22, scope: !1803)
!1806 = !DILocation(line: 292, column: 35, scope: !1803)
!1807 = !DILocation(line: 292, column: 25, scope: !1803)
!1808 = !DILocation(line: 292, column: 15, scope: !1804)
!1809 = !DILocation(line: 294, column: 27, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1803, file: !147, line: 293, column: 13)
!1811 = !DILocation(line: 294, column: 25, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1810, file: !147, discriminator: 3)
!1813 = !DILocation(line: 295, column: 28, scope: !1810)
!1814 = !DILocation(line: 295, column: 15, scope: !1810)
!1815 = !DILocation(line: 295, column: 41, scope: !1810)
!1816 = !DILocation(line: 295, column: 53, scope: !1810)
!1817 = !DILocation(line: 295, column: 62, scope: !1810)
!1818 = !DILocation(line: 296, column: 20, scope: !1810)
!1819 = distinct !{!1819, !1820, !1821}
!1820 = !DILocation(line: 290, column: 7, scope: !219)
!1821 = !DILocation(line: 301, column: 9, scope: !219)
!1822 = !DILocation(line: 304, column: 15, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !189, file: !147, line: 304, column: 7)
!1824 = !DILocation(line: 304, column: 7, scope: !189)
!1825 = !DILocation(line: 74, column: 32, scope: !1826, inlinedAt: !1831)
!1826 = distinct !DISubprogram(name: "complement_rp", scope: !147, file: !147, line: 72, type: !754, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DILocalVariable(name: "c", scope: !1826, file: !147, line: 74, type: !225)
!1829 = !DILocalVariable(name: "n", scope: !1826, file: !147, line: 75, type: !43)
!1830 = !DILocalVariable(name: "i", scope: !1826, file: !147, line: 76, type: !43)
!1831 = distinct !DILocation(line: 305, column: 5, scope: !1823)
!1832 = !DILocation(line: 74, column: 28, scope: !1826, inlinedAt: !1831)
!1833 = !DILocation(line: 75, column: 10, scope: !1826, inlinedAt: !1831)
!1834 = !DILocation(line: 78, column: 7, scope: !1826, inlinedAt: !1831)
!1835 = !DILocation(line: 79, column: 9, scope: !1826, inlinedAt: !1831)
!1836 = !DILocation(line: 80, column: 19, scope: !1826, inlinedAt: !1831)
!1837 = !DILocation(line: 82, column: 12, scope: !1838, inlinedAt: !1831)
!1838 = distinct !DILexicalBlock(scope: !1826, file: !147, line: 82, column: 7)
!1839 = !DILocation(line: 82, column: 15, scope: !1838, inlinedAt: !1831)
!1840 = !DILocation(line: 82, column: 7, scope: !1826, inlinedAt: !1831)
!1841 = !DILocation(line: 83, column: 32, scope: !1838, inlinedAt: !1831)
!1842 = !DILocation(line: 48, column: 24, scope: !1590, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 83, column: 5, scope: !1838, inlinedAt: !1831)
!1844 = !DILocation(line: 48, column: 35, scope: !1590, inlinedAt: !1843)
!1845 = !DILocation(line: 180, column: 19, scope: !166, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1843)
!1847 = !DILocation(line: 180, column: 30, scope: !166, inlinedAt: !1846)
!1848 = !DILocation(line: 180, column: 41, scope: !166, inlinedAt: !1846)
!1849 = !DILocation(line: 182, column: 10, scope: !166, inlinedAt: !1846)
!1850 = !DILocation(line: 210, column: 7, scope: !166, inlinedAt: !1846)
!1851 = !DILocation(line: 211, column: 10, scope: !166, inlinedAt: !1846)
!1852 = !DILocation(line: 51, column: 9, scope: !1601, inlinedAt: !1843)
!1853 = !DILocation(line: 51, column: 5, scope: !1601, inlinedAt: !1843)
!1854 = !DILocation(line: 52, column: 14, scope: !1590, inlinedAt: !1843)
!1855 = !DILocation(line: 52, column: 17, scope: !1590, inlinedAt: !1843)
!1856 = !DILocation(line: 53, column: 7, scope: !1590, inlinedAt: !1843)
!1857 = !DILocation(line: 53, column: 14, scope: !1590, inlinedAt: !1843)
!1858 = !DILocation(line: 53, column: 17, scope: !1590, inlinedAt: !1843)
!1859 = !DILocation(line: 54, column: 3, scope: !1590, inlinedAt: !1843)
!1860 = !DILocation(line: 83, column: 5, scope: !1838, inlinedAt: !1831)
!1861 = !DILocation(line: 76, column: 10, scope: !1826, inlinedAt: !1831)
!1862 = !DILocation(line: 85, column: 17, scope: !1863, inlinedAt: !1831)
!1863 = !DILexicalBlockFile(scope: !1864, file: !147, discriminator: 1)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !147, line: 85, column: 3)
!1865 = distinct !DILexicalBlock(scope: !1826, file: !147, line: 85, column: 3)
!1866 = !DILocation(line: 85, column: 3, scope: !1867, inlinedAt: !1831)
!1867 = !DILexicalBlockFile(scope: !1865, file: !147, discriminator: 1)
!1868 = !DILocation(line: 87, column: 14, scope: !1869, inlinedAt: !1831)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !147, line: 87, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1864, file: !147, line: 86, column: 5)
!1871 = !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 90, column: 7, scope: !1870, inlinedAt: !1831)
!1873 = !DILocation(line: 50, column: 7, scope: !1601, inlinedAt: !1872)
!1874 = !DILocation(line: 87, column: 18, scope: !1869, inlinedAt: !1831)
!1875 = !DILocation(line: 87, column: 21, scope: !1869, inlinedAt: !1831)
!1876 = !DILocation(line: 87, column: 33, scope: !1869, inlinedAt: !1831)
!1877 = !DILocation(line: 87, column: 25, scope: !1869, inlinedAt: !1831)
!1878 = !DILocation(line: 87, column: 11, scope: !1870, inlinedAt: !1831)
!1879 = !DILocation(line: 90, column: 46, scope: !1870, inlinedAt: !1831)
!1880 = !DILocation(line: 48, column: 24, scope: !1590, inlinedAt: !1872)
!1881 = !DILocation(line: 48, column: 35, scope: !1590, inlinedAt: !1872)
!1882 = !DILocation(line: 50, column: 16, scope: !1601, inlinedAt: !1872)
!1883 = !DILocation(line: 50, column: 13, scope: !1601, inlinedAt: !1872)
!1884 = !DILocation(line: 50, column: 7, scope: !1590, inlinedAt: !1872)
!1885 = !DILocation(line: 180, column: 19, scope: !166, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1872)
!1887 = !DILocation(line: 180, column: 30, scope: !166, inlinedAt: !1886)
!1888 = !DILocation(line: 180, column: 41, scope: !166, inlinedAt: !1886)
!1889 = !DILocation(line: 182, column: 10, scope: !166, inlinedAt: !1886)
!1890 = !DILocation(line: 184, column: 9, scope: !1612, inlinedAt: !1886)
!1891 = !DILocation(line: 184, column: 7, scope: !166, inlinedAt: !1886)
!1892 = !DILocation(line: 186, column: 13, scope: !1615, inlinedAt: !1886)
!1893 = !DILocation(line: 186, column: 11, scope: !1616, inlinedAt: !1886)
!1894 = !DILocation(line: 205, column: 11, scope: !1619, inlinedAt: !1886)
!1895 = !DILocation(line: 204, column: 11, scope: !1620, inlinedAt: !1886)
!1896 = !DILocation(line: 206, column: 9, scope: !1619, inlinedAt: !1886)
!1897 = !DILocation(line: 207, column: 14, scope: !1620, inlinedAt: !1886)
!1898 = !DILocation(line: 207, column: 18, scope: !1620, inlinedAt: !1886)
!1899 = !DILocation(line: 207, column: 9, scope: !1620, inlinedAt: !1886)
!1900 = !DILocation(line: 210, column: 7, scope: !166, inlinedAt: !1886)
!1901 = !DILocation(line: 211, column: 25, scope: !166, inlinedAt: !1886)
!1902 = !DILocation(line: 211, column: 10, scope: !166, inlinedAt: !1886)
!1903 = !DILocation(line: 51, column: 9, scope: !1601, inlinedAt: !1872)
!1904 = !DILocation(line: 51, column: 5, scope: !1601, inlinedAt: !1872)
!1905 = !DILocation(line: 52, column: 7, scope: !1590, inlinedAt: !1872)
!1906 = !DILocation(line: 52, column: 14, scope: !1590, inlinedAt: !1872)
!1907 = !DILocation(line: 52, column: 17, scope: !1590, inlinedAt: !1872)
!1908 = !DILocation(line: 53, column: 7, scope: !1590, inlinedAt: !1872)
!1909 = !DILocation(line: 53, column: 14, scope: !1590, inlinedAt: !1872)
!1910 = !DILocation(line: 53, column: 17, scope: !1590, inlinedAt: !1872)
!1911 = !DILocation(line: 54, column: 3, scope: !1590, inlinedAt: !1872)
!1912 = !DILocation(line: 91, column: 5, scope: !1870, inlinedAt: !1831)
!1913 = !DILocation(line: 85, column: 22, scope: !1914, inlinedAt: !1831)
!1914 = !DILexicalBlockFile(scope: !1864, file: !147, discriminator: 2)
!1915 = distinct !{!1915, !1916, !1917}
!1916 = !DILocation(line: 85, column: 3, scope: !1865)
!1917 = !DILocation(line: 91, column: 5, scope: !1865)
!1918 = !DILocation(line: 93, column: 10, scope: !1919, inlinedAt: !1831)
!1919 = distinct !DILexicalBlock(scope: !1826, file: !147, line: 93, column: 7)
!1920 = !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 94, column: 5, scope: !1919, inlinedAt: !1831)
!1922 = !DILocation(line: 50, column: 7, scope: !1601, inlinedAt: !1921)
!1923 = !DILocation(line: 93, column: 14, scope: !1919, inlinedAt: !1831)
!1924 = !DILocation(line: 93, column: 17, scope: !1919, inlinedAt: !1831)
!1925 = !DILocation(line: 93, column: 7, scope: !1826, inlinedAt: !1831)
!1926 = !DILocation(line: 94, column: 31, scope: !1919, inlinedAt: !1831)
!1927 = !DILocation(line: 48, column: 24, scope: !1590, inlinedAt: !1921)
!1928 = !DILocation(line: 48, column: 35, scope: !1590, inlinedAt: !1921)
!1929 = !DILocation(line: 50, column: 16, scope: !1601, inlinedAt: !1921)
!1930 = !DILocation(line: 50, column: 13, scope: !1601, inlinedAt: !1921)
!1931 = !DILocation(line: 50, column: 7, scope: !1590, inlinedAt: !1921)
!1932 = !DILocation(line: 180, column: 19, scope: !166, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 51, column: 11, scope: !1601, inlinedAt: !1921)
!1934 = !DILocation(line: 180, column: 30, scope: !166, inlinedAt: !1933)
!1935 = !DILocation(line: 180, column: 41, scope: !166, inlinedAt: !1933)
!1936 = !DILocation(line: 182, column: 10, scope: !166, inlinedAt: !1933)
!1937 = !DILocation(line: 184, column: 9, scope: !1612, inlinedAt: !1933)
!1938 = !DILocation(line: 184, column: 7, scope: !166, inlinedAt: !1933)
!1939 = !DILocation(line: 186, column: 13, scope: !1615, inlinedAt: !1933)
!1940 = !DILocation(line: 186, column: 11, scope: !1616, inlinedAt: !1933)
!1941 = !DILocation(line: 205, column: 11, scope: !1619, inlinedAt: !1933)
!1942 = !DILocation(line: 204, column: 11, scope: !1620, inlinedAt: !1933)
!1943 = !DILocation(line: 206, column: 9, scope: !1619, inlinedAt: !1933)
!1944 = !DILocation(line: 207, column: 14, scope: !1620, inlinedAt: !1933)
!1945 = !DILocation(line: 207, column: 18, scope: !1620, inlinedAt: !1933)
!1946 = !DILocation(line: 207, column: 9, scope: !1620, inlinedAt: !1933)
!1947 = !DILocation(line: 210, column: 7, scope: !166, inlinedAt: !1933)
!1948 = !DILocation(line: 211, column: 25, scope: !166, inlinedAt: !1933)
!1949 = !DILocation(line: 211, column: 10, scope: !166, inlinedAt: !1933)
!1950 = !DILocation(line: 51, column: 9, scope: !1601, inlinedAt: !1921)
!1951 = !DILocation(line: 51, column: 5, scope: !1601, inlinedAt: !1921)
!1952 = !DILocation(line: 53, column: 3, scope: !1590, inlinedAt: !1921)
!1953 = !DILocation(line: 52, column: 7, scope: !1590, inlinedAt: !1921)
!1954 = !DILocation(line: 52, column: 14, scope: !1590, inlinedAt: !1921)
!1955 = !DILocation(line: 52, column: 17, scope: !1590, inlinedAt: !1921)
!1956 = !DILocation(line: 53, column: 7, scope: !1590, inlinedAt: !1921)
!1957 = !DILocation(line: 53, column: 14, scope: !1590, inlinedAt: !1921)
!1958 = !DILocation(line: 53, column: 17, scope: !1590, inlinedAt: !1921)
!1959 = !DILocation(line: 54, column: 3, scope: !1590, inlinedAt: !1921)
!1960 = !DILocation(line: 94, column: 5, scope: !1919, inlinedAt: !1831)
!1961 = !DILocation(line: 96, column: 9, scope: !1826, inlinedAt: !1831)
!1962 = !DILocation(line: 96, column: 3, scope: !1826, inlinedAt: !1831)
!1963 = !DILocation(line: 305, column: 5, scope: !1823)
!1964 = !DILocation(line: 310, column: 3, scope: !189)
!1965 = !DILocation(line: 311, column: 19, scope: !189)
!1966 = !DILocation(line: 311, column: 30, scope: !189)
!1967 = !DILocation(line: 311, column: 9, scope: !189)
!1968 = !DILocation(line: 311, column: 7, scope: !189)
!1969 = !DILocation(line: 312, column: 27, scope: !189)
!1970 = !DILocation(line: 312, column: 33, scope: !189)
!1971 = !DILocation(line: 312, column: 18, scope: !189)
!1972 = !DILocation(line: 313, column: 1, scope: !189)
!1973 = !DILocation(line: 312, column: 21, scope: !189)
!1974 = distinct !DISubprogram(name: "compare_ranges", scope: !147, file: !147, line: 61, type: !1975, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!60, !46, !46}
!1977 = !{!1978, !1979, !1980, !1981}
!1978 = !DILocalVariable(name: "a", arg: 1, scope: !1974, file: !147, line: 61, type: !46)
!1979 = !DILocalVariable(name: "b", arg: 2, scope: !1974, file: !147, line: 61, type: !46)
!1980 = !DILocalVariable(name: "a_start", scope: !1974, file: !147, line: 63, type: !60)
!1981 = !DILocalVariable(name: "b_start", scope: !1974, file: !147, line: 64, type: !60)
!1982 = !DILocation(line: 61, column: 29, scope: !1974)
!1983 = !DILocation(line: 61, column: 44, scope: !1974)
!1984 = !DILocation(line: 63, column: 56, scope: !1974)
!1985 = !DILocation(line: 63, column: 17, scope: !1974)
!1986 = !DILocation(line: 63, column: 7, scope: !1974)
!1987 = !DILocation(line: 64, column: 56, scope: !1974)
!1988 = !DILocation(line: 64, column: 17, scope: !1974)
!1989 = !DILocation(line: 64, column: 7, scope: !1974)
!1990 = !DILocation(line: 65, column: 18, scope: !1974)
!1991 = !DILocation(line: 65, column: 43, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1974, file: !147, discriminator: 2)
!1993 = !DILocation(line: 65, column: 10, scope: !1974)
!1994 = !DILocation(line: 65, column: 3, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1974, file: !147, discriminator: 3)
!1996 = distinct !DISubprogram(name: "reset_fields", scope: !147, file: !147, line: 316, type: !754, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !232)
!1997 = !DILocation(line: 318, column: 9, scope: !1996)
!1998 = !DILocation(line: 319, column: 19, scope: !1996)
!1999 = !DILocation(line: 320, column: 9, scope: !1996)
!2000 = !DILocation(line: 320, column: 3, scope: !1996)
!2001 = !DILocation(line: 321, column: 7, scope: !1996)
!2002 = !DILocation(line: 322, column: 1, scope: !1996)
!2003 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !241, file: !241, line: 41, type: !91, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !2004)
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "file", arg: 1, scope: !2003, file: !241, line: 41, type: !51)
!2006 = !DILocation(line: 41, column: 41, scope: !2003)
!2007 = !DILocation(line: 43, column: 13, scope: !2003)
!2008 = !DILocation(line: 44, column: 1, scope: !2003)
!2009 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !241, file: !241, line: 78, type: !2010, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !67}
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "ignore", arg: 1, scope: !2009, file: !241, line: 78, type: !67)
!2014 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!2015 = !DILocation(line: 78, column: 37, scope: !2009)
!2016 = !DILocation(line: 80, column: 16, scope: !2009)
!2017 = !{!2018, !2018, i64 0}
!2018 = !{!"_Bool", !740, i64 0}
!2019 = !DILocation(line: 81, column: 1, scope: !2009)
!2020 = distinct !DISubprogram(name: "close_stdout", scope: !241, file: !241, line: 107, type: !754, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !2021)
!2021 = !{!2022}
!2022 = !DILocalVariable(name: "write_error", scope: !2023, file: !241, line: 112, type: !51)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !241, line: 111, column: 5)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !241, line: 109, column: 7)
!2025 = !DILocation(line: 109, column: 21, scope: !2024)
!2026 = !DILocation(line: 109, column: 7, scope: !2024)
!2027 = !DILocation(line: 109, column: 29, scope: !2024)
!2028 = !DILocation(line: 110, column: 7, scope: !2024)
!2029 = !DILocation(line: 110, column: 12, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2024, file: !241, discriminator: 1)
!2031 = !{i8 0, i8 2}
!2032 = !DILocation(line: 114, column: 19, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2023, file: !241, line: 113, column: 11)
!2034 = !DILocation(line: 110, column: 25, scope: !2030)
!2035 = !DILocation(line: 110, column: 28, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2024, file: !241, discriminator: 2)
!2037 = !DILocation(line: 110, column: 34, scope: !2036)
!2038 = !DILocation(line: 109, column: 7, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2020, file: !241, discriminator: 1)
!2040 = !DILocation(line: 112, column: 33, scope: !2023)
!2041 = !DILocation(line: 112, column: 19, scope: !2023)
!2042 = !DILocation(line: 113, column: 11, scope: !2033)
!2043 = !DILocation(line: 113, column: 11, scope: !2023)
!2044 = !DILocation(line: 114, column: 36, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2033, file: !241, discriminator: 1)
!2046 = !DILocation(line: 114, column: 9, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2033, file: !241, discriminator: 2)
!2048 = !DILocation(line: 114, column: 9, scope: !2033)
!2049 = !DILocation(line: 117, column: 9, scope: !2045)
!2050 = !DILocation(line: 119, column: 14, scope: !2023)
!2051 = !DILocation(line: 119, column: 7, scope: !2023)
!2052 = !DILocation(line: 122, column: 22, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2020, file: !241, line: 122, column: 8)
!2054 = !DILocation(line: 122, column: 8, scope: !2053)
!2055 = !DILocation(line: 122, column: 30, scope: !2053)
!2056 = !DILocation(line: 122, column: 8, scope: !2020)
!2057 = !DILocation(line: 123, column: 13, scope: !2053)
!2058 = !DILocation(line: 123, column: 6, scope: !2053)
!2059 = !DILocation(line: 124, column: 1, scope: !2020)
!2060 = distinct !DISubprogram(name: "fdadvise", scope: !2061, file: !2061, line: 31, type: !2062, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !2066)
!2061 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !60, !2064, !2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !991, line: 91, baseType: !1019)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !31, line: 52, baseType: !30)
!2066 = !{!2067, !2068, !2069, !2070, !2071}
!2067 = !DILocalVariable(name: "fd", arg: 1, scope: !2060, file: !2061, line: 31, type: !60)
!2068 = !DILocalVariable(name: "offset", arg: 2, scope: !2060, file: !2061, line: 31, type: !2064)
!2069 = !DILocalVariable(name: "len", arg: 3, scope: !2060, file: !2061, line: 31, type: !2064)
!2070 = !DILocalVariable(name: "advice", arg: 4, scope: !2060, file: !2061, line: 31, type: !2065)
!2071 = !DILocalVariable(name: "__x", scope: !2072, file: !2061, line: 34, type: !60)
!2072 = distinct !DILexicalBlock(scope: !2060, file: !2061, line: 34, column: 3)
!2073 = !DILocation(line: 31, column: 15, scope: !2060)
!2074 = !DILocation(line: 31, column: 25, scope: !2060)
!2075 = !DILocation(line: 31, column: 39, scope: !2060)
!2076 = !DILocation(line: 31, column: 54, scope: !2060)
!2077 = !DILocation(line: 34, column: 3, scope: !2072)
!2078 = !DILocation(line: 36, column: 1, scope: !2060)
!2079 = distinct !DISubprogram(name: "fadvise", scope: !2061, file: !2061, line: 39, type: !2080, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !2122)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2082, !2065}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2084, file: !993, line: 242, baseType: !60, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2084, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2084, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2084, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2084, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2084, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2084, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2084, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2084, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2084, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2084, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2084, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2084, file: !993, line: 260, baseType: !2099, size: 64, offset: 768)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !2101)
!2101 = !{!2102, !2103, !2105}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2100, file: !993, line: 157, baseType: !2099, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2100, file: !993, line: 158, baseType: !2104, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2100, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2084, file: !993, line: 262, baseType: !2104, size: 64, offset: 832)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2084, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2084, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2084, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2084, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2084, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2084, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2084, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2084, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2084, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2084, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2084, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2084, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2084, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2084, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2084, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!2122 = !{!2123, !2124}
!2123 = !DILocalVariable(name: "fp", arg: 1, scope: !2079, file: !2061, line: 39, type: !2082)
!2124 = !DILocalVariable(name: "advice", arg: 2, scope: !2079, file: !2061, line: 39, type: !2065)
!2125 = !DILocation(line: 39, column: 16, scope: !2079)
!2126 = !DILocation(line: 39, column: 30, scope: !2079)
!2127 = !DILocation(line: 41, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2079, file: !2061, line: 41, column: 7)
!2129 = !DILocation(line: 41, column: 7, scope: !2079)
!2130 = !DILocation(line: 42, column: 15, scope: !2128)
!2131 = !DILocation(line: 31, column: 15, scope: !2060, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 42, column: 5, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2128, file: !2061, discriminator: 1)
!2134 = !DILocation(line: 31, column: 25, scope: !2060, inlinedAt: !2132)
!2135 = !DILocation(line: 31, column: 39, scope: !2060, inlinedAt: !2132)
!2136 = !DILocation(line: 31, column: 54, scope: !2060, inlinedAt: !2132)
!2137 = !DILocation(line: 34, column: 3, scope: !2072, inlinedAt: !2132)
!2138 = !DILocation(line: 42, column: 5, scope: !2128)
!2139 = !DILocation(line: 43, column: 1, scope: !2079)
!2140 = distinct !DISubprogram(name: "getndelim2", scope: !2141, file: !2141, line: 71, type: !2142, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !666, variables: !2184)
!2141 = !DIFile(filename: "lib/getndelim2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!1233, !61, !169, !43, !43, !60, !60, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2146, file: !993, line: 242, baseType: !60, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2146, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2146, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2146, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2146, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2146, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2146, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2146, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2146, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2146, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2146, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2146, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2146, file: !993, line: 260, baseType: !2161, size: 64, offset: 768)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !2163)
!2163 = !{!2164, !2165, !2167}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2162, file: !993, line: 157, baseType: !2161, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2162, file: !993, line: 158, baseType: !2166, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2162, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2146, file: !993, line: 262, baseType: !2166, size: 64, offset: 832)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2146, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2146, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2146, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2146, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2146, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2146, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2146, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2146, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2146, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2146, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2146, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2146, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2146, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2146, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2146, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2200, !2201, !2202, !2207, !2210, !2211, !2214}
!2185 = !DILocalVariable(name: "lineptr", arg: 1, scope: !2140, file: !2141, line: 71, type: !61)
!2186 = !DILocalVariable(name: "linesize", arg: 2, scope: !2140, file: !2141, line: 71, type: !169)
!2187 = !DILocalVariable(name: "offset", arg: 3, scope: !2140, file: !2141, line: 71, type: !43)
!2188 = !DILocalVariable(name: "nmax", arg: 4, scope: !2140, file: !2141, line: 71, type: !43)
!2189 = !DILocalVariable(name: "delim1", arg: 5, scope: !2140, file: !2141, line: 72, type: !60)
!2190 = !DILocalVariable(name: "delim2", arg: 6, scope: !2140, file: !2141, line: 72, type: !60)
!2191 = !DILocalVariable(name: "stream", arg: 7, scope: !2140, file: !2141, line: 72, type: !2144)
!2192 = !DILocalVariable(name: "nbytes_avail", scope: !2140, file: !2141, line: 74, type: !43)
!2193 = !DILocalVariable(name: "read_pos", scope: !2140, file: !2141, line: 75, type: !40)
!2194 = !DILocalVariable(name: "bytes_stored", scope: !2140, file: !2141, line: 76, type: !1233)
!2195 = !DILocalVariable(name: "ptr", scope: !2140, file: !2141, line: 77, type: !40)
!2196 = !DILocalVariable(name: "size", scope: !2140, file: !2141, line: 78, type: !43)
!2197 = !DILocalVariable(name: "found_delimiter", scope: !2140, file: !2141, line: 79, type: !67)
!2198 = !DILocalVariable(name: "c", scope: !2199, file: !2141, line: 112, type: !60)
!2199 = distinct !DILexicalBlock(scope: !2140, file: !2141, line: 108, column: 5)
!2200 = !DILocalVariable(name: "buffer", scope: !2199, file: !2141, line: 113, type: !51)
!2201 = !DILocalVariable(name: "buffer_len", scope: !2199, file: !2141, line: 114, type: !43)
!2202 = !DILocalVariable(name: "end", scope: !2203, file: !2141, line: 121, type: !51)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !2141, line: 120, column: 13)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !2141, line: 119, column: 15)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !2141, line: 118, column: 9)
!2206 = distinct !DILexicalBlock(scope: !2199, file: !2141, line: 117, column: 11)
!2207 = !DILocalVariable(name: "newsize", scope: !2208, file: !2141, line: 153, type: !43)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !2141, line: 150, column: 9)
!2209 = distinct !DILexicalBlock(scope: !2199, file: !2141, line: 149, column: 11)
!2210 = !DILocalVariable(name: "newptr", scope: !2208, file: !2141, line: 154, type: !40)
!2211 = !DILocalVariable(name: "newsizemax", scope: !2212, file: !2141, line: 166, type: !43)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !2141, line: 165, column: 13)
!2213 = distinct !DILexicalBlock(scope: !2208, file: !2141, line: 164, column: 15)
!2214 = !DILocalVariable(name: "copy_len", scope: !2215, file: !2141, line: 186, type: !43)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !2141, line: 185, column: 9)
!2216 = distinct !DILexicalBlock(scope: !2199, file: !2141, line: 184, column: 11)
!2217 = !DILocation(line: 71, column: 20, scope: !2140)
!2218 = !DILocation(line: 71, column: 37, scope: !2140)
!2219 = !DILocation(line: 71, column: 54, scope: !2140)
!2220 = !DILocation(line: 71, column: 69, scope: !2140)
!2221 = !DILocation(line: 72, column: 17, scope: !2140)
!2222 = !DILocation(line: 72, column: 29, scope: !2140)
!2223 = !DILocation(line: 72, column: 43, scope: !2140)
!2224 = !DILocation(line: 76, column: 11, scope: !2140)
!2225 = !DILocation(line: 77, column: 15, scope: !2140)
!2226 = !DILocation(line: 77, column: 9, scope: !2140)
!2227 = !DILocation(line: 78, column: 17, scope: !2140)
!2228 = !DILocation(line: 78, column: 10, scope: !2140)
!2229 = !DILocation(line: 81, column: 8, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2140, file: !2141, line: 81, column: 7)
!2231 = !DILocation(line: 81, column: 7, scope: !2140)
!2232 = !DILocation(line: 83, column: 19, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !2141, line: 82, column: 5)
!2234 = !DILocation(line: 83, column: 14, scope: !2233)
!2235 = !DILocation(line: 84, column: 13, scope: !2233)
!2236 = !DILocation(line: 85, column: 12, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !2141, line: 85, column: 11)
!2238 = !DILocation(line: 85, column: 11, scope: !2233)
!2239 = !DILocation(line: 89, column: 12, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2140, file: !2141, line: 89, column: 7)
!2241 = !DILocation(line: 89, column: 7, scope: !2140)
!2242 = !DILocation(line: 92, column: 23, scope: !2140)
!2243 = !DILocation(line: 74, column: 10, scope: !2140)
!2244 = !DILocation(line: 75, column: 9, scope: !2140)
!2245 = !DILocation(line: 95, column: 20, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2140, file: !2141, line: 95, column: 7)
!2247 = !DILocation(line: 95, column: 33, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2246, file: !2141, discriminator: 1)
!2249 = !DILocation(line: 95, column: 25, scope: !2246)
!2250 = !DILocation(line: 93, column: 18, scope: !2140)
!2251 = !DILocation(line: 99, column: 14, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2140, file: !2141, line: 99, column: 7)
!2253 = !DILocation(line: 101, column: 19, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2252, file: !2141, line: 101, column: 12)
!2255 = !DILocation(line: 101, column: 12, scope: !2252)
!2256 = !DILocation(line: 99, column: 7, scope: !2140)
!2257 = distinct !{!2257, !2258, !2259}
!2258 = !DILocation(line: 107, column: 3, scope: !2140)
!2259 = !DILocation(line: 202, column: 26, scope: !2140)
!2260 = !DILocation(line: 112, column: 11, scope: !2199)
!2261 = !DILocation(line: 79, column: 8, scope: !2140)
!2262 = !DILocation(line: 114, column: 7, scope: !2199)
!2263 = !DIExpression(DW_OP_deref)
!2264 = !DILocation(line: 114, column: 14, scope: !2199)
!2265 = !DILocation(line: 116, column: 16, scope: !2199)
!2266 = !DILocation(line: 113, column: 19, scope: !2199)
!2267 = !DILocation(line: 117, column: 11, scope: !2206)
!2268 = !DILocation(line: 117, column: 11, scope: !2199)
!2269 = !DILocation(line: 119, column: 15, scope: !2205)
!2270 = !DILocation(line: 121, column: 33, scope: !2203)
!2271 = !DILocation(line: 121, column: 27, scope: !2203)
!2272 = !DILocation(line: 122, column: 19, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2203, file: !2141, line: 122, column: 19)
!2274 = !DILocation(line: 122, column: 19, scope: !2203)
!2275 = !DILocation(line: 124, column: 36, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !2141, line: 123, column: 17)
!2277 = !DILocation(line: 124, column: 45, scope: !2276)
!2278 = !DILocation(line: 124, column: 30, scope: !2276)
!2279 = !DILocation(line: 126, column: 17, scope: !2276)
!2280 = !DILocalVariable(name: "__fp", arg: 1, scope: !2281, file: !1117, line: 63, type: !2144)
!2281 = distinct !DISubprogram(name: "getc_unlocked", scope: !1117, file: !1117, line: 63, type: !2282, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !666, variables: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!60, !2144}
!2284 = !{!2280}
!2285 = !DILocation(line: 63, column: 22, scope: !2281, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 131, column: 15, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2206, file: !2141, line: 130, column: 9)
!2288 = !DILocation(line: 65, column: 10, scope: !2281, inlinedAt: !2286)
!2289 = !DILocation(line: 65, column: 10, scope: !2290, inlinedAt: !2286)
!2290 = !DILexicalBlockFile(scope: !2281, file: !1117, discriminator: 2)
!2291 = !DILocation(line: 132, column: 15, scope: !2287)
!2292 = !DILocation(line: 65, column: 10, scope: !2293, inlinedAt: !2286)
!2293 = !DILexicalBlockFile(scope: !2281, file: !1117, discriminator: 1)
!2294 = !DILocation(line: 132, column: 17, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2287, file: !2141, line: 132, column: 15)
!2296 = !DILocation(line: 140, column: 17, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2287, file: !2141, line: 140, column: 15)
!2298 = !DILocation(line: 140, column: 32, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2297, file: !2141, discriminator: 1)
!2300 = !DILocation(line: 140, column: 27, scope: !2297)
!2301 = !DILocation(line: 142, column: 22, scope: !2287)
!2302 = !DILocation(line: 149, column: 26, scope: !2209)
!2303 = !DILocation(line: 149, column: 37, scope: !2209)
!2304 = !DILocation(line: 149, column: 24, scope: !2209)
!2305 = !DILocation(line: 149, column: 49, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2209, file: !2141, discriminator: 1)
!2307 = !DILocation(line: 149, column: 41, scope: !2209)
!2308 = !DILocation(line: 153, column: 33, scope: !2208)
!2309 = !DILocation(line: 153, column: 52, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2208, file: !2141, discriminator: 1)
!2311 = !DILocation(line: 153, column: 68, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2208, file: !2141, discriminator: 2)
!2313 = !DILocation(line: 153, column: 28, scope: !2208)
!2314 = !DILocation(line: 153, column: 18, scope: !2208)
!2315 = !DILocation(line: 158, column: 35, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2208, file: !2141, line: 158, column: 15)
!2317 = !DILocation(line: 158, column: 23, scope: !2316)
!2318 = !DILocation(line: 158, column: 42, scope: !2316)
!2319 = !DILocation(line: 159, column: 40, scope: !2316)
!2320 = !DILocation(line: 159, column: 53, scope: !2316)
!2321 = !DILocation(line: 158, column: 15, scope: !2208)
!2322 = !DILocation(line: 161, column: 23, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2208, file: !2141, line: 161, column: 15)
!2324 = !DILocation(line: 161, column: 44, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2323, file: !2141, discriminator: 1)
!2326 = !DILocation(line: 161, column: 33, scope: !2323)
!2327 = !DILocation(line: 164, column: 44, scope: !2213)
!2328 = !DILocation(line: 164, column: 34, scope: !2213)
!2329 = !DILocation(line: 164, column: 15, scope: !2208)
!2330 = !DILocation(line: 166, column: 22, scope: !2212)
!2331 = !DILocation(line: 167, column: 24, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2212, file: !2141, line: 167, column: 19)
!2333 = !DILocation(line: 201, column: 5, scope: !2140)
!2334 = !DILocation(line: 172, column: 34, scope: !2208)
!2335 = !DILocation(line: 173, column: 20, scope: !2208)
!2336 = !DILocation(line: 154, column: 17, scope: !2208)
!2337 = !DILocation(line: 174, column: 16, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2208, file: !2141, line: 174, column: 15)
!2339 = !DILocation(line: 178, column: 42, scope: !2208)
!2340 = !DILocation(line: 184, column: 13, scope: !2216)
!2341 = !DILocation(line: 184, column: 11, scope: !2199)
!2342 = !DILocation(line: 186, column: 42, scope: !2215)
!2343 = !DILocation(line: 186, column: 18, scope: !2215)
!2344 = !DILocation(line: 187, column: 15, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2215, file: !2141, line: 187, column: 15)
!2346 = !DILocation(line: 187, column: 26, scope: !2345)
!2347 = !DILocation(line: 187, column: 15, scope: !2215)
!2348 = !DILocation(line: 189, column: 15, scope: !2215)
!2349 = !DILocation(line: 190, column: 13, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2215, file: !2141, line: 189, column: 15)
!2351 = !DILocation(line: 192, column: 25, scope: !2350)
!2352 = !DILocation(line: 192, column: 23, scope: !2350)
!2353 = !DILocation(line: 193, column: 20, scope: !2215)
!2354 = !DILocation(line: 194, column: 24, scope: !2215)
!2355 = !DILocation(line: 195, column: 9, scope: !2215)
!2356 = !DILocation(line: 199, column: 18, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2199, file: !2141, line: 199, column: 11)
!2358 = !DILocation(line: 199, column: 40, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2357, file: !2141, discriminator: 1)
!2360 = !DILocation(line: 199, column: 21, scope: !2359)
!2361 = !DILocation(line: 199, column: 11, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2199, file: !2141, discriminator: 1)
!2363 = !DILocation(line: 202, column: 11, scope: !2140)
!2364 = !DILocation(line: 202, column: 10, scope: !2140)
!2365 = !DILocation(line: 201, column: 5, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2199, file: !2141, discriminator: 3)
!2367 = !DILocation(line: 135, column: 28, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !2141, line: 135, column: 19)
!2369 = distinct !DILexicalBlock(scope: !2295, file: !2141, line: 133, column: 13)
!2370 = !DILocation(line: 206, column: 13, scope: !2140)
!2371 = !DILocation(line: 208, column: 34, scope: !2140)
!2372 = !DILocation(line: 208, column: 27, scope: !2140)
!2373 = !DILocation(line: 208, column: 3, scope: !2140)
!2374 = !DILocation(line: 214, column: 12, scope: !2140)
!2375 = !DILocation(line: 215, column: 13, scope: !2140)
!2376 = !DILocation(line: 216, column: 10, scope: !2140)
!2377 = !DILocation(line: 216, column: 3, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2140, file: !2141, discriminator: 3)
!2379 = !DILocation(line: 217, column: 1, scope: !2140)
!2380 = distinct !DISubprogram(name: "memchr2", scope: !2381, file: !2381, line: 36, type: !2382, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !669, variables: !2384)
!2381 = !DIFile(filename: "lib/memchr2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!42, !46, !60, !60, !43}
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2390, !2391, !2395, !2396, !2397, !2398, !2399, !2400, !2402}
!2385 = !DILocalVariable(name: "s", arg: 1, scope: !2380, file: !2381, line: 36, type: !46)
!2386 = !DILocalVariable(name: "c1_in", arg: 2, scope: !2380, file: !2381, line: 36, type: !60)
!2387 = !DILocalVariable(name: "c2_in", arg: 3, scope: !2380, file: !2381, line: 36, type: !60)
!2388 = !DILocalVariable(name: "n", arg: 4, scope: !2380, file: !2381, line: 36, type: !43)
!2389 = !DILocalVariable(name: "char_ptr", scope: !2380, file: !2381, line: 45, type: !48)
!2390 = !DILocalVariable(name: "void_ptr", scope: !2380, file: !2381, line: 46, type: !46)
!2391 = !DILocalVariable(name: "longword_ptr", scope: !2380, file: !2381, line: 47, type: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !2380, file: !2381, line: 43, baseType: !45)
!2395 = !DILocalVariable(name: "repeated_one", scope: !2380, file: !2381, line: 48, type: !2394)
!2396 = !DILocalVariable(name: "repeated_c1", scope: !2380, file: !2381, line: 49, type: !2394)
!2397 = !DILocalVariable(name: "repeated_c2", scope: !2380, file: !2381, line: 50, type: !2394)
!2398 = !DILocalVariable(name: "c1", scope: !2380, file: !2381, line: 51, type: !50)
!2399 = !DILocalVariable(name: "c2", scope: !2380, file: !2381, line: 52, type: !50)
!2400 = !DILocalVariable(name: "longword1", scope: !2401, file: !2381, line: 142, type: !2394)
!2401 = distinct !DILexicalBlock(scope: !2380, file: !2381, line: 141, column: 5)
!2402 = !DILocalVariable(name: "longword2", scope: !2401, file: !2381, line: 143, type: !2394)
!2403 = !DILocation(line: 36, column: 22, scope: !2380)
!2404 = !DILocation(line: 36, column: 29, scope: !2380)
!2405 = !DILocation(line: 36, column: 40, scope: !2380)
!2406 = !DILocation(line: 36, column: 54, scope: !2380)
!2407 = !DILocation(line: 57, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2380, file: !2381, line: 57, column: 7)
!2409 = !DILocation(line: 57, column: 13, scope: !2408)
!2410 = !DILocation(line: 57, column: 10, scope: !2408)
!2411 = !DILocation(line: 57, column: 7, scope: !2380)
!2412 = !DILocation(line: 46, column: 15, scope: !2380)
!2413 = !DILocation(line: 63, column: 17, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2415, file: !2381, discriminator: 1)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !2381, line: 62, column: 3)
!2416 = distinct !DILexicalBlock(scope: !2380, file: !2381, line: 62, column: 3)
!2417 = !DILocation(line: 63, column: 38, scope: !2414)
!2418 = !DILocation(line: 63, column: 58, scope: !2414)
!2419 = !DILocation(line: 63, column: 14, scope: !2415)
!2420 = !DILocation(line: 62, column: 3, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2416, file: !2381, discriminator: 1)
!2422 = !DILocation(line: 45, column: 24, scope: !2380)
!2423 = !DILocation(line: 58, column: 12, scope: !2408)
!2424 = !DILocation(line: 58, column: 5, scope: !2408)
!2425 = !DILocation(line: 67, column: 11, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !2381, line: 67, column: 11)
!2427 = distinct !DILexicalBlock(scope: !2415, file: !2381, line: 65, column: 5)
!2428 = !DILocation(line: 67, column: 21, scope: !2426)
!2429 = !DILocation(line: 67, column: 40, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2426, file: !2381, discriminator: 1)
!2431 = !DILocation(line: 67, column: 27, scope: !2426)
!2432 = !DILocation(line: 69, column: 27, scope: !2427)
!2433 = !DILocation(line: 64, column: 8, scope: !2415)
!2434 = distinct !{!2434, !2435, !2436}
!2435 = !DILocation(line: 62, column: 3, scope: !2416)
!2436 = !DILocation(line: 70, column: 5, scope: !2416)
!2437 = !DILocation(line: 72, column: 18, scope: !2380)
!2438 = !DILocation(line: 47, column: 19, scope: !2380)
!2439 = !DILocation(line: 48, column: 12, scope: !2380)
!2440 = !DILocation(line: 82, column: 26, scope: !2380)
!2441 = !DILocation(line: 82, column: 20, scope: !2380)
!2442 = !DILocation(line: 83, column: 26, scope: !2380)
!2443 = !DILocation(line: 83, column: 20, scope: !2380)
!2444 = !DILocation(line: 84, column: 30, scope: !2380)
!2445 = !DILocation(line: 84, column: 15, scope: !2380)
!2446 = !DILocation(line: 49, column: 12, scope: !2380)
!2447 = !DILocation(line: 85, column: 30, scope: !2380)
!2448 = !DILocation(line: 85, column: 15, scope: !2380)
!2449 = !DILocation(line: 50, column: 12, scope: !2380)
!2450 = !DILocation(line: 89, column: 34, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !2381, line: 87, column: 5)
!2452 = distinct !DILexicalBlock(scope: !2380, file: !2381, line: 86, column: 7)
!2453 = !DILocation(line: 89, column: 19, scope: !2451)
!2454 = !DILocation(line: 90, column: 34, scope: !2451)
!2455 = !DILocation(line: 90, column: 19, scope: !2451)
!2456 = !DILocation(line: 140, column: 12, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2380, file: !2381, discriminator: 1)
!2458 = !DILocation(line: 140, column: 3, scope: !2457)
!2459 = !DILocation(line: 142, column: 28, scope: !2401)
!2460 = !DILocation(line: 142, column: 42, scope: !2401)
!2461 = !DILocation(line: 142, column: 16, scope: !2401)
!2462 = !DILocation(line: 143, column: 42, scope: !2401)
!2463 = !DILocation(line: 143, column: 16, scope: !2401)
!2464 = !DILocation(line: 145, column: 25, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2401, file: !2381, line: 145, column: 11)
!2466 = !DILocation(line: 145, column: 43, scope: !2465)
!2467 = !DILocation(line: 145, column: 41, scope: !2465)
!2468 = !DILocation(line: 146, column: 27, scope: !2465)
!2469 = !DILocation(line: 146, column: 45, scope: !2465)
!2470 = !DILocation(line: 146, column: 43, scope: !2465)
!2471 = !DILocation(line: 146, column: 13, scope: !2465)
!2472 = !DILocation(line: 147, column: 12, scope: !2465)
!2473 = !DILocation(line: 147, column: 35, scope: !2465)
!2474 = !DILocation(line: 149, column: 19, scope: !2401)
!2475 = !DILocation(line: 150, column: 9, scope: !2401)
!2476 = !DILocation(line: 145, column: 11, scope: !2401)
!2477 = distinct !{!2477, !2478, !2479}
!2478 = !DILocation(line: 140, column: 3, scope: !2380)
!2479 = !DILocation(line: 151, column: 5, scope: !2380)
!2480 = !DILocation(line: 162, column: 12, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2482, file: !2381, discriminator: 1)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !2381, line: 162, column: 3)
!2483 = distinct !DILexicalBlock(scope: !2380, file: !2381, line: 162, column: 3)
!2484 = !DILocation(line: 162, column: 3, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2483, file: !2381, discriminator: 1)
!2486 = !DILocation(line: 153, column: 14, scope: !2380)
!2487 = !DILocation(line: 164, column: 11, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !2381, line: 164, column: 11)
!2489 = distinct !DILexicalBlock(scope: !2482, file: !2381, line: 163, column: 5)
!2490 = !DILocation(line: 164, column: 21, scope: !2488)
!2491 = !DILocation(line: 164, column: 40, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2488, file: !2381, discriminator: 1)
!2493 = !DILocation(line: 164, column: 27, scope: !2488)
!2494 = !DILocation(line: 162, column: 17, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2482, file: !2381, discriminator: 2)
!2496 = !DILocation(line: 162, column: 22, scope: !2495)
!2497 = distinct !{!2497, !2498, !2499}
!2498 = !DILocation(line: 162, column: 3, scope: !2483)
!2499 = !DILocation(line: 166, column: 5, scope: !2483)
!2500 = !DILocation(line: 169, column: 1, scope: !2380)
!2501 = distinct !DISubprogram(name: "set_program_name", scope: !255, file: !255, line: 39, type: !91, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2502)
!2502 = !{!2503, !2504, !2505}
!2503 = !DILocalVariable(name: "argv0", arg: 1, scope: !2501, file: !255, line: 39, type: !51)
!2504 = !DILocalVariable(name: "slash", scope: !2501, file: !255, line: 46, type: !51)
!2505 = !DILocalVariable(name: "base", scope: !2501, file: !255, line: 47, type: !51)
!2506 = !DILocation(line: 39, column: 31, scope: !2501)
!2507 = !DILocation(line: 51, column: 13, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2501, file: !255, line: 51, column: 7)
!2509 = !DILocation(line: 51, column: 7, scope: !2501)
!2510 = !DILocation(line: 55, column: 14, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !255, line: 52, column: 5)
!2512 = !DILocation(line: 54, column: 7, scope: !2511)
!2513 = !DILocation(line: 56, column: 7, scope: !2511)
!2514 = !DILocation(line: 59, column: 11, scope: !2501)
!2515 = !DILocation(line: 46, column: 15, scope: !2501)
!2516 = !DILocation(line: 60, column: 17, scope: !2501)
!2517 = !DILocation(line: 60, column: 33, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2501, file: !255, discriminator: 1)
!2519 = !DILocation(line: 60, column: 11, scope: !2501)
!2520 = !DILocation(line: 47, column: 15, scope: !2501)
!2521 = !DILocation(line: 61, column: 12, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2501, file: !255, line: 61, column: 7)
!2523 = !DILocation(line: 61, column: 20, scope: !2522)
!2524 = !DILocation(line: 61, column: 25, scope: !2522)
!2525 = !DILocation(line: 61, column: 28, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2522, file: !255, discriminator: 1)
!2527 = !DILocation(line: 61, column: 61, scope: !2526)
!2528 = !DILocation(line: 61, column: 7, scope: !2518)
!2529 = !DILocation(line: 64, column: 11, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !255, line: 64, column: 11)
!2531 = distinct !DILexicalBlock(scope: !2522, file: !255, line: 62, column: 5)
!2532 = !DILocation(line: 64, column: 36, scope: !2530)
!2533 = !DILocation(line: 64, column: 11, scope: !2531)
!2534 = !DILocation(line: 66, column: 24, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2530, file: !255, line: 65, column: 9)
!2536 = !DILocation(line: 70, column: 41, scope: !2535)
!2537 = !DILocation(line: 72, column: 9, scope: !2535)
!2538 = !DILocation(line: 84, column: 16, scope: !2501)
!2539 = !DILocation(line: 90, column: 27, scope: !2501)
!2540 = !DILocation(line: 92, column: 1, scope: !2501)
!2541 = distinct !DISubprogram(name: "clone_quoting_options", scope: !270, file: !270, line: 114, type: !2542, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2545)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!2544, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!2545 = !{!2546, !2547, !2548}
!2546 = !DILocalVariable(name: "o", arg: 1, scope: !2541, file: !270, line: 114, type: !2544)
!2547 = !DILocalVariable(name: "e", scope: !2541, file: !270, line: 116, type: !60)
!2548 = !DILocalVariable(name: "p", scope: !2541, file: !270, line: 117, type: !2544)
!2549 = !DILocation(line: 114, column: 48, scope: !2541)
!2550 = !DILocation(line: 116, column: 11, scope: !2541)
!2551 = !DILocation(line: 116, column: 7, scope: !2541)
!2552 = !DILocation(line: 117, column: 40, scope: !2541)
!2553 = !DILocation(line: 117, column: 40, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2541, file: !270, discriminator: 3)
!2555 = !DILocation(line: 117, column: 31, scope: !2554)
!2556 = !DILocation(line: 117, column: 27, scope: !2541)
!2557 = !DILocation(line: 119, column: 9, scope: !2541)
!2558 = !DILocation(line: 120, column: 3, scope: !2541)
!2559 = distinct !DISubprogram(name: "get_quoting_style", scope: !270, file: !270, line: 125, type: !2560, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2564)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!16, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!2564 = !{!2565}
!2565 = !DILocalVariable(name: "o", arg: 1, scope: !2559, file: !270, line: 125, type: !2562)
!2566 = !DILocation(line: 125, column: 50, scope: !2559)
!2567 = !DILocation(line: 127, column: 11, scope: !2559)
!2568 = !DILocation(line: 127, column: 46, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2559, file: !270, discriminator: 3)
!2570 = !{!2571, !740, i64 0}
!2571 = !{!"quoting_options", !740, i64 0, !948, i64 4, !740, i64 8, !739, i64 40, !739, i64 48}
!2572 = !DILocation(line: 127, column: 3, scope: !2569)
!2573 = distinct !DISubprogram(name: "set_quoting_style", scope: !270, file: !270, line: 133, type: !2574, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !2544, !16}
!2576 = !{!2577, !2578}
!2577 = !DILocalVariable(name: "o", arg: 1, scope: !2573, file: !270, line: 133, type: !2544)
!2578 = !DILocalVariable(name: "s", arg: 2, scope: !2573, file: !270, line: 133, type: !16)
!2579 = !DILocation(line: 133, column: 44, scope: !2573)
!2580 = !DILocation(line: 133, column: 66, scope: !2573)
!2581 = !DILocation(line: 135, column: 4, scope: !2573)
!2582 = !DILocation(line: 135, column: 39, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2573, file: !270, discriminator: 3)
!2584 = !DILocation(line: 135, column: 45, scope: !2583)
!2585 = !DILocation(line: 136, column: 1, scope: !2573)
!2586 = distinct !DISubprogram(name: "set_char_quoting", scope: !270, file: !270, line: 144, type: !2587, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!60, !2544, !41, !60}
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2596, !2597}
!2590 = !DILocalVariable(name: "o", arg: 1, scope: !2586, file: !270, line: 144, type: !2544)
!2591 = !DILocalVariable(name: "c", arg: 2, scope: !2586, file: !270, line: 144, type: !41)
!2592 = !DILocalVariable(name: "i", arg: 3, scope: !2586, file: !270, line: 144, type: !60)
!2593 = !DILocalVariable(name: "uc", scope: !2586, file: !270, line: 146, type: !50)
!2594 = !DILocalVariable(name: "p", scope: !2586, file: !270, line: 147, type: !2595)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2596 = !DILocalVariable(name: "shift", scope: !2586, file: !270, line: 149, type: !60)
!2597 = !DILocalVariable(name: "r", scope: !2586, file: !270, line: 150, type: !60)
!2598 = !DILocation(line: 144, column: 43, scope: !2586)
!2599 = !DILocation(line: 144, column: 51, scope: !2586)
!2600 = !DILocation(line: 144, column: 58, scope: !2586)
!2601 = !DILocation(line: 146, column: 17, scope: !2586)
!2602 = !DILocation(line: 148, column: 6, scope: !2586)
!2603 = !DILocation(line: 148, column: 62, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2586, file: !270, discriminator: 3)
!2605 = !DILocation(line: 148, column: 57, scope: !2604)
!2606 = !DILocation(line: 147, column: 17, scope: !2586)
!2607 = !DILocation(line: 149, column: 18, scope: !2586)
!2608 = !DILocation(line: 149, column: 15, scope: !2586)
!2609 = !DILocation(line: 149, column: 7, scope: !2586)
!2610 = !DILocation(line: 150, column: 12, scope: !2586)
!2611 = !DILocation(line: 150, column: 15, scope: !2586)
!2612 = !DILocation(line: 150, column: 25, scope: !2586)
!2613 = !DILocation(line: 150, column: 7, scope: !2586)
!2614 = !DILocation(line: 151, column: 13, scope: !2586)
!2615 = !DILocation(line: 151, column: 18, scope: !2586)
!2616 = !DILocation(line: 151, column: 23, scope: !2586)
!2617 = !DILocation(line: 151, column: 6, scope: !2586)
!2618 = !DILocation(line: 152, column: 3, scope: !2586)
!2619 = distinct !DISubprogram(name: "set_quoting_flags", scope: !270, file: !270, line: 160, type: !2620, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!60, !2544, !60}
!2622 = !{!2623, !2624, !2625}
!2623 = !DILocalVariable(name: "o", arg: 1, scope: !2619, file: !270, line: 160, type: !2544)
!2624 = !DILocalVariable(name: "i", arg: 2, scope: !2619, file: !270, line: 160, type: !60)
!2625 = !DILocalVariable(name: "r", scope: !2619, file: !270, line: 162, type: !60)
!2626 = !DILocation(line: 160, column: 44, scope: !2619)
!2627 = !DILocation(line: 160, column: 51, scope: !2619)
!2628 = !DILocation(line: 163, column: 8, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2619, file: !270, line: 163, column: 7)
!2630 = !DILocation(line: 163, column: 7, scope: !2619)
!2631 = !DILocation(line: 165, column: 10, scope: !2619)
!2632 = !{!2571, !948, i64 4}
!2633 = !DILocation(line: 162, column: 7, scope: !2619)
!2634 = !DILocation(line: 166, column: 12, scope: !2619)
!2635 = !DILocation(line: 167, column: 3, scope: !2619)
!2636 = distinct !DISubprogram(name: "set_custom_quoting", scope: !270, file: !270, line: 171, type: !2637, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2544, !51, !51}
!2639 = !{!2640, !2641, !2642}
!2640 = !DILocalVariable(name: "o", arg: 1, scope: !2636, file: !270, line: 171, type: !2544)
!2641 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2636, file: !270, line: 172, type: !51)
!2642 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2636, file: !270, line: 172, type: !51)
!2643 = !DILocation(line: 171, column: 45, scope: !2636)
!2644 = !DILocation(line: 172, column: 33, scope: !2636)
!2645 = !DILocation(line: 172, column: 57, scope: !2636)
!2646 = !DILocation(line: 174, column: 8, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2636, file: !270, line: 174, column: 7)
!2648 = !DILocation(line: 174, column: 7, scope: !2636)
!2649 = !DILocation(line: 176, column: 6, scope: !2636)
!2650 = !DILocation(line: 176, column: 12, scope: !2636)
!2651 = !DILocation(line: 177, column: 8, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2636, file: !270, line: 177, column: 7)
!2653 = !DILocation(line: 177, column: 23, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2652, file: !270, discriminator: 1)
!2655 = !DILocation(line: 177, column: 19, scope: !2652)
!2656 = !DILocation(line: 178, column: 5, scope: !2652)
!2657 = !DILocation(line: 179, column: 6, scope: !2636)
!2658 = !DILocation(line: 179, column: 17, scope: !2636)
!2659 = !{!2571, !739, i64 40}
!2660 = !DILocation(line: 180, column: 6, scope: !2636)
!2661 = !DILocation(line: 180, column: 18, scope: !2636)
!2662 = !{!2571, !739, i64 48}
!2663 = !DILocation(line: 181, column: 1, scope: !2636)
!2664 = distinct !DISubprogram(name: "quotearg_buffer", scope: !270, file: !270, line: 776, type: !2665, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!43, !40, !43, !51, !43, !2562}
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675}
!2668 = !DILocalVariable(name: "buffer", arg: 1, scope: !2664, file: !270, line: 776, type: !40)
!2669 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2664, file: !270, line: 776, type: !43)
!2670 = !DILocalVariable(name: "arg", arg: 3, scope: !2664, file: !270, line: 777, type: !51)
!2671 = !DILocalVariable(name: "argsize", arg: 4, scope: !2664, file: !270, line: 777, type: !43)
!2672 = !DILocalVariable(name: "o", arg: 5, scope: !2664, file: !270, line: 778, type: !2562)
!2673 = !DILocalVariable(name: "p", scope: !2664, file: !270, line: 780, type: !2562)
!2674 = !DILocalVariable(name: "e", scope: !2664, file: !270, line: 781, type: !60)
!2675 = !DILocalVariable(name: "r", scope: !2664, file: !270, line: 782, type: !43)
!2676 = !DILocation(line: 776, column: 24, scope: !2664)
!2677 = !DILocation(line: 776, column: 39, scope: !2664)
!2678 = !DILocation(line: 777, column: 30, scope: !2664)
!2679 = !DILocation(line: 777, column: 42, scope: !2664)
!2680 = !DILocation(line: 778, column: 48, scope: !2664)
!2681 = !DILocation(line: 780, column: 37, scope: !2664)
!2682 = !DILocation(line: 780, column: 33, scope: !2664)
!2683 = !DILocation(line: 781, column: 11, scope: !2664)
!2684 = !DILocation(line: 781, column: 7, scope: !2664)
!2685 = !DILocation(line: 783, column: 43, scope: !2664)
!2686 = !DILocation(line: 783, column: 53, scope: !2664)
!2687 = !DILocation(line: 783, column: 60, scope: !2664)
!2688 = !DILocation(line: 784, column: 43, scope: !2664)
!2689 = !DILocation(line: 784, column: 58, scope: !2664)
!2690 = !DILocation(line: 782, column: 14, scope: !2664)
!2691 = !DILocation(line: 782, column: 10, scope: !2664)
!2692 = !DILocation(line: 785, column: 9, scope: !2664)
!2693 = !DILocation(line: 786, column: 3, scope: !2664)
!2694 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !270, file: !270, line: 248, type: !2695, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2699)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!43, !40, !43, !51, !43, !16, !60, !2697, !51, !51}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2724, !2725, !2726, !2727, !2728, !2731, !2732, !2749, !2752, !2753, !2760}
!2700 = !DILocalVariable(name: "buffer", arg: 1, scope: !2694, file: !270, line: 248, type: !40)
!2701 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2694, file: !270, line: 248, type: !43)
!2702 = !DILocalVariable(name: "arg", arg: 3, scope: !2694, file: !270, line: 249, type: !51)
!2703 = !DILocalVariable(name: "argsize", arg: 4, scope: !2694, file: !270, line: 249, type: !43)
!2704 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2694, file: !270, line: 250, type: !16)
!2705 = !DILocalVariable(name: "flags", arg: 6, scope: !2694, file: !270, line: 250, type: !60)
!2706 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2694, file: !270, line: 251, type: !2697)
!2707 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2694, file: !270, line: 252, type: !51)
!2708 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2694, file: !270, line: 253, type: !51)
!2709 = !DILocalVariable(name: "i", scope: !2694, file: !270, line: 255, type: !43)
!2710 = !DILocalVariable(name: "len", scope: !2694, file: !270, line: 256, type: !43)
!2711 = !DILocalVariable(name: "orig_buffersize", scope: !2694, file: !270, line: 257, type: !43)
!2712 = !DILocalVariable(name: "quote_string", scope: !2694, file: !270, line: 258, type: !51)
!2713 = !DILocalVariable(name: "quote_string_len", scope: !2694, file: !270, line: 259, type: !43)
!2714 = !DILocalVariable(name: "backslash_escapes", scope: !2694, file: !270, line: 260, type: !67)
!2715 = !DILocalVariable(name: "unibyte_locale", scope: !2694, file: !270, line: 261, type: !67)
!2716 = !DILocalVariable(name: "elide_outer_quotes", scope: !2694, file: !270, line: 262, type: !67)
!2717 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2694, file: !270, line: 263, type: !67)
!2718 = !DILocalVariable(name: "encountered_single_quote", scope: !2694, file: !270, line: 264, type: !67)
!2719 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2694, file: !270, line: 265, type: !67)
!2720 = !DILocalVariable(name: "c", scope: !2721, file: !270, line: 394, type: !50)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !270, line: 393, column: 5)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !270, line: 392, column: 3)
!2723 = distinct !DILexicalBlock(scope: !2694, file: !270, line: 392, column: 3)
!2724 = !DILocalVariable(name: "esc", scope: !2721, file: !270, line: 395, type: !50)
!2725 = !DILocalVariable(name: "is_right_quote", scope: !2721, file: !270, line: 396, type: !67)
!2726 = !DILocalVariable(name: "escaping", scope: !2721, file: !270, line: 397, type: !67)
!2727 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2721, file: !270, line: 398, type: !67)
!2728 = !DILocalVariable(name: "m", scope: !2729, file: !270, line: 602, type: !43)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 600, column: 11)
!2730 = distinct !DILexicalBlock(scope: !2721, file: !270, line: 418, column: 9)
!2731 = !DILocalVariable(name: "printable", scope: !2729, file: !270, line: 604, type: !67)
!2732 = !DILocalVariable(name: "mbstate", scope: !2733, file: !270, line: 613, type: !2735)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !270, line: 612, column: 15)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !270, line: 606, column: 17)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2736, line: 107, baseType: !2737)
!2736 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2736, line: 95, baseType: !2738)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2736, line: 83, size: 64, elements: !2739)
!2739 = !{!2740, !2741}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2738, file: !2736, line: 85, baseType: !60, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2738, file: !2736, line: 94, baseType: !2742, size: 32, offset: 32)
!2742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2738, file: !2736, line: 86, size: 32, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2742, file: !2736, line: 89, baseType: !179, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2742, file: !2736, line: 93, baseType: !2746, size: 32)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !2747)
!2747 = !{!2748}
!2748 = !DISubrange(count: 4)
!2749 = !DILocalVariable(name: "w", scope: !2750, file: !270, line: 623, type: !2751)
!2750 = distinct !DILexicalBlock(scope: !2733, file: !270, line: 622, column: 19)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !44, line: 90, baseType: !60)
!2752 = !DILocalVariable(name: "bytes", scope: !2750, file: !270, line: 624, type: !43)
!2753 = !DILocalVariable(name: "j", scope: !2754, file: !270, line: 649, type: !43)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !270, line: 648, column: 27)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !270, line: 646, column: 29)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !270, line: 641, column: 23)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !270, line: 633, column: 30)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !270, line: 628, column: 30)
!2759 = distinct !DILexicalBlock(scope: !2750, file: !270, line: 626, column: 25)
!2760 = !DILocalVariable(name: "ilim", scope: !2761, file: !270, line: 676, type: !43)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !270, line: 673, column: 15)
!2762 = distinct !DILexicalBlock(scope: !2729, file: !270, line: 672, column: 17)
!2763 = !DILocation(line: 248, column: 33, scope: !2694)
!2764 = !DILocation(line: 248, column: 48, scope: !2694)
!2765 = !DILocation(line: 249, column: 39, scope: !2694)
!2766 = !DILocation(line: 249, column: 51, scope: !2694)
!2767 = !DILocation(line: 250, column: 46, scope: !2694)
!2768 = !DILocation(line: 250, column: 65, scope: !2694)
!2769 = !DILocation(line: 251, column: 47, scope: !2694)
!2770 = !DILocation(line: 252, column: 39, scope: !2694)
!2771 = !DILocation(line: 253, column: 39, scope: !2694)
!2772 = !DILocation(line: 256, column: 10, scope: !2694)
!2773 = !DILocation(line: 257, column: 10, scope: !2694)
!2774 = !DILocation(line: 258, column: 15, scope: !2694)
!2775 = !DILocation(line: 259, column: 10, scope: !2694)
!2776 = !DILocation(line: 260, column: 8, scope: !2694)
!2777 = !DILocation(line: 261, column: 25, scope: !2694)
!2778 = !DILocation(line: 261, column: 36, scope: !2694)
!2779 = !DILocation(line: 262, column: 8, scope: !2694)
!2780 = !DILocation(line: 263, column: 8, scope: !2694)
!2781 = !DILocation(line: 264, column: 8, scope: !2694)
!2782 = !DILocation(line: 265, column: 8, scope: !2694)
!2783 = !DILocation(line: 265, column: 3, scope: !2694)
!2784 = !DILocation(line: 308, column: 3, scope: !2694)
!2785 = !DILocation(line: 315, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2694, file: !270, line: 309, column: 5)
!2787 = !DILocation(line: 315, column: 12, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2786, file: !270, line: 315, column: 11)
!2789 = !DILocation(line: 316, column: 9, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2791, file: !270, discriminator: 1)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !270, line: 316, column: 9)
!2792 = distinct !DILexicalBlock(scope: !2788, file: !270, line: 316, column: 9)
!2793 = !DILocation(line: 316, column: 9, scope: !2794)
!2794 = !DILexicalBlockFile(scope: !2792, file: !270, discriminator: 1)
!2795 = !DILocation(line: 316, column: 9, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2791, file: !270, discriminator: 2)
!2797 = !DILocation(line: 354, column: 26, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !270, line: 332, column: 11)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !270, line: 331, column: 13)
!2800 = distinct !DILexicalBlock(scope: !2786, file: !270, line: 330, column: 7)
!2801 = !DILocation(line: 355, column: 27, scope: !2798)
!2802 = !DILocation(line: 356, column: 11, scope: !2798)
!2803 = !DILocation(line: 357, column: 14, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !270, line: 357, column: 13)
!2805 = !DILocation(line: 357, column: 13, scope: !2800)
!2806 = !DILocation(line: 358, column: 43, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2808, file: !270, discriminator: 1)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !270, line: 358, column: 11)
!2809 = distinct !DILexicalBlock(scope: !2804, file: !270, line: 358, column: 11)
!2810 = !DILocation(line: 358, column: 11, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !2809, file: !270, discriminator: 1)
!2812 = !DILocation(line: 359, column: 13, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2814, file: !270, discriminator: 1)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !270, line: 359, column: 13)
!2815 = distinct !DILexicalBlock(scope: !2808, file: !270, line: 359, column: 13)
!2816 = !DILocation(line: 359, column: 13, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2815, file: !270, discriminator: 1)
!2818 = !DILocation(line: 359, column: 13, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !2814, file: !270, discriminator: 2)
!2820 = !DILocation(line: 359, column: 13, scope: !2821)
!2821 = !DILexicalBlockFile(scope: !2815, file: !270, discriminator: 3)
!2822 = !DILocation(line: 358, column: 70, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2808, file: !270, discriminator: 2)
!2824 = distinct !{!2824, !2825, !2826}
!2825 = !DILocation(line: 358, column: 11, scope: !2809)
!2826 = !DILocation(line: 359, column: 13, scope: !2809)
!2827 = !DILocation(line: 362, column: 28, scope: !2800)
!2828 = !DILocation(line: 364, column: 7, scope: !2786)
!2829 = !DILocation(line: 367, column: 7, scope: !2786)
!2830 = !DILocation(line: 370, column: 7, scope: !2786)
!2831 = !DILocation(line: 373, column: 12, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2786, file: !270, line: 373, column: 11)
!2833 = !DILocation(line: 373, column: 11, scope: !2786)
!2834 = !DILocation(line: 378, column: 12, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2786, file: !270, line: 378, column: 11)
!2836 = !DILocation(line: 378, column: 11, scope: !2786)
!2837 = !DILocation(line: 379, column: 9, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2839, file: !270, discriminator: 1)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !270, line: 379, column: 9)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !270, line: 379, column: 9)
!2841 = !DILocation(line: 379, column: 9, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !2840, file: !270, discriminator: 1)
!2843 = !DILocation(line: 379, column: 9, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !2839, file: !270, discriminator: 2)
!2845 = !DILocation(line: 386, column: 7, scope: !2786)
!2846 = !DILocation(line: 389, column: 7, scope: !2786)
!2847 = !DILocation(line: 255, column: 10, scope: !2694)
!2848 = !DILocation(line: 392, column: 8, scope: !2723)
!2849 = !DILocation(line: 392, column: 27, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2722, file: !270, discriminator: 1)
!2851 = !DILocation(line: 392, column: 19, scope: !2850)
!2852 = !DILocation(line: 392, column: 60, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2722, file: !270, discriminator: 3)
!2854 = !DILocation(line: 392, column: 3, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2723, file: !270, discriminator: 4)
!2856 = !DILocation(line: 392, column: 41, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2722, file: !270, discriminator: 2)
!2858 = !DILocation(line: 392, column: 48, scope: !2857)
!2859 = !DILocation(line: 396, column: 12, scope: !2721)
!2860 = !DILocation(line: 397, column: 12, scope: !2721)
!2861 = !DILocation(line: 398, column: 12, scope: !2721)
!2862 = !DILocation(line: 401, column: 11, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2721, file: !270, line: 400, column: 11)
!2864 = !DILocation(line: 403, column: 17, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2863, file: !270, discriminator: 1)
!2866 = !DILocation(line: 404, column: 39, scope: !2863)
!2867 = !DILocation(line: 408, column: 32, scope: !2863)
!2868 = !DILocation(line: 404, column: 19, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2863, file: !270, discriminator: 2)
!2870 = !DILocation(line: 404, column: 15, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2863, file: !270, discriminator: 4)
!2872 = !DILocation(line: 409, column: 11, scope: !2863)
!2873 = !DILocation(line: 409, column: 26, scope: !2865)
!2874 = !DILocation(line: 409, column: 14, scope: !2865)
!2875 = !DILocation(line: 400, column: 11, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2721, file: !270, discriminator: 1)
!2877 = !DILocation(line: 416, column: 11, scope: !2721)
!2878 = !DILocation(line: 394, column: 21, scope: !2721)
!2879 = !DILocation(line: 417, column: 7, scope: !2721)
!2880 = !DILocation(line: 420, column: 15, scope: !2730)
!2881 = !DILocation(line: 422, column: 15, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2883, file: !270, discriminator: 1)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !270, line: 422, column: 15)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !270, line: 421, column: 13)
!2885 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 420, column: 15)
!2886 = !DILocation(line: 422, column: 15, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2888, file: !270, discriminator: 4)
!2888 = distinct !DILexicalBlock(scope: !2883, file: !270, line: 422, column: 15)
!2889 = !DILocation(line: 422, column: 15, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2888, file: !270, discriminator: 3)
!2891 = !DILocation(line: 422, column: 15, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2893, file: !270, discriminator: 6)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !270, line: 422, column: 15)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !270, line: 422, column: 15)
!2895 = distinct !DILexicalBlock(scope: !2888, file: !270, line: 422, column: 15)
!2896 = !DILocation(line: 422, column: 15, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2894, file: !270, discriminator: 6)
!2898 = !DILocation(line: 422, column: 15, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2893, file: !270, discriminator: 7)
!2900 = !DILocation(line: 422, column: 15, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2894, file: !270, discriminator: 8)
!2902 = !DILocation(line: 422, column: 15, scope: !2903)
!2903 = !DILexicalBlockFile(scope: !2904, file: !270, discriminator: 11)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !270, line: 422, column: 15)
!2905 = distinct !DILexicalBlock(scope: !2895, file: !270, line: 422, column: 15)
!2906 = !DILocation(line: 422, column: 15, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !2905, file: !270, discriminator: 11)
!2908 = !DILocation(line: 422, column: 15, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !2904, file: !270, discriminator: 12)
!2910 = !DILocation(line: 422, column: 15, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2905, file: !270, discriminator: 13)
!2912 = !DILocation(line: 422, column: 15, scope: !2913)
!2913 = !DILexicalBlockFile(scope: !2914, file: !270, discriminator: 16)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !270, line: 422, column: 15)
!2915 = distinct !DILexicalBlock(scope: !2895, file: !270, line: 422, column: 15)
!2916 = !DILocation(line: 422, column: 15, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2915, file: !270, discriminator: 16)
!2918 = !DILocation(line: 422, column: 15, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2914, file: !270, discriminator: 17)
!2920 = !DILocation(line: 422, column: 15, scope: !2921)
!2921 = !DILexicalBlockFile(scope: !2915, file: !270, discriminator: 18)
!2922 = !DILocation(line: 422, column: 15, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2895, file: !270, discriminator: 20)
!2924 = !DILocation(line: 422, column: 15, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2926, file: !270, discriminator: 22)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !270, line: 422, column: 15)
!2927 = distinct !DILexicalBlock(scope: !2883, file: !270, line: 422, column: 15)
!2928 = !DILocation(line: 422, column: 15, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !2927, file: !270, discriminator: 22)
!2930 = !DILocation(line: 422, column: 15, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2926, file: !270, discriminator: 23)
!2932 = !DILocation(line: 422, column: 15, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2927, file: !270, discriminator: 24)
!2934 = !DILocation(line: 430, column: 19, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2884, file: !270, line: 429, column: 19)
!2936 = !DILocation(line: 430, column: 24, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !2935, file: !270, discriminator: 1)
!2938 = !DILocation(line: 430, column: 28, scope: !2937)
!2939 = !DILocation(line: 430, column: 38, scope: !2937)
!2940 = !DILocation(line: 430, column: 48, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2935, file: !270, discriminator: 2)
!2942 = !DILocation(line: 430, column: 59, scope: !2941)
!2943 = !DILocation(line: 432, column: 19, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2945, file: !270, discriminator: 1)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !270, line: 432, column: 19)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !270, line: 432, column: 19)
!2947 = distinct !DILexicalBlock(scope: !2935, file: !270, line: 431, column: 17)
!2948 = !DILocation(line: 432, column: 19, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2946, file: !270, discriminator: 1)
!2950 = !DILocation(line: 432, column: 19, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2945, file: !270, discriminator: 2)
!2952 = !DILocation(line: 432, column: 19, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !2946, file: !270, discriminator: 3)
!2954 = !DILocation(line: 433, column: 19, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2956, file: !270, discriminator: 1)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !270, line: 433, column: 19)
!2957 = distinct !DILexicalBlock(scope: !2947, file: !270, line: 433, column: 19)
!2958 = !DILocation(line: 433, column: 19, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2957, file: !270, discriminator: 1)
!2960 = !DILocation(line: 433, column: 19, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2956, file: !270, discriminator: 2)
!2962 = !DILocation(line: 433, column: 19, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2957, file: !270, discriminator: 3)
!2964 = !DILocation(line: 434, column: 17, scope: !2947)
!2965 = !DILocation(line: 441, column: 20, scope: !2885)
!2966 = !DILocation(line: 446, column: 11, scope: !2730)
!2967 = !DILocation(line: 449, column: 19, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 447, column: 13)
!2969 = !DILocation(line: 455, column: 19, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2968, file: !270, line: 454, column: 19)
!2971 = !DILocation(line: 455, column: 24, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2970, file: !270, discriminator: 1)
!2973 = !DILocation(line: 455, column: 28, scope: !2972)
!2974 = !DILocation(line: 455, column: 38, scope: !2972)
!2975 = !DILocation(line: 455, column: 47, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2970, file: !270, discriminator: 2)
!2977 = !DILocation(line: 455, column: 41, scope: !2976)
!2978 = !DILocation(line: 455, column: 52, scope: !2976)
!2979 = !DILocation(line: 454, column: 19, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2968, file: !270, discriminator: 1)
!2981 = !DILocation(line: 456, column: 25, scope: !2970)
!2982 = !DILocation(line: 456, column: 17, scope: !2970)
!2983 = !DILocation(line: 463, column: 25, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2970, file: !270, line: 457, column: 19)
!2985 = !DILocation(line: 467, column: 21, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2987, file: !270, discriminator: 1)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !270, line: 467, column: 21)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !270, line: 467, column: 21)
!2989 = !DILocation(line: 467, column: 21, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2988, file: !270, discriminator: 1)
!2991 = !DILocation(line: 467, column: 21, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2987, file: !270, discriminator: 2)
!2993 = !DILocation(line: 467, column: 21, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !2988, file: !270, discriminator: 3)
!2995 = !DILocation(line: 468, column: 21, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2997, file: !270, discriminator: 1)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !270, line: 468, column: 21)
!2998 = distinct !DILexicalBlock(scope: !2984, file: !270, line: 468, column: 21)
!2999 = !DILocation(line: 468, column: 21, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !2998, file: !270, discriminator: 1)
!3001 = !DILocation(line: 468, column: 21, scope: !3002)
!3002 = !DILexicalBlockFile(scope: !2997, file: !270, discriminator: 2)
!3003 = !DILocation(line: 468, column: 21, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !2998, file: !270, discriminator: 3)
!3005 = !DILocation(line: 469, column: 21, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !3007, file: !270, discriminator: 1)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !270, line: 469, column: 21)
!3008 = distinct !DILexicalBlock(scope: !2984, file: !270, line: 469, column: 21)
!3009 = !DILocation(line: 469, column: 21, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !3008, file: !270, discriminator: 1)
!3011 = !DILocation(line: 469, column: 21, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3007, file: !270, discriminator: 2)
!3013 = !DILocation(line: 469, column: 21, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !3008, file: !270, discriminator: 3)
!3015 = !DILocation(line: 470, column: 21, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3017, file: !270, discriminator: 1)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !270, line: 470, column: 21)
!3018 = distinct !DILexicalBlock(scope: !2984, file: !270, line: 470, column: 21)
!3019 = !DILocation(line: 470, column: 21, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !3018, file: !270, discriminator: 1)
!3021 = !DILocation(line: 470, column: 21, scope: !3022)
!3022 = !DILexicalBlockFile(scope: !3017, file: !270, discriminator: 2)
!3023 = !DILocation(line: 470, column: 21, scope: !3024)
!3024 = !DILexicalBlockFile(scope: !3018, file: !270, discriminator: 3)
!3025 = !DILocation(line: 471, column: 21, scope: !2984)
!3026 = !DILocation(line: 395, column: 21, scope: !2721)
!3027 = !DILocation(line: 484, column: 31, scope: !2730)
!3028 = !DILocation(line: 485, column: 31, scope: !2730)
!3029 = !DILocation(line: 487, column: 31, scope: !2730)
!3030 = !DILocation(line: 488, column: 31, scope: !2730)
!3031 = !DILocation(line: 489, column: 31, scope: !2730)
!3032 = !DILocation(line: 492, column: 15, scope: !2730)
!3033 = !DILocation(line: 494, column: 19, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !270, line: 493, column: 13)
!3035 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 492, column: 15)
!3036 = !DILocation(line: 501, column: 33, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 501, column: 15)
!3038 = !DILocation(line: 506, column: 15, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 505, column: 15)
!3040 = !DILocation(line: 510, column: 15, scope: !2730)
!3041 = !DILocation(line: 518, column: 26, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 518, column: 15)
!3043 = !DILocation(line: 518, column: 15, scope: !2730)
!3044 = !DILocation(line: 518, column: 40, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3042, file: !270, discriminator: 1)
!3046 = !DILocation(line: 518, column: 47, scope: !3045)
!3047 = !DILocation(line: 522, column: 17, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 522, column: 15)
!3049 = !DILocation(line: 518, column: 18, scope: !3045)
!3050 = !DILocation(line: 518, column: 65, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3042, file: !270, discriminator: 2)
!3052 = !DILocation(line: 518, column: 15, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !2730, file: !270, discriminator: 2)
!3054 = !DILocation(line: 522, column: 15, scope: !2730)
!3055 = !DILocation(line: 526, column: 11, scope: !2730)
!3056 = !DILocation(line: 541, column: 15, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 540, column: 15)
!3058 = !DILocation(line: 548, column: 15, scope: !2730)
!3059 = !DILocation(line: 550, column: 19, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !270, line: 549, column: 13)
!3061 = distinct !DILexicalBlock(scope: !2730, file: !270, line: 548, column: 15)
!3062 = !DILocation(line: 553, column: 19, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3060, file: !270, line: 553, column: 19)
!3064 = !DILocation(line: 553, column: 35, scope: !3065)
!3065 = !DILexicalBlockFile(scope: !3063, file: !270, discriminator: 1)
!3066 = !DILocation(line: 553, column: 30, scope: !3063)
!3067 = !DILocation(line: 562, column: 15, scope: !3068)
!3068 = !DILexicalBlockFile(scope: !3069, file: !270, discriminator: 1)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !270, line: 562, column: 15)
!3070 = distinct !DILexicalBlock(scope: !3060, file: !270, line: 562, column: 15)
!3071 = !DILocation(line: 562, column: 15, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !3070, file: !270, discriminator: 1)
!3073 = !DILocation(line: 562, column: 15, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3069, file: !270, discriminator: 2)
!3075 = !DILocation(line: 562, column: 15, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3070, file: !270, discriminator: 3)
!3077 = !DILocation(line: 563, column: 15, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3079, file: !270, discriminator: 1)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !270, line: 563, column: 15)
!3080 = distinct !DILexicalBlock(scope: !3060, file: !270, line: 563, column: 15)
!3081 = !DILocation(line: 563, column: 15, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3080, file: !270, discriminator: 1)
!3083 = !DILocation(line: 563, column: 15, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3079, file: !270, discriminator: 2)
!3085 = !DILocation(line: 563, column: 15, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3080, file: !270, discriminator: 3)
!3087 = !DILocation(line: 564, column: 15, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !3089, file: !270, discriminator: 1)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !270, line: 564, column: 15)
!3090 = distinct !DILexicalBlock(scope: !3060, file: !270, line: 564, column: 15)
!3091 = !DILocation(line: 564, column: 15, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !3090, file: !270, discriminator: 1)
!3093 = !DILocation(line: 564, column: 15, scope: !3094)
!3094 = !DILexicalBlockFile(scope: !3089, file: !270, discriminator: 2)
!3095 = !DILocation(line: 564, column: 15, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3090, file: !270, discriminator: 3)
!3097 = !DILocation(line: 566, column: 13, scope: !3060)
!3098 = !DILocation(line: 606, column: 17, scope: !2729)
!3099 = !DILocation(line: 602, column: 20, scope: !2729)
!3100 = !DILocation(line: 609, column: 29, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2734, file: !270, line: 607, column: 15)
!3102 = !DILocation(line: 609, column: 27, scope: !3101)
!3103 = !DILocation(line: 604, column: 18, scope: !2729)
!3104 = !DILocation(line: 610, column: 15, scope: !3101)
!3105 = !DILocation(line: 613, column: 17, scope: !2733)
!3106 = !DILocation(line: 614, column: 17, scope: !2733)
!3107 = !DILocation(line: 618, column: 29, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2733, file: !270, line: 618, column: 21)
!3109 = !DILocation(line: 618, column: 21, scope: !2733)
!3110 = distinct !{!3110, !3111, !3112}
!3111 = !DILocation(line: 621, column: 17, scope: !2733)
!3112 = !DILocation(line: 667, column: 44, scope: !2733)
!3113 = !DILocation(line: 619, column: 29, scope: !3108)
!3114 = !DILocation(line: 619, column: 19, scope: !3108)
!3115 = !DILocation(line: 623, column: 21, scope: !2750)
!3116 = !DILocation(line: 624, column: 56, scope: !2750)
!3117 = !DILocation(line: 624, column: 50, scope: !2750)
!3118 = !DILocation(line: 625, column: 53, scope: !2750)
!3119 = !DILocation(line: 613, column: 27, scope: !2733)
!3120 = !DILocation(line: 623, column: 29, scope: !2750)
!3121 = !DILocation(line: 624, column: 36, scope: !2750)
!3122 = !DILocation(line: 624, column: 28, scope: !2750)
!3123 = !DILocation(line: 626, column: 25, scope: !2750)
!3124 = !DILocation(line: 636, column: 38, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3126, file: !270, discriminator: 1)
!3126 = distinct !DILexicalBlock(scope: !2757, file: !270, line: 634, column: 23)
!3127 = !DILocation(line: 636, column: 48, scope: !3125)
!3128 = !DILocation(line: 636, column: 51, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3126, file: !270, discriminator: 2)
!3130 = !DILocation(line: 636, column: 48, scope: !3129)
!3131 = !DILocation(line: 636, column: 25, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3126, file: !270, discriminator: 3)
!3133 = !DILocation(line: 637, column: 28, scope: !3126)
!3134 = !DILocation(line: 636, column: 34, scope: !3125)
!3135 = distinct !{!3135, !3136, !3133}
!3136 = !DILocation(line: 636, column: 25, scope: !3126)
!3137 = !DILocation(line: 650, column: 43, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3139, file: !270, discriminator: 1)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !270, line: 650, column: 29)
!3140 = distinct !DILexicalBlock(scope: !2754, file: !270, line: 650, column: 29)
!3141 = !DILocation(line: 647, column: 29, scope: !2755)
!3142 = !DILocation(line: 649, column: 36, scope: !2754)
!3143 = !DILocation(line: 651, column: 49, scope: !3139)
!3144 = !DILocation(line: 651, column: 39, scope: !3139)
!3145 = !DILocation(line: 651, column: 31, scope: !3139)
!3146 = !DILocation(line: 650, column: 53, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3139, file: !270, discriminator: 2)
!3148 = !DILocation(line: 650, column: 29, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3140, file: !270, discriminator: 1)
!3150 = distinct !{!3150, !3151, !3152}
!3151 = !DILocation(line: 650, column: 29, scope: !3140)
!3152 = !DILocation(line: 659, column: 33, scope: !3140)
!3153 = !DILocation(line: 666, column: 19, scope: !2733)
!3154 = !DILocation(line: 662, column: 41, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !2756, file: !270, line: 662, column: 29)
!3156 = !DILocation(line: 662, column: 31, scope: !3155)
!3157 = !DILocation(line: 662, column: 29, scope: !2756)
!3158 = !DILocation(line: 664, column: 27, scope: !2756)
!3159 = !DILocation(line: 667, column: 26, scope: !2733)
!3160 = !DILocation(line: 667, column: 24, scope: !2733)
!3161 = !DILocation(line: 666, column: 19, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !2750, file: !270, discriminator: 3)
!3163 = !DILocation(line: 668, column: 15, scope: !2734)
!3164 = !DILocation(line: 670, column: 40, scope: !2729)
!3165 = !DILocation(line: 672, column: 19, scope: !2762)
!3166 = !DILocation(line: 672, column: 45, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !2762, file: !270, discriminator: 1)
!3168 = !DILocation(line: 672, column: 23, scope: !2762)
!3169 = !DILocation(line: 676, column: 33, scope: !2761)
!3170 = !DILocation(line: 676, column: 24, scope: !2761)
!3171 = !DILocation(line: 678, column: 17, scope: !2761)
!3172 = !DILocation(line: 680, column: 43, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !270, line: 680, column: 25)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !270, line: 679, column: 19)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !270, line: 678, column: 17)
!3176 = distinct !DILexicalBlock(scope: !2761, file: !270, line: 678, column: 17)
!3177 = !DILocation(line: 682, column: 25, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3179, file: !270, discriminator: 1)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !270, line: 682, column: 25)
!3180 = distinct !DILexicalBlock(scope: !3173, file: !270, line: 681, column: 23)
!3181 = !DILocation(line: 682, column: 25, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !3183, file: !270, discriminator: 4)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !270, line: 682, column: 25)
!3184 = !DILocation(line: 682, column: 25, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3183, file: !270, discriminator: 3)
!3186 = !DILocation(line: 682, column: 25, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !3188, file: !270, discriminator: 6)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !270, line: 682, column: 25)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !270, line: 682, column: 25)
!3190 = distinct !DILexicalBlock(scope: !3183, file: !270, line: 682, column: 25)
!3191 = !DILocation(line: 682, column: 25, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !3189, file: !270, discriminator: 6)
!3193 = !DILocation(line: 682, column: 25, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !3188, file: !270, discriminator: 7)
!3195 = !DILocation(line: 682, column: 25, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3189, file: !270, discriminator: 8)
!3197 = !DILocation(line: 682, column: 25, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3199, file: !270, discriminator: 11)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !270, line: 682, column: 25)
!3200 = distinct !DILexicalBlock(scope: !3190, file: !270, line: 682, column: 25)
!3201 = !DILocation(line: 682, column: 25, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !3200, file: !270, discriminator: 11)
!3203 = !DILocation(line: 682, column: 25, scope: !3204)
!3204 = !DILexicalBlockFile(scope: !3199, file: !270, discriminator: 12)
!3205 = !DILocation(line: 682, column: 25, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3200, file: !270, discriminator: 13)
!3207 = !DILocation(line: 682, column: 25, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3209, file: !270, discriminator: 16)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !270, line: 682, column: 25)
!3210 = distinct !DILexicalBlock(scope: !3190, file: !270, line: 682, column: 25)
!3211 = !DILocation(line: 682, column: 25, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3210, file: !270, discriminator: 16)
!3213 = !DILocation(line: 682, column: 25, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !3209, file: !270, discriminator: 17)
!3215 = !DILocation(line: 682, column: 25, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3210, file: !270, discriminator: 18)
!3217 = !DILocation(line: 682, column: 25, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3190, file: !270, discriminator: 20)
!3219 = !DILocation(line: 682, column: 25, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !3221, file: !270, discriminator: 22)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !270, line: 682, column: 25)
!3222 = distinct !DILexicalBlock(scope: !3179, file: !270, line: 682, column: 25)
!3223 = !DILocation(line: 682, column: 25, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3222, file: !270, discriminator: 22)
!3225 = !DILocation(line: 682, column: 25, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3221, file: !270, discriminator: 23)
!3227 = !DILocation(line: 682, column: 25, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3222, file: !270, discriminator: 24)
!3229 = !DILocation(line: 683, column: 25, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3231, file: !270, discriminator: 1)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !270, line: 683, column: 25)
!3232 = distinct !DILexicalBlock(scope: !3180, file: !270, line: 683, column: 25)
!3233 = !DILocation(line: 683, column: 25, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3232, file: !270, discriminator: 1)
!3235 = !DILocation(line: 683, column: 25, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3231, file: !270, discriminator: 2)
!3237 = !DILocation(line: 683, column: 25, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3232, file: !270, discriminator: 3)
!3239 = !DILocation(line: 684, column: 25, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3241, file: !270, discriminator: 1)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !270, line: 684, column: 25)
!3242 = distinct !DILexicalBlock(scope: !3180, file: !270, line: 684, column: 25)
!3243 = !DILocation(line: 684, column: 25, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3242, file: !270, discriminator: 1)
!3245 = !DILocation(line: 684, column: 25, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3241, file: !270, discriminator: 2)
!3247 = !DILocation(line: 684, column: 25, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !3242, file: !270, discriminator: 3)
!3249 = !DILocation(line: 685, column: 38, scope: !3180)
!3250 = !DILocation(line: 685, column: 33, scope: !3180)
!3251 = !DILocation(line: 686, column: 23, scope: !3180)
!3252 = !DILocation(line: 687, column: 30, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3173, file: !270, line: 687, column: 30)
!3254 = !DILocation(line: 687, column: 30, scope: !3173)
!3255 = !DILocation(line: 689, column: 25, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !3257, file: !270, discriminator: 1)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !270, line: 689, column: 25)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !270, line: 689, column: 25)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !270, line: 688, column: 23)
!3260 = !DILocation(line: 689, column: 25, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !3258, file: !270, discriminator: 1)
!3262 = !DILocation(line: 689, column: 25, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3257, file: !270, discriminator: 2)
!3264 = !DILocation(line: 689, column: 25, scope: !3265)
!3265 = !DILexicalBlockFile(scope: !3258, file: !270, discriminator: 3)
!3266 = !DILocation(line: 691, column: 23, scope: !3259)
!3267 = !DILocation(line: 692, column: 35, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3174, file: !270, line: 692, column: 25)
!3269 = !DILocation(line: 692, column: 30, scope: !3268)
!3270 = !DILocation(line: 692, column: 25, scope: !3174)
!3271 = !DILocation(line: 694, column: 21, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3273, file: !270, discriminator: 1)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !270, line: 694, column: 21)
!3274 = distinct !DILexicalBlock(scope: !3174, file: !270, line: 694, column: 21)
!3275 = !DILocation(line: 694, column: 21, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3273, file: !270, discriminator: 2)
!3277 = !DILocation(line: 694, column: 21, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3279, file: !270, discriminator: 4)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !270, line: 694, column: 21)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !270, line: 694, column: 21)
!3281 = distinct !DILexicalBlock(scope: !3273, file: !270, line: 694, column: 21)
!3282 = !DILocation(line: 694, column: 21, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3280, file: !270, discriminator: 4)
!3284 = !DILocation(line: 694, column: 21, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3279, file: !270, discriminator: 5)
!3286 = !DILocation(line: 694, column: 21, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !3280, file: !270, discriminator: 6)
!3288 = !DILocation(line: 694, column: 21, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !3290, file: !270, discriminator: 9)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !270, line: 694, column: 21)
!3291 = distinct !DILexicalBlock(scope: !3281, file: !270, line: 694, column: 21)
!3292 = !DILocation(line: 694, column: 21, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !3291, file: !270, discriminator: 9)
!3294 = !DILocation(line: 694, column: 21, scope: !3295)
!3295 = !DILexicalBlockFile(scope: !3290, file: !270, discriminator: 10)
!3296 = !DILocation(line: 694, column: 21, scope: !3297)
!3297 = !DILexicalBlockFile(scope: !3291, file: !270, discriminator: 11)
!3298 = !DILocation(line: 694, column: 21, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3281, file: !270, discriminator: 13)
!3300 = !DILocation(line: 695, column: 21, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3302, file: !270, discriminator: 1)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !270, line: 695, column: 21)
!3303 = distinct !DILexicalBlock(scope: !3174, file: !270, line: 695, column: 21)
!3304 = !DILocation(line: 695, column: 21, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !3303, file: !270, discriminator: 1)
!3306 = !DILocation(line: 695, column: 21, scope: !3307)
!3307 = !DILexicalBlockFile(scope: !3302, file: !270, discriminator: 2)
!3308 = !DILocation(line: 695, column: 21, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3303, file: !270, discriminator: 3)
!3310 = !DILocation(line: 696, column: 25, scope: !3174)
!3311 = !DILocation(line: 678, column: 17, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !3175, file: !270, discriminator: 1)
!3313 = distinct !{!3313, !3314, !3315}
!3314 = !DILocation(line: 678, column: 17, scope: !3176)
!3315 = !DILocation(line: 697, column: 19, scope: !3176)
!3316 = !DILocation(line: 704, column: 34, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !2721, file: !270, line: 704, column: 11)
!3318 = !DILocation(line: 706, column: 14, scope: !3317)
!3319 = !DILocation(line: 707, column: 14, scope: !3317)
!3320 = !DILocation(line: 707, column: 35, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3317, file: !270, discriminator: 1)
!3322 = !DILocation(line: 707, column: 17, scope: !3321)
!3323 = !DILocation(line: 707, column: 53, scope: !3321)
!3324 = !DILocation(line: 707, column: 47, scope: !3321)
!3325 = !DILocation(line: 707, column: 65, scope: !3321)
!3326 = !DILocation(line: 708, column: 15, scope: !3321)
!3327 = !DILocation(line: 708, column: 11, scope: !3317)
!3328 = !DILocation(line: 704, column: 11, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !2721, file: !270, discriminator: 2)
!3330 = !DILocation(line: 712, column: 7, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3332, file: !270, discriminator: 1)
!3332 = distinct !DILexicalBlock(scope: !2721, file: !270, line: 712, column: 7)
!3333 = !DILocation(line: 712, column: 7, scope: !3334)
!3334 = !DILexicalBlockFile(scope: !3335, file: !270, discriminator: 4)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !270, line: 712, column: 7)
!3336 = !DILocation(line: 712, column: 7, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3335, file: !270, discriminator: 3)
!3338 = !DILocation(line: 712, column: 7, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3340, file: !270, discriminator: 6)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !270, line: 712, column: 7)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !270, line: 712, column: 7)
!3342 = distinct !DILexicalBlock(scope: !3335, file: !270, line: 712, column: 7)
!3343 = !DILocation(line: 712, column: 7, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !3341, file: !270, discriminator: 6)
!3345 = !DILocation(line: 712, column: 7, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3340, file: !270, discriminator: 7)
!3347 = !DILocation(line: 712, column: 7, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3341, file: !270, discriminator: 8)
!3349 = !DILocation(line: 712, column: 7, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !3351, file: !270, discriminator: 11)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !270, line: 712, column: 7)
!3352 = distinct !DILexicalBlock(scope: !3342, file: !270, line: 712, column: 7)
!3353 = !DILocation(line: 712, column: 7, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !3352, file: !270, discriminator: 11)
!3355 = !DILocation(line: 712, column: 7, scope: !3356)
!3356 = !DILexicalBlockFile(scope: !3351, file: !270, discriminator: 12)
!3357 = !DILocation(line: 712, column: 7, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !3352, file: !270, discriminator: 13)
!3359 = !DILocation(line: 712, column: 7, scope: !3360)
!3360 = !DILexicalBlockFile(scope: !3361, file: !270, discriminator: 16)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !270, line: 712, column: 7)
!3362 = distinct !DILexicalBlock(scope: !3342, file: !270, line: 712, column: 7)
!3363 = !DILocation(line: 712, column: 7, scope: !3364)
!3364 = !DILexicalBlockFile(scope: !3362, file: !270, discriminator: 16)
!3365 = !DILocation(line: 712, column: 7, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !3361, file: !270, discriminator: 17)
!3367 = !DILocation(line: 712, column: 7, scope: !3368)
!3368 = !DILexicalBlockFile(scope: !3362, file: !270, discriminator: 18)
!3369 = !DILocation(line: 712, column: 7, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !3342, file: !270, discriminator: 20)
!3371 = !DILocation(line: 712, column: 7, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !3373, file: !270, discriminator: 22)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !270, line: 712, column: 7)
!3374 = distinct !DILexicalBlock(scope: !3332, file: !270, line: 712, column: 7)
!3375 = !DILocation(line: 712, column: 7, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !3374, file: !270, discriminator: 22)
!3377 = !DILocation(line: 712, column: 7, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3373, file: !270, discriminator: 23)
!3379 = !DILocation(line: 712, column: 7, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3374, file: !270, discriminator: 24)
!3381 = !DILocation(line: 715, column: 7, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !3383, file: !270, discriminator: 1)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !270, line: 715, column: 7)
!3384 = distinct !DILexicalBlock(scope: !2721, file: !270, line: 715, column: 7)
!3385 = !DILocation(line: 715, column: 7, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3383, file: !270, discriminator: 2)
!3387 = !DILocation(line: 715, column: 7, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3389, file: !270, discriminator: 4)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !270, line: 715, column: 7)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !270, line: 715, column: 7)
!3391 = distinct !DILexicalBlock(scope: !3383, file: !270, line: 715, column: 7)
!3392 = !DILocation(line: 715, column: 7, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3390, file: !270, discriminator: 4)
!3394 = !DILocation(line: 715, column: 7, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3389, file: !270, discriminator: 5)
!3396 = !DILocation(line: 715, column: 7, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3390, file: !270, discriminator: 6)
!3398 = !DILocation(line: 715, column: 7, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !3400, file: !270, discriminator: 9)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !270, line: 715, column: 7)
!3401 = distinct !DILexicalBlock(scope: !3391, file: !270, line: 715, column: 7)
!3402 = !DILocation(line: 715, column: 7, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3401, file: !270, discriminator: 9)
!3404 = !DILocation(line: 715, column: 7, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !3400, file: !270, discriminator: 10)
!3406 = !DILocation(line: 715, column: 7, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3401, file: !270, discriminator: 11)
!3408 = !DILocation(line: 715, column: 7, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3391, file: !270, discriminator: 13)
!3410 = !DILocation(line: 716, column: 7, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3412, file: !270, discriminator: 1)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !270, line: 716, column: 7)
!3413 = distinct !DILexicalBlock(scope: !2721, file: !270, line: 716, column: 7)
!3414 = !DILocation(line: 716, column: 7, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3413, file: !270, discriminator: 1)
!3416 = !DILocation(line: 716, column: 7, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3412, file: !270, discriminator: 2)
!3418 = !DILocation(line: 716, column: 7, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3413, file: !270, discriminator: 3)
!3420 = !DILocation(line: 718, column: 13, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !2721, file: !270, line: 718, column: 11)
!3422 = !DILocation(line: 718, column: 11, scope: !2721)
!3423 = !DILocation(line: 720, column: 5, scope: !2722)
!3424 = !DILocation(line: 392, column: 75, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !2722, file: !270, discriminator: 5)
!3426 = !DILocation(line: 392, column: 3, scope: !3425)
!3427 = distinct !{!3427, !3428, !3429}
!3428 = !DILocation(line: 392, column: 3, scope: !2723)
!3429 = !DILocation(line: 720, column: 5, scope: !2723)
!3430 = !DILocation(line: 722, column: 11, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !2694, file: !270, line: 722, column: 7)
!3432 = !DILocation(line: 722, column: 16, scope: !3431)
!3433 = !DILocation(line: 730, column: 51, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !2694, file: !270, line: 730, column: 7)
!3435 = !DILocation(line: 731, column: 10, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3434, file: !270, discriminator: 1)
!3437 = !DILocation(line: 733, column: 11, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !270, line: 733, column: 11)
!3439 = distinct !DILexicalBlock(scope: !3434, file: !270, line: 732, column: 5)
!3440 = !DILocation(line: 733, column: 11, scope: !3439)
!3441 = !DILocation(line: 734, column: 16, scope: !3438)
!3442 = !DILocation(line: 734, column: 9, scope: !3438)
!3443 = !DILocation(line: 738, column: 18, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !270, line: 738, column: 16)
!3445 = !DILocation(line: 738, column: 32, scope: !3446)
!3446 = !DILexicalBlockFile(scope: !3444, file: !270, discriminator: 1)
!3447 = !DILocation(line: 738, column: 29, scope: !3444)
!3448 = !DILocation(line: 747, column: 7, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !2694, file: !270, line: 747, column: 7)
!3450 = !DILocation(line: 747, column: 20, scope: !3449)
!3451 = !DILocation(line: 748, column: 12, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3453, file: !270, discriminator: 1)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !270, line: 748, column: 5)
!3454 = distinct !DILexicalBlock(scope: !3449, file: !270, line: 748, column: 5)
!3455 = !DILocation(line: 748, column: 5, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3454, file: !270, discriminator: 1)
!3457 = !DILocation(line: 749, column: 7, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !3459, file: !270, discriminator: 1)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !270, line: 749, column: 7)
!3460 = distinct !DILexicalBlock(scope: !3453, file: !270, line: 749, column: 7)
!3461 = !DILocation(line: 749, column: 7, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3460, file: !270, discriminator: 1)
!3463 = !DILocation(line: 749, column: 7, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !3459, file: !270, discriminator: 2)
!3465 = !DILocation(line: 749, column: 7, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3460, file: !270, discriminator: 3)
!3467 = !DILocation(line: 748, column: 39, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !3453, file: !270, discriminator: 2)
!3469 = distinct !{!3469, !3470, !3471}
!3470 = !DILocation(line: 748, column: 5, scope: !3454)
!3471 = !DILocation(line: 749, column: 7, scope: !3454)
!3472 = !DILocation(line: 751, column: 11, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !2694, file: !270, line: 751, column: 7)
!3474 = !DILocation(line: 751, column: 7, scope: !2694)
!3475 = !DILocation(line: 752, column: 5, scope: !3473)
!3476 = !DILocation(line: 752, column: 17, scope: !3473)
!3477 = !DILocation(line: 758, column: 21, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !2694, file: !270, line: 758, column: 7)
!3479 = !DILocation(line: 758, column: 54, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !3478, file: !270, discriminator: 1)
!3481 = !DILocation(line: 758, column: 51, scope: !3478)
!3482 = !DILocation(line: 762, column: 42, scope: !2694)
!3483 = !DILocation(line: 760, column: 10, scope: !2694)
!3484 = !DILocation(line: 760, column: 3, scope: !2694)
!3485 = !DILocation(line: 764, column: 1, scope: !2694)
!3486 = distinct !DISubprogram(name: "gettext_quote", scope: !270, file: !270, line: 199, type: !3487, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!51, !51, !16}
!3489 = !{!3490, !3491, !3492, !3493}
!3490 = !DILocalVariable(name: "msgid", arg: 1, scope: !3486, file: !270, line: 199, type: !51)
!3491 = !DILocalVariable(name: "s", arg: 2, scope: !3486, file: !270, line: 199, type: !16)
!3492 = !DILocalVariable(name: "translation", scope: !3486, file: !270, line: 201, type: !51)
!3493 = !DILocalVariable(name: "locale_code", scope: !3486, file: !270, line: 202, type: !51)
!3494 = !DILocation(line: 199, column: 28, scope: !3486)
!3495 = !DILocation(line: 199, column: 54, scope: !3486)
!3496 = !DILocation(line: 201, column: 29, scope: !3486)
!3497 = !DILocation(line: 201, column: 15, scope: !3486)
!3498 = !DILocation(line: 204, column: 19, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3486, file: !270, line: 204, column: 7)
!3500 = !DILocation(line: 204, column: 7, scope: !3486)
!3501 = !DILocation(line: 225, column: 17, scope: !3486)
!3502 = !DILocation(line: 202, column: 15, scope: !3486)
!3503 = !DILocalVariable(name: "s2", arg: 2, scope: !3504, file: !3505, line: 160, type: !51)
!3504 = distinct !DISubprogram(name: "strcaseeq0", scope: !3505, file: !3505, line: 160, type: !3506, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3508)
!3505 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!60, !51, !51, !41, !41, !41, !41, !41, !41, !41, !41, !41}
!3508 = !{!3509, !3503, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518}
!3509 = !DILocalVariable(name: "s1", arg: 1, scope: !3504, file: !3505, line: 160, type: !51)
!3510 = !DILocalVariable(name: "s20", arg: 3, scope: !3504, file: !3505, line: 160, type: !41)
!3511 = !DILocalVariable(name: "s21", arg: 4, scope: !3504, file: !3505, line: 160, type: !41)
!3512 = !DILocalVariable(name: "s22", arg: 5, scope: !3504, file: !3505, line: 160, type: !41)
!3513 = !DILocalVariable(name: "s23", arg: 6, scope: !3504, file: !3505, line: 160, type: !41)
!3514 = !DILocalVariable(name: "s24", arg: 7, scope: !3504, file: !3505, line: 160, type: !41)
!3515 = !DILocalVariable(name: "s25", arg: 8, scope: !3504, file: !3505, line: 160, type: !41)
!3516 = !DILocalVariable(name: "s26", arg: 9, scope: !3504, file: !3505, line: 160, type: !41)
!3517 = !DILocalVariable(name: "s27", arg: 10, scope: !3504, file: !3505, line: 160, type: !41)
!3518 = !DILocalVariable(name: "s28", arg: 11, scope: !3504, file: !3505, line: 160, type: !41)
!3519 = !DILocation(line: 160, column: 41, scope: !3504, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 226, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3486, file: !270, line: 226, column: 7)
!3522 = !DILocation(line: 160, column: 120, scope: !3504, inlinedAt: !3520)
!3523 = !DILocation(line: 160, column: 130, scope: !3504, inlinedAt: !3520)
!3524 = !DILocation(line: 162, column: 7, scope: !3525, inlinedAt: !3520)
!3525 = !DILexicalBlockFile(scope: !3526, file: !3505, discriminator: 1)
!3526 = distinct !DILexicalBlock(scope: !3504, file: !3505, line: 162, column: 7)
!3527 = !DILocalVariable(name: "s2", arg: 2, scope: !3528, file: !3505, line: 146, type: !51)
!3528 = distinct !DISubprogram(name: "strcaseeq1", scope: !3505, file: !3505, line: 146, type: !3529, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!60, !51, !51, !41, !41, !41, !41, !41, !41, !41, !41}
!3531 = !{!3532, !3527, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3532 = !DILocalVariable(name: "s1", arg: 1, scope: !3528, file: !3505, line: 146, type: !51)
!3533 = !DILocalVariable(name: "s21", arg: 3, scope: !3528, file: !3505, line: 146, type: !41)
!3534 = !DILocalVariable(name: "s22", arg: 4, scope: !3528, file: !3505, line: 146, type: !41)
!3535 = !DILocalVariable(name: "s23", arg: 5, scope: !3528, file: !3505, line: 146, type: !41)
!3536 = !DILocalVariable(name: "s24", arg: 6, scope: !3528, file: !3505, line: 146, type: !41)
!3537 = !DILocalVariable(name: "s25", arg: 7, scope: !3528, file: !3505, line: 146, type: !41)
!3538 = !DILocalVariable(name: "s26", arg: 8, scope: !3528, file: !3505, line: 146, type: !41)
!3539 = !DILocalVariable(name: "s27", arg: 9, scope: !3528, file: !3505, line: 146, type: !41)
!3540 = !DILocalVariable(name: "s28", arg: 10, scope: !3528, file: !3505, line: 146, type: !41)
!3541 = !DILocation(line: 146, column: 41, scope: !3528, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 167, column: 16, scope: !3543, inlinedAt: !3520)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !3505, line: 164, column: 11)
!3544 = distinct !DILexicalBlock(scope: !3526, file: !3505, line: 163, column: 5)
!3545 = !DILocation(line: 146, column: 110, scope: !3528, inlinedAt: !3542)
!3546 = !DILocation(line: 146, column: 120, scope: !3528, inlinedAt: !3542)
!3547 = !DILocation(line: 148, column: 7, scope: !3548, inlinedAt: !3542)
!3548 = !DILexicalBlockFile(scope: !3549, file: !3505, discriminator: 1)
!3549 = distinct !DILexicalBlock(scope: !3528, file: !3505, line: 148, column: 7)
!3550 = !DILocalVariable(name: "s2", arg: 2, scope: !3551, file: !3505, line: 132, type: !51)
!3551 = distinct !DISubprogram(name: "strcaseeq2", scope: !3505, file: !3505, line: 132, type: !3552, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!60, !51, !51, !41, !41, !41, !41, !41, !41, !41}
!3554 = !{!3555, !3550, !3556, !3557, !3558, !3559, !3560, !3561, !3562}
!3555 = !DILocalVariable(name: "s1", arg: 1, scope: !3551, file: !3505, line: 132, type: !51)
!3556 = !DILocalVariable(name: "s22", arg: 3, scope: !3551, file: !3505, line: 132, type: !41)
!3557 = !DILocalVariable(name: "s23", arg: 4, scope: !3551, file: !3505, line: 132, type: !41)
!3558 = !DILocalVariable(name: "s24", arg: 5, scope: !3551, file: !3505, line: 132, type: !41)
!3559 = !DILocalVariable(name: "s25", arg: 6, scope: !3551, file: !3505, line: 132, type: !41)
!3560 = !DILocalVariable(name: "s26", arg: 7, scope: !3551, file: !3505, line: 132, type: !41)
!3561 = !DILocalVariable(name: "s27", arg: 8, scope: !3551, file: !3505, line: 132, type: !41)
!3562 = !DILocalVariable(name: "s28", arg: 9, scope: !3551, file: !3505, line: 132, type: !41)
!3563 = !DILocation(line: 132, column: 41, scope: !3551, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 153, column: 16, scope: !3565, inlinedAt: !3542)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !3505, line: 150, column: 11)
!3566 = distinct !DILexicalBlock(scope: !3549, file: !3505, line: 149, column: 5)
!3567 = !DILocation(line: 132, column: 100, scope: !3551, inlinedAt: !3564)
!3568 = !DILocation(line: 132, column: 110, scope: !3551, inlinedAt: !3564)
!3569 = !DILocation(line: 134, column: 7, scope: !3570, inlinedAt: !3564)
!3570 = !DILexicalBlockFile(scope: !3571, file: !3505, discriminator: 1)
!3571 = distinct !DILexicalBlock(scope: !3551, file: !3505, line: 134, column: 7)
!3572 = !DILocalVariable(name: "s2", arg: 2, scope: !3573, file: !3505, line: 118, type: !51)
!3573 = distinct !DISubprogram(name: "strcaseeq3", scope: !3505, file: !3505, line: 118, type: !3574, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!60, !51, !51, !41, !41, !41, !41, !41, !41}
!3576 = !{!3577, !3572, !3578, !3579, !3580, !3581, !3582, !3583}
!3577 = !DILocalVariable(name: "s1", arg: 1, scope: !3573, file: !3505, line: 118, type: !51)
!3578 = !DILocalVariable(name: "s23", arg: 3, scope: !3573, file: !3505, line: 118, type: !41)
!3579 = !DILocalVariable(name: "s24", arg: 4, scope: !3573, file: !3505, line: 118, type: !41)
!3580 = !DILocalVariable(name: "s25", arg: 5, scope: !3573, file: !3505, line: 118, type: !41)
!3581 = !DILocalVariable(name: "s26", arg: 6, scope: !3573, file: !3505, line: 118, type: !41)
!3582 = !DILocalVariable(name: "s27", arg: 7, scope: !3573, file: !3505, line: 118, type: !41)
!3583 = !DILocalVariable(name: "s28", arg: 8, scope: !3573, file: !3505, line: 118, type: !41)
!3584 = !DILocation(line: 118, column: 41, scope: !3573, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 139, column: 16, scope: !3586, inlinedAt: !3564)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !3505, line: 136, column: 11)
!3587 = distinct !DILexicalBlock(scope: !3571, file: !3505, line: 135, column: 5)
!3588 = !DILocation(line: 118, column: 90, scope: !3573, inlinedAt: !3585)
!3589 = !DILocation(line: 118, column: 100, scope: !3573, inlinedAt: !3585)
!3590 = !DILocation(line: 120, column: 7, scope: !3591, inlinedAt: !3585)
!3591 = !DILexicalBlockFile(scope: !3592, file: !3505, discriminator: 2)
!3592 = distinct !DILexicalBlock(scope: !3573, file: !3505, line: 120, column: 7)
!3593 = !DILocation(line: 120, column: 7, scope: !3594, inlinedAt: !3585)
!3594 = !DILexicalBlockFile(scope: !3573, file: !3505, discriminator: 2)
!3595 = !DILocalVariable(name: "s2", arg: 2, scope: !3596, file: !3505, line: 104, type: !51)
!3596 = distinct !DISubprogram(name: "strcaseeq4", scope: !3505, file: !3505, line: 104, type: !3597, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!60, !51, !51, !41, !41, !41, !41, !41}
!3599 = !{!3600, !3595, !3601, !3602, !3603, !3604, !3605}
!3600 = !DILocalVariable(name: "s1", arg: 1, scope: !3596, file: !3505, line: 104, type: !51)
!3601 = !DILocalVariable(name: "s24", arg: 3, scope: !3596, file: !3505, line: 104, type: !41)
!3602 = !DILocalVariable(name: "s25", arg: 4, scope: !3596, file: !3505, line: 104, type: !41)
!3603 = !DILocalVariable(name: "s26", arg: 5, scope: !3596, file: !3505, line: 104, type: !41)
!3604 = !DILocalVariable(name: "s27", arg: 6, scope: !3596, file: !3505, line: 104, type: !41)
!3605 = !DILocalVariable(name: "s28", arg: 7, scope: !3596, file: !3505, line: 104, type: !41)
!3606 = !DILocation(line: 104, column: 41, scope: !3596, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 125, column: 16, scope: !3608, inlinedAt: !3585)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3505, line: 122, column: 11)
!3609 = distinct !DILexicalBlock(scope: !3592, file: !3505, line: 121, column: 5)
!3610 = !DILocation(line: 104, column: 80, scope: !3596, inlinedAt: !3607)
!3611 = !DILocation(line: 104, column: 90, scope: !3596, inlinedAt: !3607)
!3612 = !DILocation(line: 106, column: 7, scope: !3613, inlinedAt: !3607)
!3613 = !DILexicalBlockFile(scope: !3614, file: !3505, discriminator: 2)
!3614 = distinct !DILexicalBlock(scope: !3596, file: !3505, line: 106, column: 7)
!3615 = !DILocation(line: 106, column: 7, scope: !3616, inlinedAt: !3607)
!3616 = !DILexicalBlockFile(scope: !3596, file: !3505, discriminator: 2)
!3617 = !DILocalVariable(name: "s2", arg: 2, scope: !3618, file: !3505, line: 90, type: !51)
!3618 = distinct !DISubprogram(name: "strcaseeq5", scope: !3505, file: !3505, line: 90, type: !3619, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!60, !51, !51, !41, !41, !41, !41}
!3621 = !{!3622, !3617, !3623, !3624, !3625, !3626}
!3622 = !DILocalVariable(name: "s1", arg: 1, scope: !3618, file: !3505, line: 90, type: !51)
!3623 = !DILocalVariable(name: "s25", arg: 3, scope: !3618, file: !3505, line: 90, type: !41)
!3624 = !DILocalVariable(name: "s26", arg: 4, scope: !3618, file: !3505, line: 90, type: !41)
!3625 = !DILocalVariable(name: "s27", arg: 5, scope: !3618, file: !3505, line: 90, type: !41)
!3626 = !DILocalVariable(name: "s28", arg: 6, scope: !3618, file: !3505, line: 90, type: !41)
!3627 = !DILocation(line: 90, column: 41, scope: !3618, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 111, column: 16, scope: !3629, inlinedAt: !3607)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !3505, line: 108, column: 11)
!3630 = distinct !DILexicalBlock(scope: !3614, file: !3505, line: 107, column: 5)
!3631 = !DILocation(line: 90, column: 70, scope: !3618, inlinedAt: !3628)
!3632 = !DILocation(line: 90, column: 80, scope: !3618, inlinedAt: !3628)
!3633 = !DILocation(line: 92, column: 7, scope: !3634, inlinedAt: !3628)
!3634 = !DILexicalBlockFile(scope: !3635, file: !3505, discriminator: 2)
!3635 = distinct !DILexicalBlock(scope: !3618, file: !3505, line: 92, column: 7)
!3636 = !DILocation(line: 92, column: 7, scope: !3637, inlinedAt: !3628)
!3637 = !DILexicalBlockFile(scope: !3618, file: !3505, discriminator: 2)
!3638 = !DILocation(line: 227, column: 12, scope: !3521)
!3639 = !DILocation(line: 227, column: 21, scope: !3521)
!3640 = !DILocation(line: 227, column: 5, scope: !3521)
!3641 = !DILocation(line: 146, column: 41, scope: !3528, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 167, column: 16, scope: !3543, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 228, column: 7, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3486, file: !270, line: 228, column: 7)
!3645 = !DILocation(line: 146, column: 110, scope: !3528, inlinedAt: !3642)
!3646 = !DILocation(line: 146, column: 120, scope: !3528, inlinedAt: !3642)
!3647 = !DILocation(line: 148, column: 7, scope: !3548, inlinedAt: !3642)
!3648 = !DILocation(line: 132, column: 41, scope: !3551, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 153, column: 16, scope: !3565, inlinedAt: !3642)
!3650 = !DILocation(line: 132, column: 100, scope: !3551, inlinedAt: !3649)
!3651 = !DILocation(line: 132, column: 110, scope: !3551, inlinedAt: !3649)
!3652 = !DILocation(line: 134, column: 7, scope: !3653, inlinedAt: !3649)
!3653 = !DILexicalBlockFile(scope: !3571, file: !3505, discriminator: 2)
!3654 = !DILocation(line: 134, column: 7, scope: !3655, inlinedAt: !3649)
!3655 = !DILexicalBlockFile(scope: !3551, file: !3505, discriminator: 2)
!3656 = !DILocation(line: 118, column: 41, scope: !3573, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 139, column: 16, scope: !3586, inlinedAt: !3649)
!3658 = !DILocation(line: 118, column: 90, scope: !3573, inlinedAt: !3657)
!3659 = !DILocation(line: 118, column: 100, scope: !3573, inlinedAt: !3657)
!3660 = !DILocation(line: 120, column: 7, scope: !3591, inlinedAt: !3657)
!3661 = !DILocation(line: 120, column: 7, scope: !3594, inlinedAt: !3657)
!3662 = !DILocation(line: 104, column: 41, scope: !3596, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 125, column: 16, scope: !3608, inlinedAt: !3657)
!3664 = !DILocation(line: 104, column: 80, scope: !3596, inlinedAt: !3663)
!3665 = !DILocation(line: 104, column: 90, scope: !3596, inlinedAt: !3663)
!3666 = !DILocation(line: 106, column: 7, scope: !3613, inlinedAt: !3663)
!3667 = !DILocation(line: 106, column: 7, scope: !3616, inlinedAt: !3663)
!3668 = !DILocation(line: 90, column: 41, scope: !3618, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 111, column: 16, scope: !3629, inlinedAt: !3663)
!3670 = !DILocation(line: 90, column: 70, scope: !3618, inlinedAt: !3669)
!3671 = !DILocation(line: 90, column: 80, scope: !3618, inlinedAt: !3669)
!3672 = !DILocation(line: 92, column: 7, scope: !3634, inlinedAt: !3669)
!3673 = !DILocation(line: 92, column: 7, scope: !3637, inlinedAt: !3669)
!3674 = !DILocalVariable(name: "s2", arg: 2, scope: !3675, file: !3505, line: 76, type: !51)
!3675 = distinct !DISubprogram(name: "strcaseeq6", scope: !3505, file: !3505, line: 76, type: !3676, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!60, !51, !51, !41, !41, !41}
!3678 = !{!3679, !3674, !3680, !3681, !3682}
!3679 = !DILocalVariable(name: "s1", arg: 1, scope: !3675, file: !3505, line: 76, type: !51)
!3680 = !DILocalVariable(name: "s26", arg: 3, scope: !3675, file: !3505, line: 76, type: !41)
!3681 = !DILocalVariable(name: "s27", arg: 4, scope: !3675, file: !3505, line: 76, type: !41)
!3682 = !DILocalVariable(name: "s28", arg: 5, scope: !3675, file: !3505, line: 76, type: !41)
!3683 = !DILocation(line: 76, column: 41, scope: !3675, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 97, column: 16, scope: !3685, inlinedAt: !3669)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !3505, line: 94, column: 11)
!3686 = distinct !DILexicalBlock(scope: !3635, file: !3505, line: 93, column: 5)
!3687 = !DILocation(line: 76, column: 60, scope: !3675, inlinedAt: !3684)
!3688 = !DILocation(line: 76, column: 70, scope: !3675, inlinedAt: !3684)
!3689 = !DILocation(line: 78, column: 7, scope: !3690, inlinedAt: !3684)
!3690 = !DILexicalBlockFile(scope: !3691, file: !3505, discriminator: 2)
!3691 = distinct !DILexicalBlock(scope: !3675, file: !3505, line: 78, column: 7)
!3692 = !DILocation(line: 78, column: 7, scope: !3693, inlinedAt: !3684)
!3693 = !DILexicalBlockFile(scope: !3675, file: !3505, discriminator: 2)
!3694 = !DILocalVariable(name: "s2", arg: 2, scope: !3695, file: !3505, line: 62, type: !51)
!3695 = distinct !DISubprogram(name: "strcaseeq7", scope: !3505, file: !3505, line: 62, type: !3696, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!60, !51, !51, !41, !41}
!3698 = !{!3699, !3694, !3700, !3701}
!3699 = !DILocalVariable(name: "s1", arg: 1, scope: !3695, file: !3505, line: 62, type: !51)
!3700 = !DILocalVariable(name: "s27", arg: 3, scope: !3695, file: !3505, line: 62, type: !41)
!3701 = !DILocalVariable(name: "s28", arg: 4, scope: !3695, file: !3505, line: 62, type: !41)
!3702 = !DILocation(line: 62, column: 41, scope: !3695, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 83, column: 16, scope: !3704, inlinedAt: !3684)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !3505, line: 80, column: 11)
!3705 = distinct !DILexicalBlock(scope: !3691, file: !3505, line: 79, column: 5)
!3706 = !DILocation(line: 62, column: 50, scope: !3695, inlinedAt: !3703)
!3707 = !DILocation(line: 62, column: 60, scope: !3695, inlinedAt: !3703)
!3708 = !DILocation(line: 64, column: 7, scope: !3709, inlinedAt: !3703)
!3709 = !DILexicalBlockFile(scope: !3710, file: !3505, discriminator: 2)
!3710 = distinct !DILexicalBlock(scope: !3695, file: !3505, line: 64, column: 7)
!3711 = !DILocation(line: 228, column: 7, scope: !3486)
!3712 = !DILocation(line: 229, column: 12, scope: !3644)
!3713 = !DILocation(line: 229, column: 21, scope: !3644)
!3714 = !DILocation(line: 229, column: 5, scope: !3644)
!3715 = !DILocation(line: 231, column: 13, scope: !3486)
!3716 = !DILocation(line: 231, column: 11, scope: !3486)
!3717 = !DILocation(line: 231, column: 3, scope: !3486)
!3718 = !DILocation(line: 232, column: 1, scope: !3486)
!3719 = distinct !DISubprogram(name: "quotearg_alloc", scope: !270, file: !270, line: 791, type: !3720, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!40, !51, !43, !2562}
!3722 = !{!3723, !3724, !3725}
!3723 = !DILocalVariable(name: "arg", arg: 1, scope: !3719, file: !270, line: 791, type: !51)
!3724 = !DILocalVariable(name: "argsize", arg: 2, scope: !3719, file: !270, line: 791, type: !43)
!3725 = !DILocalVariable(name: "o", arg: 3, scope: !3719, file: !270, line: 792, type: !2562)
!3726 = !DILocation(line: 791, column: 29, scope: !3719)
!3727 = !DILocation(line: 791, column: 41, scope: !3719)
!3728 = !DILocation(line: 792, column: 47, scope: !3719)
!3729 = !DILocalVariable(name: "arg", arg: 1, scope: !3730, file: !270, line: 804, type: !51)
!3730 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !270, file: !270, line: 804, type: !3731, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!40, !51, !43, !169, !2562}
!3733 = !{!3729, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741}
!3734 = !DILocalVariable(name: "argsize", arg: 2, scope: !3730, file: !270, line: 804, type: !43)
!3735 = !DILocalVariable(name: "size", arg: 3, scope: !3730, file: !270, line: 804, type: !169)
!3736 = !DILocalVariable(name: "o", arg: 4, scope: !3730, file: !270, line: 805, type: !2562)
!3737 = !DILocalVariable(name: "p", scope: !3730, file: !270, line: 807, type: !2562)
!3738 = !DILocalVariable(name: "e", scope: !3730, file: !270, line: 808, type: !60)
!3739 = !DILocalVariable(name: "flags", scope: !3730, file: !270, line: 810, type: !60)
!3740 = !DILocalVariable(name: "bufsize", scope: !3730, file: !270, line: 811, type: !43)
!3741 = !DILocalVariable(name: "buf", scope: !3730, file: !270, line: 815, type: !40)
!3742 = !DILocation(line: 804, column: 33, scope: !3730, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 794, column: 10, scope: !3719)
!3744 = !DILocation(line: 804, column: 45, scope: !3730, inlinedAt: !3743)
!3745 = !DILocation(line: 804, column: 62, scope: !3730, inlinedAt: !3743)
!3746 = !DILocation(line: 805, column: 51, scope: !3730, inlinedAt: !3743)
!3747 = !DILocation(line: 807, column: 37, scope: !3730, inlinedAt: !3743)
!3748 = !DILocation(line: 807, column: 33, scope: !3730, inlinedAt: !3743)
!3749 = !DILocation(line: 808, column: 11, scope: !3730, inlinedAt: !3743)
!3750 = !DILocation(line: 808, column: 7, scope: !3730, inlinedAt: !3743)
!3751 = !DILocation(line: 810, column: 18, scope: !3730, inlinedAt: !3743)
!3752 = !DILocation(line: 810, column: 24, scope: !3730, inlinedAt: !3743)
!3753 = !DILocation(line: 810, column: 7, scope: !3730, inlinedAt: !3743)
!3754 = !DILocation(line: 811, column: 69, scope: !3730, inlinedAt: !3743)
!3755 = !DILocation(line: 812, column: 53, scope: !3730, inlinedAt: !3743)
!3756 = !DILocation(line: 813, column: 49, scope: !3730, inlinedAt: !3743)
!3757 = !DILocation(line: 814, column: 49, scope: !3730, inlinedAt: !3743)
!3758 = !DILocation(line: 811, column: 20, scope: !3730, inlinedAt: !3743)
!3759 = !DILocation(line: 814, column: 62, scope: !3730, inlinedAt: !3743)
!3760 = !DILocation(line: 811, column: 10, scope: !3730, inlinedAt: !3743)
!3761 = !DILocalVariable(name: "n", arg: 1, scope: !3762, file: !165, line: 220, type: !43)
!3762 = distinct !DISubprogram(name: "xcharalloc", scope: !165, file: !165, line: 220, type: !3763, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!40, !43}
!3765 = !{!3761}
!3766 = !DILocation(line: 220, column: 20, scope: !3762, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 815, column: 15, scope: !3730, inlinedAt: !3743)
!3768 = !DILocation(line: 222, column: 10, scope: !3762, inlinedAt: !3767)
!3769 = !DILocation(line: 815, column: 9, scope: !3730, inlinedAt: !3743)
!3770 = !DILocation(line: 816, column: 60, scope: !3730, inlinedAt: !3743)
!3771 = !DILocation(line: 818, column: 32, scope: !3730, inlinedAt: !3743)
!3772 = !DILocation(line: 818, column: 47, scope: !3730, inlinedAt: !3743)
!3773 = !DILocation(line: 816, column: 3, scope: !3730, inlinedAt: !3743)
!3774 = !DILocation(line: 819, column: 9, scope: !3730, inlinedAt: !3743)
!3775 = !DILocation(line: 794, column: 3, scope: !3719)
!3776 = !DILocation(line: 804, column: 33, scope: !3730)
!3777 = !DILocation(line: 804, column: 45, scope: !3730)
!3778 = !DILocation(line: 804, column: 62, scope: !3730)
!3779 = !DILocation(line: 805, column: 51, scope: !3730)
!3780 = !DILocation(line: 807, column: 37, scope: !3730)
!3781 = !DILocation(line: 807, column: 33, scope: !3730)
!3782 = !DILocation(line: 808, column: 11, scope: !3730)
!3783 = !DILocation(line: 808, column: 7, scope: !3730)
!3784 = !DILocation(line: 810, column: 18, scope: !3730)
!3785 = !DILocation(line: 810, column: 27, scope: !3730)
!3786 = !DILocation(line: 810, column: 24, scope: !3730)
!3787 = !DILocation(line: 810, column: 7, scope: !3730)
!3788 = !DILocation(line: 811, column: 69, scope: !3730)
!3789 = !DILocation(line: 812, column: 53, scope: !3730)
!3790 = !DILocation(line: 813, column: 49, scope: !3730)
!3791 = !DILocation(line: 814, column: 49, scope: !3730)
!3792 = !DILocation(line: 811, column: 20, scope: !3730)
!3793 = !DILocation(line: 814, column: 62, scope: !3730)
!3794 = !DILocation(line: 811, column: 10, scope: !3730)
!3795 = !DILocation(line: 220, column: 20, scope: !3762, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 815, column: 15, scope: !3730)
!3797 = !DILocation(line: 222, column: 10, scope: !3762, inlinedAt: !3796)
!3798 = !DILocation(line: 815, column: 9, scope: !3730)
!3799 = !DILocation(line: 816, column: 60, scope: !3730)
!3800 = !DILocation(line: 818, column: 32, scope: !3730)
!3801 = !DILocation(line: 818, column: 47, scope: !3730)
!3802 = !DILocation(line: 816, column: 3, scope: !3730)
!3803 = !DILocation(line: 819, column: 9, scope: !3730)
!3804 = !DILocation(line: 820, column: 7, scope: !3730)
!3805 = !DILocation(line: 821, column: 11, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3730, file: !270, line: 820, column: 7)
!3807 = !DILocation(line: 821, column: 5, scope: !3806)
!3808 = !DILocation(line: 822, column: 3, scope: !3730)
!3809 = distinct !DISubprogram(name: "quotearg_free", scope: !270, file: !270, line: 840, type: !754, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3810)
!3810 = !{!3811, !3812}
!3811 = !DILocalVariable(name: "sv", scope: !3809, file: !270, line: 842, type: !296)
!3812 = !DILocalVariable(name: "i", scope: !3809, file: !270, line: 843, type: !60)
!3813 = !DILocation(line: 842, column: 24, scope: !3809)
!3814 = !DILocation(line: 842, column: 19, scope: !3809)
!3815 = !DILocation(line: 843, column: 7, scope: !3809)
!3816 = !DILocation(line: 844, column: 19, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !3818, file: !270, discriminator: 1)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !270, line: 844, column: 3)
!3819 = distinct !DILexicalBlock(scope: !3809, file: !270, line: 844, column: 3)
!3820 = !DILocation(line: 844, column: 17, scope: !3817)
!3821 = !DILocation(line: 844, column: 3, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !3819, file: !270, discriminator: 1)
!3823 = !DILocation(line: 845, column: 17, scope: !3818)
!3824 = !{!3825, !739, i64 8}
!3825 = !{!"slotvec", !880, i64 0, !739, i64 8}
!3826 = !DILocation(line: 845, column: 5, scope: !3818)
!3827 = !DILocation(line: 844, column: 28, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3818, file: !270, discriminator: 2)
!3829 = distinct !{!3829, !3830, !3831}
!3830 = !DILocation(line: 844, column: 3, scope: !3819)
!3831 = !DILocation(line: 845, column: 20, scope: !3819)
!3832 = !DILocation(line: 846, column: 13, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3809, file: !270, line: 846, column: 7)
!3834 = !DILocation(line: 846, column: 17, scope: !3833)
!3835 = !DILocation(line: 846, column: 7, scope: !3809)
!3836 = !DILocation(line: 848, column: 7, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3833, file: !270, line: 847, column: 5)
!3838 = !DILocation(line: 849, column: 21, scope: !3837)
!3839 = !{!3825, !880, i64 0}
!3840 = !DILocation(line: 850, column: 20, scope: !3837)
!3841 = !DILocation(line: 851, column: 5, scope: !3837)
!3842 = !DILocation(line: 852, column: 10, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3809, file: !270, line: 852, column: 7)
!3844 = !DILocation(line: 852, column: 7, scope: !3809)
!3845 = !DILocation(line: 854, column: 13, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !270, line: 853, column: 5)
!3847 = !DILocation(line: 854, column: 7, scope: !3846)
!3848 = !DILocation(line: 855, column: 15, scope: !3846)
!3849 = !DILocation(line: 856, column: 5, scope: !3846)
!3850 = !DILocation(line: 857, column: 10, scope: !3809)
!3851 = !DILocation(line: 858, column: 1, scope: !3809)
!3852 = distinct !DISubprogram(name: "quotearg_n", scope: !270, file: !270, line: 922, type: !3853, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!40, !60, !51}
!3855 = !{!3856, !3857}
!3856 = !DILocalVariable(name: "n", arg: 1, scope: !3852, file: !270, line: 922, type: !60)
!3857 = !DILocalVariable(name: "arg", arg: 2, scope: !3852, file: !270, line: 922, type: !51)
!3858 = !DILocation(line: 922, column: 17, scope: !3852)
!3859 = !DILocation(line: 922, column: 32, scope: !3852)
!3860 = !DILocation(line: 924, column: 10, scope: !3852)
!3861 = !DILocation(line: 924, column: 3, scope: !3852)
!3862 = distinct !DISubprogram(name: "quotearg_n_options", scope: !270, file: !270, line: 869, type: !3863, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!40, !60, !51, !43, !2562}
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871, !3872, !3875, !3877, !3878, !3879}
!3866 = !DILocalVariable(name: "n", arg: 1, scope: !3862, file: !270, line: 869, type: !60)
!3867 = !DILocalVariable(name: "arg", arg: 2, scope: !3862, file: !270, line: 869, type: !51)
!3868 = !DILocalVariable(name: "argsize", arg: 3, scope: !3862, file: !270, line: 869, type: !43)
!3869 = !DILocalVariable(name: "options", arg: 4, scope: !3862, file: !270, line: 870, type: !2562)
!3870 = !DILocalVariable(name: "e", scope: !3862, file: !270, line: 872, type: !60)
!3871 = !DILocalVariable(name: "sv", scope: !3862, file: !270, line: 874, type: !296)
!3872 = !DILocalVariable(name: "preallocated", scope: !3873, file: !270, line: 881, type: !67)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !270, line: 880, column: 5)
!3874 = distinct !DILexicalBlock(scope: !3862, file: !270, line: 879, column: 7)
!3875 = !DILocalVariable(name: "size", scope: !3876, file: !270, line: 894, type: !43)
!3876 = distinct !DILexicalBlock(scope: !3862, file: !270, line: 893, column: 3)
!3877 = !DILocalVariable(name: "val", scope: !3876, file: !270, line: 895, type: !40)
!3878 = !DILocalVariable(name: "flags", scope: !3876, file: !270, line: 897, type: !60)
!3879 = !DILocalVariable(name: "qsize", scope: !3876, file: !270, line: 898, type: !43)
!3880 = !DILocation(line: 869, column: 25, scope: !3862)
!3881 = !DILocation(line: 869, column: 40, scope: !3862)
!3882 = !DILocation(line: 869, column: 52, scope: !3862)
!3883 = !DILocation(line: 870, column: 51, scope: !3862)
!3884 = !DILocation(line: 872, column: 11, scope: !3862)
!3885 = !DILocation(line: 872, column: 7, scope: !3862)
!3886 = !DILocation(line: 874, column: 24, scope: !3862)
!3887 = !DILocation(line: 874, column: 19, scope: !3862)
!3888 = !DILocation(line: 876, column: 9, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3862, file: !270, line: 876, column: 7)
!3890 = !DILocation(line: 876, column: 7, scope: !3862)
!3891 = !DILocation(line: 877, column: 5, scope: !3889)
!3892 = !DILocation(line: 879, column: 7, scope: !3874)
!3893 = !DILocation(line: 879, column: 14, scope: !3874)
!3894 = !DILocation(line: 879, column: 7, scope: !3862)
!3895 = !DILocation(line: 881, column: 31, scope: !3873)
!3896 = !DILocation(line: 883, column: 67, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3873, file: !270, line: 883, column: 11)
!3898 = !DILocation(line: 883, column: 11, scope: !3873)
!3899 = !DILocation(line: 884, column: 9, scope: !3897)
!3900 = !DILocation(line: 886, column: 32, scope: !3901)
!3901 = !DILexicalBlockFile(scope: !3873, file: !270, discriminator: 3)
!3902 = !DILocation(line: 886, column: 61, scope: !3901)
!3903 = !DILocation(line: 886, column: 58, scope: !3901)
!3904 = !DILocation(line: 886, column: 66, scope: !3901)
!3905 = !DILocation(line: 886, column: 22, scope: !3901)
!3906 = !DILocation(line: 886, column: 15, scope: !3901)
!3907 = !DILocation(line: 887, column: 11, scope: !3873)
!3908 = !DILocation(line: 888, column: 15, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3873, file: !270, line: 887, column: 11)
!3910 = !{i64 0, i64 8, !879, i64 8, i64 8, !738}
!3911 = !DILocation(line: 888, column: 9, scope: !3909)
!3912 = !DILocation(line: 889, column: 20, scope: !3873)
!3913 = !DILocation(line: 889, column: 18, scope: !3873)
!3914 = !DILocation(line: 889, column: 7, scope: !3873)
!3915 = !DILocation(line: 889, column: 38, scope: !3873)
!3916 = !DILocation(line: 889, column: 31, scope: !3873)
!3917 = !DILocation(line: 889, column: 48, scope: !3873)
!3918 = !DILocation(line: 890, column: 14, scope: !3873)
!3919 = !DILocation(line: 891, column: 5, scope: !3873)
!3920 = !DILocation(line: 894, column: 19, scope: !3876)
!3921 = !DILocation(line: 894, column: 25, scope: !3876)
!3922 = !DILocation(line: 894, column: 12, scope: !3876)
!3923 = !DILocation(line: 895, column: 23, scope: !3876)
!3924 = !DILocation(line: 895, column: 11, scope: !3876)
!3925 = !DILocation(line: 897, column: 26, scope: !3876)
!3926 = !DILocation(line: 897, column: 32, scope: !3876)
!3927 = !DILocation(line: 897, column: 9, scope: !3876)
!3928 = !DILocation(line: 899, column: 55, scope: !3876)
!3929 = !DILocation(line: 900, column: 46, scope: !3876)
!3930 = !DILocation(line: 901, column: 55, scope: !3876)
!3931 = !DILocation(line: 902, column: 55, scope: !3876)
!3932 = !DILocation(line: 898, column: 20, scope: !3876)
!3933 = !DILocation(line: 898, column: 12, scope: !3876)
!3934 = !DILocation(line: 904, column: 14, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3876, file: !270, line: 904, column: 9)
!3936 = !DILocation(line: 904, column: 9, scope: !3876)
!3937 = !DILocation(line: 906, column: 35, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3935, file: !270, line: 905, column: 7)
!3939 = !DILocation(line: 906, column: 20, scope: !3938)
!3940 = !DILocation(line: 907, column: 17, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3938, file: !270, line: 907, column: 13)
!3942 = !DILocation(line: 907, column: 13, scope: !3938)
!3943 = !DILocation(line: 908, column: 11, scope: !3941)
!3944 = !DILocation(line: 220, column: 20, scope: !3762, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 909, column: 27, scope: !3938)
!3946 = !DILocation(line: 222, column: 10, scope: !3762, inlinedAt: !3945)
!3947 = !DILocation(line: 909, column: 19, scope: !3938)
!3948 = !DILocation(line: 910, column: 69, scope: !3938)
!3949 = !DILocation(line: 912, column: 44, scope: !3938)
!3950 = !DILocation(line: 913, column: 44, scope: !3938)
!3951 = !DILocation(line: 910, column: 9, scope: !3938)
!3952 = !DILocation(line: 914, column: 7, scope: !3938)
!3953 = !DILocation(line: 916, column: 11, scope: !3876)
!3954 = !DILocation(line: 917, column: 5, scope: !3876)
!3955 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !270, file: !270, line: 928, type: !3956, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!40, !60, !51, !43}
!3958 = !{!3959, !3960, !3961}
!3959 = !DILocalVariable(name: "n", arg: 1, scope: !3955, file: !270, line: 928, type: !60)
!3960 = !DILocalVariable(name: "arg", arg: 2, scope: !3955, file: !270, line: 928, type: !51)
!3961 = !DILocalVariable(name: "argsize", arg: 3, scope: !3955, file: !270, line: 928, type: !43)
!3962 = !DILocation(line: 928, column: 21, scope: !3955)
!3963 = !DILocation(line: 928, column: 36, scope: !3955)
!3964 = !DILocation(line: 928, column: 48, scope: !3955)
!3965 = !DILocation(line: 930, column: 10, scope: !3955)
!3966 = !DILocation(line: 930, column: 3, scope: !3955)
!3967 = distinct !DISubprogram(name: "quotearg", scope: !270, file: !270, line: 934, type: !3968, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!40, !51}
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "arg", arg: 1, scope: !3967, file: !270, line: 934, type: !51)
!3972 = !DILocation(line: 934, column: 23, scope: !3967)
!3973 = !DILocation(line: 922, column: 17, scope: !3852, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 936, column: 10, scope: !3967)
!3975 = !DILocation(line: 922, column: 32, scope: !3852, inlinedAt: !3974)
!3976 = !DILocation(line: 924, column: 10, scope: !3852, inlinedAt: !3974)
!3977 = !DILocation(line: 936, column: 3, scope: !3967)
!3978 = distinct !DISubprogram(name: "quotearg_mem", scope: !270, file: !270, line: 940, type: !3979, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!40, !51, !43}
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "arg", arg: 1, scope: !3978, file: !270, line: 940, type: !51)
!3983 = !DILocalVariable(name: "argsize", arg: 2, scope: !3978, file: !270, line: 940, type: !43)
!3984 = !DILocation(line: 940, column: 27, scope: !3978)
!3985 = !DILocation(line: 940, column: 39, scope: !3978)
!3986 = !DILocation(line: 928, column: 21, scope: !3955, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 942, column: 10, scope: !3978)
!3988 = !DILocation(line: 928, column: 36, scope: !3955, inlinedAt: !3987)
!3989 = !DILocation(line: 928, column: 48, scope: !3955, inlinedAt: !3987)
!3990 = !DILocation(line: 930, column: 10, scope: !3955, inlinedAt: !3987)
!3991 = !DILocation(line: 942, column: 3, scope: !3978)
!3992 = distinct !DISubprogram(name: "quotearg_n_style", scope: !270, file: !270, line: 946, type: !3993, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!40, !60, !16, !51}
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DILocalVariable(name: "n", arg: 1, scope: !3992, file: !270, line: 946, type: !60)
!3997 = !DILocalVariable(name: "s", arg: 2, scope: !3992, file: !270, line: 946, type: !16)
!3998 = !DILocalVariable(name: "arg", arg: 3, scope: !3992, file: !270, line: 946, type: !51)
!3999 = !DILocalVariable(name: "o", scope: !3992, file: !270, line: 948, type: !2563)
!4000 = !DILocalVariable(name: "o", scope: !4001, file: !270, line: 187, type: !277)
!4001 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !270, file: !270, line: 185, type: !4002, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!277, !16}
!4004 = !{!4005, !4000}
!4005 = !DILocalVariable(name: "style", arg: 1, scope: !4001, file: !270, line: 185, type: !16)
!4006 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4007 = !DILocation(line: 187, column: 26, scope: !4001, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 948, column: 36, scope: !3992)
!4009 = !DILocation(line: 946, column: 23, scope: !3992)
!4010 = !DILocation(line: 946, column: 45, scope: !3992)
!4011 = !DILocation(line: 946, column: 60, scope: !3992)
!4012 = !DILocation(line: 948, column: 3, scope: !3992)
!4013 = !DILocation(line: 948, column: 32, scope: !3992)
!4014 = !DILocation(line: 185, column: 48, scope: !4001, inlinedAt: !4008)
!4015 = !DILocation(line: 187, column: 3, scope: !4001, inlinedAt: !4008)
!4016 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4017 = !DILocation(line: 188, column: 13, scope: !4018, inlinedAt: !4008)
!4018 = distinct !DILexicalBlock(scope: !4001, file: !270, line: 188, column: 7)
!4019 = !DILocation(line: 188, column: 7, scope: !4001, inlinedAt: !4008)
!4020 = !DILocation(line: 189, column: 5, scope: !4018, inlinedAt: !4008)
!4021 = !{!4022}
!4022 = distinct !{!4022, !4023, !"quoting_options_from_style: argument 0"}
!4023 = distinct !{!4023, !"quoting_options_from_style"}
!4024 = !DILocation(line: 191, column: 10, scope: !4001, inlinedAt: !4008)
!4025 = !DILocation(line: 192, column: 1, scope: !4001, inlinedAt: !4008)
!4026 = !DILocation(line: 949, column: 10, scope: !3992)
!4027 = !DILocation(line: 950, column: 1, scope: !3992)
!4028 = !DILocation(line: 949, column: 3, scope: !3992)
!4029 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !270, file: !270, line: 953, type: !4030, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!40, !60, !16, !51, !43}
!4032 = !{!4033, !4034, !4035, !4036, !4037}
!4033 = !DILocalVariable(name: "n", arg: 1, scope: !4029, file: !270, line: 953, type: !60)
!4034 = !DILocalVariable(name: "s", arg: 2, scope: !4029, file: !270, line: 953, type: !16)
!4035 = !DILocalVariable(name: "arg", arg: 3, scope: !4029, file: !270, line: 954, type: !51)
!4036 = !DILocalVariable(name: "argsize", arg: 4, scope: !4029, file: !270, line: 954, type: !43)
!4037 = !DILocalVariable(name: "o", scope: !4029, file: !270, line: 956, type: !2563)
!4038 = !DILocation(line: 187, column: 26, scope: !4001, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 956, column: 36, scope: !4029)
!4040 = !DILocation(line: 953, column: 27, scope: !4029)
!4041 = !DILocation(line: 953, column: 49, scope: !4029)
!4042 = !DILocation(line: 954, column: 35, scope: !4029)
!4043 = !DILocation(line: 954, column: 47, scope: !4029)
!4044 = !DILocation(line: 956, column: 3, scope: !4029)
!4045 = !DILocation(line: 956, column: 32, scope: !4029)
!4046 = !DILocation(line: 185, column: 48, scope: !4001, inlinedAt: !4039)
!4047 = !DILocation(line: 187, column: 3, scope: !4001, inlinedAt: !4039)
!4048 = !DILocation(line: 188, column: 13, scope: !4018, inlinedAt: !4039)
!4049 = !DILocation(line: 188, column: 7, scope: !4001, inlinedAt: !4039)
!4050 = !DILocation(line: 189, column: 5, scope: !4018, inlinedAt: !4039)
!4051 = !{!4052}
!4052 = distinct !{!4052, !4053, !"quoting_options_from_style: argument 0"}
!4053 = distinct !{!4053, !"quoting_options_from_style"}
!4054 = !DILocation(line: 191, column: 10, scope: !4001, inlinedAt: !4039)
!4055 = !DILocation(line: 192, column: 1, scope: !4001, inlinedAt: !4039)
!4056 = !DILocation(line: 957, column: 10, scope: !4029)
!4057 = !DILocation(line: 958, column: 1, scope: !4029)
!4058 = !DILocation(line: 957, column: 3, scope: !4029)
!4059 = distinct !DISubprogram(name: "quotearg_style", scope: !270, file: !270, line: 961, type: !4060, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!40, !16, !51}
!4062 = !{!4063, !4064}
!4063 = !DILocalVariable(name: "s", arg: 1, scope: !4059, file: !270, line: 961, type: !16)
!4064 = !DILocalVariable(name: "arg", arg: 2, scope: !4059, file: !270, line: 961, type: !51)
!4065 = !DILocation(line: 187, column: 26, scope: !4001, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 948, column: 36, scope: !3992, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 963, column: 10, scope: !4059)
!4068 = !DILocation(line: 961, column: 36, scope: !4059)
!4069 = !DILocation(line: 961, column: 51, scope: !4059)
!4070 = !DILocation(line: 946, column: 23, scope: !3992, inlinedAt: !4067)
!4071 = !DILocation(line: 946, column: 45, scope: !3992, inlinedAt: !4067)
!4072 = !DILocation(line: 946, column: 60, scope: !3992, inlinedAt: !4067)
!4073 = !DILocation(line: 948, column: 3, scope: !3992, inlinedAt: !4067)
!4074 = !DILocation(line: 948, column: 32, scope: !3992, inlinedAt: !4067)
!4075 = !DILocation(line: 185, column: 48, scope: !4001, inlinedAt: !4066)
!4076 = !DILocation(line: 187, column: 3, scope: !4001, inlinedAt: !4066)
!4077 = !DILocation(line: 188, column: 13, scope: !4018, inlinedAt: !4066)
!4078 = !DILocation(line: 188, column: 7, scope: !4001, inlinedAt: !4066)
!4079 = !DILocation(line: 189, column: 5, scope: !4018, inlinedAt: !4066)
!4080 = !{!4081}
!4081 = distinct !{!4081, !4082, !"quoting_options_from_style: argument 0"}
!4082 = distinct !{!4082, !"quoting_options_from_style"}
!4083 = !DILocation(line: 191, column: 10, scope: !4001, inlinedAt: !4066)
!4084 = !DILocation(line: 192, column: 1, scope: !4001, inlinedAt: !4066)
!4085 = !DILocation(line: 949, column: 10, scope: !3992, inlinedAt: !4067)
!4086 = !DILocation(line: 950, column: 1, scope: !3992, inlinedAt: !4067)
!4087 = !DILocation(line: 963, column: 3, scope: !4059)
!4088 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !270, file: !270, line: 967, type: !4089, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!40, !16, !51, !43}
!4091 = !{!4092, !4093, !4094}
!4092 = !DILocalVariable(name: "s", arg: 1, scope: !4088, file: !270, line: 967, type: !16)
!4093 = !DILocalVariable(name: "arg", arg: 2, scope: !4088, file: !270, line: 967, type: !51)
!4094 = !DILocalVariable(name: "argsize", arg: 3, scope: !4088, file: !270, line: 967, type: !43)
!4095 = !DILocation(line: 187, column: 26, scope: !4001, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 956, column: 36, scope: !4029, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 969, column: 10, scope: !4088)
!4098 = !DILocation(line: 967, column: 40, scope: !4088)
!4099 = !DILocation(line: 967, column: 55, scope: !4088)
!4100 = !DILocation(line: 967, column: 67, scope: !4088)
!4101 = !DILocation(line: 953, column: 27, scope: !4029, inlinedAt: !4097)
!4102 = !DILocation(line: 953, column: 49, scope: !4029, inlinedAt: !4097)
!4103 = !DILocation(line: 954, column: 35, scope: !4029, inlinedAt: !4097)
!4104 = !DILocation(line: 954, column: 47, scope: !4029, inlinedAt: !4097)
!4105 = !DILocation(line: 956, column: 3, scope: !4029, inlinedAt: !4097)
!4106 = !DILocation(line: 956, column: 32, scope: !4029, inlinedAt: !4097)
!4107 = !DILocation(line: 185, column: 48, scope: !4001, inlinedAt: !4096)
!4108 = !DILocation(line: 187, column: 3, scope: !4001, inlinedAt: !4096)
!4109 = !DILocation(line: 188, column: 13, scope: !4018, inlinedAt: !4096)
!4110 = !DILocation(line: 188, column: 7, scope: !4001, inlinedAt: !4096)
!4111 = !DILocation(line: 189, column: 5, scope: !4018, inlinedAt: !4096)
!4112 = !{!4113}
!4113 = distinct !{!4113, !4114, !"quoting_options_from_style: argument 0"}
!4114 = distinct !{!4114, !"quoting_options_from_style"}
!4115 = !DILocation(line: 191, column: 10, scope: !4001, inlinedAt: !4096)
!4116 = !DILocation(line: 192, column: 1, scope: !4001, inlinedAt: !4096)
!4117 = !DILocation(line: 957, column: 10, scope: !4029, inlinedAt: !4097)
!4118 = !DILocation(line: 958, column: 1, scope: !4029, inlinedAt: !4097)
!4119 = !DILocation(line: 969, column: 3, scope: !4088)
!4120 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !270, file: !270, line: 973, type: !4121, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!40, !51, !43, !41}
!4123 = !{!4124, !4125, !4126, !4127}
!4124 = !DILocalVariable(name: "arg", arg: 1, scope: !4120, file: !270, line: 973, type: !51)
!4125 = !DILocalVariable(name: "argsize", arg: 2, scope: !4120, file: !270, line: 973, type: !43)
!4126 = !DILocalVariable(name: "ch", arg: 3, scope: !4120, file: !270, line: 973, type: !41)
!4127 = !DILocalVariable(name: "options", scope: !4120, file: !270, line: 975, type: !277)
!4128 = !DILocation(line: 973, column: 32, scope: !4120)
!4129 = !DILocation(line: 973, column: 44, scope: !4120)
!4130 = !DILocation(line: 973, column: 58, scope: !4120)
!4131 = !DILocation(line: 975, column: 3, scope: !4120)
!4132 = !DILocation(line: 976, column: 13, scope: !4120)
!4133 = !{i64 0, i64 4, !815, i64 4, i64 4, !947, i64 8, i64 32, !815, i64 40, i64 8, !738, i64 48, i64 8, !738}
!4134 = !DILocation(line: 975, column: 26, scope: !4120)
!4135 = !DILocation(line: 144, column: 43, scope: !2586, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 977, column: 3, scope: !4120)
!4137 = !DILocation(line: 144, column: 51, scope: !2586, inlinedAt: !4136)
!4138 = !DILocation(line: 144, column: 58, scope: !2586, inlinedAt: !4136)
!4139 = !DILocation(line: 146, column: 17, scope: !2586, inlinedAt: !4136)
!4140 = !DILocation(line: 148, column: 62, scope: !2604, inlinedAt: !4136)
!4141 = !DILocation(line: 148, column: 57, scope: !2604, inlinedAt: !4136)
!4142 = !DILocation(line: 147, column: 17, scope: !2586, inlinedAt: !4136)
!4143 = !DILocation(line: 149, column: 18, scope: !2586, inlinedAt: !4136)
!4144 = !DILocation(line: 149, column: 15, scope: !2586, inlinedAt: !4136)
!4145 = !DILocation(line: 149, column: 7, scope: !2586, inlinedAt: !4136)
!4146 = !DILocation(line: 150, column: 12, scope: !2586, inlinedAt: !4136)
!4147 = !DILocation(line: 150, column: 15, scope: !2586, inlinedAt: !4136)
!4148 = !DILocation(line: 150, column: 25, scope: !2586, inlinedAt: !4136)
!4149 = !DILocation(line: 150, column: 7, scope: !2586, inlinedAt: !4136)
!4150 = !DILocation(line: 151, column: 18, scope: !2586, inlinedAt: !4136)
!4151 = !DILocation(line: 151, column: 23, scope: !2586, inlinedAt: !4136)
!4152 = !DILocation(line: 151, column: 6, scope: !2586, inlinedAt: !4136)
!4153 = !DILocation(line: 978, column: 10, scope: !4120)
!4154 = !DILocation(line: 979, column: 1, scope: !4120)
!4155 = !DILocation(line: 978, column: 3, scope: !4120)
!4156 = distinct !DISubprogram(name: "quotearg_char", scope: !270, file: !270, line: 982, type: !4157, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!40, !51, !41}
!4159 = !{!4160, !4161}
!4160 = !DILocalVariable(name: "arg", arg: 1, scope: !4156, file: !270, line: 982, type: !51)
!4161 = !DILocalVariable(name: "ch", arg: 2, scope: !4156, file: !270, line: 982, type: !41)
!4162 = !DILocation(line: 982, column: 28, scope: !4156)
!4163 = !DILocation(line: 982, column: 38, scope: !4156)
!4164 = !DILocation(line: 973, column: 32, scope: !4120, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 984, column: 10, scope: !4156)
!4166 = !DILocation(line: 973, column: 44, scope: !4120, inlinedAt: !4165)
!4167 = !DILocation(line: 973, column: 58, scope: !4120, inlinedAt: !4165)
!4168 = !DILocation(line: 975, column: 3, scope: !4120, inlinedAt: !4165)
!4169 = !DILocation(line: 976, column: 13, scope: !4120, inlinedAt: !4165)
!4170 = !DILocation(line: 975, column: 26, scope: !4120, inlinedAt: !4165)
!4171 = !DILocation(line: 144, column: 43, scope: !2586, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 977, column: 3, scope: !4120, inlinedAt: !4165)
!4173 = !DILocation(line: 144, column: 51, scope: !2586, inlinedAt: !4172)
!4174 = !DILocation(line: 144, column: 58, scope: !2586, inlinedAt: !4172)
!4175 = !DILocation(line: 146, column: 17, scope: !2586, inlinedAt: !4172)
!4176 = !DILocation(line: 148, column: 62, scope: !2604, inlinedAt: !4172)
!4177 = !DILocation(line: 148, column: 57, scope: !2604, inlinedAt: !4172)
!4178 = !DILocation(line: 147, column: 17, scope: !2586, inlinedAt: !4172)
!4179 = !DILocation(line: 149, column: 18, scope: !2586, inlinedAt: !4172)
!4180 = !DILocation(line: 149, column: 15, scope: !2586, inlinedAt: !4172)
!4181 = !DILocation(line: 149, column: 7, scope: !2586, inlinedAt: !4172)
!4182 = !DILocation(line: 150, column: 12, scope: !2586, inlinedAt: !4172)
!4183 = !DILocation(line: 150, column: 15, scope: !2586, inlinedAt: !4172)
!4184 = !DILocation(line: 150, column: 25, scope: !2586, inlinedAt: !4172)
!4185 = !DILocation(line: 150, column: 7, scope: !2586, inlinedAt: !4172)
!4186 = !DILocation(line: 151, column: 18, scope: !2586, inlinedAt: !4172)
!4187 = !DILocation(line: 151, column: 23, scope: !2586, inlinedAt: !4172)
!4188 = !DILocation(line: 151, column: 6, scope: !2586, inlinedAt: !4172)
!4189 = !DILocation(line: 978, column: 10, scope: !4120, inlinedAt: !4165)
!4190 = !DILocation(line: 979, column: 1, scope: !4120, inlinedAt: !4165)
!4191 = !DILocation(line: 984, column: 3, scope: !4156)
!4192 = distinct !DISubprogram(name: "quotearg_colon", scope: !270, file: !270, line: 988, type: !3968, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4193)
!4193 = !{!4194}
!4194 = !DILocalVariable(name: "arg", arg: 1, scope: !4192, file: !270, line: 988, type: !51)
!4195 = !DILocation(line: 988, column: 29, scope: !4192)
!4196 = !DILocation(line: 982, column: 28, scope: !4156, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 990, column: 10, scope: !4192)
!4198 = !DILocation(line: 982, column: 38, scope: !4156, inlinedAt: !4197)
!4199 = !DILocation(line: 973, column: 32, scope: !4120, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 984, column: 10, scope: !4156, inlinedAt: !4197)
!4201 = !DILocation(line: 973, column: 44, scope: !4120, inlinedAt: !4200)
!4202 = !DILocation(line: 973, column: 58, scope: !4120, inlinedAt: !4200)
!4203 = !DILocation(line: 975, column: 3, scope: !4120, inlinedAt: !4200)
!4204 = !DILocation(line: 976, column: 13, scope: !4120, inlinedAt: !4200)
!4205 = !DILocation(line: 975, column: 26, scope: !4120, inlinedAt: !4200)
!4206 = !DILocation(line: 144, column: 43, scope: !2586, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 977, column: 3, scope: !4120, inlinedAt: !4200)
!4208 = !DILocation(line: 144, column: 51, scope: !2586, inlinedAt: !4207)
!4209 = !DILocation(line: 144, column: 58, scope: !2586, inlinedAt: !4207)
!4210 = !DILocation(line: 146, column: 17, scope: !2586, inlinedAt: !4207)
!4211 = !DILocation(line: 148, column: 57, scope: !2604, inlinedAt: !4207)
!4212 = !DILocation(line: 147, column: 17, scope: !2586, inlinedAt: !4207)
!4213 = !DILocation(line: 149, column: 7, scope: !2586, inlinedAt: !4207)
!4214 = !DILocation(line: 150, column: 12, scope: !2586, inlinedAt: !4207)
!4215 = !DILocation(line: 151, column: 6, scope: !2586, inlinedAt: !4207)
!4216 = !DILocation(line: 978, column: 10, scope: !4120, inlinedAt: !4200)
!4217 = !DILocation(line: 979, column: 1, scope: !4120, inlinedAt: !4200)
!4218 = !DILocation(line: 990, column: 3, scope: !4192)
!4219 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !270, file: !270, line: 994, type: !3979, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4220)
!4220 = !{!4221, !4222}
!4221 = !DILocalVariable(name: "arg", arg: 1, scope: !4219, file: !270, line: 994, type: !51)
!4222 = !DILocalVariable(name: "argsize", arg: 2, scope: !4219, file: !270, line: 994, type: !43)
!4223 = !DILocation(line: 994, column: 33, scope: !4219)
!4224 = !DILocation(line: 994, column: 45, scope: !4219)
!4225 = !DILocation(line: 973, column: 32, scope: !4120, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 996, column: 10, scope: !4219)
!4227 = !DILocation(line: 973, column: 44, scope: !4120, inlinedAt: !4226)
!4228 = !DILocation(line: 973, column: 58, scope: !4120, inlinedAt: !4226)
!4229 = !DILocation(line: 975, column: 3, scope: !4120, inlinedAt: !4226)
!4230 = !DILocation(line: 976, column: 13, scope: !4120, inlinedAt: !4226)
!4231 = !DILocation(line: 975, column: 26, scope: !4120, inlinedAt: !4226)
!4232 = !DILocation(line: 144, column: 43, scope: !2586, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 977, column: 3, scope: !4120, inlinedAt: !4226)
!4234 = !DILocation(line: 144, column: 51, scope: !2586, inlinedAt: !4233)
!4235 = !DILocation(line: 144, column: 58, scope: !2586, inlinedAt: !4233)
!4236 = !DILocation(line: 146, column: 17, scope: !2586, inlinedAt: !4233)
!4237 = !DILocation(line: 148, column: 57, scope: !2604, inlinedAt: !4233)
!4238 = !DILocation(line: 147, column: 17, scope: !2586, inlinedAt: !4233)
!4239 = !DILocation(line: 149, column: 7, scope: !2586, inlinedAt: !4233)
!4240 = !DILocation(line: 150, column: 12, scope: !2586, inlinedAt: !4233)
!4241 = !DILocation(line: 151, column: 6, scope: !2586, inlinedAt: !4233)
!4242 = !DILocation(line: 978, column: 10, scope: !4120, inlinedAt: !4226)
!4243 = !DILocation(line: 979, column: 1, scope: !4120, inlinedAt: !4226)
!4244 = !DILocation(line: 996, column: 3, scope: !4219)
!4245 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !270, file: !270, line: 1000, type: !3993, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4246)
!4246 = !{!4247, !4248, !4249, !4250}
!4247 = !DILocalVariable(name: "n", arg: 1, scope: !4245, file: !270, line: 1000, type: !60)
!4248 = !DILocalVariable(name: "s", arg: 2, scope: !4245, file: !270, line: 1000, type: !16)
!4249 = !DILocalVariable(name: "arg", arg: 3, scope: !4245, file: !270, line: 1000, type: !51)
!4250 = !DILocalVariable(name: "options", scope: !4245, file: !270, line: 1002, type: !277)
!4251 = !DILocation(line: 187, column: 26, scope: !4001, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 1003, column: 13, scope: !4245)
!4253 = !DILocation(line: 1000, column: 29, scope: !4245)
!4254 = !DILocation(line: 1000, column: 51, scope: !4245)
!4255 = !DILocation(line: 1000, column: 66, scope: !4245)
!4256 = !DILocation(line: 1002, column: 3, scope: !4245)
!4257 = !DILocation(line: 185, column: 48, scope: !4001, inlinedAt: !4252)
!4258 = !DILocation(line: 187, column: 3, scope: !4001, inlinedAt: !4252)
!4259 = !DILocation(line: 188, column: 13, scope: !4018, inlinedAt: !4252)
!4260 = !DILocation(line: 188, column: 7, scope: !4001, inlinedAt: !4252)
!4261 = !DILocation(line: 189, column: 5, scope: !4018, inlinedAt: !4252)
!4262 = !{!4263}
!4263 = distinct !{!4263, !4264, !"quoting_options_from_style: argument 0"}
!4264 = distinct !{!4264, !"quoting_options_from_style"}
!4265 = !DILocation(line: 191, column: 10, scope: !4001, inlinedAt: !4252)
!4266 = !DILocation(line: 192, column: 1, scope: !4001, inlinedAt: !4252)
!4267 = !DILocation(line: 1003, column: 13, scope: !4245)
!4268 = !DILocation(line: 1002, column: 26, scope: !4245)
!4269 = !DILocation(line: 144, column: 43, scope: !2586, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 1004, column: 3, scope: !4245)
!4271 = !DILocation(line: 144, column: 51, scope: !2586, inlinedAt: !4270)
!4272 = !DILocation(line: 144, column: 58, scope: !2586, inlinedAt: !4270)
!4273 = !DILocation(line: 146, column: 17, scope: !2586, inlinedAt: !4270)
!4274 = !DILocation(line: 148, column: 57, scope: !2604, inlinedAt: !4270)
!4275 = !DILocation(line: 147, column: 17, scope: !2586, inlinedAt: !4270)
!4276 = !DILocation(line: 149, column: 7, scope: !2586, inlinedAt: !4270)
!4277 = !DILocation(line: 150, column: 12, scope: !2586, inlinedAt: !4270)
!4278 = !DILocation(line: 151, column: 6, scope: !2586, inlinedAt: !4270)
!4279 = !DILocation(line: 1005, column: 10, scope: !4245)
!4280 = !DILocation(line: 1006, column: 1, scope: !4245)
!4281 = !DILocation(line: 1005, column: 3, scope: !4245)
!4282 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !270, file: !270, line: 1009, type: !4283, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!40, !60, !51, !51, !51}
!4285 = !{!4286, !4287, !4288, !4289}
!4286 = !DILocalVariable(name: "n", arg: 1, scope: !4282, file: !270, line: 1009, type: !60)
!4287 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4282, file: !270, line: 1009, type: !51)
!4288 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4282, file: !270, line: 1010, type: !51)
!4289 = !DILocalVariable(name: "arg", arg: 4, scope: !4282, file: !270, line: 1010, type: !51)
!4290 = !DILocation(line: 1009, column: 24, scope: !4282)
!4291 = !DILocation(line: 1009, column: 39, scope: !4282)
!4292 = !DILocation(line: 1010, column: 32, scope: !4282)
!4293 = !DILocation(line: 1010, column: 57, scope: !4282)
!4294 = !DILocalVariable(name: "n", arg: 1, scope: !4295, file: !270, line: 1017, type: !60)
!4295 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !270, file: !270, line: 1017, type: !4296, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!40, !60, !51, !51, !51, !43}
!4298 = !{!4294, !4299, !4300, !4301, !4302, !4303}
!4299 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4295, file: !270, line: 1017, type: !51)
!4300 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4295, file: !270, line: 1018, type: !51)
!4301 = !DILocalVariable(name: "arg", arg: 4, scope: !4295, file: !270, line: 1019, type: !51)
!4302 = !DILocalVariable(name: "argsize", arg: 5, scope: !4295, file: !270, line: 1019, type: !43)
!4303 = !DILocalVariable(name: "o", scope: !4295, file: !270, line: 1021, type: !277)
!4304 = !DILocation(line: 1017, column: 28, scope: !4295, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 1012, column: 10, scope: !4282)
!4306 = !DILocation(line: 1017, column: 43, scope: !4295, inlinedAt: !4305)
!4307 = !DILocation(line: 1018, column: 36, scope: !4295, inlinedAt: !4305)
!4308 = !DILocation(line: 1019, column: 36, scope: !4295, inlinedAt: !4305)
!4309 = !DILocation(line: 1019, column: 48, scope: !4295, inlinedAt: !4305)
!4310 = !DILocation(line: 1021, column: 3, scope: !4295, inlinedAt: !4305)
!4311 = !DILocation(line: 1021, column: 30, scope: !4295, inlinedAt: !4305)
!4312 = !DILocation(line: 1021, column: 26, scope: !4295, inlinedAt: !4305)
!4313 = !DILocation(line: 171, column: 45, scope: !2636, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 1022, column: 3, scope: !4295, inlinedAt: !4305)
!4315 = !DILocation(line: 172, column: 33, scope: !2636, inlinedAt: !4314)
!4316 = !DILocation(line: 172, column: 57, scope: !2636, inlinedAt: !4314)
!4317 = !DILocation(line: 176, column: 6, scope: !2636, inlinedAt: !4314)
!4318 = !DILocation(line: 176, column: 12, scope: !2636, inlinedAt: !4314)
!4319 = !DILocation(line: 177, column: 8, scope: !2652, inlinedAt: !4314)
!4320 = !DILocation(line: 177, column: 23, scope: !2654, inlinedAt: !4314)
!4321 = !DILocation(line: 177, column: 19, scope: !2652, inlinedAt: !4314)
!4322 = !DILocation(line: 178, column: 5, scope: !2652, inlinedAt: !4314)
!4323 = !DILocation(line: 179, column: 6, scope: !2636, inlinedAt: !4314)
!4324 = !DILocation(line: 179, column: 17, scope: !2636, inlinedAt: !4314)
!4325 = !DILocation(line: 180, column: 6, scope: !2636, inlinedAt: !4314)
!4326 = !DILocation(line: 180, column: 18, scope: !2636, inlinedAt: !4314)
!4327 = !DILocation(line: 1023, column: 10, scope: !4295, inlinedAt: !4305)
!4328 = !DILocation(line: 1024, column: 1, scope: !4295, inlinedAt: !4305)
!4329 = !DILocation(line: 1012, column: 3, scope: !4282)
!4330 = !DILocation(line: 1017, column: 28, scope: !4295)
!4331 = !DILocation(line: 1017, column: 43, scope: !4295)
!4332 = !DILocation(line: 1018, column: 36, scope: !4295)
!4333 = !DILocation(line: 1019, column: 36, scope: !4295)
!4334 = !DILocation(line: 1019, column: 48, scope: !4295)
!4335 = !DILocation(line: 1021, column: 3, scope: !4295)
!4336 = !DILocation(line: 1021, column: 30, scope: !4295)
!4337 = !DILocation(line: 1021, column: 26, scope: !4295)
!4338 = !DILocation(line: 171, column: 45, scope: !2636, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 1022, column: 3, scope: !4295)
!4340 = !DILocation(line: 172, column: 33, scope: !2636, inlinedAt: !4339)
!4341 = !DILocation(line: 172, column: 57, scope: !2636, inlinedAt: !4339)
!4342 = !DILocation(line: 176, column: 6, scope: !2636, inlinedAt: !4339)
!4343 = !DILocation(line: 176, column: 12, scope: !2636, inlinedAt: !4339)
!4344 = !DILocation(line: 177, column: 8, scope: !2652, inlinedAt: !4339)
!4345 = !DILocation(line: 177, column: 23, scope: !2654, inlinedAt: !4339)
!4346 = !DILocation(line: 177, column: 19, scope: !2652, inlinedAt: !4339)
!4347 = !DILocation(line: 178, column: 5, scope: !2652, inlinedAt: !4339)
!4348 = !DILocation(line: 179, column: 6, scope: !2636, inlinedAt: !4339)
!4349 = !DILocation(line: 179, column: 17, scope: !2636, inlinedAt: !4339)
!4350 = !DILocation(line: 180, column: 6, scope: !2636, inlinedAt: !4339)
!4351 = !DILocation(line: 180, column: 18, scope: !2636, inlinedAt: !4339)
!4352 = !DILocation(line: 1023, column: 10, scope: !4295)
!4353 = !DILocation(line: 1024, column: 1, scope: !4295)
!4354 = !DILocation(line: 1023, column: 3, scope: !4295)
!4355 = distinct !DISubprogram(name: "quotearg_custom", scope: !270, file: !270, line: 1027, type: !4356, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!40, !51, !51, !51}
!4358 = !{!4359, !4360, !4361}
!4359 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4355, file: !270, line: 1027, type: !51)
!4360 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4355, file: !270, line: 1027, type: !51)
!4361 = !DILocalVariable(name: "arg", arg: 3, scope: !4355, file: !270, line: 1028, type: !51)
!4362 = !DILocation(line: 1027, column: 30, scope: !4355)
!4363 = !DILocation(line: 1027, column: 54, scope: !4355)
!4364 = !DILocation(line: 1028, column: 30, scope: !4355)
!4365 = !DILocation(line: 1009, column: 24, scope: !4282, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 1030, column: 10, scope: !4355)
!4367 = !DILocation(line: 1009, column: 39, scope: !4282, inlinedAt: !4366)
!4368 = !DILocation(line: 1010, column: 32, scope: !4282, inlinedAt: !4366)
!4369 = !DILocation(line: 1010, column: 57, scope: !4282, inlinedAt: !4366)
!4370 = !DILocation(line: 1017, column: 28, scope: !4295, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 1012, column: 10, scope: !4282, inlinedAt: !4366)
!4372 = !DILocation(line: 1017, column: 43, scope: !4295, inlinedAt: !4371)
!4373 = !DILocation(line: 1018, column: 36, scope: !4295, inlinedAt: !4371)
!4374 = !DILocation(line: 1019, column: 36, scope: !4295, inlinedAt: !4371)
!4375 = !DILocation(line: 1019, column: 48, scope: !4295, inlinedAt: !4371)
!4376 = !DILocation(line: 1021, column: 3, scope: !4295, inlinedAt: !4371)
!4377 = !DILocation(line: 1021, column: 30, scope: !4295, inlinedAt: !4371)
!4378 = !DILocation(line: 1021, column: 26, scope: !4295, inlinedAt: !4371)
!4379 = !DILocation(line: 171, column: 45, scope: !2636, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 1022, column: 3, scope: !4295, inlinedAt: !4371)
!4381 = !DILocation(line: 172, column: 33, scope: !2636, inlinedAt: !4380)
!4382 = !DILocation(line: 172, column: 57, scope: !2636, inlinedAt: !4380)
!4383 = !DILocation(line: 176, column: 6, scope: !2636, inlinedAt: !4380)
!4384 = !DILocation(line: 176, column: 12, scope: !2636, inlinedAt: !4380)
!4385 = !DILocation(line: 177, column: 8, scope: !2652, inlinedAt: !4380)
!4386 = !DILocation(line: 177, column: 23, scope: !2654, inlinedAt: !4380)
!4387 = !DILocation(line: 177, column: 19, scope: !2652, inlinedAt: !4380)
!4388 = !DILocation(line: 178, column: 5, scope: !2652, inlinedAt: !4380)
!4389 = !DILocation(line: 179, column: 6, scope: !2636, inlinedAt: !4380)
!4390 = !DILocation(line: 179, column: 17, scope: !2636, inlinedAt: !4380)
!4391 = !DILocation(line: 180, column: 6, scope: !2636, inlinedAt: !4380)
!4392 = !DILocation(line: 180, column: 18, scope: !2636, inlinedAt: !4380)
!4393 = !DILocation(line: 1023, column: 10, scope: !4295, inlinedAt: !4371)
!4394 = !DILocation(line: 1024, column: 1, scope: !4295, inlinedAt: !4371)
!4395 = !DILocation(line: 1030, column: 3, scope: !4355)
!4396 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !270, file: !270, line: 1034, type: !4397, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4399)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!40, !51, !51, !51, !43}
!4399 = !{!4400, !4401, !4402, !4403}
!4400 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4396, file: !270, line: 1034, type: !51)
!4401 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4396, file: !270, line: 1034, type: !51)
!4402 = !DILocalVariable(name: "arg", arg: 3, scope: !4396, file: !270, line: 1035, type: !51)
!4403 = !DILocalVariable(name: "argsize", arg: 4, scope: !4396, file: !270, line: 1035, type: !43)
!4404 = !DILocation(line: 1034, column: 34, scope: !4396)
!4405 = !DILocation(line: 1034, column: 58, scope: !4396)
!4406 = !DILocation(line: 1035, column: 34, scope: !4396)
!4407 = !DILocation(line: 1035, column: 46, scope: !4396)
!4408 = !DILocation(line: 1017, column: 28, scope: !4295, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 1037, column: 10, scope: !4396)
!4410 = !DILocation(line: 1017, column: 43, scope: !4295, inlinedAt: !4409)
!4411 = !DILocation(line: 1018, column: 36, scope: !4295, inlinedAt: !4409)
!4412 = !DILocation(line: 1019, column: 36, scope: !4295, inlinedAt: !4409)
!4413 = !DILocation(line: 1019, column: 48, scope: !4295, inlinedAt: !4409)
!4414 = !DILocation(line: 1021, column: 3, scope: !4295, inlinedAt: !4409)
!4415 = !DILocation(line: 1021, column: 30, scope: !4295, inlinedAt: !4409)
!4416 = !DILocation(line: 1021, column: 26, scope: !4295, inlinedAt: !4409)
!4417 = !DILocation(line: 171, column: 45, scope: !2636, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 1022, column: 3, scope: !4295, inlinedAt: !4409)
!4419 = !DILocation(line: 172, column: 33, scope: !2636, inlinedAt: !4418)
!4420 = !DILocation(line: 172, column: 57, scope: !2636, inlinedAt: !4418)
!4421 = !DILocation(line: 176, column: 6, scope: !2636, inlinedAt: !4418)
!4422 = !DILocation(line: 176, column: 12, scope: !2636, inlinedAt: !4418)
!4423 = !DILocation(line: 177, column: 8, scope: !2652, inlinedAt: !4418)
!4424 = !DILocation(line: 177, column: 23, scope: !2654, inlinedAt: !4418)
!4425 = !DILocation(line: 177, column: 19, scope: !2652, inlinedAt: !4418)
!4426 = !DILocation(line: 178, column: 5, scope: !2652, inlinedAt: !4418)
!4427 = !DILocation(line: 179, column: 6, scope: !2636, inlinedAt: !4418)
!4428 = !DILocation(line: 179, column: 17, scope: !2636, inlinedAt: !4418)
!4429 = !DILocation(line: 180, column: 6, scope: !2636, inlinedAt: !4418)
!4430 = !DILocation(line: 180, column: 18, scope: !2636, inlinedAt: !4418)
!4431 = !DILocation(line: 1023, column: 10, scope: !4295, inlinedAt: !4409)
!4432 = !DILocation(line: 1024, column: 1, scope: !4295, inlinedAt: !4409)
!4433 = !DILocation(line: 1037, column: 3, scope: !4396)
!4434 = distinct !DISubprogram(name: "quote_n_mem", scope: !270, file: !270, line: 1052, type: !4435, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4437)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!51, !60, !51, !43}
!4437 = !{!4438, !4439, !4440}
!4438 = !DILocalVariable(name: "n", arg: 1, scope: !4434, file: !270, line: 1052, type: !60)
!4439 = !DILocalVariable(name: "arg", arg: 2, scope: !4434, file: !270, line: 1052, type: !51)
!4440 = !DILocalVariable(name: "argsize", arg: 3, scope: !4434, file: !270, line: 1052, type: !43)
!4441 = !DILocation(line: 1052, column: 18, scope: !4434)
!4442 = !DILocation(line: 1052, column: 33, scope: !4434)
!4443 = !DILocation(line: 1052, column: 45, scope: !4434)
!4444 = !DILocation(line: 1054, column: 10, scope: !4434)
!4445 = !DILocation(line: 1054, column: 3, scope: !4434)
!4446 = distinct !DISubprogram(name: "quote_mem", scope: !270, file: !270, line: 1058, type: !4447, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!51, !51, !43}
!4449 = !{!4450, !4451}
!4450 = !DILocalVariable(name: "arg", arg: 1, scope: !4446, file: !270, line: 1058, type: !51)
!4451 = !DILocalVariable(name: "argsize", arg: 2, scope: !4446, file: !270, line: 1058, type: !43)
!4452 = !DILocation(line: 1058, column: 24, scope: !4446)
!4453 = !DILocation(line: 1058, column: 36, scope: !4446)
!4454 = !DILocation(line: 1052, column: 18, scope: !4434, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 1060, column: 10, scope: !4446)
!4456 = !DILocation(line: 1052, column: 33, scope: !4434, inlinedAt: !4455)
!4457 = !DILocation(line: 1052, column: 45, scope: !4434, inlinedAt: !4455)
!4458 = !DILocation(line: 1054, column: 10, scope: !4434, inlinedAt: !4455)
!4459 = !DILocation(line: 1060, column: 3, scope: !4446)
!4460 = distinct !DISubprogram(name: "quote_n", scope: !270, file: !270, line: 1064, type: !4461, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4463)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!51, !60, !51}
!4463 = !{!4464, !4465}
!4464 = !DILocalVariable(name: "n", arg: 1, scope: !4460, file: !270, line: 1064, type: !60)
!4465 = !DILocalVariable(name: "arg", arg: 2, scope: !4460, file: !270, line: 1064, type: !51)
!4466 = !DILocation(line: 1064, column: 14, scope: !4460)
!4467 = !DILocation(line: 1064, column: 29, scope: !4460)
!4468 = !DILocation(line: 1052, column: 18, scope: !4434, inlinedAt: !4469)
!4469 = distinct !DILocation(line: 1066, column: 10, scope: !4460)
!4470 = !DILocation(line: 1052, column: 33, scope: !4434, inlinedAt: !4469)
!4471 = !DILocation(line: 1052, column: 45, scope: !4434, inlinedAt: !4469)
!4472 = !DILocation(line: 1054, column: 10, scope: !4434, inlinedAt: !4469)
!4473 = !DILocation(line: 1066, column: 3, scope: !4460)
!4474 = distinct !DISubprogram(name: "quote", scope: !270, file: !270, line: 1070, type: !4475, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4477)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!51, !51}
!4477 = !{!4478}
!4478 = !DILocalVariable(name: "arg", arg: 1, scope: !4474, file: !270, line: 1070, type: !51)
!4479 = !DILocation(line: 1070, column: 20, scope: !4474)
!4480 = !DILocation(line: 1064, column: 14, scope: !4460, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 1072, column: 10, scope: !4474)
!4482 = !DILocation(line: 1064, column: 29, scope: !4460, inlinedAt: !4481)
!4483 = !DILocation(line: 1052, column: 18, scope: !4434, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 1066, column: 10, scope: !4460, inlinedAt: !4481)
!4485 = !DILocation(line: 1052, column: 33, scope: !4434, inlinedAt: !4484)
!4486 = !DILocation(line: 1052, column: 45, scope: !4434, inlinedAt: !4484)
!4487 = !DILocation(line: 1054, column: 10, scope: !4434, inlinedAt: !4484)
!4488 = !DILocation(line: 1072, column: 3, scope: !4474)
!4489 = distinct !DISubprogram(name: "version_etc_arn", scope: !678, file: !678, line: 62, type: !4490, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !4533)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !4492, !51, !51, !51, !4532, !43}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !4494)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !4495)
!4495 = !{!4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4494, file: !993, line: 242, baseType: !60, size: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4494, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4494, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4494, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4494, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4494, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4494, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4494, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4494, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4494, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4494, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4494, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4494, file: !993, line: 260, baseType: !4509, size: 64, offset: 768)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !4511)
!4511 = !{!4512, !4513, !4515}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4510, file: !993, line: 157, baseType: !4509, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4510, file: !993, line: 158, baseType: !4514, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4510, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4494, file: !993, line: 262, baseType: !4514, size: 64, offset: 832)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4494, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4494, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4494, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4494, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4494, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4494, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4494, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4494, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4494, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4494, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4494, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4494, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4494, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4494, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4494, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539}
!4534 = !DILocalVariable(name: "stream", arg: 1, scope: !4489, file: !678, line: 62, type: !4492)
!4535 = !DILocalVariable(name: "command_name", arg: 2, scope: !4489, file: !678, line: 63, type: !51)
!4536 = !DILocalVariable(name: "package", arg: 3, scope: !4489, file: !678, line: 63, type: !51)
!4537 = !DILocalVariable(name: "version", arg: 4, scope: !4489, file: !678, line: 64, type: !51)
!4538 = !DILocalVariable(name: "authors", arg: 5, scope: !4489, file: !678, line: 65, type: !4532)
!4539 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4489, file: !678, line: 65, type: !43)
!4540 = !DILocation(line: 62, column: 24, scope: !4489)
!4541 = !DILocation(line: 63, column: 30, scope: !4489)
!4542 = !DILocation(line: 63, column: 56, scope: !4489)
!4543 = !DILocation(line: 64, column: 30, scope: !4489)
!4544 = !DILocation(line: 65, column: 39, scope: !4489)
!4545 = !DILocation(line: 65, column: 55, scope: !4489)
!4546 = !DILocation(line: 67, column: 7, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4489, file: !678, line: 67, column: 7)
!4548 = !DILocation(line: 67, column: 7, scope: !4489)
!4549 = !DILocation(line: 68, column: 5, scope: !4547)
!4550 = !DILocation(line: 70, column: 5, scope: !4547)
!4551 = !DILocation(line: 84, column: 3, scope: !4489)
!4552 = !DILocation(line: 84, column: 3, scope: !4553)
!4553 = !DILexicalBlockFile(scope: !4489, file: !678, discriminator: 1)
!4554 = !DILocation(line: 86, column: 3, scope: !4489)
!4555 = !DILocation(line: 86, column: 3, scope: !4553)
!4556 = !DILocation(line: 95, column: 3, scope: !4489)
!4557 = !DILocation(line: 99, column: 7, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4489, file: !678, line: 96, column: 5)
!4559 = !DILocation(line: 102, column: 7, scope: !4558)
!4560 = !DILocation(line: 102, column: 7, scope: !4561)
!4561 = !DILexicalBlockFile(scope: !4558, file: !678, discriminator: 1)
!4562 = !DILocation(line: 103, column: 7, scope: !4558)
!4563 = !DILocation(line: 106, column: 7, scope: !4558)
!4564 = !DILocation(line: 106, column: 7, scope: !4561)
!4565 = !DILocation(line: 107, column: 7, scope: !4558)
!4566 = !DILocation(line: 110, column: 7, scope: !4558)
!4567 = !DILocation(line: 110, column: 7, scope: !4561)
!4568 = !DILocation(line: 112, column: 7, scope: !4558)
!4569 = !DILocation(line: 117, column: 7, scope: !4558)
!4570 = !DILocation(line: 117, column: 7, scope: !4561)
!4571 = !DILocation(line: 119, column: 7, scope: !4558)
!4572 = !DILocation(line: 124, column: 7, scope: !4558)
!4573 = !DILocation(line: 124, column: 7, scope: !4561)
!4574 = !DILocation(line: 126, column: 7, scope: !4558)
!4575 = !DILocation(line: 131, column: 7, scope: !4558)
!4576 = !DILocation(line: 131, column: 7, scope: !4561)
!4577 = !DILocation(line: 134, column: 7, scope: !4558)
!4578 = !DILocation(line: 139, column: 7, scope: !4558)
!4579 = !DILocation(line: 139, column: 7, scope: !4561)
!4580 = !DILocation(line: 142, column: 7, scope: !4558)
!4581 = !DILocation(line: 147, column: 7, scope: !4558)
!4582 = !DILocation(line: 147, column: 7, scope: !4561)
!4583 = !DILocation(line: 151, column: 7, scope: !4558)
!4584 = !DILocation(line: 156, column: 7, scope: !4558)
!4585 = !DILocation(line: 156, column: 7, scope: !4561)
!4586 = !DILocation(line: 160, column: 7, scope: !4558)
!4587 = !DILocation(line: 167, column: 7, scope: !4558)
!4588 = !DILocation(line: 167, column: 7, scope: !4561)
!4589 = !DILocation(line: 171, column: 7, scope: !4558)
!4590 = !DILocation(line: 173, column: 1, scope: !4489)
!4591 = distinct !DISubprogram(name: "version_etc_ar", scope: !678, file: !678, line: 180, type: !4592, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !4594)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{null, !4492, !51, !51, !51, !4532}
!4594 = !{!4595, !4596, !4597, !4598, !4599, !4600}
!4595 = !DILocalVariable(name: "stream", arg: 1, scope: !4591, file: !678, line: 180, type: !4492)
!4596 = !DILocalVariable(name: "command_name", arg: 2, scope: !4591, file: !678, line: 181, type: !51)
!4597 = !DILocalVariable(name: "package", arg: 3, scope: !4591, file: !678, line: 181, type: !51)
!4598 = !DILocalVariable(name: "version", arg: 4, scope: !4591, file: !678, line: 182, type: !51)
!4599 = !DILocalVariable(name: "authors", arg: 5, scope: !4591, file: !678, line: 182, type: !4532)
!4600 = !DILocalVariable(name: "n_authors", scope: !4591, file: !678, line: 184, type: !43)
!4601 = !DILocation(line: 180, column: 23, scope: !4591)
!4602 = !DILocation(line: 181, column: 29, scope: !4591)
!4603 = !DILocation(line: 181, column: 55, scope: !4591)
!4604 = !DILocation(line: 182, column: 29, scope: !4591)
!4605 = !DILocation(line: 182, column: 59, scope: !4591)
!4606 = !DILocation(line: 184, column: 10, scope: !4591)
!4607 = !DILocation(line: 186, column: 8, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4591, file: !678, line: 186, column: 3)
!4609 = !DILocation(line: 186, column: 23, scope: !4610)
!4610 = !DILexicalBlockFile(scope: !4611, file: !678, discriminator: 1)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !678, line: 186, column: 3)
!4612 = !DILocation(line: 186, column: 3, scope: !4613)
!4613 = !DILexicalBlockFile(scope: !4608, file: !678, discriminator: 1)
!4614 = !DILocation(line: 186, column: 52, scope: !4615)
!4615 = !DILexicalBlockFile(scope: !4611, file: !678, discriminator: 3)
!4616 = distinct !{!4616, !4617, !4618}
!4617 = !DILocation(line: 186, column: 3, scope: !4608)
!4618 = !DILocation(line: 187, column: 5, scope: !4608)
!4619 = !DILocation(line: 188, column: 3, scope: !4591)
!4620 = !DILocation(line: 189, column: 1, scope: !4591)
!4621 = distinct !DISubprogram(name: "version_etc_va", scope: !678, file: !678, line: 196, type: !4622, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !4631)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{null, !4492, !51, !51, !51, !4624}
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !675, line: 189, size: 192, elements: !4626)
!4626 = !{!4627, !4628, !4629, !4630}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4625, file: !675, line: 189, baseType: !179, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4625, file: !675, line: 189, baseType: !179, size: 32, offset: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4625, file: !675, line: 189, baseType: !42, size: 64, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4625, file: !675, line: 189, baseType: !42, size: 64, offset: 128)
!4631 = !{!4632, !4633, !4634, !4635, !4636, !4637, !4638}
!4632 = !DILocalVariable(name: "stream", arg: 1, scope: !4621, file: !678, line: 196, type: !4492)
!4633 = !DILocalVariable(name: "command_name", arg: 2, scope: !4621, file: !678, line: 197, type: !51)
!4634 = !DILocalVariable(name: "package", arg: 3, scope: !4621, file: !678, line: 197, type: !51)
!4635 = !DILocalVariable(name: "version", arg: 4, scope: !4621, file: !678, line: 198, type: !51)
!4636 = !DILocalVariable(name: "authors", arg: 5, scope: !4621, file: !678, line: 198, type: !4624)
!4637 = !DILocalVariable(name: "n_authors", scope: !4621, file: !678, line: 200, type: !43)
!4638 = !DILocalVariable(name: "authtab", scope: !4621, file: !678, line: 201, type: !4639)
!4639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !273)
!4640 = !DILocation(line: 196, column: 23, scope: !4621)
!4641 = !DILocation(line: 197, column: 29, scope: !4621)
!4642 = !DILocation(line: 197, column: 55, scope: !4621)
!4643 = !DILocation(line: 198, column: 29, scope: !4621)
!4644 = !DILocation(line: 198, column: 46, scope: !4621)
!4645 = !DILocation(line: 201, column: 3, scope: !4621)
!4646 = !DILocation(line: 201, column: 15, scope: !4621)
!4647 = !DILocation(line: 200, column: 10, scope: !4621)
!4648 = !DILocation(line: 205, column: 35, scope: !4649)
!4649 = !DILexicalBlockFile(scope: !4650, file: !678, discriminator: 1)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !678, line: 203, column: 3)
!4651 = distinct !DILexicalBlock(scope: !4621, file: !678, line: 203, column: 3)
!4652 = !DILocation(line: 205, column: 35, scope: !4653)
!4653 = !DILexicalBlockFile(scope: !4650, file: !678, discriminator: 2)
!4654 = !DILocation(line: 205, column: 35, scope: !4655)
!4655 = !DILexicalBlockFile(scope: !4650, file: !678, discriminator: 3)
!4656 = !DILocation(line: 205, column: 35, scope: !4657)
!4657 = !DILexicalBlockFile(scope: !4650, file: !678, discriminator: 4)
!4658 = !DILocation(line: 205, column: 14, scope: !4657)
!4659 = !DILocation(line: 205, column: 33, scope: !4657)
!4660 = !DILocation(line: 205, column: 67, scope: !4657)
!4661 = !DILocation(line: 203, column: 3, scope: !4662)
!4662 = !DILexicalBlockFile(scope: !4651, file: !678, discriminator: 1)
!4663 = !DILocation(line: 208, column: 3, scope: !4621)
!4664 = !DILocation(line: 210, column: 1, scope: !4621)
!4665 = distinct !DISubprogram(name: "version_etc", scope: !678, file: !678, line: 227, type: !4666, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !4668)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{null, !4492, !51, !51, !51, null}
!4668 = !{!4669, !4670, !4671, !4672, !4673}
!4669 = !DILocalVariable(name: "stream", arg: 1, scope: !4665, file: !678, line: 227, type: !4492)
!4670 = !DILocalVariable(name: "command_name", arg: 2, scope: !4665, file: !678, line: 228, type: !51)
!4671 = !DILocalVariable(name: "package", arg: 3, scope: !4665, file: !678, line: 228, type: !51)
!4672 = !DILocalVariable(name: "version", arg: 4, scope: !4665, file: !678, line: 229, type: !51)
!4673 = !DILocalVariable(name: "authors", scope: !4665, file: !678, line: 231, type: !4674)
!4674 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !991, line: 80, baseType: !4675)
!4675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4676, line: 50, baseType: !4677)
!4676 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !675, line: 231, baseType: !4678)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4625, size: 192, elements: !1027)
!4679 = !DILocation(line: 227, column: 20, scope: !4665)
!4680 = !DILocation(line: 228, column: 26, scope: !4665)
!4681 = !DILocation(line: 228, column: 52, scope: !4665)
!4682 = !DILocation(line: 229, column: 26, scope: !4665)
!4683 = !DILocation(line: 231, column: 3, scope: !4665)
!4684 = !DILocation(line: 231, column: 11, scope: !4665)
!4685 = !DILocation(line: 233, column: 3, scope: !4665)
!4686 = !DILocation(line: 234, column: 3, scope: !4665)
!4687 = !DILocation(line: 235, column: 3, scope: !4665)
!4688 = !DILocation(line: 236, column: 1, scope: !4665)
!4689 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !678, file: !678, line: 239, type: !754, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !232)
!4690 = !DILocation(line: 245, column: 3, scope: !4689)
!4691 = !DILocation(line: 245, column: 3, scope: !4692)
!4692 = !DILexicalBlockFile(scope: !4689, file: !678, discriminator: 1)
!4693 = !DILocation(line: 251, column: 3, scope: !4689)
!4694 = !DILocation(line: 251, column: 3, scope: !4692)
!4695 = !DILocation(line: 256, column: 3, scope: !4689)
!4696 = !DILocation(line: 256, column: 3, scope: !4692)
!4697 = !DILocation(line: 258, column: 1, scope: !4689)
!4698 = distinct !DISubprogram(name: "xnmalloc", scope: !165, file: !165, line: 105, type: !4699, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!42, !43, !43}
!4701 = !{!4702, !4703}
!4702 = !DILocalVariable(name: "n", arg: 1, scope: !4698, file: !165, line: 105, type: !43)
!4703 = !DILocalVariable(name: "s", arg: 2, scope: !4698, file: !165, line: 105, type: !43)
!4704 = !DILocation(line: 105, column: 18, scope: !4698)
!4705 = !DILocation(line: 105, column: 28, scope: !4698)
!4706 = !DILocation(line: 107, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4698, file: !165, line: 107, column: 7)
!4708 = !DILocation(line: 107, column: 7, scope: !4698)
!4709 = !DILocation(line: 108, column: 5, scope: !4707)
!4710 = !DILocation(line: 109, column: 21, scope: !4698)
!4711 = !DILocalVariable(name: "n", arg: 1, scope: !4712, file: !4713, line: 39, type: !43)
!4712 = distinct !DISubprogram(name: "xmalloc", scope: !4713, file: !4713, line: 39, type: !4714, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4716)
!4713 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!42, !43}
!4716 = !{!4711, !4717}
!4717 = !DILocalVariable(name: "p", scope: !4712, file: !4713, line: 41, type: !42)
!4718 = !DILocation(line: 39, column: 17, scope: !4712, inlinedAt: !4719)
!4719 = distinct !DILocation(line: 109, column: 10, scope: !4698)
!4720 = !DILocation(line: 41, column: 13, scope: !4712, inlinedAt: !4719)
!4721 = !DILocation(line: 41, column: 9, scope: !4712, inlinedAt: !4719)
!4722 = !DILocation(line: 42, column: 8, scope: !4723, inlinedAt: !4719)
!4723 = distinct !DILexicalBlock(scope: !4712, file: !4713, line: 42, column: 7)
!4724 = !DILocation(line: 42, column: 15, scope: !4725, inlinedAt: !4719)
!4725 = !DILexicalBlockFile(scope: !4723, file: !4713, discriminator: 1)
!4726 = !DILocation(line: 42, column: 10, scope: !4723, inlinedAt: !4719)
!4727 = !DILocation(line: 43, column: 5, scope: !4723, inlinedAt: !4719)
!4728 = !DILocation(line: 109, column: 3, scope: !4698)
!4729 = !DILocation(line: 39, column: 17, scope: !4712)
!4730 = !DILocation(line: 41, column: 13, scope: !4712)
!4731 = !DILocation(line: 41, column: 9, scope: !4712)
!4732 = !DILocation(line: 42, column: 8, scope: !4723)
!4733 = !DILocation(line: 42, column: 15, scope: !4725)
!4734 = !DILocation(line: 42, column: 10, scope: !4723)
!4735 = !DILocation(line: 43, column: 5, scope: !4723)
!4736 = !DILocation(line: 44, column: 3, scope: !4712)
!4737 = distinct !DISubprogram(name: "xnrealloc", scope: !165, file: !165, line: 118, type: !4738, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4740)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!42, !42, !43, !43}
!4740 = !{!4741, !4742, !4743}
!4741 = !DILocalVariable(name: "p", arg: 1, scope: !4737, file: !165, line: 118, type: !42)
!4742 = !DILocalVariable(name: "n", arg: 2, scope: !4737, file: !165, line: 118, type: !43)
!4743 = !DILocalVariable(name: "s", arg: 3, scope: !4737, file: !165, line: 118, type: !43)
!4744 = !DILocation(line: 118, column: 18, scope: !4737)
!4745 = !DILocation(line: 118, column: 28, scope: !4737)
!4746 = !DILocation(line: 118, column: 38, scope: !4737)
!4747 = !DILocation(line: 120, column: 7, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4737, file: !165, line: 120, column: 7)
!4749 = !DILocation(line: 120, column: 7, scope: !4737)
!4750 = !DILocation(line: 121, column: 5, scope: !4748)
!4751 = !DILocation(line: 122, column: 25, scope: !4737)
!4752 = !DILocalVariable(name: "p", arg: 1, scope: !4753, file: !4713, line: 51, type: !42)
!4753 = distinct !DISubprogram(name: "xrealloc", scope: !4713, file: !4713, line: 51, type: !4754, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4756)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!42, !42, !43}
!4756 = !{!4752, !4757}
!4757 = !DILocalVariable(name: "n", arg: 2, scope: !4753, file: !4713, line: 51, type: !43)
!4758 = !DILocation(line: 51, column: 17, scope: !4753, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 122, column: 10, scope: !4737)
!4760 = !DILocation(line: 51, column: 27, scope: !4753, inlinedAt: !4759)
!4761 = !DILocation(line: 53, column: 8, scope: !4762, inlinedAt: !4759)
!4762 = distinct !DILexicalBlock(scope: !4753, file: !4713, line: 53, column: 7)
!4763 = !DILocation(line: 53, column: 13, scope: !4764, inlinedAt: !4759)
!4764 = !DILexicalBlockFile(scope: !4762, file: !4713, discriminator: 1)
!4765 = !DILocation(line: 53, column: 10, scope: !4762, inlinedAt: !4759)
!4766 = !DILocation(line: 57, column: 7, scope: !4767, inlinedAt: !4759)
!4767 = distinct !DILexicalBlock(scope: !4762, file: !4713, line: 54, column: 5)
!4768 = !DILocation(line: 58, column: 7, scope: !4767, inlinedAt: !4759)
!4769 = !DILocation(line: 61, column: 7, scope: !4753, inlinedAt: !4759)
!4770 = !DILocation(line: 62, column: 8, scope: !4771, inlinedAt: !4759)
!4771 = distinct !DILexicalBlock(scope: !4753, file: !4713, line: 62, column: 7)
!4772 = !DILocation(line: 62, column: 13, scope: !4773, inlinedAt: !4759)
!4773 = !DILexicalBlockFile(scope: !4771, file: !4713, discriminator: 1)
!4774 = !DILocation(line: 62, column: 10, scope: !4771, inlinedAt: !4759)
!4775 = !DILocation(line: 63, column: 5, scope: !4771, inlinedAt: !4759)
!4776 = !DILocation(line: 122, column: 3, scope: !4737)
!4777 = !DILocation(line: 51, column: 17, scope: !4753)
!4778 = !DILocation(line: 51, column: 27, scope: !4753)
!4779 = !DILocation(line: 53, column: 8, scope: !4762)
!4780 = !DILocation(line: 53, column: 13, scope: !4764)
!4781 = !DILocation(line: 53, column: 10, scope: !4762)
!4782 = !DILocation(line: 57, column: 7, scope: !4767)
!4783 = !DILocation(line: 58, column: 7, scope: !4767)
!4784 = !DILocation(line: 61, column: 7, scope: !4753)
!4785 = !DILocation(line: 62, column: 8, scope: !4771)
!4786 = !DILocation(line: 62, column: 13, scope: !4773)
!4787 = !DILocation(line: 62, column: 10, scope: !4771)
!4788 = !DILocation(line: 63, column: 5, scope: !4771)
!4789 = !DILocation(line: 65, column: 1, scope: !4753)
!4790 = !DILocation(line: 180, column: 19, scope: !686)
!4791 = !DILocation(line: 180, column: 30, scope: !686)
!4792 = !DILocation(line: 180, column: 41, scope: !686)
!4793 = !DILocation(line: 182, column: 14, scope: !686)
!4794 = !DILocation(line: 182, column: 10, scope: !686)
!4795 = !DILocation(line: 184, column: 9, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !686, file: !165, line: 184, column: 7)
!4797 = !DILocation(line: 184, column: 7, scope: !686)
!4798 = !DILocation(line: 186, column: 13, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !165, line: 186, column: 11)
!4800 = distinct !DILexicalBlock(scope: !4796, file: !165, line: 185, column: 5)
!4801 = !DILocation(line: 186, column: 11, scope: !4800)
!4802 = !DILocation(line: 194, column: 30, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4799, file: !165, line: 187, column: 9)
!4804 = !DILocation(line: 195, column: 16, scope: !4803)
!4805 = !DILocation(line: 195, column: 13, scope: !4803)
!4806 = !DILocation(line: 196, column: 9, scope: !4803)
!4807 = !DILocation(line: 204, column: 69, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !165, line: 204, column: 11)
!4809 = distinct !DILexicalBlock(scope: !4796, file: !165, line: 199, column: 5)
!4810 = !DILocation(line: 205, column: 11, scope: !4808)
!4811 = !DILocation(line: 204, column: 11, scope: !4809)
!4812 = !DILocation(line: 206, column: 9, scope: !4808)
!4813 = !DILocation(line: 210, column: 7, scope: !686)
!4814 = !DILocation(line: 211, column: 25, scope: !686)
!4815 = !DILocation(line: 51, column: 17, scope: !4753, inlinedAt: !4816)
!4816 = distinct !DILocation(line: 211, column: 10, scope: !686)
!4817 = !DILocation(line: 51, column: 27, scope: !4753, inlinedAt: !4816)
!4818 = !DILocation(line: 53, column: 10, scope: !4762, inlinedAt: !4816)
!4819 = !DILocation(line: 207, column: 14, scope: !4809)
!4820 = !DILocation(line: 207, column: 18, scope: !4809)
!4821 = !DILocation(line: 207, column: 9, scope: !4809)
!4822 = !DILocation(line: 53, column: 8, scope: !4762, inlinedAt: !4816)
!4823 = !DILocation(line: 57, column: 7, scope: !4767, inlinedAt: !4816)
!4824 = !DILocation(line: 58, column: 7, scope: !4767, inlinedAt: !4816)
!4825 = !DILocation(line: 61, column: 7, scope: !4753, inlinedAt: !4816)
!4826 = !DILocation(line: 62, column: 8, scope: !4771, inlinedAt: !4816)
!4827 = !DILocation(line: 62, column: 13, scope: !4773, inlinedAt: !4816)
!4828 = !DILocation(line: 62, column: 10, scope: !4771, inlinedAt: !4816)
!4829 = !DILocation(line: 63, column: 5, scope: !4771, inlinedAt: !4816)
!4830 = !DILocation(line: 211, column: 3, scope: !686)
!4831 = distinct !DISubprogram(name: "xcharalloc", scope: !165, file: !165, line: 220, type: !3763, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4832)
!4832 = !{!4833}
!4833 = !DILocalVariable(name: "n", arg: 1, scope: !4831, file: !165, line: 220, type: !43)
!4834 = !DILocation(line: 220, column: 20, scope: !4831)
!4835 = !DILocation(line: 39, column: 17, scope: !4712, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 222, column: 10, scope: !4831)
!4837 = !DILocation(line: 41, column: 13, scope: !4712, inlinedAt: !4836)
!4838 = !DILocation(line: 41, column: 9, scope: !4712, inlinedAt: !4836)
!4839 = !DILocation(line: 42, column: 8, scope: !4723, inlinedAt: !4836)
!4840 = !DILocation(line: 42, column: 15, scope: !4725, inlinedAt: !4836)
!4841 = !DILocation(line: 42, column: 10, scope: !4723, inlinedAt: !4836)
!4842 = !DILocation(line: 43, column: 5, scope: !4723, inlinedAt: !4836)
!4843 = !DILocation(line: 222, column: 3, scope: !4831)
!4844 = distinct !DISubprogram(name: "x2realloc", scope: !4713, file: !4713, line: 74, type: !4845, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4847)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!42, !42, !169}
!4847 = !{!4848, !4849}
!4848 = !DILocalVariable(name: "p", arg: 1, scope: !4844, file: !4713, line: 74, type: !42)
!4849 = !DILocalVariable(name: "pn", arg: 2, scope: !4844, file: !4713, line: 74, type: !169)
!4850 = !DILocation(line: 74, column: 18, scope: !4844)
!4851 = !DILocation(line: 74, column: 29, scope: !4844)
!4852 = !DILocation(line: 180, column: 19, scope: !686, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 76, column: 10, scope: !4844)
!4854 = !DILocation(line: 180, column: 30, scope: !686, inlinedAt: !4853)
!4855 = !DILocation(line: 180, column: 41, scope: !686, inlinedAt: !4853)
!4856 = !DILocation(line: 182, column: 14, scope: !686, inlinedAt: !4853)
!4857 = !DILocation(line: 182, column: 10, scope: !686, inlinedAt: !4853)
!4858 = !DILocation(line: 184, column: 9, scope: !4796, inlinedAt: !4853)
!4859 = !DILocation(line: 184, column: 7, scope: !686, inlinedAt: !4853)
!4860 = !DILocation(line: 186, column: 13, scope: !4799, inlinedAt: !4853)
!4861 = !DILocation(line: 186, column: 11, scope: !4800, inlinedAt: !4853)
!4862 = !DILocation(line: 210, column: 7, scope: !686, inlinedAt: !4853)
!4863 = !DILocation(line: 51, column: 17, scope: !4753, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 211, column: 10, scope: !686, inlinedAt: !4853)
!4865 = !DILocation(line: 51, column: 27, scope: !4753, inlinedAt: !4864)
!4866 = !DILocation(line: 53, column: 10, scope: !4762, inlinedAt: !4864)
!4867 = !DILocation(line: 205, column: 11, scope: !4808, inlinedAt: !4853)
!4868 = !DILocation(line: 204, column: 11, scope: !4809, inlinedAt: !4853)
!4869 = !DILocation(line: 206, column: 9, scope: !4808, inlinedAt: !4853)
!4870 = !DILocation(line: 207, column: 14, scope: !4809, inlinedAt: !4853)
!4871 = !DILocation(line: 207, column: 18, scope: !4809, inlinedAt: !4853)
!4872 = !DILocation(line: 207, column: 9, scope: !4809, inlinedAt: !4853)
!4873 = !DILocation(line: 53, column: 8, scope: !4762, inlinedAt: !4864)
!4874 = !DILocation(line: 57, column: 7, scope: !4767, inlinedAt: !4864)
!4875 = !DILocation(line: 58, column: 7, scope: !4767, inlinedAt: !4864)
!4876 = !DILocation(line: 61, column: 7, scope: !4753, inlinedAt: !4864)
!4877 = !DILocation(line: 62, column: 8, scope: !4771, inlinedAt: !4864)
!4878 = !DILocation(line: 62, column: 13, scope: !4773, inlinedAt: !4864)
!4879 = !DILocation(line: 62, column: 10, scope: !4771, inlinedAt: !4864)
!4880 = !DILocation(line: 63, column: 5, scope: !4771, inlinedAt: !4864)
!4881 = !DILocation(line: 76, column: 3, scope: !4844)
!4882 = distinct !DISubprogram(name: "xzalloc", scope: !4713, file: !4713, line: 84, type: !4714, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4883)
!4883 = !{!4884}
!4884 = !DILocalVariable(name: "s", arg: 1, scope: !4882, file: !4713, line: 84, type: !43)
!4885 = !DILocation(line: 84, column: 17, scope: !4882)
!4886 = !DILocation(line: 39, column: 17, scope: !4712, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 86, column: 18, scope: !4882)
!4888 = !DILocation(line: 41, column: 13, scope: !4712, inlinedAt: !4887)
!4889 = !DILocation(line: 41, column: 9, scope: !4712, inlinedAt: !4887)
!4890 = !DILocation(line: 42, column: 8, scope: !4723, inlinedAt: !4887)
!4891 = !DILocation(line: 42, column: 15, scope: !4725, inlinedAt: !4887)
!4892 = !DILocation(line: 42, column: 10, scope: !4723, inlinedAt: !4887)
!4893 = !DILocation(line: 43, column: 5, scope: !4723, inlinedAt: !4887)
!4894 = !DILocation(line: 86, column: 10, scope: !4882)
!4895 = !DILocation(line: 86, column: 3, scope: !4882)
!4896 = distinct !DISubprogram(name: "xcalloc", scope: !4713, file: !4713, line: 93, type: !4699, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4897)
!4897 = !{!4898, !4899, !4900}
!4898 = !DILocalVariable(name: "n", arg: 1, scope: !4896, file: !4713, line: 93, type: !43)
!4899 = !DILocalVariable(name: "s", arg: 2, scope: !4896, file: !4713, line: 93, type: !43)
!4900 = !DILocalVariable(name: "p", scope: !4896, file: !4713, line: 95, type: !42)
!4901 = !DILocation(line: 93, column: 17, scope: !4896)
!4902 = !DILocation(line: 93, column: 27, scope: !4896)
!4903 = !DILocation(line: 100, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4896, file: !4713, line: 100, column: 7)
!4905 = !DILocation(line: 101, column: 7, scope: !4904)
!4906 = !DILocation(line: 101, column: 18, scope: !4907)
!4907 = !DILexicalBlockFile(scope: !4904, file: !4713, discriminator: 1)
!4908 = !DILocation(line: 95, column: 9, scope: !4896)
!4909 = !DILocation(line: 101, column: 16, scope: !4907)
!4910 = !DILocation(line: 100, column: 7, scope: !4911)
!4911 = !DILexicalBlockFile(scope: !4896, file: !4713, discriminator: 1)
!4912 = !DILocation(line: 102, column: 5, scope: !4904)
!4913 = !DILocation(line: 103, column: 3, scope: !4896)
!4914 = distinct !DISubprogram(name: "xmemdup", scope: !4713, file: !4713, line: 111, type: !4915, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4917)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!42, !46, !43}
!4917 = !{!4918, !4919}
!4918 = !DILocalVariable(name: "p", arg: 1, scope: !4914, file: !4713, line: 111, type: !46)
!4919 = !DILocalVariable(name: "s", arg: 2, scope: !4914, file: !4713, line: 111, type: !43)
!4920 = !DILocation(line: 111, column: 22, scope: !4914)
!4921 = !DILocation(line: 111, column: 32, scope: !4914)
!4922 = !DILocation(line: 39, column: 17, scope: !4712, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 113, column: 18, scope: !4914)
!4924 = !DILocation(line: 41, column: 13, scope: !4712, inlinedAt: !4923)
!4925 = !DILocation(line: 41, column: 9, scope: !4712, inlinedAt: !4923)
!4926 = !DILocation(line: 42, column: 8, scope: !4723, inlinedAt: !4923)
!4927 = !DILocation(line: 42, column: 15, scope: !4725, inlinedAt: !4923)
!4928 = !DILocation(line: 42, column: 10, scope: !4723, inlinedAt: !4923)
!4929 = !DILocation(line: 43, column: 5, scope: !4723, inlinedAt: !4923)
!4930 = !DILocation(line: 113, column: 10, scope: !4914)
!4931 = !DILocation(line: 113, column: 3, scope: !4914)
!4932 = distinct !DISubprogram(name: "xstrdup", scope: !4713, file: !4713, line: 119, type: !3968, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4933)
!4933 = !{!4934}
!4934 = !DILocalVariable(name: "string", arg: 1, scope: !4932, file: !4713, line: 119, type: !51)
!4935 = !DILocation(line: 119, column: 22, scope: !4932)
!4936 = !DILocation(line: 121, column: 27, scope: !4932)
!4937 = !DILocation(line: 121, column: 43, scope: !4932)
!4938 = !DILocation(line: 111, column: 22, scope: !4914, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 121, column: 10, scope: !4940)
!4940 = !DILexicalBlockFile(scope: !4932, file: !4713, discriminator: 1)
!4941 = !DILocation(line: 111, column: 32, scope: !4914, inlinedAt: !4939)
!4942 = !DILocation(line: 39, column: 17, scope: !4712, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 113, column: 18, scope: !4914, inlinedAt: !4939)
!4944 = !DILocation(line: 41, column: 13, scope: !4712, inlinedAt: !4943)
!4945 = !DILocation(line: 41, column: 9, scope: !4712, inlinedAt: !4943)
!4946 = !DILocation(line: 42, column: 8, scope: !4723, inlinedAt: !4943)
!4947 = !DILocation(line: 42, column: 15, scope: !4725, inlinedAt: !4943)
!4948 = !DILocation(line: 42, column: 10, scope: !4723, inlinedAt: !4943)
!4949 = !DILocation(line: 43, column: 5, scope: !4723, inlinedAt: !4943)
!4950 = !DILocation(line: 113, column: 10, scope: !4914, inlinedAt: !4939)
!4951 = !DILocation(line: 121, column: 3, scope: !4932)
!4952 = distinct !DISubprogram(name: "xalloc_die", scope: !4953, file: !4953, line: 32, type: !754, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !693, variables: !232)
!4953 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4954 = !DILocation(line: 34, column: 10, scope: !4952)
!4955 = !DILocation(line: 34, column: 33, scope: !4952)
!4956 = !DILocation(line: 34, column: 3, scope: !4957)
!4957 = !DILexicalBlockFile(scope: !4952, file: !4953, discriminator: 1)
!4958 = !DILocation(line: 40, column: 3, scope: !4952)
!4959 = distinct !DISubprogram(name: "xstrndup", scope: !4960, file: !4960, line: 30, type: !3979, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !695, variables: !4961)
!4960 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4961 = !{!4962, !4963, !4964}
!4962 = !DILocalVariable(name: "string", arg: 1, scope: !4959, file: !4960, line: 30, type: !51)
!4963 = !DILocalVariable(name: "n", arg: 2, scope: !4959, file: !4960, line: 30, type: !43)
!4964 = !DILocalVariable(name: "s", scope: !4959, file: !4960, line: 32, type: !40)
!4965 = !DILocation(line: 30, column: 23, scope: !4959)
!4966 = !DILocation(line: 30, column: 38, scope: !4959)
!4967 = !DILocation(line: 32, column: 13, scope: !4959)
!4968 = !DILocation(line: 32, column: 9, scope: !4959)
!4969 = !DILocation(line: 33, column: 9, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4959, file: !4960, line: 33, column: 7)
!4971 = !DILocation(line: 33, column: 7, scope: !4959)
!4972 = !DILocation(line: 34, column: 5, scope: !4970)
!4973 = !DILocation(line: 35, column: 3, scope: !4959)
!4974 = distinct !DISubprogram(name: "rpl_calloc", scope: !4975, file: !4975, line: 42, type: !4699, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4976)
!4975 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4976 = !{!4977, !4978, !4979, !4980}
!4977 = !DILocalVariable(name: "n", arg: 1, scope: !4974, file: !4975, line: 42, type: !43)
!4978 = !DILocalVariable(name: "s", arg: 2, scope: !4974, file: !4975, line: 42, type: !43)
!4979 = !DILocalVariable(name: "result", scope: !4974, file: !4975, line: 44, type: !42)
!4980 = !DILocalVariable(name: "bytes", scope: !4981, file: !4975, line: 56, type: !43)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !4975, line: 53, column: 5)
!4982 = distinct !DILexicalBlock(scope: !4974, file: !4975, line: 47, column: 7)
!4983 = !DILocation(line: 42, column: 20, scope: !4974)
!4984 = !DILocation(line: 42, column: 30, scope: !4974)
!4985 = !DILocation(line: 47, column: 9, scope: !4982)
!4986 = !DILocation(line: 47, column: 19, scope: !4987)
!4987 = !DILexicalBlockFile(scope: !4982, file: !4975, discriminator: 1)
!4988 = !DILocation(line: 47, column: 14, scope: !4982)
!4989 = !DILocation(line: 56, column: 24, scope: !4981)
!4990 = !DILocation(line: 56, column: 14, scope: !4981)
!4991 = !DILocation(line: 57, column: 17, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4981, file: !4975, line: 57, column: 11)
!4993 = !DILocation(line: 57, column: 21, scope: !4992)
!4994 = !DILocation(line: 57, column: 11, scope: !4981)
!4995 = !DILocation(line: 59, column: 11, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4992, file: !4975, line: 58, column: 9)
!4997 = !DILocation(line: 59, column: 17, scope: !4996)
!4998 = !DILocation(line: 65, column: 12, scope: !4974)
!4999 = !DILocation(line: 44, column: 9, scope: !4974)
!5000 = !DILocation(line: 72, column: 3, scope: !4974)
!5001 = !DILocation(line: 73, column: 1, scope: !4974)
!5002 = distinct !DISubprogram(name: "rpl_fclose", scope: !5003, file: !5003, line: 56, type: !5004, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !5046)
!5003 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!60, !5006}
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !5008)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !5009)
!5009 = !{!5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5008, file: !993, line: 242, baseType: !60, size: 32)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5008, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5008, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5008, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5008, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5008, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5008, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5008, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5008, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5008, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5008, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5008, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5008, file: !993, line: 260, baseType: !5023, size: 64, offset: 768)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !5025)
!5025 = !{!5026, !5027, !5029}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5024, file: !993, line: 157, baseType: !5023, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5024, file: !993, line: 158, baseType: !5028, size: 64, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5024, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5008, file: !993, line: 262, baseType: !5028, size: 64, offset: 832)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5008, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5008, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5008, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5008, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5008, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5008, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5008, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5008, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5008, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5008, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5008, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5008, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5008, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5008, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5008, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!5046 = !{!5047, !5048, !5049, !5050}
!5047 = !DILocalVariable(name: "fp", arg: 1, scope: !5002, file: !5003, line: 56, type: !5006)
!5048 = !DILocalVariable(name: "saved_errno", scope: !5002, file: !5003, line: 58, type: !60)
!5049 = !DILocalVariable(name: "fd", scope: !5002, file: !5003, line: 59, type: !60)
!5050 = !DILocalVariable(name: "result", scope: !5002, file: !5003, line: 60, type: !60)
!5051 = !DILocation(line: 56, column: 19, scope: !5002)
!5052 = !DILocation(line: 58, column: 7, scope: !5002)
!5053 = !DILocation(line: 60, column: 7, scope: !5002)
!5054 = !DILocation(line: 63, column: 8, scope: !5002)
!5055 = !DILocation(line: 59, column: 7, scope: !5002)
!5056 = !DILocation(line: 64, column: 10, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5002, file: !5003, line: 64, column: 7)
!5058 = !DILocation(line: 64, column: 7, scope: !5002)
!5059 = !DILocation(line: 65, column: 12, scope: !5057)
!5060 = !DILocation(line: 65, column: 5, scope: !5057)
!5061 = !DILocation(line: 70, column: 9, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5002, file: !5003, line: 70, column: 7)
!5063 = !DILocation(line: 70, column: 23, scope: !5062)
!5064 = !DILocation(line: 70, column: 33, scope: !5065)
!5065 = !DILexicalBlockFile(scope: !5062, file: !5003, discriminator: 1)
!5066 = !DILocation(line: 70, column: 26, scope: !5067)
!5067 = !DILexicalBlockFile(scope: !5062, file: !5003, discriminator: 3)
!5068 = !DILocation(line: 70, column: 59, scope: !5065)
!5069 = !DILocation(line: 71, column: 7, scope: !5062)
!5070 = !DILocation(line: 71, column: 10, scope: !5065)
!5071 = !DILocation(line: 70, column: 7, scope: !5072)
!5072 = !DILexicalBlockFile(scope: !5002, file: !5003, discriminator: 2)
!5073 = !DILocation(line: 98, column: 12, scope: !5002)
!5074 = !DILocation(line: 103, column: 7, scope: !5002)
!5075 = !DILocation(line: 72, column: 19, scope: !5062)
!5076 = !DILocation(line: 103, column: 19, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5002, file: !5003, line: 103, column: 7)
!5078 = !DILocation(line: 105, column: 13, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5077, file: !5003, line: 104, column: 5)
!5080 = !DILocation(line: 107, column: 5, scope: !5079)
!5081 = !DILocation(line: 110, column: 1, scope: !5002)
!5082 = distinct !DISubprogram(name: "rpl_fflush", scope: !5083, file: !5083, line: 127, type: !5084, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !5126)
!5083 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!60, !5086}
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !5088)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !5089)
!5089 = !{!5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5088, file: !993, line: 242, baseType: !60, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5088, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5088, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5088, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5088, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5088, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5088, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5088, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5088, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5088, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5088, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5088, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5088, file: !993, line: 260, baseType: !5103, size: 64, offset: 768)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !5105)
!5105 = !{!5106, !5107, !5109}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5104, file: !993, line: 157, baseType: !5103, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5104, file: !993, line: 158, baseType: !5108, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5104, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5088, file: !993, line: 262, baseType: !5108, size: 64, offset: 832)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5088, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5088, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5088, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5088, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5088, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5088, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5088, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5088, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5088, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5088, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5088, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5088, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5088, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5088, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5088, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!5126 = !{!5127}
!5127 = !DILocalVariable(name: "stream", arg: 1, scope: !5082, file: !5083, line: 127, type: !5086)
!5128 = !DILocation(line: 127, column: 19, scope: !5082)
!5129 = !DILocation(line: 148, column: 14, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5082, file: !5083, line: 148, column: 7)
!5131 = !DILocation(line: 148, column: 22, scope: !5130)
!5132 = !DILocation(line: 148, column: 27, scope: !5133)
!5133 = !DILexicalBlockFile(scope: !5130, file: !5083, discriminator: 1)
!5134 = !DILocation(line: 148, column: 7, scope: !5135)
!5135 = !DILexicalBlockFile(scope: !5082, file: !5083, discriminator: 1)
!5136 = !DILocation(line: 149, column: 12, scope: !5130)
!5137 = !DILocation(line: 149, column: 5, scope: !5130)
!5138 = !DILocalVariable(name: "fp", arg: 1, scope: !5139, file: !5083, line: 40, type: !5086)
!5139 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5083, file: !5083, line: 40, type: !5140, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !5142)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{null, !5086}
!5142 = !{!5138}
!5143 = !DILocation(line: 40, column: 48, scope: !5139, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 153, column: 3, scope: !5082)
!5145 = !DILocation(line: 42, column: 11, scope: !5146, inlinedAt: !5144)
!5146 = distinct !DILexicalBlock(scope: !5139, file: !5083, line: 42, column: 7)
!5147 = !DILocation(line: 42, column: 18, scope: !5146, inlinedAt: !5144)
!5148 = !DILocation(line: 42, column: 7, scope: !5139, inlinedAt: !5144)
!5149 = !DILocation(line: 44, column: 5, scope: !5146, inlinedAt: !5144)
!5150 = !DILocation(line: 155, column: 10, scope: !5082)
!5151 = !DILocation(line: 155, column: 3, scope: !5082)
!5152 = !DILocation(line: 229, column: 1, scope: !5082)
!5153 = distinct !DISubprogram(name: "freadptr", scope: !5154, file: !5154, line: 27, type: !5155, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !703, variables: !5197)
!5154 = !DIFile(filename: "lib/freadptr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!51, !5157, !169}
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !5159)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !5160)
!5160 = !{!5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5159, file: !993, line: 242, baseType: !60, size: 32)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5159, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5159, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5159, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5159, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5159, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5159, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5159, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5159, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5159, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5159, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5159, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5159, file: !993, line: 260, baseType: !5174, size: 64, offset: 768)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !5176)
!5176 = !{!5177, !5178, !5180}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5175, file: !993, line: 157, baseType: !5174, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5175, file: !993, line: 158, baseType: !5179, size: 64, offset: 64)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5175, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5159, file: !993, line: 262, baseType: !5179, size: 64, offset: 832)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5159, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5159, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5159, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5159, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5159, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5159, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5159, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5159, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5159, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5159, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5159, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5159, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5159, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5159, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5159, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!5197 = !{!5198, !5199, !5200}
!5198 = !DILocalVariable(name: "fp", arg: 1, scope: !5153, file: !5154, line: 27, type: !5157)
!5199 = !DILocalVariable(name: "sizep", arg: 2, scope: !5153, file: !5154, line: 27, type: !169)
!5200 = !DILocalVariable(name: "size", scope: !5153, file: !5154, line: 29, type: !43)
!5201 = !DILocation(line: 27, column: 17, scope: !5153)
!5202 = !DILocation(line: 27, column: 29, scope: !5153)
!5203 = !DILocation(line: 33, column: 11, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5153, file: !5154, line: 33, column: 7)
!5205 = !DILocation(line: 33, column: 31, scope: !5204)
!5206 = !{!1125, !739, i64 32}
!5207 = !DILocation(line: 33, column: 25, scope: !5204)
!5208 = !DILocation(line: 33, column: 7, scope: !5153)
!5209 = !DILocation(line: 35, column: 14, scope: !5153)
!5210 = !DILocation(line: 35, column: 33, scope: !5153)
!5211 = !DILocation(line: 35, column: 27, scope: !5153)
!5212 = !DILocation(line: 29, column: 10, scope: !5153)
!5213 = !DILocation(line: 36, column: 12, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5153, file: !5154, line: 36, column: 7)
!5215 = !DILocation(line: 36, column: 7, scope: !5153)
!5216 = !DILocation(line: 38, column: 10, scope: !5153)
!5217 = !DILocation(line: 39, column: 3, scope: !5153)
!5218 = !DILocation(line: 121, column: 1, scope: !5153)
!5219 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5220, file: !5220, line: 28, type: !5221, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !706, variables: !5263)
!5220 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5221 = !DISubroutineType(types: !5222)
!5222 = !{!60, !5223, !2064, !60}
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !5225)
!5225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !5226)
!5226 = !{!5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5225, file: !993, line: 242, baseType: !60, size: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5225, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5225, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5225, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5225, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5225, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5225, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5225, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5225, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5225, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5225, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5225, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5225, file: !993, line: 260, baseType: !5240, size: 64, offset: 768)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !5242)
!5242 = !{!5243, !5244, !5246}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5241, file: !993, line: 157, baseType: !5240, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5241, file: !993, line: 158, baseType: !5245, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5241, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5225, file: !993, line: 262, baseType: !5245, size: 64, offset: 832)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5225, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5225, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5225, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5225, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5225, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5225, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5225, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5225, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5225, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5225, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5225, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5225, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5225, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5225, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5225, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!5263 = !{!5264, !5265, !5266, !5267}
!5264 = !DILocalVariable(name: "fp", arg: 1, scope: !5219, file: !5220, line: 28, type: !5223)
!5265 = !DILocalVariable(name: "offset", arg: 2, scope: !5219, file: !5220, line: 28, type: !2064)
!5266 = !DILocalVariable(name: "whence", arg: 3, scope: !5219, file: !5220, line: 28, type: !60)
!5267 = !DILocalVariable(name: "pos", scope: !5268, file: !5220, line: 116, type: !2064)
!5268 = distinct !DILexicalBlock(scope: !5269, file: !5220, line: 112, column: 5)
!5269 = distinct !DILexicalBlock(scope: !5219, file: !5220, line: 51, column: 7)
!5270 = !DILocation(line: 28, column: 15, scope: !5219)
!5271 = !DILocation(line: 28, column: 25, scope: !5219)
!5272 = !DILocation(line: 28, column: 37, scope: !5219)
!5273 = !DILocation(line: 51, column: 11, scope: !5269)
!5274 = !DILocation(line: 51, column: 31, scope: !5269)
!5275 = !DILocation(line: 51, column: 24, scope: !5269)
!5276 = !DILocation(line: 52, column: 7, scope: !5269)
!5277 = !DILocation(line: 52, column: 14, scope: !5278)
!5278 = !DILexicalBlockFile(scope: !5269, file: !5220, discriminator: 1)
!5279 = !DILocation(line: 52, column: 35, scope: !5278)
!5280 = !DILocation(line: 52, column: 28, scope: !5278)
!5281 = !DILocation(line: 53, column: 7, scope: !5269)
!5282 = !DILocation(line: 53, column: 14, scope: !5278)
!5283 = !{!1125, !739, i64 72}
!5284 = !DILocation(line: 53, column: 28, scope: !5278)
!5285 = !DILocation(line: 51, column: 7, scope: !5286)
!5286 = !DILexicalBlockFile(scope: !5219, file: !5220, discriminator: 1)
!5287 = !DILocation(line: 116, column: 26, scope: !5268)
!5288 = !DILocation(line: 116, column: 19, scope: !5289)
!5289 = !DILexicalBlockFile(scope: !5268, file: !5220, discriminator: 1)
!5290 = !DILocation(line: 116, column: 13, scope: !5268)
!5291 = !DILocation(line: 117, column: 15, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5268, file: !5220, line: 117, column: 11)
!5293 = !DILocation(line: 117, column: 11, scope: !5268)
!5294 = !DILocation(line: 127, column: 11, scope: !5268)
!5295 = !DILocation(line: 127, column: 18, scope: !5268)
!5296 = !DILocation(line: 128, column: 11, scope: !5268)
!5297 = !DILocation(line: 128, column: 19, scope: !5268)
!5298 = !{!1125, !880, i64 144}
!5299 = !DILocation(line: 159, column: 7, scope: !5268)
!5300 = !DILocation(line: 161, column: 10, scope: !5219)
!5301 = !DILocation(line: 161, column: 3, scope: !5219)
!5302 = !DILocation(line: 162, column: 1, scope: !5219)
!5303 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5304, file: !5304, line: 334, type: !5305, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !708, variables: !5319)
!5304 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!43, !5307, !51, !43, !5308}
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2736, line: 107, baseType: !5310)
!5310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2736, line: 95, baseType: !5311)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2736, line: 83, size: 64, elements: !5312)
!5312 = !{!5313, !5314}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5311, file: !2736, line: 85, baseType: !60, size: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5311, file: !2736, line: 94, baseType: !5315, size: 32, offset: 32)
!5315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5311, file: !2736, line: 86, size: 32, elements: !5316)
!5316 = !{!5317, !5318}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5315, file: !2736, line: 89, baseType: !179, size: 32)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5315, file: !2736, line: 93, baseType: !2746, size: 32)
!5319 = !{!5320, !5321, !5322, !5323, !5324, !5325, !5326}
!5320 = !DILocalVariable(name: "pwc", arg: 1, scope: !5303, file: !5304, line: 334, type: !5307)
!5321 = !DILocalVariable(name: "s", arg: 2, scope: !5303, file: !5304, line: 334, type: !51)
!5322 = !DILocalVariable(name: "n", arg: 3, scope: !5303, file: !5304, line: 334, type: !43)
!5323 = !DILocalVariable(name: "ps", arg: 4, scope: !5303, file: !5304, line: 334, type: !5308)
!5324 = !DILocalVariable(name: "ret", scope: !5303, file: !5304, line: 336, type: !43)
!5325 = !DILocalVariable(name: "wc", scope: !5303, file: !5304, line: 337, type: !2751)
!5326 = !DILocalVariable(name: "uc", scope: !5327, file: !5304, line: 398, type: !50)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !5304, line: 397, column: 5)
!5328 = distinct !DILexicalBlock(scope: !5303, file: !5304, line: 396, column: 7)
!5329 = !DILocation(line: 334, column: 23, scope: !5303)
!5330 = !DILocation(line: 334, column: 40, scope: !5303)
!5331 = !DILocation(line: 334, column: 50, scope: !5303)
!5332 = !DILocation(line: 334, column: 64, scope: !5303)
!5333 = !DILocation(line: 337, column: 3, scope: !5303)
!5334 = !DILocation(line: 353, column: 9, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5303, file: !5304, line: 353, column: 7)
!5336 = !DILocation(line: 353, column: 7, scope: !5303)
!5337 = !DILocation(line: 388, column: 9, scope: !5303)
!5338 = !DILocation(line: 336, column: 10, scope: !5303)
!5339 = !DILocation(line: 396, column: 19, scope: !5328)
!5340 = !DILocation(line: 396, column: 31, scope: !5341)
!5341 = !DILexicalBlockFile(scope: !5328, file: !5304, discriminator: 1)
!5342 = !DILocation(line: 396, column: 26, scope: !5328)
!5343 = !DILocation(line: 396, column: 41, scope: !5344)
!5344 = !DILexicalBlockFile(scope: !5328, file: !5304, discriminator: 2)
!5345 = !DILocation(line: 396, column: 7, scope: !5346)
!5346 = !DILexicalBlockFile(scope: !5303, file: !5304, discriminator: 2)
!5347 = !DILocation(line: 398, column: 26, scope: !5327)
!5348 = !DILocation(line: 398, column: 21, scope: !5327)
!5349 = !DILocation(line: 399, column: 14, scope: !5327)
!5350 = !DILocation(line: 399, column: 12, scope: !5327)
!5351 = !DILocation(line: 405, column: 1, scope: !5303)
!5352 = distinct !DISubprogram(name: "close_stream", scope: !5353, file: !5353, line: 56, type: !5354, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !711, variables: !5396)
!5353 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!60, !5356}
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !5358)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !5359)
!5359 = !{!5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395}
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5358, file: !993, line: 242, baseType: !60, size: 32)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5358, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5358, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5358, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5358, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5358, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5358, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5358, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5358, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5358, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5358, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5358, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5358, file: !993, line: 260, baseType: !5373, size: 64, offset: 768)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !5375)
!5375 = !{!5376, !5377, !5379}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5374, file: !993, line: 157, baseType: !5373, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5374, file: !993, line: 158, baseType: !5378, size: 64, offset: 64)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5374, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5358, file: !993, line: 262, baseType: !5378, size: 64, offset: 832)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5358, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5358, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5358, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5358, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5358, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5358, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5358, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5358, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5358, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5358, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5358, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5358, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5358, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5358, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5358, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!5396 = !{!5397, !5398, !5400, !5401}
!5397 = !DILocalVariable(name: "stream", arg: 1, scope: !5352, file: !5353, line: 56, type: !5356)
!5398 = !DILocalVariable(name: "some_pending", scope: !5352, file: !5353, line: 58, type: !5399)
!5399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!5400 = !DILocalVariable(name: "prev_fail", scope: !5352, file: !5353, line: 59, type: !5399)
!5401 = !DILocalVariable(name: "fclose_fail", scope: !5352, file: !5353, line: 60, type: !5399)
!5402 = !DILocation(line: 56, column: 21, scope: !5352)
!5403 = !DILocation(line: 58, column: 30, scope: !5352)
!5404 = !DILocalVariable(name: "__stream", arg: 1, scope: !5405, file: !1117, line: 132, type: !5356)
!5405 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1117, file: !1117, line: 132, type: !5354, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !711, variables: !5406)
!5406 = !{!5404}
!5407 = !DILocation(line: 132, column: 1, scope: !5405, inlinedAt: !5408)
!5408 = distinct !DILocation(line: 59, column: 27, scope: !5352)
!5409 = !DILocation(line: 134, column: 10, scope: !5405, inlinedAt: !5408)
!5410 = !DILocation(line: 59, column: 43, scope: !5352)
!5411 = !DILocation(line: 60, column: 29, scope: !5352)
!5412 = !DILocation(line: 60, column: 45, scope: !5352)
!5413 = !DILocation(line: 70, column: 17, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5352, file: !5353, line: 70, column: 7)
!5415 = !DILocation(line: 70, column: 33, scope: !5416)
!5416 = !DILexicalBlockFile(scope: !5414, file: !5353, discriminator: 1)
!5417 = !DILocation(line: 70, column: 53, scope: !5418)
!5418 = !DILexicalBlockFile(scope: !5414, file: !5353, discriminator: 3)
!5419 = !DILocation(line: 70, column: 7, scope: !5420)
!5420 = !DILexicalBlockFile(scope: !5352, file: !5353, discriminator: 3)
!5421 = !DILocation(line: 72, column: 11, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5414, file: !5353, line: 71, column: 5)
!5423 = !DILocation(line: 73, column: 9, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5422, file: !5353, line: 72, column: 11)
!5425 = !DILocation(line: 73, column: 15, scope: !5424)
!5426 = !DILocation(line: 78, column: 1, scope: !5352)
!5427 = distinct !DISubprogram(name: "freadseek", scope: !5428, file: !5428, line: 73, type: !5429, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !713, variables: !5471)
!5428 = !DIFile(filename: "lib/freadseek.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!60, !5431, !43}
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !5433)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !5434)
!5434 = !{!5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5433, file: !993, line: 242, baseType: !60, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5433, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5433, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5433, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5433, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5433, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5433, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5433, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5433, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5433, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5433, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5433, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5433, file: !993, line: 260, baseType: !5448, size: 64, offset: 768)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !5450)
!5450 = !{!5451, !5452, !5454}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5449, file: !993, line: 157, baseType: !5448, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5449, file: !993, line: 158, baseType: !5453, size: 64, offset: 64)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5449, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5433, file: !993, line: 262, baseType: !5453, size: 64, offset: 832)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5433, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5433, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5433, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5433, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5433, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5433, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5433, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5433, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5433, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5433, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5433, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5433, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5433, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5433, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5433, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!5471 = !{!5472, !5473, !5474, !5475, !5476, !5478, !5481, !5487}
!5472 = !DILocalVariable(name: "fp", arg: 1, scope: !5427, file: !5428, line: 73, type: !5431)
!5473 = !DILocalVariable(name: "offset", arg: 2, scope: !5427, file: !5428, line: 73, type: !43)
!5474 = !DILocalVariable(name: "total_buffered", scope: !5427, file: !5428, line: 75, type: !43)
!5475 = !DILocalVariable(name: "fd", scope: !5427, file: !5428, line: 76, type: !60)
!5476 = !DILocalVariable(name: "buffered", scope: !5477, file: !5428, line: 88, type: !43)
!5477 = distinct !DILexicalBlock(scope: !5427, file: !5428, line: 87, column: 5)
!5478 = !DILocalVariable(name: "increment", scope: !5479, file: !5428, line: 92, type: !43)
!5479 = distinct !DILexicalBlock(scope: !5480, file: !5428, line: 91, column: 9)
!5480 = distinct !DILexicalBlock(scope: !5477, file: !5428, line: 90, column: 11)
!5481 = !DILocalVariable(name: "buf", scope: !5482, file: !5428, line: 123, type: !5484)
!5482 = distinct !DILexicalBlock(scope: !5483, file: !5428, line: 120, column: 5)
!5483 = distinct !DILexicalBlock(scope: !5427, file: !5428, line: 114, column: 7)
!5484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32768, elements: !5485)
!5485 = !{!5486}
!5486 = !DISubrange(count: 4096)
!5487 = !DILocalVariable(name: "count", scope: !5488, file: !5428, line: 127, type: !43)
!5488 = distinct !DILexicalBlock(scope: !5482, file: !5428, line: 126, column: 9)
!5489 = !DILocation(line: 73, column: 18, scope: !5427)
!5490 = !DILocation(line: 73, column: 29, scope: !5427)
!5491 = !DILocation(line: 78, column: 14, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5427, file: !5428, line: 78, column: 7)
!5493 = !DILocation(line: 78, column: 7, scope: !5427)
!5494 = !DILocation(line: 83, column: 20, scope: !5427)
!5495 = !DILocation(line: 75, column: 10, scope: !5427)
!5496 = !DILocation(line: 86, column: 3, scope: !5427)
!5497 = !DILocation(line: 86, column: 25, scope: !5498)
!5498 = !DILexicalBlockFile(scope: !5427, file: !5428, discriminator: 1)
!5499 = !DILocation(line: 86, column: 3, scope: !5498)
!5500 = !DILocation(line: 88, column: 7, scope: !5477)
!5501 = !DILocation(line: 88, column: 14, scope: !5477)
!5502 = !DILocation(line: 90, column: 11, scope: !5480)
!5503 = !DILocation(line: 90, column: 36, scope: !5480)
!5504 = !DILocation(line: 90, column: 47, scope: !5505)
!5505 = !DILexicalBlockFile(scope: !5480, file: !5428, discriminator: 1)
!5506 = !DILocation(line: 90, column: 56, scope: !5505)
!5507 = !DILocation(line: 90, column: 44, scope: !5480)
!5508 = !DILocation(line: 92, column: 40, scope: !5479)
!5509 = !DILocation(line: 92, column: 31, scope: !5479)
!5510 = !DILocation(line: 92, column: 18, scope: !5479)
!5511 = !DILocalVariable(name: "fp", arg: 1, scope: !5512, file: !5428, line: 34, type: !5431)
!5512 = distinct !DISubprogram(name: "freadptrinc", scope: !5428, file: !5428, line: 34, type: !5513, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !713, variables: !5515)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{null, !5431, !43}
!5515 = !{!5511, !5516}
!5516 = !DILocalVariable(name: "increment", arg: 2, scope: !5512, file: !5428, line: 34, type: !43)
!5517 = !DILocation(line: 34, column: 20, scope: !5512, inlinedAt: !5518)
!5518 = distinct !DILocation(line: 94, column: 11, scope: !5479)
!5519 = !DILocation(line: 34, column: 31, scope: !5512, inlinedAt: !5518)
!5520 = !DILocation(line: 40, column: 20, scope: !5512, inlinedAt: !5518)
!5521 = !DILocation(line: 95, column: 18, scope: !5479)
!5522 = !DILocation(line: 96, column: 22, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5479, file: !5428, line: 96, column: 15)
!5524 = !DILocation(line: 96, column: 15, scope: !5479)
!5525 = !DILocation(line: 110, column: 5, scope: !5427)
!5526 = !DILocation(line: 98, column: 26, scope: !5479)
!5527 = !DILocation(line: 99, column: 30, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5479, file: !5428, line: 99, column: 15)
!5529 = !DILocation(line: 104, column: 11, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5477, file: !5428, line: 104, column: 11)
!5531 = !DILocation(line: 104, column: 22, scope: !5530)
!5532 = !DILocation(line: 104, column: 11, scope: !5477)
!5533 = !DILocation(line: 106, column: 13, scope: !5477)
!5534 = !DILocation(line: 107, column: 18, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5477, file: !5428, line: 107, column: 11)
!5536 = !DILocation(line: 107, column: 11, scope: !5477)
!5537 = !DILocation(line: 113, column: 8, scope: !5427)
!5538 = !DILocation(line: 76, column: 7, scope: !5427)
!5539 = !DILocation(line: 114, column: 10, scope: !5483)
!5540 = !DILocation(line: 114, column: 15, scope: !5483)
!5541 = !DILocation(line: 114, column: 18, scope: !5542)
!5542 = !DILexicalBlockFile(scope: !5483, file: !5428, discriminator: 1)
!5543 = !DILocation(line: 114, column: 42, scope: !5542)
!5544 = !DILocation(line: 114, column: 7, scope: !5498)
!5545 = !DILocation(line: 117, column: 14, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5483, file: !5428, line: 115, column: 5)
!5547 = !DILocation(line: 117, column: 7, scope: !5546)
!5548 = !DILocation(line: 123, column: 7, scope: !5482)
!5549 = !DILocation(line: 123, column: 12, scope: !5482)
!5550 = !DILocation(line: 125, column: 7, scope: !5482)
!5551 = distinct !{!5551, !5550, !5552}
!5552 = !DILocation(line: 132, column: 24, scope: !5482)
!5553 = !DILocation(line: 127, column: 27, scope: !5488)
!5554 = !DILocation(line: 127, column: 18, scope: !5488)
!5555 = !DILocation(line: 128, column: 15, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5488, file: !5428, line: 128, column: 15)
!5557 = !DILocation(line: 128, column: 41, scope: !5556)
!5558 = !DILocation(line: 128, column: 15, scope: !5488)
!5559 = !DILocation(line: 132, column: 21, scope: !5482)
!5560 = !DILocation(line: 131, column: 9, scope: !5561)
!5561 = !DILexicalBlockFile(scope: !5488, file: !5428, discriminator: 3)
!5562 = !DILocation(line: 135, column: 4, scope: !5483)
!5563 = !DILocation(line: 139, column: 7, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5427, file: !5428, line: 139, column: 7)
!5565 = !DILocation(line: 143, column: 5, scope: !5564)
!5566 = !DILocation(line: 144, column: 1, scope: !5427)
!5567 = distinct !DISubprogram(name: "hard_locale", scope: !5568, file: !5568, line: 38, type: !5569, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5571)
!5568 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!67, !60}
!5571 = !{!5572, !5573, !5574, !5575, !5582, !5583, !5585, !5586, !5588, !5589, !5591}
!5572 = !DILocalVariable(name: "category", arg: 1, scope: !5567, file: !5568, line: 38, type: !60)
!5573 = !DILocalVariable(name: "hard", scope: !5567, file: !5568, line: 40, type: !67)
!5574 = !DILocalVariable(name: "p", scope: !5567, file: !5568, line: 41, type: !51)
!5575 = !DILocalVariable(name: "__s1_len", scope: !5576, file: !5568, line: 47, type: !43)
!5576 = distinct !DILexicalBlock(scope: !5577, file: !5568, line: 47, column: 15)
!5577 = distinct !DILexicalBlock(scope: !5578, file: !5568, line: 47, column: 15)
!5578 = distinct !DILexicalBlock(scope: !5579, file: !5568, line: 46, column: 9)
!5579 = distinct !DILexicalBlock(scope: !5580, file: !5568, line: 45, column: 11)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !5568, line: 44, column: 5)
!5581 = distinct !DILexicalBlock(scope: !5567, file: !5568, line: 43, column: 7)
!5582 = !DILocalVariable(name: "__s2_len", scope: !5576, file: !5568, line: 47, type: !43)
!5583 = !DILocalVariable(name: "__s2", scope: !5584, file: !5568, line: 47, type: !48)
!5584 = distinct !DILexicalBlock(scope: !5576, file: !5568, line: 47, column: 15)
!5585 = !DILocalVariable(name: "__result", scope: !5584, file: !5568, line: 47, type: !60)
!5586 = !DILocalVariable(name: "__s1_len", scope: !5587, file: !5568, line: 47, type: !43)
!5587 = distinct !DILexicalBlock(scope: !5577, file: !5568, line: 47, column: 39)
!5588 = !DILocalVariable(name: "__s2_len", scope: !5587, file: !5568, line: 47, type: !43)
!5589 = !DILocalVariable(name: "__s2", scope: !5590, file: !5568, line: 47, type: !48)
!5590 = distinct !DILexicalBlock(scope: !5587, file: !5568, line: 47, column: 39)
!5591 = !DILocalVariable(name: "__result", scope: !5590, file: !5568, line: 47, type: !60)
!5592 = !DILocation(line: 38, column: 18, scope: !5567)
!5593 = !DILocation(line: 40, column: 8, scope: !5567)
!5594 = !DILocation(line: 41, column: 19, scope: !5567)
!5595 = !DILocation(line: 41, column: 15, scope: !5567)
!5596 = !DILocation(line: 43, column: 7, scope: !5581)
!5597 = !DILocation(line: 43, column: 7, scope: !5567)
!5598 = !DILocation(line: 47, column: 15, scope: !5576)
!5599 = !DILocation(line: 47, column: 15, scope: !5584)
!5600 = !DILocation(line: 47, column: 15, scope: !5601)
!5601 = !DILexicalBlockFile(scope: !5584, file: !5568, discriminator: 2)
!5602 = !DILocation(line: 47, column: 15, scope: !5603)
!5603 = !DILexicalBlockFile(scope: !5604, file: !5568, discriminator: 3)
!5604 = distinct !DILexicalBlock(scope: !5584, file: !5568, line: 47, column: 15)
!5605 = !DILocation(line: 47, column: 15, scope: !5606)
!5606 = !DILexicalBlockFile(scope: !5604, file: !5568, discriminator: 2)
!5607 = !DILocation(line: 47, column: 15, scope: !5608)
!5608 = !DILexicalBlockFile(scope: !5609, file: !5568, discriminator: 4)
!5609 = distinct !DILexicalBlock(scope: !5604, file: !5568, line: 47, column: 15)
!5610 = !DILocation(line: 47, column: 15, scope: !5611)
!5611 = !DILexicalBlockFile(scope: !5576, file: !5568, discriminator: 11)
!5612 = !DILocation(line: 47, column: 36, scope: !5613)
!5613 = !DILexicalBlockFile(scope: !5577, file: !5568, discriminator: 13)
!5614 = !DILocation(line: 47, column: 39, scope: !5587)
!5615 = !DILocation(line: 47, column: 39, scope: !5616)
!5616 = !DILexicalBlockFile(scope: !5587, file: !5568, discriminator: 26)
!5617 = !DILocation(line: 47, column: 59, scope: !5618)
!5618 = !DILexicalBlockFile(scope: !5577, file: !5568, discriminator: 27)
!5619 = !DILocation(line: 47, column: 15, scope: !5620)
!5620 = !DILexicalBlockFile(scope: !5578, file: !5568, discriminator: 27)
!5621 = !DILocation(line: 48, column: 13, scope: !5577)
!5622 = !DILocation(line: 71, column: 3, scope: !5567)
!5623 = distinct !DISubprogram(name: "locale_charset", scope: !661, file: !661, line: 393, type: !5624, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !318, variables: !5625)
!5624 = !DISubroutineType(types: !705)
!5625 = !{!5626, !5627, !5628, !5633}
!5626 = !DILocalVariable(name: "codeset", scope: !5623, file: !661, line: 395, type: !51)
!5627 = !DILocalVariable(name: "aliases", scope: !5623, file: !661, line: 396, type: !51)
!5628 = !DILocalVariable(name: "__s1_len", scope: !5629, file: !661, line: 592, type: !43)
!5629 = distinct !DILexicalBlock(scope: !5630, file: !661, line: 592, column: 9)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !661, line: 592, column: 9)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !661, line: 589, column: 3)
!5632 = distinct !DILexicalBlock(scope: !5623, file: !661, line: 589, column: 3)
!5633 = !DILocalVariable(name: "__s2_len", scope: !5629, file: !661, line: 592, type: !43)
!5634 = !DILocalVariable(name: "buf1", scope: !5635, file: !661, line: 196, type: !5702)
!5635 = distinct !DILexicalBlock(scope: !5636, file: !661, line: 194, column: 21)
!5636 = distinct !DILexicalBlock(scope: !5637, file: !661, line: 193, column: 19)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !661, line: 193, column: 19)
!5638 = distinct !DILexicalBlock(scope: !5639, file: !661, line: 188, column: 17)
!5639 = distinct !DILexicalBlock(scope: !5640, file: !661, line: 181, column: 19)
!5640 = distinct !DILexicalBlock(scope: !5641, file: !661, line: 177, column: 13)
!5641 = distinct !DILexicalBlock(scope: !5642, file: !661, line: 173, column: 15)
!5642 = distinct !DILexicalBlock(scope: !5643, file: !661, line: 161, column: 9)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !661, line: 157, column: 11)
!5644 = distinct !DILexicalBlock(scope: !5645, file: !661, line: 130, column: 5)
!5645 = distinct !DILexicalBlock(scope: !5646, file: !661, line: 129, column: 7)
!5646 = distinct !DISubprogram(name: "get_charset_aliases", scope: !661, file: !661, line: 124, type: !5624, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !318, variables: !5647)
!5647 = !{!5648, !5649, !5650, !5651, !5652, !5654, !5655, !5656, !5657, !5698, !5699, !5700, !5634, !5701, !5705, !5706, !5707}
!5648 = !DILocalVariable(name: "cp", scope: !5646, file: !661, line: 126, type: !51)
!5649 = !DILocalVariable(name: "dir", scope: !5644, file: !661, line: 132, type: !51)
!5650 = !DILocalVariable(name: "base", scope: !5644, file: !661, line: 133, type: !51)
!5651 = !DILocalVariable(name: "file_name", scope: !5644, file: !661, line: 134, type: !40)
!5652 = !DILocalVariable(name: "dir_len", scope: !5653, file: !661, line: 144, type: !43)
!5653 = distinct !DILexicalBlock(scope: !5644, file: !661, line: 143, column: 7)
!5654 = !DILocalVariable(name: "base_len", scope: !5653, file: !661, line: 145, type: !43)
!5655 = !DILocalVariable(name: "add_slash", scope: !5653, file: !661, line: 146, type: !60)
!5656 = !DILocalVariable(name: "fd", scope: !5642, file: !661, line: 162, type: !60)
!5657 = !DILocalVariable(name: "fp", scope: !5640, file: !661, line: 178, type: !5658)
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5659, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !5660)
!5660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !5661)
!5661 = !{!5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5660, file: !993, line: 242, baseType: !60, size: 32)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5660, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5660, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5660, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5660, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5660, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5660, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5660, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5660, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5660, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5660, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5660, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5660, file: !993, line: 260, baseType: !5675, size: 64, offset: 768)
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5676, size: 64)
!5676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !5677)
!5677 = !{!5678, !5679, !5681}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5676, file: !993, line: 157, baseType: !5675, size: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5676, file: !993, line: 158, baseType: !5680, size: 64, offset: 64)
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5676, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5660, file: !993, line: 262, baseType: !5680, size: 64, offset: 832)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5660, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5660, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5660, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5660, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5660, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5660, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5660, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5660, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5660, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5660, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5660, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5660, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5660, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5660, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5660, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!5698 = !DILocalVariable(name: "res_ptr", scope: !5638, file: !661, line: 190, type: !40)
!5699 = !DILocalVariable(name: "res_size", scope: !5638, file: !661, line: 191, type: !43)
!5700 = !DILocalVariable(name: "c", scope: !5635, file: !661, line: 195, type: !60)
!5701 = !DILocalVariable(name: "buf2", scope: !5635, file: !661, line: 197, type: !5702)
!5702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 408, elements: !5703)
!5703 = !{!5704}
!5704 = !DISubrange(count: 51)
!5705 = !DILocalVariable(name: "l1", scope: !5635, file: !661, line: 198, type: !43)
!5706 = !DILocalVariable(name: "l2", scope: !5635, file: !661, line: 198, type: !43)
!5707 = !DILocalVariable(name: "old_res_ptr", scope: !5635, file: !661, line: 199, type: !40)
!5708 = !DILocation(line: 196, column: 28, scope: !5635, inlinedAt: !5709)
!5709 = distinct !DILocation(line: 589, column: 18, scope: !5632)
!5710 = !DILocation(line: 197, column: 28, scope: !5635, inlinedAt: !5709)
!5711 = !DILocation(line: 403, column: 13, scope: !5623)
!5712 = !DILocation(line: 395, column: 15, scope: !5623)
!5713 = !DILocation(line: 584, column: 15, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5623, file: !661, line: 584, column: 7)
!5715 = !DILocation(line: 584, column: 7, scope: !5623)
!5716 = !DILocation(line: 128, column: 8, scope: !5646, inlinedAt: !5709)
!5717 = !DILocation(line: 126, column: 15, scope: !5646, inlinedAt: !5709)
!5718 = !DILocation(line: 129, column: 10, scope: !5645, inlinedAt: !5709)
!5719 = !DILocation(line: 129, column: 7, scope: !5646, inlinedAt: !5709)
!5720 = !DILocation(line: 138, column: 13, scope: !5644, inlinedAt: !5709)
!5721 = !DILocation(line: 132, column: 19, scope: !5644, inlinedAt: !5709)
!5722 = !DILocation(line: 139, column: 15, scope: !5723, inlinedAt: !5709)
!5723 = distinct !DILexicalBlock(scope: !5644, file: !661, line: 139, column: 11)
!5724 = !DILocation(line: 139, column: 23, scope: !5723, inlinedAt: !5709)
!5725 = !DILocation(line: 139, column: 26, scope: !5726, inlinedAt: !5709)
!5726 = !DILexicalBlockFile(scope: !5723, file: !661, discriminator: 1)
!5727 = !DILocation(line: 139, column: 33, scope: !5726, inlinedAt: !5709)
!5728 = !DILocation(line: 139, column: 11, scope: !5729, inlinedAt: !5709)
!5729 = !DILexicalBlockFile(scope: !5644, file: !661, discriminator: 1)
!5730 = !DILocation(line: 140, column: 9, scope: !5723, inlinedAt: !5709)
!5731 = !DILocation(line: 144, column: 26, scope: !5653, inlinedAt: !5709)
!5732 = !DILocation(line: 144, column: 16, scope: !5653, inlinedAt: !5709)
!5733 = !DILocation(line: 145, column: 16, scope: !5653, inlinedAt: !5709)
!5734 = !DILocation(line: 146, column: 34, scope: !5653, inlinedAt: !5709)
!5735 = !DILocation(line: 146, column: 38, scope: !5653, inlinedAt: !5709)
!5736 = !DILocation(line: 146, column: 42, scope: !5737, inlinedAt: !5709)
!5737 = !DILexicalBlockFile(scope: !5653, file: !661, discriminator: 1)
!5738 = !DILocation(line: 146, column: 41, scope: !5737, inlinedAt: !5709)
!5739 = !DILocation(line: 147, column: 48, scope: !5653, inlinedAt: !5709)
!5740 = !DILocation(line: 147, column: 46, scope: !5653, inlinedAt: !5709)
!5741 = !DILocation(line: 147, column: 69, scope: !5653, inlinedAt: !5709)
!5742 = !DILocation(line: 147, column: 30, scope: !5653, inlinedAt: !5709)
!5743 = !DILocation(line: 134, column: 13, scope: !5644, inlinedAt: !5709)
!5744 = !DILocation(line: 148, column: 13, scope: !5653, inlinedAt: !5709)
!5745 = !DILocation(line: 150, column: 13, scope: !5746, inlinedAt: !5709)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !661, line: 149, column: 11)
!5747 = distinct !DILexicalBlock(scope: !5653, file: !661, line: 148, column: 13)
!5748 = !DILocation(line: 151, column: 17, scope: !5746, inlinedAt: !5709)
!5749 = !DILocation(line: 152, column: 34, scope: !5750, inlinedAt: !5709)
!5750 = distinct !DILexicalBlock(scope: !5746, file: !661, line: 151, column: 17)
!5751 = !DILocation(line: 153, column: 41, scope: !5746, inlinedAt: !5709)
!5752 = !DILocation(line: 153, column: 13, scope: !5746, inlinedAt: !5709)
!5753 = !DILocation(line: 157, column: 11, scope: !5644, inlinedAt: !5709)
!5754 = !DILocation(line: 171, column: 16, scope: !5642, inlinedAt: !5709)
!5755 = !DILocation(line: 162, column: 15, scope: !5642, inlinedAt: !5709)
!5756 = !DILocation(line: 173, column: 18, scope: !5641, inlinedAt: !5709)
!5757 = !DILocation(line: 173, column: 15, scope: !5642, inlinedAt: !5709)
!5758 = !DILocation(line: 180, column: 20, scope: !5640, inlinedAt: !5709)
!5759 = !DILocation(line: 178, column: 21, scope: !5640, inlinedAt: !5709)
!5760 = !DILocation(line: 181, column: 22, scope: !5639, inlinedAt: !5709)
!5761 = !DILocation(line: 181, column: 19, scope: !5640, inlinedAt: !5709)
!5762 = !DILocation(line: 190, column: 25, scope: !5638, inlinedAt: !5709)
!5763 = !DILocation(line: 184, column: 19, scope: !5764, inlinedAt: !5709)
!5764 = distinct !DILexicalBlock(scope: !5639, file: !661, line: 182, column: 17)
!5765 = !DILocation(line: 186, column: 17, scope: !5764, inlinedAt: !5709)
!5766 = !DILocation(line: 191, column: 26, scope: !5638, inlinedAt: !5709)
!5767 = !DILocation(line: 196, column: 23, scope: !5635, inlinedAt: !5709)
!5768 = !DILocation(line: 197, column: 23, scope: !5635, inlinedAt: !5709)
!5769 = !DILocalVariable(name: "__fp", arg: 1, scope: !5770, file: !1117, line: 63, type: !5658)
!5770 = distinct !DISubprogram(name: "getc_unlocked", scope: !1117, file: !1117, line: 63, type: !5771, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !318, variables: !5773)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!60, !5658}
!5773 = !{!5769}
!5774 = !DILocation(line: 63, column: 22, scope: !5770, inlinedAt: !5775)
!5775 = distinct !DILocation(line: 201, column: 27, scope: !5635, inlinedAt: !5709)
!5776 = !DILocation(line: 65, column: 10, scope: !5770, inlinedAt: !5775)
!5777 = !DILocation(line: 65, column: 10, scope: !5778, inlinedAt: !5775)
!5778 = !DILexicalBlockFile(scope: !5770, file: !1117, discriminator: 1)
!5779 = !DILocation(line: 65, column: 10, scope: !5780, inlinedAt: !5775)
!5780 = !DILexicalBlockFile(scope: !5770, file: !1117, discriminator: 2)
!5781 = !DILocation(line: 65, column: 10, scope: !5782, inlinedAt: !5775)
!5782 = !DILexicalBlockFile(scope: !5770, file: !1117, discriminator: 3)
!5783 = !DILocation(line: 195, column: 27, scope: !5635, inlinedAt: !5709)
!5784 = !DILocation(line: 202, column: 27, scope: !5635, inlinedAt: !5709)
!5785 = !DILocation(line: 63, column: 22, scope: !5770, inlinedAt: !5786)
!5786 = distinct !DILocation(line: 210, column: 33, scope: !5787, inlinedAt: !5709)
!5787 = distinct !DILexicalBlock(scope: !5788, file: !661, line: 207, column: 25)
!5788 = distinct !DILexicalBlock(scope: !5635, file: !661, line: 206, column: 27)
!5789 = !DILocation(line: 65, column: 10, scope: !5770, inlinedAt: !5786)
!5790 = !DILocation(line: 65, column: 10, scope: !5778, inlinedAt: !5786)
!5791 = !DILocation(line: 65, column: 10, scope: !5780, inlinedAt: !5786)
!5792 = !DILocation(line: 65, column: 10, scope: !5782, inlinedAt: !5786)
!5793 = !DILocation(line: 210, column: 29, scope: !5794, inlinedAt: !5709)
!5794 = !DILexicalBlockFile(scope: !5787, file: !661, discriminator: 1)
!5795 = distinct !{!5795, !5796, !5797}
!5796 = !DILocation(line: 193, column: 19, scope: !5637)
!5797 = !DILocation(line: 241, column: 21, scope: !5637)
!5798 = !DILocation(line: 216, column: 23, scope: !5635, inlinedAt: !5709)
!5799 = !DILocation(line: 217, column: 27, scope: !5800, inlinedAt: !5709)
!5800 = distinct !DILexicalBlock(scope: !5635, file: !661, line: 217, column: 27)
!5801 = !DILocation(line: 217, column: 64, scope: !5800, inlinedAt: !5709)
!5802 = !DILocation(line: 217, column: 27, scope: !5635, inlinedAt: !5709)
!5803 = !DILocation(line: 219, column: 28, scope: !5635, inlinedAt: !5709)
!5804 = !DILocation(line: 198, column: 30, scope: !5635, inlinedAt: !5709)
!5805 = !DILocation(line: 220, column: 28, scope: !5635, inlinedAt: !5709)
!5806 = !DILocation(line: 198, column: 34, scope: !5635, inlinedAt: !5709)
!5807 = !DILocation(line: 199, column: 29, scope: !5635, inlinedAt: !5709)
!5808 = !DILocation(line: 222, column: 36, scope: !5809, inlinedAt: !5709)
!5809 = distinct !DILexicalBlock(scope: !5635, file: !661, line: 222, column: 27)
!5810 = !DILocation(line: 222, column: 27, scope: !5635, inlinedAt: !5709)
!5811 = !DILocation(line: 225, column: 63, scope: !5812, inlinedAt: !5709)
!5812 = distinct !DILexicalBlock(scope: !5809, file: !661, line: 223, column: 25)
!5813 = !DILocation(line: 225, column: 46, scope: !5812, inlinedAt: !5709)
!5814 = !DILocation(line: 226, column: 25, scope: !5812, inlinedAt: !5709)
!5815 = !DILocation(line: 229, column: 36, scope: !5816, inlinedAt: !5709)
!5816 = distinct !DILexicalBlock(scope: !5809, file: !661, line: 228, column: 25)
!5817 = !DILocation(line: 230, column: 73, scope: !5816, inlinedAt: !5709)
!5818 = !DILocation(line: 230, column: 46, scope: !5816, inlinedAt: !5709)
!5819 = !DILocation(line: 232, column: 35, scope: !5820, inlinedAt: !5709)
!5820 = distinct !DILexicalBlock(scope: !5635, file: !661, line: 232, column: 27)
!5821 = !DILocation(line: 232, column: 27, scope: !5635, inlinedAt: !5709)
!5822 = !DILocation(line: 236, column: 27, scope: !5823, inlinedAt: !5709)
!5823 = distinct !DILexicalBlock(scope: !5820, file: !661, line: 233, column: 25)
!5824 = !DILocation(line: 237, column: 27, scope: !5823, inlinedAt: !5709)
!5825 = !DILocation(line: 239, column: 39, scope: !5635, inlinedAt: !5709)
!5826 = !DILocation(line: 239, column: 50, scope: !5635, inlinedAt: !5709)
!5827 = !DILocation(line: 239, column: 61, scope: !5635, inlinedAt: !5709)
!5828 = !DILocalVariable(name: "__dest", arg: 1, scope: !5829, file: !5830, line: 107, type: !5833)
!5829 = distinct !DISubprogram(name: "strcpy", scope: !5830, file: !5830, line: 107, type: !5831, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !318, variables: !5835)
!5830 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!40, !5833, !5834}
!5833 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!5834 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!5835 = !{!5828, !5836}
!5836 = !DILocalVariable(name: "__src", arg: 2, scope: !5829, file: !5830, line: 107, type: !5834)
!5837 = !DILocation(line: 107, column: 1, scope: !5829, inlinedAt: !5838)
!5838 = distinct !DILocation(line: 239, column: 23, scope: !5635, inlinedAt: !5709)
!5839 = !DILocation(line: 109, column: 49, scope: !5829, inlinedAt: !5838)
!5840 = !DILocation(line: 109, column: 10, scope: !5829, inlinedAt: !5838)
!5841 = !DILocation(line: 107, column: 1, scope: !5829, inlinedAt: !5842)
!5842 = distinct !DILocation(line: 240, column: 23, scope: !5635, inlinedAt: !5709)
!5843 = !DILocation(line: 109, column: 49, scope: !5829, inlinedAt: !5842)
!5844 = !DILocation(line: 109, column: 10, scope: !5829, inlinedAt: !5842)
!5845 = !DILocation(line: 241, column: 21, scope: !5636, inlinedAt: !5709)
!5846 = !DILocation(line: 242, column: 19, scope: !5638, inlinedAt: !5709)
!5847 = !DILocation(line: 243, column: 32, scope: !5848, inlinedAt: !5709)
!5848 = distinct !DILexicalBlock(scope: !5638, file: !661, line: 243, column: 23)
!5849 = !DILocation(line: 243, column: 23, scope: !5638, inlinedAt: !5709)
!5850 = !DILocation(line: 247, column: 33, scope: !5851, inlinedAt: !5709)
!5851 = distinct !DILexicalBlock(scope: !5848, file: !661, line: 246, column: 21)
!5852 = !DILocation(line: 247, column: 45, scope: !5851, inlinedAt: !5709)
!5853 = !DILocation(line: 253, column: 11, scope: !5642, inlinedAt: !5709)
!5854 = !DILocation(line: 377, column: 23, scope: !5644, inlinedAt: !5709)
!5855 = !DILocation(line: 378, column: 5, scope: !5644, inlinedAt: !5709)
!5856 = !DILocation(line: 396, column: 15, scope: !5623)
!5857 = !DILocation(line: 590, column: 8, scope: !5631)
!5858 = !DILocation(line: 590, column: 17, scope: !5631)
!5859 = !DILocation(line: 589, column: 3, scope: !5860)
!5860 = !DILexicalBlockFile(scope: !5632, file: !661, discriminator: 1)
!5861 = !DILocation(line: 592, column: 9, scope: !5629)
!5862 = !DILocation(line: 592, column: 35, scope: !5630)
!5863 = !DILocation(line: 593, column: 9, scope: !5630)
!5864 = !DILocation(line: 593, column: 24, scope: !5865)
!5865 = !DILexicalBlockFile(scope: !5630, file: !661, discriminator: 1)
!5866 = !DILocation(line: 593, column: 31, scope: !5865)
!5867 = !DILocation(line: 593, column: 34, scope: !5868)
!5868 = !DILexicalBlockFile(scope: !5630, file: !661, discriminator: 2)
!5869 = !DILocation(line: 593, column: 45, scope: !5868)
!5870 = !DILocation(line: 592, column: 9, scope: !5871)
!5871 = !DILexicalBlockFile(scope: !5631, file: !661, discriminator: 1)
!5872 = !DILocation(line: 595, column: 29, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5630, file: !661, line: 594, column: 7)
!5874 = !DILocation(line: 595, column: 27, scope: !5873)
!5875 = !DILocation(line: 595, column: 46, scope: !5873)
!5876 = !DILocation(line: 596, column: 9, scope: !5873)
!5877 = !DILocation(line: 591, column: 19, scope: !5631)
!5878 = !DILocation(line: 591, column: 36, scope: !5631)
!5879 = !DILocation(line: 591, column: 16, scope: !5631)
!5880 = !DILocation(line: 591, column: 52, scope: !5871)
!5881 = !DILocation(line: 591, column: 69, scope: !5631)
!5882 = !DILocation(line: 591, column: 49, scope: !5631)
!5883 = distinct !{!5883, !5884, !5885}
!5884 = !DILocation(line: 589, column: 3, scope: !5632)
!5885 = !DILocation(line: 597, column: 7, scope: !5632)
!5886 = !DILocation(line: 602, column: 7, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5623, file: !661, line: 602, column: 7)
!5888 = !DILocation(line: 602, column: 18, scope: !5887)
!5889 = !DILocation(line: 602, column: 7, scope: !5623)
!5890 = !DILocation(line: 612, column: 3, scope: !5623)
!5891 = distinct !DISubprogram(name: "freadahead", scope: !5892, file: !5892, line: 26, type: !5893, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, unit: !718, variables: !5935)
!5892 = !DIFile(filename: "lib/freadahead.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!43, !5895}
!5895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5896, size: 64)
!5896 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !991, line: 49, baseType: !5897)
!5897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !993, line: 241, size: 1728, elements: !5898)
!5898 = !{!5899, !5900, !5901, !5902, !5903, !5904, !5905, !5906, !5907, !5908, !5909, !5910, !5911, !5919, !5920, !5921, !5922, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5934}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5897, file: !993, line: 242, baseType: !60, size: 32)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5897, file: !993, line: 247, baseType: !40, size: 64, offset: 64)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5897, file: !993, line: 248, baseType: !40, size: 64, offset: 128)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5897, file: !993, line: 249, baseType: !40, size: 64, offset: 192)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5897, file: !993, line: 250, baseType: !40, size: 64, offset: 256)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5897, file: !993, line: 251, baseType: !40, size: 64, offset: 320)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5897, file: !993, line: 252, baseType: !40, size: 64, offset: 384)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5897, file: !993, line: 253, baseType: !40, size: 64, offset: 448)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5897, file: !993, line: 254, baseType: !40, size: 64, offset: 512)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5897, file: !993, line: 256, baseType: !40, size: 64, offset: 576)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5897, file: !993, line: 257, baseType: !40, size: 64, offset: 640)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5897, file: !993, line: 258, baseType: !40, size: 64, offset: 704)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5897, file: !993, line: 260, baseType: !5912, size: 64, offset: 768)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !993, line: 156, size: 192, elements: !5914)
!5914 = !{!5915, !5916, !5918}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5913, file: !993, line: 157, baseType: !5912, size: 64)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5913, file: !993, line: 158, baseType: !5917, size: 64, offset: 64)
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5913, file: !993, line: 162, baseType: !60, size: 32, offset: 128)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5897, file: !993, line: 262, baseType: !5917, size: 64, offset: 832)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5897, file: !993, line: 264, baseType: !60, size: 32, offset: 896)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5897, file: !993, line: 268, baseType: !60, size: 32, offset: 928)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5897, file: !993, line: 270, baseType: !1019, size: 64, offset: 960)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5897, file: !993, line: 274, baseType: !178, size: 16, offset: 1024)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5897, file: !993, line: 275, baseType: !1024, size: 8, offset: 1040)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5897, file: !993, line: 276, baseType: !1026, size: 8, offset: 1048)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5897, file: !993, line: 280, baseType: !1030, size: 64, offset: 1088)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5897, file: !993, line: 289, baseType: !1033, size: 64, offset: 1152)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5897, file: !993, line: 297, baseType: !42, size: 64, offset: 1216)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5897, file: !993, line: 298, baseType: !42, size: 64, offset: 1280)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5897, file: !993, line: 299, baseType: !42, size: 64, offset: 1344)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5897, file: !993, line: 300, baseType: !42, size: 64, offset: 1408)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5897, file: !993, line: 302, baseType: !43, size: 64, offset: 1472)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5897, file: !993, line: 303, baseType: !60, size: 32, offset: 1536)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5897, file: !993, line: 305, baseType: !1041, size: 160, offset: 1568)
!5935 = !{!5936}
!5936 = !DILocalVariable(name: "fp", arg: 1, scope: !5891, file: !5892, line: 26, type: !5895)
!5937 = !DILocation(line: 26, column: 19, scope: !5891)
!5938 = !DILocation(line: 29, column: 11, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5891, file: !5892, line: 29, column: 7)
!5940 = !DILocation(line: 29, column: 31, scope: !5939)
!5941 = !DILocation(line: 29, column: 25, scope: !5939)
!5942 = !DILocation(line: 29, column: 7, scope: !5891)
!5943 = !DILocation(line: 31, column: 15, scope: !5891)
!5944 = !DILocation(line: 31, column: 34, scope: !5891)
!5945 = !DILocation(line: 31, column: 28, scope: !5891)
!5946 = !DILocation(line: 32, column: 17, scope: !5891)
!5947 = !DILocation(line: 32, column: 24, scope: !5891)
!5948 = !DILocation(line: 32, column: 13, scope: !5891)
!5949 = !DILocation(line: 32, column: 46, scope: !5950)
!5950 = !DILexicalBlockFile(scope: !5891, file: !5892, discriminator: 1)
!5951 = !{!1125, !739, i64 88}
!5952 = !DILocation(line: 32, column: 65, scope: !5950)
!5953 = !DILocation(line: 32, column: 59, scope: !5950)
!5954 = !DILocation(line: 32, column: 13, scope: !5950)
!5955 = !DILocation(line: 32, column: 13, scope: !5956)
!5956 = !DILexicalBlockFile(scope: !5891, file: !5892, discriminator: 3)
!5957 = !DILocation(line: 32, column: 10, scope: !5956)
!5958 = !DILocation(line: 31, column: 3, scope: !5950)
!5959 = !DILocation(line: 94, column: 1, scope: !5891)
