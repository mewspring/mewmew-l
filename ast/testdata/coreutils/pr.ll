; ModuleID = 'coreutils-8.27/src/pr.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }
%struct.COLUMN = type { %struct._IO_FILE*, i8*, i32, i1 (%struct.COLUMN*)*, void (i8)*, i32, i32, i32, i32, i8, i8 }
%struct.timespec = type { i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.timezone = type { i32, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@short_options = internal constant [53 x i8] c"-0123456789D:FJN:S::TW:abcde::fh:i::l:mn::o:rs::tvw:\00", align 16
@long_options = internal constant [27 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 2, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i32 2, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 74 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i32 2, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 78 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 2, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 2, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i32 1, i32* null, i32 87 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@first_page_number = internal unnamed_addr global i64 0, align 8
@optarg = external local_unnamed_addr global i8*, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"'--pages=FIRST_PAGE[:LAST_PAGE]' missing argument\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid page range %s\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@columns = internal global i32 1, align 4
@explicit_columns = internal unnamed_addr global i1 false, align 1
@print_across_flag = internal unnamed_addr global i1 false, align 1
@storing_columns = internal unnamed_addr global i1 false, align 1
@balance_columns = internal unnamed_addr global i1 false, align 1
@use_cntrl_prefix = internal unnamed_addr global i1 false, align 1
@double_space = internal unnamed_addr global i1 false, align 1
@date_format = internal unnamed_addr global i8* null, align 8
@input_tab_char = internal global i8 9, align 1
@chars_per_input_tab = internal global i32 8, align 4
@untabify_input = internal unnamed_addr global i1 false, align 1
@use_form_feed = internal unnamed_addr global i1 false, align 1
@custom_header = internal unnamed_addr global i8* null, align 8
@output_tab_char = internal global i8 9, align 1
@chars_per_output_tab = internal global i32 8, align 4
@tabify_output = internal unnamed_addr global i1 false, align 1
@join_lines = internal unnamed_addr global i8 0, align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"'-l PAGE_LENGTH' invalid number of lines\00", align 1
@lines_per_page = internal global i32 66, align 4
@parallel_files = internal unnamed_addr global i1 false, align 1
@numbered_lines = internal unnamed_addr global i1 false, align 1
@number_separator = internal global i8 9, align 1
@chars_per_number = internal global i32 5, align 4
@skip_count = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"'-N NUMBER' invalid starting line number\00", align 1
@start_line_num = internal global i32 1, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"'-o MARGIN' invalid line offset\00", align 1
@chars_per_margin = internal global i32 0, align 4
@ignore_failed_opens = internal unnamed_addr global i1 false, align 1
@use_col_separator = internal unnamed_addr global i8 0, align 1
@col_sep_length = internal unnamed_addr global i32 0, align 4
@col_sep_string = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), align 8
@extremities = internal unnamed_addr global i1 false, align 1
@keep_FF = internal unnamed_addr global i1 false, align 1
@use_esc_sequence = internal unnamed_addr global i1 false, align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"'-w PAGE_WIDTH' invalid number of characters\00", align 1
@truncate_lines = internal unnamed_addr global i1 false, align 1
@chars_per_line = internal global i32 72, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"'-W PAGE_WIDTH' invalid number of characters\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Pete TerMaat\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Roland Huebner\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%b %e %H:%M %Y\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@localtz = internal unnamed_addr global %struct.tm_zone* null, align 8
@.str.18 = private unnamed_addr constant [59 x i8] c"cannot specify number of columns when printing in parallel\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"cannot specify both printing across and printing in parallel\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@number_buff = internal unnamed_addr global i8* null, align 8
@clump_buff = internal unnamed_addr global i8* null, align 8
@column_vector = internal unnamed_addr global %struct.COLUMN* null, align 8
@line_vector = internal unnamed_addr global i32* null, align 8
@end_vector = internal unnamed_addr global i32* null, align 8
@buff = internal unnamed_addr global i8* null, align 8
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@failed_opens = internal unnamed_addr global i1 false, align 1
@lines_per_body = internal unnamed_addr global i32 0, align 4
@.str.69 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c" \00", align 1
@line_count = internal unnamed_addr global i32 1, align 4
@number_width = internal unnamed_addr global i32 0, align 4
@chars_per_column = internal unnamed_addr global i32 0, align 4
@.str.68 = private unnamed_addr constant [22 x i8] c"page width too narrow\00", align 1
@total_files = internal unnamed_addr global i32 0, align 4
@files_ready_to_read = internal unnamed_addr global i32 0, align 4
@buff_allocated = internal global i64 0, align 8
@last_line = internal unnamed_addr global i1 false, align 1
@.str.75 = private unnamed_addr constant [48 x i8] c"starting page number %lu exceeds page count %lu\00", align 1
@page_number = internal unnamed_addr global i64 0, align 8
@line_number = internal unnamed_addr global i32 0, align 4
@buff_current = internal unnamed_addr global i32 0, align 4
@input_position = internal unnamed_addr global i32 0, align 4
@print_a_header = internal unnamed_addr global i1 false, align 1
@pad_vertically = internal unnamed_addr global i8 0, align 1
@output_position = internal unnamed_addr global i32 0, align 4
@spaces_not_printed = internal unnamed_addr global i32 0, align 4
@separators_not_printed = internal unnamed_addr global i32 0, align 4
@align_empty_cols = internal unnamed_addr global i1 false, align 1
@empty_line = internal unnamed_addr global i1 false, align 1
@FF_only = internal unnamed_addr global i1 false, align 1
@padding_not_printed = internal unnamed_addr global i32 0, align 4
@print_a_FF = internal unnamed_addr global i1 false, align 1
@last_page_number = internal unnamed_addr global i64 -1, align 8
@.str.80 = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"page number overflow\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"Page %lu\00", align 1
@header_width_available = internal unnamed_addr global i32 0, align 4
@date_text = internal unnamed_addr global i8* null, align 8
@file_text = internal unnamed_addr global i8* null, align 8
@.str.78 = private unnamed_addr constant [21 x i8] c"\0A\0A%*s%s%*s%s%*s%s\0A\0A\0A\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"%03o\00", align 1
@init_header.timespec = internal global %struct.timespec zeroinitializer, align 8
@.str.74 = private unnamed_addr constant [8 x i8] c"%s.%09d\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"Paginate or columnate FILE(s) for printing.\0A\00", align 1
@.str.81 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.82 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.24 = private unnamed_addr constant [334 x i8] c"  +FIRST_PAGE[:LAST_PAGE], --pages=FIRST_PAGE[:LAST_PAGE]\0A                    begin [stop] printing with page FIRST_[LAST_]PAGE\0A  -COLUMN, --columns=COLUMN\0A                    output COLUMN columns and print columns down,\0A                    unless -a is used. Balance number of lines in the\0A                    columns on each page\0A\00", align 1
@.str.25 = private unnamed_addr constant [270 x i8] c"  -a, --across      print columns across rather than down, used together\0A                    with -COLUMN\0A  -c, --show-control-chars\0A                    use hat notation (^G) and octal backslash notation\0A  -d, --double-space\0A                    double space the output\0A\00", align 1
@.str.26 = private unnamed_addr constant [400 x i8] c"  -D, --date-format=FORMAT\0A                    use FORMAT for the header date\0A  -e[CHAR[WIDTH]], --expand-tabs[=CHAR[WIDTH]]\0A                    expand input CHARs (TABs) to tab WIDTH (8)\0A  -F, -f, --form-feed\0A                    use form feeds instead of newlines to separate pages\0A                    (by a 3-line page header with -F or a 5-line header\0A                    and trailer without -F)\0A\00", align 1
@.str.27 = private unnamed_addr constant [427 x i8] c"  -h, --header=HEADER\0A                    use a centered HEADER instead of filename in page header,\0A                    -h \22\22 prints a blank line, don't use -h\22\22\0A  -i[CHAR[WIDTH]], --output-tabs[=CHAR[WIDTH]]\0A                    replace spaces with CHARs (TABs) to tab WIDTH (8)\0A  -J, --join-lines  merge full lines, turns off -W line truncation, no column\0A                    alignment, --sep-string[=STRING] sets separators\0A\00", align 1
@.str.28 = private unnamed_addr constant [220 x i8] c"  -l, --length=PAGE_LENGTH\0A                    set the page length to PAGE_LENGTH (66) lines\0A                    (default number of lines of text 56, and with -F 63).\0A                    implies -t if PAGE_LENGTH <= 10\0A\00", align 1
@.str.29 = private unnamed_addr constant [144 x i8] c"  -m, --merge       print all files in parallel, one in each column,\0A                    truncate lines, but join lines of full length with -J\0A\00", align 1
@.str.30 = private unnamed_addr constant [346 x i8] c"  -n[SEP[DIGITS]], --number-lines[=SEP[DIGITS]]\0A                    number lines, use DIGITS (5) digits, then SEP (TAB),\0A                    default counting starts with 1st line of input file\0A  -N, --first-line-number=NUMBER\0A                    start counting with NUMBER at 1st line of first\0A                    page printed (see +FIRST_PAGE)\0A\00", align 1
@.str.31 = private unnamed_addr constant [253 x i8] c"  -o, --indent=MARGIN\0A                    offset each line with MARGIN (zero) spaces, do not\0A                    affect -w or -W, MARGIN will be added to PAGE_WIDTH\0A  -r, --no-file-warnings\0A                    omit warning when a file cannot be opened\0A\00", align 1
@.str.32 = private unnamed_addr constant [326 x i8] c"  -s[CHAR], --separator[=CHAR]\0A                    separate columns by a single character, default for CHAR\0A                    is the <TAB> character without -w and 'no char' with -w.\0A                    -s[CHAR] turns off line truncation of all 3 column\0A                    options (-COLUMN|-a -COLUMN|-m) except -w is set\0A\00", align 1
@.str.33 = private unnamed_addr constant [236 x i8] c"  -S[STRING], --sep-string[=STRING]\0A                    separate columns by STRING,\0A                    without -S: Default separator <TAB> with -J and <space>\0A                    otherwise (same as -S\22 \22), no effect on column options\0A\00", align 1
@.str.34 = private unnamed_addr constant [104 x i8] c"  -t, --omit-header  omit page headers and trailers;\0A                     implied if PAGE_LENGTH <= 10\0A\00", align 1
@.str.35 = private unnamed_addr constant [401 x i8] c"  -T, --omit-pagination\0A                    omit page headers and trailers, eliminate any pagination\0A                    by form feeds set in input files\0A  -v, --show-nonprinting\0A                    use octal backslash notation\0A  -w, --width=PAGE_WIDTH\0A                    set page width to PAGE_WIDTH (72) characters for\0A                    multiple text-column output only, -s[char] turns off (72)\0A\00", align 1
@.str.36 = private unnamed_addr constant [215 x i8] c"  -W, --page-width=PAGE_WIDTH\0A                    set page width to PAGE_WIDTH (72) characters always,\0A                    truncate lines, except -J option is set, no interference\0A                    with -S or -s\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.92 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.94 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"'-%c' extra characters or invalid number in the argument: %s\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"pages\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"across\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"show-control-chars\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"double-space\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"date-format\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"expand-tabs\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"form-feed\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"output-tabs\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"join-lines\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"number-lines\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"first-line-number\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"no-file-warnings\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"sep-string\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"omit-header\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"omit-pagination\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"page-width\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), align 8
@.str.71 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.1.96 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.105 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.106 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.107 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.111, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.113, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.114, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.116, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.117, i32 0, i32 0), i8* null], align 16
@.str.108 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.109 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.110 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.111 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.112 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.113 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.114 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.115 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.116 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.117 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.118 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.119 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.120 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.121 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.122 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.123 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.124 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.133 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.134 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.135 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.136 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.137 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.141 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.142 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.143 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.144 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.145 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.146 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.147 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.148 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.149 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.150 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.151 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.152 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.153 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.156 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.157 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.158 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.159 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.160 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.161 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.174 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.181 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.182 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.185 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.186 = private unnamed_addr constant [14 x i8] c"lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1
@switch.table = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.190, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.191, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.191, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.192, i64 0, i64 0)]
@.str.189 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3.190 = private unnamed_addr constant [29 x i8] c"%s%s argument '%s' too large\00", align 1
@.str.2.191 = private unnamed_addr constant [37 x i8] c"invalid suffix in %s%s argument '%s'\00", align 1
@.str.1.192 = private unnamed_addr constant [27 x i8] c"invalid %s%s argument '%s'\00", align 1
@.str.195 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.196 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.213 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.214 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.221 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.222 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.223 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.224 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.225 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.226 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.227 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@__mon_yday = internal unnamed_addr constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@localtime_offset = internal global i64 0, align 8

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #10
  store i64 0, i64* %3, align 8
  %6 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %6) #10
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #10
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #10
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #10
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %2
  %13 = add nsw i32 %0, -1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call noalias i8* @xmalloc(i64 %15) #10
  br label %17

; <label>:17:                                     ; preds = %2, %12
  %18 = phi i8* [ %16, %12 ], [ null, %2 ]
  %19 = bitcast i8* %18 to i8**
  %20 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %20) #10
  store i32 -1, i32* %4, align 4
  %21 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([27 x %struct.option], [27 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %4) #10
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %17
  br label %25

; <label>:24:                                     ; preds = %17
  call void @llvm.lifetime.end(i64 4, i8* nonnull %20) #10
  br label %177

; <label>:25:                                     ; preds = %23, %162
  %26 = phi i32 [ %169, %162 ], [ %21, %23 ]
  %27 = phi i64 [ %168, %162 ], [ 0, %23 ]
  %28 = phi i8* [ %167, %162 ], [ null, %23 ]
  %29 = phi i32 [ %166, %162 ], [ 0, %23 ]
  %30 = phi i8 [ %165, %162 ], [ 0, %23 ]
  %31 = phi i8 [ %164, %162 ], [ 0, %23 ]
  %32 = phi i8 [ %163, %162 ], [ 0, %23 ]
  %33 = add i32 %26, -48
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %46

; <label>:35:                                     ; preds = %25
  %36 = add i64 %27, 1
  %37 = load i64, i64* %3, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %35
  %40 = call i8* @x2realloc(i8* %28, i64* nonnull %3) #10
  br label %41

; <label>:41:                                     ; preds = %35, %39
  %42 = phi i8* [ %40, %39 ], [ %28, %35 ]
  %43 = trunc i32 %26 to i8
  %44 = getelementptr inbounds i8, i8* %42, i64 %27
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %36
  store i8 0, i8* %45, align 1
  br label %162

; <label>:46:                                     ; preds = %25
  switch i32 %26, label %161 [
    i32 1, label %47
    i32 129, label %63
    i32 128, label %75
    i32 97, label %80
    i32 98, label %81
    i32 99, label %82
    i32 100, label %83
    i32 68, label %84
    i32 101, label %86
    i32 102, label %91
    i32 70, label %91
    i32 104, label %92
    i32 105, label %94
    i32 74, label %99
    i32 108, label %100
    i32 109, label %105
    i32 110, label %106
    i32 78, label %110
    i32 111, label %115
    i32 114, label %120
    i32 115, label %121
    i32 83, label %133
    i32 116, label %142
    i32 84, label %143
    i32 118, label %144
    i32 119, label %145
    i32 87, label %152
    i32 -130, label %157
    i32 -131, label %158
  ]

; <label>:47:                                     ; preds = %46
  %48 = load i64, i64* @first_page_number, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %57

; <label>:50:                                     ; preds = %47
  %51 = load i8*, i8** @optarg, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp eq i8 %52, 43
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds i8, i8* %51, i64 1
  %56 = call fastcc zeroext i1 @first_last_page(i32 -2, i8 signext 43, i8* %55)
  br i1 %56, label %162, label %57

; <label>:57:                                     ; preds = %54, %50, %47
  %58 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  %59 = add i32 %29, 1
  %60 = zext i32 %29 to i64
  %61 = getelementptr inbounds i8*, i8** %19, i64 %60
  %62 = bitcast i8** %61 to i64*
  store i64 %58, i64* %62, align 8
  br label %162

; <label>:63:                                     ; preds = %46
  %64 = load i8*, i8** @optarg, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %63
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %67) #10
  unreachable

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = call fastcc zeroext i1 @first_last_page(i32 %69, i8 signext 0, i8* nonnull %64)
  br i1 %70, label %162, label %71

; <label>:71:                                     ; preds = %68
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 5) #10
  %73 = load i8*, i8** @optarg, align 8
  %74 = call i8* @quote(i8* %73) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %72, i8* %74) #10
  unreachable

; <label>:75:                                     ; preds = %46
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i64 0, i64 0), i32 5) #10
  %78 = call i64 @xdectoimax(i8* %76, i64 1, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %77, i32 0) #10
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @columns, align 4
  store i1 true, i1* @explicit_columns, align 1
  call void @free(i8* %28) #10
  store i64 0, i64* %3, align 8
  br label %162

; <label>:80:                                     ; preds = %46
  store i1 true, i1* @print_across_flag, align 1
  store i1 true, i1* @storing_columns, align 1
  br label %162

; <label>:81:                                     ; preds = %46
  store i1 true, i1* @balance_columns, align 1
  br label %162

; <label>:82:                                     ; preds = %46
  store i1 true, i1* @use_cntrl_prefix, align 1
  br label %162

; <label>:83:                                     ; preds = %46
  store i1 true, i1* @double_space, align 1
  br label %162

; <label>:84:                                     ; preds = %46
  %85 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %85, i64* bitcast (i8** @date_format to i64*), align 8
  br label %162

; <label>:86:                                     ; preds = %46
  %87 = load i8*, i8** @optarg, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %90, label %89

; <label>:89:                                     ; preds = %86
  call fastcc void @getoptarg(i8* nonnull %87, i8 signext 101, i8* nonnull @input_tab_char, i32* nonnull @chars_per_input_tab)
  br label %90

; <label>:90:                                     ; preds = %86, %89
  store i1 true, i1* @untabify_input, align 1
  br label %162

; <label>:91:                                     ; preds = %46, %46
  store i1 true, i1* @use_form_feed, align 1
  br label %162

; <label>:92:                                     ; preds = %46
  %93 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %93, i64* bitcast (i8** @custom_header to i64*), align 8
  br label %162

; <label>:94:                                     ; preds = %46
  %95 = load i8*, i8** @optarg, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %98, label %97

; <label>:97:                                     ; preds = %94
  call fastcc void @getoptarg(i8* nonnull %95, i8 signext 105, i8* nonnull @output_tab_char, i32* nonnull @chars_per_output_tab)
  br label %98

; <label>:98:                                     ; preds = %94, %97
  store i1 true, i1* @tabify_output, align 1
  br label %162

; <label>:99:                                     ; preds = %46
  store i8 1, i8* @join_lines, align 1
  br label %162

; <label>:100:                                    ; preds = %46
  %101 = load i8*, i8** @optarg, align 8
  %102 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 5) #10
  %103 = call i64 @xdectoimax(i8* %101, i64 1, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %102, i32 0) #10
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* @lines_per_page, align 4
  br label %162

; <label>:105:                                    ; preds = %46
  store i1 true, i1* @parallel_files, align 1
  store i1 true, i1* @storing_columns, align 1
  br label %162

; <label>:106:                                    ; preds = %46
  store i1 true, i1* @numbered_lines, align 1
  %107 = load i8*, i8** @optarg, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %162, label %109

; <label>:109:                                    ; preds = %106
  call fastcc void @getoptarg(i8* nonnull %107, i8 signext 110, i8* nonnull @number_separator, i32* nonnull @chars_per_number)
  br label %162

; <label>:110:                                    ; preds = %46
  store i1 true, i1* @skip_count, align 1
  %111 = load i8*, i8** @optarg, align 8
  %112 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 5) #10
  %113 = call i64 @xdectoimax(i8* %111, i64 -2147483648, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %112, i32 0) #10
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* @start_line_num, align 4
  br label %162

; <label>:115:                                    ; preds = %46
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 5) #10
  %118 = call i64 @xdectoimax(i8* %116, i64 0, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %117, i32 0) #10
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* @chars_per_margin, align 4
  br label %162

; <label>:120:                                    ; preds = %46
  store i1 true, i1* @ignore_failed_opens, align 1
  br label %162

; <label>:121:                                    ; preds = %46
  %122 = load i8, i8* @use_col_separator, align 1
  %123 = icmp eq i8 %122, 0
  %124 = load i8*, i8** @optarg, align 8
  %125 = icmp ne i8* %124, null
  %126 = and i1 %123, %125
  br i1 %126, label %127, label %162

; <label>:127:                                    ; preds = %121
  %128 = call i64 @strlen(i8* nonnull %124) #13
  %129 = icmp ugt i64 %128, 2147483647
  br i1 %129, label %130, label %131

; <label>:130:                                    ; preds = %127
  call fastcc void @integer_overflow() #10
  unreachable

; <label>:131:                                    ; preds = %127
  %132 = trunc i64 %128 to i32
  store i32 %132, i32* @col_sep_length, align 4
  store i8* %124, i8** @col_sep_string, align 8
  br label %162

; <label>:133:                                    ; preds = %46
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @col_sep_string, align 8
  store i32 0, i32* @col_sep_length, align 4
  store i8 1, i8* @use_col_separator, align 1
  %134 = load i8*, i8** @optarg, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %162, label %136

; <label>:136:                                    ; preds = %133
  %137 = call i64 @strlen(i8* nonnull %134) #13
  %138 = icmp ugt i64 %137, 2147483647
  br i1 %138, label %139, label %140

; <label>:139:                                    ; preds = %136
  call fastcc void @integer_overflow() #10
  unreachable

; <label>:140:                                    ; preds = %136
  %141 = trunc i64 %137 to i32
  store i32 %141, i32* @col_sep_length, align 4
  store i8* %134, i8** @col_sep_string, align 8
  br label %162

; <label>:142:                                    ; preds = %46
  store i1 true, i1* @extremities, align 1
  store i1 true, i1* @keep_FF, align 1
  br label %162

; <label>:143:                                    ; preds = %46
  store i1 true, i1* @extremities, align 1
  store i1 false, i1* @keep_FF, align 1
  br label %162

; <label>:144:                                    ; preds = %46
  store i1 true, i1* @use_esc_sequence, align 1
  br label %162

; <label>:145:                                    ; preds = %46
  %146 = load i8*, i8** @optarg, align 8
  %147 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #10
  %148 = call i64 @xdectoimax(i8* %146, i64 1, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %147, i32 0) #10
  %149 = load i1, i1* @truncate_lines, align 1
  br i1 %149, label %162, label %150

; <label>:150:                                    ; preds = %145
  %151 = trunc i64 %148 to i32
  store i32 %151, i32* @chars_per_line, align 4
  br label %162

; <label>:152:                                    ; preds = %46
  store i1 true, i1* @truncate_lines, align 1
  %153 = load i8*, i8** @optarg, align 8
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #10
  %155 = call i64 @xdectoimax(i8* %153, i64 1, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %154, i32 0) #10
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* @chars_per_line, align 4
  br label %162

; <label>:157:                                    ; preds = %46
  call void @usage(i32 0) #14
  unreachable

; <label>:158:                                    ; preds = %46
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %160 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* null) #10
  call void @exit(i32 0) #15
  unreachable

; <label>:161:                                    ; preds = %46
  call void @usage(i32 1) #14
  unreachable

; <label>:162:                                    ; preds = %41, %106, %133, %140, %131, %121, %109, %68, %54, %57, %152, %144, %143, %142, %120, %115, %110, %105, %100, %99, %98, %92, %91, %90, %84, %83, %82, %81, %80, %75, %150, %145
  %163 = phi i8 [ 1, %145 ], [ 1, %150 ], [ %32, %57 ], [ %32, %54 ], [ %32, %68 ], [ %32, %75 ], [ %32, %80 ], [ %32, %81 ], [ %32, %82 ], [ %32, %83 ], [ %32, %84 ], [ %32, %90 ], [ %32, %91 ], [ %32, %92 ], [ %32, %98 ], [ %32, %99 ], [ %32, %100 ], [ %32, %105 ], [ %32, %106 ], [ %32, %109 ], [ %32, %110 ], [ %32, %115 ], [ %32, %120 ], [ 1, %121 ], [ 1, %131 ], [ %32, %133 ], [ %32, %140 ], [ %32, %142 ], [ %32, %143 ], [ %32, %144 ], [ %32, %152 ], [ %32, %41 ]
  %164 = phi i8 [ 1, %145 ], [ 1, %150 ], [ %31, %57 ], [ %31, %54 ], [ %31, %68 ], [ %31, %75 ], [ %31, %80 ], [ %31, %81 ], [ %31, %82 ], [ %31, %83 ], [ %31, %84 ], [ %31, %90 ], [ %31, %91 ], [ %31, %92 ], [ %31, %98 ], [ %31, %99 ], [ %31, %100 ], [ %31, %105 ], [ %31, %106 ], [ %31, %109 ], [ %31, %110 ], [ %31, %115 ], [ %31, %120 ], [ %31, %121 ], [ %31, %131 ], [ %31, %133 ], [ %31, %140 ], [ %31, %142 ], [ %31, %143 ], [ %31, %144 ], [ 0, %152 ], [ %31, %41 ]
  %165 = phi i8 [ %30, %145 ], [ %30, %150 ], [ %30, %57 ], [ %30, %54 ], [ %30, %68 ], [ %30, %75 ], [ %30, %80 ], [ %30, %81 ], [ %30, %82 ], [ %30, %83 ], [ %30, %84 ], [ %30, %90 ], [ %30, %91 ], [ %30, %92 ], [ %30, %98 ], [ %30, %99 ], [ %30, %100 ], [ %30, %105 ], [ %30, %106 ], [ %30, %109 ], [ %30, %110 ], [ %30, %115 ], [ %30, %120 ], [ 1, %121 ], [ 1, %131 ], [ 0, %133 ], [ 0, %140 ], [ %30, %142 ], [ %30, %143 ], [ %30, %144 ], [ %30, %152 ], [ %30, %41 ]
  %166 = phi i32 [ %29, %145 ], [ %29, %150 ], [ %59, %57 ], [ %29, %54 ], [ %29, %68 ], [ %29, %75 ], [ %29, %80 ], [ %29, %81 ], [ %29, %82 ], [ %29, %83 ], [ %29, %84 ], [ %29, %90 ], [ %29, %91 ], [ %29, %92 ], [ %29, %98 ], [ %29, %99 ], [ %29, %100 ], [ %29, %105 ], [ %29, %106 ], [ %29, %109 ], [ %29, %110 ], [ %29, %115 ], [ %29, %120 ], [ %29, %121 ], [ %29, %131 ], [ %29, %133 ], [ %29, %140 ], [ %29, %142 ], [ %29, %143 ], [ %29, %144 ], [ %29, %152 ], [ %29, %41 ]
  %167 = phi i8* [ %28, %145 ], [ %28, %150 ], [ %28, %57 ], [ %28, %54 ], [ %28, %68 ], [ null, %75 ], [ %28, %80 ], [ %28, %81 ], [ %28, %82 ], [ %28, %83 ], [ %28, %84 ], [ %28, %90 ], [ %28, %91 ], [ %28, %92 ], [ %28, %98 ], [ %28, %99 ], [ %28, %100 ], [ %28, %105 ], [ %28, %106 ], [ %28, %109 ], [ %28, %110 ], [ %28, %115 ], [ %28, %120 ], [ %28, %121 ], [ %28, %131 ], [ %28, %133 ], [ %28, %140 ], [ %28, %142 ], [ %28, %143 ], [ %28, %144 ], [ %28, %152 ], [ %42, %41 ]
  %168 = phi i64 [ 0, %145 ], [ 0, %150 ], [ 0, %57 ], [ 0, %54 ], [ 0, %68 ], [ 0, %75 ], [ 0, %80 ], [ 0, %81 ], [ 0, %82 ], [ 0, %83 ], [ 0, %84 ], [ 0, %90 ], [ 0, %91 ], [ 0, %92 ], [ 0, %98 ], [ 0, %99 ], [ 0, %100 ], [ 0, %105 ], [ 0, %106 ], [ 0, %109 ], [ 0, %110 ], [ 0, %115 ], [ 0, %120 ], [ 0, %121 ], [ 0, %131 ], [ 0, %133 ], [ 0, %140 ], [ 0, %142 ], [ 0, %143 ], [ 0, %144 ], [ 0, %152 ], [ %36, %41 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %20) #10
  call void @llvm.lifetime.start(i64 4, i8* nonnull %20) #10
  store i32 -1, i32* %4, align 4
  %169 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([27 x %struct.option], [27 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %4) #10
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %25

; <label>:171:                                    ; preds = %162
  call void @llvm.lifetime.end(i64 4, i8* nonnull %20) #10
  %172 = icmp eq i8* %167, null
  br i1 %172, label %177, label %173

; <label>:173:                                    ; preds = %171
  %174 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i64 0, i64 0), i32 5) #10
  %175 = call i64 @xdectoimax(i8* nonnull %167, i64 1, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %174, i32 0) #10
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* @columns, align 4
  store i1 true, i1* @explicit_columns, align 1
  call void @free(i8* nonnull %167) #10
  br label %177

; <label>:177:                                    ; preds = %24, %171, %173
  %178 = phi i32 [ 0, %24 ], [ %166, %171 ], [ %166, %173 ]
  %179 = phi i8 [ 0, %24 ], [ %165, %171 ], [ %165, %173 ]
  %180 = phi i8 [ 0, %24 ], [ %164, %171 ], [ %164, %173 ]
  %181 = phi i8 [ 0, %24 ], [ %163, %171 ], [ %163, %173 ]
  %182 = load i8*, i8** @date_format, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %192

; <label>:184:                                    ; preds = %177
  %185 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #10
  %186 = icmp eq i8* %185, null
  br i1 %186, label %190, label %187

; <label>:187:                                    ; preds = %184
  %188 = call zeroext i1 @hard_locale(i32 2) #10
  %189 = select i1 %188, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)
  br label %190

; <label>:190:                                    ; preds = %187, %184
  %191 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), %184 ], [ %189, %187 ]
  store i8* %191, i8** @date_format, align 8
  br label %192

; <label>:192:                                    ; preds = %177, %190
  %193 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #10
  %194 = call %struct.tm_zone* @tzalloc(i8* %193) #10
  store %struct.tm_zone* %194, %struct.tm_zone** @localtz, align 8
  %195 = load i64, i64* @first_page_number, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

; <label>:197:                                    ; preds = %192
  store i64 1, i64* @first_page_number, align 8
  br label %198

; <label>:198:                                    ; preds = %197, %192
  %199 = load i1, i1* @parallel_files, align 1
  br i1 %199, label %200, label %208

; <label>:200:                                    ; preds = %198
  %201 = load i1, i1* @explicit_columns, align 1
  br i1 %201, label %202, label %204

; <label>:202:                                    ; preds = %200
  %203 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %203) #10
  unreachable

; <label>:204:                                    ; preds = %200
  %205 = load i1, i1* @print_across_flag, align 1
  br i1 %205, label %206, label %208

; <label>:206:                                    ; preds = %204
  %207 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %207) #10
  unreachable

; <label>:208:                                    ; preds = %198, %204
  %209 = and i8 %181, 1
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %237, label %211

; <label>:211:                                    ; preds = %208
  %212 = and i8 %180, 1
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %222, label %214

; <label>:214:                                    ; preds = %211
  br i1 %199, label %217, label %215

; <label>:215:                                    ; preds = %214
  %216 = load i1, i1* @explicit_columns, align 1
  br i1 %216, label %217, label %220

; <label>:217:                                    ; preds = %215, %214
  store i1 true, i1* @truncate_lines, align 1
  %218 = and i8 %179, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %237, label %220

; <label>:220:                                    ; preds = %217, %215
  %221 = phi i8* [ @use_col_separator, %217 ], [ @join_lines, %215 ]
  store i8 1, i8* %221, align 1
  br label %237

; <label>:222:                                    ; preds = %211
  %223 = load i8, i8* @use_col_separator, align 1
  %224 = icmp ne i8 %223, 0
  %225 = and i8 %179, 1
  %226 = icmp eq i8 %225, 0
  %227 = or i1 %226, %224
  br i1 %227, label %237, label %228

; <label>:228:                                    ; preds = %222
  br i1 %199, label %231, label %229

; <label>:229:                                    ; preds = %228
  %230 = load i1, i1* @explicit_columns, align 1
  br i1 %230, label %231, label %237

; <label>:231:                                    ; preds = %229, %228
  %232 = load i1, i1* @truncate_lines, align 1
  br i1 %232, label %236, label %233

; <label>:233:                                    ; preds = %231
  store i8 1, i8* @join_lines, align 1
  %234 = load i32, i32* @col_sep_length, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %237

; <label>:236:                                    ; preds = %231, %233
  store i8 1, i8* @use_col_separator, align 1
  br label %237

; <label>:237:                                    ; preds = %220, %229, %236, %233, %208, %217, %222
  %238 = load i32, i32* @optind, align 4
  %239 = icmp slt i32 %238, %0
  br i1 %239, label %240, label %332

; <label>:240:                                    ; preds = %237
  %241 = sub i32 %0, %238
  %242 = icmp ult i32 %241, 4
  br i1 %242, label %312, label %243

; <label>:243:                                    ; preds = %240
  %244 = and i32 %241, -4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %312, label %246

; <label>:246:                                    ; preds = %243
  %247 = add i32 %0, -1
  %248 = sub i32 %247, %238
  %249 = add i32 %178, %248
  %250 = icmp ult i32 %249, %178
  %251 = add i32 %238, %244
  %252 = add i32 %178, %244
  br i1 %250, label %312, label %253

; <label>:253:                                    ; preds = %246
  %254 = add i32 %244, -4
  %255 = lshr exact i32 %254, 2
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %272

; <label>:258:                                    ; preds = %253
  br label %259

; <label>:259:                                    ; preds = %258
  %260 = sext i32 %238 to i64
  %261 = getelementptr inbounds i8*, i8** %1, i64 %260
  %262 = bitcast i8** %261 to <2 x i64>*
  %263 = load <2 x i64>, <2 x i64>* %262, align 8
  %264 = getelementptr i8*, i8** %261, i64 2
  %265 = bitcast i8** %264 to <2 x i64>*
  %266 = load <2 x i64>, <2 x i64>* %265, align 8
  %267 = zext i32 %178 to i64
  %268 = getelementptr inbounds i8*, i8** %19, i64 %267
  %269 = bitcast i8** %268 to <2 x i64>*
  store <2 x i64> %263, <2 x i64>* %269, align 8
  %270 = getelementptr i8*, i8** %268, i64 2
  %271 = bitcast i8** %270 to <2 x i64>*
  store <2 x i64> %266, <2 x i64>* %271, align 8
  br label %272

; <label>:272:                                    ; preds = %259, %253
  %273 = phi i32 [ 0, %253 ], [ 4, %259 ]
  %274 = icmp eq i32 %255, 0
  br i1 %274, label %310, label %275

; <label>:275:                                    ; preds = %272
  br label %276

; <label>:276:                                    ; preds = %276, %275
  %277 = phi i32 [ %273, %275 ], [ %307, %276 ]
  %278 = add i32 %238, %277
  %279 = add i32 %178, %277
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i8*, i8** %1, i64 %280
  %282 = bitcast i8** %281 to <2 x i64>*
  %283 = load <2 x i64>, <2 x i64>* %282, align 8
  %284 = getelementptr i8*, i8** %281, i64 2
  %285 = bitcast i8** %284 to <2 x i64>*
  %286 = load <2 x i64>, <2 x i64>* %285, align 8
  %287 = zext i32 %279 to i64
  %288 = getelementptr inbounds i8*, i8** %19, i64 %287
  %289 = bitcast i8** %288 to <2 x i64>*
  store <2 x i64> %283, <2 x i64>* %289, align 8
  %290 = getelementptr i8*, i8** %288, i64 2
  %291 = bitcast i8** %290 to <2 x i64>*
  store <2 x i64> %286, <2 x i64>* %291, align 8
  %292 = add i32 %277, 4
  %293 = add i32 %238, %292
  %294 = add i32 %178, %292
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i8*, i8** %1, i64 %295
  %297 = bitcast i8** %296 to <2 x i64>*
  %298 = load <2 x i64>, <2 x i64>* %297, align 8
  %299 = getelementptr i8*, i8** %296, i64 2
  %300 = bitcast i8** %299 to <2 x i64>*
  %301 = load <2 x i64>, <2 x i64>* %300, align 8
  %302 = zext i32 %294 to i64
  %303 = getelementptr inbounds i8*, i8** %19, i64 %302
  %304 = bitcast i8** %303 to <2 x i64>*
  store <2 x i64> %298, <2 x i64>* %304, align 8
  %305 = getelementptr i8*, i8** %303, i64 2
  %306 = bitcast i8** %305 to <2 x i64>*
  store <2 x i64> %301, <2 x i64>* %306, align 8
  %307 = add i32 %277, 8
  %308 = icmp eq i32 %307, %244
  br i1 %308, label %309, label %276

; <label>:309:                                    ; preds = %276
  br label %310

; <label>:310:                                    ; preds = %272, %309
  %311 = icmp eq i32 %241, %244
  br i1 %311, label %329, label %312

; <label>:312:                                    ; preds = %310, %246, %243, %240
  %313 = phi i32 [ %238, %246 ], [ %238, %243 ], [ %238, %240 ], [ %251, %310 ]
  %314 = phi i32 [ %178, %246 ], [ %178, %243 ], [ %178, %240 ], [ %252, %310 ]
  br label %315

; <label>:315:                                    ; preds = %312, %315
  %316 = phi i32 [ %326, %315 ], [ %313, %312 ]
  %317 = phi i32 [ %322, %315 ], [ %314, %312 ]
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i8*, i8** %1, i64 %318
  %320 = bitcast i8** %319 to i64*
  %321 = load i64, i64* %320, align 8
  %322 = add i32 %317, 1
  %323 = zext i32 %317 to i64
  %324 = getelementptr inbounds i8*, i8** %19, i64 %323
  %325 = bitcast i8** %324 to i64*
  store i64 %321, i64* %325, align 8
  %326 = add nsw i32 %316, 1
  %327 = icmp slt i32 %326, %0
  br i1 %327, label %315, label %328

; <label>:328:                                    ; preds = %315
  br label %329

; <label>:329:                                    ; preds = %328, %310
  %330 = phi i32 [ %252, %310 ], [ %322, %328 ]
  %331 = phi i32 [ %251, %310 ], [ %326, %328 ]
  store i32 %331, i32* @optind, align 4
  br label %332

; <label>:332:                                    ; preds = %329, %237
  %333 = phi i32 [ %330, %329 ], [ %178, %237 ]
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

; <label>:335:                                    ; preds = %332
  call fastcc void @print_files(i32 0, i8** null)
  br label %346

; <label>:336:                                    ; preds = %332
  br i1 %199, label %339, label %337

; <label>:337:                                    ; preds = %336
  %338 = zext i32 %333 to i64
  br label %340

; <label>:339:                                    ; preds = %336
  call fastcc void @print_files(i32 %333, i8** %19)
  br label %346

; <label>:340:                                    ; preds = %337, %340
  %341 = phi i64 [ %343, %340 ], [ 0, %337 ]
  %342 = getelementptr inbounds i8*, i8** %19, i64 %341
  call fastcc void @print_files(i32 1, i8** %342)
  %343 = add nuw nsw i64 %341, 1
  %344 = icmp eq i64 %343, %338
  br i1 %344, label %345, label %340

; <label>:345:                                    ; preds = %340
  br label %346

; <label>:346:                                    ; preds = %345, %339, %335
  %347 = load i8*, i8** @number_buff, align 8
  call void @free(i8* %347) #10
  %348 = load i8*, i8** @clump_buff, align 8
  call void @free(i8* %348) #10
  %349 = load i8*, i8** bitcast (%struct.COLUMN** @column_vector to i8**), align 8
  call void @free(i8* %349) #10
  %350 = load i8*, i8** bitcast (i32** @line_vector to i8**), align 8
  call void @free(i8* %350) #10
  %351 = load i8*, i8** bitcast (i32** @end_vector to i8**), align 8
  call void @free(i8* %351) #10
  %352 = load i8*, i8** @buff, align 8
  call void @free(i8* %352) #10
  %353 = load i1, i1* @have_read_stdin, align 1
  br i1 %353, label %354, label %362

; <label>:354:                                    ; preds = %346
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %356 = call i32 @rpl_fclose(%struct._IO_FILE* %355) #10
  %357 = icmp eq i32 %356, -1
  br i1 %357, label %358, label %362

; <label>:358:                                    ; preds = %354
  %359 = tail call i32* @__errno_location() #1
  %360 = load i32, i32* %359, align 4
  %361 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %360, i8* %361) #10
  unreachable

; <label>:362:                                    ; preds = %354, %346
  %363 = load i1, i1* @failed_opens, align 1
  %364 = zext i1 %363 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #10
  ret i32 %364
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @first_last_page(i32, i8 signext, i8*) unnamed_addr #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10
  %8 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #10
  %9 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10
  store i64 -1, i64* %6, align 8
  %10 = call i32 @xstrtoumax(i8* %2, i8** nonnull %4, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #10
  switch i32 %10, label %11 [
    i32 2, label %12
    i32 0, label %12
  ]

; <label>:11:                                     ; preds = %3
  call void @xstrtol_fatal(i32 %10, i32 %0, i8 signext %1, %struct.option* getelementptr inbounds ([27 x %struct.option], [27 x %struct.option]* @long_options, i64 0, i64 0), i8* %2) #15
  unreachable

; <label>:12:                                     ; preds = %3, %3
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %41

; <label>:18:                                     ; preds = %12
  %19 = load i8, i8* %13, align 1
  %20 = icmp eq i8 %19, 58
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i8, i8* %13, i64 1
  %23 = call i32 @xstrtoumax(i8* %22, i8** nonnull %4, i32 10, i64* nonnull %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %21
  call void @xstrtol_fatal(i32 %23, i32 %0, i8 signext %1, %struct.option* getelementptr inbounds ([27 x %struct.option], [27 x %struct.option]* @long_options, i64 0, i64 0), i8* %2) #15
  unreachable

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = icmp eq i8* %22, %27
  br i1 %28, label %41, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %41, label %33

; <label>:33:                                     ; preds = %29
  %34 = load i8, i8* %27, align 1
  br label %35

; <label>:35:                                     ; preds = %33, %18
  %36 = phi i64 [ %30, %33 ], [ -1, %18 ]
  %37 = phi i64 [ %31, %33 ], [ %15, %18 ]
  %38 = phi i8 [ %34, %33 ], [ %19, %18 ]
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %35
  store i64 %37, i64* @first_page_number, align 8
  store i64 %36, i64* @last_page_number, align 8
  br label %41

; <label>:41:                                     ; preds = %35, %29, %26, %12, %40
  %42 = phi i1 [ true, %40 ], [ false, %12 ], [ false, %26 ], [ false, %29 ], [ false, %35 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10
  ret i1 %42
}

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #3

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @getoptarg(i8*, i8 signext, i8* nocapture, i32* nocapture) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = load i8, i8* %0, align 1
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %7, -48
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %6, i8* %2, align 1
  %12 = load i8, i8* %11, align 1
  br label %13

; <label>:13:                                     ; preds = %10, %4
  %14 = phi i8 [ %6, %4 ], [ %12, %10 ]
  %15 = phi i8* [ %0, %4 ], [ %11, %10 ]
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %37, label %17

; <label>:17:                                     ; preds = %13
  %18 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10
  %19 = call i32 @xstrtol(i8* %15, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #10
  %20 = icmp ne i32 %19, 0
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  %23 = icmp ugt i64 %22, 2147483646
  %24 = or i1 %20, %23
  br i1 %24, label %25, label %35

; <label>:25:                                     ; preds = %17
  %26 = icmp sgt i64 %21, 2147483647
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %25
  %28 = tail call i32* @__errno_location() #1
  %29 = load i32, i32* %28, align 4
  br label %30

; <label>:30:                                     ; preds = %25, %27
  %31 = phi i32 [ %29, %27 ], [ 75, %25 ]
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.67, i64 0, i64 0), i32 5) #10
  %33 = sext i8 %1 to i32
  %34 = call i8* @quote(i8* %15) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %31, i8* %32, i32 %33, i8* %34) #10
  call void @usage(i32 1) #14
  unreachable

; <label>:35:                                     ; preds = %17
  %36 = trunc i64 %21 to i32
  store i32 %36, i32* %3, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %37

; <label>:37:                                     ; preds = %13, %35
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @integer_overflow() unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %1) #10
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #6 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 5) #10
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10
  br label %81

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 5) #10
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i32 5) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), i32 5) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.82, i64 0, i64 0), i32 5) #10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([334 x i8], [334 x i8]* @.str.24, i64 0, i64 0), i32 5) #10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([270 x i8], [270 x i8]* @.str.25, i64 0, i64 0), i32 5) #10
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([400 x i8], [400 x i8]* @.str.26, i64 0, i64 0), i32 5) #10
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([427 x i8], [427 x i8]* @.str.27, i64 0, i64 0), i32 5) #10
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([220 x i8], [220 x i8]* @.str.28, i64 0, i64 0), i32 5) #10
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.29, i64 0, i64 0), i32 5) #10
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #10
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([346 x i8], [346 x i8]* @.str.30, i64 0, i64 0), i32 5) #10
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #10
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str.31, i64 0, i64 0), i32 5) #10
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #10
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.32, i64 0, i64 0), i32 5) #10
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #10
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.33, i64 0, i64 0), i32 5) #10
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #10
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.34, i64 0, i64 0), i32 5) #10
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #10
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([401 x i8], [401 x i8]* @.str.35, i64 0, i64 0), i32 5) #10
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #10
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([215 x i8], [215 x i8]* @.str.36, i64 0, i64 0), i32 5) #10
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #10
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i64 0, i64 0), i32 5) #10
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #10
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.38, i64 0, i64 0), i32 5) #10
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = tail call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64) #10
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i32 5) #10
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0)) #10
  %68 = tail call i8* @setlocale(i32 5, i8* null) #10
  %69 = icmp eq i8* %68, null
  br i1 %69, label %76, label %70

; <label>:70:                                     ; preds = %8
  %71 = tail call i32 @strncmp(i8* nonnull %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0), i64 3) #13
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

; <label>:73:                                     ; preds = %70
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.94, i64 0, i64 0), i32 5) #10
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #10
  br label %76

; <label>:76:                                     ; preds = %8, %70, %73
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i64 0, i64 0), i32 5) #10
  %78 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #10
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.96, i64 0, i64 0), i32 5) #10
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0)) #10
  br label %81

; <label>:81:                                     ; preds = %76, %3
  tail call void @exit(i32 %0) #15
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_files(i32, i8** nocapture readonly) unnamed_addr #0 {
  %3 = load i32, i32* @lines_per_page, align 4
  %4 = add nsw i32 %3, -10
  store i32 %4, i32* @lines_per_body, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  store i1 true, i1* @extremities, align 1
  store i1 true, i1* @keep_FF, align 1
  br label %9

; <label>:7:                                      ; preds = %2
  %8 = load i1, i1* @extremities, align 1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %7, %6
  store i32 %3, i32* @lines_per_body, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %7
  %11 = phi i32 [ %3, %9 ], [ %4, %7 ]
  %12 = load i1, i1* @double_space, align 1
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = sdiv i32 %11, 2
  store i32 %14, i32* @lines_per_body, align 4
  br label %15

; <label>:15:                                     ; preds = %13, %10
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %15
  store i1 false, i1* @parallel_files, align 1
  br label %21

; <label>:18:                                     ; preds = %15
  %19 = load i1, i1* @parallel_files, align 1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %18
  store i32 %0, i32* @columns, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %18, %17
  %22 = phi i1 [ false, %17 ], [ true, %20 ], [ false, %18 ]
  %23 = load i1, i1* @storing_columns, align 1
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %21
  store i1 true, i1* @balance_columns, align 1
  br label %25

; <label>:25:                                     ; preds = %24, %21
  %26 = load i32, i32* @columns, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i8, i8* @join_lines, align 1
  br label %48

; <label>:30:                                     ; preds = %25
  %31 = load i8, i8* @use_col_separator, align 1
  %32 = icmp eq i8 %31, 0
  %33 = load i8, i8* @join_lines, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %32, label %35, label %37

; <label>:35:                                     ; preds = %30
  %36 = select i1 %34, i64 ptrtoint ([2 x i8]* @.str.69 to i64), i64 ptrtoint ([2 x i8]* @.str.70 to i64)
  store i64 %36, i64* bitcast (i8** @col_sep_string to i64*), align 8
  store i32 1, i32* @col_sep_length, align 4
  store i8 1, i8* @use_col_separator, align 1
  br label %47

; <label>:37:                                     ; preds = %30
  %38 = xor i1 %34, true
  %39 = load i32, i32* @col_sep_length, align 4
  %40 = icmp eq i32 %39, 1
  %41 = and i1 %40, %38
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** @col_sep_string, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp eq i8 %44, 9
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %42
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8** @col_sep_string, align 8
  br label %47

; <label>:47:                                     ; preds = %46, %42, %37, %35
  store i1 true, i1* @truncate_lines, align 1
  br label %48

; <label>:48:                                     ; preds = %47, %28
  %49 = phi i8 [ %33, %47 ], [ %29, %28 ]
  %50 = phi i1* [ @tabify_output, %47 ], [ @storing_columns, %28 ]
  store i1 true, i1* %50, align 1
  %51 = icmp eq i8 %49, 0
  br i1 %51, label %53, label %52

; <label>:52:                                     ; preds = %48
  store i1 false, i1* @truncate_lines, align 1
  br label %53

; <label>:53:                                     ; preds = %52, %48
  %54 = load i1, i1* @numbered_lines, align 1
  br i1 %54, label %55, label %67

; <label>:55:                                     ; preds = %53
  %56 = load i32, i32* @start_line_num, align 4
  store i32 %56, i32* @line_count, align 4
  %57 = load i8, i8* @number_separator, align 1
  %58 = icmp eq i8 %57, 9
  %59 = load i32, i32* @chars_per_number, align 4
  br i1 %58, label %60, label %63

; <label>:60:                                     ; preds = %55
  %61 = srem i32 %59, 8
  %62 = sub nsw i32 8, %61
  br label %63

; <label>:63:                                     ; preds = %60, %55
  %64 = phi i32 [ %62, %60 ], [ 1, %55 ]
  %65 = add nsw i32 %64, %59
  store i32 %65, i32* @number_width, align 4
  %66 = select i1 %22, i32 %65, i32 0
  br label %67

; <label>:67:                                     ; preds = %63, %53
  %68 = phi i32 [ %66, %63 ], [ 0, %53 ]
  %69 = load i32, i32* @col_sep_length, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %82

; <label>:71:                                     ; preds = %67
  %72 = icmp slt i32 %26, 1
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %71
  %74 = sdiv i32 2147483647, %69
  %75 = icmp sgt i32 %26, %74
  br i1 %75, label %93, label %102

; <label>:76:                                     ; preds = %71
  %77 = icmp eq i32 %69, -1
  br i1 %77, label %93, label %78

; <label>:78:                                     ; preds = %76
  %79 = sdiv i32 -2147483648, %69
  %80 = add nsw i32 %26, -1
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %102, label %93

; <label>:82:                                     ; preds = %67
  %83 = icmp eq i32 %69, 0
  br i1 %83, label %93, label %84

; <label>:84:                                     ; preds = %82
  %85 = icmp slt i32 %26, 1
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %84
  %87 = sdiv i32 -2147483648, %69
  %88 = icmp sgt i32 %26, %87
  br i1 %88, label %93, label %102

; <label>:89:                                     ; preds = %84
  %90 = udiv i32 2147483647, %69
  %91 = add nsw i32 %26, -1
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %102, label %93

; <label>:93:                                     ; preds = %89, %86, %82, %78, %76, %73
  %94 = add nsw i32 %26, -1
  %95 = mul i32 %69, %94
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

; <label>:97:                                     ; preds = %93
  %98 = add nsw i32 %95, 2147483647
  %99 = load i32, i32* @chars_per_line, align 4
  %100 = sub nsw i32 %99, %68
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %113, label %108

; <label>:102:                                    ; preds = %93, %89, %86, %78, %73
  %103 = phi i32 [ %95, %93 ], [ 2147483647, %73 ], [ 2147483647, %86 ], [ 2147483647, %89 ], [ 2147483647, %78 ]
  %104 = load i32, i32* @chars_per_line, align 4
  %105 = sub nsw i32 %104, %68
  %106 = xor i32 %103, -2147483648
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %113, label %108

; <label>:108:                                    ; preds = %102, %97
  %109 = phi i32 [ %99, %97 ], [ %104, %102 ]
  %110 = phi i32 [ %95, %97 ], [ %103, %102 ]
  %111 = sub i32 %109, %68
  %112 = sub i32 %111, %110
  br label %113

; <label>:113:                                    ; preds = %108, %102, %97
  %114 = phi i32 [ %112, %108 ], [ 0, %102 ], [ 0, %97 ]
  %115 = sdiv i32 %114, %26
  store i32 %115, i32* @chars_per_column, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %119

; <label>:117:                                    ; preds = %113
  %118 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %118) #10
  unreachable

; <label>:119:                                    ; preds = %113
  br i1 %54, label %120, label %128

; <label>:120:                                    ; preds = %119
  %121 = load i8*, i8** @number_buff, align 8
  tail call void @free(i8* %121) #10
  %122 = load i32, i32* @chars_per_number, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ugt i64 %123, 11
  %125 = select i1 %124, i64 %123, i64 11
  %126 = add nsw i64 %125, 1
  %127 = tail call noalias i8* @xmalloc(i64 %126) #10
  store i8* %127, i8** @number_buff, align 8
  br label %128

; <label>:128:                                    ; preds = %119, %120
  %129 = load i8*, i8** @clump_buff, align 8
  tail call void @free(i8* %129) #10
  %130 = load i32, i32* @chars_per_input_tab, align 4
  %131 = icmp sgt i32 %130, 8
  %132 = select i1 %131, i32 %130, i32 8
  %133 = zext i32 %132 to i64
  %134 = tail call noalias i8* @xmalloc(i64 %133) #10
  store i8* %134, i8** @clump_buff, align 8
  store i32 0, i32* @total_files, align 4
  %135 = load i8*, i8** bitcast (%struct.COLUMN** @column_vector to i8**), align 8
  tail call void @free(i8* %135) #10
  %136 = load i32, i32* @columns, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

; <label>:138:                                    ; preds = %128
  tail call void @xalloc_die() #15
  unreachable

; <label>:139:                                    ; preds = %128
  %140 = sext i32 %136 to i64
  %141 = shl nsw i64 %140, 6
  %142 = tail call noalias i8* @xmalloc(i64 %141) #10
  %143 = bitcast i8* %142 to %struct.COLUMN*
  store i8* %142, i8** bitcast (%struct.COLUMN** @column_vector to i8**), align 8
  %144 = load i1, i1* @parallel_files, align 1
  br i1 %144, label %145, label %168

; <label>:145:                                    ; preds = %139
  br i1 %16, label %164, label %146

; <label>:146:                                    ; preds = %145
  br label %147

; <label>:147:                                    ; preds = %146, %158
  %148 = phi i32 [ %151, %158 ], [ %0, %146 ]
  %149 = phi i8** [ %161, %158 ], [ %1, %146 ]
  %150 = phi %struct.COLUMN* [ %160, %158 ], [ %143, %146 ]
  %151 = add nsw i32 %148, -1
  %152 = load i8*, i8** %149, align 8
  %153 = tail call fastcc zeroext i1 @open_file(i8* %152, %struct.COLUMN* %150) #10
  br i1 %153, label %158, label %154

; <label>:154:                                    ; preds = %147
  %155 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %150, i64 -1
  %156 = load i32, i32* @columns, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* @columns, align 4
  br label %158

; <label>:158:                                    ; preds = %154, %147
  %159 = phi %struct.COLUMN* [ %150, %147 ], [ %155, %154 ]
  %160 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %159, i64 1
  %161 = getelementptr inbounds i8*, i8** %149, i64 1
  %162 = icmp eq i32 %151, 0
  br i1 %162, label %163, label %147

; <label>:163:                                    ; preds = %158
  br label %164

; <label>:164:                                    ; preds = %163, %145
  %165 = load i32, i32* @columns, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %1461, label %167

; <label>:167:                                    ; preds = %164
  tail call fastcc void @init_header(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 -1) #10
  br label %264

; <label>:168:                                    ; preds = %139
  %169 = icmp sgt i32 %0, 0
  br i1 %169, label %170, label %180

; <label>:170:                                    ; preds = %168
  %171 = load i8*, i8** %1, align 8
  %172 = tail call fastcc zeroext i1 @open_file(i8* %171, %struct.COLUMN* %143) #10
  br i1 %172, label %173, label %1461

; <label>:173:                                    ; preds = %170
  %174 = load i8*, i8** %1, align 8
  %175 = bitcast i8* %142 to %struct._IO_FILE**
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %175, align 8
  %177 = tail call i32 @fileno(%struct._IO_FILE* %176) #10
  tail call fastcc void @init_header(i8* %174, i32 %177) #10
  %178 = getelementptr inbounds i8, i8* %142, i64 8
  %179 = bitcast i8* %142 to i64*
  br label %191

; <label>:180:                                    ; preds = %168
  %181 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 5) #10
  %182 = getelementptr inbounds i8, i8* %142, i64 8
  %183 = bitcast i8* %182 to i8**
  store i8* %181, i8** %183, align 8
  %184 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8
  %185 = bitcast i8* %142 to i64*
  store i64 %184, i64* %185, align 8
  store i1 true, i1* @have_read_stdin, align 1
  %186 = getelementptr inbounds i8, i8* %142, i64 16
  %187 = bitcast i8* %186 to i32*
  store i32 0, i32* %187, align 8
  %188 = getelementptr inbounds i8, i8* %142, i64 57
  store i8 0, i8* %188, align 1
  %189 = load i32, i32* @total_files, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* @total_files, align 4
  tail call fastcc void @init_header(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 -1) #10
  br label %191

; <label>:191:                                    ; preds = %180, %173
  %192 = phi i64* [ %185, %180 ], [ %179, %173 ]
  %193 = phi i8* [ %182, %180 ], [ %178, %173 ]
  %194 = getelementptr inbounds i8, i8* %142, i64 44
  %195 = bitcast i8* %194 to i32*
  store i32 0, i32* %195, align 4
  %196 = bitcast i8* %193 to i64*
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %192, align 8
  %199 = load i32, i32* @columns, align 4
  %200 = add nsw i32 %199, -1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %264, label %202

; <label>:202:                                    ; preds = %191
  %203 = getelementptr inbounds i8, i8* %142, i64 64
  %204 = bitcast i8* %203 to %struct.COLUMN*
  %205 = add i32 %199, -2
  %206 = and i32 %200, 3
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %224, label %208

; <label>:208:                                    ; preds = %202
  br label %209

; <label>:209:                                    ; preds = %209, %208
  %210 = phi i32 [ %220, %209 ], [ %200, %208 ]
  %211 = phi %struct.COLUMN* [ %219, %209 ], [ %204, %208 ]
  %212 = phi i32 [ %221, %209 ], [ %206, %208 ]
  %213 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %211, i64 0, i32 1
  %214 = bitcast i8** %213 to i64*
  store i64 %197, i64* %214, align 8
  %215 = bitcast %struct.COLUMN* %211 to i64*
  store i64 %198, i64* %215, align 8
  %216 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %211, i64 0, i32 2
  store i32 0, i32* %216, align 8
  %217 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %211, i64 0, i32 10
  store i8 0, i8* %217, align 1
  %218 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %211, i64 0, i32 6
  store i32 0, i32* %218, align 4
  %219 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %211, i64 1
  %220 = add nsw i32 %210, -1
  %221 = add i32 %212, -1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %209

; <label>:223:                                    ; preds = %209
  br label %224

; <label>:224:                                    ; preds = %202, %223
  %225 = phi i32 [ %200, %202 ], [ %220, %223 ]
  %226 = phi %struct.COLUMN* [ %204, %202 ], [ %219, %223 ]
  %227 = icmp ult i32 %205, 3
  br i1 %227, label %263, label %228

; <label>:228:                                    ; preds = %224
  br label %229

; <label>:229:                                    ; preds = %229, %228
  %230 = phi i32 [ %225, %228 ], [ %260, %229 ]
  %231 = phi %struct.COLUMN* [ %226, %228 ], [ %259, %229 ]
  %232 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 0, i32 1
  %233 = bitcast i8** %232 to i64*
  store i64 %197, i64* %233, align 8
  %234 = bitcast %struct.COLUMN* %231 to i64*
  store i64 %198, i64* %234, align 8
  %235 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 0, i32 2
  store i32 0, i32* %235, align 8
  %236 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 0, i32 10
  store i8 0, i8* %236, align 1
  %237 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 0, i32 6
  store i32 0, i32* %237, align 4
  %238 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 1
  %239 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 1, i32 1
  %240 = bitcast i8** %239 to i64*
  store i64 %197, i64* %240, align 8
  %241 = bitcast %struct.COLUMN* %238 to i64*
  store i64 %198, i64* %241, align 8
  %242 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 1, i32 2
  store i32 0, i32* %242, align 8
  %243 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 1, i32 10
  store i8 0, i8* %243, align 1
  %244 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 1, i32 6
  store i32 0, i32* %244, align 4
  %245 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 2
  %246 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 2, i32 1
  %247 = bitcast i8** %246 to i64*
  store i64 %197, i64* %247, align 8
  %248 = bitcast %struct.COLUMN* %245 to i64*
  store i64 %198, i64* %248, align 8
  %249 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 2, i32 2
  store i32 0, i32* %249, align 8
  %250 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 2, i32 10
  store i8 0, i8* %250, align 1
  %251 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 2, i32 6
  store i32 0, i32* %251, align 4
  %252 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 3
  %253 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 3, i32 1
  %254 = bitcast i8** %253 to i64*
  store i64 %197, i64* %254, align 8
  %255 = bitcast %struct.COLUMN* %252 to i64*
  store i64 %198, i64* %255, align 8
  %256 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 3, i32 2
  store i32 0, i32* %256, align 8
  %257 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 3, i32 10
  store i8 0, i8* %257, align 1
  %258 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 3, i32 6
  store i32 0, i32* %258, align 4
  %259 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %231, i64 4
  %260 = add nsw i32 %230, -4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %229

; <label>:262:                                    ; preds = %229
  br label %263

; <label>:263:                                    ; preds = %224, %262
  br label %264

; <label>:264:                                    ; preds = %263, %191, %167
  %265 = load i32, i32* @total_files, align 4
  store i32 %265, i32* @files_ready_to_read, align 4
  %266 = load i1, i1* @storing_columns, align 1
  br i1 %266, label %355, label %267

; <label>:267:                                    ; preds = %264
  %268 = load i32, i32* @columns, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %281

; <label>:270:                                    ; preds = %267
  %271 = load i32, i32* @lines_per_body, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %276

; <label>:273:                                    ; preds = %270
  %274 = sdiv i32 2147483647, %268
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %323, label %292

; <label>:276:                                    ; preds = %270
  %277 = icmp eq i32 %268, -1
  br i1 %277, label %292, label %278

; <label>:278:                                    ; preds = %276
  %279 = sdiv i32 -2147483648, %268
  %280 = icmp slt i32 %279, %271
  br i1 %280, label %323, label %292

; <label>:281:                                    ; preds = %267
  %282 = icmp eq i32 %268, 0
  %283 = load i32, i32* @lines_per_body, align 4
  br i1 %282, label %292, label %284

; <label>:284:                                    ; preds = %281
  %285 = icmp slt i32 %283, 0
  br i1 %285, label %286, label %289

; <label>:286:                                    ; preds = %284
  %287 = sdiv i32 -2147483648, %268
  %288 = icmp slt i32 %283, %287
  br i1 %288, label %323, label %292

; <label>:289:                                    ; preds = %284
  %290 = udiv i32 2147483647, %268
  %291 = icmp slt i32 %290, %283
  br i1 %291, label %323, label %292

; <label>:292:                                    ; preds = %289, %286, %281, %278, %276, %273
  %293 = phi i32 [ %271, %276 ], [ %283, %289 ], [ %283, %286 ], [ %271, %278 ], [ %271, %273 ], [ %283, %281 ]
  %294 = mul i32 %293, %268
  %295 = icmp eq i32 %294, 2147483647
  %296 = add i32 %294, 1
  %297 = load i32, i32* @chars_per_column, align 4
  %298 = icmp eq i32 %297, 2147483647
  %299 = or i1 %295, %298
  br i1 %299, label %323, label %300

; <label>:300:                                    ; preds = %292
  %301 = add i32 %297, 1
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %313

; <label>:303:                                    ; preds = %300
  %304 = icmp slt i32 %294, 0
  br i1 %304, label %305, label %308

; <label>:305:                                    ; preds = %303
  %306 = sdiv i32 2147483647, %301
  %307 = icmp slt i32 %294, %306
  br i1 %307, label %323, label %324

; <label>:308:                                    ; preds = %303
  %309 = icmp eq i32 %301, -1
  br i1 %309, label %324, label %310

; <label>:310:                                    ; preds = %308
  %311 = sdiv i32 -2147483648, %301
  %312 = icmp slt i32 %311, %294
  br i1 %312, label %323, label %324

; <label>:313:                                    ; preds = %300
  %314 = icmp eq i32 %301, 0
  br i1 %314, label %324, label %315

; <label>:315:                                    ; preds = %313
  %316 = icmp slt i32 %294, 0
  br i1 %316, label %317, label %320

; <label>:317:                                    ; preds = %315
  %318 = sdiv i32 -2147483648, %301
  %319 = icmp slt i32 %294, %318
  br i1 %319, label %323, label %324

; <label>:320:                                    ; preds = %315
  %321 = udiv i32 2147483647, %301
  %322 = icmp slt i32 %321, %294
  br i1 %322, label %323, label %324

; <label>:323:                                    ; preds = %320, %317, %310, %305, %292, %289, %286, %278, %273
  tail call fastcc void @integer_overflow() #10
  unreachable

; <label>:324:                                    ; preds = %320, %317, %313, %310, %308, %305
  %325 = mul i32 %301, %294
  %326 = load i8*, i8** bitcast (i32** @line_vector to i8**), align 8
  tail call void @free(i8* %326) #10
  %327 = icmp slt i32 %296, 0
  br i1 %327, label %328, label %329

; <label>:328:                                    ; preds = %324
  tail call void @xalloc_die() #15
  unreachable

; <label>:329:                                    ; preds = %324
  %330 = sext i32 %296 to i64
  %331 = shl nsw i64 %330, 2
  %332 = tail call noalias i8* @xmalloc(i64 %331) #10
  store i8* %332, i8** bitcast (i32** @line_vector to i8**), align 8
  %333 = load i8*, i8** bitcast (i32** @end_vector to i8**), align 8
  tail call void @free(i8* %333) #10
  %334 = icmp slt i32 %294, 0
  br i1 %334, label %335, label %336

; <label>:335:                                    ; preds = %329
  tail call void @xalloc_die() #15
  unreachable

; <label>:336:                                    ; preds = %329
  %337 = sext i32 %294 to i64
  %338 = shl nsw i64 %337, 2
  %339 = tail call noalias i8* @xmalloc(i64 %338) #10
  store i8* %339, i8** bitcast (i32** @end_vector to i8**), align 8
  %340 = load i8*, i8** @buff, align 8
  tail call void @free(i8* %340) #10
  %341 = sext i32 %325 to i64
  %342 = load i8, i8* @use_col_separator, align 1
  %343 = add nuw nsw i8 %342, 1
  %344 = zext i8 %343 to i64
  %345 = udiv i64 9223372036854775807, %344
  %346 = icmp ult i64 %345, %341
  br i1 %346, label %347, label %348

; <label>:347:                                    ; preds = %336
  tail call void @xalloc_die() #15
  unreachable

; <label>:348:                                    ; preds = %336
  %349 = mul nsw i64 %344, %341
  %350 = tail call noalias i8* @xmalloc(i64 %349) #10
  store i8* %350, i8** @buff, align 8
  %351 = load i8, i8* @use_col_separator, align 1
  %352 = add nuw nsw i8 %351, 1
  %353 = zext i8 %352 to i64
  %354 = mul nsw i64 %353, %341
  store i64 %354, i64* @buff_allocated, align 8
  br label %355

; <label>:355:                                    ; preds = %264, %348
  %356 = load i64, i64* @first_page_number, align 8
  %357 = icmp ugt i64 %356, 1
  br i1 %357, label %358, label %527

; <label>:358:                                    ; preds = %355
  %359 = load i32, i32* @columns, align 4
  br label %360

; <label>:360:                                    ; preds = %358, %517
  %361 = phi i32 [ %466, %517 ], [ %359, %358 ]
  %362 = phi i64 [ %518, %517 ], [ 1, %358 ]
  %363 = load i32, i32* @lines_per_body, align 4
  %364 = icmp sgt i32 %363, 1
  br i1 %364, label %365, label %399

; <label>:365:                                    ; preds = %360
  br label %366

; <label>:366:                                    ; preds = %365, %392
  %367 = phi i32 [ %393, %392 ], [ %363, %365 ]
  %368 = phi i32 [ %394, %392 ], [ %361, %365 ]
  %369 = phi i32 [ %395, %392 ], [ %361, %365 ]
  %370 = phi i32 [ %396, %392 ], [ 1, %365 ]
  %371 = icmp slt i32 %369, 1
  br i1 %371, label %392, label %372

; <label>:372:                                    ; preds = %366
  %373 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  br label %374

; <label>:374:                                    ; preds = %384, %372
  %375 = phi i32 [ %385, %384 ], [ %368, %372 ]
  %376 = phi i32 [ %386, %384 ], [ %369, %372 ]
  %377 = phi %struct.COLUMN* [ %388, %384 ], [ %373, %372 ]
  %378 = phi i32 [ %387, %384 ], [ 1, %372 ]
  %379 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %377, i64 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %384

; <label>:382:                                    ; preds = %374
  tail call fastcc void @skip_read(%struct.COLUMN* nonnull %377, i32 %378) #10
  %383 = load i32, i32* @columns, align 4
  br label %384

; <label>:384:                                    ; preds = %382, %374
  %385 = phi i32 [ %375, %374 ], [ %383, %382 ]
  %386 = phi i32 [ %376, %374 ], [ %383, %382 ]
  %387 = add nuw nsw i32 %378, 1
  %388 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %377, i64 1
  %389 = icmp slt i32 %378, %386
  br i1 %389, label %374, label %390

; <label>:390:                                    ; preds = %384
  %391 = load i32, i32* @lines_per_body, align 4
  br label %392

; <label>:392:                                    ; preds = %390, %366
  %393 = phi i32 [ %367, %366 ], [ %391, %390 ]
  %394 = phi i32 [ %368, %366 ], [ %385, %390 ]
  %395 = phi i32 [ %369, %366 ], [ %386, %390 ]
  %396 = add nuw nsw i32 %370, 1
  %397 = icmp slt i32 %396, %393
  br i1 %397, label %366, label %398

; <label>:398:                                    ; preds = %392
  br label %399

; <label>:399:                                    ; preds = %398, %360
  %400 = phi i32 [ %361, %360 ], [ %394, %398 ]
  %401 = phi i32 [ %361, %360 ], [ %395, %398 ]
  store i1 true, i1* @last_line, align 1
  %402 = icmp slt i32 %401, 1
  br i1 %402, label %403, label %405

; <label>:403:                                    ; preds = %399
  %404 = load i1, i1* @storing_columns, align 1
  br label %465

; <label>:405:                                    ; preds = %399
  %406 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  br label %407

; <label>:407:                                    ; preds = %417, %405
  %408 = phi i32 [ %418, %417 ], [ %400, %405 ]
  %409 = phi i32 [ %419, %417 ], [ %401, %405 ]
  %410 = phi %struct.COLUMN* [ %421, %417 ], [ %406, %405 ]
  %411 = phi i32 [ %420, %417 ], [ 1, %405 ]
  %412 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %410, i64 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %417

; <label>:415:                                    ; preds = %407
  tail call fastcc void @skip_read(%struct.COLUMN* nonnull %410, i32 %411) #10
  %416 = load i32, i32* @columns, align 4
  br label %417

; <label>:417:                                    ; preds = %415, %407
  %418 = phi i32 [ %408, %407 ], [ %416, %415 ]
  %419 = phi i32 [ %409, %407 ], [ %416, %415 ]
  %420 = add nuw nsw i32 %411, 1
  %421 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %410, i64 1
  %422 = icmp slt i32 %411, %419
  br i1 %422, label %407, label %423

; <label>:423:                                    ; preds = %417
  %424 = load i1, i1* @storing_columns, align 1
  %425 = icmp slt i32 %419, 1
  %426 = or i1 %425, %424
  br i1 %426, label %465, label %427

; <label>:427:                                    ; preds = %423
  %428 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %429 = add i32 %419, -1
  %430 = and i32 %419, 3
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %447, label %432

; <label>:432:                                    ; preds = %427
  br label %433

; <label>:433:                                    ; preds = %441, %432
  %434 = phi %struct.COLUMN* [ %428, %432 ], [ %443, %441 ]
  %435 = phi i32 [ 1, %432 ], [ %442, %441 ]
  %436 = phi i32 [ %430, %432 ], [ %444, %441 ]
  %437 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %434, i64 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = icmp eq i32 %438, 3
  br i1 %439, label %441, label %440

; <label>:440:                                    ; preds = %433
  store i32 2, i32* %437, align 8
  br label %441

; <label>:441:                                    ; preds = %440, %433
  %442 = add nuw nsw i32 %435, 1
  %443 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %434, i64 1
  %444 = add i32 %436, -1
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %433

; <label>:446:                                    ; preds = %441
  br label %447

; <label>:447:                                    ; preds = %427, %446
  %448 = phi %struct.COLUMN* [ %428, %427 ], [ %443, %446 ]
  %449 = phi i32 [ 1, %427 ], [ %442, %446 ]
  %450 = icmp ult i32 %429, 3
  br i1 %450, label %464, label %451

; <label>:451:                                    ; preds = %447
  br label %452

; <label>:452:                                    ; preds = %1564, %451
  %453 = phi %struct.COLUMN* [ %448, %451 ], [ %1566, %1564 ]
  %454 = phi i32 [ %449, %451 ], [ %1565, %1564 ]
  %455 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %453, i64 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = icmp eq i32 %456, 3
  br i1 %457, label %459, label %458

; <label>:458:                                    ; preds = %452
  store i32 2, i32* %455, align 8
  br label %459

; <label>:459:                                    ; preds = %458, %452
  %460 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %453, i64 1, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = icmp eq i32 %461, 3
  br i1 %462, label %1553, label %1552

; <label>:463:                                    ; preds = %1564
  br label %464

; <label>:464:                                    ; preds = %447, %463
  br label %465

; <label>:465:                                    ; preds = %464, %403, %423
  %466 = phi i32 [ %400, %403 ], [ %418, %423 ], [ %418, %464 ]
  %467 = phi i1 [ %404, %403 ], [ %424, %423 ], [ false, %464 ]
  %468 = phi i32 [ %401, %403 ], [ %419, %423 ], [ %419, %464 ]
  %469 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %470 = icmp eq i32 %468, 0
  br i1 %470, label %506, label %471

; <label>:471:                                    ; preds = %465
  %472 = and i32 %468, 1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %485, label %474

; <label>:474:                                    ; preds = %471
  br label %475

; <label>:475:                                    ; preds = %474
  %476 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %469, i64 0, i32 2
  %477 = load i32, i32* %476, align 8
  %478 = icmp eq i32 %477, 2
  br i1 %478, label %479, label %482

; <label>:479:                                    ; preds = %475
  store i32 0, i32* %476, align 8
  %480 = load i32, i32* @files_ready_to_read, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* @files_ready_to_read, align 4
  br label %482

; <label>:482:                                    ; preds = %479, %475
  %483 = add nsw i32 %468, -1
  %484 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %469, i64 1
  br label %485

; <label>:485:                                    ; preds = %471, %482
  %486 = phi %struct.COLUMN* [ %484, %482 ], [ %469, %471 ]
  %487 = phi i32 [ %483, %482 ], [ %468, %471 ]
  br label %488

; <label>:488:                                    ; preds = %485
  %489 = icmp eq i32 %468, 1
  br i1 %489, label %505, label %490

; <label>:490:                                    ; preds = %488
  br label %491

; <label>:491:                                    ; preds = %1571, %490
  %492 = phi %struct.COLUMN* [ %486, %490 ], [ %1573, %1571 ]
  %493 = phi i32 [ %487, %490 ], [ %1572, %1571 ]
  %494 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %492, i64 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = icmp eq i32 %495, 2
  br i1 %496, label %497, label %500

; <label>:497:                                    ; preds = %491
  store i32 0, i32* %494, align 8
  %498 = load i32, i32* @files_ready_to_read, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* @files_ready_to_read, align 4
  br label %500

; <label>:500:                                    ; preds = %497, %491
  %501 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %492, i64 1, i32 2
  %502 = load i32, i32* %501, align 8
  %503 = icmp eq i32 %502, 2
  br i1 %503, label %1568, label %1571

; <label>:504:                                    ; preds = %1571
  br label %505

; <label>:505:                                    ; preds = %488, %504
  br label %506

; <label>:506:                                    ; preds = %505, %465
  br i1 %467, label %512, label %507

; <label>:507:                                    ; preds = %506
  %508 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %469, i64 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = icmp ne i32 %509, 3
  %511 = zext i1 %510 to i32
  store i32 %511, i32* @files_ready_to_read, align 4
  br label %514

; <label>:512:                                    ; preds = %506
  %513 = load i32, i32* @files_ready_to_read, align 4
  br label %514

; <label>:514:                                    ; preds = %512, %507
  %515 = phi i32 [ %513, %512 ], [ %511, %507 ]
  store i1 false, i1* @last_line, align 1
  %516 = icmp slt i32 %515, 1
  br i1 %516, label %520, label %517

; <label>:517:                                    ; preds = %514
  %518 = add nuw i64 %362, 1
  %519 = icmp ult i64 %518, %356
  br i1 %519, label %360, label %524

; <label>:520:                                    ; preds = %514
  %521 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.75, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %521, i64 %356, i64 %362) #10
  %522 = load i32, i32* @files_ready_to_read, align 4
  %523 = icmp sgt i32 %522, 0
  br i1 %523, label %525, label %1461

; <label>:524:                                    ; preds = %517
  br label %525

; <label>:525:                                    ; preds = %524, %520
  %526 = load i64, i64* @first_page_number, align 8
  br label %527

; <label>:527:                                    ; preds = %355, %525
  %528 = phi i64 [ %526, %525 ], [ 1, %355 ]
  store i64 %528, i64* @page_number, align 8
  %529 = load i32, i32* @chars_per_margin, align 4
  %530 = load i1, i1* @truncate_lines, align 1
  br i1 %530, label %531, label %543

; <label>:531:                                    ; preds = %527
  %532 = load i1, i1* @parallel_files, align 1
  br i1 %532, label %533, label %540

; <label>:533:                                    ; preds = %531
  %534 = load i1, i1* @numbered_lines, align 1
  br i1 %534, label %535, label %540

; <label>:535:                                    ; preds = %533
  %536 = load i32, i32* @chars_per_column, align 4
  %537 = add nsw i32 %536, %529
  %538 = load i32, i32* @number_width, align 4
  %539 = add nsw i32 %537, %538
  br label %543

; <label>:540:                                    ; preds = %533, %531
  %541 = load i32, i32* @chars_per_column, align 4
  %542 = add nsw i32 %541, %529
  br label %543

; <label>:543:                                    ; preds = %540, %535, %527
  %544 = phi i32 [ %539, %535 ], [ %542, %540 ], [ 0, %527 ]
  %545 = load i32, i32* @col_sep_length, align 4
  %546 = add nsw i32 %545, %529
  %547 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %548 = load i32, i32* @columns, align 4
  %549 = icmp sgt i32 %548, 1
  %550 = load i1, i1* @storing_columns, align 1
  br i1 %549, label %551, label %585

; <label>:551:                                    ; preds = %543
  %552 = load i1, i1* @numbered_lines, align 1
  %553 = load i1, i1* @parallel_files, align 1
  %554 = xor i1 %553, true
  %555 = load i32, i32* @chars_per_column, align 4
  %556 = select i1 %550, void (i8)* @print_char, void (i8)* @store_char
  %557 = select i1 %550, i1 (%struct.COLUMN*)* @read_line, i1 (%struct.COLUMN*)* @print_stored
  %558 = add i32 %548, -2
  %559 = zext i32 %558 to i64
  %560 = add nuw nsw i64 %559, 1
  br label %561

; <label>:561:                                    ; preds = %571, %551
  %562 = phi %struct.COLUMN* [ %547, %551 ], [ %580, %571 ]
  %563 = phi i32 [ %544, %551 ], [ %579, %571 ]
  %564 = phi i32 [ %546, %551 ], [ %578, %571 ]
  %565 = phi i32 [ 1, %551 ], [ %581, %571 ]
  %566 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %562, i64 0, i32 4
  store void (i8)* %556, void (i8)** %566, align 8
  %567 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %562, i64 0, i32 3
  store i1 (%struct.COLUMN*)* %557, i1 (%struct.COLUMN*)** %567, align 8
  br i1 %552, label %568, label %571

; <label>:568:                                    ; preds = %561
  %569 = icmp eq i32 %565, 1
  %570 = or i1 %569, %554
  br label %571

; <label>:571:                                    ; preds = %568, %561
  %572 = phi i1 [ false, %561 ], [ %570, %568 ]
  %573 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %562, i64 0, i32 9
  %574 = zext i1 %572 to i8
  store i8 %574, i8* %573, align 8
  %575 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %562, i64 0, i32 8
  store i32 %564, i32* %575, align 4
  %576 = add nsw i32 %563, %545
  %577 = add nsw i32 %576, %555
  %578 = select i1 %530, i32 %576, i32 0
  %579 = select i1 %530, i32 %577, i32 0
  %580 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %562, i64 1
  %581 = add nuw nsw i32 %565, 1
  %582 = icmp eq i32 %581, %548
  br i1 %582, label %583, label %561

; <label>:583:                                    ; preds = %571
  %584 = getelementptr %struct.COLUMN, %struct.COLUMN* %547, i64 %560
  br label %585

; <label>:585:                                    ; preds = %583, %543
  %586 = phi i32 [ 1, %543 ], [ %548, %583 ]
  %587 = phi i32 [ %546, %543 ], [ %578, %583 ]
  %588 = phi %struct.COLUMN* [ %547, %543 ], [ %584, %583 ]
  br i1 %550, label %593, label %589

; <label>:589:                                    ; preds = %585
  %590 = load i1, i1* @balance_columns, align 1
  %591 = select i1 %590, void (i8)* @store_char, void (i8)* @print_char
  %592 = select i1 %590, i1 (%struct.COLUMN*)* @print_stored, i1 (%struct.COLUMN*)* @read_line
  br label %593

; <label>:593:                                    ; preds = %589, %585
  %594 = phi void (i8)* [ @print_char, %585 ], [ %591, %589 ]
  %595 = phi i1 (%struct.COLUMN*)* [ @read_line, %585 ], [ %592, %589 ]
  %596 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %588, i64 0, i32 4
  store void (i8)* %594, void (i8)** %596, align 8
  %597 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %588, i64 0, i32 3
  store i1 (%struct.COLUMN*)* %595, i1 (%struct.COLUMN*)** %597, align 8
  %598 = load i1, i1* @numbered_lines, align 1
  br i1 %598, label %599, label %604

; <label>:599:                                    ; preds = %593
  %600 = load i1, i1* @parallel_files, align 1
  %601 = icmp eq i32 %586, 1
  %602 = xor i1 %600, true
  %603 = or i1 %601, %602
  br label %604

; <label>:604:                                    ; preds = %593, %599
  %605 = phi i1 [ false, %593 ], [ %603, %599 ]
  %606 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %588, i64 0, i32 9
  %607 = zext i1 %605 to i8
  store i8 %607, i8* %606, align 8
  %608 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %588, i64 0, i32 8
  store i32 %587, i32* %608, align 4
  %609 = load i32, i32* @line_count, align 4
  store i32 %609, i32* @line_number, align 4
  br label %610

; <label>:610:                                    ; preds = %604, %1455
  %611 = phi %struct.COLUMN* [ %547, %604 ], [ %1416, %1455 ]
  %612 = phi i32 [ %548, %604 ], [ %1415, %1455 ]
  %613 = phi i1 [ %550, %604 ], [ false, %1455 ]
  br i1 %613, label %877, label %614

; <label>:614:                                    ; preds = %610
  store i32 0, i32* @buff_current, align 4
  %615 = load i1, i1* @balance_columns, align 1
  %616 = xor i1 %615, true
  %617 = sext i1 %616 to i32
  %618 = add i32 %612, %617
  %619 = icmp slt i32 %618, 1
  br i1 %619, label %641, label %620

; <label>:620:                                    ; preds = %614
  %621 = add i32 %612, -1
  %622 = add i32 %621, %617
  %623 = and i32 %618, 7
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %636, label %625

; <label>:625:                                    ; preds = %620
  br label %626

; <label>:626:                                    ; preds = %626, %625
  %627 = phi %struct.COLUMN* [ %632, %626 ], [ %611, %625 ]
  %628 = phi i32 [ %631, %626 ], [ 1, %625 ]
  %629 = phi i32 [ %633, %626 ], [ %623, %625 ]
  %630 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %627, i64 0, i32 6
  store i32 0, i32* %630, align 4
  %631 = add nuw nsw i32 %628, 1
  %632 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %627, i64 1
  %633 = add i32 %629, -1
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %626

; <label>:635:                                    ; preds = %626
  br label %636

; <label>:636:                                    ; preds = %620, %635
  %637 = phi %struct.COLUMN* [ %611, %620 ], [ %632, %635 ]
  %638 = phi i32 [ 1, %620 ], [ %631, %635 ]
  %639 = icmp ult i32 %622, 7
  br i1 %639, label %659, label %640

; <label>:640:                                    ; preds = %636
  br label %643

; <label>:641:                                    ; preds = %614
  %642 = load i32*, i32** @line_vector, align 8
  store i32 0, i32* %642, align 4
  br i1 %615, label %731, label %800

; <label>:643:                                    ; preds = %643, %640
  %644 = phi %struct.COLUMN* [ %637, %640 ], [ %656, %643 ]
  %645 = phi i32 [ %638, %640 ], [ %655, %643 ]
  %646 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 0, i32 6
  store i32 0, i32* %646, align 4
  %647 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 1, i32 6
  store i32 0, i32* %647, align 4
  %648 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 2, i32 6
  store i32 0, i32* %648, align 4
  %649 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 3, i32 6
  store i32 0, i32* %649, align 4
  %650 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 4, i32 6
  store i32 0, i32* %650, align 4
  %651 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 5, i32 6
  store i32 0, i32* %651, align 4
  %652 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 6, i32 6
  store i32 0, i32* %652, align 4
  %653 = add nsw i32 %645, 7
  %654 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 7, i32 6
  store i32 0, i32* %654, align 4
  %655 = add nsw i32 %645, 8
  %656 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %644, i64 8
  %657 = icmp eq i32 %653, %618
  br i1 %657, label %658, label %643

; <label>:658:                                    ; preds = %643
  br label %659

; <label>:659:                                    ; preds = %636, %658
  %660 = icmp sgt i32 %618, 0
  %661 = load i32, i32* @files_ready_to_read, align 4
  %662 = icmp ne i32 %661, 0
  %663 = and i1 %660, %662
  br i1 %663, label %664, label %729

; <label>:664:                                    ; preds = %659
  br label %665

; <label>:665:                                    ; preds = %664, %715
  %666 = phi i32 [ %716, %715 ], [ %661, %664 ]
  %667 = phi %struct.COLUMN* [ %720, %715 ], [ %611, %664 ]
  %668 = phi i32 [ %718, %715 ], [ 0, %664 ]
  %669 = phi i32 [ %717, %715 ], [ 0, %664 ]
  %670 = phi i32 [ %719, %715 ], [ 1, %664 ]
  %671 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %667, i64 0, i32 5
  store i32 %669, i32* %671, align 8
  %672 = load i32, i32* @lines_per_body, align 4
  %673 = icmp ne i32 %672, 0
  %674 = icmp ne i32 %666, 0
  %675 = and i1 %674, %673
  br i1 %675, label %676, label %715

; <label>:676:                                    ; preds = %665
  %677 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %667, i64 0, i32 2
  %678 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %667, i64 0, i32 6
  %679 = load i32, i32* %677, align 8
  br label %680

; <label>:680:                                    ; preds = %705, %676
  %681 = phi i32 [ %679, %676 ], [ %706, %705 ]
  %682 = phi i32 [ %668, %676 ], [ %708, %705 ]
  %683 = phi i32 [ %669, %676 ], [ %707, %705 ]
  %684 = phi i32 [ %672, %676 ], [ %709, %705 ]
  %685 = icmp eq i32 %681, 0
  br i1 %685, label %686, label %705

; <label>:686:                                    ; preds = %680
  store i32 0, i32* @input_position, align 4
  %687 = tail call zeroext i1 @read_line(%struct.COLUMN* nonnull %667) #10
  br i1 %687, label %689, label %688

; <label>:688:                                    ; preds = %686
  tail call fastcc void @read_rest_of_line(%struct.COLUMN* %667) #10
  br label %689

; <label>:689:                                    ; preds = %688, %686
  %690 = load i32, i32* %677, align 8
  %691 = icmp ne i32 %690, 0
  %692 = load i32, i32* @buff_current, align 4
  %693 = icmp eq i32 %682, %692
  %694 = and i1 %691, %693
  br i1 %694, label %705, label %695

; <label>:695:                                    ; preds = %689
  %696 = load i32, i32* %678, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %678, align 4
  %698 = load i32*, i32** @line_vector, align 8
  %699 = zext i32 %683 to i64
  %700 = getelementptr inbounds i32, i32* %698, i64 %699
  store i32 %682, i32* %700, align 4
  %701 = load i32, i32* @input_position, align 4
  %702 = load i32*, i32** @end_vector, align 8
  %703 = add i32 %683, 1
  %704 = getelementptr inbounds i32, i32* %702, i64 %699
  store i32 %701, i32* %704, align 4
  br label %705

; <label>:705:                                    ; preds = %695, %689, %680
  %706 = phi i32 [ %690, %695 ], [ %681, %680 ], [ %690, %689 ]
  %707 = phi i32 [ %703, %695 ], [ %683, %680 ], [ %683, %689 ]
  %708 = phi i32 [ %692, %695 ], [ %682, %680 ], [ %682, %689 ]
  %709 = add nsw i32 %684, -1
  %710 = icmp ne i32 %709, 0
  %711 = load i32, i32* @files_ready_to_read, align 4
  %712 = icmp ne i32 %711, 0
  %713 = and i1 %710, %712
  br i1 %713, label %680, label %714

; <label>:714:                                    ; preds = %705
  br label %715

; <label>:715:                                    ; preds = %714, %665
  %716 = phi i32 [ %666, %665 ], [ %711, %714 ]
  %717 = phi i32 [ %669, %665 ], [ %707, %714 ]
  %718 = phi i32 [ %668, %665 ], [ %708, %714 ]
  %719 = add nuw nsw i32 %670, 1
  %720 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %667, i64 1
  %721 = icmp slt i32 %670, %618
  %722 = icmp ne i32 %716, 0
  %723 = and i1 %721, %722
  br i1 %723, label %665, label %724

; <label>:724:                                    ; preds = %715
  %725 = load i1, i1* @balance_columns, align 1
  %726 = load i32*, i32** @line_vector, align 8
  %727 = zext i32 %717 to i64
  %728 = getelementptr inbounds i32, i32* %726, i64 %727
  store i32 %718, i32* %728, align 4
  br i1 %725, label %731, label %800

; <label>:729:                                    ; preds = %659
  %730 = load i32*, i32** @line_vector, align 8
  store i32 0, i32* %730, align 4
  br i1 %615, label %731, label %800

; <label>:731:                                    ; preds = %729, %724, %641
  %732 = phi i32 [ %717, %724 ], [ 0, %729 ], [ 0, %641 ]
  %733 = load i32, i32* @columns, align 4
  %734 = icmp slt i32 %733, 1
  br i1 %734, label %800, label %735

; <label>:735:                                    ; preds = %731
  %736 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %737 = sdiv i32 %732, %733
  %738 = srem i32 %732, %733
  %739 = add i32 %733, -1
  %740 = and i32 %733, 3
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %759, label %742

; <label>:742:                                    ; preds = %735
  br label %743

; <label>:743:                                    ; preds = %743, %742
  %744 = phi i32 [ 0, %742 ], [ %753, %743 ]
  %745 = phi i32 [ 1, %742 ], [ %754, %743 ]
  %746 = phi %struct.COLUMN* [ %736, %742 ], [ %755, %743 ]
  %747 = phi i32 [ %740, %742 ], [ %756, %743 ]
  %748 = icmp sle i32 %745, %738
  %749 = zext i1 %748 to i32
  %750 = add nsw i32 %749, %737
  %751 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %746, i64 0, i32 6
  store i32 %750, i32* %751, align 4
  %752 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %746, i64 0, i32 5
  store i32 %744, i32* %752, align 8
  %753 = add nsw i32 %750, %744
  %754 = add nuw nsw i32 %745, 1
  %755 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %746, i64 1
  %756 = add i32 %747, -1
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %743

; <label>:758:                                    ; preds = %743
  br label %759

; <label>:759:                                    ; preds = %735, %758
  %760 = phi i32 [ 0, %735 ], [ %753, %758 ]
  %761 = phi i32 [ 1, %735 ], [ %754, %758 ]
  %762 = phi %struct.COLUMN* [ %736, %735 ], [ %755, %758 ]
  %763 = icmp ult i32 %739, 3
  br i1 %763, label %799, label %764

; <label>:764:                                    ; preds = %759
  br label %765

; <label>:765:                                    ; preds = %765, %764
  %766 = phi i32 [ %760, %764 ], [ %794, %765 ]
  %767 = phi i32 [ %761, %764 ], [ %795, %765 ]
  %768 = phi %struct.COLUMN* [ %762, %764 ], [ %796, %765 ]
  %769 = icmp sle i32 %767, %738
  %770 = zext i1 %769 to i32
  %771 = add nsw i32 %770, %737
  %772 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 0, i32 6
  store i32 %771, i32* %772, align 4
  %773 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 0, i32 5
  store i32 %766, i32* %773, align 8
  %774 = add nsw i32 %771, %766
  %775 = icmp slt i32 %767, %738
  %776 = zext i1 %775 to i32
  %777 = add nsw i32 %776, %737
  %778 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 1, i32 6
  store i32 %777, i32* %778, align 4
  %779 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 1, i32 5
  store i32 %774, i32* %779, align 8
  %780 = add nsw i32 %777, %774
  %781 = add nsw i32 %767, 2
  %782 = icmp sle i32 %781, %738
  %783 = zext i1 %782 to i32
  %784 = add nsw i32 %783, %737
  %785 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 2, i32 6
  store i32 %784, i32* %785, align 4
  %786 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 2, i32 5
  store i32 %780, i32* %786, align 8
  %787 = add nsw i32 %784, %780
  %788 = add nsw i32 %767, 3
  %789 = icmp sle i32 %788, %738
  %790 = zext i1 %789 to i32
  %791 = add nsw i32 %790, %737
  %792 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 3, i32 6
  store i32 %791, i32* %792, align 4
  %793 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 3, i32 5
  store i32 %787, i32* %793, align 8
  %794 = add nsw i32 %791, %787
  %795 = add nsw i32 %767, 4
  %796 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %768, i64 4
  %797 = icmp eq i32 %788, %733
  br i1 %797, label %798, label %765

; <label>:798:                                    ; preds = %765
  br label %799

; <label>:799:                                    ; preds = %759, %798
  br label %800

; <label>:800:                                    ; preds = %799, %731, %729, %724, %641
  %801 = phi i1 [ false, %641 ], [ false, %724 ], [ false, %729 ], [ true, %731 ], [ true, %799 ]
  %802 = load i32, i32* @columns, align 4
  %803 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %804 = add nsw i32 %802, -1
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %863, label %806

; <label>:806:                                    ; preds = %800
  %807 = add i32 %802, -2
  %808 = and i32 %804, 7
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %823, label %810

; <label>:810:                                    ; preds = %806
  br label %811

; <label>:811:                                    ; preds = %811, %810
  %812 = phi i32 [ %819, %811 ], [ %804, %810 ]
  %813 = phi %struct.COLUMN* [ %818, %811 ], [ %803, %810 ]
  %814 = phi i32 [ %820, %811 ], [ %808, %810 ]
  %815 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %813, i64 0, i32 6
  %816 = load i32, i32* %815, align 4
  %817 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %813, i64 0, i32 7
  store i32 %816, i32* %817, align 8
  %818 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %813, i64 1
  %819 = add nsw i32 %812, -1
  %820 = add i32 %814, -1
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %822, label %811

; <label>:822:                                    ; preds = %811
  br label %823

; <label>:823:                                    ; preds = %806, %822
  %824 = phi i32 [ %804, %806 ], [ %819, %822 ]
  %825 = phi %struct.COLUMN* [ %803, %806 ], [ %818, %822 ]
  %826 = icmp ult i32 %807, 7
  br i1 %826, label %859, label %827

; <label>:827:                                    ; preds = %823
  br label %828

; <label>:828:                                    ; preds = %828, %827
  %829 = phi i32 [ %824, %827 ], [ %856, %828 ]
  %830 = phi %struct.COLUMN* [ %825, %827 ], [ %855, %828 ]
  %831 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 0, i32 6
  %832 = load i32, i32* %831, align 4
  %833 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 0, i32 7
  store i32 %832, i32* %833, align 8
  %834 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 1, i32 6
  %835 = load i32, i32* %834, align 4
  %836 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 1, i32 7
  store i32 %835, i32* %836, align 8
  %837 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 2, i32 6
  %838 = load i32, i32* %837, align 4
  %839 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 2, i32 7
  store i32 %838, i32* %839, align 8
  %840 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 3, i32 6
  %841 = load i32, i32* %840, align 4
  %842 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 3, i32 7
  store i32 %841, i32* %842, align 8
  %843 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 4, i32 6
  %844 = load i32, i32* %843, align 4
  %845 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 4, i32 7
  store i32 %844, i32* %845, align 8
  %846 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 5, i32 6
  %847 = load i32, i32* %846, align 4
  %848 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 5, i32 7
  store i32 %847, i32* %848, align 8
  %849 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 6, i32 6
  %850 = load i32, i32* %849, align 4
  %851 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 6, i32 7
  store i32 %850, i32* %851, align 8
  %852 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 7, i32 6
  %853 = load i32, i32* %852, align 4
  %854 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 7, i32 7
  store i32 %853, i32* %854, align 8
  %855 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %830, i64 8
  %856 = add nsw i32 %829, -8
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %828

; <label>:858:                                    ; preds = %828
  br label %859

; <label>:859:                                    ; preds = %823, %858
  %860 = zext i32 %807 to i64
  %861 = add nuw nsw i64 %860, 1
  %862 = getelementptr %struct.COLUMN, %struct.COLUMN* %803, i64 %861
  br label %863

; <label>:863:                                    ; preds = %859, %800
  %864 = phi %struct.COLUMN* [ %803, %800 ], [ %862, %859 ]
  br i1 %801, label %865, label %868

; <label>:865:                                    ; preds = %863
  %866 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %864, i64 0, i32 6
  %867 = load i32, i32* %866, align 4
  br label %874

; <label>:868:                                    ; preds = %863
  %869 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %864, i64 0, i32 2
  %870 = load i32, i32* %869, align 8
  %871 = icmp eq i32 %870, 0
  %872 = load i32, i32* @lines_per_body, align 4
  %873 = select i1 %871, i32 %872, i32 0
  br label %874

; <label>:874:                                    ; preds = %868, %865
  %875 = phi i32 [ %873, %868 ], [ %867, %865 ]
  %876 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %864, i64 0, i32 7
  store i32 %875, i32* %876, align 8
  br label %934

; <label>:877:                                    ; preds = %1453, %610
  %878 = phi %struct.COLUMN* [ %1416, %1453 ], [ %611, %610 ]
  %879 = phi i32 [ %1415, %1453 ], [ %612, %610 ]
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %1460, label %881

; <label>:881:                                    ; preds = %877
  %882 = load i32, i32* @lines_per_body, align 4
  %883 = add i32 %879, -1
  %884 = and i32 %879, 3
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %901, label %886

; <label>:886:                                    ; preds = %881
  br label %887

; <label>:887:                                    ; preds = %887, %886
  %888 = phi %struct.COLUMN* [ %878, %886 ], [ %897, %887 ]
  %889 = phi i32 [ %879, %886 ], [ %896, %887 ]
  %890 = phi i32 [ %884, %886 ], [ %898, %887 ]
  %891 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %888, i64 0, i32 2
  %892 = load i32, i32* %891, align 8
  %893 = icmp eq i32 %892, 0
  %894 = select i1 %893, i32 %882, i32 0
  %895 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %888, i64 0, i32 7
  store i32 %894, i32* %895, align 8
  %896 = add nsw i32 %889, -1
  %897 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %888, i64 1
  %898 = add i32 %890, -1
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %887

; <label>:900:                                    ; preds = %887
  br label %901

; <label>:901:                                    ; preds = %881, %900
  %902 = phi %struct.COLUMN* [ %878, %881 ], [ %897, %900 ]
  %903 = phi i32 [ %879, %881 ], [ %896, %900 ]
  %904 = icmp ult i32 %883, 3
  br i1 %904, label %933, label %905

; <label>:905:                                    ; preds = %901
  br label %906

; <label>:906:                                    ; preds = %906, %905
  %907 = phi %struct.COLUMN* [ %902, %905 ], [ %930, %906 ]
  %908 = phi i32 [ %903, %905 ], [ %929, %906 ]
  %909 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 0, i32 2
  %910 = load i32, i32* %909, align 8
  %911 = icmp eq i32 %910, 0
  %912 = select i1 %911, i32 %882, i32 0
  %913 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 0, i32 7
  store i32 %912, i32* %913, align 8
  %914 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 1, i32 2
  %915 = load i32, i32* %914, align 8
  %916 = icmp eq i32 %915, 0
  %917 = select i1 %916, i32 %882, i32 0
  %918 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 1, i32 7
  store i32 %917, i32* %918, align 8
  %919 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 2, i32 2
  %920 = load i32, i32* %919, align 8
  %921 = icmp eq i32 %920, 0
  %922 = select i1 %921, i32 %882, i32 0
  %923 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 2, i32 7
  store i32 %922, i32* %923, align 8
  %924 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 3, i32 2
  %925 = load i32, i32* %924, align 8
  %926 = icmp eq i32 %925, 0
  %927 = select i1 %926, i32 %882, i32 0
  %928 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 3, i32 7
  store i32 %927, i32* %928, align 8
  %929 = add nsw i32 %908, -4
  %930 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %907, i64 4
  %931 = icmp eq i32 %929, 0
  br i1 %931, label %932, label %906

; <label>:932:                                    ; preds = %906
  br label %933

; <label>:933:                                    ; preds = %901, %932
  br label %934

; <label>:934:                                    ; preds = %933, %874
  %935 = phi %struct.COLUMN* [ %803, %874 ], [ %878, %933 ]
  %936 = phi i32 [ %802, %874 ], [ %879, %933 ]
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %1460, label %938

; <label>:938:                                    ; preds = %934
  %939 = load i1, i1* @storing_columns, align 1
  %940 = and i32 %936, 1
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %960, label %942

; <label>:942:                                    ; preds = %938
  br label %943

; <label>:943:                                    ; preds = %942
  %944 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %935, i64 0, i32 2
  %945 = load i32, i32* %944, align 8
  %946 = icmp ult i32 %945, 2
  br i1 %946, label %956, label %947

; <label>:947:                                    ; preds = %943
  br i1 %939, label %957, label %948

; <label>:948:                                    ; preds = %947
  %949 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %935, i64 0, i32 6
  %950 = load i32, i32* %949, align 4
  %951 = icmp sgt i32 %950, 0
  br i1 %951, label %952, label %957

; <label>:952:                                    ; preds = %948
  %953 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %935, i64 0, i32 7
  %954 = load i32, i32* %953, align 8
  %955 = icmp sgt i32 %954, 0
  br i1 %955, label %956, label %957

; <label>:956:                                    ; preds = %952, %943
  br label %957

; <label>:957:                                    ; preds = %956, %952, %948, %947
  %958 = phi i32 [ 1, %956 ], [ 0, %952 ], [ 0, %948 ], [ 0, %947 ]
  %959 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %935, i64 1
  br label %960

; <label>:960:                                    ; preds = %938, %957
  %961 = phi i32 [ %958, %957 ], [ undef, %938 ]
  %962 = phi i32 [ %958, %957 ], [ 0, %938 ]
  %963 = phi i32 [ 1, %957 ], [ 0, %938 ]
  %964 = phi %struct.COLUMN* [ %959, %957 ], [ %935, %938 ]
  br label %965

; <label>:965:                                    ; preds = %960
  %966 = icmp eq i32 %936, 1
  br i1 %966, label %992, label %967

; <label>:967:                                    ; preds = %965
  br label %968

; <label>:968:                                    ; preds = %1473, %967
  %969 = phi i32 [ %962, %967 ], [ %1474, %1473 ]
  %970 = phi i32 [ %963, %967 ], [ %1476, %1473 ]
  %971 = phi %struct.COLUMN* [ %964, %967 ], [ %1475, %1473 ]
  %972 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %971, i64 0, i32 2
  %973 = load i32, i32* %972, align 8
  %974 = icmp ult i32 %973, 2
  br i1 %974, label %984, label %975

; <label>:975:                                    ; preds = %968
  br i1 %939, label %986, label %976

; <label>:976:                                    ; preds = %975
  %977 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %971, i64 0, i32 6
  %978 = load i32, i32* %977, align 4
  %979 = icmp sgt i32 %978, 0
  br i1 %979, label %980, label %986

; <label>:980:                                    ; preds = %976
  %981 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %971, i64 0, i32 7
  %982 = load i32, i32* %981, align 8
  %983 = icmp sgt i32 %982, 0
  br i1 %983, label %984, label %986

; <label>:984:                                    ; preds = %980, %968
  %985 = add i32 %969, 1
  br label %986

; <label>:986:                                    ; preds = %984, %980, %976, %975
  %987 = phi i32 [ %985, %984 ], [ %969, %980 ], [ %969, %976 ], [ %969, %975 ]
  %988 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %971, i64 1, i32 2
  %989 = load i32, i32* %988, align 8
  %990 = icmp ult i32 %989, 2
  br i1 %990, label %1471, label %1462

; <label>:991:                                    ; preds = %1473
  br label %992

; <label>:992:                                    ; preds = %965, %991
  %993 = phi i32 [ %961, %965 ], [ %1474, %991 ]
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1460, label %995

; <label>:995:                                    ; preds = %992
  %996 = load i1, i1* @extremities, align 1
  br i1 %996, label %998, label %997

; <label>:997:                                    ; preds = %995
  store i1 true, i1* @print_a_header, align 1
  br label %998

; <label>:998:                                    ; preds = %997, %995
  store i8 0, i8* @pad_vertically, align 1
  %999 = load i32, i32* @lines_per_body, align 4
  %1000 = load i1, i1* @double_space, align 1
  %1001 = zext i1 %1000 to i32
  %1002 = shl nsw i32 %999, %1001
  %1003 = icmp sgt i32 %1002, 0
  br i1 %1003, label %1004, label %1305

; <label>:1004:                                   ; preds = %998
  br label %1005

; <label>:1005:                                   ; preds = %1004, %1299
  %1006 = phi i1 [ %1301, %1299 ], [ %939, %1004 ]
  %1007 = phi %struct.COLUMN* [ %1300, %1299 ], [ %935, %1004 ]
  %1008 = phi i32 [ %1294, %1299 ], [ %1002, %1004 ]
  %1009 = phi i8 [ %1210, %1299 ], [ 0, %1004 ]
  %1010 = phi i32 [ %1297, %1299 ], [ %936, %1004 ]
  %1011 = and i32 %1010, 1
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1031, label %1013

; <label>:1013:                                   ; preds = %1005
  br label %1014

; <label>:1014:                                   ; preds = %1013
  %1015 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1007, i64 0, i32 2
  %1016 = load i32, i32* %1015, align 8
  %1017 = icmp ult i32 %1016, 2
  br i1 %1017, label %1027, label %1018

; <label>:1018:                                   ; preds = %1014
  br i1 %1006, label %1028, label %1019

; <label>:1019:                                   ; preds = %1018
  %1020 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1007, i64 0, i32 6
  %1021 = load i32, i32* %1020, align 4
  %1022 = icmp sgt i32 %1021, 0
  br i1 %1022, label %1023, label %1028

; <label>:1023:                                   ; preds = %1019
  %1024 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1007, i64 0, i32 7
  %1025 = load i32, i32* %1024, align 8
  %1026 = icmp sgt i32 %1025, 0
  br i1 %1026, label %1027, label %1028

; <label>:1027:                                   ; preds = %1023, %1014
  br label %1028

; <label>:1028:                                   ; preds = %1027, %1023, %1019, %1018
  %1029 = phi i32 [ 1, %1027 ], [ 0, %1023 ], [ 0, %1019 ], [ 0, %1018 ]
  %1030 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1007, i64 1
  br label %1031

; <label>:1031:                                   ; preds = %1005, %1028
  %1032 = phi i32 [ %1029, %1028 ], [ undef, %1005 ]
  %1033 = phi i32 [ %1029, %1028 ], [ 0, %1005 ]
  %1034 = phi i32 [ 1, %1028 ], [ 0, %1005 ]
  %1035 = phi %struct.COLUMN* [ %1030, %1028 ], [ %1007, %1005 ]
  br label %1036

; <label>:1036:                                   ; preds = %1031
  %1037 = icmp eq i32 %1010, 1
  br i1 %1037, label %1063, label %1038

; <label>:1038:                                   ; preds = %1036
  br label %1039

; <label>:1039:                                   ; preds = %1489, %1038
  %1040 = phi i32 [ %1033, %1038 ], [ %1490, %1489 ]
  %1041 = phi i32 [ %1034, %1038 ], [ %1492, %1489 ]
  %1042 = phi %struct.COLUMN* [ %1035, %1038 ], [ %1491, %1489 ]
  %1043 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1042, i64 0, i32 2
  %1044 = load i32, i32* %1043, align 8
  %1045 = icmp ult i32 %1044, 2
  br i1 %1045, label %1055, label %1046

; <label>:1046:                                   ; preds = %1039
  br i1 %1006, label %1057, label %1047

; <label>:1047:                                   ; preds = %1046
  %1048 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1042, i64 0, i32 6
  %1049 = load i32, i32* %1048, align 4
  %1050 = icmp sgt i32 %1049, 0
  br i1 %1050, label %1051, label %1057

; <label>:1051:                                   ; preds = %1047
  %1052 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1042, i64 0, i32 7
  %1053 = load i32, i32* %1052, align 8
  %1054 = icmp sgt i32 %1053, 0
  br i1 %1054, label %1055, label %1057

; <label>:1055:                                   ; preds = %1051, %1039
  %1056 = add i32 %1040, 1
  br label %1057

; <label>:1057:                                   ; preds = %1055, %1051, %1047, %1046
  %1058 = phi i32 [ %1056, %1055 ], [ %1040, %1051 ], [ %1040, %1047 ], [ %1040, %1046 ]
  %1059 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1042, i64 1, i32 2
  %1060 = load i32, i32* %1059, align 8
  %1061 = icmp ult i32 %1060, 2
  br i1 %1061, label %1487, label %1478

; <label>:1062:                                   ; preds = %1489
  br label %1063

; <label>:1063:                                   ; preds = %1036, %1062
  %1064 = phi i32 [ %1032, %1036 ], [ %1490, %1062 ]
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1302, label %1066

; <label>:1066:                                   ; preds = %1063
  store i32 0, i32* @output_position, align 4
  store i32 0, i32* @spaces_not_printed, align 4
  store i32 0, i32* @separators_not_printed, align 4
  store i8 0, i8* @pad_vertically, align 1
  store i1 false, i1* @align_empty_cols, align 1
  store i1 true, i1* @empty_line, align 1
  %1067 = icmp slt i32 %1010, 1
  br i1 %1067, label %1209, label %1068

; <label>:1068:                                   ; preds = %1066
  br label %1069

; <label>:1069:                                   ; preds = %1068, %1181
  %1070 = phi i8 [ %1175, %1181 ], [ %1009, %1068 ]
  %1071 = phi %struct.COLUMN* [ %1183, %1181 ], [ %1007, %1068 ]
  %1072 = phi i32 [ %1182, %1181 ], [ 1, %1068 ]
  store i32 0, i32* @input_position, align 4
  %1073 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1071, i64 0, i32 7
  %1074 = load i32, i32* %1073, align 8
  %1075 = icmp sgt i32 %1074, 0
  br i1 %1075, label %1080, label %1076

; <label>:1076:                                   ; preds = %1069
  %1077 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1071, i64 0, i32 2
  %1078 = load i32, i32* %1077, align 8
  %1079 = icmp eq i32 %1078, 1
  br i1 %1079, label %1080, label %1168

; <label>:1080:                                   ; preds = %1076, %1069
  store i1 false, i1* @FF_only, align 1
  %1081 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1071, i64 0, i32 8
  %1082 = load i32, i32* %1081, align 4
  store i32 %1082, i32* @padding_not_printed, align 4
  %1083 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1071, i64 0, i32 3
  %1084 = load i1 (%struct.COLUMN*)*, i1 (%struct.COLUMN*)** %1083, align 8
  %1085 = tail call zeroext i1 %1084(%struct.COLUMN* nonnull %1071) #10
  br i1 %1085, label %1087, label %1086

; <label>:1086:                                   ; preds = %1080
  tail call fastcc void @read_rest_of_line(%struct.COLUMN* nonnull %1071) #10
  br label %1087

; <label>:1087:                                   ; preds = %1086, %1080
  %1088 = load i8, i8* @pad_vertically, align 1
  %1089 = and i8 %1070, 1
  %1090 = or i8 %1088, %1089
  %1091 = load i32, i32* %1073, align 8
  %1092 = add nsw i32 %1091, -1
  store i32 %1092, i32* %1073, align 8
  %1093 = icmp slt i32 %1091, 2
  br i1 %1093, label %1094, label %1155

; <label>:1094:                                   ; preds = %1087
  %1095 = load i32, i32* @columns, align 4
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1188, label %1097

; <label>:1097:                                   ; preds = %1094
  %1098 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %1099 = load i1, i1* @storing_columns, align 1
  %1100 = and i32 %1095, 1
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1120, label %1102

; <label>:1102:                                   ; preds = %1097
  br label %1103

; <label>:1103:                                   ; preds = %1102
  %1104 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1098, i64 0, i32 2
  %1105 = load i32, i32* %1104, align 8
  %1106 = icmp ult i32 %1105, 2
  br i1 %1106, label %1116, label %1107

; <label>:1107:                                   ; preds = %1103
  br i1 %1099, label %1117, label %1108

; <label>:1108:                                   ; preds = %1107
  %1109 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1098, i64 0, i32 6
  %1110 = load i32, i32* %1109, align 4
  %1111 = icmp sgt i32 %1110, 0
  br i1 %1111, label %1112, label %1117

; <label>:1112:                                   ; preds = %1108
  %1113 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1098, i64 0, i32 7
  %1114 = load i32, i32* %1113, align 8
  %1115 = icmp sgt i32 %1114, 0
  br i1 %1115, label %1116, label %1117

; <label>:1116:                                   ; preds = %1112, %1103
  br label %1117

; <label>:1117:                                   ; preds = %1116, %1112, %1108, %1107
  %1118 = phi i32 [ 1, %1116 ], [ 0, %1112 ], [ 0, %1108 ], [ 0, %1107 ]
  %1119 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1098, i64 1
  br label %1120

; <label>:1120:                                   ; preds = %1097, %1117
  %1121 = phi i32 [ %1118, %1117 ], [ undef, %1097 ]
  %1122 = phi i32 [ %1118, %1117 ], [ 0, %1097 ]
  %1123 = phi i32 [ 1, %1117 ], [ 0, %1097 ]
  %1124 = phi %struct.COLUMN* [ %1119, %1117 ], [ %1098, %1097 ]
  br label %1125

; <label>:1125:                                   ; preds = %1120
  %1126 = icmp eq i32 %1095, 1
  br i1 %1126, label %1152, label %1127

; <label>:1127:                                   ; preds = %1125
  br label %1128

; <label>:1128:                                   ; preds = %1505, %1127
  %1129 = phi i32 [ %1122, %1127 ], [ %1506, %1505 ]
  %1130 = phi i32 [ %1123, %1127 ], [ %1508, %1505 ]
  %1131 = phi %struct.COLUMN* [ %1124, %1127 ], [ %1507, %1505 ]
  %1132 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1131, i64 0, i32 2
  %1133 = load i32, i32* %1132, align 8
  %1134 = icmp ult i32 %1133, 2
  br i1 %1134, label %1144, label %1135

; <label>:1135:                                   ; preds = %1128
  br i1 %1099, label %1146, label %1136

; <label>:1136:                                   ; preds = %1135
  %1137 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1131, i64 0, i32 6
  %1138 = load i32, i32* %1137, align 4
  %1139 = icmp sgt i32 %1138, 0
  br i1 %1139, label %1140, label %1146

; <label>:1140:                                   ; preds = %1136
  %1141 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1131, i64 0, i32 7
  %1142 = load i32, i32* %1141, align 8
  %1143 = icmp sgt i32 %1142, 0
  br i1 %1143, label %1144, label %1146

; <label>:1144:                                   ; preds = %1140, %1128
  %1145 = add i32 %1129, 1
  br label %1146

; <label>:1146:                                   ; preds = %1144, %1140, %1136, %1135
  %1147 = phi i32 [ %1145, %1144 ], [ %1129, %1140 ], [ %1129, %1136 ], [ %1129, %1135 ]
  %1148 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1131, i64 1, i32 2
  %1149 = load i32, i32* %1148, align 8
  %1150 = icmp ult i32 %1149, 2
  br i1 %1150, label %1503, label %1494

; <label>:1151:                                   ; preds = %1505
  br label %1152

; <label>:1152:                                   ; preds = %1125, %1151
  %1153 = phi i32 [ %1121, %1125 ], [ %1506, %1151 ]
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1188, label %1155

; <label>:1155:                                   ; preds = %1152, %1087
  %1156 = load i1, i1* @parallel_files, align 1
  br i1 %1156, label %1157, label %1174

; <label>:1157:                                   ; preds = %1155
  %1158 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1071, i64 0, i32 2
  %1159 = load i32, i32* %1158, align 8
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1174, label %1161

; <label>:1161:                                   ; preds = %1157
  %1162 = load i1, i1* @empty_line, align 1
  br i1 %1162, label %1163, label %1164

; <label>:1163:                                   ; preds = %1161
  store i1 true, i1* @align_empty_cols, align 1
  br label %1174

; <label>:1164:                                   ; preds = %1161
  switch i32 %1159, label %1174 [
    i32 3, label %1167
    i32 2, label %1165
  ]

; <label>:1165:                                   ; preds = %1164
  %1166 = load i1, i1* @FF_only, align 1
  br i1 %1166, label %1167, label %1174

; <label>:1167:                                   ; preds = %1165, %1164
  tail call fastcc void @align_column(%struct.COLUMN* nonnull %1071) #10
  br label %1174

; <label>:1168:                                   ; preds = %1076
  %1169 = load i1, i1* @parallel_files, align 1
  br i1 %1169, label %1170, label %1174

; <label>:1170:                                   ; preds = %1168
  %1171 = load i1, i1* @empty_line, align 1
  br i1 %1171, label %1172, label %1173

; <label>:1172:                                   ; preds = %1170
  store i1 true, i1* @align_empty_cols, align 1
  br label %1174

; <label>:1173:                                   ; preds = %1170
  tail call fastcc void @align_column(%struct.COLUMN* nonnull %1071) #10
  br label %1174

; <label>:1174:                                   ; preds = %1173, %1172, %1168, %1167, %1165, %1164, %1163, %1157, %1155
  %1175 = phi i8 [ %1090, %1163 ], [ %1090, %1167 ], [ %1090, %1165 ], [ %1090, %1157 ], [ %1090, %1155 ], [ %1070, %1172 ], [ %1070, %1173 ], [ %1070, %1168 ], [ %1090, %1164 ]
  %1176 = load i8, i8* @use_col_separator, align 1
  %1177 = icmp eq i8 %1176, 0
  br i1 %1177, label %1181, label %1178

; <label>:1178:                                   ; preds = %1174
  %1179 = load i32, i32* @separators_not_printed, align 4
  %1180 = add nsw i32 %1179, 1
  store i32 %1180, i32* @separators_not_printed, align 4
  br label %1181

; <label>:1181:                                   ; preds = %1178, %1174
  %1182 = add nuw nsw i32 %1072, 1
  %1183 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1071, i64 1
  %1184 = load i32, i32* @columns, align 4
  %1185 = icmp slt i32 %1072, %1184
  br i1 %1185, label %1069, label %1186

; <label>:1186:                                   ; preds = %1181
  %1187 = load i8, i8* @pad_vertically, align 1
  br label %1190

; <label>:1188:                                   ; preds = %1094, %1152
  %1189 = phi i32 [ %1095, %1152 ], [ 0, %1094 ]
  br label %1190

; <label>:1190:                                   ; preds = %1188, %1186
  %1191 = phi i32 [ %1184, %1186 ], [ %1189, %1188 ]
  %1192 = phi i8 [ %1187, %1186 ], [ %1088, %1188 ]
  %1193 = phi i8 [ %1175, %1186 ], [ %1090, %1188 ]
  %1194 = icmp eq i8 %1192, 0
  br i1 %1194, label %1209, label %1195

; <label>:1195:                                   ; preds = %1190
  %1196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1197 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1196, i64 0, i32 5
  %1198 = load i8*, i8** %1197, align 8
  %1199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1196, i64 0, i32 6
  %1200 = load i8*, i8** %1199, align 8
  %1201 = icmp ult i8* %1198, %1200
  br i1 %1201, label %1204, label %1202

; <label>:1202:                                   ; preds = %1195
  %1203 = tail call i32 @__overflow(%struct._IO_FILE* %1196, i32 10) #10
  br label %1206

; <label>:1204:                                   ; preds = %1195
  %1205 = getelementptr inbounds i8, i8* %1198, i64 1
  store i8* %1205, i8** %1197, align 8
  store i8 10, i8* %1198, align 1
  br label %1206

; <label>:1206:                                   ; preds = %1204, %1202
  %1207 = add nsw i32 %1008, -1
  %1208 = load i32, i32* @columns, align 4
  br label %1209

; <label>:1209:                                   ; preds = %1206, %1190, %1066
  %1210 = phi i8 [ %1193, %1206 ], [ %1193, %1190 ], [ %1009, %1066 ]
  %1211 = phi i32 [ %1208, %1206 ], [ %1191, %1190 ], [ %1010, %1066 ]
  %1212 = phi i32 [ %1207, %1206 ], [ %1008, %1190 ], [ %1008, %1066 ]
  %1213 = icmp eq i32 %1211, 0
  br i1 %1213, label %1272, label %1214

; <label>:1214:                                   ; preds = %1209
  %1215 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %1216 = load i1, i1* @storing_columns, align 1
  %1217 = and i32 %1211, 1
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1237, label %1219

; <label>:1219:                                   ; preds = %1214
  br label %1220

; <label>:1220:                                   ; preds = %1219
  %1221 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1215, i64 0, i32 2
  %1222 = load i32, i32* %1221, align 8
  %1223 = icmp ult i32 %1222, 2
  br i1 %1223, label %1233, label %1224

; <label>:1224:                                   ; preds = %1220
  br i1 %1216, label %1234, label %1225

; <label>:1225:                                   ; preds = %1224
  %1226 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1215, i64 0, i32 6
  %1227 = load i32, i32* %1226, align 4
  %1228 = icmp sgt i32 %1227, 0
  br i1 %1228, label %1229, label %1234

; <label>:1229:                                   ; preds = %1225
  %1230 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1215, i64 0, i32 7
  %1231 = load i32, i32* %1230, align 8
  %1232 = icmp sgt i32 %1231, 0
  br i1 %1232, label %1233, label %1234

; <label>:1233:                                   ; preds = %1229, %1220
  br label %1234

; <label>:1234:                                   ; preds = %1233, %1229, %1225, %1224
  %1235 = phi i32 [ 1, %1233 ], [ 0, %1229 ], [ 0, %1225 ], [ 0, %1224 ]
  %1236 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1215, i64 1
  br label %1237

; <label>:1237:                                   ; preds = %1214, %1234
  %1238 = phi i32 [ %1235, %1234 ], [ undef, %1214 ]
  %1239 = phi i32 [ %1235, %1234 ], [ 0, %1214 ]
  %1240 = phi i32 [ 1, %1234 ], [ 0, %1214 ]
  %1241 = phi %struct.COLUMN* [ %1236, %1234 ], [ %1215, %1214 ]
  br label %1242

; <label>:1242:                                   ; preds = %1237
  %1243 = icmp eq i32 %1211, 1
  br i1 %1243, label %1269, label %1244

; <label>:1244:                                   ; preds = %1242
  br label %1245

; <label>:1245:                                   ; preds = %1521, %1244
  %1246 = phi i32 [ %1239, %1244 ], [ %1522, %1521 ]
  %1247 = phi i32 [ %1240, %1244 ], [ %1524, %1521 ]
  %1248 = phi %struct.COLUMN* [ %1241, %1244 ], [ %1523, %1521 ]
  %1249 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1248, i64 0, i32 2
  %1250 = load i32, i32* %1249, align 8
  %1251 = icmp ult i32 %1250, 2
  br i1 %1251, label %1261, label %1252

; <label>:1252:                                   ; preds = %1245
  br i1 %1216, label %1263, label %1253

; <label>:1253:                                   ; preds = %1252
  %1254 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1248, i64 0, i32 6
  %1255 = load i32, i32* %1254, align 4
  %1256 = icmp sgt i32 %1255, 0
  br i1 %1256, label %1257, label %1263

; <label>:1257:                                   ; preds = %1253
  %1258 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1248, i64 0, i32 7
  %1259 = load i32, i32* %1258, align 8
  %1260 = icmp sgt i32 %1259, 0
  br i1 %1260, label %1261, label %1263

; <label>:1261:                                   ; preds = %1257, %1245
  %1262 = add i32 %1246, 1
  br label %1263

; <label>:1263:                                   ; preds = %1261, %1257, %1253, %1252
  %1264 = phi i32 [ %1262, %1261 ], [ %1246, %1257 ], [ %1246, %1253 ], [ %1246, %1252 ]
  %1265 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1248, i64 1, i32 2
  %1266 = load i32, i32* %1265, align 8
  %1267 = icmp ult i32 %1266, 2
  br i1 %1267, label %1519, label %1510

; <label>:1268:                                   ; preds = %1521
  br label %1269

; <label>:1269:                                   ; preds = %1242, %1268
  %1270 = phi i32 [ %1238, %1242 ], [ %1522, %1268 ]
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1272, label %1274

; <label>:1272:                                   ; preds = %1269, %1209
  %1273 = load i1, i1* @extremities, align 1
  br i1 %1273, label %1302, label %1274

; <label>:1274:                                   ; preds = %1272, %1269
  %1275 = load i1, i1* @double_space, align 1
  %1276 = xor i1 %1275, true
  %1277 = and i8 %1210, 1
  %1278 = icmp eq i8 %1277, 0
  %1279 = or i1 %1278, %1276
  br i1 %1279, label %1293, label %1280

; <label>:1280:                                   ; preds = %1274
  %1281 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1282 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1281, i64 0, i32 5
  %1283 = load i8*, i8** %1282, align 8
  %1284 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1281, i64 0, i32 6
  %1285 = load i8*, i8** %1284, align 8
  %1286 = icmp ult i8* %1283, %1285
  br i1 %1286, label %1289, label %1287

; <label>:1287:                                   ; preds = %1280
  %1288 = tail call i32 @__overflow(%struct._IO_FILE* %1281, i32 10) #10
  br label %1291

; <label>:1289:                                   ; preds = %1280
  %1290 = getelementptr inbounds i8, i8* %1283, i64 1
  store i8* %1290, i8** %1282, align 8
  store i8 10, i8* %1283, align 1
  br label %1291

; <label>:1291:                                   ; preds = %1289, %1287
  %1292 = add nsw i32 %1212, -1
  br label %1293

; <label>:1293:                                   ; preds = %1291, %1274
  %1294 = phi i32 [ %1292, %1291 ], [ %1212, %1274 ]
  %1295 = icmp sgt i32 %1294, 0
  br i1 %1295, label %1296, label %1302

; <label>:1296:                                   ; preds = %1293
  %1297 = load i32, i32* @columns, align 4
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1352, label %1299

; <label>:1299:                                   ; preds = %1296
  %1300 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %1301 = load i1, i1* @storing_columns, align 1
  br label %1005

; <label>:1302:                                   ; preds = %1063, %1272, %1293
  %1303 = phi i32 [ %1294, %1293 ], [ %1008, %1063 ], [ %1212, %1272 ]
  %1304 = phi i8 [ %1210, %1293 ], [ %1009, %1063 ], [ %1210, %1272 ]
  br label %1305

; <label>:1305:                                   ; preds = %1302, %998
  %1306 = phi i32 [ %1002, %998 ], [ %1303, %1302 ]
  %1307 = phi i8 [ 0, %998 ], [ %1304, %1302 ]
  %1308 = icmp eq i32 %1306, 0
  br i1 %1308, label %1309, label %1353

; <label>:1309:                                   ; preds = %1305
  %1310 = load i32, i32* @columns, align 4
  %1311 = icmp slt i32 %1310, 1
  br i1 %1311, label %1353, label %1312

; <label>:1312:                                   ; preds = %1309
  %1313 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %1314 = add i32 %1310, -1
  %1315 = and i32 %1310, 3
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1333, label %1317

; <label>:1317:                                   ; preds = %1312
  br label %1318

; <label>:1318:                                   ; preds = %1327, %1317
  %1319 = phi %struct.COLUMN* [ %1313, %1317 ], [ %1329, %1327 ]
  %1320 = phi i32 [ 1, %1317 ], [ %1328, %1327 ]
  %1321 = phi i32 [ %1315, %1317 ], [ %1330, %1327 ]
  %1322 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1319, i64 0, i32 2
  %1323 = load i32, i32* %1322, align 8
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1325, label %1327

; <label>:1325:                                   ; preds = %1318
  %1326 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1319, i64 0, i32 10
  store i8 1, i8* %1326, align 1
  br label %1327

; <label>:1327:                                   ; preds = %1325, %1318
  %1328 = add nuw nsw i32 %1320, 1
  %1329 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1319, i64 1
  %1330 = add i32 %1321, -1
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1332, label %1318

; <label>:1332:                                   ; preds = %1327
  br label %1333

; <label>:1333:                                   ; preds = %1312, %1332
  %1334 = phi %struct.COLUMN* [ %1313, %1312 ], [ %1329, %1332 ]
  %1335 = phi i32 [ 1, %1312 ], [ %1328, %1332 ]
  %1336 = icmp ult i32 %1314, 3
  br i1 %1336, label %1351, label %1337

; <label>:1337:                                   ; preds = %1333
  br label %1338

; <label>:1338:                                   ; preds = %1541, %1337
  %1339 = phi %struct.COLUMN* [ %1334, %1337 ], [ %1543, %1541 ]
  %1340 = phi i32 [ %1335, %1337 ], [ %1542, %1541 ]
  %1341 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 0, i32 2
  %1342 = load i32, i32* %1341, align 8
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1344, label %1346

; <label>:1344:                                   ; preds = %1338
  %1345 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 0, i32 10
  store i8 1, i8* %1345, align 1
  br label %1346

; <label>:1346:                                   ; preds = %1344, %1338
  %1347 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 1, i32 2
  %1348 = load i32, i32* %1347, align 8
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1526, label %1528

; <label>:1350:                                   ; preds = %1541
  br label %1351

; <label>:1351:                                   ; preds = %1333, %1350
  br label %1353

; <label>:1352:                                   ; preds = %1296
  br label %1353

; <label>:1353:                                   ; preds = %1352, %1351, %1309, %1305
  %1354 = phi i8 [ %1307, %1305 ], [ %1307, %1309 ], [ %1307, %1351 ], [ %1210, %1352 ]
  %1355 = phi i32 [ %1306, %1305 ], [ 0, %1309 ], [ 0, %1351 ], [ %1294, %1352 ]
  %1356 = and i8 %1354, 1
  %1357 = icmp eq i8 %1356, 0
  store i8 %1356, i8* @pad_vertically, align 1
  br i1 %1357, label %1392, label %1358

; <label>:1358:                                   ; preds = %1353
  %1359 = load i1, i1* @extremities, align 1
  br i1 %1359, label %1392, label %1360

; <label>:1360:                                   ; preds = %1358
  %1361 = add nsw i32 %1355, 5
  %1362 = load i1, i1* @use_form_feed, align 1
  br i1 %1362, label %1366, label %1363

; <label>:1363:                                   ; preds = %1360
  %1364 = icmp eq i32 %1361, 0
  br i1 %1364, label %1409, label %1365

; <label>:1365:                                   ; preds = %1363
  br label %1377

; <label>:1366:                                   ; preds = %1360
  %1367 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1368 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1367, i64 0, i32 5
  %1369 = load i8*, i8** %1368, align 8
  %1370 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1367, i64 0, i32 6
  %1371 = load i8*, i8** %1370, align 8
  %1372 = icmp ult i8* %1369, %1371
  br i1 %1372, label %1375, label %1373

; <label>:1373:                                   ; preds = %1366
  %1374 = tail call i32 @__overflow(%struct._IO_FILE* %1367, i32 12) #10
  br label %1409

; <label>:1375:                                   ; preds = %1366
  %1376 = getelementptr inbounds i8, i8* %1369, i64 1
  store i8* %1376, i8** %1368, align 8
  store i8 12, i8* %1369, align 1
  br label %1409

; <label>:1377:                                   ; preds = %1365, %1389
  %1378 = phi i32 [ %1390, %1389 ], [ %1361, %1365 ]
  %1379 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1380 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1379, i64 0, i32 5
  %1381 = load i8*, i8** %1380, align 8
  %1382 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1379, i64 0, i32 6
  %1383 = load i8*, i8** %1382, align 8
  %1384 = icmp ult i8* %1381, %1383
  br i1 %1384, label %1387, label %1385

; <label>:1385:                                   ; preds = %1377
  %1386 = tail call i32 @__overflow(%struct._IO_FILE* %1379, i32 10) #10
  br label %1389

; <label>:1387:                                   ; preds = %1377
  %1388 = getelementptr inbounds i8, i8* %1381, i64 1
  store i8* %1388, i8** %1380, align 8
  store i8 10, i8* %1381, align 1
  br label %1389

; <label>:1389:                                   ; preds = %1387, %1385
  %1390 = add i32 %1378, -1
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1408, label %1377

; <label>:1392:                                   ; preds = %1358, %1353
  %1393 = load i1, i1* @keep_FF, align 1
  br i1 %1393, label %1394, label %1409

; <label>:1394:                                   ; preds = %1392
  %1395 = load i1, i1* @print_a_FF, align 1
  br i1 %1395, label %1396, label %1409

; <label>:1396:                                   ; preds = %1394
  %1397 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1398 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1397, i64 0, i32 5
  %1399 = load i8*, i8** %1398, align 8
  %1400 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1397, i64 0, i32 6
  %1401 = load i8*, i8** %1400, align 8
  %1402 = icmp ult i8* %1399, %1401
  br i1 %1402, label %1405, label %1403

; <label>:1403:                                   ; preds = %1396
  %1404 = tail call i32 @__overflow(%struct._IO_FILE* %1397, i32 12) #10
  br label %1407

; <label>:1405:                                   ; preds = %1396
  %1406 = getelementptr inbounds i8, i8* %1399, i64 1
  store i8* %1406, i8** %1398, align 8
  store i8 12, i8* %1399, align 1
  br label %1407

; <label>:1407:                                   ; preds = %1405, %1403
  store i1 false, i1* @print_a_FF, align 1
  br label %1409

; <label>:1408:                                   ; preds = %1389
  br label %1409

; <label>:1409:                                   ; preds = %1408, %1407, %1394, %1392, %1375, %1373, %1363
  %1410 = load i64, i64* @last_page_number, align 8
  %1411 = load i64, i64* @page_number, align 8
  %1412 = add i64 %1411, 1
  store i64 %1412, i64* @page_number, align 8
  %1413 = icmp ult i64 %1410, %1412
  br i1 %1413, label %1460, label %1414

; <label>:1414:                                   ; preds = %1409
  %1415 = load i32, i32* @columns, align 4
  %1416 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %1417 = icmp eq i32 %1415, 0
  br i1 %1417, label %1453, label %1418

; <label>:1418:                                   ; preds = %1414
  %1419 = and i32 %1415, 1
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1432, label %1421

; <label>:1421:                                   ; preds = %1418
  br label %1422

; <label>:1422:                                   ; preds = %1421
  %1423 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1416, i64 0, i32 2
  %1424 = load i32, i32* %1423, align 8
  %1425 = icmp eq i32 %1424, 2
  br i1 %1425, label %1426, label %1429

; <label>:1426:                                   ; preds = %1422
  store i32 0, i32* %1423, align 8
  %1427 = load i32, i32* @files_ready_to_read, align 4
  %1428 = add nsw i32 %1427, 1
  store i32 %1428, i32* @files_ready_to_read, align 4
  br label %1429

; <label>:1429:                                   ; preds = %1426, %1422
  %1430 = add nsw i32 %1415, -1
  %1431 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1416, i64 1
  br label %1432

; <label>:1432:                                   ; preds = %1418, %1429
  %1433 = phi %struct.COLUMN* [ %1431, %1429 ], [ %1416, %1418 ]
  %1434 = phi i32 [ %1430, %1429 ], [ %1415, %1418 ]
  br label %1435

; <label>:1435:                                   ; preds = %1432
  %1436 = icmp eq i32 %1415, 1
  br i1 %1436, label %1452, label %1437

; <label>:1437:                                   ; preds = %1435
  br label %1438

; <label>:1438:                                   ; preds = %1548, %1437
  %1439 = phi %struct.COLUMN* [ %1433, %1437 ], [ %1550, %1548 ]
  %1440 = phi i32 [ %1434, %1437 ], [ %1549, %1548 ]
  %1441 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1439, i64 0, i32 2
  %1442 = load i32, i32* %1441, align 8
  %1443 = icmp eq i32 %1442, 2
  br i1 %1443, label %1444, label %1447

; <label>:1444:                                   ; preds = %1438
  store i32 0, i32* %1441, align 8
  %1445 = load i32, i32* @files_ready_to_read, align 4
  %1446 = add nsw i32 %1445, 1
  store i32 %1446, i32* @files_ready_to_read, align 4
  br label %1447

; <label>:1447:                                   ; preds = %1444, %1438
  %1448 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1439, i64 1, i32 2
  %1449 = load i32, i32* %1448, align 8
  %1450 = icmp eq i32 %1449, 2
  br i1 %1450, label %1545, label %1548

; <label>:1451:                                   ; preds = %1548
  br label %1452

; <label>:1452:                                   ; preds = %1435, %1451
  br label %1453

; <label>:1453:                                   ; preds = %1452, %1414
  %1454 = load i1, i1* @storing_columns, align 1
  br i1 %1454, label %877, label %1455

; <label>:1455:                                   ; preds = %1453
  %1456 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1416, i64 0, i32 2
  %1457 = load i32, i32* %1456, align 8
  %1458 = icmp ne i32 %1457, 3
  %1459 = zext i1 %1458 to i32
  store i32 %1459, i32* @files_ready_to_read, align 4
  br label %610

; <label>:1460:                                   ; preds = %992, %1409, %934, %877
  br label %1461

; <label>:1461:                                   ; preds = %1460, %170, %164, %520
  ret void

; <label>:1462:                                   ; preds = %986
  br i1 %939, label %1473, label %1463

; <label>:1463:                                   ; preds = %1462
  %1464 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %971, i64 1, i32 6
  %1465 = load i32, i32* %1464, align 4
  %1466 = icmp sgt i32 %1465, 0
  br i1 %1466, label %1467, label %1473

; <label>:1467:                                   ; preds = %1463
  %1468 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %971, i64 1, i32 7
  %1469 = load i32, i32* %1468, align 8
  %1470 = icmp sgt i32 %1469, 0
  br i1 %1470, label %1471, label %1473

; <label>:1471:                                   ; preds = %1467, %986
  %1472 = add i32 %987, 1
  br label %1473

; <label>:1473:                                   ; preds = %1471, %1467, %1463, %1462
  %1474 = phi i32 [ %1472, %1471 ], [ %987, %1467 ], [ %987, %1463 ], [ %987, %1462 ]
  %1475 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %971, i64 2
  %1476 = add i32 %970, 2
  %1477 = icmp eq i32 %1476, %936
  br i1 %1477, label %991, label %968

; <label>:1478:                                   ; preds = %1057
  br i1 %1006, label %1489, label %1479

; <label>:1479:                                   ; preds = %1478
  %1480 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1042, i64 1, i32 6
  %1481 = load i32, i32* %1480, align 4
  %1482 = icmp sgt i32 %1481, 0
  br i1 %1482, label %1483, label %1489

; <label>:1483:                                   ; preds = %1479
  %1484 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1042, i64 1, i32 7
  %1485 = load i32, i32* %1484, align 8
  %1486 = icmp sgt i32 %1485, 0
  br i1 %1486, label %1487, label %1489

; <label>:1487:                                   ; preds = %1483, %1057
  %1488 = add i32 %1058, 1
  br label %1489

; <label>:1489:                                   ; preds = %1487, %1483, %1479, %1478
  %1490 = phi i32 [ %1488, %1487 ], [ %1058, %1483 ], [ %1058, %1479 ], [ %1058, %1478 ]
  %1491 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1042, i64 2
  %1492 = add i32 %1041, 2
  %1493 = icmp eq i32 %1492, %1010
  br i1 %1493, label %1062, label %1039

; <label>:1494:                                   ; preds = %1146
  br i1 %1099, label %1505, label %1495

; <label>:1495:                                   ; preds = %1494
  %1496 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1131, i64 1, i32 6
  %1497 = load i32, i32* %1496, align 4
  %1498 = icmp sgt i32 %1497, 0
  br i1 %1498, label %1499, label %1505

; <label>:1499:                                   ; preds = %1495
  %1500 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1131, i64 1, i32 7
  %1501 = load i32, i32* %1500, align 8
  %1502 = icmp sgt i32 %1501, 0
  br i1 %1502, label %1503, label %1505

; <label>:1503:                                   ; preds = %1499, %1146
  %1504 = add i32 %1147, 1
  br label %1505

; <label>:1505:                                   ; preds = %1503, %1499, %1495, %1494
  %1506 = phi i32 [ %1504, %1503 ], [ %1147, %1499 ], [ %1147, %1495 ], [ %1147, %1494 ]
  %1507 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1131, i64 2
  %1508 = add i32 %1130, 2
  %1509 = icmp eq i32 %1508, %1095
  br i1 %1509, label %1151, label %1128

; <label>:1510:                                   ; preds = %1263
  br i1 %1216, label %1521, label %1511

; <label>:1511:                                   ; preds = %1510
  %1512 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1248, i64 1, i32 6
  %1513 = load i32, i32* %1512, align 4
  %1514 = icmp sgt i32 %1513, 0
  br i1 %1514, label %1515, label %1521

; <label>:1515:                                   ; preds = %1511
  %1516 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1248, i64 1, i32 7
  %1517 = load i32, i32* %1516, align 8
  %1518 = icmp sgt i32 %1517, 0
  br i1 %1518, label %1519, label %1521

; <label>:1519:                                   ; preds = %1515, %1263
  %1520 = add i32 %1264, 1
  br label %1521

; <label>:1521:                                   ; preds = %1519, %1515, %1511, %1510
  %1522 = phi i32 [ %1520, %1519 ], [ %1264, %1515 ], [ %1264, %1511 ], [ %1264, %1510 ]
  %1523 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1248, i64 2
  %1524 = add i32 %1247, 2
  %1525 = icmp eq i32 %1524, %1211
  br i1 %1525, label %1268, label %1245

; <label>:1526:                                   ; preds = %1346
  %1527 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 1, i32 10
  store i8 1, i8* %1527, align 1
  br label %1528

; <label>:1528:                                   ; preds = %1526, %1346
  %1529 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 2, i32 2
  %1530 = load i32, i32* %1529, align 8
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1532, label %1534

; <label>:1532:                                   ; preds = %1528
  %1533 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 2, i32 10
  store i8 1, i8* %1533, align 1
  br label %1534

; <label>:1534:                                   ; preds = %1532, %1528
  %1535 = add nsw i32 %1340, 3
  %1536 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 3, i32 2
  %1537 = load i32, i32* %1536, align 8
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1539, label %1541

; <label>:1539:                                   ; preds = %1534
  %1540 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 3, i32 10
  store i8 1, i8* %1540, align 1
  br label %1541

; <label>:1541:                                   ; preds = %1539, %1534
  %1542 = add nsw i32 %1340, 4
  %1543 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1339, i64 4
  %1544 = icmp eq i32 %1535, %1310
  br i1 %1544, label %1350, label %1338

; <label>:1545:                                   ; preds = %1447
  store i32 0, i32* %1448, align 8
  %1546 = load i32, i32* @files_ready_to_read, align 4
  %1547 = add nsw i32 %1546, 1
  store i32 %1547, i32* @files_ready_to_read, align 4
  br label %1548

; <label>:1548:                                   ; preds = %1545, %1447
  %1549 = add nsw i32 %1440, -2
  %1550 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1439, i64 2
  %1551 = icmp eq i32 %1549, 0
  br i1 %1551, label %1451, label %1438

; <label>:1552:                                   ; preds = %459
  store i32 2, i32* %460, align 8
  br label %1553

; <label>:1553:                                   ; preds = %1552, %459
  %1554 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %453, i64 2, i32 2
  %1555 = load i32, i32* %1554, align 8
  %1556 = icmp eq i32 %1555, 3
  br i1 %1556, label %1558, label %1557

; <label>:1557:                                   ; preds = %1553
  store i32 2, i32* %1554, align 8
  br label %1558

; <label>:1558:                                   ; preds = %1557, %1553
  %1559 = add nsw i32 %454, 3
  %1560 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %453, i64 3, i32 2
  %1561 = load i32, i32* %1560, align 8
  %1562 = icmp eq i32 %1561, 3
  br i1 %1562, label %1564, label %1563

; <label>:1563:                                   ; preds = %1558
  store i32 2, i32* %1560, align 8
  br label %1564

; <label>:1564:                                   ; preds = %1563, %1558
  %1565 = add nsw i32 %454, 4
  %1566 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %453, i64 4
  %1567 = icmp eq i32 %1559, %419
  br i1 %1567, label %463, label %452

; <label>:1568:                                   ; preds = %500
  store i32 0, i32* %501, align 8
  %1569 = load i32, i32* @files_ready_to_read, align 4
  %1570 = add nsw i32 %1569, 1
  store i32 %1570, i32* @files_ready_to_read, align 4
  br label %1571

; <label>:1571:                                   ; preds = %1568, %500
  %1572 = add nsw i32 %493, -2
  %1573 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %492, i64 2
  %1574 = icmp eq i32 %1572, 0
  br i1 %1574, label %504, label %491
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @open_file(i8*, %struct.COLUMN* nocapture) unnamed_addr #0 {
  %3 = load i8, i8* %0, align 1
  %4 = icmp eq i8 %3, 45
  br i1 %4, label %5, label %15

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %0, i64 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %5
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 5) #10
  %11 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1, i64 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8
  %13 = bitcast %struct.COLUMN* %1 to i64*
  store i64 %12, i64* %13, align 8
  store i1 true, i1* @have_read_stdin, align 1
  %14 = inttoptr i64 %12 to %struct._IO_FILE*
  br label %19

; <label>:15:                                     ; preds = %2, %5
  %16 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1, i64 0, i32 1
  store i8* %0, i8** %16, align 8
  %17 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0)) #10
  %18 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1, i64 0, i32 0
  store %struct._IO_FILE* %17, %struct._IO_FILE** %18, align 8
  br label %19

; <label>:19:                                     ; preds = %15, %9
  %20 = phi %struct._IO_FILE* [ %17, %15 ], [ %14, %9 ]
  %21 = icmp eq %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %28

; <label>:22:                                     ; preds = %19
  store i1 true, i1* @failed_opens, align 1
  %23 = load i1, i1* @ignore_failed_opens, align 1
  br i1 %23, label %33, label %24

; <label>:24:                                     ; preds = %22
  %25 = tail call i32* @__errno_location() #1
  %26 = load i32, i32* %25, align 4
  %27 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* %27) #10
  br label %33

; <label>:28:                                     ; preds = %19
  tail call void @fadvise(%struct._IO_FILE* nonnull %20, i32 2) #10
  %29 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1, i64 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %1, i64 0, i32 10
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* @total_files, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @total_files, align 4
  br label %33

; <label>:33:                                     ; preds = %22, %24, %28
  %34 = phi i1 [ true, %28 ], [ false, %24 ], [ false, %22 ]
  ret i1 %34
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @init_header(i8*, i32) unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca <2 x i64>, align 16
  %5 = bitcast <2 x i64>* %4 to %struct.timespec*
  %6 = alloca %struct.tm, align 8
  %7 = alloca [21 x i8], align 16
  %8 = bitcast %struct.stat* %3 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %8) #10
  %9 = bitcast <2 x i64>* %4 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %9) #10
  %10 = bitcast %struct.tm* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %10) #10
  %11 = load i8, i8* %0, align 1
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 45, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %0, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = sub nsw i32 0, %18
  br label %20

; <label>:20:                                     ; preds = %15, %2
  %21 = phi i32 [ %19, %15 ], [ %13, %2 ]
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 -1, i32 %1
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %34

; <label>:25:                                     ; preds = %20
  %26 = call i32 @__fxstat(i32 1, i32 %23, %struct.stat* nonnull %3) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0
  %30 = bitcast i64* %29 to <2 x i64>*
  %31 = load <2 x i64>, <2 x i64>* %30, align 8
  %32 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 0
  store <2 x i64> %31, <2 x i64>* %4, align 16
  %33 = extractelement <2 x i64> %31, i32 1
  br label %42

; <label>:34:                                     ; preds = %25, %20
  %35 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @init_header.timespec, i64 0, i32 0), align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call void @gettime(%struct.timespec* nonnull @init_header.timespec) #10
  br label %38

; <label>:38:                                     ; preds = %34, %37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* bitcast (%struct.timespec* @init_header.timespec to i8*), i64 16, i32 8, i1 false)
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 0
  br label %42

; <label>:42:                                     ; preds = %38, %28
  %43 = phi i64* [ %41, %38 ], [ %32, %28 ]
  %44 = phi i64 [ %40, %38 ], [ %33, %28 ]
  %45 = trunc i64 %44 to i32
  %46 = load %struct.tm_zone*, %struct.tm_zone** @localtz, align 8
  %47 = call %struct.tm* @localtime_rz(%struct.tm_zone* %46, i64* nonnull %43, %struct.tm* nonnull %6) #10
  %48 = icmp eq %struct.tm* %47, null
  br i1 %48, label %58, label %49

; <label>:49:                                     ; preds = %42
  %50 = load i8*, i8** @date_format, align 8
  %51 = load %struct.tm_zone*, %struct.tm_zone** @localtz, align 8
  %52 = call i64 @nstrftime(i8* null, i64 -1, i8* %50, %struct.tm* nonnull %6, %struct.tm_zone* %51, i32 %45) #10
  %53 = add i64 %52, 1
  %54 = call noalias i8* @xmalloc(i64 %53) #10
  %55 = load i8*, i8** @date_format, align 8
  %56 = load %struct.tm_zone*, %struct.tm_zone** @localtz, align 8
  %57 = call i64 @nstrftime(i8* %54, i64 %53, i8* %55, %struct.tm* nonnull %6, %struct.tm_zone* %56, i32 %45) #10
  br label %65

; <label>:58:                                     ; preds = %42
  %59 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %59) #10
  %60 = call noalias i8* @xmalloc(i64 33) #10
  %61 = call i64 @llvm.objectsize.i64.p0i8(i8* %60, i1 false)
  %62 = load i64, i64* %43, align 8
  %63 = call i8* @imaxtostr(i64 %62, i8* nonnull %59) #10
  %64 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %60, i32 1, i64 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), i8* %63, i32 %45) #10
  call void @llvm.lifetime.end(i64 21, i8* nonnull %59) #10
  br label %65

; <label>:65:                                     ; preds = %58, %49
  %66 = phi i8* [ %54, %49 ], [ %60, %58 ]
  %67 = load i8*, i8** @date_text, align 8
  call void @free(i8* %67) #10
  store i8* %66, i8** @date_text, align 8
  %68 = load i8*, i8** @custom_header, align 8
  %69 = icmp eq i8* %68, null
  %70 = icmp slt i32 %23, 0
  %71 = select i1 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %0
  %72 = select i1 %69, i8* %71, i8* %68
  store i8* %72, i8** @file_text, align 8
  %73 = load i32, i32* @chars_per_line, align 4
  %74 = call i32 @gnu_mbswidth(i8* %66, i32 0) #10
  %75 = sub i32 %73, %74
  %76 = load i8*, i8** @file_text, align 8
  %77 = call i32 @gnu_mbswidth(i8* %76, i32 0) #10
  %78 = sub i32 %75, %77
  store i32 %78, i32* @header_width_available, align 4
  call void @llvm.lifetime.end(i64 56, i8* nonnull %10) #10
  call void @llvm.lifetime.end(i64 16, i8* nonnull %9) #10
  call void @llvm.lifetime.end(i64 144, i8* nonnull %8) #10
  ret void
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @skip_read(%struct.COLUMN* nocapture, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i64 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ult i8* %6, %8
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %4) #10
  br label %16

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %18 = icmp eq i32 %17, 12
  %19 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 10
  br i1 %18, label %20, label %46

; <label>:20:                                     ; preds = %16
  %21 = load i8, i8* %19, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %46, label %23

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %23
  %28 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %4) #10
  br label %33

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %30, i8** %5, align 8
  %31 = load i8, i8* %24, align 1
  %32 = zext i8 %31 to i32
  br label %33

; <label>:33:                                     ; preds = %27, %29
  %34 = phi i32 [ %28, %27 ], [ %32, %29 ]
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %42, label %40

; <label>:40:                                     ; preds = %36
  %41 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %4) #10
  br label %46

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %43, i8** %5, align 8
  %44 = load i8, i8* %37, align 1
  %45 = zext i8 %44 to i32
  br label %46

; <label>:46:                                     ; preds = %16, %42, %40, %20, %33
  %47 = phi i32 [ %45, %42 ], [ %41, %40 ], [ 12, %20 ], [ %34, %33 ], [ %17, %16 ]
  %48 = icmp eq i32 %47, 12
  %49 = load i1, i1* @last_line, align 1
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %19, align 1
  br label %51

; <label>:51:                                     ; preds = %170, %46
  %52 = phi i32 [ %47, %46 ], [ %171, %170 ]
  switch i32 %52, label %164 [
    i32 10, label %176
    i32 12, label %53
    i32 -1, label %163
  ]

; <label>:53:                                     ; preds = %51
  %54 = load i1, i1* @last_line, align 1
  br i1 %54, label %55, label %98

; <label>:55:                                     ; preds = %53
  %56 = load i1, i1* @parallel_files, align 1
  br i1 %56, label %95, label %57

; <label>:57:                                     ; preds = %55
  %58 = load i32, i32* @columns, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %98, label %60

; <label>:60:                                     ; preds = %57
  %61 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %62 = add i32 %58, -1
  %63 = and i32 %58, 7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

; <label>:65:                                     ; preds = %60
  br label %66

; <label>:66:                                     ; preds = %66, %65
  %67 = phi %struct.COLUMN* [ %71, %66 ], [ %61, %65 ]
  %68 = phi i32 [ %72, %66 ], [ %58, %65 ]
  %69 = phi i32 [ %73, %66 ], [ %63, %65 ]
  %70 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %67, i64 0, i32 10
  store i8 0, i8* %70, align 1
  %71 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %67, i64 1
  %72 = add nsw i32 %68, -1
  %73 = add i32 %69, -1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %66

; <label>:75:                                     ; preds = %66
  br label %76

; <label>:76:                                     ; preds = %60, %75
  %77 = phi %struct.COLUMN* [ %61, %60 ], [ %71, %75 ]
  %78 = phi i32 [ %58, %60 ], [ %72, %75 ]
  %79 = icmp ult i32 %62, 7
  br i1 %79, label %97, label %80

; <label>:80:                                     ; preds = %76
  br label %81

; <label>:81:                                     ; preds = %81, %80
  %82 = phi %struct.COLUMN* [ %77, %80 ], [ %92, %81 ]
  %83 = phi i32 [ %78, %80 ], [ %93, %81 ]
  %84 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 0, i32 10
  store i8 0, i8* %84, align 1
  %85 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 1, i32 10
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 2, i32 10
  store i8 0, i8* %86, align 1
  %87 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 3, i32 10
  store i8 0, i8* %87, align 1
  %88 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 4, i32 10
  store i8 0, i8* %88, align 1
  %89 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 5, i32 10
  store i8 0, i8* %89, align 1
  %90 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 6, i32 10
  store i8 0, i8* %90, align 1
  %91 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 7, i32 10
  store i8 0, i8* %91, align 1
  %92 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %82, i64 8
  %93 = add nsw i32 %83, -8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %81

; <label>:95:                                     ; preds = %55
  store i8 0, i8* %19, align 1
  br label %98

; <label>:96:                                     ; preds = %81
  br label %97

; <label>:97:                                     ; preds = %76, %96
  br label %98

; <label>:98:                                     ; preds = %97, %57, %95, %53
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ult i8* %99, %100
  br i1 %101, label %104, label %102

; <label>:102:                                    ; preds = %98
  %103 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %4) #10
  br label %108

; <label>:104:                                    ; preds = %98
  %105 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %105, i8** %5, align 8
  %106 = load i8, i8* %99, align 1
  %107 = zext i8 %106 to i32
  br label %108

; <label>:108:                                    ; preds = %102, %104
  %109 = phi i32 [ %103, %102 ], [ %107, %104 ]
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %113, label %111

; <label>:111:                                    ; preds = %108
  %112 = tail call i32 @ungetc(i32 %109, %struct._IO_FILE* nonnull %4)
  br label %113

; <label>:113:                                    ; preds = %108, %111
  %114 = load i1, i1* @parallel_files, align 1
  br i1 %114, label %155, label %115

; <label>:115:                                    ; preds = %113
  %116 = load i32, i32* @columns, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %159, label %118

; <label>:118:                                    ; preds = %115
  %119 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %120 = load i1, i1* @storing_columns, align 1
  %121 = select i1 %120, i32 2, i32 1
  %122 = add i32 %116, -1
  %123 = and i32 %116, 7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %136, label %125

; <label>:125:                                    ; preds = %118
  br label %126

; <label>:126:                                    ; preds = %126, %125
  %127 = phi i32 [ %116, %125 ], [ %132, %126 ]
  %128 = phi %struct.COLUMN* [ %119, %125 ], [ %131, %126 ]
  %129 = phi i32 [ %123, %125 ], [ %133, %126 ]
  %130 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %128, i64 0, i32 2
  store i32 %121, i32* %130, align 8
  %131 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %128, i64 1
  %132 = add nsw i32 %127, -1
  %133 = add i32 %129, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %126

; <label>:135:                                    ; preds = %126
  br label %136

; <label>:136:                                    ; preds = %118, %135
  %137 = phi i32 [ %116, %118 ], [ %132, %135 ]
  %138 = phi %struct.COLUMN* [ %119, %118 ], [ %131, %135 ]
  %139 = icmp ult i32 %122, 7
  br i1 %139, label %158, label %140

; <label>:140:                                    ; preds = %136
  br label %141

; <label>:141:                                    ; preds = %141, %140
  %142 = phi i32 [ %137, %140 ], [ %153, %141 ]
  %143 = phi %struct.COLUMN* [ %138, %140 ], [ %152, %141 ]
  %144 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 0, i32 2
  store i32 %121, i32* %144, align 8
  %145 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 1, i32 2
  store i32 %121, i32* %145, align 8
  %146 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 2, i32 2
  store i32 %121, i32* %146, align 8
  %147 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 3, i32 2
  store i32 %121, i32* %147, align 8
  %148 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 4, i32 2
  store i32 %121, i32* %148, align 8
  %149 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 5, i32 2
  store i32 %121, i32* %149, align 8
  %150 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 6, i32 2
  store i32 %121, i32* %150, align 8
  %151 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 7, i32 2
  store i32 %121, i32* %151, align 8
  %152 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %143, i64 8
  %153 = add nsw i32 %142, -8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %141

; <label>:155:                                    ; preds = %113
  %156 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 2
  store i32 2, i32* %156, align 8
  br label %159

; <label>:157:                                    ; preds = %141
  br label %158

; <label>:158:                                    ; preds = %136, %157
  br label %159

; <label>:159:                                    ; preds = %158, %115, %155
  %160 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 7
  store i32 0, i32* %160, align 8
  %161 = load i32, i32* @files_ready_to_read, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* @files_ready_to_read, align 4
  br label %177

; <label>:163:                                    ; preds = %51
  tail call fastcc void @close_file(%struct.COLUMN* %0)
  br label %177

; <label>:164:                                    ; preds = %51
  %165 = load i8*, i8** %5, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = icmp ult i8* %165, %166
  br i1 %167, label %172, label %168

; <label>:168:                                    ; preds = %164
  %169 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %4) #10
  br label %170

; <label>:170:                                    ; preds = %168, %172
  %171 = phi i32 [ %169, %168 ], [ %175, %172 ]
  br label %51

; <label>:172:                                    ; preds = %164
  %173 = getelementptr inbounds i8, i8* %165, i64 1
  store i8* %173, i8** %5, align 8
  %174 = load i8, i8* %165, align 1
  %175 = zext i8 %174 to i32
  br label %170

; <label>:176:                                    ; preds = %51
  br label %177

; <label>:177:                                    ; preds = %176, %163, %159
  %178 = load i1, i1* @skip_count, align 1
  br i1 %178, label %187, label %179

; <label>:179:                                    ; preds = %177
  %180 = load i1, i1* @parallel_files, align 1
  %181 = icmp ne i32 %1, 1
  %182 = and i1 %181, %180
  %183 = or i1 %48, %182
  br i1 %183, label %187, label %184

; <label>:184:                                    ; preds = %179
  %185 = load i32, i32* @line_count, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @line_count, align 4
  br label %187

; <label>:187:                                    ; preds = %179, %177, %184
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_char(i8 signext) #0 {
  %2 = load i1, i1* @tabify_output, align 1
  br i1 %2, label %3, label %25

; <label>:3:                                      ; preds = %1
  %4 = icmp eq i8 %0, 32
  %5 = load i32, i32* @spaces_not_printed, align 4
  br i1 %4, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = add nsw i32 %5, 1
  store i32 %7, i32* @spaces_not_printed, align 4
  br label %37

; <label>:8:                                      ; preds = %3
  %9 = icmp sgt i32 %5, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  tail call fastcc void @print_white_space()
  br label %11

; <label>:11:                                     ; preds = %8, %10
  %12 = tail call i16** @__ctype_b_loc() #1
  %13 = load i16*, i16** %12, align 8
  %14 = zext i8 %0 to i64
  %15 = getelementptr inbounds i16, i16* %13, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = and i16 %16, 16384
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %11
  %20 = icmp eq i8 %0, 8
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %11, %19
  %22 = phi i32 [ -1, %19 ], [ 1, %11 ]
  %23 = load i32, i32* @output_position, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* @output_position, align 4
  br label %25

; <label>:25:                                     ; preds = %19, %21, %1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %26, i64 0, i32 5
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %26, i64 0, i32 6
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ult i8* %28, %30
  br i1 %31, label %35, label %32

; <label>:32:                                     ; preds = %25
  %33 = zext i8 %0 to i32
  %34 = tail call i32 @__overflow(%struct._IO_FILE* %26, i32 %33) #10
  br label %37

; <label>:35:                                     ; preds = %25
  %36 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %36, i8** %27, align 8
  store i8 %0, i8* %28, align 1
  br label %37

; <label>:37:                                     ; preds = %35, %32, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @store_char(i8 signext) #0 {
  %2 = load i32, i32* @buff_current, align 4
  %3 = zext i32 %2 to i64
  %4 = load i64, i64* @buff_allocated, align 8
  %5 = icmp ult i64 %3, %4
  %6 = load i8*, i8** @buff, align 8
  br i1 %5, label %10, label %7

; <label>:7:                                      ; preds = %1
  %8 = tail call i8* @x2realloc(i8* %6, i64* nonnull @buff_allocated) #10
  store i8* %8, i8** @buff, align 8
  %9 = load i32, i32* @buff_current, align 4
  br label %10

; <label>:10:                                     ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ %2, %1 ]
  %12 = phi i8* [ %8, %7 ], [ %6, %1 ]
  %13 = add i32 %11, 1
  store i32 %13, i32* @buff_current, align 4
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8 %0, i8* %15, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @read_line(%struct.COLUMN* nocapture) #0 {
  %2 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ult i8* %5, %7
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %3) #10
  br label %15

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %5, i64 1
  store i8* %12, i8** %4, align 8
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  br label %15

; <label>:15:                                     ; preds = %9, %11
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %17 = load i32, i32* @input_position, align 4
  %18 = icmp eq i32 %16, 12
  %19 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 10
  br i1 %18, label %20, label %53

; <label>:20:                                     ; preds = %15
  %21 = load i8, i8* %19, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20
  store i8 0, i8* %19, align 1
  br label %55

; <label>:24:                                     ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %24
  %32 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %25) #10
  br label %37

; <label>:33:                                     ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %34, i8** %26, align 8
  %35 = load i8, i8* %27, align 1
  %36 = zext i8 %35 to i32
  br label %37

; <label>:37:                                     ; preds = %31, %33
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %53

; <label>:40:                                     ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ult i8* %43, %45
  br i1 %46, label %49, label %47

; <label>:47:                                     ; preds = %40
  %48 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
  br label %53

; <label>:49:                                     ; preds = %40
  %50 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %50, i8** %42, align 8
  %51 = load i8, i8* %43, align 1
  %52 = zext i8 %51 to i32
  br label %53

; <label>:53:                                     ; preds = %15, %49, %47, %37
  %54 = phi i32 [ %52, %49 ], [ %48, %47 ], [ %38, %37 ], [ %16, %15 ]
  store i8 0, i8* %19, align 1
  switch i32 %54, label %133 [
    i32 12, label %55
    i32 -1, label %132
    i32 10, label %136
  ]

; <label>:55:                                     ; preds = %23, %53
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %57 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ult i8* %58, %60
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %55
  %63 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %56) #10
  br label %68

; <label>:64:                                     ; preds = %55
  %65 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %65, i8** %57, align 8
  %66 = load i8, i8* %58, align 1
  %67 = zext i8 %66 to i32
  br label %68

; <label>:68:                                     ; preds = %62, %64
  %69 = phi i32 [ %63, %62 ], [ %67, %64 ]
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %74, label %71

; <label>:71:                                     ; preds = %68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %73 = tail call i32 @ungetc(i32 %69, %struct._IO_FILE* %72)
  br label %74

; <label>:74:                                     ; preds = %68, %71
  store i1 true, i1* @FF_only, align 1
  %75 = load i1, i1* @print_a_header, align 1
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %74
  %77 = load i1, i1* @storing_columns, align 1
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %76
  store i8 1, i8* @pad_vertically, align 1
  tail call fastcc void @print_header()
  br label %82

; <label>:79:                                     ; preds = %76, %74
  %80 = load i1, i1* @keep_FF, align 1
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %79
  store i1 true, i1* @print_a_FF, align 1
  br label %82

; <label>:82:                                     ; preds = %79, %81, %78
  %83 = load i1, i1* @parallel_files, align 1
  br i1 %83, label %124, label %84

; <label>:84:                                     ; preds = %82
  %85 = load i32, i32* @columns, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %128, label %87

; <label>:87:                                     ; preds = %84
  %88 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %89 = load i1, i1* @storing_columns, align 1
  %90 = select i1 %89, i32 2, i32 1
  %91 = add i32 %85, -1
  %92 = and i32 %85, 7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

; <label>:94:                                     ; preds = %87
  br label %95

; <label>:95:                                     ; preds = %95, %94
  %96 = phi i32 [ %85, %94 ], [ %101, %95 ]
  %97 = phi %struct.COLUMN* [ %88, %94 ], [ %100, %95 ]
  %98 = phi i32 [ %92, %94 ], [ %102, %95 ]
  %99 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %97, i64 0, i32 2
  store i32 %90, i32* %99, align 8
  %100 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %97, i64 1
  %101 = add nsw i32 %96, -1
  %102 = add i32 %98, -1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %95

; <label>:104:                                    ; preds = %95
  br label %105

; <label>:105:                                    ; preds = %87, %104
  %106 = phi i32 [ %85, %87 ], [ %101, %104 ]
  %107 = phi %struct.COLUMN* [ %88, %87 ], [ %100, %104 ]
  %108 = icmp ult i32 %91, 7
  br i1 %108, label %127, label %109

; <label>:109:                                    ; preds = %105
  br label %110

; <label>:110:                                    ; preds = %110, %109
  %111 = phi i32 [ %106, %109 ], [ %122, %110 ]
  %112 = phi %struct.COLUMN* [ %107, %109 ], [ %121, %110 ]
  %113 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 0, i32 2
  store i32 %90, i32* %113, align 8
  %114 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 1, i32 2
  store i32 %90, i32* %114, align 8
  %115 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 2, i32 2
  store i32 %90, i32* %115, align 8
  %116 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 3, i32 2
  store i32 %90, i32* %116, align 8
  %117 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 4, i32 2
  store i32 %90, i32* %117, align 8
  %118 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 5, i32 2
  store i32 %90, i32* %118, align 8
  %119 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 6, i32 2
  store i32 %90, i32* %119, align 8
  %120 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 7, i32 2
  store i32 %90, i32* %120, align 8
  %121 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %112, i64 8
  %122 = add nsw i32 %111, -8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %110

; <label>:124:                                    ; preds = %82
  %125 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 2
  store i32 2, i32* %125, align 8
  br label %128

; <label>:126:                                    ; preds = %110
  br label %127

; <label>:127:                                    ; preds = %105, %126
  br label %128

; <label>:128:                                    ; preds = %127, %84, %124
  %129 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 7
  store i32 0, i32* %129, align 8
  %130 = load i32, i32* @files_ready_to_read, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* @files_ready_to_read, align 4
  br label %346

; <label>:132:                                    ; preds = %53
  tail call fastcc void @close_file(%struct.COLUMN* nonnull %0)
  br label %346

; <label>:133:                                    ; preds = %53
  %134 = trunc i32 %54 to i8
  %135 = tail call fastcc i32 @char_to_clump(i8 signext %134)
  br label %136

; <label>:136:                                    ; preds = %133, %53
  %137 = phi i32 [ %135, %133 ], [ undef, %53 ]
  %138 = load i1, i1* @truncate_lines, align 1
  br i1 %138, label %139, label %144

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* @input_position, align 4
  %141 = load i32, i32* @chars_per_column, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %144

; <label>:143:                                    ; preds = %139
  store i32 %17, i32* @input_position, align 4
  br label %346

; <label>:144:                                    ; preds = %139, %136
  %145 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 4
  %146 = load void (i8)*, void (i8)** %145, align 8
  %147 = icmp eq void (i8)* %146, @store_char
  br i1 %147, label %212, label %148

; <label>:148:                                    ; preds = %144
  store i8 1, i8* @pad_vertically, align 1
  %149 = load i1, i1* @print_a_header, align 1
  br i1 %149, label %150, label %153

; <label>:150:                                    ; preds = %148
  %151 = load i1, i1* @storing_columns, align 1
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %150
  tail call fastcc void @print_header()
  br label %153

; <label>:153:                                    ; preds = %150, %152, %148
  %154 = load i1, i1* @parallel_files, align 1
  br i1 %154, label %155, label %177

; <label>:155:                                    ; preds = %153
  %156 = load i1, i1* @align_empty_cols, align 1
  br i1 %156, label %157, label %177

; <label>:157:                                    ; preds = %155
  %158 = load i32, i32* @separators_not_printed, align 4
  store i32 0, i32* @separators_not_printed, align 4
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %171, label %160

; <label>:160:                                    ; preds = %157
  %161 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  br label %162

; <label>:162:                                    ; preds = %162, %160
  %163 = phi %struct.COLUMN* [ %168, %162 ], [ %161, %160 ]
  %164 = phi i32 [ %167, %162 ], [ 1, %160 ]
  tail call fastcc void @align_column(%struct.COLUMN* %163)
  %165 = load i32, i32* @separators_not_printed, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @separators_not_printed, align 4
  %167 = add nuw nsw i32 %164, 1
  %168 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %163, i64 1
  %169 = icmp eq i32 %164, %158
  br i1 %169, label %170, label %162

; <label>:170:                                    ; preds = %162
  br label %171

; <label>:171:                                    ; preds = %170, %157
  %172 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 8
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* @padding_not_printed, align 4
  %174 = load i1, i1* @truncate_lines, align 1
  %175 = load i32, i32* @chars_per_column, align 4
  %176 = select i1 %174, i32 %175, i32 0
  store i32 %176, i32* @spaces_not_printed, align 4
  store i1 false, i1* @align_empty_cols, align 1
  br label %177

; <label>:177:                                    ; preds = %171, %155, %153
  %178 = load i32, i32* @col_sep_length, align 4
  %179 = load i32, i32* @padding_not_printed, align 4
  %180 = icmp sgt i32 %179, %178
  br i1 %180, label %181, label %208

; <label>:181:                                    ; preds = %177
  %182 = sub nsw i32 %179, %178
  %183 = load i32, i32* @output_position, align 4
  %184 = load i1, i1* @tabify_output, align 1
  br i1 %184, label %188, label %185

; <label>:185:                                    ; preds = %181
  %186 = icmp sgt i32 %182, %183
  br i1 %186, label %187, label %206

; <label>:187:                                    ; preds = %185
  br label %190

; <label>:188:                                    ; preds = %181
  %189 = sub nsw i32 %182, %183
  store i32 %189, i32* @spaces_not_printed, align 4
  br label %207

; <label>:190:                                    ; preds = %187, %201
  %191 = phi i32 [ %192, %201 ], [ %183, %187 ]
  %192 = add nsw i32 %191, 1
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %194 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %193, i64 0, i32 5
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %193, i64 0, i32 6
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ult i8* %195, %197
  br i1 %198, label %203, label %199

; <label>:199:                                    ; preds = %190
  %200 = tail call i32 @__overflow(%struct._IO_FILE* %193, i32 32) #10
  br label %201

; <label>:201:                                    ; preds = %203, %199
  %202 = icmp eq i32 %192, %182
  br i1 %202, label %205, label %190

; <label>:203:                                    ; preds = %190
  %204 = getelementptr inbounds i8, i8* %195, i64 1
  store i8* %204, i8** %194, align 8
  store i8 32, i8* %195, align 1
  br label %201

; <label>:205:                                    ; preds = %201
  br label %206

; <label>:206:                                    ; preds = %205, %185
  store i32 %182, i32* @output_position, align 4
  br label %207

; <label>:207:                                    ; preds = %188, %206
  store i32 0, i32* @padding_not_printed, align 4
  br label %208

; <label>:208:                                    ; preds = %207, %177
  %209 = load i8, i8* @use_col_separator, align 1
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %212, label %211

; <label>:211:                                    ; preds = %208
  tail call fastcc void @print_sep_string()
  br label %212

; <label>:212:                                    ; preds = %208, %144, %211
  %213 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 9
  %214 = load i8, i8* %213, align 8
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %217, label %216

; <label>:216:                                    ; preds = %212
  tail call fastcc void @add_line_number(%struct.COLUMN* nonnull %0)
  br label %217

; <label>:217:                                    ; preds = %212, %216
  store i1 false, i1* @empty_line, align 1
  %218 = icmp eq i32 %54, 10
  br i1 %218, label %346, label %219

; <label>:219:                                    ; preds = %217
  %220 = icmp eq i32 %137, 0
  br i1 %220, label %232, label %221

; <label>:221:                                    ; preds = %219
  %222 = load i8*, i8** @clump_buff, align 8
  br label %223

; <label>:223:                                    ; preds = %221, %223
  %224 = phi i8* [ %228, %223 ], [ %222, %221 ]
  %225 = phi i32 [ %226, %223 ], [ %137, %221 ]
  %226 = add nsw i32 %225, -1
  %227 = load void (i8)*, void (i8)** %145, align 8
  %228 = getelementptr inbounds i8, i8* %224, i64 1
  %229 = load i8, i8* %224, align 1
  tail call void %227(i8 signext %229) #10
  %230 = icmp eq i32 %226, 0
  br i1 %230, label %231, label %223

; <label>:231:                                    ; preds = %223
  br label %232

; <label>:232:                                    ; preds = %231, %219
  br label %234

; <label>:233:                                    ; preds = %337
  br label %334

; <label>:234:                                    ; preds = %334, %232
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %236 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %235, i64 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %235, i64 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ult i8* %237, %239
  br i1 %240, label %243, label %241

; <label>:241:                                    ; preds = %234
  %242 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %235) #10
  br label %247

; <label>:243:                                    ; preds = %234
  %244 = getelementptr inbounds i8, i8* %237, i64 1
  store i8* %244, i8** %236, align 8
  %245 = load i8, i8* %237, align 1
  %246 = zext i8 %245 to i32
  br label %247

; <label>:247:                                    ; preds = %241, %243
  %248 = phi i32 [ %242, %241 ], [ %246, %243 ]
  switch i32 %248, label %322 [
    i32 10, label %345
    i32 12, label %249
    i32 -1, label %321
  ]

; <label>:249:                                    ; preds = %247
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %251 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %250, i64 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %250, i64 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ult i8* %252, %254
  br i1 %255, label %258, label %256

; <label>:256:                                    ; preds = %249
  %257 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %250) #10
  br label %262

; <label>:258:                                    ; preds = %249
  %259 = getelementptr inbounds i8, i8* %252, i64 1
  store i8* %259, i8** %251, align 8
  %260 = load i8, i8* %252, align 1
  %261 = zext i8 %260 to i32
  br label %262

; <label>:262:                                    ; preds = %256, %258
  %263 = phi i32 [ %257, %256 ], [ %261, %258 ]
  %264 = icmp eq i32 %263, 10
  br i1 %264, label %268, label %265

; <label>:265:                                    ; preds = %262
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %267 = tail call i32 @ungetc(i32 %263, %struct._IO_FILE* %266)
  br label %268

; <label>:268:                                    ; preds = %262, %265
  %269 = load i1, i1* @keep_FF, align 1
  br i1 %269, label %270, label %271

; <label>:270:                                    ; preds = %268
  store i1 true, i1* @print_a_FF, align 1
  br label %271

; <label>:271:                                    ; preds = %270, %268
  %272 = load i1, i1* @parallel_files, align 1
  br i1 %272, label %313, label %273

; <label>:273:                                    ; preds = %271
  %274 = load i32, i32* @columns, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %317, label %276

; <label>:276:                                    ; preds = %273
  %277 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %278 = load i1, i1* @storing_columns, align 1
  %279 = select i1 %278, i32 2, i32 1
  %280 = add i32 %274, -1
  %281 = and i32 %274, 7
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %294, label %283

; <label>:283:                                    ; preds = %276
  br label %284

; <label>:284:                                    ; preds = %284, %283
  %285 = phi i32 [ %274, %283 ], [ %290, %284 ]
  %286 = phi %struct.COLUMN* [ %277, %283 ], [ %289, %284 ]
  %287 = phi i32 [ %281, %283 ], [ %291, %284 ]
  %288 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %286, i64 0, i32 2
  store i32 %279, i32* %288, align 8
  %289 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %286, i64 1
  %290 = add nsw i32 %285, -1
  %291 = add i32 %287, -1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %284

; <label>:293:                                    ; preds = %284
  br label %294

; <label>:294:                                    ; preds = %276, %293
  %295 = phi i32 [ %274, %276 ], [ %290, %293 ]
  %296 = phi %struct.COLUMN* [ %277, %276 ], [ %289, %293 ]
  %297 = icmp ult i32 %280, 7
  br i1 %297, label %316, label %298

; <label>:298:                                    ; preds = %294
  br label %299

; <label>:299:                                    ; preds = %299, %298
  %300 = phi i32 [ %295, %298 ], [ %311, %299 ]
  %301 = phi %struct.COLUMN* [ %296, %298 ], [ %310, %299 ]
  %302 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 0, i32 2
  store i32 %279, i32* %302, align 8
  %303 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 1, i32 2
  store i32 %279, i32* %303, align 8
  %304 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 2, i32 2
  store i32 %279, i32* %304, align 8
  %305 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 3, i32 2
  store i32 %279, i32* %305, align 8
  %306 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 4, i32 2
  store i32 %279, i32* %306, align 8
  %307 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 5, i32 2
  store i32 %279, i32* %307, align 8
  %308 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 6, i32 2
  store i32 %279, i32* %308, align 8
  %309 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 7, i32 2
  store i32 %279, i32* %309, align 8
  %310 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %301, i64 8
  %311 = add nsw i32 %300, -8
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %315, label %299

; <label>:313:                                    ; preds = %271
  %314 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 2
  store i32 2, i32* %314, align 8
  br label %317

; <label>:315:                                    ; preds = %299
  br label %316

; <label>:316:                                    ; preds = %294, %315
  br label %317

; <label>:317:                                    ; preds = %316, %273, %313
  %318 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 7
  store i32 0, i32* %318, align 8
  %319 = load i32, i32* @files_ready_to_read, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* @files_ready_to_read, align 4
  br label %346

; <label>:321:                                    ; preds = %247
  tail call fastcc void @close_file(%struct.COLUMN* nonnull %0)
  br label %346

; <label>:322:                                    ; preds = %247
  %323 = load i32, i32* @input_position, align 4
  %324 = trunc i32 %248 to i8
  %325 = tail call fastcc i32 @char_to_clump(i8 signext %324)
  %326 = load i1, i1* @truncate_lines, align 1
  br i1 %326, label %327, label %332

; <label>:327:                                    ; preds = %322
  %328 = load i32, i32* @input_position, align 4
  %329 = load i32, i32* @chars_per_column, align 4
  %330 = icmp sgt i32 %328, %329
  br i1 %330, label %331, label %332

; <label>:331:                                    ; preds = %327
  store i32 %323, i32* @input_position, align 4
  br label %346

; <label>:332:                                    ; preds = %327, %322
  %333 = icmp eq i32 %325, 0
  br i1 %333, label %334, label %335

; <label>:334:                                    ; preds = %332, %233
  br label %234

; <label>:335:                                    ; preds = %332
  %336 = load i8*, i8** @clump_buff, align 8
  br label %337

; <label>:337:                                    ; preds = %335, %337
  %338 = phi i8* [ %342, %337 ], [ %336, %335 ]
  %339 = phi i32 [ %340, %337 ], [ %325, %335 ]
  %340 = add nsw i32 %339, -1
  %341 = load void (i8)*, void (i8)** %145, align 8
  %342 = getelementptr inbounds i8, i8* %338, i64 1
  %343 = load i8, i8* %338, align 1
  tail call void %341(i8 signext %343) #10
  %344 = icmp eq i32 %340, 0
  br i1 %344, label %233, label %337

; <label>:345:                                    ; preds = %247
  br label %346

; <label>:346:                                    ; preds = %345, %217, %331, %321, %317, %143, %132, %128
  %347 = phi i1 [ false, %143 ], [ false, %331 ], [ true, %321 ], [ true, %317 ], [ true, %132 ], [ true, %128 ], [ true, %217 ], [ true, %345 ]
  ret i1 %347
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @print_stored(%struct.COLUMN* nocapture) #0 {
  %2 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 8
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* %2, align 8
  %5 = load i8*, i8** @buff, align 8
  %6 = load i32*, i32** @line_vector, align 8
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %5, i64 %10
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds i32, i32* %6, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %5, i64 %15
  store i8 1, i8* @pad_vertically, align 1
  %17 = load i1, i1* @print_a_header, align 1
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %1
  tail call fastcc void @print_header()
  br label %19

; <label>:19:                                     ; preds = %18, %1
  %20 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %71

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* @columns, align 4
  %25 = icmp slt i32 %24, 1
  %26 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  br i1 %25, label %64, label %27

; <label>:27:                                     ; preds = %23
  %28 = add i32 %24, -1
  %29 = and i32 %24, 7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %31

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %32, %31
  %33 = phi %struct.COLUMN* [ %38, %32 ], [ %26, %31 ]
  %34 = phi i32 [ %37, %32 ], [ 1, %31 ]
  %35 = phi i32 [ %39, %32 ], [ %29, %31 ]
  %36 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %33, i64 0, i32 2
  store i32 2, i32* %36, align 8
  %37 = add nuw nsw i32 %34, 1
  %38 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %33, i64 1
  %39 = add i32 %35, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %32

; <label>:41:                                     ; preds = %32
  br label %42

; <label>:42:                                     ; preds = %27, %41
  %43 = phi %struct.COLUMN* [ %26, %27 ], [ %38, %41 ]
  %44 = phi i32 [ 1, %27 ], [ %37, %41 ]
  %45 = icmp ult i32 %28, 7
  br i1 %45, label %63, label %46

; <label>:46:                                     ; preds = %42
  br label %47

; <label>:47:                                     ; preds = %47, %46
  %48 = phi %struct.COLUMN* [ %43, %46 ], [ %60, %47 ]
  %49 = phi i32 [ %44, %46 ], [ %59, %47 ]
  %50 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 0, i32 2
  store i32 2, i32* %50, align 8
  %51 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 1, i32 2
  store i32 2, i32* %51, align 8
  %52 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 2, i32 2
  store i32 2, i32* %52, align 8
  %53 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 3, i32 2
  store i32 2, i32* %53, align 8
  %54 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 4, i32 2
  store i32 2, i32* %54, align 8
  %55 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 5, i32 2
  store i32 2, i32* %55, align 8
  %56 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 6, i32 2
  store i32 2, i32* %56, align 8
  %57 = add nsw i32 %49, 7
  %58 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 7, i32 2
  store i32 2, i32* %58, align 8
  %59 = add nsw i32 %49, 8
  %60 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %48, i64 8
  %61 = icmp slt i32 %57, %24
  br i1 %61, label %47, label %62

; <label>:62:                                     ; preds = %47
  br label %63

; <label>:63:                                     ; preds = %42, %62
  br label %64

; <label>:64:                                     ; preds = %63, %23
  %65 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %26, i64 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %64
  %69 = load i1, i1* @extremities, align 1
  br i1 %69, label %70, label %167

; <label>:70:                                     ; preds = %68
  store i8 0, i8* @pad_vertically, align 1
  br label %167

; <label>:71:                                     ; preds = %64, %19
  %72 = load i32, i32* @col_sep_length, align 4
  %73 = load i32, i32* @padding_not_printed, align 4
  %74 = icmp sgt i32 %73, %72
  br i1 %74, label %75, label %102

; <label>:75:                                     ; preds = %71
  %76 = sub nsw i32 %73, %72
  %77 = load i32, i32* @output_position, align 4
  %78 = load i1, i1* @tabify_output, align 1
  br i1 %78, label %82, label %79

; <label>:79:                                     ; preds = %75
  %80 = icmp sgt i32 %76, %77
  br i1 %80, label %81, label %100

; <label>:81:                                     ; preds = %79
  br label %84

; <label>:82:                                     ; preds = %75
  %83 = sub nsw i32 %76, %77
  store i32 %83, i32* @spaces_not_printed, align 4
  br label %101

; <label>:84:                                     ; preds = %81, %95
  %85 = phi i32 [ %86, %95 ], [ %77, %81 ]
  %86 = add nsw i32 %85, 1
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %87, i64 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %87, i64 0, i32 6
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ult i8* %89, %91
  br i1 %92, label %97, label %93

; <label>:93:                                     ; preds = %84
  %94 = tail call i32 @__overflow(%struct._IO_FILE* %87, i32 32) #10
  br label %95

; <label>:95:                                     ; preds = %97, %93
  %96 = icmp eq i32 %86, %76
  br i1 %96, label %99, label %84

; <label>:97:                                     ; preds = %84
  %98 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %98, i8** %88, align 8
  store i8 32, i8* %89, align 1
  br label %95

; <label>:99:                                     ; preds = %95
  br label %100

; <label>:100:                                    ; preds = %99, %79
  store i32 %76, i32* @output_position, align 4
  br label %101

; <label>:101:                                    ; preds = %82, %100
  store i32 0, i32* @padding_not_printed, align 4
  br label %102

; <label>:102:                                    ; preds = %101, %71
  %103 = load i8, i8* @use_col_separator, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105

; <label>:105:                                    ; preds = %102
  tail call fastcc void @print_sep_string()
  br label %106

; <label>:106:                                    ; preds = %105, %102
  %107 = icmp eq i32 %9, %14
  br i1 %107, label %151, label %108

; <label>:108:                                    ; preds = %106
  br label %109

; <label>:109:                                    ; preds = %108, %119
  %110 = phi i8* [ %111, %119 ], [ %11, %108 ]
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %110, align 1
  %113 = load i1, i1* @tabify_output, align 1
  br i1 %113, label %114, label %138

; <label>:114:                                    ; preds = %109
  %115 = icmp eq i8 %112, 32
  %116 = load i32, i32* @spaces_not_printed, align 4
  br i1 %115, label %117, label %121

; <label>:117:                                    ; preds = %114
  %118 = add nsw i32 %116, 1
  store i32 %118, i32* @spaces_not_printed, align 4
  br label %119

; <label>:119:                                    ; preds = %117, %145, %148
  %120 = icmp eq i8* %111, %16
  br i1 %120, label %150, label %109

; <label>:121:                                    ; preds = %114
  %122 = icmp sgt i32 %116, 0
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %121
  tail call fastcc void @print_white_space() #10
  br label %124

; <label>:124:                                    ; preds = %123, %121
  %125 = tail call i16** @__ctype_b_loc() #1
  %126 = load i16*, i16** %125, align 8
  %127 = zext i8 %112 to i64
  %128 = getelementptr inbounds i16, i16* %126, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = and i16 %129, 16384
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %134

; <label>:132:                                    ; preds = %124
  %133 = icmp eq i8 %112, 8
  br i1 %133, label %134, label %138

; <label>:134:                                    ; preds = %132, %124
  %135 = phi i32 [ -1, %132 ], [ 1, %124 ]
  %136 = load i32, i32* @output_position, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* @output_position, align 4
  br label %138

; <label>:138:                                    ; preds = %134, %132, %109
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %140 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 5
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 6
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ult i8* %141, %143
  br i1 %144, label %148, label %145

; <label>:145:                                    ; preds = %138
  %146 = zext i8 %112 to i32
  %147 = tail call i32 @__overflow(%struct._IO_FILE* %139, i32 %146) #10
  br label %119

; <label>:148:                                    ; preds = %138
  %149 = getelementptr inbounds i8, i8* %141, i64 1
  store i8* %149, i8** %140, align 8
  store i8 %112, i8* %141, align 1
  br label %119

; <label>:150:                                    ; preds = %119
  br label %151

; <label>:151:                                    ; preds = %150, %106
  %152 = load i32, i32* @spaces_not_printed, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %167

; <label>:154:                                    ; preds = %151
  %155 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** @end_vector, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %7
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* @output_position, align 4
  %161 = load i32, i32* @col_sep_length, align 4
  %162 = sub nsw i32 %156, %161
  %163 = load i32, i32* @chars_per_margin, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

; <label>:165:                                    ; preds = %154
  %166 = sub nsw i32 %160, %161
  store i32 %166, i32* @output_position, align 4
  br label %167

; <label>:167:                                    ; preds = %151, %165, %154, %70, %68
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @read_rest_of_line(%struct.COLUMN* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i64 0, i32 2
  br label %6

; <label>:6:                                      ; preds = %16, %1
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %3) #10
  br label %16

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  switch i32 %17, label %6 [
    i32 10, label %87
    i32 12, label %18
    i32 -1, label %86
  ]

; <label>:18:                                     ; preds = %16
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %3) #10
  br label %28

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %25, i8** %4, align 8
  %26 = load i8, i8* %19, align 1
  %27 = zext i8 %26 to i32
  br label %28

; <label>:28:                                     ; preds = %22, %24
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ]
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 @ungetc(i32 %29, %struct._IO_FILE* nonnull %3)
  br label %33

; <label>:33:                                     ; preds = %28, %31
  %34 = load i1, i1* @keep_FF, align 1
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %33
  store i1 true, i1* @print_a_FF, align 1
  br label %36

; <label>:36:                                     ; preds = %35, %33
  %37 = load i1, i1* @parallel_files, align 1
  br i1 %37, label %78, label %38

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* @columns, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %82, label %41

; <label>:41:                                     ; preds = %38
  %42 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %43 = load i1, i1* @storing_columns, align 1
  %44 = select i1 %43, i32 2, i32 1
  %45 = add i32 %39, -1
  %46 = and i32 %39, 7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

; <label>:48:                                     ; preds = %41
  br label %49

; <label>:49:                                     ; preds = %49, %48
  %50 = phi i32 [ %39, %48 ], [ %55, %49 ]
  %51 = phi %struct.COLUMN* [ %42, %48 ], [ %54, %49 ]
  %52 = phi i32 [ %46, %48 ], [ %56, %49 ]
  %53 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %51, i64 0, i32 2
  store i32 %44, i32* %53, align 8
  %54 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %51, i64 1
  %55 = add nsw i32 %50, -1
  %56 = add i32 %52, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %49

; <label>:58:                                     ; preds = %49
  br label %59

; <label>:59:                                     ; preds = %41, %58
  %60 = phi i32 [ %39, %41 ], [ %55, %58 ]
  %61 = phi %struct.COLUMN* [ %42, %41 ], [ %54, %58 ]
  %62 = icmp ult i32 %45, 7
  br i1 %62, label %81, label %63

; <label>:63:                                     ; preds = %59
  br label %64

; <label>:64:                                     ; preds = %64, %63
  %65 = phi i32 [ %60, %63 ], [ %76, %64 ]
  %66 = phi %struct.COLUMN* [ %61, %63 ], [ %75, %64 ]
  %67 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 0, i32 2
  store i32 %44, i32* %67, align 8
  %68 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 1, i32 2
  store i32 %44, i32* %68, align 8
  %69 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 2, i32 2
  store i32 %44, i32* %69, align 8
  %70 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 3, i32 2
  store i32 %44, i32* %70, align 8
  %71 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 4, i32 2
  store i32 %44, i32* %71, align 8
  %72 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 5, i32 2
  store i32 %44, i32* %72, align 8
  %73 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 6, i32 2
  store i32 %44, i32* %73, align 8
  %74 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 7, i32 2
  store i32 %44, i32* %74, align 8
  %75 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %66, i64 8
  %76 = add nsw i32 %65, -8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %64

; <label>:78:                                     ; preds = %36
  %79 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 2
  store i32 2, i32* %79, align 8
  br label %82

; <label>:80:                                     ; preds = %64
  br label %81

; <label>:81:                                     ; preds = %59, %80
  br label %82

; <label>:82:                                     ; preds = %81, %38, %78
  %83 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 7
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* @files_ready_to_read, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @files_ready_to_read, align 4
  br label %88

; <label>:86:                                     ; preds = %16
  tail call fastcc void @close_file(%struct.COLUMN* %0)
  br label %88

; <label>:87:                                     ; preds = %16
  br label %88

; <label>:88:                                     ; preds = %87, %86, %82
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @align_column(%struct.COLUMN* nocapture readonly) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @padding_not_printed, align 4
  %4 = load i32, i32* @col_sep_length, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %33

; <label>:6:                                      ; preds = %1
  %7 = sub nsw i32 %3, %4
  %8 = load i32, i32* @output_position, align 4
  %9 = load i1, i1* @tabify_output, align 1
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %6
  %11 = icmp sgt i32 %7, %8
  br i1 %11, label %12, label %31

; <label>:12:                                     ; preds = %10
  br label %15

; <label>:13:                                     ; preds = %6
  %14 = sub nsw i32 %7, %8
  store i32 %14, i32* @spaces_not_printed, align 4
  br label %32

; <label>:15:                                     ; preds = %12, %26
  %16 = phi i32 [ %17, %26 ], [ %8, %12 ]
  %17 = add nsw i32 %16, 1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 6
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ult i8* %20, %22
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %15
  %25 = tail call i32 @__overflow(%struct._IO_FILE* %18, i32 32) #10
  br label %26

; <label>:26:                                     ; preds = %28, %24
  %27 = icmp eq i32 %17, %7
  br i1 %27, label %30, label %15

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %29, i8** %19, align 8
  store i8 32, i8* %20, align 1
  br label %26

; <label>:30:                                     ; preds = %26
  br label %31

; <label>:31:                                     ; preds = %30, %10
  store i32 %7, i32* @output_position, align 4
  br label %32

; <label>:32:                                     ; preds = %13, %31
  store i32 0, i32* @padding_not_printed, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %1
  %34 = load i8, i8* @use_col_separator, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %33
  tail call fastcc void @print_sep_string()
  br label %37

; <label>:37:                                     ; preds = %33, %36
  %38 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 9
  %39 = load i8, i8* %38, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

; <label>:41:                                     ; preds = %37
  tail call fastcc void @add_line_number(%struct.COLUMN* nonnull %0)
  br label %42

; <label>:42:                                     ; preds = %37, %41
  ret void
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_sep_string() unnamed_addr #0 {
  %1 = load i32, i32* @separators_not_printed, align 4
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @col_sep_length, align 4
  %5 = load i8*, i8** @col_sep_string, align 8
  br label %10

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* @spaces_not_printed, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %61

; <label>:9:                                      ; preds = %6
  tail call fastcc void @print_white_space()
  br label %61

; <label>:10:                                     ; preds = %3, %56
  %11 = phi i32 [ %52, %56 ], [ %4, %3 ]
  %12 = phi i8* [ %51, %56 ], [ %5, %3 ]
  %13 = add nsw i32 %11, -1
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %50

; <label>:15:                                     ; preds = %10
  %16 = zext i32 %13 to i64
  br label %17

; <label>:17:                                     ; preds = %15, %40
  %18 = phi i32 [ %45, %40 ], [ %13, %15 ]
  %19 = phi i8* [ %42, %40 ], [ %12, %15 ]
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 32
  br i1 %21, label %40, label %22

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* @spaces_not_printed, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %22
  tail call fastcc void @print_white_space()
  %26 = load i8, i8* %19, align 1
  br label %27

; <label>:27:                                     ; preds = %25, %22
  %28 = phi i8 [ %26, %25 ], [ %20, %22 ]
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %29, i64 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %29, i64 0, i32 6
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ult i8* %31, %33
  br i1 %34, label %38, label %35

; <label>:35:                                     ; preds = %27
  %36 = zext i8 %28 to i32
  %37 = tail call i32 @__overflow(%struct._IO_FILE* %29, i32 %36) #10
  br label %40

; <label>:38:                                     ; preds = %27
  %39 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %39, i8** %30, align 8
  store i8 %28, i8* %31, align 1
  br label %40

; <label>:40:                                     ; preds = %38, %35, %17
  %41 = phi i32* [ @spaces_not_printed, %17 ], [ @output_position, %35 ], [ @output_position, %38 ]
  %42 = getelementptr inbounds i8, i8* %19, i64 1
  %43 = load i32, i32* %41, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %41, align 4
  %45 = add nsw i32 %18, -1
  %46 = icmp sgt i32 %18, 0
  br i1 %46, label %17, label %47

; <label>:47:                                     ; preds = %40
  %48 = getelementptr i8, i8* %12, i64 1
  %49 = getelementptr i8, i8* %48, i64 %16
  br label %50

; <label>:50:                                     ; preds = %47, %10
  %51 = phi i8* [ %12, %10 ], [ %49, %47 ]
  %52 = phi i32 [ %13, %10 ], [ -1, %47 ]
  %53 = load i32, i32* @spaces_not_printed, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %50
  tail call fastcc void @print_white_space()
  br label %56

; <label>:56:                                     ; preds = %50, %55
  %57 = load i32, i32* @separators_not_printed, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* @separators_not_printed, align 4
  %59 = icmp sgt i32 %57, 1
  br i1 %59, label %10, label %60

; <label>:60:                                     ; preds = %56
  br label %61

; <label>:61:                                     ; preds = %60, %6, %9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @add_line_number(%struct.COLUMN* nocapture readonly) unnamed_addr #0 {
  %2 = load i8*, i8** @number_buff, align 8
  %3 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %2, i1 false)
  %4 = load i32, i32* @chars_per_number, align 4
  %5 = load i32, i32* @line_number, align 4
  %6 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %2, i32 1, i64 %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 %4, i32 %5) #10
  %7 = load i32, i32* @line_number, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @line_number, align 4
  %9 = load i32, i32* @chars_per_number, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** @number_buff, align 8
  %13 = sub nsw i32 %6, %9
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 4
  br label %17

; <label>:17:                                     ; preds = %11, %17
  %18 = phi i32 [ %9, %11 ], [ %23, %17 ]
  %19 = phi i8* [ %15, %11 ], [ %21, %17 ]
  %20 = load void (i8)*, void (i8)** %16, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 1
  %22 = load i8, i8* %19, align 1
  tail call void %20(i8 signext %22) #10
  %23 = add nsw i32 %18, -1
  %24 = icmp sgt i32 %18, 1
  br i1 %24, label %17, label %25

; <label>:25:                                     ; preds = %17
  br label %26

; <label>:26:                                     ; preds = %25, %1
  %27 = load i32, i32* @columns, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %47

; <label>:29:                                     ; preds = %26
  %30 = load i8, i8* @number_separator, align 1
  %31 = icmp eq i8 %30, 9
  br i1 %31, label %32, label %44

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* @number_width, align 4
  %34 = load i32, i32* @chars_per_number, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 4
  br label %39

; <label>:39:                                     ; preds = %37, %39
  %40 = phi i32 [ %35, %37 ], [ %41, %39 ]
  %41 = add nsw i32 %40, -1
  %42 = load void (i8)*, void (i8)** %38, align 8
  tail call void %42(i8 signext 32) #10
  %43 = icmp sgt i32 %40, 1
  br i1 %43, label %39, label %59

; <label>:44:                                     ; preds = %29
  %45 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 4
  %46 = load void (i8)*, void (i8)** %45, align 8
  tail call void %46(i8 signext %30) #10
  br label %60

; <label>:47:                                     ; preds = %26
  %48 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 4
  %49 = load void (i8)*, void (i8)** %48, align 8
  %50 = load i8, i8* @number_separator, align 1
  tail call void %49(i8 signext %50) #10
  %51 = load i8, i8* @number_separator, align 1
  %52 = icmp eq i8 %51, 9
  br i1 %52, label %53, label %60

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* @output_position, align 4
  %55 = load i32, i32* @chars_per_output_tab, align 4
  %56 = srem i32 %54, %55
  %57 = add i32 %55, %54
  %58 = sub i32 %57, %56
  store i32 %58, i32* @output_position, align 4
  br label %60

; <label>:59:                                     ; preds = %39
  br label %60

; <label>:60:                                     ; preds = %59, %32, %47, %53, %44
  %61 = load i1, i1* @truncate_lines, align 1
  br i1 %61, label %62, label %68

; <label>:62:                                     ; preds = %60
  %63 = load i1, i1* @parallel_files, align 1
  br i1 %63, label %68, label %64

; <label>:64:                                     ; preds = %62
  %65 = load i32, i32* @number_width, align 4
  %66 = load i32, i32* @input_position, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* @input_position, align 4
  br label %68

; <label>:68:                                     ; preds = %64, %62, %60
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_white_space() unnamed_addr #0 {
  %1 = load i32, i32* @output_position, align 4
  %2 = load i32, i32* @spaces_not_printed, align 4
  %3 = add nsw i32 %2, %1
  %4 = icmp sgt i32 %2, 1
  br i1 %4, label %5, label %15

; <label>:5:                                      ; preds = %0
  br label %6

; <label>:6:                                      ; preds = %5, %30
  %7 = phi i32 [ %11, %30 ], [ %1, %5 ]
  %8 = load i32, i32* @chars_per_output_tab, align 4
  %9 = srem i32 %7, %8
  %10 = sub nsw i32 %8, %9
  %11 = add nsw i32 %10, %7
  %12 = icmp slt i32 %3, %11
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %30, %6
  %14 = phi i32 [ %11, %30 ], [ %7, %6 ]
  br label %15

; <label>:15:                                     ; preds = %13, %0
  %16 = phi i32 [ %1, %0 ], [ %14, %13 ]
  %17 = icmp slt i32 %16, %3
  br i1 %17, label %18, label %51

; <label>:18:                                     ; preds = %15
  br label %35

; <label>:19:                                     ; preds = %6
  %20 = load i8, i8* @output_tab_char, align 1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 5
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 6
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ult i8* %23, %25
  br i1 %26, label %33, label %27

; <label>:27:                                     ; preds = %19
  %28 = zext i8 %20 to i32
  %29 = tail call i32 @__overflow(%struct._IO_FILE* %21, i32 %28) #10
  br label %30

; <label>:30:                                     ; preds = %27, %33
  %31 = sub nsw i32 %3, %11
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %6, label %13

; <label>:33:                                     ; preds = %19
  %34 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %34, i8** %22, align 8
  store i8 %20, i8* %23, align 1
  br label %30

; <label>:35:                                     ; preds = %18, %46
  %36 = phi i32 [ %37, %46 ], [ %16, %18 ]
  %37 = add nsw i32 %36, 1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %38, i64 0, i32 5
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %38, i64 0, i32 6
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ult i8* %40, %42
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %35
  %45 = tail call i32 @__overflow(%struct._IO_FILE* %38, i32 32) #10
  br label %46

; <label>:46:                                     ; preds = %44, %48
  %47 = icmp eq i32 %37, %3
  br i1 %47, label %50, label %35

; <label>:48:                                     ; preds = %35
  %49 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %49, i8** %39, align 8
  store i8 32, i8* %40, align 1
  br label %46

; <label>:50:                                     ; preds = %46
  br label %51

; <label>:51:                                     ; preds = %50, %15
  store i32 %3, i32* @output_position, align 4
  store i32 0, i32* @spaces_not_printed, align 4
  ret void
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @close_file(%struct.COLUMN* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 8
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %77, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

; <label>:12:                                     ; preds = %5
  %13 = tail call i32* @__errno_location() #1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %16) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* %17) #10
  unreachable

; <label>:18:                                     ; preds = %5
  %19 = tail call i32 @fileno(%struct._IO_FILE* %7) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

; <label>:21:                                     ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %21
  %26 = tail call i32* @__errno_location() #1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %29) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* %30) #10
  unreachable

; <label>:31:                                     ; preds = %21, %18
  %32 = load i1, i1* @parallel_files, align 1
  br i1 %32, label %70, label %33

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* @columns, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %74, label %36

; <label>:36:                                     ; preds = %33
  %37 = load %struct.COLUMN*, %struct.COLUMN** @column_vector, align 8
  %38 = and i32 %34, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %37, i64 0, i32 2
  store i32 3, i32* %42, align 8
  %43 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %37, i64 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %37, i64 0, i32 7
  store i32 0, i32* %47, align 8
  br label %48

; <label>:48:                                     ; preds = %46, %41
  %49 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %37, i64 1
  %50 = add nsw i32 %34, -1
  br label %51

; <label>:51:                                     ; preds = %36, %48
  %52 = phi i32 [ %34, %36 ], [ %50, %48 ]
  %53 = phi %struct.COLUMN* [ %37, %36 ], [ %49, %48 ]
  %54 = icmp eq i32 %34, 1
  br i1 %54, label %73, label %55

; <label>:55:                                     ; preds = %51
  br label %56

; <label>:56:                                     ; preds = %80, %55
  %57 = phi i32 [ %52, %55 ], [ %82, %80 ]
  %58 = phi %struct.COLUMN* [ %53, %55 ], [ %81, %80 ]
  %59 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %58, i64 0, i32 2
  store i32 3, i32* %59, align 8
  %60 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %58, i64 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %58, i64 0, i32 7
  store i32 0, i32* %64, align 8
  br label %65

; <label>:65:                                     ; preds = %56, %63
  %66 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %58, i64 1, i32 2
  store i32 3, i32* %66, align 8
  %67 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %58, i64 1, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %80

; <label>:70:                                     ; preds = %31
  store i32 3, i32* %2, align 8
  %71 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %0, i64 0, i32 7
  store i32 0, i32* %71, align 8
  br label %74

; <label>:72:                                     ; preds = %80
  br label %73

; <label>:73:                                     ; preds = %51, %72
  br label %74

; <label>:74:                                     ; preds = %73, %33, %70
  %75 = load i32, i32* @files_ready_to_read, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* @files_ready_to_read, align 4
  br label %77

; <label>:77:                                     ; preds = %1, %74
  ret void

; <label>:78:                                     ; preds = %65
  %79 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %58, i64 1, i32 7
  store i32 0, i32* %79, align 8
  br label %80

; <label>:80:                                     ; preds = %78, %65
  %81 = getelementptr inbounds %struct.COLUMN, %struct.COLUMN* %58, i64 2
  %82 = add nsw i32 %57, -2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %72, label %56
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_header() unnamed_addr #0 {
  %1 = alloca [276 x i8], align 16
  %2 = getelementptr inbounds [276 x i8], [276 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 276, i8* nonnull %2) #10
  store i32 0, i32* @output_position, align 4
  %3 = load i32, i32* @chars_per_margin, align 4
  %4 = load i1, i1* @tabify_output, align 1
  br i1 %4, label %24, label %5

; <label>:5:                                      ; preds = %0
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %24

; <label>:7:                                      ; preds = %5
  br label %8

; <label>:8:                                      ; preds = %7, %19
  %9 = phi i32 [ %10, %19 ], [ 0, %7 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %11, i64 0, i32 5
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %11, i64 0, i32 6
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ult i8* %13, %15
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %8
  %18 = tail call i32 @__overflow(%struct._IO_FILE* %11, i32 32) #10
  br label %19

; <label>:19:                                     ; preds = %21, %17
  %20 = icmp eq i32 %10, %3
  br i1 %20, label %23, label %8

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %22, i8** %12, align 8
  store i8 32, i8* %13, align 1
  br label %19

; <label>:23:                                     ; preds = %19
  br label %24

; <label>:24:                                     ; preds = %23, %0, %5
  %25 = phi i32* [ @output_position, %5 ], [ @spaces_not_printed, %0 ], [ @output_position, %23 ]
  store i32 %3, i32* %25, align 4
  tail call fastcc void @print_white_space()
  %26 = load i64, i64* @page_number, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %24
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %29) #10
  unreachable

; <label>:30:                                     ; preds = %24
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0), i32 5) #10
  %32 = load i64, i64* @page_number, align 8
  %33 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %2, i32 1, i64 276, i8* %31, i64 %32) #10
  %34 = load i32, i32* @header_width_available, align 4
  %35 = call i32 @gnu_mbswidth(i8* nonnull %2, i32 0) #10
  %36 = sub nsw i32 %34, %35
  %37 = icmp sgt i32 %36, 0
  %38 = select i1 %37, i32 %36, i32 0
  %39 = lshr i32 %38, 1
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* @chars_per_margin, align 4
  %42 = load i8*, i8** @date_text, align 8
  %43 = load i8*, i8** @file_text, align 8
  %44 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* %43, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %2) #10
  store i1 false, i1* @print_a_header, align 1
  store i32 0, i32* @output_position, align 4
  call void @llvm.lifetime.end(i64 276, i8* nonnull %2) #10
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @char_to_clump(i8 signext) unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  %3 = load i8*, i8** @clump_buff, align 8
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4, i8* nonnull %4) #10
  %5 = load i8, i8* @input_tab_char, align 1
  %6 = icmp eq i8 %5, %0
  %7 = load i32, i32* @chars_per_input_tab, align 4
  %8 = select i1 %6, i32 %7, i32 8
  %9 = icmp eq i8 %0, 9
  %10 = or i1 %9, %6
  br i1 %10, label %11, label %24

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* @input_position, align 4
  %13 = srem i32 %12, %8
  %14 = sub nsw i32 %8, %13
  %15 = load i1, i1* @untabify_input, align 1
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %11
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %82, label %18

; <label>:18:                                     ; preds = %16
  %19 = add i32 %8, -1
  %20 = sub i32 %19, %13
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  call void @llvm.memset.p0i8.i64(i8* %3, i8 32, i64 %22, i32 1, i1 false)
  br label %70

; <label>:23:                                     ; preds = %11
  store i8 %0, i8* %3, align 1
  br label %70

; <label>:24:                                     ; preds = %1
  %25 = tail call i16** @__ctype_b_loc() #1
  %26 = load i16*, i16** %25, align 8
  %27 = zext i8 %0 to i32
  %28 = zext i8 %0 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = and i16 %30, 16384
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %66

; <label>:33:                                     ; preds = %24
  %34 = load i1, i1* @use_esc_sequence, align 1
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %33
  store i8 92, i8* %3, align 1
  %36 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %4, i32 1, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i32 %27) #10
  %37 = getelementptr inbounds i8, i8* %3, i64 1
  %38 = load i8, i8* %4, align 1
  store i8 %38, i8* %37, align 1
  %39 = getelementptr inbounds i8, i8* %3, i64 2
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds i8, i8* %3, i64 3
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %42, align 1
  br label %67

; <label>:45:                                     ; preds = %33
  %46 = load i1, i1* @use_cntrl_prefix, align 1
  br i1 %46, label %47, label %62

; <label>:47:                                     ; preds = %45
  %48 = icmp sgt i8 %0, -1
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 94, i8* %3, align 1
  %51 = xor i8 %0, 64
  store i8 %51, i8* %50, align 1
  br label %67

; <label>:52:                                     ; preds = %47
  store i8 92, i8* %3, align 1
  %53 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %4, i32 1, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i32 %27) #10
  %54 = getelementptr inbounds i8, i8* %3, i64 1
  %55 = load i8, i8* %4, align 1
  store i8 %55, i8* %54, align 1
  %56 = getelementptr inbounds i8, i8* %3, i64 2
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %56, align 1
  %59 = getelementptr inbounds i8, i8* %3, i64 3
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %59, align 1
  br label %67

; <label>:62:                                     ; preds = %45
  %63 = icmp eq i8 %0, 8
  store i8 %0, i8* %3, align 1
  %64 = sext i1 %63 to i32
  %65 = load i32, i32* @input_position, align 4
  br label %70

; <label>:66:                                     ; preds = %24
  store i8 %0, i8* %3, align 1
  br label %67

; <label>:67:                                     ; preds = %52, %35, %49, %66
  %68 = phi i32 [ 2, %49 ], [ 1, %66 ], [ 4, %35 ], [ 4, %52 ]
  %69 = load i32, i32* @input_position, align 4
  br label %82

; <label>:70:                                     ; preds = %18, %62, %23
  %71 = phi i32 [ %12, %23 ], [ %65, %62 ], [ %12, %18 ]
  %72 = phi i32 [ %14, %23 ], [ %64, %62 ], [ %14, %18 ]
  %73 = phi i32 [ 1, %23 ], [ 1, %62 ], [ %14, %18 ]
  %74 = icmp slt i32 %72, 0
  %75 = icmp eq i32 %71, 0
  %76 = and i1 %74, %75
  br i1 %76, label %87, label %77

; <label>:77:                                     ; preds = %70
  %78 = xor i1 %74, true
  %79 = sub nsw i32 0, %72
  %80 = icmp sgt i32 %71, %79
  %81 = or i1 %80, %78
  br i1 %81, label %82, label %87

; <label>:82:                                     ; preds = %16, %67, %77
  %83 = phi i32 [ %68, %67 ], [ %72, %77 ], [ 0, %16 ]
  %84 = phi i32 [ %68, %67 ], [ %73, %77 ], [ 0, %16 ]
  %85 = phi i32 [ %69, %67 ], [ %71, %77 ], [ %12, %16 ]
  %86 = add nsw i32 %85, %83
  br label %87

; <label>:87:                                     ; preds = %77, %70, %82
  %88 = phi i32 [ %84, %82 ], [ 0, %70 ], [ %73, %77 ]
  %89 = phi i32 [ %86, %82 ], [ 0, %70 ], [ 0, %77 ]
  store i32 %89, i32* @input_position, align 4
  call void @llvm.lifetime.end(i64 4, i8* nonnull %4) #10
  ret i32 %88
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #4

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #0 {
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #0 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i32 5) #10
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %17, i8* %12) #10
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.85, i64 0, i64 0), i8* %12) #10
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #15
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10
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
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #0 {
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #0 {
  %3 = icmp eq %struct._IO_FILE* %0, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %25, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10
  store i32 %13, i32* %12, align 4
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1
  %23 = load i32, i32* %22, align 4
  %24 = tail call i32 @close(i32 %9) #10
  store i32 %23, i32* %22, align 4
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @gettime(%struct.timespec*) local_unnamed_addr #0 {
  %2 = alloca %struct.timespec, align 8
  %3 = tail call i32 @clock_gettime(i32 0, %struct.timespec* %0) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #10
  %7 = call i32 @gettimeofday(%struct.timespec* nonnull %2, %struct.timezone* null) #10
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = mul nsw i64 %12, 1000
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  store i64 %13, i64* %14, align 8
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #10
  br label %15

; <label>:15:                                     ; preds = %1, %5
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* nocapture, %struct.timezone* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #0 {
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i64 0, i64 0)) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i8* @imaxtostr(i64, i8*) local_unnamed_addr #0 {
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
define i32 @gnu_mbswidth(i8*, i32) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %0) #13
  %4 = tail call i32 @mbsnwidth(i8* %0, i64 %3, i32 %1)
  ret i32 %4
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @mbsnwidth(i8*, i64, i32) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to %struct.__mbstate_t*
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds i8, i8* %0, i64 %1
  %8 = tail call i64 @__ctype_get_mb_cur_max() #10
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %3
  %11 = and i32 %2, 2
  %12 = icmp eq i32 %11, 0
  br label %108

; <label>:13:                                     ; preds = %3
  %14 = icmp sgt i64 %1, 0
  br i1 %14, label %15, label %115

; <label>:15:                                     ; preds = %13
  %16 = bitcast i64* %4 to i8*
  %17 = bitcast i32* %6 to i8*
  %18 = ptrtoint i8* %7 to i64
  %19 = and i32 %2, 2
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %2, 1
  %22 = icmp eq i32 %21, 0
  %23 = xor i32 %21, 1
  %24 = shl nuw nsw i32 %21, 2
  %25 = xor i32 %24, 5
  br label %26

; <label>:26:                                     ; preds = %15, %83
  %27 = phi i8* [ %0, %15 ], [ %85, %83 ]
  %28 = phi i32 [ 0, %15 ], [ %84, %83 ]
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %34 [
    i32 32, label %31
    i32 33, label %31
    i32 34, label %31
    i32 35, label %31
    i32 37, label %31
    i32 38, label %31
    i32 39, label %31
    i32 40, label %31
    i32 41, label %31
    i32 42, label %31
    i32 43, label %31
    i32 44, label %31
    i32 45, label %31
    i32 46, label %31
    i32 47, label %31
    i32 48, label %31
    i32 49, label %31
    i32 50, label %31
    i32 51, label %31
    i32 52, label %31
    i32 53, label %31
    i32 54, label %31
    i32 55, label %31
    i32 56, label %31
    i32 57, label %31
    i32 58, label %31
    i32 59, label %31
    i32 60, label %31
    i32 61, label %31
    i32 62, label %31
    i32 63, label %31
    i32 65, label %31
    i32 66, label %31
    i32 67, label %31
    i32 68, label %31
    i32 69, label %31
    i32 70, label %31
    i32 71, label %31
    i32 72, label %31
    i32 73, label %31
    i32 74, label %31
    i32 75, label %31
    i32 76, label %31
    i32 77, label %31
    i32 78, label %31
    i32 79, label %31
    i32 80, label %31
    i32 81, label %31
    i32 82, label %31
    i32 83, label %31
    i32 84, label %31
    i32 85, label %31
    i32 86, label %31
    i32 87, label %31
    i32 88, label %31
    i32 89, label %31
    i32 90, label %31
    i32 91, label %31
    i32 92, label %31
    i32 93, label %31
    i32 94, label %31
    i32 95, label %31
    i32 97, label %31
    i32 98, label %31
    i32 99, label %31
    i32 100, label %31
    i32 101, label %31
    i32 102, label %31
    i32 103, label %31
    i32 104, label %31
    i32 105, label %31
    i32 106, label %31
    i32 107, label %31
    i32 108, label %31
    i32 109, label %31
    i32 110, label %31
    i32 111, label %31
    i32 112, label %31
    i32 113, label %31
    i32 114, label %31
    i32 115, label %31
    i32 116, label %31
    i32 117, label %31
    i32 118, label %31
    i32 119, label %31
    i32 120, label %31
    i32 121, label %31
    i32 122, label %31
    i32 123, label %31
    i32 124, label %31
    i32 125, label %31
    i32 126, label %31
  ]

; <label>:31:                                     ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %32 = getelementptr inbounds i8, i8* %27, i64 1
  %33 = add nsw i32 %28, 1
  br label %83

; <label>:34:                                     ; preds = %26
  call void @llvm.lifetime.start(i64 8, i8* nonnull %16) #10
  store i64 0, i64* %4, align 8
  br label %35

; <label>:35:                                     ; preds = %76, %34
  %36 = phi i32 [ %28, %34 ], [ %72, %76 ]
  %37 = phi i8* [ %27, %34 ], [ %73, %76 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %17) #10
  %38 = ptrtoint i8* %37 to i64
  %39 = sub i64 %18, %38
  %40 = call i64 @rpl_mbrtowc(i32* nonnull %6, i8* %37, i64 %39, %struct.__mbstate_t* nonnull %5) #10
  switch i64 %40, label %49 [
    i64 -1, label %41
    i64 -2, label %45
    i64 0, label %48
  ]

; <label>:41:                                     ; preds = %35
  br i1 %22, label %42, label %71

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds i8, i8* %37, i64 1
  %44 = add nsw i32 %36, 1
  br label %71

; <label>:45:                                     ; preds = %35
  %46 = add nsw i32 %36, %23
  %47 = select i1 %22, i8* %7, i8* %37
  br label %71

; <label>:48:                                     ; preds = %35
  br label %49

; <label>:49:                                     ; preds = %35, %48
  %50 = phi i64 [ 1, %48 ], [ %40, %35 ]
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @wcwidth(i32 %51) #10
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %49
  %55 = sub nsw i32 2147483647, %36
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %71, label %57

; <label>:57:                                     ; preds = %54
  %58 = add nsw i32 %52, %36
  br label %68

; <label>:59:                                     ; preds = %49
  br i1 %20, label %60, label %71

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @iswcntrl(i32 %61) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %60
  %65 = icmp eq i32 %36, 2147483647
  br i1 %65, label %71, label %66

; <label>:66:                                     ; preds = %64
  %67 = add nsw i32 %36, 1
  br label %68

; <label>:68:                                     ; preds = %60, %66, %57
  %69 = phi i32 [ %58, %57 ], [ %36, %60 ], [ %67, %66 ]
  %70 = getelementptr inbounds i8, i8* %37, i64 %50
  br label %71

; <label>:71:                                     ; preds = %45, %59, %64, %54, %41, %68, %42
  %72 = phi i32 [ %44, %42 ], [ %69, %68 ], [ %36, %41 ], [ %36, %54 ], [ 2147483647, %64 ], [ %36, %59 ], [ %46, %45 ]
  %73 = phi i8* [ %43, %42 ], [ %70, %68 ], [ %37, %41 ], [ %37, %54 ], [ %37, %64 ], [ %37, %59 ], [ %47, %45 ]
  %74 = phi i32 [ 5, %42 ], [ 0, %68 ], [ 1, %41 ], [ 7, %54 ], [ 7, %64 ], [ 1, %59 ], [ %25, %45 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %17) #10
  %75 = trunc i32 %74 to i3
  switch i3 %75, label %80 [
    i3 0, label %76
    i3 -3, label %79
  ]

; <label>:76:                                     ; preds = %71
  %77 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %5) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %35, label %79

; <label>:79:                                     ; preds = %71, %76
  call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #10
  br label %83

; <label>:80:                                     ; preds = %71
  call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #10
  %81 = icmp eq i3 %75, -1
  %82 = select i1 %81, i32 2147483647, i32 -1
  ret i32 %82

; <label>:83:                                     ; preds = %31, %79
  %84 = phi i32 [ %33, %31 ], [ %72, %79 ]
  %85 = phi i8* [ %32, %31 ], [ %73, %79 ]
  %86 = icmp ult i8* %85, %7
  br i1 %86, label %26, label %111

; <label>:87:                                     ; preds = %108, %102
  %88 = phi i8* [ %91, %102 ], [ %110, %108 ]
  %89 = icmp ult i8* %88, %7
  br i1 %89, label %90, label %112

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds i8, i8* %88, i64 1
  %92 = load i8, i8* %88, align 1
  %93 = tail call i16** @__ctype_b_loc() #1
  %94 = load i16*, i16** %93, align 8
  %95 = zext i8 %92 to i64
  %96 = getelementptr inbounds i16, i16* %94, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 16384
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %90
  br i1 %12, label %102, label %112

; <label>:102:                                    ; preds = %101
  %103 = and i32 %98, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %87

; <label>:105:                                    ; preds = %90, %102
  %106 = icmp eq i32 %109, 2147483647
  %107 = add nsw i32 %109, 1
  br i1 %106, label %114, label %108

; <label>:108:                                    ; preds = %10, %105
  %109 = phi i32 [ 0, %10 ], [ %107, %105 ]
  %110 = phi i8* [ %0, %10 ], [ %91, %105 ]
  br label %87

; <label>:111:                                    ; preds = %83
  br label %115

; <label>:112:                                    ; preds = %87, %101
  %113 = phi i32 [ -1, %101 ], [ %109, %87 ]
  br label %115

; <label>:114:                                    ; preds = %105
  br label %115

; <label>:115:                                    ; preds = %114, %112, %111, %13
  %116 = phi i32 [ 0, %13 ], [ %84, %111 ], [ %113, %112 ], [ 2147483647, %114 ]
  ret i32 %116
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @wcwidth(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.105, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #15
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.106, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.107, i64 0, i64 0), i64 3) #13
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
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #0 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10
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
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #0 {
  %3 = icmp ne %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #0 {
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
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #0 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %1, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #0 {
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
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #0 {
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
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #0 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.118, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), i32 %28)
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
  call void @abort() #15
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.120, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.120, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.120, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.120, i64 0, i64 0), %41 ]
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10
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
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #10
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #0 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.121, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.122, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.123, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.124, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.120, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #0 {
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
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10
  store i32 %7, i32* %6, align 4
  ret i8* %20
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #0 {
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
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10
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
define void @quotearg_free() local_unnamed_addr #0 {
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
  tail call void @free(i8* %8) #10
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
  tail call void @free(i8* %16) #10
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #10
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #0 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #0 {
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
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10
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
  tail call void @free(i8* %40) #10
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10
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
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #0 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #0 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #0 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #0 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #0 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #0 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #0 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #0 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #0 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
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
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #0 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #0 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #0 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #0 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
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
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #0 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
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
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #0 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
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
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #0 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #0 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #0 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #0 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @nstrftime(i8*, i64, i8* readonly, %struct.tm*, %struct.tm_zone*, i32) local_unnamed_addr #0 {
  %7 = tail call fastcc i64 @__strftime_internal(i8* %0, i64 %1, i8* %2, %struct.tm* %3, i1 zeroext false, %struct.tm_zone* %4, i32 %5)
  ret i64 %7
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal(i8*, i64, i8* readonly, %struct.tm*, i1 zeroext, %struct.tm_zone*, i32) unnamed_addr #0 {
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
  %18 = select i1 %17, i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.133, i64 0, i64 0)
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
  call void @llvm.lifetime.start(i64 23, i8* nonnull %27) #10
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
  %184 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.134, i64 0, i64 0), %886 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i64 0, i64 0), %422 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.136, i64 0, i64 0), %759 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.137, i64 0, i64 0), %126 ]
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
  call void @llvm.lifetime.start(i64 5, i8* nonnull %28) #10
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %29) #10
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
  %228 = call i64 @strftime(i8* nonnull %29, i64 1024, i8* nonnull %28, %struct.tm* %3) #10
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
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #10
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #10
  br label %1372

; <label>:405:                                    ; preds = %230
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #10
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #10
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %42) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %42, i8* %43, i64 56, i32 8, i1 false)
  %866 = call i64 @mktime_z(%struct.tm_zone* %5, %struct.tm* nonnull %11) #10
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %42) #10
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
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #10
  br label %1403

; <label>:1372:                                   ; preds = %1367, %1202, %910, %847, %756, %402, %209, %159, %1212
  %1373 = phi i32 [ %1259, %1367 ], [ %54, %1202 ], [ %54, %910 ], [ %54, %847 ], [ %493, %756 ], [ %217, %402 ], [ %54, %209 ], [ %54, %159 ], [ %54, %1212 ]
  %1374 = phi i32 [ %1260, %1367 ], [ %53, %1202 ], [ %53, %910 ], [ %53, %847 ], [ %496, %756 ], [ %218, %402 ], [ %53, %209 ], [ %53, %159 ], [ %53, %1212 ]
  %1375 = phi i8* [ %1262, %1367 ], [ %129, %1202 ], [ %129, %910 ], [ %129, %847 ], [ %499, %756 ], [ %221, %402 ], [ %129, %209 ], [ %129, %159 ], [ %1214, %1212 ]
  %1376 = phi i8* [ %1368, %1367 ], [ %1203, %1202 ], [ %911, %910 ], [ %848, %847 ], [ %757, %756 ], [ %403, %402 ], [ %210, %209 ], [ %160, %159 ], [ %51, %1212 ]
  %1377 = phi i64 [ %1369, %1367 ], [ %1204, %1202 ], [ %912, %910 ], [ %849, %847 ], [ %758, %756 ], [ %404, %402 ], [ %211, %209 ], [ %161, %159 ], [ %50, %1212 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #10
  br label %1385

; <label>:1378:                                   ; preds = %67, %1248
  %1379 = phi i32 [ %1249, %1248 ], [ %72, %67 ]
  %1380 = phi i32 [ %1250, %1248 ], [ %54, %67 ]
  %1381 = phi i32 [ %1251, %1248 ], [ %53, %67 ]
  %1382 = phi i8* [ %1214, %1248 ], [ %52, %67 ]
  %1383 = phi i8* [ %51, %1248 ], [ %69, %67 ]
  %1384 = phi i64 [ %50, %1248 ], [ %70, %67 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #10
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
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #0 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.141, i64 0, i64 0), i8* %2, i8* %3) #10
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.142, i64 0, i64 0), i32 5) #10
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.143, i64 0, i64 0), i32 5) #10
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.144, i64 0, i64 0), i32 5) #10
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.145, i64 0, i64 0), i32 5) #10
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.146, i64 0, i64 0), i32 5) #10
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.147, i64 0, i64 0), i32 5) #10
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.148, i64 0, i64 0), i32 5) #10
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.149, i64 0, i64 0), i32 5) #10
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
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.150, i64 0, i64 0), i32 5) #10
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
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.151, i64 0, i64 0), i32 5) #10
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
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.152, i64 0, i64 0), i32 5) #10
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
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.153, i64 0, i64 0), i32 5) #10
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
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10
  br label %146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #0 {
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
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #0 {
  %6 = alloca [10 x i8*], align 16
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10
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
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10
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
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #0 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.156, i64 0, i64 0), i32 5) #10
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.157, i64 0, i64 0)) #10
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.158, i64 0, i64 0), i32 5) #10
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.159, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.160, i64 0, i64 0)) #10
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.161, i64 0, i64 0), i32 5) #10
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #10
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
declare noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #0 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
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
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 {
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
  tail call void @free(i8* nonnull %0) #10
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10
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
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10
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
  tail call void @free(i8* nonnull %0) #10
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10
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
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
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
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #0 {
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
  tail call void @free(i8* nonnull %0) #10
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10
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
define noalias i8* @xzalloc(i64) local_unnamed_addr #0 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
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
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #0 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #0 {
  %3 = tail call noalias i8* @malloc(i64 %1) #10
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
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* %0) #13
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #10
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #6 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.174, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i64 0, i64 0), i8* %2) #10
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %26
    i32 3, label %28
  ]

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1
  br label %30

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %14, %2
  %16 = icmp sgt i64 %14, %3
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %39

; <label>:18:                                     ; preds = %13
  %19 = icmp sgt i64 %14, 1073741823
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %18
  %21 = tail call i32* @__errno_location() #1
  store i32 75, i32* %21, align 4
  br label %30

; <label>:22:                                     ; preds = %18
  %23 = icmp slt i64 %14, -1073741824
  %24 = tail call i32* @__errno_location() #1
  %25 = select i1 %23, i32 75, i32 34
  store i32 %25, i32* %24, align 4
  br label %30

; <label>:26:                                     ; preds = %7
  %27 = tail call i32* @__errno_location() #1
  store i32 75, i32* %27, align 4
  br label %30

; <label>:28:                                     ; preds = %7
  %29 = tail call i32* @__errno_location() #1
  store i32 0, i32* %29, align 4
  br label %30

; <label>:30:                                     ; preds = %11, %20, %22, %26, %28
  %31 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %22 ], [ %27, %26 ], [ %29, %28 ]
  %32 = icmp ne i32 %6, 0
  %33 = select i1 %32, i32 %6, i32 1
  %34 = load i32, i32* %31, align 4
  %35 = icmp eq i32 %34, 22
  %36 = select i1 %35, i32 0, i32 %34
  %37 = call i8* @quote(i8* %0) #10
  call void (i32, i32, i8*, ...) @error(i32 %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i64 0, i64 0), i8* %5, i8* %37) #10
  %38 = load i64, i64* %8, align 8
  br label %39

; <label>:39:                                     ; preds = %13, %30
  %40 = phi i64 [ %14, %13 ], [ %38, %30 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10
  ret i64 %40
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #0 {
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5)
  ret i64 %7
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #0 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.181, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.182, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #15
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = select i1 %11, i8** %1, i8** %6
  %13 = tail call i32* @__errno_location() #1
  store i32 0, i32* %13, align 4
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #10
  %15 = load i8*, i8** %12, align 8
  %16 = icmp eq i8* %15, %0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null
  br i1 %18, label %196, label %19

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %196, label %22

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #10
  %25 = icmp eq i8* %24, null
  br i1 %25, label %196, label %33

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ]

; <label>:28:                                     ; preds = %26
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  %31 = icmp eq i8* %4, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i64 %14, i64* %3, align 8
  br label %196

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %193, label %38

; <label>:38:                                     ; preds = %33
  %39 = sext i8 %36 to i32
  %40 = call i8* @strchr(i8* nonnull %4, i32 %39) #10
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  store i64 %35, i64* %3, align 8
  %43 = or i32 %34, 2
  br label %196

; <label>:44:                                     ; preds = %38
  switch i32 %39, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ]

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #10
  %47 = icmp eq i8* %46, null
  br i1 %47, label %58, label %48

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ]

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 66
  %56 = select i1 %55, i64 3, i64 1
  br label %58

; <label>:57:                                     ; preds = %48, %48
  br label %58

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %39, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ]

; <label>:61:                                     ; preds = %58
  %62 = icmp slt i64 %35, -18014398509481984
  br i1 %62, label %184, label %63

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983
  %65 = shl nsw i64 %35, 9
  %66 = select i1 %64, i64 9223372036854775807, i64 %65
  %67 = zext i1 %64 to i32
  br label %184

; <label>:68:                                     ; preds = %58
  %69 = icmp slt i64 %35, -9007199254740992
  br i1 %69, label %184, label %70

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991
  %72 = shl nsw i64 %35, 10
  %73 = select i1 %71, i64 9223372036854775807, i64 %72
  %74 = zext i1 %71 to i32
  br label %184

; <label>:75:                                     ; preds = %58
  %76 = sdiv i64 -9223372036854775808, %59
  %77 = icmp slt i64 %35, %76
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59
  %80 = icmp slt i64 %79, %35
  %81 = mul nsw i64 %35, %59
  %82 = select i1 %80, i64 9223372036854775807, i64 %81
  %83 = zext i1 %80 to i32
  br label %84

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  %87 = icmp slt i64 %85, %76
  br i1 %87, label %204, label %198

; <label>:88:                                     ; preds = %58, %58
  %89 = sdiv i64 -9223372036854775808, %59
  %90 = icmp slt i64 %35, %89
  br i1 %90, label %97, label %91

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59
  %93 = icmp slt i64 %92, %35
  %94 = mul nsw i64 %35, %59
  %95 = select i1 %93, i64 9223372036854775807, i64 %94
  %96 = zext i1 %93 to i32
  br label %97

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  %100 = icmp slt i64 %98, %89
  br i1 %100, label %258, label %252

; <label>:101:                                    ; preds = %58, %58
  %102 = sdiv i64 -9223372036854775808, %59
  %103 = icmp slt i64 %35, %102
  br i1 %103, label %184, label %104

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59
  %106 = icmp slt i64 %105, %35
  %107 = mul nsw i64 %35, %59
  %108 = select i1 %106, i64 9223372036854775807, i64 %107
  %109 = zext i1 %106 to i32
  br label %184

; <label>:110:                                    ; preds = %58, %58
  %111 = sdiv i64 -9223372036854775808, %59
  %112 = icmp slt i64 %35, %111
  br i1 %112, label %119, label %113

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59
  %115 = icmp slt i64 %114, %35
  %116 = mul nsw i64 %35, %59
  %117 = select i1 %115, i64 9223372036854775807, i64 %116
  %118 = zext i1 %115 to i32
  br label %119

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  %122 = icmp slt i64 %120, %111
  br i1 %122, label %279, label %273

; <label>:123:                                    ; preds = %58
  %124 = sdiv i64 -9223372036854775808, %59
  %125 = icmp slt i64 %35, %124
  br i1 %125, label %132, label %126

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59
  %128 = icmp slt i64 %127, %35
  %129 = mul nsw i64 %35, %59
  %130 = select i1 %128, i64 9223372036854775807, i64 %129
  %131 = zext i1 %128 to i32
  br label %132

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  %135 = icmp slt i64 %133, %124
  br i1 %135, label %289, label %283

; <label>:136:                                    ; preds = %58, %58
  %137 = sdiv i64 -9223372036854775808, %59
  %138 = icmp slt i64 %35, %137
  br i1 %138, label %145, label %139

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59
  %141 = icmp slt i64 %140, %35
  %142 = mul nsw i64 %35, %59
  %143 = select i1 %141, i64 9223372036854775807, i64 %142
  %144 = zext i1 %141 to i32
  br label %145

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  %148 = icmp slt i64 %146, %137
  br i1 %148, label %332, label %326

; <label>:149:                                    ; preds = %58
  %150 = icmp slt i64 %35, -4611686018427387904
  br i1 %150, label %184, label %151

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903
  %153 = shl nsw i64 %35, 1
  %154 = select i1 %152, i64 9223372036854775807, i64 %153
  %155 = zext i1 %152 to i32
  br label %184

; <label>:156:                                    ; preds = %58
  %157 = sdiv i64 -9223372036854775808, %59
  %158 = icmp slt i64 %35, %157
  br i1 %158, label %165, label %159

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59
  %161 = icmp slt i64 %160, %35
  %162 = mul nsw i64 %35, %59
  %163 = select i1 %161, i64 9223372036854775807, i64 %162
  %164 = zext i1 %161 to i32
  br label %165

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  %168 = icmp slt i64 %166, %157
  br i1 %168, label %364, label %358

; <label>:169:                                    ; preds = %58
  %170 = sdiv i64 -9223372036854775808, %59
  %171 = icmp slt i64 %35, %170
  br i1 %171, label %178, label %172

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59
  %174 = icmp slt i64 %173, %35
  %175 = mul nsw i64 %35, %59
  %176 = select i1 %174, i64 9223372036854775807, i64 %175
  %177 = zext i1 %174 to i32
  br label %178

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  %181 = icmp slt i64 %179, %170
  br i1 %181, label %440, label %434

; <label>:182:                                    ; preds = %58
  store i64 %35, i64* %3, align 8
  %183 = or i32 %34, 2
  br label %196

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  %187 = or i32 %186, %34
  %188 = getelementptr inbounds i8, i8* %15, i64 %60
  store i8* %188, i8** %12, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp eq i8 %189, 0
  %191 = or i32 %187, 2
  %192 = select i1 %190, i32 %187, i32 %191
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  store i64 %194, i64* %3, align 8
  br label %196

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10
  ret i32 %197

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59
  %200 = icmp slt i64 %199, %85
  %201 = mul nsw i64 %85, %59
  %202 = select i1 %200, i64 9223372036854775807, i64 %201
  %203 = zext i1 %200 to i32
  br label %204

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86
  %208 = icmp slt i64 %205, %76
  br i1 %208, label %215, label %209

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59
  %211 = icmp slt i64 %210, %205
  %212 = mul nsw i64 %205, %59
  %213 = select i1 %211, i64 9223372036854775807, i64 %212
  %214 = zext i1 %211 to i32
  br label %215

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207
  %219 = icmp slt i64 %216, %76
  br i1 %219, label %226, label %220

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59
  %222 = icmp slt i64 %221, %216
  %223 = mul nsw i64 %216, %59
  %224 = select i1 %222, i64 9223372036854775807, i64 %223
  %225 = zext i1 %222 to i32
  br label %226

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218
  %230 = icmp slt i64 %227, %76
  br i1 %230, label %237, label %231

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59
  %233 = icmp slt i64 %232, %227
  %234 = mul nsw i64 %227, %59
  %235 = select i1 %233, i64 9223372036854775807, i64 %234
  %236 = zext i1 %233 to i32
  br label %237

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229
  %241 = icmp slt i64 %238, %76
  br i1 %241, label %248, label %242

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59
  %244 = icmp slt i64 %243, %238
  %245 = mul nsw i64 %238, %59
  %246 = select i1 %244, i64 9223372036854775807, i64 %245
  %247 = zext i1 %244 to i32
  br label %248

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240
  br label %184

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59
  %254 = icmp slt i64 %253, %98
  %255 = mul nsw i64 %98, %59
  %256 = select i1 %254, i64 9223372036854775807, i64 %255
  %257 = zext i1 %254 to i32
  br label %258

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99
  %262 = icmp slt i64 %259, %89
  br i1 %262, label %269, label %263

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59
  %265 = icmp slt i64 %264, %259
  %266 = mul nsw i64 %259, %59
  %267 = select i1 %265, i64 9223372036854775807, i64 %266
  %268 = zext i1 %265 to i32
  br label %269

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261
  br label %184

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59
  %275 = icmp slt i64 %274, %120
  %276 = mul nsw i64 %120, %59
  %277 = select i1 %275, i64 9223372036854775807, i64 %276
  %278 = zext i1 %275 to i32
  br label %279

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121
  br label %184

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59
  %285 = icmp slt i64 %284, %133
  %286 = mul nsw i64 %133, %59
  %287 = select i1 %285, i64 9223372036854775807, i64 %286
  %288 = zext i1 %285 to i32
  br label %289

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134
  %293 = icmp slt i64 %290, %124
  br i1 %293, label %300, label %294

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59
  %296 = icmp slt i64 %295, %290
  %297 = mul nsw i64 %290, %59
  %298 = select i1 %296, i64 9223372036854775807, i64 %297
  %299 = zext i1 %296 to i32
  br label %300

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292
  %304 = icmp slt i64 %301, %124
  br i1 %304, label %311, label %305

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59
  %307 = icmp slt i64 %306, %301
  %308 = mul nsw i64 %301, %59
  %309 = select i1 %307, i64 9223372036854775807, i64 %308
  %310 = zext i1 %307 to i32
  br label %311

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303
  %315 = icmp slt i64 %312, %124
  br i1 %315, label %322, label %316

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59
  %318 = icmp slt i64 %317, %312
  %319 = mul nsw i64 %312, %59
  %320 = select i1 %318, i64 9223372036854775807, i64 %319
  %321 = zext i1 %318 to i32
  br label %322

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314
  br label %184

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59
  %328 = icmp slt i64 %327, %146
  %329 = mul nsw i64 %146, %59
  %330 = select i1 %328, i64 9223372036854775807, i64 %329
  %331 = zext i1 %328 to i32
  br label %332

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147
  %336 = icmp slt i64 %333, %137
  br i1 %336, label %343, label %337

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59
  %339 = icmp slt i64 %338, %333
  %340 = mul nsw i64 %333, %59
  %341 = select i1 %339, i64 9223372036854775807, i64 %340
  %342 = zext i1 %339 to i32
  br label %343

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335
  %347 = icmp slt i64 %344, %137
  br i1 %347, label %354, label %348

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59
  %350 = icmp slt i64 %349, %344
  %351 = mul nsw i64 %344, %59
  %352 = select i1 %350, i64 9223372036854775807, i64 %351
  %353 = zext i1 %350 to i32
  br label %354

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346
  br label %184

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59
  %360 = icmp slt i64 %359, %166
  %361 = mul nsw i64 %166, %59
  %362 = select i1 %360, i64 9223372036854775807, i64 %361
  %363 = zext i1 %360 to i32
  br label %364

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167
  %368 = icmp slt i64 %365, %157
  br i1 %368, label %375, label %369

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59
  %371 = icmp slt i64 %370, %365
  %372 = mul nsw i64 %365, %59
  %373 = select i1 %371, i64 9223372036854775807, i64 %372
  %374 = zext i1 %371 to i32
  br label %375

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367
  %379 = icmp slt i64 %376, %157
  br i1 %379, label %386, label %380

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59
  %382 = icmp slt i64 %381, %376
  %383 = mul nsw i64 %376, %59
  %384 = select i1 %382, i64 9223372036854775807, i64 %383
  %385 = zext i1 %382 to i32
  br label %386

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378
  %390 = icmp slt i64 %387, %157
  br i1 %390, label %397, label %391

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59
  %393 = icmp slt i64 %392, %387
  %394 = mul nsw i64 %387, %59
  %395 = select i1 %393, i64 9223372036854775807, i64 %394
  %396 = zext i1 %393 to i32
  br label %397

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389
  %401 = icmp slt i64 %398, %157
  br i1 %401, label %408, label %402

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59
  %404 = icmp slt i64 %403, %398
  %405 = mul nsw i64 %398, %59
  %406 = select i1 %404, i64 9223372036854775807, i64 %405
  %407 = zext i1 %404 to i32
  br label %408

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400
  %412 = icmp slt i64 %409, %157
  br i1 %412, label %419, label %413

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59
  %415 = icmp slt i64 %414, %409
  %416 = mul nsw i64 %409, %59
  %417 = select i1 %415, i64 9223372036854775807, i64 %416
  %418 = zext i1 %415 to i32
  br label %419

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411
  %423 = icmp slt i64 %420, %157
  br i1 %423, label %430, label %424

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59
  %426 = icmp slt i64 %425, %420
  %427 = mul nsw i64 %420, %59
  %428 = select i1 %426, i64 9223372036854775807, i64 %427
  %429 = zext i1 %426 to i32
  br label %430

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422
  br label %184

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59
  %436 = icmp slt i64 %435, %179
  %437 = mul nsw i64 %179, %59
  %438 = select i1 %436, i64 9223372036854775807, i64 %437
  %439 = zext i1 %436 to i32
  br label %440

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180
  %444 = icmp slt i64 %441, %170
  br i1 %444, label %451, label %445

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59
  %447 = icmp slt i64 %446, %441
  %448 = mul nsw i64 %441, %59
  %449 = select i1 %447, i64 9223372036854775807, i64 %448
  %450 = zext i1 %447 to i32
  br label %451

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443
  %455 = icmp slt i64 %452, %170
  br i1 %455, label %462, label %456

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59
  %458 = icmp slt i64 %457, %452
  %459 = mul nsw i64 %452, %59
  %460 = select i1 %458, i64 9223372036854775807, i64 %459
  %461 = zext i1 %458 to i32
  br label %462

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454
  %466 = icmp slt i64 %463, %170
  br i1 %466, label %473, label %467

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59
  %469 = icmp slt i64 %468, %463
  %470 = mul nsw i64 %463, %59
  %471 = select i1 %469, i64 9223372036854775807, i64 %470
  %472 = zext i1 %469 to i32
  br label %473

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465
  %477 = icmp slt i64 %474, %170
  br i1 %477, label %484, label %478

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59
  %480 = icmp slt i64 %479, %474
  %481 = mul nsw i64 %474, %59
  %482 = select i1 %480, i64 9223372036854775807, i64 %481
  %483 = zext i1 %480 to i32
  br label %484

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476
  %488 = icmp slt i64 %485, %170
  br i1 %488, label %495, label %489

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59
  %491 = icmp slt i64 %490, %485
  %492 = mul nsw i64 %485, %59
  %493 = select i1 %491, i64 9223372036854775807, i64 %492
  %494 = zext i1 %491 to i32
  br label %495

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487
  br label %184
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtol(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #0 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.185, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.186, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i64 0, i64 0)) #15
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = select i1 %11, i8** %1, i8** %6
  %13 = tail call i32* @__errno_location() #1
  store i32 0, i32* %13, align 4
  %14 = call i64 @strtol(i8* %0, i8** %12, i32 %2) #10
  %15 = load i8*, i8** %12, align 8
  %16 = icmp eq i8* %15, %0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null
  br i1 %18, label %196, label %19

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %196, label %22

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32
  %24 = tail call i8* @strchr(i8* nonnull %4, i32 %23) #10
  %25 = icmp eq i8* %24, null
  br i1 %25, label %196, label %33

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ]

; <label>:28:                                     ; preds = %26
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  %31 = icmp eq i8* %4, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i64 %14, i64* %3, align 8
  br label %196

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %193, label %38

; <label>:38:                                     ; preds = %33
  %39 = sext i8 %36 to i32
  %40 = tail call i8* @strchr(i8* nonnull %4, i32 %39) #10
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  store i64 %35, i64* %3, align 8
  %43 = or i32 %34, 2
  br label %196

; <label>:44:                                     ; preds = %38
  switch i32 %39, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ]

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = tail call i8* @strchr(i8* nonnull %4, i32 48) #10
  %47 = icmp eq i8* %46, null
  br i1 %47, label %58, label %48

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ]

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 66
  %56 = select i1 %55, i64 3, i64 1
  br label %58

; <label>:57:                                     ; preds = %48, %48
  br label %58

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %39, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ]

; <label>:61:                                     ; preds = %58
  %62 = icmp slt i64 %35, -18014398509481984
  br i1 %62, label %184, label %63

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983
  %65 = shl nsw i64 %35, 9
  %66 = select i1 %64, i64 9223372036854775807, i64 %65
  %67 = zext i1 %64 to i32
  br label %184

; <label>:68:                                     ; preds = %58
  %69 = icmp slt i64 %35, -9007199254740992
  br i1 %69, label %184, label %70

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991
  %72 = shl nsw i64 %35, 10
  %73 = select i1 %71, i64 9223372036854775807, i64 %72
  %74 = zext i1 %71 to i32
  br label %184

; <label>:75:                                     ; preds = %58
  %76 = sdiv i64 -9223372036854775808, %59
  %77 = icmp slt i64 %35, %76
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59
  %80 = icmp slt i64 %79, %35
  %81 = mul nsw i64 %35, %59
  %82 = select i1 %80, i64 9223372036854775807, i64 %81
  %83 = zext i1 %80 to i32
  br label %84

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  %87 = icmp slt i64 %85, %76
  br i1 %87, label %204, label %198

; <label>:88:                                     ; preds = %58, %58
  %89 = sdiv i64 -9223372036854775808, %59
  %90 = icmp slt i64 %35, %89
  br i1 %90, label %97, label %91

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59
  %93 = icmp slt i64 %92, %35
  %94 = mul nsw i64 %35, %59
  %95 = select i1 %93, i64 9223372036854775807, i64 %94
  %96 = zext i1 %93 to i32
  br label %97

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  %100 = icmp slt i64 %98, %89
  br i1 %100, label %258, label %252

; <label>:101:                                    ; preds = %58, %58
  %102 = sdiv i64 -9223372036854775808, %59
  %103 = icmp slt i64 %35, %102
  br i1 %103, label %184, label %104

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59
  %106 = icmp slt i64 %105, %35
  %107 = mul nsw i64 %35, %59
  %108 = select i1 %106, i64 9223372036854775807, i64 %107
  %109 = zext i1 %106 to i32
  br label %184

; <label>:110:                                    ; preds = %58, %58
  %111 = sdiv i64 -9223372036854775808, %59
  %112 = icmp slt i64 %35, %111
  br i1 %112, label %119, label %113

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59
  %115 = icmp slt i64 %114, %35
  %116 = mul nsw i64 %35, %59
  %117 = select i1 %115, i64 9223372036854775807, i64 %116
  %118 = zext i1 %115 to i32
  br label %119

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  %122 = icmp slt i64 %120, %111
  br i1 %122, label %279, label %273

; <label>:123:                                    ; preds = %58
  %124 = sdiv i64 -9223372036854775808, %59
  %125 = icmp slt i64 %35, %124
  br i1 %125, label %132, label %126

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59
  %128 = icmp slt i64 %127, %35
  %129 = mul nsw i64 %35, %59
  %130 = select i1 %128, i64 9223372036854775807, i64 %129
  %131 = zext i1 %128 to i32
  br label %132

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  %135 = icmp slt i64 %133, %124
  br i1 %135, label %289, label %283

; <label>:136:                                    ; preds = %58, %58
  %137 = sdiv i64 -9223372036854775808, %59
  %138 = icmp slt i64 %35, %137
  br i1 %138, label %145, label %139

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59
  %141 = icmp slt i64 %140, %35
  %142 = mul nsw i64 %35, %59
  %143 = select i1 %141, i64 9223372036854775807, i64 %142
  %144 = zext i1 %141 to i32
  br label %145

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  %148 = icmp slt i64 %146, %137
  br i1 %148, label %332, label %326

; <label>:149:                                    ; preds = %58
  %150 = icmp slt i64 %35, -4611686018427387904
  br i1 %150, label %184, label %151

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903
  %153 = shl nsw i64 %35, 1
  %154 = select i1 %152, i64 9223372036854775807, i64 %153
  %155 = zext i1 %152 to i32
  br label %184

; <label>:156:                                    ; preds = %58
  %157 = sdiv i64 -9223372036854775808, %59
  %158 = icmp slt i64 %35, %157
  br i1 %158, label %165, label %159

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59
  %161 = icmp slt i64 %160, %35
  %162 = mul nsw i64 %35, %59
  %163 = select i1 %161, i64 9223372036854775807, i64 %162
  %164 = zext i1 %161 to i32
  br label %165

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  %168 = icmp slt i64 %166, %157
  br i1 %168, label %364, label %358

; <label>:169:                                    ; preds = %58
  %170 = sdiv i64 -9223372036854775808, %59
  %171 = icmp slt i64 %35, %170
  br i1 %171, label %178, label %172

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59
  %174 = icmp slt i64 %173, %35
  %175 = mul nsw i64 %35, %59
  %176 = select i1 %174, i64 9223372036854775807, i64 %175
  %177 = zext i1 %174 to i32
  br label %178

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  %181 = icmp slt i64 %179, %170
  br i1 %181, label %440, label %434

; <label>:182:                                    ; preds = %58
  store i64 %35, i64* %3, align 8
  %183 = or i32 %34, 2
  br label %196

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  %187 = or i32 %186, %34
  %188 = getelementptr inbounds i8, i8* %15, i64 %60
  store i8* %188, i8** %12, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp eq i8 %189, 0
  %191 = or i32 %187, 2
  %192 = select i1 %190, i32 %187, i32 %191
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  store i64 %194, i64* %3, align 8
  br label %196

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10
  ret i32 %197

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59
  %200 = icmp slt i64 %199, %85
  %201 = mul nsw i64 %85, %59
  %202 = select i1 %200, i64 9223372036854775807, i64 %201
  %203 = zext i1 %200 to i32
  br label %204

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86
  %208 = icmp slt i64 %205, %76
  br i1 %208, label %215, label %209

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59
  %211 = icmp slt i64 %210, %205
  %212 = mul nsw i64 %205, %59
  %213 = select i1 %211, i64 9223372036854775807, i64 %212
  %214 = zext i1 %211 to i32
  br label %215

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207
  %219 = icmp slt i64 %216, %76
  br i1 %219, label %226, label %220

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59
  %222 = icmp slt i64 %221, %216
  %223 = mul nsw i64 %216, %59
  %224 = select i1 %222, i64 9223372036854775807, i64 %223
  %225 = zext i1 %222 to i32
  br label %226

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218
  %230 = icmp slt i64 %227, %76
  br i1 %230, label %237, label %231

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59
  %233 = icmp slt i64 %232, %227
  %234 = mul nsw i64 %227, %59
  %235 = select i1 %233, i64 9223372036854775807, i64 %234
  %236 = zext i1 %233 to i32
  br label %237

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229
  %241 = icmp slt i64 %238, %76
  br i1 %241, label %248, label %242

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59
  %244 = icmp slt i64 %243, %238
  %245 = mul nsw i64 %238, %59
  %246 = select i1 %244, i64 9223372036854775807, i64 %245
  %247 = zext i1 %244 to i32
  br label %248

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240
  br label %184

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59
  %254 = icmp slt i64 %253, %98
  %255 = mul nsw i64 %98, %59
  %256 = select i1 %254, i64 9223372036854775807, i64 %255
  %257 = zext i1 %254 to i32
  br label %258

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99
  %262 = icmp slt i64 %259, %89
  br i1 %262, label %269, label %263

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59
  %265 = icmp slt i64 %264, %259
  %266 = mul nsw i64 %259, %59
  %267 = select i1 %265, i64 9223372036854775807, i64 %266
  %268 = zext i1 %265 to i32
  br label %269

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261
  br label %184

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59
  %275 = icmp slt i64 %274, %120
  %276 = mul nsw i64 %120, %59
  %277 = select i1 %275, i64 9223372036854775807, i64 %276
  %278 = zext i1 %275 to i32
  br label %279

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121
  br label %184

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59
  %285 = icmp slt i64 %284, %133
  %286 = mul nsw i64 %133, %59
  %287 = select i1 %285, i64 9223372036854775807, i64 %286
  %288 = zext i1 %285 to i32
  br label %289

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134
  %293 = icmp slt i64 %290, %124
  br i1 %293, label %300, label %294

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59
  %296 = icmp slt i64 %295, %290
  %297 = mul nsw i64 %290, %59
  %298 = select i1 %296, i64 9223372036854775807, i64 %297
  %299 = zext i1 %296 to i32
  br label %300

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292
  %304 = icmp slt i64 %301, %124
  br i1 %304, label %311, label %305

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59
  %307 = icmp slt i64 %306, %301
  %308 = mul nsw i64 %301, %59
  %309 = select i1 %307, i64 9223372036854775807, i64 %308
  %310 = zext i1 %307 to i32
  br label %311

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303
  %315 = icmp slt i64 %312, %124
  br i1 %315, label %322, label %316

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59
  %318 = icmp slt i64 %317, %312
  %319 = mul nsw i64 %312, %59
  %320 = select i1 %318, i64 9223372036854775807, i64 %319
  %321 = zext i1 %318 to i32
  br label %322

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314
  br label %184

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59
  %328 = icmp slt i64 %327, %146
  %329 = mul nsw i64 %146, %59
  %330 = select i1 %328, i64 9223372036854775807, i64 %329
  %331 = zext i1 %328 to i32
  br label %332

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147
  %336 = icmp slt i64 %333, %137
  br i1 %336, label %343, label %337

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59
  %339 = icmp slt i64 %338, %333
  %340 = mul nsw i64 %333, %59
  %341 = select i1 %339, i64 9223372036854775807, i64 %340
  %342 = zext i1 %339 to i32
  br label %343

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335
  %347 = icmp slt i64 %344, %137
  br i1 %347, label %354, label %348

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59
  %350 = icmp slt i64 %349, %344
  %351 = mul nsw i64 %344, %59
  %352 = select i1 %350, i64 9223372036854775807, i64 %351
  %353 = zext i1 %350 to i32
  br label %354

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346
  br label %184

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59
  %360 = icmp slt i64 %359, %166
  %361 = mul nsw i64 %166, %59
  %362 = select i1 %360, i64 9223372036854775807, i64 %361
  %363 = zext i1 %360 to i32
  br label %364

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167
  %368 = icmp slt i64 %365, %157
  br i1 %368, label %375, label %369

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59
  %371 = icmp slt i64 %370, %365
  %372 = mul nsw i64 %365, %59
  %373 = select i1 %371, i64 9223372036854775807, i64 %372
  %374 = zext i1 %371 to i32
  br label %375

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367
  %379 = icmp slt i64 %376, %157
  br i1 %379, label %386, label %380

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59
  %382 = icmp slt i64 %381, %376
  %383 = mul nsw i64 %376, %59
  %384 = select i1 %382, i64 9223372036854775807, i64 %383
  %385 = zext i1 %382 to i32
  br label %386

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378
  %390 = icmp slt i64 %387, %157
  br i1 %390, label %397, label %391

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59
  %393 = icmp slt i64 %392, %387
  %394 = mul nsw i64 %387, %59
  %395 = select i1 %393, i64 9223372036854775807, i64 %394
  %396 = zext i1 %393 to i32
  br label %397

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389
  %401 = icmp slt i64 %398, %157
  br i1 %401, label %408, label %402

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59
  %404 = icmp slt i64 %403, %398
  %405 = mul nsw i64 %398, %59
  %406 = select i1 %404, i64 9223372036854775807, i64 %405
  %407 = zext i1 %404 to i32
  br label %408

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400
  %412 = icmp slt i64 %409, %157
  br i1 %412, label %419, label %413

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59
  %415 = icmp slt i64 %414, %409
  %416 = mul nsw i64 %409, %59
  %417 = select i1 %415, i64 9223372036854775807, i64 %416
  %418 = zext i1 %415 to i32
  br label %419

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411
  %423 = icmp slt i64 %420, %157
  br i1 %423, label %430, label %424

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59
  %426 = icmp slt i64 %425, %420
  %427 = mul nsw i64 %420, %59
  %428 = select i1 %426, i64 9223372036854775807, i64 %427
  %429 = zext i1 %426 to i32
  br label %430

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422
  br label %184

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59
  %436 = icmp slt i64 %435, %179
  %437 = mul nsw i64 %179, %59
  %438 = select i1 %436, i64 9223372036854775807, i64 %437
  %439 = zext i1 %436 to i32
  br label %440

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180
  %444 = icmp slt i64 %441, %170
  br i1 %444, label %451, label %445

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59
  %447 = icmp slt i64 %446, %441
  %448 = mul nsw i64 %441, %59
  %449 = select i1 %447, i64 9223372036854775807, i64 %448
  %450 = zext i1 %447 to i32
  br label %451

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443
  %455 = icmp slt i64 %452, %170
  br i1 %455, label %462, label %456

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59
  %458 = icmp slt i64 %457, %452
  %459 = mul nsw i64 %452, %59
  %460 = select i1 %458, i64 9223372036854775807, i64 %459
  %461 = zext i1 %458 to i32
  br label %462

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454
  %466 = icmp slt i64 %463, %170
  br i1 %466, label %473, label %467

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59
  %469 = icmp slt i64 %468, %463
  %470 = mul nsw i64 %463, %59
  %471 = select i1 %469, i64 9223372036854775807, i64 %470
  %472 = zext i1 %469 to i32
  br label %473

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465
  %477 = icmp slt i64 %474, %170
  br i1 %477, label %484, label %478

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59
  %480 = icmp slt i64 %479, %474
  %481 = mul nsw i64 %474, %59
  %482 = select i1 %480, i64 9223372036854775807, i64 %481
  %483 = zext i1 %480 to i32
  br label %484

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476
  %488 = icmp slt i64 %485, %170
  br i1 %488, label %495, label %489

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59
  %491 = icmp slt i64 %490, %485
  %492 = mul nsw i64 %485, %59
  %493 = select i1 %491, i64 9223372036854775807, i64 %492
  %494 = zext i1 %491 to i32
  br label %495

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487
  br label %184
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xstrtol_fatal(i32, i32, i8 signext, %struct.option* nocapture readonly, i8*) local_unnamed_addr #6 {
  %6 = alloca [2 x i8], align 1
  %7 = load volatile i32, i32* @exit_failure, align 4
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 2, i8* nonnull %8) #10
  %9 = add i32 %0, -1
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %5
  tail call void @abort() #15
  unreachable

; <label>:12:                                     ; preds = %5
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp slt i32 %1, 0
  %17 = sext i32 %1 to i64
  br i1 %16, label %18, label %22

; <label>:18:                                     ; preds = %12
  %19 = sub nsw i64 0, %17
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.189, i64 0, i64 %19
  store i8 %2, i8* %8, align 1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %21, align 1
  br label %25

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %17, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %25

; <label>:25:                                     ; preds = %18, %22
  %26 = phi i8* [ %20, %18 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.189, i64 0, i64 0), %22 ]
  %27 = phi i8* [ %8, %18 ], [ %24, %22 ]
  %28 = tail call i8* @dcgettext(i8* null, i8* %15, i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 %7, i32 0, i8* %28, i8* %26, i8* %27, i8* %4) #10
  call void @llvm.lifetime.end(i64 2, i8* nonnull %8) #10
  call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #0 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.195, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.196, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15
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
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10
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
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10
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
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10
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
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #10
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10
  ret i32 %266
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #0 {
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
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #0 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10
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
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10
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
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10
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
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #10
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
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #0 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
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
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0)
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #0 {
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
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10
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
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.tm_zone* @tzalloc(i8* readonly) local_unnamed_addr #0 {
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
  %12 = tail call noalias i8* @malloc(i64 %11) #10
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* nonnull %0, i64 %7, i32 1, i1 false) #10
  %21 = getelementptr inbounds i8, i8* %19, i64 %7
  store i8 0, i8* %21, align 1
  br label %22

; <label>:22:                                     ; preds = %6, %15, %20
  ret %struct.tm_zone* %13
}

; Function Attrs: nounwind sspstrong uwtable
define void @tzfree(%struct.tm_zone*) local_unnamed_addr #0 {
  %2 = icmp ult %struct.tm_zone* %0, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %2, label %11, label %3

; <label>:3:                                      ; preds = %1
  br label %4

; <label>:4:                                      ; preds = %3, %4
  %5 = phi %struct.tm_zone* [ %7, %4 ], [ %0, %3 ]
  %6 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %5, i64 0, i32 0
  %7 = load %struct.tm_zone*, %struct.tm_zone** %6, align 8
  %8 = bitcast %struct.tm_zone* %5 to i8*
  tail call void @free(i8* %8) #10
  %9 = icmp eq %struct.tm_zone* %7, null
  br i1 %9, label %10, label %4

; <label>:10:                                     ; preds = %4
  br label %11

; <label>:11:                                     ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.tm* @localtime_rz(%struct.tm_zone*, i64* nonnull, %struct.tm* nonnull) local_unnamed_addr #0 {
  %4 = icmp eq %struct.tm_zone* %0, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct.tm* @gmtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #10
  br label %54

; <label>:7:                                      ; preds = %3
  %8 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %9 = icmp eq %struct.tm_zone* %8, null
  br i1 %9, label %54, label %10

; <label>:10:                                     ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #10
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
  %27 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i64 0, i64 0), i8* nonnull %26, i32 1) #10
  br label %30

; <label>:28:                                     ; preds = %19
  %29 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i64 0, i64 0)) #10
  br label %30

; <label>:30:                                     ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  tail call void @tzset() #10
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
  tail call void @free(i8* %45) #10
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
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.tm_zone* @set_tz(%struct.tm_zone*) unnamed_addr #0 {
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i64 0, i64 0)) #10
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %3, label %12, label %7

; <label>:7:                                      ; preds = %1
  br i1 %6, label %13, label %8

; <label>:8:                                      ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %10 = tail call i32 @strcmp(i8* %9, i8* nonnull %2) #10
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
  %23 = tail call noalias i8* @malloc(i64 %22) #10
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* nonnull %2, i64 %18, i32 1, i1 false) #10
  %32 = getelementptr inbounds i8, i8* %30, i64 %18
  store i8 0, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %31, %26
  br i1 %6, label %37, label %34

; <label>:34:                                     ; preds = %33
  %35 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %36 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i64 0, i64 0), i8* nonnull %35, i32 1) #10
  br label %39

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i64 0, i64 0)) #10
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  tail call void @tzset() #10
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
  tail call void @free(i8* %52) #10
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
declare %struct.tm* @localtime_r(i64*, %struct.tm*) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @save_abbr(%struct.tm_zone*, %struct.tm*) unnamed_addr #0 {
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
  %25 = tail call i32 @strcmp(i8* %24, i8* nonnull %4) #10
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %36, i8* nonnull %4, i64 %38, i32 1, i1 false) #10
  %45 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %45, align 1
  br label %75

; <label>:46:                                     ; preds = %35
  %47 = icmp ult i64 %38, 119
  %48 = add i64 %37, 18
  %49 = and i64 %48, -8
  %50 = select i1 %47, i64 128, i64 %49
  %51 = tail call noalias i8* @malloc(i64 %50) #10
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

; <label>:53:                                     ; preds = %46
  %54 = bitcast i8* %51 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %54, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 8
  store i8 1, i8* %55, align 8
  %56 = getelementptr inbounds i8, i8* %51, i64 9
  store i8 0, i8* %56, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* nonnull %4, i64 %38, i32 1, i1 false) #10
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
  %76 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.214, i64 0, i64 0), %13 ], [ %56, %53 ], [ %36, %44 ], [ %24, %74 ]
  store i8* %76, i8** %3, align 8
  br label %77

; <label>:77:                                     ; preds = %59, %9, %2, %75
  %78 = phi i1 [ true, %75 ], [ true, %2 ], [ true, %9 ], [ false, %59 ]
  ret i1 %78
}

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @tzset() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @mktime_z(%struct.tm_zone*, %struct.tm* nonnull) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  %5 = icmp eq %struct.tm_zone* %0, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @timegm(%struct.tm* nonnull %1) #10
  br label %106

; <label>:8:                                      ; preds = %2
  %9 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %10 = icmp eq %struct.tm_zone* %9, null
  br i1 %10, label %106, label %11

; <label>:11:                                     ; preds = %8
  %12 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #10
  %13 = tail call i64 @rpl_mktime(%struct.tm* nonnull %1) #10
  store i64 %13, i64* %3, align 8
  %14 = bitcast %struct.tm* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #10
  %15 = icmp eq i64 %13, -1
  br i1 %15, label %16, label %68

; <label>:16:                                     ; preds = %11
  %17 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %4) #10
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
  %81 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i64 0, i64 0), i8* nonnull %80, i32 1) #10
  br label %84

; <label>:82:                                     ; preds = %73
  %83 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i64 0, i64 0)) #10
  br label %84

; <label>:84:                                     ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %84
  call void @tzset() #10
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
  call void @free(i8* %99) #10
  %100 = icmp eq %struct.tm_zone* %98, null
  br i1 %100, label %101, label %95

; <label>:101:                                    ; preds = %95
  br label %102

; <label>:102:                                    ; preds = %101, %90
  store i32 %92, i32* %74, align 4
  br i1 %91, label %104, label %103

; <label>:103:                                    ; preds = %102
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10
  br label %106

; <label>:104:                                    ; preds = %71, %102
  %105 = load i64, i64* %3, align 8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10
  br label %106

; <label>:106:                                    ; preds = %8, %103, %104, %6
  %107 = phi i64 [ %7, %6 ], [ %105, %104 ], [ -1, %103 ], [ -1, %8 ]
  ret i64 %107
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #0 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10
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
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #0 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #10
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.221, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.222, i64 0, i64 0)) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.223, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  %29 = tail call noalias i8* @malloc(i64 %28) #10
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.224, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.224, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.225, i64 0, i64 0)) #10
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
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
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
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
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.226, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10
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
  %90 = call noalias i8* @malloc(i64 %89) #10
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #10
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #10
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.221, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.221, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.221, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #10
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.221, i64 0, i64 0), %24 ]
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
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.227, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #3

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @mktime_internal(%struct.tm* nocapture, %struct.tm* (i64*, %struct.tm*)* nocapture, i64* nocapture) local_unnamed_addr #0 {
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %16) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #10
  store i64 %103, i64* %9, align 8
  %108 = call %struct.tm* %1(i64* nonnull %9, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %97) #10
  store i64 %121, i64* %7, align 8
  %124 = call %struct.tm* %1(i64* nonnull %7, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %97) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %98) #10
  store i64 %127, i64* %8, align 8
  %141 = call %struct.tm* %1(i64* nonnull %8, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %98) #10
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #10
  store i64 %254, i64* %6, align 8
  %255 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #10
  store i64 %268, i64* %4, align 8
  %271 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #10
  store i64 %274, i64* %5, align 8
  %288 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %364) #10
  store i64 %363, i64* %12, align 8
  %365 = call %struct.tm* %1(i64* nonnull %12, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %364) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %377) #10
  store i64 %379, i64* %10, align 8
  %382 = call %struct.tm* %1(i64* nonnull %10, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %377) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %399) #10
  store i64 %385, i64* %11, align 8
  %400 = call %struct.tm* %1(i64* nonnull %11, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %399) #10
  br label %402

; <label>:401:                                    ; preds = %289
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #10
  br label %438

; <label>:402:                                    ; preds = %362, %369, %395, %398
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %429) #10
  store i64 %428, i64* %13, align 8
  %430 = call %struct.tm* %1(i64* nonnull %13, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %429) #10
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %16) #10
  ret i64 %437

; <label>:438:                                    ; preds = %401, %249
  %439 = sub nuw nsw i64 9223372036854775807, %250
  %440 = icmp slt i64 %439, %103
  br i1 %440, label %485, label %441

; <label>:441:                                    ; preds = %438
  %442 = add i64 %250, %103
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #10
  store i64 %442, i64* %6, align 8
  %443 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #10
  store i64 %456, i64* %4, align 8
  %459 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #10
  store i64 %462, i64* %5, align 8
  %476 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #10
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #10
  br label %485

; <label>:485:                                    ; preds = %484, %438
  %486 = add nuw nsw i64 %250, 601200
  %487 = icmp slt i64 %486, 268828200
  br i1 %487, label %249, label %403
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mktime(%struct.tm* nocapture nonnull) local_unnamed_addr #0 {
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
  tail call void @tzset() #10
  %14 = bitcast %struct.tm* %12 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %94) #10
  store i64 %101, i64* %7, align 8
  %106 = call %struct.tm* @localtime_r(i64* nonnull %7, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %94) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %95) #10
  store i64 %119, i64* %5, align 8
  %122 = call %struct.tm* @localtime_r(i64* nonnull %5, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %95) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #10
  store i64 %125, i64* %6, align 8
  %139 = call %struct.tm* @localtime_r(i64* nonnull %6, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #10
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #10
  store i64 %252, i64* %4, align 8
  %253 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #10
  store i64 %266, i64* %2, align 8
  %269 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #10
  store i64 %272, i64* %3, align 8
  %286 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %362) #10
  store i64 %361, i64* %10, align 8
  %363 = call %struct.tm* @localtime_r(i64* nonnull %10, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %362) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %375) #10
  store i64 %377, i64* %8, align 8
  %380 = call %struct.tm* @localtime_r(i64* nonnull %8, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %375) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %397) #10
  store i64 %383, i64* %9, align 8
  %398 = call %struct.tm* @localtime_r(i64* nonnull %9, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %397) #10
  br label %400

; <label>:399:                                    ; preds = %287
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #10
  br label %433

; <label>:400:                                    ; preds = %396, %393, %367, %360
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %427) #10
  store i64 %426, i64* %11, align 8
  %428 = call %struct.tm* @localtime_r(i64* nonnull %11, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %427) #10
  %429 = icmp eq %struct.tm* %428, null
  br i1 %429, label %484, label %430

; <label>:430:                                    ; preds = %425, %403
  %431 = phi i64 [ %404, %403 ], [ %426, %425 ]
  %432 = bitcast %struct.tm* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %432, i8* nonnull %14, i64 56, i32 8, i1 false) #10
  br label %484

; <label>:433:                                    ; preds = %399, %247
  %434 = sub nuw nsw i64 9223372036854775807, %248
  %435 = icmp slt i64 %434, %101
  br i1 %435, label %480, label %436

; <label>:436:                                    ; preds = %433
  %437 = add i64 %248, %101
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #10
  store i64 %437, i64* %4, align 8
  %438 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #10
  store i64 %451, i64* %2, align 8
  %454 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #10
  store i64 %457, i64* %3, align 8
  %471 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #10
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #10
  br label %480

; <label>:480:                                    ; preds = %479, %433
  %481 = add nuw nsw i64 %248, 601200
  %482 = icmp slt i64 %481, 268828200
  br i1 %482, label %247, label %401

; <label>:483:                                    ; preds = %226
  br label %484

; <label>:484:                                    ; preds = %483, %419, %422, %425, %430
  %485 = phi i64 [ %431, %430 ], [ -1, %425 ], [ -1, %422 ], [ -1, %419 ], [ -1, %483 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #10
  ret i64 %485
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold }
