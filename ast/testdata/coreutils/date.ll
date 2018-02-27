; ModuleID = 'coreutils-8.27/src/date.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.table = type { i8*, i32, i32 }
%union.YYSTYPE = type { %struct.relative_time }
%struct.relative_time = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.timespec = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.timezone = type { i32, i32 }
%struct.parser_control = type { i8*, i64, i32, i32, i64, i32, %struct.textint, i64, i64, i64, i64, %struct.timespec, %struct.relative_time, i8, i8, i64, i64, i64, i64, i64, i64, i64, i8, i64, i64, i64, i64, i64, i64, i64, i8, i64, [3 x %struct.table] }
%struct.textint = type { i8, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Usage: %s [OPTION]... [+FORMAT]\0A  or:  %s [-u|--utc|--universal] [MMDDhhmm[[CC]YY][.ss]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Display the current time in the given FORMAT, or set the system date.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.46 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"  -d, --date=STRING          display time described by STRING, not 'now'\0A\00", align 1
@.str.4 = private unnamed_addr constant [130 x i8] c"      --debug                annotate the parsed date,\0A                              and warn about questionable usage to stderr\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"  -f, --file=DATEFILE        like --date; once for each line of DATEFILE\0A\00", align 1
@.str.6 = private unnamed_addr constant [351 x i8] c"  -I[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format.\0A                               FMT='date' for date only (the default),\0A                               'hours', 'minutes', 'seconds', or 'ns'\0A                               for date and time to the indicated precision.\0A                               Example: 2006-08-14T02:34:56-06:00\0A\00", align 1
@.str.7 = private unnamed_addr constant [143 x i8] c"  -R, --rfc-email            output date and time in RFC 5322 format.\0A                               Example: Mon, 14 Aug 2006 02:34:56 -0600\0A\00", align 1
@.str.8 = private unnamed_addr constant [272 x i8] c"      --rfc-3339=FMT         output date/time in RFC 3339 format.\0A                               FMT='date', 'seconds', or 'ns'\0A                               for date and time to the indicated precision.\0A                               Example: 2006-08-14 02:34:56-06:00\0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"  -r, --reference=FILE       display the last modification time of FILE\0A\00", align 1
@.str.10 = private unnamed_addr constant [134 x i8] c"  -s, --set=STRING           set time described by STRING\0A  -u, --utc, --universal     print or set Coordinated Universal Time (UTC)\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [131 x i8] c"\0AFORMAT controls the output.  Interpreted sequences are:\0A\0A  %%   a literal %\0A  %a   locale's abbreviated weekday name (e.g., Sun)\0A\00", align 1
@.str.14 = private unnamed_addr constant [212 x i8] c"  %A   locale's full weekday name (e.g., Sunday)\0A  %b   locale's abbreviated month name (e.g., Jan)\0A  %B   locale's full month name (e.g., January)\0A  %c   locale's date and time (e.g., Thu Mar  3 23:05:25 2005)\0A\00", align 1
@.str.15 = private unnamed_addr constant [173 x i8] c"  %C   century; like %Y, except omit last two digits (e.g., 20)\0A  %d   day of month (e.g., 01)\0A  %D   date; same as %m/%d/%y\0A  %e   day of month, space padded; same as %_d\0A\00", align 1
@.str.16 = private unnamed_addr constant [165 x i8] c"  %F   full date; same as %Y-%m-%d\0A  %g   last two digits of year of ISO week number (see %G)\0A  %G   year of ISO week number (see %V); normally useful only with %V\0A\00", align 1
@.str.17 = private unnamed_addr constant [91 x i8] c"  %h   same as %b\0A  %H   hour (00..23)\0A  %I   hour (01..12)\0A  %j   day of year (001..366)\0A\00", align 1
@.str.18 = private unnamed_addr constant [142 x i8] c"  %k   hour, space padded ( 0..23); same as %_H\0A  %l   hour, space padded ( 1..12); same as %_I\0A  %m   month (01..12)\0A  %M   minute (00..59)\0A\00", align 1
@.str.19 = private unnamed_addr constant [333 x i8] c"  %n   a newline\0A  %N   nanoseconds (000000000..999999999)\0A  %p   locale's equivalent of either AM or PM; blank if not known\0A  %P   like %p, but lower case\0A  %q   quarter of year (1..4)\0A  %r   locale's 12-hour clock time (e.g., 11:11:04 PM)\0A  %R   24-hour hour and minute; same as %H:%M\0A  %s   seconds since 1970-01-01 00:00:00 UTC\0A\00", align 1
@.str.20 = private unnamed_addr constant [106 x i8] c"  %S   second (00..60)\0A  %t   a tab\0A  %T   time; same as %H:%M:%S\0A  %u   day of week (1..7); 1 is Monday\0A\00", align 1
@.str.21 = private unnamed_addr constant [246 x i8] c"  %U   week number of year, with Sunday as first day of week (00..53)\0A  %V   ISO week number, with Monday as first day of week (01..53)\0A  %w   day of week (0..6); 0 is Sunday\0A  %W   week number of year, with Monday as first day of week (00..53)\0A\00", align 1
@.str.22 = private unnamed_addr constant [159 x i8] c"  %x   locale's date representation (e.g., 12/31/99)\0A  %X   locale's time representation (e.g., 23:13:48)\0A  %y   last two digits of year (00..99)\0A  %Y   year\0A\00", align 1
@.str.23 = private unnamed_addr constant [328 x i8] c"  %z   +hhmm numeric time zone (e.g., -0400)\0A  %:z  +hh:mm numeric time zone (e.g., -04:00)\0A  %::z  +hh:mm:ss numeric time zone (e.g., -04:00:00)\0A  %:::z  numeric time zone with : to necessary precision (e.g., -04, +05:30)\0A  %Z   alphabetic time zone abbreviation (e.g., EDT)\0A\0ABy default, date pads numeric fields with zeroes.\0A\00", align 1
@.str.24 = private unnamed_addr constant [210 x i8] c"The following optional flags may follow '%':\0A\0A  -  (hyphen) do not pad the field\0A  _  (underscore) pad with spaces\0A  0  (zero) pad with zeros\0A  ^  use upper case if possible\0A  #  use opposite case if possible\0A\00", align 1
@.str.25 = private unnamed_addr constant [240 x i8] c"\0AAfter any flags comes an optional field width, as a decimal number;\0Athen an optional modifier, which is either\0AE to use the locale's alternate representations if available, or\0AO to use the locale's alternate numeric symbols if available.\0A\00", align 1
@.str.26 = private unnamed_addr constant [334 x i8] c"\0AExamples:\0AConvert seconds since the epoch (1970-01-01 UTC) to a date\0A  $ date --date='@2147483647'\0A\0AShow the time on the west coast of the US (use tzselect(1) to find TZ)\0A  $ TZ='America/Los_Angeles' date\0A\0AShow the local time for 9AM next Friday on the west coast of the US\0A  $ date --date='TZ=\22America/Los_Angeles\22 09:00 next Fri'\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.58 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@short_options = internal constant [14 x i8] c"d:f:I::r:Rs:u\00", align 1
@long_options = internal constant [16 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 2, i32* null, i32 73 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@parse_datetime_flags = internal unnamed_addr global i32 0, align 4
@.str.31 = private unnamed_addr constant [11 x i8] c"--rfc-3339\00", align 1
@time_spec_string = internal constant [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* null], align 16
@time_spec = internal constant [5 x i32] [i32 3, i32 4, i32 0, i32 1, i32 2], align 16
@main.rfc_3339_format = internal constant [3 x [32 x i8]] [[32 x i8] c"%Y-%m-%d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"%Y-%m-%d %H:%M:%S%:z\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"%Y-%m-%d %H:%M:%S.%N%:z\00\00\00\00\00\00\00\00\00"], align 16
@.str.32 = private unnamed_addr constant [11 x i8] c"--iso-8601\00", align 1
@main.iso_8601_format = internal constant [5 x [32 x i8]] [[32 x i8] c"%Y-%m-%d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"%Y-%m-%dT%H:%M:%S%:z\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"%Y-%m-%dT%H:%M:%S,%N%:z\00\00\00\00\00\00\00\00\00", [32 x i8] c"%Y-%m-%dT%H%:z\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"%Y-%m-%dT%H:%M%:z\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@.str.33 = private unnamed_addr constant [8 x i8] c"TZ=UTC0\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@rfc_email_format = internal constant [25 x i8] c"%a, %d %b %Y %H:%M:%S %z\00", align 16
@.str.36 = private unnamed_addr constant [34 x i8] c"multiple output formats specified\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"the options to specify dates for printing are mutually exclusive\00", align 1
@.str.38 = private unnamed_addr constant [63 x i8] c"the options to print and set the time may not be used together\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.40 = private unnamed_addr constant [145 x i8] c"the argument %s lacks a leading '+';\0Awhen using an option to specify date(s), any non-option\0Aargument must be a format string beginning with '+'\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"%a %b %e %H:%M:%S %Z %Y\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.82 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"invalid date %s\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"cannot set date\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"time %s is out of range\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"hours\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"minutes\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"iso-8601\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"rfc-email\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"rfc-822\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"rfc-2822\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"rfc-3339\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"uct\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"utc\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"universal\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.50 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.51 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.52 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.53 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.54 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.82 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.88 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.89 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.90 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.91 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@yypact = internal unnamed_addr constant [114 x i8] c"&\1BM\A3.\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3>\A3R\FDB\03J\FCSTK\A3\A3\A3\A3\A3\A3\A3\A3\A3G\A3]\A3\A3\A3\A3\A3\A3NH\A3\A3\A3\A3\A3\A3\A3\A3\19\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\15\13OP\A3\A3\A3\A3\A3Q\A3\A3UV\A3\A3\A3\A3\A3\FAL\11\A3\A3\A3\A3WE\A3\A3XY\FF\A3\12\A3\A3E[", align 16
@.str.97 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@meridian_table = internal constant [5 x %struct.table] [%struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i32 270, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i32 270, i32 0 }, %struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i32 270, i32 1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i32 270, i32 1 }, %struct.table zeroinitializer], align 16
@.str.98 = private unnamed_addr constant [5 x i8] c"A.M.\00", align 1
@month_and_day_table = internal constant [25 x %struct.table] [%struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i32 271, i32 1 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102.127, i32 0, i32 0), i32 271, i32 2 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i32 271, i32 3 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i32 271, i32 4 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i32 271, i32 5 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 271, i32 6 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32 271, i32 7 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i32 271, i32 8 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), i32 271, i32 9 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i32 271, i32 9 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i32 271, i32 10 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i32 271, i32 11 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0), i32 271, i32 12 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i32 267, i32 0 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i32 267, i32 1 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i32 267, i32 2 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 267, i32 2 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0), i32 267, i32 3 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i32 267, i32 3 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), i32 267, i32 5 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), i32 267, i32 6 }, %struct.table zeroinitializer], align 16
@.str.101 = private unnamed_addr constant [8 x i8] c"JANUARY\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"YEAR\00", align 1
@time_units_table = internal constant [11 x %struct.table] [%struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.176, i32 0, i32 0), i32 260, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), i32 261, i32 1 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i32 0, i32 0), i32 265, i32 14 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i32 265, i32 7 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i32 265, i32 1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i32 0, i32 0), i32 262, i32 1 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0), i32 263, i32 1 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.183, i32 0, i32 0), i32 263, i32 1 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i32 0, i32 0), i32 264, i32 1 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i32 0, i32 0), i32 264, i32 1 }, %struct.table zeroinitializer], align 16
@.str.177 = private unnamed_addr constant [6 x i8] c"MONTH\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"TOMORROW\00", align 1
@relative_time_table = internal constant [21 x %struct.table] [%struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i32 266, i32 1 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i32 0, i32 0), i32 266, i32 -1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i32 0, i32 0), i32 266, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.189, i32 0, i32 0), i32 266, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.190, i32 0, i32 0), i32 272, i32 -1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.191, i32 0, i32 0), i32 272, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i32 0, i32 0), i32 272, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.193, i32 0, i32 0), i32 272, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i32 272, i32 3 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i32 0, i32 0), i32 272, i32 4 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.196, i32 0, i32 0), i32 272, i32 5 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i32 0, i32 0), i32 272, i32 6 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i32 272, i32 7 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.199, i32 0, i32 0), i32 272, i32 8 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i32 272, i32 9 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i32 272, i32 10 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i32 0, i32 0), i32 272, i32 11 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.203, i32 0, i32 0), i32 272, i32 12 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i32 0, i32 0), i32 258, i32 -1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.205, i32 0, i32 0), i32 258, i32 1 }, %struct.table zeroinitializer], align 16
@.str.187 = private unnamed_addr constant [10 x i8] c"YESTERDAY\00", align 1
@military_table = internal constant [26 x %struct.table] [%struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i32 0, i32 0), i32 273, i32 -60 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.207, i32 0, i32 0), i32 273, i32 -120 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i32 0, i32 0), i32 273, i32 -180 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i32 0, i32 0), i32 273, i32 -240 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.210, i32 0, i32 0), i32 273, i32 -300 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.211, i32 0, i32 0), i32 273, i32 -360 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.212, i32 0, i32 0), i32 273, i32 -420 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i32 273, i32 -480 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.214, i32 0, i32 0), i32 273, i32 -540 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.215, i32 0, i32 0), i32 273, i32 -600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.216, i32 0, i32 0), i32 273, i32 -660 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i32 0, i32 0), i32 273, i32 -720 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.218, i32 0, i32 0), i32 273, i32 60 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.219, i32 0, i32 0), i32 273, i32 120 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.220, i32 0, i32 0), i32 273, i32 180 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.221, i32 0, i32 0), i32 273, i32 240 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.222, i32 0, i32 0), i32 273, i32 300 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i32 0, i32 0), i32 273, i32 360 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i32 0, i32 0), i32 84, i32 0 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.225, i32 0, i32 0), i32 273, i32 480 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.226, i32 0, i32 0), i32 273, i32 540 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.227, i32 0, i32 0), i32 273, i32 600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.228, i32 0, i32 0), i32 273, i32 660 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.229, i32 0, i32 0), i32 273, i32 720 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0), i32 273, i32 0 }, %struct.table zeroinitializer], align 16
@.str.188 = private unnamed_addr constant [6 x i8] c"TODAY\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"NOW\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"LAST\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"THIS\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"NEXT\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"FIRST\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"THIRD\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"FOURTH\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"FIFTH\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"SIXTH\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"SEVENTH\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"EIGHTH\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"NINTH\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"TENTH\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"ELEVENTH\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"TWELFTH\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"AGO\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"HENCE\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"FORTNIGHT\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"WEEK\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"DAY\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"HOUR\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"MINUTE\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"SECOND\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"SEC\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"P.M.\00", align 1
@switch.table = private unnamed_addr constant [26 x %struct.table*] [%struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 0), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 1), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 2), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 3), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 4), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 5), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 6), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 7), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 8), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 0), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 9), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 10), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 11), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 12), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 13), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 14), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 15), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 16), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 17), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 18), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 19), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 20), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 21), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 22), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 23), %struct.table* getelementptr inbounds ([26 x %struct.table], [26 x %struct.table]* @military_table, i64 0, i64 24)]
@.str.96 = private unnamed_addr constant [26 x i8] c"error: unknown word '%s'\0A\00", align 1
@dst_table = internal constant [1 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i32 0, i32 0), i32 259, i32 0 }], align 16
@yytranslate = internal unnamed_addr constant [278 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1A\02\02\1B\02\02\02\02\02\02\02\02\02\02\19\02\02\02\02\02\17\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\18\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16", align 16
@yycheck = internal unnamed_addr constant [113 x i8] c"\1B\05\06\07\08\09\0A\04\0C\0Ff\0F\10\13\0F\13\13\14\13\19p\19\13\1B\05\06\07\08\09\0A\05\06\07\08\09\0A\13\13\13k\13\14\19\19\19q\13\14\15\16\19\05\06\07\08\09\0A\0B\0C\0D\0E\17\10\11\12\13\14\15\16`\18\05\06\07\08\09\0A\00\0C\05\06\07\08\09\0A\19\04\1B\1A\14\1E\16\09\09\13\18\03\13\1A\14\14\14;\1BT\14\14\FF\14\14\13\FF\19", align 16
@yytable = internal unnamed_addr constant [113 x i8] c"OCDEFGH:IdkJKenL12efqM;N=>?@AB=>?@ABee\5CoZ[jpXo\05\06\07\08X\0D\0E\0F\10\11\12\13\14\15\16\01\17\18\19\1A\1B\1C\1DO\1E345678\0C9=>?@AB<0P/\06S\08QR\1ATUVW^_`Yiabc\00lme\00X", align 16
@yyparse.yyval_default = internal unnamed_addr constant %union.YYSTYPE zeroinitializer, align 8
@yydefact = internal unnamed_addr constant [114 x i8] c"\05\00\00\02\03UWTV\04RS\018;ADI>Q%#\1C\00\00\1E\00X\00\00\1F\06\07\10\08\15\09\0A\0C\0B1\0D4J5\0E\0F&\1D\00-69?BE<'$Z KLNOPM7:@CF=(\12/Z\00\00\16YGH!\003,\00\00\22+02\1B\19)\00\11.[\13Z\00\17\1A\00\00\19*\19\14\18\00\19", align 16
@yyr2 = internal unnamed_addr constant [92 x i8] c"\00\02\01\01\02\00\02\01\01\01\01\01\01\01\01\01\01\03\02\04\06\01\02\04\06\00\01\02\01\02\01\01\02\02\03\01\02\01\02\02\02\03\05\03\03\02\04\02\03\01\03\02\01\01\02\02\01\02\02\01\02\02\01\02\02\01\02\02\01\02\02\02\02\01\01\02\02\02\02\02\02\01\01\01\01\01\01\01\01\02\00\02", align 16
@.str.102 = private unnamed_addr constant [18 x i8] c"number of seconds\00", align 1
@.str.1.103 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.2.104 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.3.105 = private unnamed_addr constant [11 x i8] c"local_zone\00", align 1
@.str.4.106 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.5.107 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.6.108 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.7.109 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.8.110 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.9.111 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.10.112 = private unnamed_addr constant [56 x i8] c"warning: value %ld has %lu digits. Assuming YYYY/MM/DD\0A\00", align 1
@.str.11.113 = private unnamed_addr constant [66 x i8] c"warning: value %ld has less than 4 digits. Assuming MM/DD/YY[YY]\0A\00", align 1
@yyr1 = internal unnamed_addr constant [92 x i8] c"\00\1C\1D\1D\1E\1F\1F         !\22####$$$%%&''((((((())))*********+,,,---------------------....../0011223455", align 16
@yypgoto = internal unnamed_addr constant [26 x i8] c"\A3\A3\A3\A3\A3\A3\A3\A3\14\BC\E5\A3\A3\A3\A3\A3\A3\A3<\A3\A3\A3\A4\A3\A3+", align 16
@yydefgoto = internal unnamed_addr constant [26 x i8] c"\FF\02\03\04\1F !\22#gh$%&'()*+,\09\0A\0B-.]", align 16
@.str.74.114 = private unnamed_addr constant [17 x i8] c"parsed %s part: \00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"today/this/now\0A\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"%+ld %s\00", align 1
@.str.87.115 = private unnamed_addr constant [8 x i8] c"year(s)\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"month(s)\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"day(s)\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"hour(s)\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"minutes\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"nanoseconds\00", align 1
@.str.75.116 = private unnamed_addr constant [26 x i8] c"(Y-M-D) %04ld-%02ld-%02ld\00", align 1
@.str.76.117 = private unnamed_addr constant [12 x i8] c"year: %04ld\00", align 1
@.str.77.118 = private unnamed_addr constant [18 x i8] c"%02ld:%02ld:%02ld\00", align 1
@.str.78.119 = private unnamed_addr constant [6 x i8] c"%09ld\00", align 1
@.str.38.120 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.79.121 = private unnamed_addr constant [31 x i8] c"%s (day ordinal=%ld number=%d)\00", align 1
@.str.80.122 = private unnamed_addr constant [14 x i8] c"DST unchanged\00", align 1
@.str.81.123 = private unnamed_addr constant [13 x i8] c"DST changed:\00", align 1
@.str.82.124 = private unnamed_addr constant [10 x i8] c"is-dst=%d\00", align 1
@.str.83.125 = private unnamed_addr constant [14 x i8] c"TZ=%+03d:%02d\00", align 1
@.str.84.126 = private unnamed_addr constant [23 x i8] c"number of seconds: %ld\00", align 1
@str_days.ordinal_values = internal unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.260, i32 0, i32 0)], align 16
@.str.268 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.269 = private unnamed_addr constant [2 x i8] c" \00", align 1
@str_days.days_values = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.267, i32 0, i32 0)], align 16
@.str.261 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.262 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.263 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.264 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.265 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.249 = private unnamed_addr constant [11 x i8] c"next/first\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"(SECOND)\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"fourth\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"fifth\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"sixth\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c"seventh\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.257 = private unnamed_addr constant [6 x i8] c"ninth\00", align 1
@.str.258 = private unnamed_addr constant [6 x i8] c"tenth\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"eleventh\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"twelfth\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"date: \00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.214 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.216 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.217 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.218 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.219 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.220 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.221 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.222 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.223 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.224 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.225 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.226 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.227 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.229 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@universal_time_zone_table = internal constant [4 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i32 273, i32 0 }, %struct.table zeroinitializer], align 16
@.str.125 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"UT\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"WET\00", align 1
@time_zone_table = internal constant [48 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i32 268, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i32 268, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i32 273, i32 -180 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i32 0, i32 0), i32 273, i32 -180 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i32 268, i32 -180 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i32 273, i32 -210 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i32 268, i32 -210 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0), i32 273, i32 -240 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0), i32 268, i32 -240 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i32 273, i32 -240 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0), i32 268, i32 -240 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), i32 273, i32 -300 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i32 268, i32 -300 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i32 0, i32 0), i32 273, i32 -360 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i32 0, i32 0), i32 268, i32 -360 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i32 273, i32 -420 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i32 268, i32 -420 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i32 0, i32 0), i32 273, i32 -480 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i32 0, i32 0), i32 268, i32 -480 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0), i32 273, i32 -540 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i32 268, i32 -540 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0), i32 273, i32 -600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i32 0, i32 0), i32 273, i32 -600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i32 268, i32 -600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0), i32 273, i32 -720 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i32 0, i32 0), i32 273, i32 60 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i32 0, i32 0), i32 273, i32 60 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), i32 268, i32 60 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.157, i32 0, i32 0), i32 273, i32 60 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i32 0, i32 0), i32 273, i32 60 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), i32 268, i32 60 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i32 268, i32 60 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161, i32 0, i32 0), i32 273, i32 120 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i32 0, i32 0), i32 268, i32 120 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163, i32 0, i32 0), i32 273, i32 120 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 273, i32 120 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0), i32 273, i32 180 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0), i32 273, i32 180 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), i32 268, i32 180 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.168, i32 0, i32 0), i32 273, i32 330 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i32 0, i32 0), i32 273, i32 480 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0), i32 273, i32 540 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i32 0, i32 0), i32 273, i32 540 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i32 0, i32 0), i32 273, i32 600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i32 0, i32 0), i32 273, i32 720 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i32 0, i32 0), i32 268, i32 720 }, %struct.table zeroinitializer], align 16
@.str.127 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"WEST\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"BST\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"ART\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"BRT\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"BRST\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"NST\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"NDT\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"AST\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"ADT\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"CLT\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"CLST\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"EST\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"EDT\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"CST\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"CDT\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"MST\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"MDT\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"PST\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"PDT\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"AKST\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"AKDT\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"HST\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"HAST\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"HADT\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"SST\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"WAT\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"CET\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"CEST\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"MET\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"MEZ\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"MEST\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"MESZ\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"EET\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"EEST\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"CAT\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"SAST\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"EAT\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"MSK\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"MSD\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"IST\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"SGT\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"KST\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"JST\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"GST\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"NZST\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"NZDT\00", align 1
@.str.102.127 = private unnamed_addr constant [9 x i8] c"FEBRUARY\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"MARCH\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"APRIL\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"MAY\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"JUNE\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"JULY\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"AUGUST\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"SEPTEMBER\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"SEPT\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"OCTOBER\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"NOVEMBER\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"DECEMBER\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"SUNDAY\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"MONDAY\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"TUESDAY\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"TUES\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"WEDNESDAY\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"WEDNES\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"THURSDAY\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"THUR\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"THURS\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"FRIDAY\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"SATURDAY\00", align 1
@.str.18.128 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.19.131 = private unnamed_addr constant [5 x i8] c"TZ=\22\00", align 1
@.str.20.132 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.21.133 = private unnamed_addr constant [23 x i8] c"error: parsing failed\0A\00", align 1
@.str.22.134 = private unnamed_addr constant [40 x i8] c"error: parsing failed, stopped at '%s'\0A\00", align 1
@.str.23.135 = private unnamed_addr constant [26 x i8] c"'@timespec' - always UTC0\00", align 1
@.str.24.136 = private unnamed_addr constant [24 x i8] c"parsed date/time string\00", align 1
@.str.25.137 = private unnamed_addr constant [23 x i8] c"TZ=\22%s\22 in date string\00", align 1
@.str.26.138 = private unnamed_addr constant [5 x i8] c"UTC0\00", align 1
@.str.27.139 = private unnamed_addr constant [32 x i8] c"TZ=UTC0 environment value or -u\00", align 1
@.str.28.140 = private unnamed_addr constant [26 x i8] c"TZ=\22%s\22 environment value\00", align 1
@.str.29.141 = private unnamed_addr constant [15 x i8] c"system default\00", align 1
@.str.30.142 = private unnamed_addr constant [6 x i8] c", dst\00", align 1
@.str.31.143 = private unnamed_addr constant [42 x i8] c"input timezone: %+03d:%02d (set from %s)\0A\00", align 1
@.str.32.144 = private unnamed_addr constant [33 x i8] c"error: seen multiple time parts\0A\00", align 1
@.str.33.145 = private unnamed_addr constant [33 x i8] c"error: seen multiple date parts\0A\00", align 1
@.str.34.146 = private unnamed_addr constant [33 x i8] c"error: seen multiple days parts\0A\00", align 1
@.str.35.147 = private unnamed_addr constant [44 x i8] c"error: seen multiple daylight-saving parts\0A\00", align 1
@.str.36.148 = private unnamed_addr constant [38 x i8] c"error: seen multiple time-zone parts\0A\00", align 1
@.str.231 = private unnamed_addr constant [42 x i8] c"warning: adjusting year value %ld to %ld\0A\00", align 1
@.str.39.149 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37.150 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.40.151 = private unnamed_addr constant [27 x i8] c"error: invalid hour %ld%s\0A\00", align 1
@.str.41.152 = private unnamed_addr constant [39 x i8] c"using %s time as starting value: '%s'\0A\00", align 1
@.str.42.153 = private unnamed_addr constant [10 x i8] c"specified\00", align 1
@.str.43.154 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.232 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.44.155 = private unnamed_addr constant [52 x i8] c"warning: using midnight as starting time: 00:00:00\0A\00", align 1
@.str.46.156 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.45.157 = private unnamed_addr constant [14 x i8] c"XXX%s%ld:%02d\00", align 1
@.str.47.158 = private unnamed_addr constant [30 x i8] c"error: tzalloc (\22%s\22) failed\0A\00", align 1
@.str.48 = private unnamed_addr constant [79 x i8] c"error: day '%s' (day ordinal=%ld number=%d) resulted in an invalid date: '%s'\0A\00", align 1
@.str.270 = private unnamed_addr constant [26 x i8] c"(Y-M-D) %Y-%m-%d %H:%M:%S\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c" TZ=%+03d:%02d\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"new start date: '%s' is '%s'\0A\00", align 1
@.str.50.159 = private unnamed_addr constant [44 x i8] c"using current date as starting value: '%s'\0A\00", align 1
@.str.272 = private unnamed_addr constant [23 x i8] c"(Y-M-D) %04d-%02d-%02d\00", align 1
@.str.51 = private unnamed_addr constant [57 x i8] c"warning: day (%s) ignored when explicit dates are given\0A\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"starting date/time: '%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [97 x i8] c"warning: when adding relative months/years, it is recommended to specify the 15th of the months\0A\00", align 1
@.str.54 = private unnamed_addr constant [74 x i8] c"warning: when adding relative days, it is recommended to specify 12:00pm\0A\00", align 1
@.str.55.160 = private unnamed_addr constant [14 x i8] c"error: %s:%d\0A\00", align 1
@.str.56.161 = private unnamed_addr constant [17 x i8] c"parse-datetime.y\00", align 1
@.str.57.162 = private unnamed_addr constant [63 x i8] c"error: adding relative date resulted in an invalid date: '%s'\0A\00", align 1
@.str.58.163 = private unnamed_addr constant [61 x i8] c"after date adjustment (%+ld years, %+ld months, %+ld days),\0A\00", align 1
@.str.59.164 = private unnamed_addr constant [26 x i8] c"    new date/time = '%s'\0A\00", align 1
@.str.60.165 = private unnamed_addr constant [61 x i8] c"warning: daylight saving time changed after date adjustment\0A\00", align 1
@.str.61.166 = private unnamed_addr constant [59 x i8] c"warning: month/year adjustment resulted in shifted dates:\0A\00", align 1
@.str.62.167 = private unnamed_addr constant [37 x i8] c"     adjusted Y M D: %04d %02d %02d\0A\00", align 1
@.str.63.168 = private unnamed_addr constant [37 x i8] c"   normalized Y M D: %04d %02d %02d\0A\00", align 1
@.str.65.169 = private unnamed_addr constant [26 x i8] c"'%s' = %ld epoch-seconds\0A\00", align 1
@.str.67.170 = private unnamed_addr constant [74 x i8] c"after time adjustment (%+ld hours, %+ld minutes, %+ld seconds, %+ld ns),\0A\00", align 1
@.str.68.171 = private unnamed_addr constant [34 x i8] c"    new time = %ld epoch-seconds\0A\00", align 1
@.str.69.172 = private unnamed_addr constant [61 x i8] c"warning: daylight saving time changed after time adjustment\0A\00", align 1
@.str.70.173 = private unnamed_addr constant [43 x i8] c"output timezone: %+03d:%02d (set from %s)\0A\00", align 1
@.str.71.174 = private unnamed_addr constant [34 x i8] c"final: %ld.%09ld (epoch-seconds)\0A\00", align 1
@.str.72.175 = private unnamed_addr constant [18 x i8] c"final: %s (UTC0)\0A\00", align 1
@.str.73.176 = private unnamed_addr constant [43 x i8] c"final: %s (output timezone TZ=%+03d:%02d)\0A\00", align 1
@.str.233 = private unnamed_addr constant [33 x i8] c"error: invalid date/time value:\0A\00", align 1
@.str.234 = private unnamed_addr constant [30 x i8] c"    user provided time: '%s'\0A\00", align 1
@.str.235 = private unnamed_addr constant [30 x i8] c"       normalized time: '%s'\0A\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.238 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.236 = private unnamed_addr constant [57 x i8] c"                                 %4s %2s %2s %2s %2s %2s\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.240 = private unnamed_addr constant [24 x i8] c"     possible reasons:\0A\00", align 1
@.str.241 = private unnamed_addr constant [50 x i8] c"       non-existing due to daylight-saving time;\0A\00", align 1
@.str.242 = private unnamed_addr constant [39 x i8] c"       invalid day/month combination;\0A\00", align 1
@.str.243 = private unnamed_addr constant [33 x i8] c"       numeric values overflow;\0A\00", align 1
@.str.245 = private unnamed_addr constant [19 x i8] c"incorrect timezone\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"missing timezone\00", align 1
@.str.244 = private unnamed_addr constant [11 x i8] c"       %s\0A\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"59\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.278 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.279 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.280 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.282, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.283, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.284, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.285, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.286, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.287, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.288, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.289, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.290, i32 0, i32 0), i8* null], align 16
@.str.281 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.282 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.283 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.284 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.285 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.286 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.287 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.288 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.289 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.290 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.291 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.292 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.293 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.294 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.295 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.296 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.297 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.313 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.314 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.315 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.316 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.317 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.318 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.319 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.320 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.321 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.322 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.323 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.324 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.325 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.326 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.327 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.328 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.329 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.330 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.331 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.334 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.335 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.336 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.337 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.338 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.339 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.350 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.351 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__mon_yday = internal unnamed_addr constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@localtime_offset = internal global i64 0, align 8
@.str.370 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.371 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.378 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.381 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.382 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.383 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.384 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.385 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.386 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.387 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11
  br label %105

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 5) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.46, i64 0, i64 0), i32 5) #11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 5) #11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.4, i64 0, i64 0), i32 5) #11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([351 x i8], [351 x i8]* @.str.6, i64 0, i64 0), i32 5) #11
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.7, i64 0, i64 0), i32 5) #11
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([272 x i8], [272 x i8]* @.str.8, i64 0, i64 0), i32 5) #11
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i32 5) #11
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.10, i64 0, i64 0), i32 5) #11
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #11
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 5) #11
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #11
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 5) #11
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #11
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.13, i64 0, i64 0), i32 5) #11
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #11
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.14, i64 0, i64 0), i32 5) #11
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #11
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.15, i64 0, i64 0), i32 5) #11
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #11
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #11
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #11
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.18, i64 0, i64 0), i32 5) #11
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = tail call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64) #11
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([333 x i8], [333 x i8]* @.str.19, i64 0, i64 0), i32 5) #11
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #11
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.20, i64 0, i64 0), i32 5) #11
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = tail call i32 @fputs_unlocked(i8* %69, %struct._IO_FILE* %70) #11
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.21, i64 0, i64 0), i32 5) #11
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = tail call i32 @fputs_unlocked(i8* %72, %struct._IO_FILE* %73) #11
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.22, i64 0, i64 0), i32 5) #11
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %77 = tail call i32 @fputs_unlocked(i8* %75, %struct._IO_FILE* %76) #11
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.23, i64 0, i64 0), i32 5) #11
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %80 = tail call i32 @fputs_unlocked(i8* %78, %struct._IO_FILE* %79) #11
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.24, i64 0, i64 0), i32 5) #11
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = tail call i32 @fputs_unlocked(i8* %81, %struct._IO_FILE* %82) #11
  %84 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.25, i64 0, i64 0), i32 5) #11
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = tail call i32 @fputs_unlocked(i8* %84, %struct._IO_FILE* %85) #11
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([334 x i8], [334 x i8]* @.str.26, i64 0, i64 0), i32 5) #11
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = tail call i32 @fputs_unlocked(i8* %87, %struct._IO_FILE* %88) #11
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0), i32 5) #11
  %91 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i64 0, i64 0)) #11
  %92 = tail call i8* @setlocale(i32 5, i8* null) #11
  %93 = icmp eq i8* %92, null
  br i1 %93, label %100, label %94

; <label>:94:                                     ; preds = %8
  %95 = tail call i32 @strncmp(i8* nonnull %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i64 3) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

; <label>:97:                                     ; preds = %94
  %98 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.58, i64 0, i64 0), i32 5) #11
  %99 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #11
  br label %100

; <label>:100:                                    ; preds = %8, %94, %97
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.59, i64 0, i64 0), i32 5) #11
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #11
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i64 0, i64 0), i32 5) #11
  %104 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0)) #11
  br label %105

; <label>:105:                                    ; preds = %100, %3
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
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca <2 x i64>, align 16
  %7 = bitcast <2 x i64>* %6 to %struct.timespec*
  %8 = alloca %struct.stat, align 8
  %9 = bitcast <2 x i64>* %6 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %9) #11
  %10 = bitcast %struct.stat* %8 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %10) #11
  %11 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %11) #11
  %12 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0)) #11
  %13 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)) #11
  %14 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #11
  %15 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11
  br label %16

; <label>:16:                                     ; preds = %70, %2
  %17 = phi i8* [ null, %2 ], [ %71, %70 ]
  %18 = phi i8* [ null, %2 ], [ %72, %70 ]
  %19 = phi i8* [ null, %2 ], [ %73, %70 ]
  %20 = phi i8 [ 0, %2 ], [ %74, %70 ]
  %21 = phi i8* [ null, %2 ], [ %75, %70 ]
  %22 = phi i8* [ null, %2 ], [ %76, %70 ]
  %23 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([16 x %struct.option], [16 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11
  switch i32 %23, label %63 [
    i32 -1, label %79
    i32 100, label %24
    i32 129, label %26
    i32 102, label %29
    i32 128, label %31
    i32 73, label %39
    i32 114, label %51
    i32 82, label %67
    i32 115, label %53
    i32 117, label %55
    i32 -130, label %59
    i32 -131, label %60
  ]

; <label>:24:                                     ; preds = %16
  %25 = load i8*, i8** @optarg, align 8
  br label %70

; <label>:26:                                     ; preds = %16
  %27 = load i32, i32* @parse_datetime_flags, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* @parse_datetime_flags, align 4
  br label %70

; <label>:29:                                     ; preds = %16
  %30 = load i8*, i8** @optarg, align 8
  br label %70

; <label>:31:                                     ; preds = %16
  %32 = load i8*, i8** @optarg, align 8
  %33 = load void ()*, void ()** @argmatch_die, align 8
  %34 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* %32, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @time_spec_string, i64 0, i64 2), i8* bitcast (i32* getelementptr inbounds ([5 x i32], [5 x i32]* @time_spec, i64 0, i64 2) to i8*), i64 4, void ()* %33) #11
  %35 = getelementptr inbounds i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @time_spec, i64 0, i64 2), i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @main.rfc_3339_format, i64 0, i64 %37, i64 0
  br label %64

; <label>:39:                                     ; preds = %16
  %40 = load i8*, i8** @optarg, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %47, label %42

; <label>:42:                                     ; preds = %39
  %43 = load void ()*, void ()** @argmatch_die, align 8
  %44 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* nonnull %40, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @time_spec_string, i64 0, i64 0), i8* bitcast ([5 x i32]* @time_spec to i8*), i64 4, void ()* %43) #11
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* @time_spec, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  br label %47

; <label>:47:                                     ; preds = %39, %42
  %48 = phi i32 [ %46, %42 ], [ 0, %39 ]
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [5 x [32 x i8]], [5 x [32 x i8]]* @main.iso_8601_format, i64 0, i64 %49, i64 0
  br label %64

; <label>:51:                                     ; preds = %16
  %52 = load i8*, i8** @optarg, align 8
  br label %70

; <label>:53:                                     ; preds = %16
  %54 = load i8*, i8** @optarg, align 8
  br label %70

; <label>:55:                                     ; preds = %16
  %56 = tail call i32 @putenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

; <label>:58:                                     ; preds = %55
  tail call void @xalloc_die() #15
  unreachable

; <label>:59:                                     ; preds = %16
  tail call void @usage(i32 0) #16
  unreachable

; <label>:60:                                     ; preds = %16
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* null) #11
  tail call void @exit(i32 0) #15
  unreachable

; <label>:63:                                     ; preds = %16
  tail call void @usage(i32 1) #16
  unreachable

; <label>:64:                                     ; preds = %47, %31
  %65 = phi i8* [ %50, %47 ], [ %38, %31 ]
  %66 = icmp eq i8* %65, null
  br i1 %66, label %70, label %67

; <label>:67:                                     ; preds = %16, %64
  %68 = phi i8* [ %65, %64 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @rfc_email_format, i64 0, i64 0), %16 ]
  %69 = icmp eq i8* %19, null
  br i1 %69, label %70, label %77

; <label>:70:                                     ; preds = %67, %64, %55, %53, %51, %29, %26, %24
  %71 = phi i8* [ %17, %67 ], [ %17, %64 ], [ %17, %24 ], [ %17, %26 ], [ %17, %29 ], [ %52, %51 ], [ %17, %53 ], [ %17, %55 ]
  %72 = phi i8* [ %18, %67 ], [ %18, %64 ], [ %18, %24 ], [ %18, %26 ], [ %30, %29 ], [ %18, %51 ], [ %18, %53 ], [ %18, %55 ]
  %73 = phi i8* [ %68, %67 ], [ %19, %64 ], [ %19, %24 ], [ %19, %26 ], [ %19, %29 ], [ %19, %51 ], [ %19, %53 ], [ %19, %55 ]
  %74 = phi i8 [ %20, %67 ], [ %20, %64 ], [ %20, %24 ], [ %20, %26 ], [ %20, %29 ], [ %20, %51 ], [ 1, %53 ], [ %20, %55 ]
  %75 = phi i8* [ %21, %67 ], [ %21, %64 ], [ %21, %24 ], [ %21, %26 ], [ %21, %29 ], [ %21, %51 ], [ %54, %53 ], [ %21, %55 ]
  %76 = phi i8* [ %22, %67 ], [ %22, %64 ], [ %25, %24 ], [ %22, %26 ], [ %22, %29 ], [ %22, %51 ], [ %22, %53 ], [ %22, %55 ]
  br label %16

; <label>:77:                                     ; preds = %67
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %78) #11
  unreachable

; <label>:79:                                     ; preds = %16
  %80 = icmp ne i8* %22, null
  %81 = zext i1 %80 to i32
  %82 = icmp ne i8* %18, null
  %83 = zext i1 %82 to i32
  %84 = icmp ne i8* %17, null
  %85 = zext i1 %84 to i32
  %86 = add nuw nsw i32 %83, %85
  %87 = add nuw nsw i32 %86, %81
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %79
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.37, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %90) #11
  tail call void @usage(i32 1) #16
  unreachable

; <label>:91:                                     ; preds = %79
  %92 = icmp ne i8 %20, 0
  %93 = icmp ne i32 %87, 0
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %97

; <label>:95:                                     ; preds = %91
  %96 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.38, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %96) #11
  tail call void @usage(i32 1) #16
  unreachable

; <label>:97:                                     ; preds = %91
  %98 = load i32, i32* @optind, align 4
  %99 = icmp slt i32 %98, %0
  br i1 %99, label %100, label %132

; <label>:100:                                    ; preds = %97
  %101 = add nsw i32 %98, 1
  %102 = icmp slt i32 %101, %0
  br i1 %102, label %103, label %111

; <label>:103:                                    ; preds = %100
  %104 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i32 5) #11
  %105 = load i32, i32* @optind, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %1, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = tail call i8* @quote(i8* %109) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %104, i8* %110) #11
  tail call void @usage(i32 1) #16
  unreachable

; <label>:111:                                    ; preds = %100
  %112 = sext i32 %98 to i64
  %113 = getelementptr inbounds i8*, i8** %1, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp eq i8 %115, 43
  br i1 %116, label %117, label %123

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i8* %19, null
  br i1 %118, label %121, label %119

; <label>:119:                                    ; preds = %117
  %120 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %120) #11
  unreachable

; <label>:121:                                    ; preds = %117
  store i32 %101, i32* @optind, align 4
  %122 = getelementptr inbounds i8, i8* %114, i64 1
  br label %139

; <label>:123:                                    ; preds = %111
  %124 = or i1 %92, %93
  br i1 %124, label %125, label %132

; <label>:125:                                    ; preds = %123
  %126 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.40, i64 0, i64 0), i32 5) #11
  %127 = load i32, i32* @optind, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %1, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = tail call i8* @quote(i8* %130) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %126, i8* %131) #11
  tail call void @usage(i32 1) #16
  unreachable

; <label>:132:                                    ; preds = %123, %97
  %133 = icmp eq i8* %19, null
  br i1 %133, label %134, label %139

; <label>:134:                                    ; preds = %132
  %135 = tail call i8* @nl_langinfo(i32 131180) #11
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  %138 = select i1 %137, i8* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0)
  br label %139

; <label>:139:                                    ; preds = %121, %132, %134
  %140 = phi i8* [ %19, %132 ], [ %138, %134 ], [ %122, %121 ]
  %141 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #11
  %142 = tail call %struct.tm_zone* @tzalloc(i8* %141) #11
  br i1 %82, label %143, label %211

; <label>:143:                                    ; preds = %139
  %144 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %144) #11
  %145 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %145) #11
  %146 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %146) #11
  %147 = load i8, i8* %18, align 1
  %148 = icmp eq i8 %147, 45
  br i1 %148, label %149, label %156

; <label>:149:                                    ; preds = %143
  %150 = getelementptr inbounds i8, i8* %18, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %156

; <label>:153:                                    ; preds = %149
  %154 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i64 0, i64 0), i32 5) #11
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %163

; <label>:156:                                    ; preds = %149, %143
  %157 = tail call %struct._IO_FILE* @fopen(i8* nonnull %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #11
  %158 = icmp eq %struct._IO_FILE* %157, null
  br i1 %158, label %159, label %163

; <label>:159:                                    ; preds = %156
  %160 = tail call i32* @__errno_location() #1
  %161 = load i32, i32* %160, align 4
  %162 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %18) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* %162) #11
  unreachable

; <label>:163:                                    ; preds = %156, %153
  %164 = phi %struct._IO_FILE* [ %155, %153 ], [ %157, %156 ]
  %165 = phi i8* [ %154, %153 ], [ %18, %156 ]
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %166 = call i64 @__getdelim(i8** nonnull %3, i64* nonnull %4, i32 10, %struct._IO_FILE* %164) #11
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %199, label %168

; <label>:168:                                    ; preds = %163
  %169 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 0
  %170 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 1
  br label %171

; <label>:171:                                    ; preds = %194, %168
  %172 = phi i64 [ %166, %168 ], [ %196, %194 ]
  %173 = phi i8 [ 1, %168 ], [ %195, %194 ]
  %174 = load i8*, i8** %3, align 8
  %175 = load i32, i32* @parse_datetime_flags, align 4
  %176 = call zeroext i1 @parse_datetime2(%struct.timespec* nonnull %5, i8* %174, %struct.timespec* null, i32 %175, %struct.tm_zone* %142, i8* %141) #11
  br i1 %176, label %188, label %177

; <label>:177:                                    ; preds = %171
  %178 = load i8*, i8** %3, align 8
  %179 = add nsw i64 %172, -1
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = icmp eq i8 %181, 10
  br i1 %182, label %183, label %184

; <label>:183:                                    ; preds = %177
  store i8 0, i8* %180, align 1
  br label %184

; <label>:184:                                    ; preds = %183, %177
  %185 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i32 5) #11
  %186 = load i8*, i8** %3, align 8
  %187 = call i8* @quote(i8* %186) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %185, i8* %187) #11
  br label %194

; <label>:188:                                    ; preds = %171
  %189 = load i64, i64* %169, align 8
  %190 = load i64, i64* %170, align 8
  %191 = call fastcc zeroext i1 @show_date(i8* %140, i64 %189, i64 %190, %struct.tm_zone* %142) #11
  %192 = zext i1 %191 to i8
  %193 = and i8 %192, %173
  br label %194

; <label>:194:                                    ; preds = %188, %184
  %195 = phi i8 [ 0, %184 ], [ %193, %188 ]
  %196 = call i64 @__getdelim(i8** nonnull %3, i64* nonnull %4, i32 10, %struct._IO_FILE* %164) #11
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %171

; <label>:198:                                    ; preds = %194
  br label %199

; <label>:199:                                    ; preds = %198, %163
  %200 = phi i8 [ 1, %163 ], [ %195, %198 ]
  %201 = call i32 @rpl_fclose(%struct._IO_FILE* %164) #11
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %207

; <label>:203:                                    ; preds = %199
  %204 = tail call i32* @__errno_location() #1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %165) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* %206) #11
  unreachable

; <label>:207:                                    ; preds = %199
  %208 = load i8*, i8** %3, align 8
  call void @free(i8* %208) #11
  %209 = and i8 %200, 1
  call void @llvm.lifetime.end(i64 16, i8* nonnull %146) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %144) #11
  %210 = zext i8 %209 to i32
  br label %263

; <label>:211:                                    ; preds = %139
  %212 = or i1 %92, %93
  br i1 %212, label %217, label %213

; <label>:213:                                    ; preds = %211
  %214 = load i32, i32* @optind, align 4
  %215 = icmp slt i32 %214, %0
  br i1 %215, label %234, label %216

; <label>:216:                                    ; preds = %213
  call void @gettime(%struct.timespec* nonnull %7) #11
  br label %245

; <label>:217:                                    ; preds = %211
  br i1 %84, label %218, label %229

; <label>:218:                                    ; preds = %217
  %219 = call i32 @__xstat(i32 1, i8* nonnull %17, %struct.stat* nonnull %8) #11
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

; <label>:221:                                    ; preds = %218
  %222 = tail call i32* @__errno_location() #1
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %17) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %223, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* %224) #11
  unreachable

; <label>:225:                                    ; preds = %218
  %226 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 12, i32 0
  %227 = bitcast i64* %226 to <2 x i64>*
  %228 = load <2 x i64>, <2 x i64>* %227, align 8
  store <2 x i64> %228, <2 x i64>* %6, align 16
  br label %245

; <label>:229:                                    ; preds = %217
  %230 = icmp eq i8* %21, null
  %231 = select i1 %230, i8* %22, i8* %21
  %232 = load i32, i32* @parse_datetime_flags, align 4
  %233 = call zeroext i1 @parse_datetime2(%struct.timespec* nonnull %7, i8* %231, %struct.timespec* null, i32 %232, %struct.tm_zone* %142, i8* %141) #11
  br i1 %233, label %245, label %241

; <label>:234:                                    ; preds = %213
  %235 = sext i32 %214 to i64
  %236 = getelementptr inbounds i8*, i8** %1, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0
  %239 = call zeroext i1 @posixtime(i64* nonnull %238, i8* %237, i32 14) #11
  %240 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 1
  store i64 0, i64* %240, align 8
  br i1 %239, label %247, label %241

; <label>:241:                                    ; preds = %229, %234
  %242 = phi i8* [ %231, %229 ], [ %237, %234 ]
  %243 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i32 5) #11
  %244 = call i8* @quote(i8* %242) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %243, i8* %244) #11
  unreachable

; <label>:245:                                    ; preds = %216, %225, %229
  %246 = icmp eq i8 %20, 0
  br i1 %246, label %254, label %247

; <label>:247:                                    ; preds = %234, %245
  %248 = call i32 @settime(%struct.timespec* nonnull %7) #11
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %254, label %250

; <label>:250:                                    ; preds = %247
  %251 = tail call i32* @__errno_location() #1
  %252 = load i32, i32* %251, align 4
  %253 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %252, i8* %253) #11
  br label %254

; <label>:254:                                    ; preds = %247, %245, %250
  %255 = phi i32 [ 0, %250 ], [ 1, %247 ], [ 1, %245 ]
  %256 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0
  %257 = load i64, i64* %256, align 16
  %258 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = call fastcc zeroext i1 @show_date(i8* %140, i64 %257, i64 %259, %struct.tm_zone* %142)
  %261 = zext i1 %260 to i32
  %262 = and i32 %261, %255
  br label %263

; <label>:263:                                    ; preds = %254, %207
  %264 = phi i32 [ %210, %207 ], [ %262, %254 ]
  %265 = and i32 %264, 1
  %266 = xor i32 %265, 1
  call void @llvm.lifetime.end(i64 144, i8* nonnull %10) #11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %9) #11
  ret i32 %266
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @putenv(i8*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @show_date(i8*, i64, i64, %struct.tm_zone*) unnamed_addr #6 {
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca [21 x i8], align 16
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 0
  store i64 %1, i64* %8, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 1
  store i64 %2, i64* %9, align 8
  %10 = bitcast %struct.tm* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %10) #11
  %11 = call %struct.tm* @localtime_rz(%struct.tm_zone* %3, i64* nonnull %8, %struct.tm* nonnull %6) #11
  %12 = icmp eq %struct.tm* %11, null
  br i1 %12, label %38, label %13

; <label>:13:                                     ; preds = %4
  %14 = icmp eq i8* %0, getelementptr inbounds ([25 x i8], [25 x i8]* @rfc_email_format, i64 0, i64 0)
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %13
  %16 = call i8* @setlocale(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0)) #11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @fprintftime(%struct._IO_FILE* %17, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @rfc_email_format, i64 0, i64 0), %struct.tm* nonnull %6, %struct.tm_zone* %3, i32 %19) #11
  %21 = call i8* @setlocale(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0)) #11
  br label %27

; <label>:22:                                     ; preds = %13
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @fprintftime(%struct._IO_FILE* %23, i8* %0, %struct.tm* nonnull %6, %struct.tm_zone* %3, i32 %25) #11
  br label %27

; <label>:27:                                     ; preds = %22, %15
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %28, i64 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %28, i64 0, i32 6
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ult i8* %30, %32
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %27
  %35 = call i32 @__overflow(%struct._IO_FILE* nonnull %28, i32 10) #11
  br label %44

; <label>:36:                                     ; preds = %27
  %37 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %37, i8** %29, align 8
  store i8 10, i8* %30, align 1
  br label %44

; <label>:38:                                     ; preds = %4
  %39 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %39) #11
  %40 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i64 0, i64 0), i32 5) #11
  %41 = load i64, i64* %8, align 8
  %42 = call i8* @imaxtostr(i64 %41, i8* nonnull %39) #11
  %43 = call i8* @quote(i8* %42) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40, i8* %43) #11
  call void @llvm.lifetime.end(i64 21, i8* nonnull %39) #11
  br label %44

; <label>:44:                                     ; preds = %36, %34, %38
  %45 = phi i1 [ false, %38 ], [ true, %34 ], [ true, %36 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %10) #11
  ret i1 %45
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #11
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 {
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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.51, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #11
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.52, i64 0, i64 0), i32 5) #11
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #11
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
  %22 = tail call i8* @quote(i8* nonnull %11) #11
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.53, i64 0, i64 0), i8* %22) #11
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #11
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.54, i64 0, i64 0), i8* %26) #11
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
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #11
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
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.51, i64 0, i64 0)
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #11
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #11
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4)
  tail call void %5() #11
  br label %15

; <label>:15:                                     ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ]
  ret i64 %16
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 {
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i32 5) #11
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* %17, i8* %12) #11
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.82, i64 0, i64 0), i8* %12) #11
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #15
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11
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
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i64 @fprintftime(%struct._IO_FILE*, i8*, %struct.tm*, %struct.tm_zone*, i32) local_unnamed_addr #6 {
  %6 = tail call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, i1 zeroext false, %struct.tm_zone* %3, i32 %4)
  ret i64 %6
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal(%struct._IO_FILE*, i8*, %struct.tm*, i1 zeroext, %struct.tm_zone*, i32) unnamed_addr #6 {
  %7 = alloca [23 x i8], align 16
  %8 = alloca [5 x i8], align 1
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.tm, align 8
  %11 = zext i1 %3 to i8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 10
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  %17 = select i1 %16, i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.87, i64 0, i64 0)
  %18 = icmp sgt i32 %13, 12
  %19 = add nsw i32 %13, -12
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %20, i32 12, i32 %13
  %22 = select i1 %18, i32 %19, i32 %21
  %23 = load i8, i8* %1, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %1198, label %25

; <label>:25:                                     ; preds = %6
  %26 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 0
  %27 = icmp eq %struct._IO_FILE* %0, null
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 1
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5
  %35 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 23
  %36 = ptrtoint i8* %35 to i64
  %37 = icmp ne %struct._IO_FILE* %0, null
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 7
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0
  %43 = bitcast %struct.tm* %10 to i8*
  %44 = bitcast %struct.tm* %2 to i8*
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 6
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 9
  br label %48

; <label>:48:                                     ; preds = %25, %1188
  %49 = phi i8 [ %23, %25 ], [ %1194, %1188 ]
  %50 = phi i64 [ 0, %25 ], [ %1189, %1188 ]
  %51 = phi i8* [ %1, %25 ], [ %1193, %1188 ]
  %52 = phi i32 [ undef, %25 ], [ %1191, %1188 ]
  %53 = phi i32 [ undef, %25 ], [ %1192, %1188 ]
  call void @llvm.lifetime.start(i64 23, i8* nonnull %26) #11
  %54 = icmp eq i8 %49, 37
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %48
  br label %82

; <label>:56:                                     ; preds = %48
  %57 = icmp ugt i64 %50, -3
  br i1 %57, label %64, label %58

; <label>:58:                                     ; preds = %56
  br i1 %27, label %62, label %59

; <label>:59:                                     ; preds = %58
  %60 = sext i8 %49 to i32
  %61 = call i32 @fputc(i32 %60, %struct._IO_FILE* nonnull %0)
  br label %62

; <label>:62:                                     ; preds = %58, %59
  %63 = add i64 %50, 1
  br label %64

; <label>:64:                                     ; preds = %56, %62
  %65 = phi i32 [ 0, %62 ], [ 1, %56 ]
  %66 = phi i64 [ %63, %62 ], [ %50, %56 ]
  %67 = icmp eq i32 %65, 0
  %68 = select i1 %67, i32 4, i32 %65
  br label %1182

; <label>:69:                                     ; preds = %75, %77
  %70 = phi i32 [ %79, %77 ], [ %74, %75 ]
  %71 = phi i8* [ %80, %77 ], [ %72, %75 ]
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %87 [
    i32 95, label %75
    i32 45, label %75
    i32 48, label %75
    i32 94, label %76
    i32 35, label %81
  ]

; <label>:75:                                     ; preds = %69, %69, %69
  br label %69

; <label>:76:                                     ; preds = %69
  br label %77

; <label>:77:                                     ; preds = %76, %82
  %78 = phi i8 [ %84, %82 ], [ 1, %76 ]
  %79 = phi i32 [ %85, %82 ], [ %70, %76 ]
  %80 = phi i8* [ %86, %82 ], [ %72, %76 ]
  br label %69

; <label>:81:                                     ; preds = %69
  br label %82

; <label>:82:                                     ; preds = %55, %81
  %83 = phi i8 [ 1, %81 ], [ 0, %55 ]
  %84 = phi i8 [ %78, %81 ], [ %11, %55 ]
  %85 = phi i32 [ %70, %81 ], [ 0, %55 ]
  %86 = phi i8* [ %72, %81 ], [ %51, %55 ]
  br label %77

; <label>:87:                                     ; preds = %69
  %88 = add nsw i32 %74, -48
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %90, label %114

; <label>:90:                                     ; preds = %87
  br label %91

; <label>:91:                                     ; preds = %90, %106
  %92 = phi i8 [ %109, %106 ], [ %73, %90 ]
  %93 = phi i32 [ %107, %106 ], [ 0, %90 ]
  %94 = phi i8* [ %108, %106 ], [ %72, %90 ]
  %95 = icmp sgt i32 %93, 214748364
  br i1 %95, label %106, label %96

; <label>:96:                                     ; preds = %91
  %97 = icmp eq i32 %93, 214748364
  %98 = sext i8 %92 to i32
  %99 = add nsw i32 %98, -48
  %100 = icmp sgt i32 %99, 7
  %101 = and i1 %97, %100
  br i1 %101, label %106, label %102

; <label>:102:                                    ; preds = %96
  %103 = mul nsw i32 %93, 10
  %104 = add i32 %103, -48
  %105 = add i32 %104, %98
  br label %106

; <label>:106:                                    ; preds = %96, %91, %102
  %107 = phi i32 [ %105, %102 ], [ 2147483647, %91 ], [ 2147483647, %96 ]
  %108 = getelementptr inbounds i8, i8* %94, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %110, -48
  %112 = icmp ult i32 %111, 10
  br i1 %112, label %91, label %113

; <label>:113:                                    ; preds = %106
  br label %114

; <label>:114:                                    ; preds = %113, %87
  %115 = phi i8 [ %73, %87 ], [ %109, %113 ]
  %116 = phi i32 [ -1, %87 ], [ %107, %113 ]
  %117 = phi i8* [ %72, %87 ], [ %108, %113 ]
  %118 = sext i8 %115 to i32
  switch i32 %118, label %122 [
    i32 69, label %119
    i32 79, label %119
  ]

; <label>:119:                                    ; preds = %114, %114
  %120 = getelementptr inbounds i8, i8* %117, i64 1
  %121 = load i8, i8* %120, align 1
  br label %122

; <label>:122:                                    ; preds = %114, %119
  %123 = phi i8 [ %121, %119 ], [ %115, %114 ]
  %124 = phi i32 [ %118, %119 ], [ 0, %114 ]
  %125 = phi i8* [ %120, %119 ], [ %117, %114 ]
  %126 = sext i8 %123 to i32
  switch i32 %126, label %1104 [
    i32 37, label %128
    i32 97, label %168
    i32 65, label %173
    i32 98, label %178
    i32 104, label %178
    i32 66, label %182
    i32 99, label %187
    i32 67, label %327
    i32 120, label %341
    i32 68, label %343
    i32 100, label %345
    i32 101, label %349
    i32 70, label %679
    i32 72, label %681
    i32 73, label %685
    i32 107, label %687
    i32 108, label %691
    i32 106, label %693
    i32 77, label %700
    i32 109, label %704
    i32 78, label %711
    i32 110, label %744
    i32 80, label %780
    i32 112, label %781
    i32 113, label %786
    i32 82, label %189
    i32 114, label %227
    i32 83, label %791
    i32 115, label %795
    i32 88, label %814
    i32 84, label %816
    i32 116, label %817
    i32 117, label %853
    i32 85, label %858
    i32 86, label %866
    i32 103, label %866
    i32 71, label %866
    i32 87, label %946
    i32 119, label %956
    i32 89, label %960
    i32 121, label %967
    i32 90, label %978
    i32 58, label %127
    i32 122, label %1059
    i32 0, label %1101
  ]

; <label>:127:                                    ; preds = %122
  br label %1052

; <label>:128:                                    ; preds = %122
  %129 = icmp eq i32 %124, 0
  br i1 %129, label %130, label %1104

; <label>:130:                                    ; preds = %128
  %131 = icmp sgt i32 %116, 0
  %132 = select i1 %131, i32 %116, i32 0
  %133 = icmp ugt i32 %132, 1
  %134 = icmp ugt i32 %132, 1
  %135 = select i1 %134, i32 %132, i32 1
  %136 = zext i32 %135 to i64
  %137 = xor i64 %50, -1
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %1175

; <label>:139:                                    ; preds = %130
  br i1 %27, label %166, label %140

; <label>:140:                                    ; preds = %139
  br i1 %133, label %141, label %162

; <label>:141:                                    ; preds = %140
  %142 = sext i32 %116 to i64
  %143 = add nsw i64 %142, -1
  %144 = icmp eq i32 %70, 48
  %145 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %146

; <label>:146:                                    ; preds = %141
  br i1 %145, label %147, label %162

; <label>:147:                                    ; preds = %146
  br label %155

; <label>:148:                                    ; preds = %141
  br i1 %145, label %149, label %162

; <label>:149:                                    ; preds = %148
  br label %150

; <label>:150:                                    ; preds = %149, %150
  %151 = phi i64 [ %153, %150 ], [ 0, %149 ]
  %152 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %153 = add nuw i64 %151, 1
  %154 = icmp eq i64 %153, %143
  br i1 %154, label %160, label %150

; <label>:155:                                    ; preds = %147, %155
  %156 = phi i64 [ %158, %155 ], [ 0, %147 ]
  %157 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %158 = add nuw i64 %156, 1
  %159 = icmp eq i64 %158, %143
  br i1 %159, label %161, label %155

; <label>:160:                                    ; preds = %150
  br label %162

; <label>:161:                                    ; preds = %155
  br label %162

; <label>:162:                                    ; preds = %161, %160, %146, %148, %140
  %163 = load i8, i8* %125, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 @fputc(i32 %164, %struct._IO_FILE* %0)
  br label %166

; <label>:166:                                    ; preds = %162, %139
  %167 = add i64 %136, %50
  br label %1177

; <label>:168:                                    ; preds = %122
  %169 = icmp eq i32 %124, 0
  br i1 %169, label %170, label %1104

; <label>:170:                                    ; preds = %168
  %171 = icmp eq i8 %83, 0
  %172 = select i1 %171, i8 %78, i8 1
  br label %227

; <label>:173:                                    ; preds = %122
  %174 = icmp eq i32 %124, 0
  br i1 %174, label %175, label %1104

; <label>:175:                                    ; preds = %173
  %176 = icmp eq i8 %83, 0
  %177 = select i1 %176, i8 %78, i8 1
  br label %227

; <label>:178:                                    ; preds = %122, %122
  %179 = icmp eq i8 %83, 0
  %180 = select i1 %179, i8 %78, i8 1
  %181 = icmp eq i32 %124, 0
  br i1 %181, label %227, label %1104

; <label>:182:                                    ; preds = %122
  %183 = icmp eq i32 %124, 0
  br i1 %183, label %184, label %1104

; <label>:184:                                    ; preds = %182
  %185 = icmp eq i8 %83, 0
  %186 = select i1 %185, i8 %78, i8 1
  br label %227

; <label>:187:                                    ; preds = %122
  %188 = icmp eq i32 %124, 79
  br i1 %188, label %1104, label %227

; <label>:189:                                    ; preds = %122, %679, %343, %816
  %190 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.88, i64 0, i64 0), %816 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.89, i64 0, i64 0), %343 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.90, i64 0, i64 0), %679 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.91, i64 0, i64 0), %122 ]
  %191 = icmp ne i8 %78, 0
  %192 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* null, i8* nonnull %190, %struct.tm* %2, i1 zeroext %191, %struct.tm_zone* %4, i32 %5)
  %193 = icmp sgt i32 %116, 0
  %194 = select i1 %193, i32 %116, i32 0
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %192, %195
  %197 = select i1 %196, i64 %195, i64 %192
  %198 = xor i64 %50, -1
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %1175

; <label>:200:                                    ; preds = %189
  br i1 %27, label %225, label %201

; <label>:201:                                    ; preds = %200
  br i1 %196, label %202, label %223

; <label>:202:                                    ; preds = %201
  %203 = sext i32 %116 to i64
  %204 = sub i64 %203, %192
  %205 = icmp eq i32 %70, 48
  %206 = icmp ne i64 %204, 0
  br i1 %205, label %209, label %207

; <label>:207:                                    ; preds = %202
  br i1 %206, label %208, label %223

; <label>:208:                                    ; preds = %207
  br label %216

; <label>:209:                                    ; preds = %202
  br i1 %206, label %210, label %223

; <label>:210:                                    ; preds = %209
  br label %211

; <label>:211:                                    ; preds = %210, %211
  %212 = phi i64 [ %214, %211 ], [ 0, %210 ]
  %213 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %214 = add nuw i64 %212, 1
  %215 = icmp eq i64 %214, %204
  br i1 %215, label %221, label %211

; <label>:216:                                    ; preds = %208, %216
  %217 = phi i64 [ %219, %216 ], [ 0, %208 ]
  %218 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %219 = add nuw i64 %217, 1
  %220 = icmp eq i64 %219, %204
  br i1 %220, label %222, label %216

; <label>:221:                                    ; preds = %211
  br label %223

; <label>:222:                                    ; preds = %216
  br label %223

; <label>:223:                                    ; preds = %222, %221, %207, %209, %201
  %224 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %190, %struct.tm* %2, i1 zeroext %191, %struct.tm_zone* %4, i32 %5)
  br label %225

; <label>:225:                                    ; preds = %223, %200
  %226 = add i64 %197, %50
  br label %1177

; <label>:227:                                    ; preds = %781, %184, %175, %170, %960, %366, %178, %967, %814, %122, %341, %327, %187
  %228 = phi i8 [ 121, %967 ], [ 89, %960 ], [ 88, %814 ], [ 114, %122 ], [ 120, %341 ], [ 67, %327 ], [ 99, %187 ], [ %123, %178 ], [ 97, %170 ], [ 65, %175 ], [ 66, %184 ], [ %123, %366 ], [ 112, %781 ]
  %229 = phi i8 [ %78, %967 ], [ %78, %960 ], [ %78, %814 ], [ %78, %122 ], [ %78, %341 ], [ %78, %327 ], [ %78, %187 ], [ %180, %178 ], [ %172, %170 ], [ %177, %175 ], [ %186, %184 ], [ %78, %366 ], [ %784, %781 ]
  %230 = phi i8 [ 0, %967 ], [ 0, %960 ], [ 0, %814 ], [ 0, %122 ], [ 0, %341 ], [ 0, %327 ], [ 0, %187 ], [ 0, %178 ], [ 0, %170 ], [ 0, %175 ], [ 0, %184 ], [ 0, %366 ], [ %785, %781 ]
  %231 = phi i32 [ %116, %967 ], [ %116, %960 ], [ %116, %814 ], [ %116, %122 ], [ %116, %341 ], [ %116, %327 ], [ %116, %187 ], [ %116, %178 ], [ %116, %170 ], [ %116, %175 ], [ %116, %184 ], [ %367, %366 ], [ %116, %781 ]
  %232 = phi i32 [ %53, %967 ], [ %53, %960 ], [ %53, %814 ], [ %53, %122 ], [ %53, %341 ], [ %53, %327 ], [ %53, %187 ], [ %53, %178 ], [ %53, %170 ], [ %53, %175 ], [ %53, %184 ], [ %368, %366 ], [ %53, %781 ]
  %233 = phi i32 [ %52, %967 ], [ %52, %960 ], [ %52, %814 ], [ %52, %122 ], [ %52, %341 ], [ %52, %327 ], [ %52, %187 ], [ %52, %178 ], [ %52, %170 ], [ %52, %175 ], [ %52, %184 ], [ %371, %366 ], [ %52, %781 ]
  %234 = phi i32 [ 0, %967 ], [ 0, %960 ], [ 0, %814 ], [ 0, %122 ], [ 0, %341 ], [ 0, %327 ], [ 0, %187 ], [ 0, %178 ], [ 0, %170 ], [ 0, %175 ], [ 0, %184 ], [ %372, %366 ], [ 0, %781 ]
  %235 = phi i32 [ %70, %967 ], [ %70, %960 ], [ %70, %814 ], [ %70, %122 ], [ %70, %341 ], [ %70, %327 ], [ %70, %187 ], [ %70, %178 ], [ %70, %170 ], [ %70, %175 ], [ %70, %184 ], [ %373, %366 ], [ %70, %781 ]
  %236 = phi i8* [ %125, %967 ], [ %125, %960 ], [ %125, %814 ], [ %125, %122 ], [ %125, %341 ], [ %125, %327 ], [ %125, %187 ], [ %125, %178 ], [ %125, %170 ], [ %125, %175 ], [ %125, %184 ], [ %374, %366 ], [ %125, %781 ]
  call void @llvm.lifetime.start(i64 5, i8* nonnull %28) #11
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %29) #11
  store i8 32, i8* %28, align 1
  store i8 37, i8* %30, align 1
  %237 = icmp eq i32 %124, 0
  br i1 %237, label %240, label %238

; <label>:238:                                    ; preds = %227
  %239 = trunc i32 %124 to i8
  store i8 %239, i8* %31, align 1
  br label %240

; <label>:240:                                    ; preds = %227, %238
  %241 = phi i8* [ %33, %238 ], [ %31, %227 ]
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  store i8 %228, i8* %241, align 1
  store i8 0, i8* %242, align 1
  %243 = call i64 @strftime(i8* nonnull %29, i64 1024, i8* nonnull %28, %struct.tm* %2) #11
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %324, label %245

; <label>:245:                                    ; preds = %240
  %246 = add i64 %243, -1
  %247 = icmp sgt i32 %231, 0
  %248 = select i1 %247, i32 %231, i32 0
  %249 = zext i32 %248 to i64
  %250 = icmp ult i64 %246, %249
  %251 = select i1 %250, i64 %249, i64 %246
  %252 = xor i64 %50, -1
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %326

; <label>:254:                                    ; preds = %245
  br i1 %27, label %322, label %255

; <label>:255:                                    ; preds = %254
  %256 = icmp ne i32 %234, 0
  %257 = xor i1 %250, true
  %258 = or i1 %256, %257
  br i1 %258, label %280, label %259

; <label>:259:                                    ; preds = %255
  %260 = sext i32 %231 to i64
  %261 = sub i64 %260, %246
  %262 = icmp eq i32 %235, 48
  %263 = icmp ne i64 %261, 0
  br i1 %262, label %266, label %264

; <label>:264:                                    ; preds = %259
  br i1 %263, label %265, label %280

; <label>:265:                                    ; preds = %264
  br label %273

; <label>:266:                                    ; preds = %259
  br i1 %263, label %267, label %280

; <label>:267:                                    ; preds = %266
  br label %268

; <label>:268:                                    ; preds = %267, %268
  %269 = phi i64 [ %271, %268 ], [ 0, %267 ]
  %270 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0)
  %271 = add nuw i64 %269, 1
  %272 = icmp eq i64 %271, %261
  br i1 %272, label %278, label %268

; <label>:273:                                    ; preds = %265, %273
  %274 = phi i64 [ %276, %273 ], [ 0, %265 ]
  %275 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %276 = add nuw i64 %274, 1
  %277 = icmp eq i64 %276, %261
  br i1 %277, label %279, label %273

; <label>:278:                                    ; preds = %268
  br label %280

; <label>:279:                                    ; preds = %273
  br label %280

; <label>:280:                                    ; preds = %279, %278, %264, %266, %255
  %281 = and i8 %230, 1
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %299, label %283

; <label>:283:                                    ; preds = %280
  %284 = icmp eq i64 %246, 0
  br i1 %284, label %322, label %285

; <label>:285:                                    ; preds = %283
  br label %286

; <label>:286:                                    ; preds = %285, %286
  %287 = phi i8* [ %297, %286 ], [ %32, %285 ]
  %288 = phi i64 [ %289, %286 ], [ %246, %285 ]
  %289 = add i64 %288, -1
  %290 = tail call i32** @__ctype_tolower_loc() #1
  %291 = load i32*, i32** %290, align 8
  %292 = load i8, i8* %287, align 1
  %293 = zext i8 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @fputc(i32 %295, %struct._IO_FILE* %0) #11
  %297 = getelementptr inbounds i8, i8* %287, i64 1
  %298 = icmp eq i64 %289, 0
  br i1 %298, label %321, label %286

; <label>:299:                                    ; preds = %280
  %300 = and i8 %229, 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %318, label %302

; <label>:302:                                    ; preds = %299
  %303 = icmp eq i64 %246, 0
  br i1 %303, label %322, label %304

; <label>:304:                                    ; preds = %302
  br label %305

; <label>:305:                                    ; preds = %304, %305
  %306 = phi i8* [ %316, %305 ], [ %32, %304 ]
  %307 = phi i64 [ %308, %305 ], [ %246, %304 ]
  %308 = add i64 %307, -1
  %309 = tail call i32** @__ctype_toupper_loc() #1
  %310 = load i32*, i32** %309, align 8
  %311 = load i8, i8* %306, align 1
  %312 = zext i8 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @fputc(i32 %314, %struct._IO_FILE* %0) #11
  %316 = getelementptr inbounds i8, i8* %306, i64 1
  %317 = icmp eq i64 %308, 0
  br i1 %317, label %320, label %305

; <label>:318:                                    ; preds = %299
  %319 = call i64 @fwrite(i8* %32, i64 %246, i64 1, %struct._IO_FILE* nonnull %0)
  br label %322

; <label>:320:                                    ; preds = %305
  br label %322

; <label>:321:                                    ; preds = %286
  br label %322

; <label>:322:                                    ; preds = %321, %320, %318, %254, %283, %302
  %323 = add i64 %251, %50
  br label %324

; <label>:324:                                    ; preds = %322, %240
  %325 = phi i64 [ %323, %322 ], [ %50, %240 ]
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #11
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #11
  br label %1177

; <label>:326:                                    ; preds = %245
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #11
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #11
  br label %1176

; <label>:327:                                    ; preds = %122
  %328 = icmp eq i32 %124, 69
  br i1 %328, label %227, label %329

; <label>:329:                                    ; preds = %327
  %330 = load i32, i32* %34, align 4
  %331 = sdiv i32 %330, 100
  %332 = add nsw i32 %331, 19
  %333 = srem i32 %330, 100
  %334 = icmp slt i32 %333, 0
  %335 = icmp sgt i32 %330, -1900
  %336 = and i1 %335, %334
  %337 = sext i1 %336 to i32
  %338 = add nsw i32 %332, %337
  %339 = icmp slt i32 %330, -1900
  %340 = zext i1 %339 to i8
  br label %366

; <label>:341:                                    ; preds = %122
  %342 = icmp eq i32 %124, 79
  br i1 %342, label %1104, label %227

; <label>:343:                                    ; preds = %122
  %344 = icmp eq i32 %124, 0
  br i1 %344, label %189, label %1104

; <label>:345:                                    ; preds = %122
  %346 = icmp eq i32 %124, 69
  br i1 %346, label %1104, label %347

; <label>:347:                                    ; preds = %345
  %348 = load i32, i32* %38, align 4
  br label %359

; <label>:349:                                    ; preds = %122
  %350 = icmp eq i32 %124, 69
  br i1 %350, label %1104, label %351

; <label>:351:                                    ; preds = %349
  %352 = load i32, i32* %38, align 4
  br label %353

; <label>:353:                                    ; preds = %691, %689, %351
  %354 = phi i32 [ %690, %689 ], [ %352, %351 ], [ %22, %691 ]
  switch i32 %70, label %355 [
    i32 48, label %359
    i32 45, label %359
  ]

; <label>:355:                                    ; preds = %353
  br label %359

; <label>:356:                                    ; preds = %738
  br label %357

; <label>:357:                                    ; preds = %732, %356
  %358 = phi i32 [ %733, %732 ], [ %741, %356 ]
  br label %359

; <label>:359:                                    ; preds = %357, %715, %931, %926, %937, %973, %969, %713, %685, %353, %353, %355, %958, %948, %860, %853, %793, %702, %683, %347
  %360 = phi i32 [ %116, %958 ], [ %116, %948 ], [ %116, %860 ], [ %116, %853 ], [ %116, %793 ], [ %116, %702 ], [ %116, %355 ], [ %116, %353 ], [ %116, %683 ], [ %116, %347 ], [ %116, %353 ], [ %116, %685 ], [ 9, %713 ], [ %116, %969 ], [ %116, %973 ], [ %116, %937 ], [ %116, %926 ], [ %116, %931 ], [ %116, %715 ], [ %116, %357 ]
  %361 = phi i32 [ %959, %958 ], [ %955, %948 ], [ %865, %860 ], [ %857, %853 ], [ %794, %793 ], [ %703, %702 ], [ %354, %355 ], [ %354, %353 ], [ %684, %683 ], [ %348, %347 ], [ %354, %353 ], [ %22, %685 ], [ %5, %713 ], [ %971, %969 ], [ %977, %973 ], [ %939, %937 ], [ %929, %926 ], [ %936, %931 ], [ %5, %715 ], [ %358, %357 ]
  %362 = phi i32 [ 1, %958 ], [ 2, %948 ], [ 2, %860 ], [ 1, %853 ], [ 2, %793 ], [ 2, %702 ], [ 2, %355 ], [ 2, %353 ], [ 2, %683 ], [ 2, %347 ], [ 2, %353 ], [ 2, %685 ], [ 9, %713 ], [ 2, %969 ], [ 2, %973 ], [ 2, %937 ], [ 2, %926 ], [ 2, %931 ], [ %116, %715 ], [ %116, %357 ]
  %363 = phi i32 [ %70, %958 ], [ %70, %948 ], [ %70, %860 ], [ %70, %853 ], [ %70, %793 ], [ %70, %702 ], [ 95, %355 ], [ %70, %353 ], [ %70, %683 ], [ %70, %347 ], [ %70, %353 ], [ %70, %685 ], [ %70, %713 ], [ %70, %969 ], [ %70, %973 ], [ %70, %937 ], [ %70, %926 ], [ %70, %931 ], [ %70, %715 ], [ %70, %357 ]
  %364 = lshr i32 %361, 31
  %365 = trunc i32 %364 to i8
  br label %366

; <label>:366:                                    ; preds = %940, %359, %695, %706, %786, %329, %1095
  %367 = phi i32 [ %116, %1095 ], [ %360, %359 ], [ %116, %940 ], [ %116, %786 ], [ %116, %706 ], [ %116, %695 ], [ %116, %329 ]
  %368 = phi i32 [ %1097, %1095 ], [ 0, %359 ], [ 0, %940 ], [ 0, %786 ], [ 0, %706 ], [ 0, %695 ], [ 0, %329 ]
  %369 = phi i8 [ 1, %1095 ], [ 0, %359 ], [ 0, %940 ], [ 0, %786 ], [ 0, %706 ], [ 0, %695 ], [ 0, %329 ]
  %370 = phi i8 [ %1075, %1095 ], [ %365, %359 ], [ %943, %940 ], [ 0, %786 ], [ %709, %706 ], [ %698, %695 ], [ %340, %329 ]
  %371 = phi i32 [ %1098, %1095 ], [ %361, %359 ], [ %945, %940 ], [ %790, %786 ], [ %710, %706 ], [ %699, %695 ], [ %338, %329 ]
  %372 = phi i32 [ %1099, %1095 ], [ %362, %359 ], [ 4, %940 ], [ 1, %786 ], [ 2, %706 ], [ 3, %695 ], [ 2, %329 ]
  %373 = phi i32 [ %70, %1095 ], [ %363, %359 ], [ %70, %940 ], [ %70, %786 ], [ %70, %706 ], [ %70, %695 ], [ %70, %329 ]
  %374 = phi i8* [ %1061, %1095 ], [ %125, %359 ], [ %125, %940 ], [ %125, %786 ], [ %125, %706 ], [ %125, %695 ], [ %125, %329 ]
  %375 = icmp eq i32 %124, 79
  %376 = and i8 %370, 1
  %377 = icmp eq i8 %376, 0
  %378 = and i1 %375, %377
  br i1 %378, label %227, label %379

; <label>:379:                                    ; preds = %961, %366
  %380 = phi i1 [ %966, %961 ], [ %377, %366 ]
  %381 = phi i8* [ %125, %961 ], [ %374, %366 ]
  %382 = phi i32 [ %70, %961 ], [ %373, %366 ]
  %383 = phi i32 [ 4, %961 ], [ %372, %366 ]
  %384 = phi i32 [ %965, %961 ], [ %371, %366 ]
  %385 = phi i8 [ %964, %961 ], [ %370, %366 ]
  %386 = phi i8 [ 0, %961 ], [ %369, %366 ]
  %387 = phi i32 [ 0, %961 ], [ %368, %366 ]
  %388 = phi i32 [ %116, %961 ], [ %367, %366 ]
  %389 = sub i32 0, %384
  %390 = select i1 %380, i32 %384, i32 %389
  br label %391

; <label>:391:                                    ; preds = %379, %399
  %392 = phi i8* [ %405, %399 ], [ %35, %379 ]
  %393 = phi i32 [ %401, %399 ], [ %387, %379 ]
  %394 = phi i32 [ %406, %399 ], [ %390, %379 ]
  %395 = and i32 %393, 1
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %399, label %397

; <label>:397:                                    ; preds = %391
  %398 = getelementptr inbounds i8, i8* %392, i64 -1
  store i8 58, i8* %398, align 1
  br label %399

; <label>:399:                                    ; preds = %391, %397
  %400 = phi i8* [ %398, %397 ], [ %392, %391 ]
  %401 = ashr i32 %393, 1
  %402 = urem i32 %394, 10
  %403 = trunc i32 %402 to i8
  %404 = or i8 %403, 48
  %405 = getelementptr inbounds i8, i8* %400, i64 -1
  store i8 %404, i8* %405, align 1
  %406 = udiv i32 %394, 10
  %407 = icmp ugt i32 %394, 9
  %408 = icmp ne i32 %401, 0
  %409 = or i1 %407, %408
  br i1 %409, label %391, label %410

; <label>:410:                                    ; preds = %399
  br label %411

; <label>:411:                                    ; preds = %410, %812
  %412 = phi i32 [ %116, %812 ], [ %388, %410 ]
  %413 = phi i8* [ %809, %812 ], [ %405, %410 ]
  %414 = phi i32 [ %53, %812 ], [ 0, %410 ]
  %415 = phi i8 [ 0, %812 ], [ %386, %410 ]
  %416 = phi i8 [ %813, %812 ], [ %385, %410 ]
  %417 = phi i32 [ %52, %812 ], [ %406, %410 ]
  %418 = phi i32 [ 1, %812 ], [ %383, %410 ]
  %419 = phi i32 [ %70, %812 ], [ %382, %410 ]
  %420 = phi i8* [ %125, %812 ], [ %381, %410 ]
  %421 = icmp slt i32 %418, %412
  %422 = select i1 %421, i32 %412, i32 %418
  %423 = and i8 %416, 1
  %424 = icmp ne i8 %423, 0
  %425 = and i8 %415, 1
  %426 = icmp ne i8 %425, 0
  %427 = select i1 %426, i8 43, i8 0
  %428 = select i1 %424, i8 45, i8 %427
  %429 = icmp eq i32 %419, 45
  br i1 %429, label %430, label %461

; <label>:430:                                    ; preds = %411
  %431 = icmp eq i8 %428, 0
  br i1 %431, label %618, label %432

; <label>:432:                                    ; preds = %430
  %433 = icmp sgt i32 %412, 0
  %434 = select i1 %433, i32 %412, i32 0
  %435 = icmp ugt i32 %434, 1
  %436 = select i1 %435, i32 %434, i32 1
  %437 = zext i32 %436 to i64
  %438 = xor i64 %50, -1
  %439 = icmp ult i64 %437, %438
  br i1 %439, label %440, label %1175

; <label>:440:                                    ; preds = %432
  br i1 %27, label %459, label %441

; <label>:441:                                    ; preds = %440
  %442 = icmp ne i32 %422, 0
  %443 = icmp ult i32 %434, 2
  %444 = or i1 %443, %442
  br i1 %444, label %456, label %445

; <label>:445:                                    ; preds = %441
  %446 = sext i32 %412 to i64
  %447 = add nsw i64 %446, -1
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %456, label %449

; <label>:449:                                    ; preds = %445
  br label %450

; <label>:450:                                    ; preds = %449, %450
  %451 = phi i64 [ %453, %450 ], [ 0, %449 ]
  %452 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %453 = add nuw i64 %451, 1
  %454 = icmp eq i64 %453, %447
  br i1 %454, label %455, label %450

; <label>:455:                                    ; preds = %450
  br label %456

; <label>:456:                                    ; preds = %455, %445, %441
  %457 = zext i8 %428 to i32
  %458 = call i32 @fputc(i32 %457, %struct._IO_FILE* nonnull %0)
  br label %459

; <label>:459:                                    ; preds = %456, %440
  %460 = add i64 %437, %50
  br label %618

; <label>:461:                                    ; preds = %411
  %462 = sext i32 %422 to i64
  %463 = ptrtoint i8* %413 to i64
  %464 = sub i64 %463, %36
  %465 = icmp ne i8 %428, 0
  %466 = sext i1 %465 to i64
  %467 = add i64 %464, %466
  %468 = add i64 %467, %462
  %469 = trunc i64 %468 to i32
  %470 = icmp sgt i32 %469, 0
  br i1 %470, label %471, label %578

; <label>:471:                                    ; preds = %461
  %472 = icmp eq i32 %419, 95
  br i1 %472, label %473, label %520

; <label>:473:                                    ; preds = %471
  %474 = shl i64 %468, 32
  %475 = ashr exact i64 %474, 32
  %476 = xor i64 %50, -1
  %477 = icmp ult i64 %475, %476
  br i1 %477, label %478, label %1175

; <label>:478:                                    ; preds = %473
  %479 = icmp ne i64 %475, 0
  %480 = and i1 %37, %479
  br i1 %480, label %481, label %488

; <label>:481:                                    ; preds = %478
  br label %482

; <label>:482:                                    ; preds = %481, %482
  %483 = phi i64 [ %485, %482 ], [ 0, %481 ]
  %484 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %485 = add nuw i64 %483, 1
  %486 = icmp ult i64 %485, %475
  br i1 %486, label %482, label %487

; <label>:487:                                    ; preds = %482
  br label %488

; <label>:488:                                    ; preds = %487, %478
  %489 = add i64 %475, %50
  %490 = icmp sgt i32 %412, %469
  %491 = sub nsw i32 %412, %469
  %492 = select i1 %490, i32 %491, i32 0
  br i1 %465, label %493, label %618

; <label>:493:                                    ; preds = %488
  %494 = icmp ugt i32 %492, 1
  %495 = select i1 %494, i32 %492, i32 1
  %496 = zext i32 %495 to i64
  %497 = xor i64 %489, -1
  %498 = icmp ult i64 %496, %497
  br i1 %498, label %499, label %1175

; <label>:499:                                    ; preds = %493
  br i1 %37, label %500, label %518

; <label>:500:                                    ; preds = %499
  %501 = icmp ne i32 %422, 0
  %502 = icmp ult i32 %492, 2
  %503 = or i1 %501, %502
  br i1 %503, label %515, label %504

; <label>:504:                                    ; preds = %500
  %505 = zext i32 %492 to i64
  %506 = add nsw i64 %505, -1
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %515, label %508

; <label>:508:                                    ; preds = %504
  br label %509

; <label>:509:                                    ; preds = %508, %509
  %510 = phi i64 [ %512, %509 ], [ 0, %508 ]
  %511 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %512 = add nuw i64 %510, 1
  %513 = icmp ult i64 %512, %506
  br i1 %513, label %509, label %514

; <label>:514:                                    ; preds = %509
  br label %515

; <label>:515:                                    ; preds = %514, %504, %500
  %516 = zext i8 %428 to i32
  %517 = call i32 @fputc(i32 %516, %struct._IO_FILE* nonnull %0)
  br label %518

; <label>:518:                                    ; preds = %499, %515
  %519 = add i64 %496, %489
  br label %618

; <label>:520:                                    ; preds = %471
  %521 = xor i64 %50, -1
  %522 = icmp ult i64 %462, %521
  br i1 %522, label %523, label %1175

; <label>:523:                                    ; preds = %520
  br i1 %465, label %524, label %562

; <label>:524:                                    ; preds = %523
  %525 = icmp sgt i32 %412, 0
  %526 = select i1 %525, i32 %412, i32 0
  %527 = icmp ugt i32 %526, 1
  %528 = select i1 %527, i32 %526, i32 1
  %529 = zext i32 %528 to i64
  %530 = icmp ult i64 %529, %521
  br i1 %530, label %531, label %1175

; <label>:531:                                    ; preds = %524
  br i1 %27, label %560, label %532

; <label>:532:                                    ; preds = %531
  %533 = icmp ne i32 %422, 0
  %534 = icmp ult i32 %526, 2
  %535 = or i1 %534, %533
  br i1 %535, label %557, label %536

; <label>:536:                                    ; preds = %532
  %537 = sext i32 %412 to i64
  %538 = add nsw i64 %537, -1
  %539 = icmp eq i32 %419, 48
  %540 = icmp ne i64 %538, 0
  br i1 %539, label %543, label %541

; <label>:541:                                    ; preds = %536
  br i1 %540, label %542, label %557

; <label>:542:                                    ; preds = %541
  br label %550

; <label>:543:                                    ; preds = %536
  br i1 %540, label %544, label %557

; <label>:544:                                    ; preds = %543
  br label %545

; <label>:545:                                    ; preds = %544, %545
  %546 = phi i64 [ %548, %545 ], [ 0, %544 ]
  %547 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0)
  %548 = add nuw i64 %546, 1
  %549 = icmp eq i64 %548, %538
  br i1 %549, label %555, label %545

; <label>:550:                                    ; preds = %542, %550
  %551 = phi i64 [ %553, %550 ], [ 0, %542 ]
  %552 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %553 = add nuw i64 %551, 1
  %554 = icmp eq i64 %553, %538
  br i1 %554, label %556, label %550

; <label>:555:                                    ; preds = %545
  br label %557

; <label>:556:                                    ; preds = %550
  br label %557

; <label>:557:                                    ; preds = %556, %555, %541, %543, %532
  %558 = zext i8 %428 to i32
  %559 = call i32 @fputc(i32 %558, %struct._IO_FILE* nonnull %0)
  br label %560

; <label>:560:                                    ; preds = %557, %531
  %561 = add i64 %529, %50
  br label %562

; <label>:562:                                    ; preds = %560, %523
  %563 = phi i64 [ %50, %523 ], [ %561, %560 ]
  %564 = shl i64 %468, 32
  %565 = ashr exact i64 %564, 32
  br i1 %27, label %575, label %566

; <label>:566:                                    ; preds = %562
  %567 = icmp eq i64 %565, 0
  br i1 %567, label %575, label %568

; <label>:568:                                    ; preds = %566
  br label %569

; <label>:569:                                    ; preds = %568, %569
  %570 = phi i64 [ %572, %569 ], [ 0, %568 ]
  %571 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %572 = add nuw i64 %570, 1
  %573 = icmp ult i64 %572, %565
  br i1 %573, label %569, label %574

; <label>:574:                                    ; preds = %569
  br label %575

; <label>:575:                                    ; preds = %574, %562, %566
  %576 = phi i64 [ 0, %566 ], [ %565, %562 ], [ %565, %574 ]
  %577 = add i64 %563, %576
  br label %618

; <label>:578:                                    ; preds = %461
  br i1 %465, label %579, label %618

; <label>:579:                                    ; preds = %578
  %580 = icmp sgt i32 %412, 0
  %581 = select i1 %580, i32 %412, i32 0
  %582 = icmp ugt i32 %581, 1
  %583 = select i1 %582, i32 %581, i32 1
  %584 = zext i32 %583 to i64
  %585 = xor i64 %50, -1
  %586 = icmp ult i64 %584, %585
  br i1 %586, label %587, label %1175

; <label>:587:                                    ; preds = %579
  br i1 %27, label %616, label %588

; <label>:588:                                    ; preds = %587
  %589 = icmp ne i32 %422, 0
  %590 = icmp ult i32 %581, 2
  %591 = or i1 %590, %589
  br i1 %591, label %613, label %592

; <label>:592:                                    ; preds = %588
  %593 = sext i32 %412 to i64
  %594 = add nsw i64 %593, -1
  %595 = icmp eq i32 %419, 48
  %596 = icmp ne i64 %594, 0
  br i1 %595, label %599, label %597

; <label>:597:                                    ; preds = %592
  br i1 %596, label %598, label %613

; <label>:598:                                    ; preds = %597
  br label %606

; <label>:599:                                    ; preds = %592
  br i1 %596, label %600, label %613

; <label>:600:                                    ; preds = %599
  br label %601

; <label>:601:                                    ; preds = %600, %601
  %602 = phi i64 [ %604, %601 ], [ 0, %600 ]
  %603 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %604 = add nuw i64 %602, 1
  %605 = icmp eq i64 %604, %594
  br i1 %605, label %611, label %601

; <label>:606:                                    ; preds = %598, %606
  %607 = phi i64 [ %609, %606 ], [ 0, %598 ]
  %608 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %609 = add nuw i64 %607, 1
  %610 = icmp eq i64 %609, %594
  br i1 %610, label %612, label %606

; <label>:611:                                    ; preds = %601
  br label %613

; <label>:612:                                    ; preds = %606
  br label %613

; <label>:613:                                    ; preds = %612, %611, %597, %599, %588
  %614 = zext i8 %428 to i32
  %615 = call i32 @fputc(i32 %614, %struct._IO_FILE* %0)
  br label %616

; <label>:616:                                    ; preds = %613, %587
  %617 = add i64 %584, %50
  br label %618

; <label>:618:                                    ; preds = %488, %575, %578, %518, %616, %459, %430
  %619 = phi i32 [ %412, %430 ], [ %412, %459 ], [ %412, %616 ], [ %492, %518 ], [ %412, %578 ], [ 0, %575 ], [ %492, %488 ]
  %620 = phi i64 [ %50, %430 ], [ %460, %459 ], [ %617, %616 ], [ %519, %518 ], [ %50, %578 ], [ %577, %575 ], [ %489, %488 ]
  %621 = ptrtoint i8* %413 to i64
  %622 = sub i64 %36, %621
  %623 = icmp sgt i32 %619, 0
  %624 = select i1 %623, i32 %619, i32 0
  %625 = zext i32 %624 to i64
  %626 = icmp ult i64 %622, %625
  %627 = select i1 %626, i64 %625, i64 %622
  %628 = xor i64 %620, -1
  %629 = icmp ult i64 %627, %628
  br i1 %629, label %630, label %1175

; <label>:630:                                    ; preds = %618
  br i1 %27, label %677, label %631

; <label>:631:                                    ; preds = %630
  %632 = icmp ne i32 %422, 0
  %633 = xor i1 %626, true
  %634 = or i1 %632, %633
  br i1 %634, label %656, label %635

; <label>:635:                                    ; preds = %631
  %636 = sext i32 %619 to i64
  %637 = sub i64 %636, %622
  %638 = icmp eq i32 %419, 48
  %639 = icmp ne i64 %637, 0
  br i1 %638, label %642, label %640

; <label>:640:                                    ; preds = %635
  br i1 %639, label %641, label %656

; <label>:641:                                    ; preds = %640
  br label %649

; <label>:642:                                    ; preds = %635
  br i1 %639, label %643, label %656

; <label>:643:                                    ; preds = %642
  br label %644

; <label>:644:                                    ; preds = %643, %644
  %645 = phi i64 [ %647, %644 ], [ 0, %643 ]
  %646 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %647 = add nuw i64 %645, 1
  %648 = icmp eq i64 %647, %637
  br i1 %648, label %654, label %644

; <label>:649:                                    ; preds = %641, %649
  %650 = phi i64 [ %652, %649 ], [ 0, %641 ]
  %651 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %652 = add nuw i64 %650, 1
  %653 = icmp eq i64 %652, %637
  br i1 %653, label %655, label %649

; <label>:654:                                    ; preds = %644
  br label %656

; <label>:655:                                    ; preds = %649
  br label %656

; <label>:656:                                    ; preds = %655, %654, %640, %642, %631
  %657 = icmp eq i8 %78, 0
  br i1 %657, label %674, label %658

; <label>:658:                                    ; preds = %656
  %659 = icmp eq i64 %622, 0
  br i1 %659, label %677, label %660

; <label>:660:                                    ; preds = %658
  br label %661

; <label>:661:                                    ; preds = %660, %661
  %662 = phi i8* [ %672, %661 ], [ %413, %660 ]
  %663 = phi i64 [ %664, %661 ], [ %622, %660 ]
  %664 = add i64 %663, -1
  %665 = tail call i32** @__ctype_toupper_loc() #1
  %666 = load i32*, i32** %665, align 8
  %667 = load i8, i8* %662, align 1
  %668 = zext i8 %667 to i64
  %669 = getelementptr inbounds i32, i32* %666, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = call i32 @fputc(i32 %670, %struct._IO_FILE* %0) #11
  %672 = getelementptr inbounds i8, i8* %662, i64 1
  %673 = icmp eq i64 %664, 0
  br i1 %673, label %676, label %661

; <label>:674:                                    ; preds = %656
  %675 = call i64 @fwrite(i8* %413, i64 %622, i64 1, %struct._IO_FILE* %0)
  br label %677

; <label>:676:                                    ; preds = %661
  br label %677

; <label>:677:                                    ; preds = %676, %674, %630, %658
  %678 = add i64 %627, %620
  br label %1177

; <label>:679:                                    ; preds = %122
  %680 = icmp eq i32 %124, 0
  br i1 %680, label %189, label %1104

; <label>:681:                                    ; preds = %122
  %682 = icmp eq i32 %124, 69
  br i1 %682, label %1104, label %683

; <label>:683:                                    ; preds = %681
  %684 = load i32, i32* %12, align 8
  br label %359

; <label>:685:                                    ; preds = %122
  %686 = icmp eq i32 %124, 69
  br i1 %686, label %1104, label %359

; <label>:687:                                    ; preds = %122
  %688 = icmp eq i32 %124, 69
  br i1 %688, label %1104, label %689

; <label>:689:                                    ; preds = %687
  %690 = load i32, i32* %12, align 8
  br label %353

; <label>:691:                                    ; preds = %122
  %692 = icmp eq i32 %124, 69
  br i1 %692, label %1104, label %353

; <label>:693:                                    ; preds = %122
  %694 = icmp eq i32 %124, 69
  br i1 %694, label %1104, label %695

; <label>:695:                                    ; preds = %693
  %696 = load i32, i32* %39, align 4
  %697 = icmp slt i32 %696, -1
  %698 = zext i1 %697 to i8
  %699 = add i32 %696, 1
  br label %366

; <label>:700:                                    ; preds = %122
  %701 = icmp eq i32 %124, 69
  br i1 %701, label %1104, label %702

; <label>:702:                                    ; preds = %700
  %703 = load i32, i32* %40, align 4
  br label %359

; <label>:704:                                    ; preds = %122
  %705 = icmp eq i32 %124, 69
  br i1 %705, label %1104, label %706

; <label>:706:                                    ; preds = %704
  %707 = load i32, i32* %41, align 8
  %708 = icmp slt i32 %707, -1
  %709 = zext i1 %708 to i8
  %710 = add i32 %707, 1
  br label %366

; <label>:711:                                    ; preds = %122
  %712 = icmp eq i32 %124, 69
  br i1 %712, label %1104, label %713

; <label>:713:                                    ; preds = %711
  %714 = icmp eq i32 %116, -1
  br i1 %714, label %359, label %715

; <label>:715:                                    ; preds = %713
  %716 = icmp slt i32 %116, 9
  br i1 %716, label %717, label %359

; <label>:717:                                    ; preds = %715
  %718 = sub i32 9, %116
  %719 = sub i32 8, %116
  %720 = and i32 %718, 3
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %732, label %722

; <label>:722:                                    ; preds = %717
  br label %723

; <label>:723:                                    ; preds = %723, %722
  %724 = phi i32 [ %727, %723 ], [ %5, %722 ]
  %725 = phi i32 [ %728, %723 ], [ %116, %722 ]
  %726 = phi i32 [ %729, %723 ], [ %720, %722 ]
  %727 = sdiv i32 %724, 10
  %728 = add nsw i32 %725, 1
  %729 = add i32 %726, -1
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %723

; <label>:731:                                    ; preds = %723
  br label %732

; <label>:732:                                    ; preds = %717, %731
  %733 = phi i32 [ undef, %717 ], [ %727, %731 ]
  %734 = phi i32 [ %5, %717 ], [ %727, %731 ]
  %735 = phi i32 [ %116, %717 ], [ %728, %731 ]
  %736 = icmp ult i32 %719, 3
  br i1 %736, label %357, label %737

; <label>:737:                                    ; preds = %732
  br label %738

; <label>:738:                                    ; preds = %738, %737
  %739 = phi i32 [ %734, %737 ], [ %741, %738 ]
  %740 = phi i32 [ %735, %737 ], [ %742, %738 ]
  %741 = sdiv i32 %739, 10000
  %742 = add nsw i32 %740, 4
  %743 = icmp eq i32 %742, 9
  br i1 %743, label %356, label %738

; <label>:744:                                    ; preds = %122
  %745 = icmp sgt i32 %116, 0
  %746 = select i1 %745, i32 %116, i32 0
  %747 = icmp ugt i32 %746, 1
  %748 = icmp ugt i32 %746, 1
  %749 = select i1 %748, i32 %746, i32 1
  %750 = zext i32 %749 to i64
  %751 = xor i64 %50, -1
  %752 = icmp ult i64 %750, %751
  br i1 %752, label %753, label %1175

; <label>:753:                                    ; preds = %744
  br i1 %27, label %778, label %754

; <label>:754:                                    ; preds = %753
  br i1 %747, label %755, label %776

; <label>:755:                                    ; preds = %754
  %756 = sext i32 %116 to i64
  %757 = add nsw i64 %756, -1
  %758 = icmp eq i32 %70, 48
  %759 = icmp ne i64 %757, 0
  br i1 %758, label %762, label %760

; <label>:760:                                    ; preds = %755
  br i1 %759, label %761, label %776

; <label>:761:                                    ; preds = %760
  br label %769

; <label>:762:                                    ; preds = %755
  br i1 %759, label %763, label %776

; <label>:763:                                    ; preds = %762
  br label %764

; <label>:764:                                    ; preds = %763, %764
  %765 = phi i64 [ %767, %764 ], [ 0, %763 ]
  %766 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %767 = add nuw i64 %765, 1
  %768 = icmp eq i64 %767, %757
  br i1 %768, label %774, label %764

; <label>:769:                                    ; preds = %761, %769
  %770 = phi i64 [ %772, %769 ], [ 0, %761 ]
  %771 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %772 = add nuw i64 %770, 1
  %773 = icmp eq i64 %772, %757
  br i1 %773, label %775, label %769

; <label>:774:                                    ; preds = %764
  br label %776

; <label>:775:                                    ; preds = %769
  br label %776

; <label>:776:                                    ; preds = %775, %774, %760, %762, %754
  %777 = call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  br label %778

; <label>:778:                                    ; preds = %776, %753
  %779 = add i64 %750, %50
  br label %1177

; <label>:780:                                    ; preds = %122
  br label %781

; <label>:781:                                    ; preds = %122, %780
  %782 = phi i8 [ 0, %122 ], [ 1, %780 ]
  %783 = icmp eq i8 %83, 0
  %784 = select i1 %783, i8 %78, i8 0
  %785 = select i1 %783, i8 %782, i8 1
  br label %227

; <label>:786:                                    ; preds = %122
  %787 = load i32, i32* %41, align 8
  %788 = mul nsw i32 %787, 11
  %789 = ashr i32 %788, 5
  %790 = add nsw i32 %789, 1
  br label %366

; <label>:791:                                    ; preds = %122
  %792 = icmp eq i32 %124, 69
  br i1 %792, label %1104, label %793

; <label>:793:                                    ; preds = %791
  %794 = load i32, i32* %42, align 8
  br label %359

; <label>:795:                                    ; preds = %122
  call void @llvm.lifetime.start(i64 56, i8* nonnull %43) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %43, i8* %44, i64 56, i32 8, i1 false)
  %796 = call i64 @mktime_z(%struct.tm_zone* %4, %struct.tm* nonnull %10) #11
  %797 = icmp slt i64 %796, 0
  %798 = lshr i64 %796, 63
  br label %799

; <label>:799:                                    ; preds = %799, %795
  %800 = phi i64 [ %796, %795 ], [ %804, %799 ]
  %801 = phi i8* [ %35, %795 ], [ %809, %799 ]
  %802 = srem i64 %800, 10
  %803 = trunc i64 %802 to i32
  %804 = sdiv i64 %800, 10
  %805 = sub nsw i32 0, %803
  %806 = select i1 %797, i32 %805, i32 %803
  %807 = add nsw i32 %806, 48
  %808 = trunc i32 %807 to i8
  %809 = getelementptr inbounds i8, i8* %801, i64 -1
  store i8 %808, i8* %809, align 1
  %810 = add i64 %800, 9
  %811 = icmp ugt i64 %810, 18
  br i1 %811, label %799, label %812

; <label>:812:                                    ; preds = %799
  %813 = trunc i64 %798 to i8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %43) #11
  br label %411

; <label>:814:                                    ; preds = %122
  %815 = icmp eq i32 %124, 79
  br i1 %815, label %1104, label %227

; <label>:816:                                    ; preds = %122
  br label %189

; <label>:817:                                    ; preds = %122
  %818 = icmp sgt i32 %116, 0
  %819 = select i1 %818, i32 %116, i32 0
  %820 = icmp ugt i32 %819, 1
  %821 = icmp ugt i32 %819, 1
  %822 = select i1 %821, i32 %819, i32 1
  %823 = zext i32 %822 to i64
  %824 = xor i64 %50, -1
  %825 = icmp ult i64 %823, %824
  br i1 %825, label %826, label %1175

; <label>:826:                                    ; preds = %817
  br i1 %27, label %851, label %827

; <label>:827:                                    ; preds = %826
  br i1 %820, label %828, label %849

; <label>:828:                                    ; preds = %827
  %829 = sext i32 %116 to i64
  %830 = add nsw i64 %829, -1
  %831 = icmp eq i32 %70, 48
  %832 = icmp ne i64 %830, 0
  br i1 %831, label %835, label %833

; <label>:833:                                    ; preds = %828
  br i1 %832, label %834, label %849

; <label>:834:                                    ; preds = %833
  br label %842

; <label>:835:                                    ; preds = %828
  br i1 %832, label %836, label %849

; <label>:836:                                    ; preds = %835
  br label %837

; <label>:837:                                    ; preds = %836, %837
  %838 = phi i64 [ %840, %837 ], [ 0, %836 ]
  %839 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %840 = add nuw i64 %838, 1
  %841 = icmp eq i64 %840, %830
  br i1 %841, label %847, label %837

; <label>:842:                                    ; preds = %834, %842
  %843 = phi i64 [ %845, %842 ], [ 0, %834 ]
  %844 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %845 = add nuw i64 %843, 1
  %846 = icmp eq i64 %845, %830
  br i1 %846, label %848, label %842

; <label>:847:                                    ; preds = %837
  br label %849

; <label>:848:                                    ; preds = %842
  br label %849

; <label>:849:                                    ; preds = %848, %847, %833, %835, %827
  %850 = call i32 @fputc(i32 9, %struct._IO_FILE* %0)
  br label %851

; <label>:851:                                    ; preds = %849, %826
  %852 = add i64 %823, %50
  br label %1177

; <label>:853:                                    ; preds = %122
  %854 = load i32, i32* %45, align 8
  %855 = add nsw i32 %854, 6
  %856 = srem i32 %855, 7
  %857 = add nsw i32 %856, 1
  br label %359

; <label>:858:                                    ; preds = %122
  %859 = icmp eq i32 %124, 69
  br i1 %859, label %1104, label %860

; <label>:860:                                    ; preds = %858
  %861 = load i32, i32* %39, align 4
  %862 = load i32, i32* %45, align 8
  %863 = add i32 %861, 7
  %864 = sub i32 %863, %862
  %865 = sdiv i32 %864, 7
  br label %359

; <label>:866:                                    ; preds = %122, %122, %122
  %867 = icmp eq i32 %124, 69
  br i1 %867, label %1104, label %868

; <label>:868:                                    ; preds = %866
  %869 = load i32, i32* %34, align 4
  %870 = ashr i32 %869, 31
  %871 = and i32 %870, 400
  %872 = add i32 %869, -100
  %873 = add i32 %872, %871
  %874 = load i32, i32* %39, align 4
  %875 = load i32, i32* %45, align 8
  %876 = add i32 %874, 382
  %877 = sub i32 %876, %875
  %878 = srem i32 %877, 7
  %879 = add i32 %874, 3
  %880 = sub i32 %879, %878
  %881 = icmp slt i32 %880, 0
  br i1 %881, label %882, label %901

; <label>:882:                                    ; preds = %868
  %883 = add nsw i32 %873, -1
  %884 = and i32 %883, 3
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %893

; <label>:886:                                    ; preds = %882
  %887 = srem i32 %883, 100
  %888 = icmp ne i32 %887, 0
  %889 = srem i32 %883, 400
  %890 = icmp eq i32 %889, 0
  %891 = or i1 %888, %890
  %892 = select i1 %891, i32 366, i32 365
  br label %893

; <label>:893:                                    ; preds = %886, %882
  %894 = phi i32 [ 365, %882 ], [ %892, %886 ]
  %895 = add nsw i32 %894, %874
  %896 = add i32 %895, 382
  %897 = sub i32 %896, %875
  %898 = srem i32 %897, 7
  %899 = add i32 %895, 3
  %900 = sub i32 %899, %898
  br label %923

; <label>:901:                                    ; preds = %868
  %902 = and i32 %873, 3
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %911

; <label>:904:                                    ; preds = %901
  %905 = srem i32 %873, 100
  %906 = icmp ne i32 %905, 0
  %907 = srem i32 %873, 400
  %908 = icmp eq i32 %907, 0
  %909 = or i1 %906, %908
  %910 = select i1 %909, i32 366, i32 365
  br label %911

; <label>:911:                                    ; preds = %904, %901
  %912 = phi i32 [ 365, %901 ], [ %910, %904 ]
  %913 = sub nsw i32 %874, %912
  %914 = add i32 %913, 382
  %915 = sub i32 %914, %875
  %916 = srem i32 %915, 7
  %917 = add i32 %913, 3
  %918 = sub i32 %917, %916
  %919 = icmp sgt i32 %918, -1
  %920 = lshr i32 %918, 31
  %921 = xor i32 %920, 1
  %922 = select i1 %919, i32 %918, i32 %880
  br label %923

; <label>:923:                                    ; preds = %911, %893
  %924 = phi i32 [ -1, %893 ], [ %921, %911 ]
  %925 = phi i32 [ %900, %893 ], [ %922, %911 ]
  switch i32 %126, label %937 [
    i32 103, label %926
    i32 71, label %940
  ]

; <label>:926:                                    ; preds = %923
  %927 = srem i32 %869, 100
  %928 = add nsw i32 %927, %924
  %929 = srem i32 %928, 100
  %930 = icmp sgt i32 %929, -1
  br i1 %930, label %359, label %931

; <label>:931:                                    ; preds = %926
  %932 = sub nsw i32 -1900, %924
  %933 = icmp slt i32 %869, %932
  %934 = sub nsw i32 0, %929
  %935 = add nsw i32 %929, 100
  %936 = select i1 %933, i32 %934, i32 %935
  br label %359

; <label>:937:                                    ; preds = %923
  %938 = sdiv i32 %925, 7
  %939 = add nsw i32 %938, 1
  br label %359

; <label>:940:                                    ; preds = %923
  %941 = sub nsw i32 -1900, %924
  %942 = icmp slt i32 %869, %941
  %943 = zext i1 %942 to i8
  %944 = add nsw i32 %924, 1900
  %945 = add i32 %944, %869
  br label %366

; <label>:946:                                    ; preds = %122
  %947 = icmp eq i32 %124, 69
  br i1 %947, label %1104, label %948

; <label>:948:                                    ; preds = %946
  %949 = load i32, i32* %39, align 4
  %950 = load i32, i32* %45, align 8
  %951 = add nsw i32 %950, 6
  %952 = srem i32 %951, 7
  %953 = add i32 %949, 7
  %954 = sub i32 %953, %952
  %955 = sdiv i32 %954, 7
  br label %359

; <label>:956:                                    ; preds = %122
  %957 = icmp eq i32 %124, 69
  br i1 %957, label %1104, label %958

; <label>:958:                                    ; preds = %956
  %959 = load i32, i32* %45, align 8
  br label %359

; <label>:960:                                    ; preds = %122
  switch i32 %124, label %961 [
    i32 69, label %227
    i32 79, label %1104
  ]

; <label>:961:                                    ; preds = %960
  %962 = load i32, i32* %34, align 4
  %963 = icmp slt i32 %962, -1900
  %964 = zext i1 %963 to i8
  %965 = add i32 %962, 1900
  %966 = xor i1 %963, true
  br label %379

; <label>:967:                                    ; preds = %122
  %968 = icmp eq i32 %124, 69
  br i1 %968, label %227, label %969

; <label>:969:                                    ; preds = %967
  %970 = load i32, i32* %34, align 4
  %971 = srem i32 %970, 100
  %972 = icmp slt i32 %971, 0
  br i1 %972, label %973, label %359

; <label>:973:                                    ; preds = %969
  %974 = icmp slt i32 %970, -1900
  %975 = sub nsw i32 0, %971
  %976 = add nsw i32 %971, 100
  %977 = select i1 %974, i32 %975, i32 %976
  br label %359

; <label>:978:                                    ; preds = %122
  %979 = icmp eq i8 %83, 0
  %980 = call i64 @strlen(i8* %17) #14
  %981 = icmp sgt i32 %116, 0
  %982 = select i1 %981, i32 %116, i32 0
  %983 = zext i32 %982 to i64
  %984 = icmp ult i64 %980, %983
  %985 = select i1 %984, i64 %983, i64 %980
  %986 = xor i64 %50, -1
  %987 = icmp ult i64 %985, %986
  br i1 %987, label %988, label %1175

; <label>:988:                                    ; preds = %978
  br i1 %27, label %1050, label %989

; <label>:989:                                    ; preds = %988
  br i1 %984, label %990, label %1011

; <label>:990:                                    ; preds = %989
  %991 = sext i32 %116 to i64
  %992 = sub i64 %991, %980
  %993 = icmp eq i32 %70, 48
  %994 = icmp ne i64 %992, 0
  br i1 %993, label %997, label %995

; <label>:995:                                    ; preds = %990
  br i1 %994, label %996, label %1011

; <label>:996:                                    ; preds = %995
  br label %1004

; <label>:997:                                    ; preds = %990
  br i1 %994, label %998, label %1011

; <label>:998:                                    ; preds = %997
  br label %999

; <label>:999:                                    ; preds = %998, %999
  %1000 = phi i64 [ %1002, %999 ], [ 0, %998 ]
  %1001 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %1002 = add nuw i64 %1000, 1
  %1003 = icmp eq i64 %1002, %992
  br i1 %1003, label %1009, label %999

; <label>:1004:                                   ; preds = %996, %1004
  %1005 = phi i64 [ %1007, %1004 ], [ 0, %996 ]
  %1006 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %1007 = add nuw i64 %1005, 1
  %1008 = icmp eq i64 %1007, %992
  br i1 %1008, label %1010, label %1004

; <label>:1009:                                   ; preds = %999
  br label %1011

; <label>:1010:                                   ; preds = %1004
  br label %1011

; <label>:1011:                                   ; preds = %1010, %1009, %995, %997, %989
  br i1 %979, label %1028, label %1012

; <label>:1012:                                   ; preds = %1011
  %1013 = icmp eq i64 %980, 0
  br i1 %1013, label %1050, label %1014

; <label>:1014:                                   ; preds = %1012
  br label %1015

; <label>:1015:                                   ; preds = %1014, %1015
  %1016 = phi i8* [ %1026, %1015 ], [ %17, %1014 ]
  %1017 = phi i64 [ %1018, %1015 ], [ %980, %1014 ]
  %1018 = add i64 %1017, -1
  %1019 = tail call i32** @__ctype_tolower_loc() #1
  %1020 = load i32*, i32** %1019, align 8
  %1021 = load i8, i8* %1016, align 1
  %1022 = zext i8 %1021 to i64
  %1023 = getelementptr inbounds i32, i32* %1020, i64 %1022
  %1024 = load i32, i32* %1023, align 4
  %1025 = call i32 @fputc(i32 %1024, %struct._IO_FILE* %0) #11
  %1026 = getelementptr inbounds i8, i8* %1016, i64 1
  %1027 = icmp eq i64 %1018, 0
  br i1 %1027, label %1049, label %1015

; <label>:1028:                                   ; preds = %1011
  %1029 = icmp eq i8 %78, 0
  br i1 %1029, label %1046, label %1030

; <label>:1030:                                   ; preds = %1028
  %1031 = icmp eq i64 %980, 0
  br i1 %1031, label %1050, label %1032

; <label>:1032:                                   ; preds = %1030
  br label %1033

; <label>:1033:                                   ; preds = %1032, %1033
  %1034 = phi i8* [ %1044, %1033 ], [ %17, %1032 ]
  %1035 = phi i64 [ %1036, %1033 ], [ %980, %1032 ]
  %1036 = add i64 %1035, -1
  %1037 = tail call i32** @__ctype_toupper_loc() #1
  %1038 = load i32*, i32** %1037, align 8
  %1039 = load i8, i8* %1034, align 1
  %1040 = zext i8 %1039 to i64
  %1041 = getelementptr inbounds i32, i32* %1038, i64 %1040
  %1042 = load i32, i32* %1041, align 4
  %1043 = call i32 @fputc(i32 %1042, %struct._IO_FILE* %0) #11
  %1044 = getelementptr inbounds i8, i8* %1034, i64 1
  %1045 = icmp eq i64 %1036, 0
  br i1 %1045, label %1048, label %1033

; <label>:1046:                                   ; preds = %1028
  %1047 = call i64 @fwrite(i8* %17, i64 %980, i64 1, %struct._IO_FILE* %0)
  br label %1050

; <label>:1048:                                   ; preds = %1033
  br label %1050

; <label>:1049:                                   ; preds = %1015
  br label %1050

; <label>:1050:                                   ; preds = %1049, %1048, %1046, %988, %1012, %1030
  %1051 = add i64 %985, %50
  br label %1177

; <label>:1052:                                   ; preds = %127, %1056
  %1053 = phi i64 [ %1057, %1056 ], [ 1, %127 ]
  %1054 = getelementptr inbounds i8, i8* %125, i64 %1053
  %1055 = load i8, i8* %1054, align 1
  switch i8 %1055, label %1103 [
    i8 58, label %1056
    i8 122, label %1058
  ]

; <label>:1056:                                   ; preds = %1052
  %1057 = add i64 %1053, 1
  br label %1052

; <label>:1058:                                   ; preds = %1052
  br label %1059

; <label>:1059:                                   ; preds = %1058, %122
  %1060 = phi i64 [ 0, %122 ], [ %1053, %1058 ]
  %1061 = phi i8* [ %125, %122 ], [ %1054, %1058 ]
  %1062 = load i32, i32* %46, align 8
  %1063 = icmp slt i32 %1062, 0
  br i1 %1063, label %1177, label %1064

; <label>:1064:                                   ; preds = %1059
  %1065 = load i64, i64* %47, align 8
  %1066 = trunc i64 %1065 to i32
  %1067 = icmp slt i32 %1066, 0
  br i1 %1067, label %1073, label %1068

; <label>:1068:                                   ; preds = %1064
  %1069 = icmp eq i32 %1066, 0
  br i1 %1069, label %1070, label %1073

; <label>:1070:                                   ; preds = %1068
  %1071 = load i8, i8* %17, align 1
  %1072 = icmp eq i8 %1071, 45
  br label %1073

; <label>:1073:                                   ; preds = %1068, %1070, %1064
  %1074 = phi i1 [ true, %1064 ], [ false, %1068 ], [ %1072, %1070 ]
  %1075 = zext i1 %1074 to i8
  %1076 = sdiv i32 %1066, 60
  %1077 = sdiv i32 %1066, 3600
  %1078 = srem i32 %1076, 60
  %1079 = srem i32 %1066, 60
  switch i64 %1060, label %1095 [
    i64 0, label %1080
    i64 1, label %1083
    i64 2, label %1086
    i64 3, label %1091
  ]

; <label>:1080:                                   ; preds = %1073
  %1081 = mul nsw i32 %1077, 100
  %1082 = add nsw i32 %1081, %1078
  br label %1095

; <label>:1083:                                   ; preds = %1093, %1073
  %1084 = mul nsw i32 %1077, 100
  %1085 = add nsw i32 %1084, %1078
  br label %1095

; <label>:1086:                                   ; preds = %1091, %1073
  %1087 = mul nsw i32 %1077, 10000
  %1088 = mul nsw i32 %1078, 100
  %1089 = add i32 %1087, %1079
  %1090 = add i32 %1089, %1088
  br label %1095

; <label>:1091:                                   ; preds = %1073
  %1092 = icmp eq i32 %1079, 0
  br i1 %1092, label %1093, label %1086

; <label>:1093:                                   ; preds = %1091
  %1094 = icmp eq i32 %1078, 0
  br i1 %1094, label %1095, label %1083

; <label>:1095:                                   ; preds = %1073, %1093, %1086, %1083, %1080
  %1096 = phi i32 [ 74, %1086 ], [ 74, %1083 ], [ 74, %1080 ], [ 74, %1093 ], [ 24, %1073 ]
  %1097 = phi i32 [ 20, %1086 ], [ 4, %1083 ], [ 0, %1080 ], [ 0, %1093 ], [ %53, %1073 ]
  %1098 = phi i32 [ %1090, %1086 ], [ %1085, %1083 ], [ %1082, %1080 ], [ %1077, %1093 ], [ %52, %1073 ]
  %1099 = phi i32 [ 9, %1086 ], [ 6, %1083 ], [ 5, %1080 ], [ 3, %1093 ], [ 0, %1073 ]
  %1100 = trunc i32 %1096 to i7
  switch i7 %1100, label %1182 [
    i7 -54, label %366
    i7 24, label %1104
  ]

; <label>:1101:                                   ; preds = %122
  %1102 = getelementptr inbounds i8, i8* %125, i64 -1
  br label %1104

; <label>:1103:                                   ; preds = %1052
  br label %1104

; <label>:1104:                                   ; preds = %1103, %960, %128, %168, %173, %178, %182, %343, %679, %1101, %122, %956, %946, %866, %858, %814, %791, %711, %704, %700, %693, %691, %687, %685, %681, %349, %345, %341, %187, %1095
  %1105 = phi i8 [ %78, %122 ], [ %78, %1101 ], [ %78, %1095 ], [ %78, %956 ], [ %78, %946 ], [ %78, %866 ], [ %78, %858 ], [ %78, %814 ], [ %78, %791 ], [ %78, %711 ], [ %78, %704 ], [ %78, %700 ], [ %78, %693 ], [ %78, %691 ], [ %78, %687 ], [ %78, %685 ], [ %78, %681 ], [ %78, %679 ], [ %78, %349 ], [ %78, %345 ], [ %78, %343 ], [ %78, %341 ], [ %78, %187 ], [ %78, %182 ], [ %180, %178 ], [ %78, %173 ], [ %78, %168 ], [ %78, %128 ], [ %78, %960 ], [ %78, %1103 ]
  %1106 = phi i32 [ %53, %122 ], [ %53, %1101 ], [ %1097, %1095 ], [ %53, %956 ], [ %53, %946 ], [ %53, %866 ], [ %53, %858 ], [ %53, %814 ], [ %53, %791 ], [ %53, %711 ], [ %53, %704 ], [ %53, %700 ], [ %53, %693 ], [ %53, %691 ], [ %53, %687 ], [ %53, %685 ], [ %53, %681 ], [ %53, %679 ], [ %53, %349 ], [ %53, %345 ], [ %53, %343 ], [ %53, %341 ], [ %53, %187 ], [ %53, %182 ], [ %53, %178 ], [ %53, %173 ], [ %53, %168 ], [ %53, %128 ], [ %53, %960 ], [ %53, %1103 ]
  %1107 = phi i32 [ %52, %122 ], [ %52, %1101 ], [ %1098, %1095 ], [ %52, %956 ], [ %52, %946 ], [ %52, %866 ], [ %52, %858 ], [ %52, %814 ], [ %52, %791 ], [ %52, %711 ], [ %52, %704 ], [ %52, %700 ], [ %52, %693 ], [ %52, %691 ], [ %52, %687 ], [ %52, %685 ], [ %52, %681 ], [ %52, %679 ], [ %52, %349 ], [ %52, %345 ], [ %52, %343 ], [ %52, %341 ], [ %52, %187 ], [ %52, %182 ], [ %52, %178 ], [ %52, %173 ], [ %52, %168 ], [ %52, %128 ], [ %52, %960 ], [ %52, %1103 ]
  %1108 = phi i32 [ 0, %122 ], [ 0, %1101 ], [ %1099, %1095 ], [ 0, %956 ], [ 0, %946 ], [ 0, %866 ], [ 0, %858 ], [ 0, %814 ], [ 0, %791 ], [ 0, %711 ], [ 0, %704 ], [ 0, %700 ], [ 0, %693 ], [ 0, %691 ], [ 0, %687 ], [ 0, %685 ], [ 0, %681 ], [ 0, %679 ], [ 0, %349 ], [ 0, %345 ], [ 0, %343 ], [ 0, %341 ], [ 0, %187 ], [ 0, %182 ], [ 0, %178 ], [ 0, %173 ], [ 0, %168 ], [ 0, %128 ], [ 0, %960 ], [ 0, %1103 ]
  %1109 = phi i8* [ %125, %122 ], [ %1102, %1101 ], [ %1061, %1095 ], [ %125, %956 ], [ %125, %946 ], [ %125, %866 ], [ %125, %858 ], [ %125, %814 ], [ %125, %791 ], [ %125, %711 ], [ %125, %704 ], [ %125, %700 ], [ %125, %693 ], [ %125, %691 ], [ %125, %687 ], [ %125, %685 ], [ %125, %681 ], [ %125, %679 ], [ %125, %349 ], [ %125, %345 ], [ %125, %343 ], [ %125, %341 ], [ %125, %187 ], [ %125, %182 ], [ %125, %178 ], [ %125, %173 ], [ %125, %168 ], [ %125, %128 ], [ %125, %960 ], [ %125, %1103 ]
  br label %1110

; <label>:1110:                                   ; preds = %1110, %1104
  %1111 = phi i64 [ %1116, %1110 ], [ 1, %1104 ]
  %1112 = sub nsw i64 1, %1111
  %1113 = getelementptr inbounds i8, i8* %1109, i64 %1112
  %1114 = load i8, i8* %1113, align 1
  %1115 = icmp eq i8 %1114, 37
  %1116 = add nuw i64 %1111, 1
  br i1 %1115, label %1117, label %1110

; <label>:1117:                                   ; preds = %1110
  %1118 = shl i64 %1111, 32
  %1119 = ashr exact i64 %1118, 32
  %1120 = icmp sgt i32 %116, 0
  %1121 = select i1 %1120, i32 %116, i32 0
  %1122 = zext i32 %1121 to i64
  %1123 = icmp ult i64 %1119, %1122
  %1124 = select i1 %1123, i64 %1122, i64 %1119
  %1125 = xor i64 %50, -1
  %1126 = icmp ult i64 %1124, %1125
  br i1 %1126, label %1127, label %1175

; <label>:1127:                                   ; preds = %1117
  br i1 %27, label %1173, label %1128

; <label>:1128:                                   ; preds = %1127
  %1129 = icmp ne i32 %1108, 0
  %1130 = xor i1 %1123, true
  %1131 = or i1 %1129, %1130
  br i1 %1131, label %1153, label %1132

; <label>:1132:                                   ; preds = %1128
  %1133 = sext i32 %116 to i64
  %1134 = sub nsw i64 %1133, %1119
  %1135 = icmp eq i32 %70, 48
  %1136 = icmp ne i64 %1134, 0
  br i1 %1135, label %1139, label %1137

; <label>:1137:                                   ; preds = %1132
  br i1 %1136, label %1138, label %1153

; <label>:1138:                                   ; preds = %1137
  br label %1146

; <label>:1139:                                   ; preds = %1132
  br i1 %1136, label %1140, label %1153

; <label>:1140:                                   ; preds = %1139
  br label %1141

; <label>:1141:                                   ; preds = %1140, %1141
  %1142 = phi i64 [ %1144, %1141 ], [ 0, %1140 ]
  %1143 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %1144 = add nuw i64 %1142, 1
  %1145 = icmp eq i64 %1144, %1134
  br i1 %1145, label %1151, label %1141

; <label>:1146:                                   ; preds = %1138, %1146
  %1147 = phi i64 [ %1149, %1146 ], [ 0, %1138 ]
  %1148 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %1149 = add nuw i64 %1147, 1
  %1150 = icmp eq i64 %1149, %1134
  br i1 %1150, label %1152, label %1146

; <label>:1151:                                   ; preds = %1141
  br label %1153

; <label>:1152:                                   ; preds = %1146
  br label %1153

; <label>:1153:                                   ; preds = %1152, %1151, %1137, %1139, %1128
  %1154 = and i8 %1105, 1
  %1155 = icmp eq i8 %1154, 0
  br i1 %1155, label %1170, label %1156

; <label>:1156:                                   ; preds = %1153
  br label %1157

; <label>:1157:                                   ; preds = %1156, %1157
  %1158 = phi i8* [ %1168, %1157 ], [ %1113, %1156 ]
  %1159 = phi i64 [ %1160, %1157 ], [ %1119, %1156 ]
  %1160 = add i64 %1159, -1
  %1161 = tail call i32** @__ctype_toupper_loc() #1
  %1162 = load i32*, i32** %1161, align 8
  %1163 = load i8, i8* %1158, align 1
  %1164 = zext i8 %1163 to i64
  %1165 = getelementptr inbounds i32, i32* %1162, i64 %1164
  %1166 = load i32, i32* %1165, align 4
  %1167 = call i32 @fputc(i32 %1166, %struct._IO_FILE* %0) #11
  %1168 = getelementptr inbounds i8, i8* %1158, i64 1
  %1169 = icmp eq i64 %1160, 0
  br i1 %1169, label %1172, label %1157

; <label>:1170:                                   ; preds = %1153
  %1171 = call i64 @fwrite(i8* %1113, i64 %1119, i64 1, %struct._IO_FILE* %0)
  br label %1173

; <label>:1172:                                   ; preds = %1157
  br label %1173

; <label>:1173:                                   ; preds = %1172, %1170, %1127
  %1174 = add i64 %1124, %50
  br label %1177

; <label>:1175:                                   ; preds = %1117, %978, %817, %744, %618, %579, %524, %493, %520, %473, %432, %189, %130
  br label %1176

; <label>:1176:                                   ; preds = %1175, %326
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #11
  br label %1198

; <label>:1177:                                   ; preds = %1173, %1050, %851, %778, %677, %324, %225, %166, %1059
  %1178 = phi i32 [ %1106, %1173 ], [ %53, %1050 ], [ %53, %851 ], [ %53, %778 ], [ %414, %677 ], [ %232, %324 ], [ %53, %225 ], [ %53, %166 ], [ %53, %1059 ]
  %1179 = phi i32 [ %1107, %1173 ], [ %52, %1050 ], [ %52, %851 ], [ %52, %778 ], [ %417, %677 ], [ %233, %324 ], [ %52, %225 ], [ %52, %166 ], [ %52, %1059 ]
  %1180 = phi i8* [ %1109, %1173 ], [ %125, %1050 ], [ %125, %851 ], [ %125, %778 ], [ %420, %677 ], [ %236, %324 ], [ %125, %225 ], [ %125, %166 ], [ %1061, %1059 ]
  %1181 = phi i64 [ %1174, %1173 ], [ %1051, %1050 ], [ %852, %851 ], [ %779, %778 ], [ %678, %677 ], [ %325, %324 ], [ %226, %225 ], [ %167, %166 ], [ %50, %1059 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #11
  br label %1188

; <label>:1182:                                   ; preds = %64, %1095
  %1183 = phi i32 [ %1096, %1095 ], [ %68, %64 ]
  %1184 = phi i32 [ %1097, %1095 ], [ %53, %64 ]
  %1185 = phi i32 [ %1098, %1095 ], [ %52, %64 ]
  %1186 = phi i8* [ %1061, %1095 ], [ %51, %64 ]
  %1187 = phi i64 [ %50, %1095 ], [ %66, %64 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #11
  switch i32 %1183, label %1196 [
    i32 0, label %1188
    i32 4, label %1188
  ]

; <label>:1188:                                   ; preds = %1177, %1182, %1182
  %1189 = phi i64 [ %1181, %1177 ], [ %1187, %1182 ], [ %1187, %1182 ]
  %1190 = phi i8* [ %1180, %1177 ], [ %1186, %1182 ], [ %1186, %1182 ]
  %1191 = phi i32 [ %1179, %1177 ], [ %1185, %1182 ], [ %1185, %1182 ]
  %1192 = phi i32 [ %1178, %1177 ], [ %1184, %1182 ], [ %1184, %1182 ]
  %1193 = getelementptr inbounds i8, i8* %1190, i64 1
  %1194 = load i8, i8* %1193, align 1
  %1195 = icmp eq i8 %1194, 0
  br i1 %1195, label %1196, label %48

; <label>:1196:                                   ; preds = %1188, %1182
  %1197 = phi i64 [ 0, %1182 ], [ %1189, %1188 ]
  br label %1198

; <label>:1198:                                   ; preds = %1196, %6, %1176
  %1199 = phi i64 [ 0, %1176 ], [ 0, %6 ], [ %1197, %1196 ]
  ret i64 %1199
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @gettime(%struct.timespec*) local_unnamed_addr #6 {
  %2 = alloca %struct.timespec, align 8
  %3 = tail call i32 @clock_gettime(i32 0, %struct.timespec* %0) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #11
  %7 = call i32 @gettimeofday(%struct.timespec* nonnull %2, %struct.timezone* null) #11
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = mul nsw i64 %12, 1000
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  store i64 %13, i64* %14, align 8
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #11
  br label %15

; <label>:15:                                     ; preds = %1, %5
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

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
define i32 @yyparse(%struct.parser_control*) local_unnamed_addr #6 {
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i16], align 16
  %4 = alloca [20 x %union.YYSTYPE], align 16
  %5 = bitcast [20 x i16]* %3 to i8*
  call void @llvm.lifetime.start(i64 40, i8* nonnull %5) #11
  %6 = bitcast [20 x %union.YYSTYPE]* %4 to i8*
  call void @llvm.lifetime.start(i64 1120, i8* nonnull %6) #11
  %7 = getelementptr inbounds [20 x i16], [20 x i16]* %3, i64 0, i64 0
  %8 = getelementptr inbounds [20 x %union.YYSTYPE], [20 x %union.YYSTYPE]* %4, i64 0, i64 0
  store i16 0, i16* %7, align 16
  %9 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 11
  %10 = bitcast %struct.timespec* %9 to i8*
  %11 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 13
  %12 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 19
  %13 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 15
  %14 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 17
  %15 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 20
  %16 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 16
  %17 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 9
  %18 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 10
  %19 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 11, i32 0
  %20 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 18
  %24 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 6
  %25 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 5
  %26 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 4
  %27 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 3
  %28 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 2
  %29 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 1
  %30 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 0
  %31 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 14
  %32 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 30
  %35 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 7
  %36 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 8
  %37 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 22
  %38 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 6, i32 0
  %39 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 6, i32 1
  %40 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 6, i32 2
  %41 = bitcast i64* %19 to i8*
  %42 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 21
  %43 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 6
  %44 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 0
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 1
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 3
  %49 = bitcast i64* %18 to i8*
  %50 = bitcast i64* %19 to i8*
  %51 = bitcast i64* %18 to i8*
  %52 = bitcast i64* %19 to i8*
  %53 = bitcast i64* %19 to <2 x i64>*
  %54 = bitcast i64* %19 to <2 x i64>*
  %55 = bitcast i64* %26 to <2 x i64>*
  %56 = bitcast i64* %26 to <2 x i64>*
  %57 = bitcast i64* %28 to <2 x i64>*
  %58 = bitcast i64* %28 to <2 x i64>*
  %59 = bitcast i64* %30 to <2 x i64>*
  %60 = bitcast i64* %30 to <2 x i64>*
  %61 = bitcast i64* %26 to <2 x i64>*
  %62 = bitcast i64* %26 to <2 x i64>*
  %63 = bitcast i64* %28 to <2 x i64>*
  %64 = bitcast i64* %28 to <2 x i64>*
  %65 = bitcast i64* %30 to <2 x i64>*
  %66 = bitcast i64* %30 to <2 x i64>*
  %67 = bitcast i64* %26 to <2 x i64>*
  %68 = bitcast i64* %26 to <2 x i64>*
  %69 = bitcast i64* %28 to <2 x i64>*
  %70 = bitcast i64* %28 to <2 x i64>*
  %71 = bitcast i64* %30 to <2 x i64>*
  %72 = bitcast i64* %30 to <2 x i64>*
  %73 = bitcast i64* %26 to <2 x i64>*
  %74 = bitcast i64* %26 to <2 x i64>*
  %75 = bitcast i64* %28 to <2 x i64>*
  %76 = bitcast i64* %28 to <2 x i64>*
  %77 = bitcast i64* %30 to <2 x i64>*
  %78 = bitcast i64* %30 to <2 x i64>*
  %79 = bitcast %struct.textint* %43 to <2 x i64>*
  %80 = bitcast i64* %26 to <2 x i64>*
  %81 = bitcast i64* %26 to <2 x i64>*
  %82 = bitcast i64* %28 to <2 x i64>*
  %83 = bitcast i64* %28 to <2 x i64>*
  %84 = bitcast i64* %30 to <2 x i64>*
  %85 = bitcast i64* %30 to <2 x i64>*
  %86 = bitcast %struct.textint* %43 to <2 x i64>*
  br label %100

; <label>:87:                                     ; preds = %1403, %1407, %707
  %88 = phi i56 [ %729, %1403 ], [ %729, %1407 ], [ %688, %707 ]
  %89 = phi i8 [ %730, %1403 ], [ %730, %1407 ], [ %687, %707 ]
  %90 = phi i64 [ %731, %1403 ], [ %731, %1407 ], [ %686, %707 ]
  %91 = phi i64 [ %732, %1403 ], [ %732, %1407 ], [ %685, %707 ]
  %92 = phi %union.YYSTYPE* [ %1378, %1403 ], [ %1378, %1407 ], [ %708, %707 ]
  %93 = phi i64 [ %1376, %1403 ], [ %1376, %1407 ], [ %103, %707 ]
  %94 = phi i32 [ %1406, %1403 ], [ %1410, %1407 ], [ %702, %707 ]
  %95 = phi i32 [ %734, %1403 ], [ %734, %1407 ], [ -2, %707 ]
  %96 = add nsw i64 %93, 1
  %97 = getelementptr inbounds [20 x i16], [20 x i16]* %3, i64 0, i64 %96
  %98 = trunc i32 %94 to i16
  store i16 %98, i16* %97, align 2
  %99 = icmp slt i64 %96, 19
  br i1 %99, label %100, label %110

; <label>:100:                                    ; preds = %1, %87
  %101 = phi i32 [ -2, %1 ], [ %95, %87 ]
  %102 = phi i32 [ 0, %1 ], [ %94, %87 ]
  %103 = phi i64 [ 0, %1 ], [ %96, %87 ]
  %104 = phi %union.YYSTYPE* [ %8, %1 ], [ %92, %87 ]
  %105 = phi i64 [ 0, %1 ], [ %91, %87 ]
  %106 = phi i64 [ 0, %1 ], [ %90, %87 ]
  %107 = phi i8 [ 0, %1 ], [ %89, %87 ]
  %108 = phi i56 [ 0, %1 ], [ %88, %87 ]
  %109 = icmp eq i32 %102, 12
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %718, %87, %100
  %111 = phi i32 [ 2, %87 ], [ 0, %100 ], [ 1, %718 ]
  call void @llvm.lifetime.end(i64 1120, i8* nonnull %6) #11
  call void @llvm.lifetime.end(i64 40, i8* nonnull %5) #11
  ret i32 %111

; <label>:112:                                    ; preds = %100
  %113 = sext i32 %102 to i64
  %114 = getelementptr inbounds [114 x i8], [114 x i8]* @yypact, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i8 %115, -93
  br i1 %117, label %718, label %118

; <label>:118:                                    ; preds = %112
  %119 = icmp eq i32 %101, -2
  br i1 %119, label %120, label %665

; <label>:120:                                    ; preds = %118
  %121 = load i8*, i8** %44, align 8
  %122 = ptrtoint i8* %121 to i64
  br label %128

; <label>:123:                                    ; preds = %662
  %124 = ptrtoint i8* %656 to i64
  br label %125

; <label>:125:                                    ; preds = %123, %182
  %126 = phi i64 [ %183, %182 ], [ %124, %123 ]
  %127 = phi i8* [ %172, %182 ], [ %656, %123 ]
  br label %128

; <label>:128:                                    ; preds = %125, %120
  %129 = phi i64 [ %122, %120 ], [ %126, %125 ]
  %130 = phi i8* [ %121, %120 ], [ %127, %125 ]
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %132, -9
  %134 = icmp ult i32 %133, 24
  br i1 %134, label %135, label %158

; <label>:135:                                    ; preds = %128
  br label %136

; <label>:136:                                    ; preds = %135, %146
  %137 = phi i64 [ %152, %146 ], [ %129, %135 ]
  %138 = phi i8* [ %147, %146 ], [ %130, %135 ]
  %139 = phi i32 [ %150, %146 ], [ %133, %135 ]
  %140 = phi i32 [ %149, %146 ], [ %132, %135 ]
  %141 = phi i8 [ %148, %146 ], [ %131, %135 ]
  %142 = trunc i32 %139 to i24
  %143 = lshr i24 -8388577, %142
  %144 = and i24 %143, 1
  %145 = icmp eq i24 %144, 0
  br i1 %145, label %153, label %146

; <label>:146:                                    ; preds = %136
  %147 = getelementptr inbounds i8, i8* %138, i64 1
  store i8* %147, i8** %44, align 8
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 %149, -9
  %151 = icmp ult i32 %150, 24
  %152 = ptrtoint i8* %147 to i64
  br i1 %151, label %136, label %153

; <label>:153:                                    ; preds = %136, %146
  %154 = phi i64 [ %152, %146 ], [ %137, %136 ]
  %155 = phi i8* [ %147, %146 ], [ %138, %136 ]
  %156 = phi i8 [ %148, %146 ], [ %141, %136 ]
  %157 = phi i32 [ %149, %146 ], [ %140, %136 ]
  br label %158

; <label>:158:                                    ; preds = %153, %128
  %159 = phi i64 [ %129, %128 ], [ %154, %153 ]
  %160 = phi i8* [ %130, %128 ], [ %155, %153 ]
  %161 = phi i8 [ %131, %128 ], [ %156, %153 ]
  %162 = phi i32 [ %132, %128 ], [ %157, %153 ]
  %163 = add nsw i32 %162, -48
  %164 = icmp ult i32 %163, 10
  br i1 %164, label %166, label %165

; <label>:165:                                    ; preds = %158
  switch i8 %161, label %366 [
    i8 45, label %167
    i8 43, label %167
  ]

; <label>:166:                                    ; preds = %158
  switch i8 %161, label %186 [
    i8 45, label %167
    i8 43, label %167
  ]

; <label>:167:                                    ; preds = %166, %166, %165, %165
  %168 = icmp eq i8 %161, 45
  %169 = select i1 %168, i32 -1, i32 1
  br label %170

; <label>:170:                                    ; preds = %177, %167
  %171 = phi i8* [ %172, %177 ], [ %160, %167 ]
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8* %172, i8** %44, align 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = add nsw i32 %174, -9
  %176 = icmp ult i32 %175, 24
  br i1 %176, label %177, label %182

; <label>:177:                                    ; preds = %170
  %178 = trunc i32 %175 to i24
  %179 = lshr i24 -8388577, %178
  %180 = and i24 %179, 1
  %181 = icmp eq i24 %180, 0
  br i1 %181, label %182, label %170

; <label>:182:                                    ; preds = %177, %170
  %183 = ptrtoint i8* %172 to i64
  %184 = add nsw i32 %174, -48
  %185 = icmp ult i32 %184, 10
  br i1 %185, label %186, label %125

; <label>:186:                                    ; preds = %182, %166
  %187 = phi i64 [ %183, %182 ], [ %159, %166 ]
  %188 = phi i8* [ %172, %182 ], [ %160, %166 ]
  %189 = phi i32 [ %169, %182 ], [ 0, %166 ]
  %190 = phi i8 [ %173, %182 ], [ %161, %166 ]
  br label %191

; <label>:191:                                    ; preds = %214, %186
  %192 = phi i8* [ %188, %186 ], [ %209, %214 ]
  %193 = phi i64 [ 0, %186 ], [ %215, %214 ]
  %194 = phi i8 [ %190, %186 ], [ %212, %214 ]
  %195 = zext i8 %194 to i64
  %196 = add i64 %193, -48
  %197 = add i64 %196, %195
  %198 = icmp ult i64 %197, %193
  br i1 %198, label %208, label %199

; <label>:199:                                    ; preds = %191
  %200 = getelementptr inbounds i8, i8* %192, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 %202, -48
  %204 = icmp ult i32 %203, 10
  br i1 %204, label %205, label %208

; <label>:205:                                    ; preds = %199
  %206 = icmp ugt i64 %197, 1844674407370955161
  %207 = zext i1 %206 to i32
  br label %208

; <label>:208:                                    ; preds = %205, %199, %191
  %209 = phi i8* [ %192, %191 ], [ %200, %199 ], [ %200, %205 ]
  %210 = phi i64 [ %193, %191 ], [ %197, %199 ], [ %197, %205 ]
  %211 = phi i32 [ 1, %191 ], [ 8, %199 ], [ %207, %205 ]
  %212 = phi i8 [ %194, %191 ], [ %201, %199 ], [ %201, %205 ]
  %213 = trunc i32 %211 to i4
  switch i4 %213, label %672 [
    i4 0, label %214
    i4 -8, label %216
  ]

; <label>:214:                                    ; preds = %208
  %215 = mul i64 %210, 10
  br label %191

; <label>:216:                                    ; preds = %208
  switch i8 %212, label %351 [
    i8 46, label %217
    i8 44, label %217
  ]

; <label>:217:                                    ; preds = %216, %216
  %218 = getelementptr inbounds i8, i8* %209, i64 1
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = add nsw i32 %220, -48
  %222 = icmp ult i32 %221, 10
  br i1 %222, label %223, label %351

; <label>:223:                                    ; preds = %217
  %224 = icmp slt i32 %189, 0
  br i1 %224, label %225, label %228

; <label>:225:                                    ; preds = %223
  %226 = sub i64 0, %210
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %673, label %230

; <label>:228:                                    ; preds = %223
  %229 = icmp slt i64 %210, 0
  br i1 %229, label %673, label %230

; <label>:230:                                    ; preds = %228, %225
  %231 = phi i64 [ %226, %225 ], [ %210, %228 ]
  %232 = getelementptr inbounds i8, i8* %209, i64 2
  %233 = mul nsw i32 %221, 10
  %234 = load i8, i8* %232, align 1
  %235 = sext i8 %234 to i32
  %236 = add nsw i32 %235, -48
  %237 = icmp ult i32 %236, 10
  %238 = getelementptr inbounds i8, i8* %209, i64 3
  %239 = select i1 %237, i8* %238, i8* %232
  %240 = select i1 %237, i32 %236, i32 0
  %241 = add nsw i32 %240, %233
  %242 = mul nsw i32 %241, 10
  %243 = load i8, i8* %239, align 1
  %244 = sext i8 %243 to i32
  %245 = add nsw i32 %244, -48
  %246 = icmp ult i32 %245, 10
  %247 = getelementptr inbounds i8, i8* %239, i64 1
  %248 = select i1 %246, i8* %247, i8* %239
  %249 = select i1 %246, i32 %245, i32 0
  %250 = add nsw i32 %242, %249
  %251 = mul nsw i32 %250, 10
  %252 = load i8, i8* %248, align 1
  %253 = sext i8 %252 to i32
  %254 = add nsw i32 %253, -48
  %255 = icmp ult i32 %254, 10
  %256 = getelementptr inbounds i8, i8* %248, i64 1
  %257 = select i1 %255, i8* %256, i8* %248
  %258 = select i1 %255, i32 %254, i32 0
  %259 = add nsw i32 %251, %258
  %260 = mul nsw i32 %259, 10
  %261 = load i8, i8* %257, align 1
  %262 = sext i8 %261 to i32
  %263 = add nsw i32 %262, -48
  %264 = icmp ult i32 %263, 10
  %265 = getelementptr inbounds i8, i8* %257, i64 1
  %266 = select i1 %264, i8* %265, i8* %257
  %267 = select i1 %264, i32 %263, i32 0
  %268 = add nsw i32 %260, %267
  %269 = mul nsw i32 %268, 10
  %270 = load i8, i8* %266, align 1
  %271 = sext i8 %270 to i32
  %272 = add nsw i32 %271, -48
  %273 = icmp ult i32 %272, 10
  %274 = getelementptr inbounds i8, i8* %266, i64 1
  %275 = select i1 %273, i8* %274, i8* %266
  %276 = select i1 %273, i32 %272, i32 0
  %277 = add nsw i32 %269, %276
  %278 = mul nsw i32 %277, 10
  %279 = load i8, i8* %275, align 1
  %280 = sext i8 %279 to i32
  %281 = add nsw i32 %280, -48
  %282 = icmp ult i32 %281, 10
  %283 = getelementptr inbounds i8, i8* %275, i64 1
  %284 = select i1 %282, i8* %283, i8* %275
  %285 = select i1 %282, i32 %281, i32 0
  %286 = add nsw i32 %278, %285
  %287 = mul nsw i32 %286, 10
  %288 = load i8, i8* %284, align 1
  %289 = sext i8 %288 to i32
  %290 = add nsw i32 %289, -48
  %291 = icmp ult i32 %290, 10
  %292 = getelementptr inbounds i8, i8* %284, i64 1
  %293 = select i1 %291, i8* %292, i8* %284
  %294 = select i1 %291, i32 %290, i32 0
  %295 = add nsw i32 %287, %294
  %296 = mul nsw i32 %295, 10
  %297 = load i8, i8* %293, align 1
  %298 = sext i8 %297 to i32
  %299 = add nsw i32 %298, -48
  %300 = icmp ult i32 %299, 10
  %301 = getelementptr inbounds i8, i8* %293, i64 1
  %302 = select i1 %300, i8* %301, i8* %293
  %303 = select i1 %300, i32 %299, i32 0
  %304 = add nsw i32 %296, %303
  br i1 %224, label %305, label %312

; <label>:305:                                    ; preds = %230
  %306 = load i8, i8* %302, align 1
  %307 = sext i8 %306 to i32
  %308 = add nsw i32 %307, -48
  %309 = icmp ult i32 %308, 10
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %305
  br label %315

; <label>:311:                                    ; preds = %321
  br label %312

; <label>:312:                                    ; preds = %311, %319, %305, %230
  %313 = phi i8* [ %302, %230 ], [ %317, %319 ], [ %302, %305 ], [ %322, %311 ]
  %314 = phi i32 [ %304, %230 ], [ %320, %319 ], [ %304, %305 ], [ %304, %311 ]
  br label %327

; <label>:315:                                    ; preds = %310, %321
  %316 = phi i8 [ %323, %321 ], [ %306, %310 ]
  %317 = phi i8* [ %322, %321 ], [ %302, %310 ]
  %318 = icmp eq i8 %316, 48
  br i1 %318, label %321, label %319

; <label>:319:                                    ; preds = %315
  %320 = add nsw i32 %304, 1
  br label %312

; <label>:321:                                    ; preds = %315
  %322 = getelementptr inbounds i8, i8* %317, i64 1
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = add nsw i32 %324, -48
  %326 = icmp ult i32 %325, 10
  br i1 %326, label %315, label %311

; <label>:327:                                    ; preds = %327, %312
  %328 = phi i8* [ %333, %327 ], [ %313, %312 ]
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = add nsw i32 %330, -48
  %332 = icmp ult i32 %331, 10
  %333 = getelementptr inbounds i8, i8* %328, i64 1
  br i1 %332, label %327, label %334

; <label>:334:                                    ; preds = %327
  %335 = icmp ne i32 %314, 0
  %336 = and i1 %224, %335
  br i1 %336, label %337, label %342

; <label>:337:                                    ; preds = %334
  %338 = icmp slt i64 %231, 1
  br i1 %338, label %339, label %673

; <label>:339:                                    ; preds = %337
  %340 = add nsw i64 %231, -1
  %341 = sub nsw i32 1000000000, %314
  br label %342

; <label>:342:                                    ; preds = %339, %334
  %343 = phi i64 [ %340, %339 ], [ %231, %334 ]
  %344 = phi i32 [ %341, %339 ], [ %314, %334 ]
  %345 = trunc i64 %343 to i8
  %346 = lshr i64 %343, 8
  %347 = trunc i64 %346 to i56
  %348 = sext i32 %344 to i64
  store i8* %328, i8** %44, align 8
  %349 = icmp ne i32 %189, 0
  %350 = select i1 %349, i32 276, i32 277
  br label %673

; <label>:351:                                    ; preds = %217, %216
  %352 = icmp slt i32 %189, 0
  %353 = lshr i32 %189, 31
  %354 = trunc i32 %353 to i8
  br i1 %352, label %355, label %358

; <label>:355:                                    ; preds = %351
  %356 = sub i64 0, %210
  %357 = icmp sgt i64 %356, 0
  br i1 %357, label %673, label %360

; <label>:358:                                    ; preds = %351
  %359 = icmp slt i64 %210, 0
  br i1 %359, label %673, label %360

; <label>:360:                                    ; preds = %358, %355
  %361 = phi i64 [ %356, %355 ], [ %210, %358 ]
  %362 = ptrtoint i8* %209 to i64
  %363 = sub i64 %362, %187
  store i8* %209, i8** %44, align 8
  %364 = icmp ne i32 %189, 0
  %365 = select i1 %364, i32 274, i32 275
  br label %673

; <label>:366:                                    ; preds = %165
  %367 = add nsw i32 %162, -65
  %368 = icmp ult i32 %367, 58
  br i1 %368, label %369, label %646

; <label>:369:                                    ; preds = %366
  %370 = zext i32 %367 to i58
  %371 = lshr i58 -4227858433, %370
  %372 = and i58 %371, 1
  %373 = icmp eq i58 %372, 0
  br i1 %373, label %646, label %374

; <label>:374:                                    ; preds = %369
  call void @llvm.lifetime.start(i64 20, i8* nonnull %45) #11
  br label %375

; <label>:375:                                    ; preds = %396, %374
  %376 = phi i8* [ %160, %374 ], [ %386, %396 ]
  %377 = phi i8 [ %161, %374 ], [ %387, %396 ]
  %378 = phi i8* [ %45, %374 ], [ %385, %396 ]
  %379 = icmp ult i8* %378, %46
  br i1 %379, label %380, label %383

; <label>:380:                                    ; preds = %375
  %381 = getelementptr inbounds i8, i8* %378, i64 1
  store i8 %377, i8* %378, align 1
  %382 = load i8*, i8** %44, align 8
  br label %383

; <label>:383:                                    ; preds = %380, %375
  %384 = phi i8* [ %382, %380 ], [ %376, %375 ]
  %385 = phi i8* [ %381, %380 ], [ %378, %375 ]
  %386 = getelementptr inbounds i8, i8* %384, i64 1
  store i8* %386, i8** %44, align 8
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = add nsw i32 %388, -65
  %390 = icmp ult i32 %389, 58
  br i1 %390, label %391, label %396

; <label>:391:                                    ; preds = %383
  %392 = zext i32 %389 to i58
  %393 = lshr i58 -4227858433, %392
  %394 = and i58 %393, 1
  %395 = icmp ne i58 %394, 0
  br label %396

; <label>:396:                                    ; preds = %391, %383
  %397 = phi i1 [ %395, %391 ], [ false, %383 ]
  %398 = icmp eq i8 %387, 46
  %399 = or i1 %398, %397
  br i1 %399, label %375, label %400

; <label>:400:                                    ; preds = %396
  store i8 0, i8* %385, align 1
  %401 = load i8, i8* %45, align 16
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %416, label %403

; <label>:403:                                    ; preds = %400
  br label %404

; <label>:404:                                    ; preds = %403, %404
  %405 = phi i8 [ %413, %404 ], [ %401, %403 ]
  %406 = phi i8* [ %412, %404 ], [ %45, %403 ]
  %407 = zext i8 %405 to i32
  %408 = add nsw i32 %407, -97
  %409 = icmp ult i32 %408, 26
  %410 = add i8 %405, -32
  %411 = select i1 %409, i8 %410, i8 %405
  store i8 %411, i8* %406, align 1
  %412 = getelementptr inbounds i8, i8* %406, i64 1
  %413 = load i8, i8* %412, align 1
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %404

; <label>:415:                                    ; preds = %404
  br label %416

; <label>:416:                                    ; preds = %415, %400
  %417 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0)) #11
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %633, label %419

; <label>:419:                                    ; preds = %416
  %420 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0)) #11
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %633, label %615

; <label>:422:                                    ; preds = %621
  %423 = load i8, i8* %48, align 1
  %424 = icmp eq i8 %423, 46
  br label %426

; <label>:425:                                    ; preds = %621
  br label %426

; <label>:426:                                    ; preds = %621, %425, %422
  %427 = phi i1 [ true, %621 ], [ %424, %422 ], [ false, %425 ]
  br label %428

; <label>:428:                                    ; preds = %438, %426
  %429 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0), %426 ], [ %441, %438 ]
  %430 = phi %struct.table* [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 0), %426 ], [ %439, %438 ]
  br i1 %427, label %431, label %433

; <label>:431:                                    ; preds = %428
  %432 = call i32 @strncmp(i8* nonnull %45, i8* nonnull %429, i64 3) #14
  br label %435

; <label>:433:                                    ; preds = %428
  %434 = call i32 @strcmp(i8* nonnull %45, i8* nonnull %429) #11
  br label %435

; <label>:435:                                    ; preds = %433, %431
  %436 = phi i32 [ %432, %431 ], [ %434, %433 ]
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %632, label %438

; <label>:438:                                    ; preds = %435
  %439 = getelementptr inbounds %struct.table, %struct.table* %430, i64 1
  %440 = getelementptr inbounds %struct.table, %struct.table* %439, i64 0, i32 0
  %441 = load i8*, i8** %440, align 8
  %442 = icmp eq i8* %441, null
  br i1 %442, label %443, label %428

; <label>:443:                                    ; preds = %438
  %444 = call fastcc %struct.table* @lookup_zone(%struct.parser_control* %0, i8* nonnull %45) #14
  %445 = icmp eq %struct.table* %444, null
  br i1 %445, label %446, label %633

; <label>:446:                                    ; preds = %443
  %447 = call i32 @strcmp(i8* nonnull %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i64 0, i64 0)) #11
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %633, label %449

; <label>:449:                                    ; preds = %446
  %450 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.176, i64 0, i64 0)) #11
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %633, label %452

; <label>:452:                                    ; preds = %449
  %453 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i64 0, i64 0)) #11
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %633, label %586

; <label>:455:                                    ; preds = %610
  store i8 0, i8* %612, align 1
  %456 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.176, i64 0, i64 0)) #11
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %633, label %458

; <label>:458:                                    ; preds = %455
  %459 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i64 0, i64 0)) #11
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %633, label %561

; <label>:461:                                    ; preds = %610, %585
  %462 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i64 0, i64 0)) #11
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %633, label %464

; <label>:464:                                    ; preds = %461
  %465 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i64 0, i64 0)) #11
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %633, label %504

; <label>:467:                                    ; preds = %558
  %468 = add i8 %560, -65
  %469 = icmp ult i8 %468, 26
  br i1 %469, label %499, label %470

; <label>:470:                                    ; preds = %558, %467
  %471 = icmp eq i8 %560, 0
  br i1 %471, label %627, label %472

; <label>:472:                                    ; preds = %499, %470
  %473 = icmp eq i8 %560, 46
  %474 = zext i1 %473 to i8
  %475 = select i1 %473, i8* %45, i8* %47
  %476 = load i8, i8* %47, align 1
  store i8 %476, i8* %475, align 1
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %492, label %478

; <label>:478:                                    ; preds = %472
  br label %479

; <label>:479:                                    ; preds = %478, %479
  %480 = phi i8* [ %488, %479 ], [ %47, %478 ]
  %481 = phi i8* [ %487, %479 ], [ %475, %478 ]
  %482 = phi i8 [ %486, %479 ], [ %474, %478 ]
  %483 = load i8, i8* %480, align 1
  %484 = icmp eq i8 %483, 46
  %485 = getelementptr inbounds i8, i8* %481, i64 1
  %486 = select i1 %484, i8 1, i8 %482
  %487 = select i1 %484, i8* %481, i8* %485
  %488 = getelementptr inbounds i8, i8* %480, i64 1
  %489 = load i8, i8* %488, align 1
  store i8 %489, i8* %487, align 1
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %491, label %479

; <label>:491:                                    ; preds = %479
  br label %492

; <label>:492:                                    ; preds = %491, %472
  %493 = phi i8 [ %474, %472 ], [ %486, %491 ]
  %494 = and i8 %493, 1
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %627, label %496

; <label>:496:                                    ; preds = %492
  %497 = call fastcc %struct.table* @lookup_zone(%struct.parser_control* %0, i8* nonnull %45) #14
  %498 = icmp eq %struct.table* %497, null
  br i1 %498, label %627, label %633

; <label>:499:                                    ; preds = %467
  %500 = zext i8 %468 to i32
  %501 = lshr i32 67108351, %500
  %502 = and i32 %501, 1
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %472, label %623

; <label>:504:                                    ; preds = %464
  %505 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i64 0, i64 0)) #11
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %633, label %507

; <label>:507:                                    ; preds = %504
  %508 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.189, i64 0, i64 0)) #11
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %633, label %510

; <label>:510:                                    ; preds = %507
  %511 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.190, i64 0, i64 0)) #11
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %633, label %513

; <label>:513:                                    ; preds = %510
  %514 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.191, i64 0, i64 0)) #11
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %633, label %516

; <label>:516:                                    ; preds = %513
  %517 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0)) #11
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %633, label %519

; <label>:519:                                    ; preds = %516
  %520 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.193, i64 0, i64 0)) #11
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %633, label %522

; <label>:522:                                    ; preds = %519
  %523 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i64 0, i64 0)) #11
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %633, label %525

; <label>:525:                                    ; preds = %522
  %526 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i64 0, i64 0)) #11
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %633, label %528

; <label>:528:                                    ; preds = %525
  %529 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.196, i64 0, i64 0)) #11
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %633, label %531

; <label>:531:                                    ; preds = %528
  %532 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i64 0, i64 0)) #11
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %633, label %534

; <label>:534:                                    ; preds = %531
  %535 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i64 0, i64 0)) #11
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %633, label %537

; <label>:537:                                    ; preds = %534
  %538 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.199, i64 0, i64 0)) #11
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %633, label %540

; <label>:540:                                    ; preds = %537
  %541 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i64 0, i64 0)) #11
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %633, label %543

; <label>:543:                                    ; preds = %540
  %544 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i64 0, i64 0)) #11
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %633, label %546

; <label>:546:                                    ; preds = %543
  %547 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i64 0, i64 0)) #11
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %633, label %549

; <label>:549:                                    ; preds = %546
  %550 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.203, i64 0, i64 0)) #11
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %633, label %552

; <label>:552:                                    ; preds = %549
  %553 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i64 0, i64 0)) #11
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %633, label %555

; <label>:555:                                    ; preds = %552
  %556 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.205, i64 0, i64 0)) #11
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %633, label %558

; <label>:558:                                    ; preds = %555
  %559 = icmp eq i64 %622, 1
  %560 = load i8, i8* %45, align 16
  br i1 %559, label %467, label %470

; <label>:561:                                    ; preds = %458
  %562 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i64 0, i64 0)) #11
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %633, label %564

; <label>:564:                                    ; preds = %561
  %565 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i64 0, i64 0)) #11
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %633, label %567

; <label>:567:                                    ; preds = %564
  %568 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i64 0, i64 0)) #11
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %633, label %570

; <label>:570:                                    ; preds = %567
  %571 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i64 0, i64 0)) #11
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %633, label %573

; <label>:573:                                    ; preds = %570
  %574 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i64 0, i64 0)) #11
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %633, label %576

; <label>:576:                                    ; preds = %573
  %577 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.183, i64 0, i64 0)) #11
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %633, label %579

; <label>:579:                                    ; preds = %576
  %580 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i64 0, i64 0)) #11
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %633, label %582

; <label>:582:                                    ; preds = %579
  %583 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i64 0, i64 0)) #11
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %633, label %585

; <label>:585:                                    ; preds = %582
  store i8 83, i8* %612, align 1
  br label %461

; <label>:586:                                    ; preds = %452
  %587 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i64 0, i64 0)) #11
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %633, label %589

; <label>:589:                                    ; preds = %586
  %590 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i64 0, i64 0)) #11
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %633, label %592

; <label>:592:                                    ; preds = %589
  %593 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i64 0, i64 0)) #11
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %633, label %595

; <label>:595:                                    ; preds = %592
  %596 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i64 0, i64 0)) #11
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %633, label %598

; <label>:598:                                    ; preds = %595
  %599 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i64 0, i64 0)) #11
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %633, label %601

; <label>:601:                                    ; preds = %598
  %602 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.183, i64 0, i64 0)) #11
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %633, label %604

; <label>:604:                                    ; preds = %601
  %605 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i64 0, i64 0)) #11
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %633, label %607

; <label>:607:                                    ; preds = %604
  %608 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i64 0, i64 0)) #11
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %633, label %610

; <label>:610:                                    ; preds = %607
  %611 = add i64 %622, -1
  %612 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 %611
  %613 = load i8, i8* %612, align 1
  %614 = icmp eq i8 %613, 83
  br i1 %614, label %455, label %461

; <label>:615:                                    ; preds = %419
  %616 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0)) #11
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %633, label %618

; <label>:618:                                    ; preds = %615
  %619 = call i32 @strcmp(i8* nonnull %45, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0)) #11
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %633, label %621

; <label>:621:                                    ; preds = %618
  %622 = call i64 @strlen(i8* nonnull %45) #14
  switch i64 %622, label %425 [
    i64 3, label %426
    i64 4, label %422
  ]

; <label>:623:                                    ; preds = %499
  %624 = sext i8 %468 to i64
  %625 = getelementptr inbounds [26 x %struct.table*], [26 x %struct.table*]* @switch.table, i64 0, i64 %624
  %626 = load %struct.table*, %struct.table** %625, align 8
  br label %633

; <label>:627:                                    ; preds = %496, %492, %470
  %628 = load i8, i8* %37, align 8
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %642, label %630

; <label>:630:                                    ; preds = %627
  %631 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.96, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %631, i8* nonnull %45) #11
  br label %642

; <label>:632:                                    ; preds = %435
  br label %633

; <label>:633:                                    ; preds = %632, %623, %618, %615, %607, %604, %601, %598, %595, %592, %589, %586, %582, %579, %576, %573, %570, %567, %564, %561, %555, %552, %549, %546, %543, %540, %537, %534, %531, %528, %525, %522, %519, %516, %513, %510, %507, %504, %496, %464, %461, %458, %455, %452, %449, %446, %443, %419, %416
  %634 = phi %struct.table* [ %626, %623 ], [ getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 3), %618 ], [ getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 2), %615 ], [ getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 1), %419 ], [ getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 0), %416 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 9), %607 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 8), %604 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 7), %601 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 6), %598 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 5), %595 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 4), %592 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 3), %589 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 2), %586 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 1), %452 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 0), %449 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 9), %582 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 8), %579 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 7), %576 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 6), %573 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 5), %570 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 4), %567 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 3), %564 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 2), %561 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 1), %458 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 0), %455 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 19), %555 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 18), %552 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 17), %549 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 16), %546 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 15), %543 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 14), %540 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 13), %537 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 12), %534 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 11), %531 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 10), %528 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 9), %525 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 8), %522 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 7), %519 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 6), %516 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 5), %513 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 4), %510 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 3), %507 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 2), %504 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 1), %464 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 0), %461 ], [ %497, %496 ], [ getelementptr inbounds ([1 x %struct.table], [1 x %struct.table]* @dst_table, i64 0, i64 0), %446 ], [ %444, %443 ], [ %430, %632 ]
  %635 = getelementptr inbounds %struct.table, %struct.table* %634, i64 0, i32 2
  %636 = load i32, i32* %635, align 4
  %637 = trunc i32 %636 to i8
  %638 = ashr i32 %636, 8
  %639 = sext i32 %638 to i56
  %640 = getelementptr inbounds %struct.table, %struct.table* %634, i64 0, i32 1
  %641 = load i32, i32* %640, align 8
  br label %642

; <label>:642:                                    ; preds = %633, %630, %627
  %643 = phi i56 [ %639, %633 ], [ %108, %627 ], [ %108, %630 ]
  %644 = phi i8 [ %637, %633 ], [ %107, %627 ], [ %107, %630 ]
  %645 = phi i32 [ %641, %633 ], [ 63, %627 ], [ 63, %630 ]
  call void @llvm.lifetime.end(i64 20, i8* nonnull %45) #11
  br label %665

; <label>:646:                                    ; preds = %369, %366
  %647 = icmp eq i8 %161, 40
  br i1 %647, label %648, label %649

; <label>:648:                                    ; preds = %646
  br label %653

; <label>:649:                                    ; preds = %646
  %650 = getelementptr inbounds i8, i8* %160, i64 1
  store i8* %650, i8** %44, align 8
  %651 = load i8, i8* %160, align 1
  %652 = zext i8 %651 to i32
  br label %665

; <label>:653:                                    ; preds = %648, %662
  %654 = phi i8* [ %656, %662 ], [ %160, %648 ]
  %655 = phi i64 [ %663, %662 ], [ 0, %648 ]
  %656 = getelementptr inbounds i8, i8* %654, i64 1
  store i8* %656, i8** %44, align 8
  %657 = load i8, i8* %654, align 1
  switch i8 %657, label %662 [
    i8 0, label %683
    i8 40, label %658
    i8 41, label %660
  ]

; <label>:658:                                    ; preds = %653
  %659 = add i64 %655, 1
  br label %662

; <label>:660:                                    ; preds = %653
  %661 = add i64 %655, -1
  br label %662

; <label>:662:                                    ; preds = %660, %658, %653
  %663 = phi i64 [ %659, %658 ], [ %661, %660 ], [ %655, %653 ]
  %664 = icmp eq i64 %663, 0
  br i1 %664, label %123, label %653

; <label>:665:                                    ; preds = %649, %642, %118
  %666 = phi i56 [ %108, %118 ], [ %108, %649 ], [ %643, %642 ]
  %667 = phi i8 [ %107, %118 ], [ %107, %649 ], [ %644, %642 ]
  %668 = phi i32 [ %101, %118 ], [ %652, %649 ], [ %645, %642 ]
  %669 = icmp slt i32 %668, 1
  br i1 %669, label %684, label %670

; <label>:670:                                    ; preds = %665
  %671 = icmp ult i32 %668, 278
  br i1 %671, label %673, label %684

; <label>:672:                                    ; preds = %208
  br label %673

; <label>:673:                                    ; preds = %672, %358, %355, %337, %228, %225, %342, %360, %670
  %674 = phi i56 [ %666, %670 ], [ %108, %228 ], [ %108, %337 ], [ %347, %342 ], [ %108, %225 ], [ %108, %358 ], [ %108, %360 ], [ %108, %355 ], [ %108, %672 ]
  %675 = phi i8 [ %667, %670 ], [ %107, %228 ], [ %107, %337 ], [ %345, %342 ], [ %107, %225 ], [ %354, %358 ], [ %354, %360 ], [ %354, %355 ], [ %107, %672 ]
  %676 = phi i64 [ %106, %670 ], [ %106, %228 ], [ %106, %337 ], [ %106, %342 ], [ %106, %225 ], [ %106, %358 ], [ %363, %360 ], [ %106, %355 ], [ %106, %672 ]
  %677 = phi i64 [ %105, %670 ], [ %105, %228 ], [ %105, %337 ], [ %348, %342 ], [ %105, %225 ], [ %210, %358 ], [ %361, %360 ], [ %356, %355 ], [ %105, %672 ]
  %678 = phi i32 [ %668, %670 ], [ 63, %228 ], [ 63, %337 ], [ %350, %342 ], [ 63, %225 ], [ 63, %358 ], [ %365, %360 ], [ 63, %355 ], [ 63, %672 ]
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [278 x i8], [278 x i8]* @yytranslate, i64 0, i64 %679
  %681 = load i8, i8* %680, align 1
  %682 = zext i8 %681 to i32
  br label %684

; <label>:683:                                    ; preds = %653
  br label %684

; <label>:684:                                    ; preds = %683, %673, %670, %665
  %685 = phi i64 [ %105, %665 ], [ %677, %673 ], [ %105, %670 ], [ %105, %683 ]
  %686 = phi i64 [ %106, %665 ], [ %676, %673 ], [ %106, %670 ], [ %106, %683 ]
  %687 = phi i8 [ %667, %665 ], [ %675, %673 ], [ %667, %670 ], [ %107, %683 ]
  %688 = phi i56 [ %666, %665 ], [ %674, %673 ], [ %666, %670 ], [ %108, %683 ]
  %689 = phi i32 [ 0, %665 ], [ %682, %673 ], [ 2, %670 ], [ 0, %683 ]
  %690 = phi i32 [ 0, %665 ], [ %678, %673 ], [ %668, %670 ], [ 0, %683 ]
  %691 = add nsw i32 %689, %116
  %692 = icmp ugt i32 %691, 112
  br i1 %692, label %718, label %693

; <label>:693:                                    ; preds = %684
  %694 = sext i32 %691 to i64
  %695 = getelementptr inbounds [113 x i8], [113 x i8]* @yycheck, i64 0, i64 %694
  %696 = load i8, i8* %695, align 1
  %697 = sext i8 %696 to i32
  %698 = icmp eq i32 %697, %689
  br i1 %698, label %699, label %718

; <label>:699:                                    ; preds = %693
  %700 = getelementptr inbounds [113 x i8], [113 x i8]* @yytable, i64 0, i64 %694
  %701 = load i8, i8* %700, align 1
  %702 = zext i8 %701 to i32
  %703 = or i64 %694, 4
  %704 = icmp eq i64 %703, 111
  br i1 %704, label %705, label %707

; <label>:705:                                    ; preds = %699
  %706 = sub nsw i32 0, %702
  br label %728

; <label>:707:                                    ; preds = %699
  %708 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 1
  %709 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 1, i32 0, i32 0
  %710 = zext i56 %688 to i64
  %711 = shl nuw i64 %710, 8
  %712 = zext i8 %687 to i64
  %713 = or i64 %711, %712
  store i64 %713, i64* %709, align 8
  %714 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 1, i32 0, i32 1
  store i64 %685, i64* %714, align 8
  %715 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 1, i32 0, i32 2
  store i64 %686, i64* %715, align 8
  %716 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 1, i32 0, i32 3
  %717 = bitcast i64* %716 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %717, i8* nonnull bitcast (i64* getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyparse.yyval_default, i64 0, i32 0, i32 3) to i8*), i64 32, i32 8, i1 false)
  br label %87

; <label>:718:                                    ; preds = %693, %684, %112
  %719 = phi i56 [ %108, %112 ], [ %688, %684 ], [ %688, %693 ]
  %720 = phi i8 [ %107, %112 ], [ %687, %684 ], [ %687, %693 ]
  %721 = phi i64 [ %106, %112 ], [ %686, %684 ], [ %686, %693 ]
  %722 = phi i64 [ %105, %112 ], [ %685, %684 ], [ %685, %693 ]
  %723 = phi i32 [ %101, %112 ], [ %690, %684 ], [ %690, %693 ]
  %724 = getelementptr inbounds [114 x i8], [114 x i8]* @yydefact, i64 0, i64 %113
  %725 = load i8, i8* %724, align 1
  %726 = zext i8 %725 to i32
  %727 = icmp eq i8 %725, 0
  br i1 %727, label %110, label %728

; <label>:728:                                    ; preds = %718, %705
  %729 = phi i56 [ %719, %718 ], [ %688, %705 ]
  %730 = phi i8 [ %720, %718 ], [ %687, %705 ]
  %731 = phi i64 [ %721, %718 ], [ %686, %705 ]
  %732 = phi i64 [ %722, %718 ], [ %685, %705 ]
  %733 = phi i32 [ %726, %718 ], [ %706, %705 ]
  %734 = phi i32 [ %723, %718 ], [ %690, %705 ]
  %735 = sext i32 %733 to i64
  %736 = getelementptr inbounds [92 x i8], [92 x i8]* @yyr2, i64 0, i64 %735
  %737 = load i8, i8* %736, align 1
  %738 = zext i8 %737 to i64
  %739 = sub nsw i64 1, %738
  %740 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 %739, i32 0, i32 0
  %741 = load i64, i64* %740, align 8
  %742 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 %739, i32 0, i32 1
  %743 = load i64, i64* %742, align 8
  %744 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 %739, i32 0, i32 2
  %745 = load i64, i64* %744, align 8
  %746 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 %739, i32 0, i32 3
  %747 = load i64, i64* %746, align 8
  %748 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 %739, i32 0, i32 4
  %749 = load i64, i64* %748, align 8
  %750 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 %739, i32 0, i32 5
  %751 = load i64, i64* %750, align 8
  %752 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 %739, i32 0, i32 6
  %753 = load i64, i64* %752, align 8
  switch i32 %733, label %1366 [
    i32 4, label %754
    i32 7, label %757
    i32 8, label %763
    i32 9, label %767
    i32 10, label %771
    i32 11, label %775
    i32 12, label %779
    i32 13, label %783
    i32 14, label %785
    i32 15, label %787
    i32 18, label %789
    i32 19, label %795
    i32 20, label %803
    i32 22, label %814
    i32 23, label %817
    i32 24, label %822
    i32 27, label %830
    i32 28, label %868
    i32 29, label %876
    i32 30, label %883
    i32 31, label %886
    i32 32, label %887
    i32 33, label %909
    i32 34, label %929
    i32 35, label %969
    i32 36, label %973
    i32 37, label %977
    i32 38, label %981
    i32 39, label %985
    i32 40, label %991
    i32 41, label %997
    i32 42, label %1002
    i32 43, label %1034
    i32 44, label %1044
    i32 45, label %1055
    i32 46, label %1060
    i32 47, label %1066
    i32 48, label %1071
    i32 50, label %1077
    i32 51, label %1086
    i32 52, label %1126
    i32 53, label %1145
    i32 54, label %1164
    i32 55, label %1167
    i32 56, label %1170
    i32 57, label %1171
    i32 58, label %1174
    i32 59, label %1177
    i32 60, label %1178
    i32 61, label %1184
    i32 62, label %1190
    i32 63, label %1193
    i32 64, label %1196
    i32 65, label %1199
    i32 66, label %1200
    i32 67, label %1203
    i32 68, label %1206
    i32 69, label %1207
    i32 70, label %1210
    i32 71, label %1213
    i32 72, label %1218
    i32 73, label %1223
    i32 75, label %1224
    i32 76, label %1227
    i32 77, label %1230
    i32 78, label %1236
    i32 79, label %1239
    i32 80, label %1242
    i32 81, label %1245
    i32 85, label %1248
    i32 87, label %1251
    i32 88, label %1254
    i32 89, label %1298
    i32 90, label %1362
    i32 91, label %1363
  ]

; <label>:754:                                    ; preds = %728
  %755 = bitcast %union.YYSTYPE* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %755, i64 16, i32 8, i1 false)
  store i8 1, i8* %11, align 8
  %756 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_current_time(i8* %756, %struct.parser_control* %0)
  br label %1366

; <label>:757:                                    ; preds = %728
  %758 = load i64, i64* %12, align 8
  %759 = add i64 %758, 1
  store i64 %759, i64* %12, align 8
  %760 = load i64, i64* %13, align 8
  %761 = add i64 %760, 1
  store i64 %761, i64* %13, align 8
  %762 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.103, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_current_time(i8* %762, %struct.parser_control* %0)
  br label %1366

; <label>:763:                                    ; preds = %728
  %764 = load i64, i64* %12, align 8
  %765 = add i64 %764, 1
  store i64 %765, i64* %12, align 8
  %766 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.104, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_current_time(i8* %766, %struct.parser_control* %0)
  br label %1366

; <label>:767:                                    ; preds = %728
  %768 = load i64, i64* %14, align 8
  %769 = add i64 %768, 1
  store i64 %769, i64* %14, align 8
  %770 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.105, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_current_time(i8* %770, %struct.parser_control* %0)
  br label %1366

; <label>:771:                                    ; preds = %728
  %772 = load i64, i64* %15, align 8
  %773 = add i64 %772, 1
  store i64 %773, i64* %15, align 8
  %774 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.106, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_current_time(i8* %774, %struct.parser_control* %0)
  br label %1366

; <label>:775:                                    ; preds = %728
  %776 = load i64, i64* %13, align 8
  %777 = add i64 %776, 1
  store i64 %777, i64* %13, align 8
  %778 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.107, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_current_time(i8* %778, %struct.parser_control* %0)
  br label %1366

; <label>:779:                                    ; preds = %728
  %780 = load i64, i64* %16, align 8
  %781 = add i64 %780, 1
  store i64 %781, i64* %16, align 8
  %782 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.108, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_current_time(i8* %782, %struct.parser_control* %0)
  br label %1366

; <label>:783:                                    ; preds = %728
  %784 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_relative_time(i8* %784, %struct.parser_control* %0)
  br label %1366

; <label>:785:                                    ; preds = %728
  %786 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.110, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_current_time(i8* %786, %struct.parser_control* %0)
  br label %1366

; <label>:787:                                    ; preds = %728
  %788 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.111, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_relative_time(i8* %788, %struct.parser_control* %0)
  br label %1366

; <label>:789:                                    ; preds = %728
  %790 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %17, align 8
  %792 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %49, i8 0, i64 24, i32 8, i1 false)
  %793 = load i64, i64* %792, align 8
  %794 = trunc i64 %793 to i32
  store i32 %794, i32* %20, align 8
  br label %1366

; <label>:795:                                    ; preds = %728
  %796 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -3, i32 0, i32 1
  %797 = load i64, i64* %796, align 8
  %798 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %799 = load i64, i64* %798, align 8
  store i64 %797, i64* %17, align 8
  store i64 %799, i64* %18, align 8
  %800 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 16, i32 8, i1 false)
  %801 = load i64, i64* %800, align 8
  %802 = trunc i64 %801 to i32
  store i32 %802, i32* %20, align 8
  br label %1366

; <label>:803:                                    ; preds = %728
  %804 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -5, i32 0, i32 1
  %805 = load i64, i64* %804, align 8
  %806 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -3, i32 0, i32 1
  %807 = load i64, i64* %806, align 8
  %808 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %809 = bitcast i64* %808 to <2 x i64>*
  %810 = load <2 x i64>, <2 x i64>* %809, align 8
  store i64 %805, i64* %17, align 8
  store i64 %807, i64* %18, align 8
  store <2 x i64> %810, <2 x i64>* %53, align 8
  %811 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %812 = load i64, i64* %811, align 8
  %813 = trunc i64 %812 to i32
  store i32 %813, i32* %20, align 8
  br label %1366

; <label>:814:                                    ; preds = %728
  %815 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %17, align 8
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 24, i32 8, i1 false)
  store i32 2, i32* %20, align 8
  br label %1366

; <label>:817:                                    ; preds = %728
  %818 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -3, i32 0, i32 1
  %819 = load i64, i64* %818, align 8
  %820 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %821 = load i64, i64* %820, align 8
  store i64 %819, i64* %17, align 8
  store i64 %821, i64* %18, align 8
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 16, i32 8, i1 false)
  store i32 2, i32* %20, align 8
  br label %1366

; <label>:822:                                    ; preds = %728
  %823 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -5, i32 0, i32 1
  %824 = load i64, i64* %823, align 8
  %825 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -3, i32 0, i32 1
  %826 = load i64, i64* %825, align 8
  %827 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %828 = bitcast i64* %827 to <2 x i64>*
  %829 = load <2 x i64>, <2 x i64>* %828, align 8
  store i64 %824, i64* %17, align 8
  store i64 %826, i64* %18, align 8
  store <2 x i64> %829, <2 x i64>* %54, align 8
  store i32 2, i32* %20, align 8
  br label %1366

; <label>:830:                                    ; preds = %728
  %831 = load i64, i64* %15, align 8
  %832 = add i64 %831, 1
  store i64 %832, i64* %15, align 8
  %833 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %834 = load i64, i64* %833, align 8
  %835 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %836 = load i64, i64* %835, align 1
  %837 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 2
  %838 = load i64, i64* %837, align 1
  %839 = icmp ult i64 %838, 3
  %840 = icmp slt i64 %834, 0
  %841 = and i1 %840, %839
  %842 = mul nsw i64 %836, 100
  %843 = select i1 %841, i64 %842, i64 %836
  br i1 %840, label %844, label %849

; <label>:844:                                    ; preds = %830
  %845 = sdiv i64 %843, 100
  %846 = mul nsw i64 %845, 60
  %847 = srem i64 %843, 100
  %848 = add nsw i64 %846, %847
  br label %858

; <label>:849:                                    ; preds = %830
  %850 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1
  %851 = bitcast %union.YYSTYPE* %850 to i8*
  %852 = load i8, i8* %851, align 1
  %853 = mul nsw i64 %843, 60
  %854 = icmp ne i8 %852, 0
  %855 = sub nsw i64 0, %834
  %856 = select i1 %854, i64 %855, i64 %834
  %857 = add nsw i64 %856, %853
  br label %858

; <label>:858:                                    ; preds = %849, %844
  %859 = phi i64 [ %848, %844 ], [ %857, %849 ]
  %860 = trunc i64 %859 to i32
  %861 = icmp sgt i32 %860, -1
  %862 = sub i32 0, %860
  %863 = select i1 %861, i32 %860, i32 %862
  %864 = icmp sgt i32 %863, 1440
  br i1 %864, label %865, label %867

; <label>:865:                                    ; preds = %858
  %866 = add i64 %831, 2
  store i64 %866, i64* %15, align 8
  br label %867

; <label>:867:                                    ; preds = %858, %865
  store i64 %859, i64* %21, align 8
  br label %1366

; <label>:868:                                    ; preds = %728
  %869 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %870 = load i64, i64* %869, align 8
  %871 = trunc i64 %870 to i32
  store i32 %871, i32* %22, align 4
  %872 = icmp sgt i64 %870, 0
  %873 = zext i1 %872 to i64
  %874 = load i64, i64* %23, align 8
  %875 = add i64 %873, %874
  store i64 %875, i64* %23, align 8
  br label %1366

; <label>:876:                                    ; preds = %728
  store i32 1, i32* %22, align 4
  %877 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %878 = load i64, i64* %877, align 8
  %879 = icmp sgt i64 %878, 0
  %880 = select i1 %879, i64 2, i64 1
  %881 = load i64, i64* %23, align 8
  %882 = add i64 %880, %881
  store i64 %882, i64* %23, align 8
  br label %1366

; <label>:883:                                    ; preds = %728
  %884 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %885 = load i64, i64* %884, align 8
  store i64 %885, i64* %21, align 8
  br label %1366

; <label>:886:                                    ; preds = %728
  store i64 420, i64* %21, align 8
  br label %1366

; <label>:887:                                    ; preds = %728
  %888 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %21, align 8
  %890 = bitcast %union.YYSTYPE* %104 to <2 x i64>*
  %891 = load <2 x i64>, <2 x i64>* %890, align 1
  %892 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 2
  %893 = bitcast i64* %892 to <2 x i64>*
  %894 = load <2 x i64>, <2 x i64>* %893, align 1
  %895 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 4
  %896 = bitcast i64* %895 to <2 x i64>*
  %897 = load <2 x i64>, <2 x i64>* %896, align 1
  %898 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 6
  %899 = load i64, i64* %898, align 1
  %900 = load i64, i64* %24, align 8
  %901 = add nsw i64 %900, %899
  store i64 %901, i64* %24, align 8
  %902 = load <2 x i64>, <2 x i64>* %55, align 8
  %903 = add nsw <2 x i64> %902, %897
  store <2 x i64> %903, <2 x i64>* %56, align 8
  %904 = load <2 x i64>, <2 x i64>* %57, align 8
  %905 = add nsw <2 x i64> %904, %894
  store <2 x i64> %905, <2 x i64>* %58, align 8
  %906 = load <2 x i64>, <2 x i64>* %59, align 8
  %907 = add nsw <2 x i64> %906, %891
  store <2 x i64> %907, <2 x i64>* %60, align 8
  store i8 1, i8* %31, align 1
  %908 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_relative_time(i8* %908, %struct.parser_control* %0)
  br label %1366

; <label>:909:                                    ; preds = %728
  store i64 420, i64* %21, align 8
  %910 = bitcast %union.YYSTYPE* %104 to <2 x i64>*
  %911 = load <2 x i64>, <2 x i64>* %910, align 1
  %912 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 2
  %913 = bitcast i64* %912 to <2 x i64>*
  %914 = load <2 x i64>, <2 x i64>* %913, align 1
  %915 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 4
  %916 = bitcast i64* %915 to <2 x i64>*
  %917 = load <2 x i64>, <2 x i64>* %916, align 1
  %918 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 6
  %919 = load i64, i64* %918, align 1
  %920 = load i64, i64* %24, align 8
  %921 = add nsw i64 %920, %919
  store i64 %921, i64* %24, align 8
  %922 = load <2 x i64>, <2 x i64>* %61, align 8
  %923 = add nsw <2 x i64> %922, %917
  store <2 x i64> %923, <2 x i64>* %62, align 8
  %924 = load <2 x i64>, <2 x i64>* %63, align 8
  %925 = add nsw <2 x i64> %924, %914
  store <2 x i64> %925, <2 x i64>* %64, align 8
  %926 = load <2 x i64>, <2 x i64>* %65, align 8
  %927 = add nsw <2 x i64> %926, %911
  store <2 x i64> %927, <2 x i64>* %66, align 8
  store i8 1, i8* %31, align 1
  %928 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #11
  call fastcc void @debug_print_relative_time(i8* %928, %struct.parser_control* %0)
  br label %1366

; <label>:929:                                    ; preds = %728
  %930 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2, i32 0, i32 0
  %931 = load i64, i64* %930, align 8
  %932 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %933 = load i64, i64* %932, align 8
  %934 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %935 = load i64, i64* %934, align 1
  %936 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 2
  %937 = load i64, i64* %936, align 1
  %938 = icmp ult i64 %937, 3
  %939 = icmp slt i64 %933, 0
  %940 = and i1 %939, %938
  %941 = mul nsw i64 %935, 100
  %942 = select i1 %940, i64 %941, i64 %935
  br i1 %939, label %943, label %948

; <label>:943:                                    ; preds = %929
  %944 = sdiv i64 %942, 100
  %945 = mul nsw i64 %944, 60
  %946 = srem i64 %942, 100
  %947 = add nsw i64 %945, %946
  br label %957

; <label>:948:                                    ; preds = %929
  %949 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1
  %950 = bitcast %union.YYSTYPE* %949 to i8*
  %951 = load i8, i8* %950, align 1
  %952 = mul nsw i64 %942, 60
  %953 = icmp ne i8 %951, 0
  %954 = sub nsw i64 0, %933
  %955 = select i1 %953, i64 %954, i64 %933
  %956 = add nsw i64 %955, %952
  br label %957

; <label>:957:                                    ; preds = %948, %943
  %958 = phi i64 [ %947, %943 ], [ %956, %948 ]
  %959 = trunc i64 %958 to i32
  %960 = icmp sgt i32 %959, -1
  %961 = sub i32 0, %959
  %962 = select i1 %960, i32 %959, i32 %961
  %963 = icmp sgt i32 %962, 1440
  br i1 %963, label %964, label %967

; <label>:964:                                    ; preds = %957
  %965 = load i64, i64* %15, align 8
  %966 = add i64 %965, 1
  store i64 %966, i64* %15, align 8
  br label %967

; <label>:967:                                    ; preds = %957, %964
  %968 = add nsw i64 %958, %931
  store i64 %968, i64* %21, align 8
  br label %1366

; <label>:969:                                    ; preds = %728
  %970 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %971 = load i64, i64* %970, align 8
  %972 = add nsw i64 %971, 60
  store i64 %972, i64* %21, align 8
  br label %1366

; <label>:973:                                    ; preds = %728
  %974 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %975 = load i64, i64* %974, align 8
  %976 = add nsw i64 %975, 60
  store i64 %976, i64* %21, align 8
  br label %1366

; <label>:977:                                    ; preds = %728
  store i64 0, i64* %32, align 8
  %978 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %979 = load i64, i64* %978, align 8
  %980 = trunc i64 %979 to i32
  store i32 %980, i32* %33, align 8
  br label %1366

; <label>:981:                                    ; preds = %728
  store i64 0, i64* %32, align 8
  %982 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %983 = load i64, i64* %982, align 8
  %984 = trunc i64 %983 to i32
  store i32 %984, i32* %33, align 8
  br label %1366

; <label>:985:                                    ; preds = %728
  %986 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %987 = load i64, i64* %986, align 8
  store i64 %987, i64* %32, align 8
  %988 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %989 = load i64, i64* %988, align 8
  %990 = trunc i64 %989 to i32
  store i32 %990, i32* %33, align 8
  store i8 1, i8* %34, align 8
  br label %1366

; <label>:991:                                    ; preds = %728
  %992 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %32, align 8
  %994 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %995 = load i64, i64* %994, align 8
  %996 = trunc i64 %995 to i32
  store i32 %996, i32* %33, align 8
  store i8 1, i8* %34, align 8
  br label %1366

; <label>:997:                                    ; preds = %728
  %998 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2, i32 0, i32 1
  %999 = load i64, i64* %998, align 8
  store i64 %999, i64* %35, align 8
  %1000 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1001 = load i64, i64* %1000, align 8
  store i64 %1001, i64* %36, align 8
  br label %1366

; <label>:1002:                                   ; preds = %728
  %1003 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -4
  %1004 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -4, i32 0, i32 2
  %1005 = load i64, i64* %1004, align 8
  %1006 = icmp ugt i64 %1005, 3
  %1007 = load i8, i8* %37, align 8
  %1008 = icmp ne i8 %1007, 0
  br i1 %1006, label %1009, label %1021

; <label>:1009:                                   ; preds = %1002
  br i1 %1008, label %1010, label %1015

; <label>:1010:                                   ; preds = %1009
  %1011 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10.112, i64 0, i64 0), i32 5) #11
  %1012 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -4, i32 0, i32 1
  %1013 = load i64, i64* %1012, align 8
  %1014 = load i64, i64* %1004, align 8
  call void (i8*, ...) @dbg_printf(i8* %1011, i64 %1013, i64 %1014)
  br label %1015

; <label>:1015:                                   ; preds = %1010, %1009
  %1016 = bitcast %union.YYSTYPE* %1003 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %38, i8* %1016, i64 24, i32 8, i1 false)
  %1017 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2, i32 0, i32 1
  %1018 = load i64, i64* %1017, align 8
  store i64 %1018, i64* %35, align 8
  %1019 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1020 = load i64, i64* %1019, align 8
  store i64 %1020, i64* %36, align 8
  br label %1366

; <label>:1021:                                   ; preds = %1002
  br i1 %1008, label %1024, label %1022

; <label>:1022:                                   ; preds = %1021
  %1023 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -4, i32 0, i32 1
  br label %1028

; <label>:1024:                                   ; preds = %1021
  %1025 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11.113, i64 0, i64 0), i32 5) #11
  %1026 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -4, i32 0, i32 1
  %1027 = load i64, i64* %1026, align 8
  call void (i8*, ...) @dbg_printf(i8* %1025, i64 %1027)
  br label %1028

; <label>:1028:                                   ; preds = %1022, %1024
  %1029 = phi i64* [ %1023, %1022 ], [ %1026, %1024 ]
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %35, align 8
  %1031 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2, i32 0, i32 1
  %1032 = load i64, i64* %1031, align 8
  store i64 %1032, i64* %36, align 8
  %1033 = bitcast %union.YYSTYPE* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %1033, i64 24, i32 8, i1 false)
  br label %1366

; <label>:1034:                                   ; preds = %728
  %1035 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2, i32 0, i32 1
  %1036 = load i64, i64* %1035, align 8
  store i64 %1036, i64* %36, align 8
  %1037 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %35, align 8
  %1039 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1040 = load i64, i64* %1039, align 8
  %1041 = sub nsw i64 0, %1040
  store i64 %1041, i64* %39, align 8
  %1042 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 2
  %1043 = load i64, i64* %1042, align 8
  store i64 %1043, i64* %40, align 8
  br label %1366

; <label>:1044:                                   ; preds = %728
  %1045 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2, i32 0, i32 0
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %35, align 8
  %1047 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1048 = load i64, i64* %1047, align 8
  %1049 = sub nsw i64 0, %1048
  store i64 %1049, i64* %36, align 8
  %1050 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1051 = load i64, i64* %1050, align 8
  %1052 = sub nsw i64 0, %1051
  store i64 %1052, i64* %39, align 8
  %1053 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 2
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %40, align 8
  br label %1366

; <label>:1055:                                   ; preds = %728
  %1056 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1057 = load i64, i64* %1056, align 8
  store i64 %1057, i64* %35, align 8
  %1058 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %36, align 8
  br label %1366

; <label>:1060:                                   ; preds = %728
  %1061 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -3, i32 0, i32 0
  %1062 = load i64, i64* %1061, align 8
  store i64 %1062, i64* %35, align 8
  %1063 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2, i32 0, i32 1
  %1064 = load i64, i64* %1063, align 8
  store i64 %1064, i64* %36, align 8
  %1065 = bitcast %union.YYSTYPE* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %1065, i64 24, i32 8, i1 false)
  br label %1366

; <label>:1066:                                   ; preds = %728
  %1067 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1068 = load i64, i64* %1067, align 8
  store i64 %1068, i64* %36, align 8
  %1069 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %1070 = load i64, i64* %1069, align 8
  store i64 %1070, i64* %35, align 8
  br label %1366

; <label>:1071:                                   ; preds = %728
  %1072 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2, i32 0, i32 1
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %36, align 8
  %1074 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1075 = load i64, i64* %1074, align 8
  store i64 %1075, i64* %35, align 8
  %1076 = bitcast %union.YYSTYPE* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %1076, i64 24, i32 8, i1 false)
  br label %1366

; <label>:1077:                                   ; preds = %728
  %1078 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2
  %1079 = bitcast %union.YYSTYPE* %1078 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %1079, i64 24, i32 8, i1 false)
  %1080 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1081 = load i64, i64* %1080, align 8
  %1082 = sub nsw i64 0, %1081
  store i64 %1082, i64* %35, align 8
  %1083 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1084 = load i64, i64* %1083, align 8
  %1085 = sub nsw i64 0, %1084
  store i64 %1085, i64* %36, align 8
  br label %1366

; <label>:1086:                                   ; preds = %728
  %1087 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %1088 = load i64, i64* %1087, align 8
  %1089 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1090 = load i64, i64* %1089, align 1
  %1091 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1092 = load i64, i64* %1091, align 1
  %1093 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 2
  %1094 = load i64, i64* %1093, align 1
  %1095 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 3
  %1096 = load i64, i64* %1095, align 1
  %1097 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 4
  %1098 = load i64, i64* %1097, align 1
  %1099 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 5
  %1100 = load i64, i64* %1099, align 1
  %1101 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 6
  %1102 = load i64, i64* %1101, align 1
  %1103 = shl i64 %1088, 32
  %1104 = ashr exact i64 %1103, 32
  %1105 = mul nsw i64 %1102, %1104
  %1106 = load i64, i64* %24, align 8
  %1107 = add nsw i64 %1106, %1105
  store i64 %1107, i64* %24, align 8
  %1108 = mul nsw i64 %1100, %1104
  %1109 = load i64, i64* %25, align 8
  %1110 = add nsw i64 %1109, %1108
  store i64 %1110, i64* %25, align 8
  %1111 = mul nsw i64 %1098, %1104
  %1112 = load i64, i64* %26, align 8
  %1113 = add nsw i64 %1112, %1111
  store i64 %1113, i64* %26, align 8
  %1114 = mul nsw i64 %1096, %1104
  %1115 = load i64, i64* %27, align 8
  %1116 = add nsw i64 %1115, %1114
  store i64 %1116, i64* %27, align 8
  %1117 = mul nsw i64 %1094, %1104
  %1118 = load i64, i64* %28, align 8
  %1119 = add nsw i64 %1118, %1117
  store i64 %1119, i64* %28, align 8
  %1120 = mul nsw i64 %1092, %1104
  %1121 = load i64, i64* %29, align 8
  %1122 = add nsw i64 %1121, %1120
  store i64 %1122, i64* %29, align 8
  %1123 = mul nsw i64 %1104, %1090
  %1124 = load i64, i64* %30, align 8
  %1125 = add nsw i64 %1124, %1123
  store i64 %1125, i64* %30, align 8
  store i8 1, i8* %31, align 1
  br label %1366

; <label>:1126:                                   ; preds = %728
  %1127 = bitcast %union.YYSTYPE* %104 to <2 x i64>*
  %1128 = load <2 x i64>, <2 x i64>* %1127, align 1
  %1129 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 2
  %1130 = bitcast i64* %1129 to <2 x i64>*
  %1131 = load <2 x i64>, <2 x i64>* %1130, align 1
  %1132 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 4
  %1133 = bitcast i64* %1132 to <2 x i64>*
  %1134 = load <2 x i64>, <2 x i64>* %1133, align 1
  %1135 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 6
  %1136 = load i64, i64* %1135, align 1
  %1137 = load i64, i64* %24, align 8
  %1138 = add nsw i64 %1137, %1136
  store i64 %1138, i64* %24, align 8
  %1139 = load <2 x i64>, <2 x i64>* %67, align 8
  %1140 = add nsw <2 x i64> %1139, %1134
  store <2 x i64> %1140, <2 x i64>* %68, align 8
  %1141 = load <2 x i64>, <2 x i64>* %69, align 8
  %1142 = add nsw <2 x i64> %1141, %1131
  store <2 x i64> %1142, <2 x i64>* %70, align 8
  %1143 = load <2 x i64>, <2 x i64>* %71, align 8
  %1144 = add nsw <2 x i64> %1143, %1128
  store <2 x i64> %1144, <2 x i64>* %72, align 8
  store i8 1, i8* %31, align 1
  br label %1366

; <label>:1145:                                   ; preds = %728
  %1146 = bitcast %union.YYSTYPE* %104 to <2 x i64>*
  %1147 = load <2 x i64>, <2 x i64>* %1146, align 1
  %1148 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 2
  %1149 = bitcast i64* %1148 to <2 x i64>*
  %1150 = load <2 x i64>, <2 x i64>* %1149, align 1
  %1151 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 4
  %1152 = bitcast i64* %1151 to <2 x i64>*
  %1153 = load <2 x i64>, <2 x i64>* %1152, align 1
  %1154 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 6
  %1155 = load i64, i64* %1154, align 1
  %1156 = load i64, i64* %24, align 8
  %1157 = add nsw i64 %1156, %1155
  store i64 %1157, i64* %24, align 8
  %1158 = load <2 x i64>, <2 x i64>* %73, align 8
  %1159 = add nsw <2 x i64> %1158, %1153
  store <2 x i64> %1159, <2 x i64>* %74, align 8
  %1160 = load <2 x i64>, <2 x i64>* %75, align 8
  %1161 = add nsw <2 x i64> %1160, %1150
  store <2 x i64> %1161, <2 x i64>* %76, align 8
  %1162 = load <2 x i64>, <2 x i64>* %77, align 8
  %1163 = add nsw <2 x i64> %1162, %1147
  store <2 x i64> %1163, <2 x i64>* %78, align 8
  store i8 1, i8* %31, align 1
  br label %1366

; <label>:1164:                                   ; preds = %728
  %1165 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1166 = load i64, i64* %1165, align 8
  br label %1366

; <label>:1167:                                   ; preds = %728
  %1168 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1169 = load i64, i64* %1168, align 8
  br label %1366

; <label>:1170:                                   ; preds = %728
  br label %1366

; <label>:1171:                                   ; preds = %728
  %1172 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1173 = load i64, i64* %1172, align 8
  br label %1366

; <label>:1174:                                   ; preds = %728
  %1175 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1176 = load i64, i64* %1175, align 8
  br label %1366

; <label>:1177:                                   ; preds = %728
  br label %1366

; <label>:1178:                                   ; preds = %728
  %1179 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1180 = load i64, i64* %1179, align 8
  %1181 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %1182 = load i64, i64* %1181, align 8
  %1183 = mul nsw i64 %1182, %1180
  br label %1366

; <label>:1184:                                   ; preds = %728
  %1185 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1186 = load i64, i64* %1185, align 8
  %1187 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %1188 = load i64, i64* %1187, align 8
  %1189 = mul nsw i64 %1188, %1186
  br label %1366

; <label>:1190:                                   ; preds = %728
  %1191 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %1192 = load i64, i64* %1191, align 8
  br label %1366

; <label>:1193:                                   ; preds = %728
  %1194 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1195 = load i64, i64* %1194, align 8
  br label %1366

; <label>:1196:                                   ; preds = %728
  %1197 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1198 = load i64, i64* %1197, align 8
  br label %1366

; <label>:1199:                                   ; preds = %728
  br label %1366

; <label>:1200:                                   ; preds = %728
  %1201 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1202 = load i64, i64* %1201, align 8
  br label %1366

; <label>:1203:                                   ; preds = %728
  %1204 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1205 = load i64, i64* %1204, align 8
  br label %1366

; <label>:1206:                                   ; preds = %728
  br label %1366

; <label>:1207:                                   ; preds = %728
  %1208 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1209 = load i64, i64* %1208, align 8
  br label %1366

; <label>:1210:                                   ; preds = %728
  %1211 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1212 = load i64, i64* %1211, align 8
  br label %1366

; <label>:1213:                                   ; preds = %728
  %1214 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1215 = load i64, i64* %1214, align 8
  %1216 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1217 = load i64, i64* %1216, align 8
  br label %1366

; <label>:1218:                                   ; preds = %728
  %1219 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1220 = load i64, i64* %1219, align 8
  %1221 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1222 = load i64, i64* %1221, align 8
  br label %1366

; <label>:1223:                                   ; preds = %728
  br label %1366

; <label>:1224:                                   ; preds = %728
  %1225 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1226 = load i64, i64* %1225, align 8
  br label %1366

; <label>:1227:                                   ; preds = %728
  %1228 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1229 = load i64, i64* %1228, align 8
  br label %1366

; <label>:1230:                                   ; preds = %728
  %1231 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1232 = load i64, i64* %1231, align 8
  %1233 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %1234 = load i64, i64* %1233, align 8
  %1235 = mul nsw i64 %1234, %1232
  br label %1366

; <label>:1236:                                   ; preds = %728
  %1237 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1238 = load i64, i64* %1237, align 8
  br label %1366

; <label>:1239:                                   ; preds = %728
  %1240 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1241 = load i64, i64* %1240, align 8
  br label %1366

; <label>:1242:                                   ; preds = %728
  %1243 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 1
  %1244 = load i64, i64* %1243, align 8
  br label %1366

; <label>:1245:                                   ; preds = %728
  %1246 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 0
  %1247 = load i64, i64* %1246, align 8
  br label %1366

; <label>:1248:                                   ; preds = %728
  %1249 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1250 = load i64, i64* %1249, align 8
  br label %1366

; <label>:1251:                                   ; preds = %728
  %1252 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1253 = load i64, i64* %1252, align 8
  br label %1366

; <label>:1254:                                   ; preds = %728
  %1255 = bitcast %union.YYSTYPE* %104 to <2 x i64>*
  %1256 = load <2 x i64>, <2 x i64>* %1255, align 1
  %1257 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 2
  %1258 = load i64, i64* %1257, align 1
  %1259 = load i64, i64* %13, align 8
  %1260 = icmp eq i64 %1259, 0
  br i1 %1260, label %1277, label %1261

; <label>:1261:                                   ; preds = %1254
  %1262 = load i64, i64* %40, align 8
  %1263 = icmp eq i64 %1262, 0
  br i1 %1263, label %1264, label %1277

; <label>:1264:                                   ; preds = %1261
  %1265 = load i8, i8* %31, align 1
  %1266 = icmp eq i8 %1265, 0
  br i1 %1266, label %1267, label %1277

; <label>:1267:                                   ; preds = %1264
  %1268 = load i64, i64* %12, align 8
  %1269 = icmp ne i64 %1268, 0
  %1270 = icmp ugt i64 %1258, 2
  %1271 = or i1 %1270, %1269
  br i1 %1271, label %1274, label %1272

; <label>:1272:                                   ; preds = %1267
  store i64 1, i64* %12, align 8
  %1273 = extractelement <2 x i64> %1256, i32 1
  br label %1295

; <label>:1274:                                   ; preds = %1267
  %1275 = load i64, i64* %42, align 8
  %1276 = add i64 %1275, 1
  store i64 %1276, i64* %42, align 8
  store <2 x i64> %1256, <2 x i64>* %79, align 8
  store i64 %1258, i64* %40, align 8
  br label %1366

; <label>:1277:                                   ; preds = %1264, %1261, %1254
  %1278 = icmp ugt i64 %1258, 4
  br i1 %1278, label %1279, label %1287

; <label>:1279:                                   ; preds = %1277
  %1280 = add i64 %1259, 1
  store i64 %1280, i64* %13, align 8
  %1281 = extractelement <2 x i64> %1256, i32 1
  %1282 = srem i64 %1281, 100
  store i64 %1282, i64* %36, align 8
  %1283 = sdiv i64 %1281, 100
  %1284 = srem i64 %1283, 100
  store i64 %1284, i64* %35, align 8
  %1285 = sdiv i64 %1281, 10000
  store i64 %1285, i64* %39, align 8
  %1286 = add i64 %1258, -4
  store i64 %1286, i64* %40, align 8
  br label %1366

; <label>:1287:                                   ; preds = %1277
  %1288 = load i64, i64* %12, align 8
  %1289 = add i64 %1288, 1
  store i64 %1289, i64* %12, align 8
  %1290 = icmp ult i64 %1258, 3
  %1291 = extractelement <2 x i64> %1256, i32 1
  br i1 %1290, label %1295, label %1292

; <label>:1292:                                   ; preds = %1287
  %1293 = sdiv i64 %1291, 100
  %1294 = srem i64 %1291, 100
  br label %1295

; <label>:1295:                                   ; preds = %1272, %1292, %1287
  %1296 = phi i64 [ %1293, %1292 ], [ %1291, %1287 ], [ %1273, %1272 ]
  %1297 = phi i64 [ %1294, %1292 ], [ 0, %1287 ], [ 0, %1272 ]
  store i64 %1296, i64* %17, align 8
  store i64 %1297, i64* %18, align 8
  call void @llvm.memset.p0i8.i64(i8* nonnull %41, i8 0, i64 16, i32 8, i1 false) #11
  store i32 2, i32* %20, align 8
  br label %1366

; <label>:1298:                                   ; preds = %728
  %1299 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 0
  %1300 = bitcast i64* %1299 to <2 x i64>*
  %1301 = load <2 x i64>, <2 x i64>* %1300, align 1
  %1302 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1, i32 0, i32 2
  %1303 = load i64, i64* %1302, align 1
  %1304 = load i64, i64* %13, align 8
  %1305 = icmp eq i64 %1304, 0
  br i1 %1305, label %1322, label %1306

; <label>:1306:                                   ; preds = %1298
  %1307 = load i64, i64* %40, align 8
  %1308 = icmp eq i64 %1307, 0
  br i1 %1308, label %1309, label %1322

; <label>:1309:                                   ; preds = %1306
  %1310 = load i8, i8* %31, align 1
  %1311 = icmp eq i8 %1310, 0
  br i1 %1311, label %1312, label %1322

; <label>:1312:                                   ; preds = %1309
  %1313 = load i64, i64* %12, align 8
  %1314 = icmp ne i64 %1313, 0
  %1315 = icmp ugt i64 %1303, 2
  %1316 = or i1 %1315, %1314
  br i1 %1316, label %1319, label %1317

; <label>:1317:                                   ; preds = %1312
  store i64 1, i64* %12, align 8
  %1318 = extractelement <2 x i64> %1301, i32 1
  br label %1340

; <label>:1319:                                   ; preds = %1312
  %1320 = load i64, i64* %42, align 8
  %1321 = add i64 %1320, 1
  store i64 %1321, i64* %42, align 8
  store <2 x i64> %1301, <2 x i64>* %86, align 8
  store i64 %1303, i64* %40, align 8
  br label %1343

; <label>:1322:                                   ; preds = %1309, %1306, %1298
  %1323 = icmp ugt i64 %1303, 4
  br i1 %1323, label %1324, label %1332

; <label>:1324:                                   ; preds = %1322
  %1325 = add i64 %1304, 1
  store i64 %1325, i64* %13, align 8
  %1326 = extractelement <2 x i64> %1301, i32 1
  %1327 = srem i64 %1326, 100
  store i64 %1327, i64* %36, align 8
  %1328 = sdiv i64 %1326, 100
  %1329 = srem i64 %1328, 100
  store i64 %1329, i64* %35, align 8
  %1330 = sdiv i64 %1326, 10000
  store i64 %1330, i64* %39, align 8
  %1331 = add i64 %1303, -4
  store i64 %1331, i64* %40, align 8
  br label %1343

; <label>:1332:                                   ; preds = %1322
  %1333 = load i64, i64* %12, align 8
  %1334 = add i64 %1333, 1
  store i64 %1334, i64* %12, align 8
  %1335 = icmp ult i64 %1303, 3
  %1336 = extractelement <2 x i64> %1301, i32 1
  br i1 %1335, label %1340, label %1337

; <label>:1337:                                   ; preds = %1332
  %1338 = sdiv i64 %1336, 100
  %1339 = srem i64 %1336, 100
  br label %1340

; <label>:1340:                                   ; preds = %1317, %1337, %1332
  %1341 = phi i64 [ %1338, %1337 ], [ %1336, %1332 ], [ %1318, %1317 ]
  %1342 = phi i64 [ %1339, %1337 ], [ 0, %1332 ], [ 0, %1317 ]
  store i64 %1341, i64* %17, align 8
  store i64 %1342, i64* %18, align 8
  call void @llvm.memset.p0i8.i64(i8* nonnull %41, i8 0, i64 16, i32 8, i1 false) #11
  store i32 2, i32* %20, align 8
  br label %1343

; <label>:1343:                                   ; preds = %1319, %1324, %1340
  %1344 = bitcast %union.YYSTYPE* %104 to <2 x i64>*
  %1345 = load <2 x i64>, <2 x i64>* %1344, align 1
  %1346 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 2
  %1347 = bitcast i64* %1346 to <2 x i64>*
  %1348 = load <2 x i64>, <2 x i64>* %1347, align 1
  %1349 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 4
  %1350 = bitcast i64* %1349 to <2 x i64>*
  %1351 = load <2 x i64>, <2 x i64>* %1350, align 1
  %1352 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 6
  %1353 = load i64, i64* %1352, align 1
  %1354 = load i64, i64* %24, align 8
  %1355 = add nsw i64 %1354, %1353
  store i64 %1355, i64* %24, align 8
  %1356 = load <2 x i64>, <2 x i64>* %80, align 8
  %1357 = add nsw <2 x i64> %1356, %1351
  store <2 x i64> %1357, <2 x i64>* %81, align 8
  %1358 = load <2 x i64>, <2 x i64>* %82, align 8
  %1359 = add nsw <2 x i64> %1358, %1348
  store <2 x i64> %1359, <2 x i64>* %83, align 8
  %1360 = load <2 x i64>, <2 x i64>* %84, align 8
  %1361 = add nsw <2 x i64> %1360, %1345
  store <2 x i64> %1361, <2 x i64>* %85, align 8
  store i8 1, i8* %31, align 1
  br label %1366

; <label>:1362:                                   ; preds = %728
  br label %1366

; <label>:1363:                                   ; preds = %728
  %1364 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 0, i32 0, i32 1
  %1365 = load i64, i64* %1364, align 8
  br label %1366

; <label>:1366:                                   ; preds = %1295, %1279, %1274, %728, %1015, %1028, %1363, %1362, %1343, %1251, %1248, %1245, %1242, %1239, %1236, %1230, %1227, %1224, %1223, %1218, %1213, %1210, %1207, %1206, %1203, %1200, %1199, %1196, %1193, %1190, %1184, %1178, %1177, %1174, %1171, %1170, %1167, %1164, %1145, %1126, %1086, %1077, %1071, %1066, %1060, %1055, %1044, %1034, %997, %991, %985, %981, %977, %973, %969, %967, %909, %887, %886, %883, %876, %868, %867, %822, %817, %814, %803, %795, %789, %787, %785, %783, %779, %775, %771, %767, %763, %757, %754
  %1367 = phi i64 [ %741, %728 ], [ %1365, %1363 ], [ -1, %1362 ], [ %741, %1343 ], [ %1253, %1251 ], [ %1250, %1248 ], [ 0, %1245 ], [ 0, %1242 ], [ 0, %1239 ], [ 0, %1236 ], [ 0, %1230 ], [ 0, %1227 ], [ %1226, %1224 ], [ 0, %1223 ], [ 0, %1218 ], [ 0, %1213 ], [ 0, %1210 ], [ 0, %1207 ], [ 0, %1206 ], [ 0, %1203 ], [ 0, %1200 ], [ 0, %1199 ], [ 0, %1196 ], [ 0, %1193 ], [ 0, %1190 ], [ 0, %1184 ], [ 0, %1178 ], [ 0, %1177 ], [ 0, %1174 ], [ 0, %1171 ], [ 1, %1170 ], [ %1169, %1167 ], [ %1166, %1164 ], [ %741, %1145 ], [ %741, %1126 ], [ %741, %1086 ], [ %741, %1077 ], [ %741, %1071 ], [ %741, %1066 ], [ %741, %1060 ], [ %741, %1055 ], [ %741, %1044 ], [ %741, %1034 ], [ %741, %1015 ], [ %741, %1028 ], [ %741, %997 ], [ %741, %991 ], [ %741, %985 ], [ %741, %981 ], [ %741, %977 ], [ %741, %973 ], [ %741, %969 ], [ %741, %967 ], [ %741, %909 ], [ %741, %887 ], [ %741, %886 ], [ %741, %883 ], [ %741, %876 ], [ %741, %868 ], [ %741, %867 ], [ %741, %822 ], [ %741, %817 ], [ %741, %814 ], [ %741, %803 ], [ %741, %795 ], [ %741, %789 ], [ %741, %787 ], [ %741, %785 ], [ %741, %783 ], [ %741, %779 ], [ %741, %775 ], [ %741, %771 ], [ %741, %767 ], [ %741, %763 ], [ %741, %757 ], [ %741, %754 ], [ %741, %1274 ], [ %741, %1279 ], [ %741, %1295 ]
  %1368 = phi i64 [ %743, %728 ], [ %743, %1363 ], [ %743, %1362 ], [ %743, %1343 ], [ 0, %1251 ], [ 0, %1248 ], [ 0, %1245 ], [ 0, %1242 ], [ 0, %1239 ], [ 0, %1236 ], [ 0, %1230 ], [ %1229, %1227 ], [ 0, %1224 ], [ 0, %1223 ], [ 0, %1218 ], [ 0, %1213 ], [ 0, %1210 ], [ 0, %1207 ], [ 0, %1206 ], [ 0, %1203 ], [ 0, %1200 ], [ 0, %1199 ], [ 0, %1196 ], [ 0, %1193 ], [ 0, %1190 ], [ 0, %1184 ], [ 0, %1178 ], [ 1, %1177 ], [ %1176, %1174 ], [ %1173, %1171 ], [ 0, %1170 ], [ 0, %1167 ], [ 0, %1164 ], [ %743, %1145 ], [ %743, %1126 ], [ %743, %1086 ], [ %743, %1077 ], [ %743, %1071 ], [ %743, %1066 ], [ %743, %1060 ], [ %743, %1055 ], [ %743, %1044 ], [ %743, %1034 ], [ %743, %1015 ], [ %743, %1028 ], [ %743, %997 ], [ %743, %991 ], [ %743, %985 ], [ %743, %981 ], [ %743, %977 ], [ %743, %973 ], [ %743, %969 ], [ %743, %967 ], [ %743, %909 ], [ %743, %887 ], [ %743, %886 ], [ %743, %883 ], [ %743, %876 ], [ %743, %868 ], [ %743, %867 ], [ %743, %822 ], [ %743, %817 ], [ %743, %814 ], [ %743, %803 ], [ %743, %795 ], [ %743, %789 ], [ %743, %787 ], [ %743, %785 ], [ %743, %783 ], [ %743, %779 ], [ %743, %775 ], [ %743, %771 ], [ %743, %767 ], [ %743, %763 ], [ %743, %757 ], [ %743, %754 ], [ %743, %1274 ], [ %743, %1279 ], [ %743, %1295 ]
  %1369 = phi i64 [ %745, %728 ], [ %745, %1363 ], [ %745, %1362 ], [ %745, %1343 ], [ %745, %1251 ], [ %745, %1248 ], [ %1247, %1245 ], [ 0, %1242 ], [ 0, %1239 ], [ 0, %1236 ], [ %1235, %1230 ], [ 0, %1227 ], [ 0, %1224 ], [ 0, %1223 ], [ 0, %1218 ], [ 0, %1213 ], [ 0, %1210 ], [ 0, %1207 ], [ 0, %1206 ], [ 0, %1203 ], [ 0, %1200 ], [ 0, %1199 ], [ 0, %1196 ], [ 0, %1193 ], [ %1192, %1190 ], [ %1189, %1184 ], [ %1183, %1178 ], [ 0, %1177 ], [ 0, %1174 ], [ 0, %1171 ], [ 0, %1170 ], [ 0, %1167 ], [ 0, %1164 ], [ %745, %1145 ], [ %745, %1126 ], [ %745, %1086 ], [ %745, %1077 ], [ %745, %1071 ], [ %745, %1066 ], [ %745, %1060 ], [ %745, %1055 ], [ %745, %1044 ], [ %745, %1034 ], [ %745, %1015 ], [ %745, %1028 ], [ %745, %997 ], [ %745, %991 ], [ %745, %985 ], [ %745, %981 ], [ %745, %977 ], [ %745, %973 ], [ %745, %969 ], [ %745, %967 ], [ %745, %909 ], [ %745, %887 ], [ %745, %886 ], [ %745, %883 ], [ %745, %876 ], [ %745, %868 ], [ %745, %867 ], [ %745, %822 ], [ %745, %817 ], [ %745, %814 ], [ %745, %803 ], [ %745, %795 ], [ %745, %789 ], [ %745, %787 ], [ %745, %785 ], [ %745, %783 ], [ %745, %779 ], [ %745, %775 ], [ %745, %771 ], [ %745, %767 ], [ %745, %763 ], [ %745, %757 ], [ %745, %754 ], [ %745, %1274 ], [ %745, %1279 ], [ %745, %1295 ]
  %1370 = phi i64 [ %747, %728 ], [ %747, %1363 ], [ %747, %1362 ], [ %747, %1343 ], [ %747, %1251 ], [ %747, %1248 ], [ 0, %1245 ], [ 0, %1242 ], [ 0, %1239 ], [ %1238, %1236 ], [ 0, %1230 ], [ 0, %1227 ], [ 0, %1224 ], [ 0, %1223 ], [ 0, %1218 ], [ 0, %1213 ], [ 0, %1210 ], [ 0, %1207 ], [ 0, %1206 ], [ 0, %1203 ], [ 0, %1200 ], [ 1, %1199 ], [ %1198, %1196 ], [ %1195, %1193 ], [ 0, %1190 ], [ 0, %1184 ], [ 0, %1178 ], [ 0, %1177 ], [ 0, %1174 ], [ 0, %1171 ], [ 0, %1170 ], [ 0, %1167 ], [ 0, %1164 ], [ %747, %1145 ], [ %747, %1126 ], [ %747, %1086 ], [ %747, %1077 ], [ %747, %1071 ], [ %747, %1066 ], [ %747, %1060 ], [ %747, %1055 ], [ %747, %1044 ], [ %747, %1034 ], [ %747, %1015 ], [ %747, %1028 ], [ %747, %997 ], [ %747, %991 ], [ %747, %985 ], [ %747, %981 ], [ %747, %977 ], [ %747, %973 ], [ %747, %969 ], [ %747, %967 ], [ %747, %909 ], [ %747, %887 ], [ %747, %886 ], [ %747, %883 ], [ %747, %876 ], [ %747, %868 ], [ %747, %867 ], [ %747, %822 ], [ %747, %817 ], [ %747, %814 ], [ %747, %803 ], [ %747, %795 ], [ %747, %789 ], [ %747, %787 ], [ %747, %785 ], [ %747, %783 ], [ %747, %779 ], [ %747, %775 ], [ %747, %771 ], [ %747, %767 ], [ %747, %763 ], [ %747, %757 ], [ %747, %754 ], [ %747, %1274 ], [ %747, %1279 ], [ %747, %1295 ]
  %1371 = phi i64 [ %749, %728 ], [ %749, %1363 ], [ %749, %1362 ], [ %749, %1343 ], [ %749, %1251 ], [ %749, %1248 ], [ 0, %1245 ], [ 0, %1242 ], [ %1241, %1239 ], [ 0, %1236 ], [ 0, %1230 ], [ 0, %1227 ], [ 0, %1224 ], [ 0, %1223 ], [ 0, %1218 ], [ 0, %1213 ], [ 0, %1210 ], [ 0, %1207 ], [ 1, %1206 ], [ %1205, %1203 ], [ %1202, %1200 ], [ 0, %1199 ], [ 0, %1196 ], [ 0, %1193 ], [ 0, %1190 ], [ 0, %1184 ], [ 0, %1178 ], [ 0, %1177 ], [ 0, %1174 ], [ 0, %1171 ], [ 0, %1170 ], [ 0, %1167 ], [ 0, %1164 ], [ %749, %1145 ], [ %749, %1126 ], [ %749, %1086 ], [ %749, %1077 ], [ %749, %1071 ], [ %749, %1066 ], [ %749, %1060 ], [ %749, %1055 ], [ %749, %1044 ], [ %749, %1034 ], [ %749, %1015 ], [ %749, %1028 ], [ %749, %997 ], [ %749, %991 ], [ %749, %985 ], [ %749, %981 ], [ %749, %977 ], [ %749, %973 ], [ %749, %969 ], [ %749, %967 ], [ %749, %909 ], [ %749, %887 ], [ %749, %886 ], [ %749, %883 ], [ %749, %876 ], [ %749, %868 ], [ %749, %867 ], [ %749, %822 ], [ %749, %817 ], [ %749, %814 ], [ %749, %803 ], [ %749, %795 ], [ %749, %789 ], [ %749, %787 ], [ %749, %785 ], [ %749, %783 ], [ %749, %779 ], [ %749, %775 ], [ %749, %771 ], [ %749, %767 ], [ %749, %763 ], [ %749, %757 ], [ %749, %754 ], [ %749, %1274 ], [ %749, %1279 ], [ %749, %1295 ]
  %1372 = phi i64 [ %751, %728 ], [ %751, %1363 ], [ %751, %1362 ], [ %751, %1343 ], [ %751, %1251 ], [ %751, %1248 ], [ 0, %1245 ], [ %1244, %1242 ], [ 0, %1239 ], [ 0, %1236 ], [ 0, %1230 ], [ 0, %1227 ], [ 0, %1224 ], [ 1, %1223 ], [ %1220, %1218 ], [ %1215, %1213 ], [ %1212, %1210 ], [ %1209, %1207 ], [ 0, %1206 ], [ 0, %1203 ], [ 0, %1200 ], [ 0, %1199 ], [ 0, %1196 ], [ 0, %1193 ], [ 0, %1190 ], [ 0, %1184 ], [ 0, %1178 ], [ 0, %1177 ], [ 0, %1174 ], [ 0, %1171 ], [ 0, %1170 ], [ 0, %1167 ], [ 0, %1164 ], [ %751, %1145 ], [ %751, %1126 ], [ %751, %1086 ], [ %751, %1077 ], [ %751, %1071 ], [ %751, %1066 ], [ %751, %1060 ], [ %751, %1055 ], [ %751, %1044 ], [ %751, %1034 ], [ %751, %1015 ], [ %751, %1028 ], [ %751, %997 ], [ %751, %991 ], [ %751, %985 ], [ %751, %981 ], [ %751, %977 ], [ %751, %973 ], [ %751, %969 ], [ %751, %967 ], [ %751, %909 ], [ %751, %887 ], [ %751, %886 ], [ %751, %883 ], [ %751, %876 ], [ %751, %868 ], [ %751, %867 ], [ %751, %822 ], [ %751, %817 ], [ %751, %814 ], [ %751, %803 ], [ %751, %795 ], [ %751, %789 ], [ %751, %787 ], [ %751, %785 ], [ %751, %783 ], [ %751, %779 ], [ %751, %775 ], [ %751, %771 ], [ %751, %767 ], [ %751, %763 ], [ %751, %757 ], [ %751, %754 ], [ %751, %1274 ], [ %751, %1279 ], [ %751, %1295 ]
  %1373 = phi i64 [ %753, %728 ], [ %753, %1363 ], [ %753, %1362 ], [ %753, %1343 ], [ %753, %1251 ], [ %753, %1248 ], [ 0, %1245 ], [ 0, %1242 ], [ 0, %1239 ], [ 0, %1236 ], [ 0, %1230 ], [ 0, %1227 ], [ 0, %1224 ], [ 0, %1223 ], [ %1222, %1218 ], [ %1217, %1213 ], [ 0, %1210 ], [ 0, %1207 ], [ 0, %1206 ], [ 0, %1203 ], [ 0, %1200 ], [ 0, %1199 ], [ 0, %1196 ], [ 0, %1193 ], [ 0, %1190 ], [ 0, %1184 ], [ 0, %1178 ], [ 0, %1177 ], [ 0, %1174 ], [ 0, %1171 ], [ 0, %1170 ], [ 0, %1167 ], [ 0, %1164 ], [ %753, %1145 ], [ %753, %1126 ], [ %753, %1086 ], [ %753, %1077 ], [ %753, %1071 ], [ %753, %1066 ], [ %753, %1060 ], [ %753, %1055 ], [ %753, %1044 ], [ %753, %1034 ], [ %753, %1015 ], [ %753, %1028 ], [ %753, %997 ], [ %753, %991 ], [ %753, %985 ], [ %753, %981 ], [ %753, %977 ], [ %753, %973 ], [ %753, %969 ], [ %753, %967 ], [ %753, %909 ], [ %753, %887 ], [ %753, %886 ], [ %753, %883 ], [ %753, %876 ], [ %753, %868 ], [ %753, %867 ], [ %753, %822 ], [ %753, %817 ], [ %753, %814 ], [ %753, %803 ], [ %753, %795 ], [ %753, %789 ], [ %753, %787 ], [ %753, %785 ], [ %753, %783 ], [ %753, %779 ], [ %753, %775 ], [ %753, %771 ], [ %753, %767 ], [ %753, %763 ], [ %753, %757 ], [ %753, %754 ], [ %753, %1274 ], [ %753, %1279 ], [ %753, %1295 ]
  %1374 = sub nsw i64 0, %738
  %1375 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 %1374
  %1376 = sub i64 %103, %738
  %1377 = getelementptr inbounds [20 x i16], [20 x i16]* %3, i64 0, i64 %1376
  %1378 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 1
  %1379 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 1, i32 0, i32 0
  store i64 %1367, i64* %1379, align 8
  %1380 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 1, i32 0, i32 1
  store i64 %1368, i64* %1380, align 8
  %1381 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 1, i32 0, i32 2
  store i64 %1369, i64* %1381, align 8
  %1382 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 1, i32 0, i32 3
  store i64 %1370, i64* %1382, align 8
  %1383 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 1, i32 0, i32 4
  store i64 %1371, i64* %1383, align 8
  %1384 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 1, i32 0, i32 5
  store i64 %1372, i64* %1384, align 8
  %1385 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 1, i32 0, i32 6
  store i64 %1373, i64* %1385, align 8
  %1386 = getelementptr inbounds [92 x i8], [92 x i8]* @yyr1, i64 0, i64 %735
  %1387 = load i8, i8* %1386, align 1
  %1388 = zext i8 %1387 to i64
  %1389 = add nsw i64 %1388, -28
  %1390 = getelementptr inbounds [26 x i8], [26 x i8]* @yypgoto, i64 0, i64 %1389
  %1391 = load i8, i8* %1390, align 1
  %1392 = sext i8 %1391 to i32
  %1393 = load i16, i16* %1377, align 2
  %1394 = sext i16 %1393 to i32
  %1395 = add nsw i32 %1394, %1392
  %1396 = icmp ult i32 %1395, 113
  br i1 %1396, label %1397, label %1407

; <label>:1397:                                   ; preds = %1366
  %1398 = sext i32 %1395 to i64
  %1399 = getelementptr inbounds [113 x i8], [113 x i8]* @yycheck, i64 0, i64 %1398
  %1400 = load i8, i8* %1399, align 1
  %1401 = sext i8 %1400 to i32
  %1402 = icmp eq i32 %1401, %1394
  br i1 %1402, label %1403, label %1407

; <label>:1403:                                   ; preds = %1397
  %1404 = getelementptr inbounds [113 x i8], [113 x i8]* @yytable, i64 0, i64 %1398
  %1405 = load i8, i8* %1404, align 1
  %1406 = zext i8 %1405 to i32
  br label %87

; <label>:1407:                                   ; preds = %1397, %1366
  %1408 = getelementptr inbounds [26 x i8], [26 x i8]* @yydefgoto, i64 0, i64 %1389
  %1409 = load i8, i8* %1408, align 1
  %1410 = sext i8 %1409 to i32
  br label %87
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc %struct.table* @lookup_zone(%struct.parser_control* readonly, i8* nocapture readonly) unnamed_addr #9 {
  %3 = tail call i32 @strcmp(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0)) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %33, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0)) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %35

; <label>:8:                                      ; preds = %43, %13
  %9 = phi i8* [ %16, %13 ], [ %41, %43 ]
  %10 = phi %struct.table* [ %14, %13 ], [ %39, %43 ]
  %11 = tail call i32 @strcmp(i8* %1, i8* nonnull %9) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.table, %struct.table* %10, i64 1
  %15 = getelementptr inbounds %struct.table, %struct.table* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %8

; <label>:18:                                     ; preds = %13
  br label %19

; <label>:19:                                     ; preds = %18, %38
  br label %20

; <label>:20:                                     ; preds = %19, %25
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0), %19 ]
  %22 = phi %struct.table* [ %26, %25 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 0), %19 ]
  %23 = tail call i32 @strcmp(i8* %1, i8* nonnull %21) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.table, %struct.table* %22, i64 1
  %27 = getelementptr inbounds %struct.table, %struct.table* %26, i64 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %20

; <label>:30:                                     ; preds = %20, %25
  %31 = phi %struct.table* [ null, %25 ], [ %22, %20 ]
  br label %33

; <label>:32:                                     ; preds = %8
  br label %33

; <label>:33:                                     ; preds = %32, %30, %2, %5, %35
  %34 = phi %struct.table* [ getelementptr inbounds ([4 x %struct.table], [4 x %struct.table]* @universal_time_zone_table, i64 0, i64 0), %2 ], [ getelementptr inbounds ([4 x %struct.table], [4 x %struct.table]* @universal_time_zone_table, i64 0, i64 1), %5 ], [ getelementptr inbounds ([4 x %struct.table], [4 x %struct.table]* @universal_time_zone_table, i64 0, i64 2), %35 ], [ %31, %30 ], [ %10, %32 ]
  ret %struct.table* %34

; <label>:35:                                     ; preds = %5
  %36 = tail call i32 @strcmp(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i64 0, i64 0)) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %33, label %38

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 32, i64 0
  %40 = getelementptr inbounds %struct.table, %struct.table* %39, i64 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %19, label %43

; <label>:43:                                     ; preds = %38
  br label %8
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @dbg_printf(i8*, ...) unnamed_addr #6 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #11
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %4) #17
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %3)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @__vfprintf_chk(%struct._IO_FILE* %7, i32 1, i8* %0, %struct.__va_list_tag* nonnull %6) #11
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @debug_print_current_time(i8*, %struct.parser_control*) unnamed_addr #6 {
  %3 = alloca [100 x i8], align 16
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* nonnull %4) #11
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 100, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 22
  %6 = load i8, i8* %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %192, label %8

; <label>:8:                                      ; preds = %2
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74.114, i64 0, i64 0), i32 5) #11
  tail call void (i8*, ...) @dbg_printf(i8* %9, i8* %0)
  %10 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 15
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 23
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %25, label %15

; <label>:15:                                     ; preds = %8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 6, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %16, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.75.116, i64 0, i64 0), i64 %18, i64 %20, i64 %22) #11
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %12, align 8
  br label %25

; <label>:25:                                     ; preds = %8, %15
  %26 = phi i32 [ 1, %15 ], [ 0, %8 ]
  %27 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 21
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 29
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %44, label %32

; <label>:32:                                     ; preds = %25
  %33 = icmp eq i32 %26, 0
  br i1 %33, label %37, label %34

; <label>:34:                                     ; preds = %32
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %35) #17
  br label %37

; <label>:37:                                     ; preds = %32, %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76.117, i64 0, i64 0), i32 5) #11
  %40 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 6, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %38, i32 1, i8* %39, i64 %41) #11
  %43 = load i64, i64* %27, align 8
  store i64 %43, i64* %29, align 8
  br label %44

; <label>:44:                                     ; preds = %25, %37
  %45 = phi i32 [ 1, %37 ], [ %26, %25 ]
  %46 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 19
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 27
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %80, label %51

; <label>:51:                                     ; preds = %44
  %52 = icmp eq i32 %45, 0
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %51
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %54) #17
  br label %56

; <label>:56:                                     ; preds = %51, %53
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 11, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %57, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77.118, i64 0, i64 0), i64 %59, i64 %61, i64 %63) #11
  %65 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 11, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %71, label %68

; <label>:68:                                     ; preds = %56
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %69, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78.119, i64 0, i64 0), i64 %66) #11
  br label %71

; <label>:71:                                     ; preds = %56, %68
  %72 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %71
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38.120, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %76) #17
  br label %78

; <label>:78:                                     ; preds = %75, %71
  %79 = load i64, i64* %46, align 8
  store i64 %79, i64* %48, align 8
  br label %80

; <label>:80:                                     ; preds = %44, %78
  %81 = phi i32 [ 1, %78 ], [ %45, %44 ]
  %82 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 16
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 24
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %102, label %87

; <label>:87:                                     ; preds = %80
  %88 = icmp eq i32 %81, 0
  br i1 %88, label %92, label %89

; <label>:89:                                     ; preds = %87
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %90) #17
  br label %92

; <label>:92:                                     ; preds = %87, %89
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79.121, i64 0, i64 0), i32 5) #11
  %95 = call fastcc i8* @str_days(%struct.parser_control* nonnull %1, i8* nonnull %4)
  %96 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %93, i32 1, i8* %94, i8* nonnull %95, i64 %97, i32 %99) #11
  %101 = load i64, i64* %82, align 8
  store i64 %101, i64* %84, align 8
  br label %102

; <label>:102:                                    ; preds = %80, %92
  %103 = phi i32 [ 1, %92 ], [ %81, %80 ]
  %104 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 17
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 25
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %112

; <label>:109:                                    ; preds = %102
  %110 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 18
  %111 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 26
  br label %128

; <label>:112:                                    ; preds = %102
  %113 = icmp eq i32 %103, 0
  br i1 %113, label %117, label %114

; <label>:114:                                    ; preds = %112
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = call i32 @fputc(i32 32, %struct._IO_FILE* %115) #17
  br label %117

; <label>:117:                                    ; preds = %112, %114
  %118 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 18
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 26
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %119, %121
  %123 = select i1 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80.122, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81.123, i64 0, i64 0)
  %124 = call i8* @dcgettext(i8* null, i8* %123, i32 5) #11
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %126 = call i32 @fputs(i8* %124, %struct._IO_FILE* %125) #17
  %127 = load i64, i64* %104, align 8
  store i64 %127, i64* %106, align 8
  br label %128

; <label>:128:                                    ; preds = %109, %117
  %129 = phi i64* [ %111, %109 ], [ %120, %117 ]
  %130 = phi i64* [ %110, %109 ], [ %118, %117 ]
  %131 = phi i32 [ %103, %109 ], [ 1, %117 ]
  %132 = load i64, i64* %130, align 8
  %133 = load i64, i64* %129, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %147, label %135

; <label>:135:                                    ; preds = %128
  %136 = icmp eq i32 %131, 0
  br i1 %136, label %140, label %137

; <label>:137:                                    ; preds = %135
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %139 = call i32 @fputc(i32 32, %struct._IO_FILE* %138) #17
  br label %140

; <label>:140:                                    ; preds = %135, %137
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82.124, i64 0, i64 0), i32 5) #11
  %143 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %141, i32 1, i8* %142, i32 %144) #11
  %146 = load i64, i64* %129, align 8
  store i64 %146, i64* %130, align 8
  br label %147

; <label>:147:                                    ; preds = %128, %140
  %148 = phi i32 [ 1, %140 ], [ %131, %128 ]
  %149 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 20
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 28
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %150, %152
  br i1 %153, label %173, label %154

; <label>:154:                                    ; preds = %147
  %155 = icmp eq i32 %148, 0
  br i1 %155, label %159, label %156

; <label>:156:                                    ; preds = %154
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %158 = call i32 @fputc(i32 32, %struct._IO_FILE* %157) #17
  br label %159

; <label>:159:                                    ; preds = %154, %156
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %161 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83.125, i64 0, i64 0), i32 5) #11
  %162 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = sdiv i64 %163, 60
  %165 = trunc i64 %164 to i32
  %166 = trunc i64 %163 to i32
  %167 = srem i32 %166, 60
  %168 = icmp sgt i32 %167, -1
  %169 = sub nsw i32 0, %167
  %170 = select i1 %168, i32 %167, i32 %169
  %171 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %160, i32 1, i8* %161, i32 %165, i32 %170) #11
  %172 = load i64, i64* %149, align 8
  store i64 %172, i64* %151, align 8
  br label %173

; <label>:173:                                    ; preds = %147, %159
  %174 = phi i32 [ 1, %159 ], [ %148, %147 ]
  %175 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 13
  %176 = load i8, i8* %175, align 8
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %189, label %178

; <label>:178:                                    ; preds = %173
  %179 = icmp eq i32 %174, 0
  br i1 %179, label %183, label %180

; <label>:180:                                    ; preds = %178
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %182 = call i32 @fputc(i32 32, %struct._IO_FILE* %181) #17
  br label %183

; <label>:183:                                    ; preds = %178, %180
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84.126, i64 0, i64 0), i32 5) #11
  %186 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 11, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %184, i32 1, i8* %185, i64 %187) #11
  br label %189

; <label>:189:                                    ; preds = %173, %183
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %191 = call i32 @fputc(i32 10, %struct._IO_FILE* %190) #17
  br label %192

; <label>:192:                                    ; preds = %2, %189
  call void @llvm.lifetime.end(i64 100, i8* nonnull %4) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @debug_print_relative_time(i8*, %struct.parser_control* nocapture readonly) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 22
  %4 = load i8, i8* %3, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %129, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74.114, i64 0, i64 0), i32 5) #11
  tail call void (i8*, ...) @dbg_printf(i8* %7, i8* %0)
  %8 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 1
  br i1 %10, label %12, label %39

; <label>:12:                                     ; preds = %6
  %13 = load i64, i64* %11, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %47

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %51

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %51

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %51

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %51

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

; <label>:35:                                     ; preds = %31
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0), i32 5) #11
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = tail call i32 @fputs(i8* %36, %struct._IO_FILE* %37) #17
  br label %129

; <label>:39:                                     ; preds = %6
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %40, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87.115, i64 0, i64 0)) #11
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %51, label %44

; <label>:44:                                     ; preds = %39
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %45) #17
  br label %47

; <label>:47:                                     ; preds = %12, %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i64, i64* %11, align 8
  %50 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %48, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0)) #11
  br label %51

; <label>:51:                                     ; preds = %31, %27, %23, %19, %15, %39, %47
  %52 = phi i32 [ 1, %47 ], [ 1, %39 ], [ 0, %15 ], [ 0, %19 ], [ 0, %23 ], [ 0, %27 ], [ 0, %31 ]
  %53 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %66, label %56

; <label>:56:                                     ; preds = %51
  %57 = icmp eq i32 %52, 0
  br i1 %57, label %62, label %58

; <label>:58:                                     ; preds = %56
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %59) #17
  %61 = load i64, i64* %53, align 8
  br label %62

; <label>:62:                                     ; preds = %56, %58
  %63 = phi i64 [ %54, %56 ], [ %61, %58 ]
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %64, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0)) #11
  br label %66

; <label>:66:                                     ; preds = %51, %62
  %67 = phi i32 [ 1, %62 ], [ %52, %51 ]
  %68 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %81, label %71

; <label>:71:                                     ; preds = %66
  %72 = icmp eq i32 %67, 0
  br i1 %72, label %77, label %73

; <label>:73:                                     ; preds = %71
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %74) #17
  %76 = load i64, i64* %68, align 8
  br label %77

; <label>:77:                                     ; preds = %71, %73
  %78 = phi i64 [ %69, %71 ], [ %76, %73 ]
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %79, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0)) #11
  br label %81

; <label>:81:                                     ; preds = %66, %77
  %82 = phi i32 [ 1, %77 ], [ %67, %66 ]
  %83 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %96, label %86

; <label>:86:                                     ; preds = %81
  %87 = icmp eq i32 %82, 0
  br i1 %87, label %92, label %88

; <label>:88:                                     ; preds = %86
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %89) #17
  %91 = load i64, i64* %83, align 8
  br label %92

; <label>:92:                                     ; preds = %86, %88
  %93 = phi i64 [ %84, %86 ], [ %91, %88 ]
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %94, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i64 0, i64 0)) #11
  br label %96

; <label>:96:                                     ; preds = %81, %92
  %97 = phi i32 [ 1, %92 ], [ %82, %81 ]
  %98 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %111, label %101

; <label>:101:                                    ; preds = %96
  %102 = icmp eq i32 %97, 0
  br i1 %102, label %107, label %103

; <label>:103:                                    ; preds = %101
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %104) #17
  %106 = load i64, i64* %98, align 8
  br label %107

; <label>:107:                                    ; preds = %101, %103
  %108 = phi i64 [ %99, %101 ], [ %106, %103 ]
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %110 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %109, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0)) #11
  br label %111

; <label>:111:                                    ; preds = %96, %107
  %112 = phi i32 [ 1, %107 ], [ %97, %96 ]
  %113 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %126, label %116

; <label>:116:                                    ; preds = %111
  %117 = icmp eq i32 %112, 0
  br i1 %117, label %122, label %118

; <label>:118:                                    ; preds = %116
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %119) #17
  %121 = load i64, i64* %113, align 8
  br label %122

; <label>:122:                                    ; preds = %116, %118
  %123 = phi i64 [ %114, %116 ], [ %121, %118 ]
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %124, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0)) #11
  br label %126

; <label>:126:                                    ; preds = %111, %122
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %128 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %127) #17
  br label %129

; <label>:129:                                    ; preds = %2, %126, %35
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @str_days(%struct.parser_control* nocapture readonly, i8* returned) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 30
  %4 = load i8, i8* %3, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 1
  %10 = icmp ult i64 %9, 14
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [14 x i8*], [14 x i8*]* @str_days.ordinal_values, i64 0, i64 %9
  %13 = load i8*, i8** %12, align 8
  %14 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false) #11
  %15 = tail call i8* @__strncpy_chk(i8* nonnull %1, i8* nonnull %13, i64 100, i64 %14) #11
  %16 = getelementptr inbounds i8, i8* %1, i64 99
  store i8 0, i8* %16, align 1
  br label %21

; <label>:17:                                     ; preds = %6
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %19 = tail call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %1, i64 100, i32 1, i64 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.268, i64 0, i64 0), i64 %8) #11
  br label %21

; <label>:20:                                     ; preds = %2
  store i8 0, i8* %1, align 1
  br label %21

; <label>:21:                                     ; preds = %11, %17, %20
  %22 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %23, 7
  br i1 %24, label %25, label %45

; <label>:25:                                     ; preds = %21
  %26 = tail call i64 @strlen(i8* %1) #14
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %25
  %29 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false) #11
  br label %36

; <label>:30:                                     ; preds = %25
  %31 = sub i64 100, %26
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false) #11
  %33 = tail call i8* @__strncat_chk(i8* nonnull %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.269, i64 0, i64 0), i64 %31, i64 %32) #11
  %34 = add i64 %26, 1
  %35 = load i32, i32* %22, align 8
  br label %36

; <label>:36:                                     ; preds = %28, %30
  %37 = phi i64 [ %29, %28 ], [ %32, %30 ]
  %38 = phi i32 [ %23, %28 ], [ %35, %30 ]
  %39 = phi i64 [ 0, %28 ], [ %34, %30 ]
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [7 x i8*], [7 x i8*]* @str_days.days_values, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = sub i64 100, %39
  %44 = tail call i8* @__strncat_chk(i8* nonnull %1, i8* nonnull %42, i64 %43, i64 %37) #11
  br label %45

; <label>:45:                                     ; preds = %21, %36
  ret i8* %1
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @__strncat_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @parse_datetime(%struct.timespec*, i8*, %struct.timespec*) local_unnamed_addr #6 {
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.128, i64 0, i64 0)) #11
  %5 = tail call %struct.tm_zone* @tzalloc(i8* %4) #11
  %6 = icmp eq %struct.tm_zone* %5, null
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = tail call zeroext i1 @parse_datetime2(%struct.timespec* %0, i8* %1, %struct.timespec* %2, i32 0, %struct.tm_zone* nonnull %5, i8* %4)
  tail call void @tzfree(%struct.tm_zone* nonnull %5) #11
  br label %9

; <label>:9:                                      ; preds = %3, %7
  %10 = phi i1 [ %8, %7 ], [ false, %3 ]
  ret i1 %10
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @parse_datetime2(%struct.timespec*, i8*, %struct.timespec*, i32, %struct.tm_zone*, i8*) local_unnamed_addr #6 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tm, align 8
  %15 = alloca %struct.tm, align 8
  %16 = alloca %struct.tm, align 8
  %17 = alloca %struct.tm, align 8
  %18 = alloca %struct.parser_control, align 8
  %19 = alloca %struct.timespec, align 8
  %20 = alloca [100 x i8], align 16
  %21 = alloca [100 x i8], align 16
  %22 = alloca [100 x i8], align 16
  %23 = alloca i64, align 8
  %24 = alloca %struct.tm, align 8
  %25 = alloca [30 x i8], align 16
  %26 = alloca i64, align 8
  %27 = alloca %struct.tm, align 8
  %28 = alloca %struct.tm, align 8
  %29 = alloca %struct.tm, align 8
  %30 = bitcast %struct.tm* %15 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %30) #11
  %31 = bitcast %struct.tm* %16 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %31) #11
  %32 = bitcast %struct.tm* %17 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %32) #11
  %33 = bitcast %struct.parser_control* %18 to i8*
  call void @llvm.lifetime.start(i64 360, i8* nonnull %33) #11
  %34 = bitcast %struct.timespec* %19 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %34) #11
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* nonnull %35) #11
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* nonnull %36) #11
  %37 = tail call i64 @strlen(i8* %1) #14
  %38 = getelementptr inbounds i8, i8* %1, i64 %37
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* nonnull %39) #11
  %40 = icmp eq %struct.timespec* %2, null
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %6
  call void @gettime(%struct.timespec* nonnull %19) #11
  br label %42

; <label>:42:                                     ; preds = %6, %41
  %43 = phi %struct.timespec* [ %2, %6 ], [ %19, %41 ]
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %43, i64 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %43, i64 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i8, i8* %1, align 1
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %49, -9
  %51 = icmp ult i32 %50, 24
  br i1 %51, label %52, label %68

; <label>:52:                                     ; preds = %42
  br label %53

; <label>:53:                                     ; preds = %52, %60
  %54 = phi i32 [ %64, %60 ], [ %50, %52 ]
  %55 = phi i8* [ %61, %60 ], [ %1, %52 ]
  %56 = trunc i32 %54 to i24
  %57 = lshr i24 -8388577, %56
  %58 = and i24 %57, 1
  %59 = icmp eq i24 %58, 0
  br i1 %59, label %66, label %60

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds i8, i8* %55, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, -9
  %65 = icmp ult i32 %64, 24
  br i1 %65, label %53, label %66

; <label>:66:                                     ; preds = %53, %60
  %67 = phi i8* [ %55, %53 ], [ %61, %60 ]
  br label %68

; <label>:68:                                     ; preds = %66, %42
  %69 = phi i8* [ %1, %42 ], [ %67, %66 ]
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.131, i64 0, i64 0), i64 4) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %129

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds i8, i8* %69, i64 4
  br label %74

; <label>:74:                                     ; preds = %123, %72
  %75 = phi i8* [ %73, %72 ], [ %125, %123 ]
  %76 = phi i64 [ 1, %72 ], [ %126, %123 ]
  %77 = load i8, i8* %75, align 1
  switch i8 %77, label %123 [
    i8 0, label %128
    i8 92, label %78
    i8 34, label %81
  ]

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds i8, i8* %75, i64 1
  %80 = load i8, i8* %79, align 1
  switch i8 %80, label %128 [
    i8 92, label %123
    i8 34, label %123
  ]

; <label>:81:                                     ; preds = %74
  %82 = icmp ugt i64 %76, 100
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %81
  %84 = call noalias i8* @malloc(i64 %76) #11
  %85 = icmp eq i8* %84, null
  br i1 %85, label %1151, label %86

; <label>:86:                                     ; preds = %83, %81
  %87 = phi i8* [ %39, %81 ], [ %84, %83 ]
  %88 = phi i8* [ null, %81 ], [ %84, %83 ]
  %89 = load i8, i8* %73, align 1
  %90 = icmp eq i8 %89, 34
  br i1 %90, label %105, label %91

; <label>:91:                                     ; preds = %86
  br label %92

; <label>:92:                                     ; preds = %91, %92
  %93 = phi i8 [ %102, %92 ], [ %89, %91 ]
  %94 = phi i8* [ %101, %92 ], [ %73, %91 ]
  %95 = phi i8* [ %100, %92 ], [ %87, %91 ]
  %96 = icmp eq i8 %93, 92
  %97 = zext i1 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 %99, i8* %95, align 1
  %101 = getelementptr inbounds i8, i8* %98, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = icmp eq i8 %102, 34
  br i1 %103, label %104, label %92

; <label>:104:                                    ; preds = %92
  br label %105

; <label>:105:                                    ; preds = %104, %86
  %106 = phi i8* [ %87, %86 ], [ %100, %104 ]
  %107 = phi i8* [ %73, %86 ], [ %101, %104 ]
  store i8 0, i8* %106, align 1
  %108 = call %struct.tm_zone* @tzalloc(i8* %87) #11
  %109 = icmp eq %struct.tm_zone* %108, null
  br i1 %109, label %1151, label %110

; <label>:110:                                    ; preds = %105
  br label %111

; <label>:111:                                    ; preds = %110, %118
  %112 = phi i8* [ %113, %118 ], [ %107, %110 ]
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %115, -9
  %117 = icmp ult i32 %116, 24
  br i1 %117, label %118, label %127

; <label>:118:                                    ; preds = %111
  %119 = trunc i32 %116 to i24
  %120 = lshr i24 -8388577, %119
  %121 = and i24 %120, 1
  %122 = icmp eq i24 %121, 0
  br i1 %122, label %127, label %111

; <label>:123:                                    ; preds = %74, %78, %78
  %124 = phi i8* [ %79, %78 ], [ %79, %78 ], [ %75, %74 ]
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = add i64 %76, 1
  br label %74

; <label>:127:                                    ; preds = %111, %118
  br label %129

; <label>:128:                                    ; preds = %74, %78
  br label %129

; <label>:129:                                    ; preds = %128, %127, %68
  %130 = phi i8* [ null, %68 ], [ %88, %127 ], [ null, %128 ]
  %131 = phi %struct.tm_zone* [ %4, %68 ], [ %108, %127 ], [ %4, %128 ]
  %132 = phi i8* [ %5, %68 ], [ %87, %127 ], [ %5, %128 ]
  %133 = phi i8* [ %69, %68 ], [ %113, %127 ], [ %69, %128 ]
  %134 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* %44, %struct.tm* nonnull %15) #11
  %135 = icmp eq %struct.tm* %134, null
  br i1 %135, label %1154, label %136

; <label>:136:                                    ; preds = %129
  %137 = load i8, i8* %133, align 1
  %138 = icmp eq i8 %137, 0
  %139 = select i1 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.132, i64 0, i64 0), i8* %133
  %140 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 0
  store i8* %139, i8** %140, align 8
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 6, i32 1
  %145 = add nsw i64 %143, 1900
  store i64 %145, i64* %144, align 8
  %146 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 6, i32 2
  store i64 0, i64* %146, align 8
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 7
  store i64 %150, i64* %151, align 8
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 8
  store i64 %154, i64* %155, align 8
  %156 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 9
  store i64 %158, i64* %159, align 8
  %160 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 10
  store i64 %162, i64* %163, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 11
  %168 = getelementptr inbounds %struct.timespec, %struct.timespec* %167, i64 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 11, i32 1
  store i64 %47, i64* %169, align 8
  %170 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 8
  store i32 %171, i32* %172, align 8
  %173 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 5
  store i32 2, i32* %173, align 8
  %174 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 12, i32 0
  %175 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 12, i32 1
  %176 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 12, i32 2
  %177 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 12, i32 3
  %178 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 12, i32 4
  %179 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 12, i32 5
  %180 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 12, i32 6
  %181 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 13
  %182 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 14
  %183 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 15
  %184 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 16
  %185 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 19
  %186 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 17
  %187 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 18
  %188 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 20
  %189 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 22
  %190 = trunc i32 %3 to i8
  %191 = and i8 %190, 1
  %192 = bitcast i64* %174 to i8*
  call void @llvm.memset.p0i8.i64(i8* %192, i8 0, i64 58, i32 8, i1 false)
  %193 = bitcast i64* %183 to i8*
  call void @llvm.memset.p0i8.i64(i8* %193, i8 0, i64 56, i32 8, i1 false)
  store i8 %191, i8* %189, align 8
  %194 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 23
  %195 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 31
  store i64 0, i64* %195, align 8
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 10
  %197 = bitcast i8** %196 to i64*
  %198 = bitcast i64* %194 to i8*
  call void @llvm.memset.p0i8.i64(i8* %198, i8 0, i64 57, i32 8, i1 false)
  %199 = load i64, i64* %197, align 8
  %200 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 32
  %201 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %200, i64 0, i64 0, i32 0
  %202 = bitcast [3 x %struct.table]* %200 to i64*
  store i64 %199, i64* %202, align 8
  %203 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 32, i64 0, i32 1
  store i32 269, i32* %203, align 8
  %204 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 32, i64 0, i32 2
  store i32 %171, i32* %204, align 4
  %205 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 32, i64 1, i32 0
  store i8* null, i8** %205, align 8
  %206 = bitcast i64* %23 to i8*
  %207 = bitcast %struct.tm* %24 to i8*
  %208 = getelementptr inbounds %struct.tm, %struct.tm* %24, i64 0, i32 10
  %209 = getelementptr inbounds %struct.tm, %struct.tm* %24, i64 0, i32 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %206) #11
  %210 = add nsw i64 %45, 7776000
  store i64 %210, i64* %23, align 8
  call void @llvm.lifetime.start(i64 56, i8* nonnull %207) #11
  %211 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* nonnull %23, %struct.tm* nonnull %24) #11
  %212 = icmp eq %struct.tm* %211, null
  br i1 %212, label %226, label %213

; <label>:213:                                    ; preds = %136
  %214 = load i8*, i8** %208, align 8
  %215 = icmp eq i8* %214, null
  br i1 %215, label %226, label %216

; <label>:216:                                    ; preds = %213
  %217 = load i32, i32* %209, align 8
  %218 = load i32, i32* %204, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %226, label %220

; <label>:220:                                    ; preds = %1170, %1159, %216
  %221 = phi i32 [ %217, %216 ], [ %1160, %1159 ], [ %1171, %1170 ]
  %222 = phi i8* [ %214, %216 ], [ %1157, %1159 ], [ %1168, %1170 ]
  store i8* %222, i8** %205, align 8
  %223 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 32, i64 1, i32 1
  store i32 269, i32* %223, align 8
  %224 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 32, i64 1, i32 2
  store i32 %221, i32* %224, align 4
  %225 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 32, i64 2, i32 0
  store i8* null, i8** %225, align 8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %207) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %206) #11
  br label %230

; <label>:226:                                    ; preds = %136, %213, %216
  call void @llvm.lifetime.end(i64 56, i8* nonnull %207) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %206) #11
  call void @llvm.lifetime.start(i64 8, i8* nonnull %206) #11
  %227 = add nsw i64 %45, 15552000
  store i64 %227, i64* %23, align 8
  call void @llvm.lifetime.start(i64 56, i8* nonnull %207) #11
  %228 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* nonnull %23, %struct.tm* nonnull %24) #11
  %229 = icmp eq %struct.tm* %228, null
  br i1 %229, label %1163, label %1156

; <label>:230:                                    ; preds = %1174, %220
  %231 = load i8*, i8** %201, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %240, label %233

; <label>:233:                                    ; preds = %230
  %234 = load i8*, i8** %205, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %240, label %236

; <label>:236:                                    ; preds = %233
  %237 = call i32 @strcmp(i8* nonnull %231, i8* nonnull %234) #11
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %240

; <label>:239:                                    ; preds = %236
  store i32 -1, i32* %204, align 4
  store i8* null, i8** %205, align 8
  br label %240

; <label>:240:                                    ; preds = %236, %233, %230, %239
  %241 = bitcast i64* %13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %241) #11
  store i64 0, i64* %13, align 8
  %242 = bitcast %struct.tm* %14 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #11
  %243 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* nonnull %13, %struct.tm* nonnull %14) #11
  %244 = icmp eq %struct.tm* %243, null
  br i1 %244, label %248, label %245

; <label>:245:                                    ; preds = %240
  %246 = call i64 @timegm(%struct.tm* nonnull %14) #11
  %247 = sdiv i64 %246, 60
  br label %248

; <label>:248:                                    ; preds = %240, %245
  %249 = phi i64 [ %247, %245 ], [ 0, %240 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %241) #11
  store i64 %249, i64* %195, align 8
  %250 = call i32 @yyparse(%struct.parser_control* nonnull %18)
  %251 = icmp eq i32 %250, 0
  %252 = load i8, i8* %189, align 8
  %253 = icmp ne i8 %252, 0
  br i1 %251, label %264, label %254

; <label>:254:                                    ; preds = %248
  br i1 %253, label %255, label %1147

; <label>:255:                                    ; preds = %254
  %256 = load i8*, i8** %140, align 8
  %257 = icmp ugt i8* %38, %256
  br i1 %257, label %261, label %258

; <label>:258:                                    ; preds = %255
  %259 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21.133, i64 0, i64 0), i32 5) #11
  %260 = load i8*, i8** %140, align 8
  call void (i8*, ...) @dbg_printf(i8* %259, i8* %260)
  br label %1147

; <label>:261:                                    ; preds = %255
  %262 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22.134, i64 0, i64 0), i32 5) #11
  %263 = load i8*, i8** %140, align 8
  call void (i8*, ...) @dbg_printf(i8* %262, i8* %263)
  br label %1147

; <label>:264:                                    ; preds = %248
  br i1 %253, label %265, label %329

; <label>:265:                                    ; preds = %264
  %266 = load i64, i64* %195, align 8
  %267 = load i8, i8* %181, align 8
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %272, label %269

; <label>:269:                                    ; preds = %265
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23.135, i64 0, i64 0), i32 5) #11
  %271 = call i8* @strncpy(i8* %36, i8* %270, i64 99)
  br label %299

; <label>:272:                                    ; preds = %265
  %273 = load i64, i64* %188, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %280, label %275

; <label>:275:                                    ; preds = %272
  %276 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24.136, i64 0, i64 0), i32 5) #11
  %279 = call i8* @strncpy(i8* %36, i8* %278, i64 99)
  br label %299

; <label>:280:                                    ; preds = %272
  %281 = icmp eq i8* %132, null
  br i1 %281, label %296, label %282

; <label>:282:                                    ; preds = %280
  %283 = icmp eq %struct.tm_zone* %131, %4
  br i1 %283, label %287, label %284

; <label>:284:                                    ; preds = %282
  %285 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25.137, i64 0, i64 0), i32 5) #11
  %286 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %36, i64 100, i32 1, i64 100, i8* %285, i8* nonnull %132) #11
  br label %299

; <label>:287:                                    ; preds = %282
  %288 = call i32 @strcmp(i8* nonnull %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26.138, i64 0, i64 0)) #11
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %293

; <label>:290:                                    ; preds = %287
  %291 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27.139, i64 0, i64 0), i32 5) #11
  %292 = call i8* @strncpy(i8* %36, i8* %291, i64 99)
  br label %299

; <label>:293:                                    ; preds = %287
  %294 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28.140, i64 0, i64 0), i32 5) #11
  %295 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %36, i64 100, i32 1, i64 100, i8* %294, i8* nonnull %132) #11
  br label %299

; <label>:296:                                    ; preds = %280
  %297 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29.141, i64 0, i64 0), i32 5) #11
  %298 = call i8* @strncpy(i8* %36, i8* %297, i64 99)
  br label %299

; <label>:299:                                    ; preds = %275, %284, %293, %290, %296, %269
  %300 = phi i64 [ 0, %269 ], [ %277, %275 ], [ %266, %284 ], [ %266, %290 ], [ %266, %293 ], [ %266, %296 ]
  %301 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 99
  store i8 0, i8* %301, align 1
  %302 = load i64, i64* %186, align 8
  %303 = icmp ne i64 %302, 0
  %304 = load i64, i64* %188, align 8
  %305 = icmp eq i64 %304, 0
  %306 = and i1 %303, %305
  br i1 %306, label %307, label %316

; <label>:307:                                    ; preds = %299
  %308 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %316

; <label>:311:                                    ; preds = %307
  %312 = add nsw i64 %300, 60
  %313 = call i64 @strlen(i8* nonnull %36) #14
  %314 = sub i64 99, %313
  %315 = call i8* @__strncat_chk(i8* nonnull %36, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.142, i64 0, i64 0), i64 %314, i64 100) #11
  br label %316

; <label>:316:                                    ; preds = %299, %311, %307
  %317 = phi i64 [ %312, %311 ], [ %300, %307 ], [ %300, %299 ]
  %318 = load i8, i8* %189, align 8
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %329, label %320

; <label>:320:                                    ; preds = %316
  %321 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31.143, i64 0, i64 0), i32 5) #11
  %322 = sdiv i64 %317, 60
  %323 = trunc i64 %322 to i32
  %324 = srem i64 %317, 60
  %325 = trunc i64 %324 to i32
  %326 = icmp sgt i32 %325, -1
  %327 = sub i32 0, %325
  %328 = select i1 %326, i32 %325, i32 %327
  call void (i8*, ...) @dbg_printf(i8* %321, i32 %323, i32 %328, i8* nonnull %36)
  br label %329

; <label>:329:                                    ; preds = %320, %316, %264
  %330 = load i8, i8* %181, align 8
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %335, label %332

; <label>:332:                                    ; preds = %329
  %333 = bitcast %struct.timespec* %0 to i8*
  %334 = bitcast %struct.timespec* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %333, i8* %334, i64 16, i32 8, i1 false)
  br label %1086

; <label>:335:                                    ; preds = %329
  %336 = load i64, i64* %185, align 8
  %337 = load i64, i64* %183, align 8
  %338 = or i64 %337, %336
  %339 = load i64, i64* %184, align 8
  %340 = or i64 %338, %339
  %341 = load i64, i64* %187, align 8
  %342 = or i64 %340, %341
  %343 = load i64, i64* %186, align 8
  %344 = load i64, i64* %188, align 8
  %345 = add i64 %344, %343
  %346 = or i64 %342, %345
  %347 = icmp ugt i64 %346, 1
  %348 = load i8, i8* %189, align 8
  %349 = icmp eq i8 %348, 0
  br i1 %347, label %350, label %373

; <label>:350:                                    ; preds = %335
  br i1 %349, label %1147, label %351

; <label>:351:                                    ; preds = %350
  %352 = icmp ugt i64 %336, 1
  br i1 %352, label %353, label %355

; <label>:353:                                    ; preds = %351
  call void (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32.144, i64 0, i64 0))
  %354 = load i64, i64* %183, align 8
  br label %355

; <label>:355:                                    ; preds = %353, %351
  %356 = phi i64 [ %354, %353 ], [ %337, %351 ]
  %357 = icmp ugt i64 %356, 1
  br i1 %357, label %358, label %359

; <label>:358:                                    ; preds = %355
  call void (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33.145, i64 0, i64 0))
  br label %359

; <label>:359:                                    ; preds = %358, %355
  %360 = load i64, i64* %184, align 8
  %361 = icmp ugt i64 %360, 1
  br i1 %361, label %362, label %363

; <label>:362:                                    ; preds = %359
  call void (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34.146, i64 0, i64 0))
  br label %363

; <label>:363:                                    ; preds = %362, %359
  %364 = load i64, i64* %187, align 8
  %365 = icmp ugt i64 %364, 1
  br i1 %365, label %366, label %367

; <label>:366:                                    ; preds = %363
  call void (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35.147, i64 0, i64 0))
  br label %367

; <label>:367:                                    ; preds = %366, %363
  %368 = load i64, i64* %186, align 8
  %369 = load i64, i64* %188, align 8
  %370 = add i64 %369, %368
  %371 = icmp ugt i64 %370, 1
  br i1 %371, label %372, label %1147

; <label>:372:                                    ; preds = %367
  call void (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36.148, i64 0, i64 0))
  br label %1147

; <label>:373:                                    ; preds = %335
  %374 = load i64, i64* %144, align 8
  %375 = icmp slt i64 %374, 0
  br i1 %375, label %376, label %378

; <label>:376:                                    ; preds = %373
  %377 = sub nsw i64 0, %374
  br label %388

; <label>:378:                                    ; preds = %373
  %379 = load i64, i64* %146, align 8
  %380 = icmp eq i64 %379, 2
  br i1 %380, label %381, label %388

; <label>:381:                                    ; preds = %378
  %382 = icmp slt i64 %374, 69
  %383 = select i1 %382, i64 2000, i64 1900
  %384 = add nsw i64 %383, %374
  br i1 %349, label %388, label %385

; <label>:385:                                    ; preds = %381
  %386 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.231, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %386, i64 %374, i64 %384) #11
  %387 = load i64, i64* %185, align 8
  br label %388

; <label>:388:                                    ; preds = %381, %376, %378, %385
  %389 = phi i64 [ %336, %376 ], [ %387, %385 ], [ %336, %381 ], [ %336, %378 ]
  %390 = phi i64 [ %377, %376 ], [ %384, %385 ], [ %384, %381 ], [ %374, %378 ]
  %391 = add i64 %390, 4294965396
  %392 = trunc i64 %391 to i32
  %393 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 5
  store i32 %392, i32* %393, align 4
  %394 = load i64, i64* %151, align 8
  %395 = add i64 %394, 4294967295
  %396 = trunc i64 %395 to i32
  %397 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 4
  store i32 %396, i32* %397, align 8
  %398 = load i64, i64* %155, align 8
  %399 = trunc i64 %398 to i32
  %400 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 3
  store i32 %399, i32* %400, align 4
  %401 = icmp eq i64 %389, 0
  br i1 %401, label %402, label %410

; <label>:402:                                    ; preds = %388
  %403 = load i8, i8* %182, align 1
  %404 = icmp ne i8 %403, 0
  %405 = load i64, i64* %183, align 8
  %406 = load i64, i64* %184, align 8
  %407 = or i64 %406, %405
  %408 = icmp eq i64 %407, 0
  %409 = and i1 %404, %408
  br i1 %409, label %410, label %463

; <label>:410:                                    ; preds = %402, %388
  %411 = load i64, i64* %159, align 8
  %412 = load i32, i32* %173, align 8
  switch i32 %412, label %413 [
    i32 1, label %422
    i32 0, label %416
  ]

; <label>:413:                                    ; preds = %410
  %414 = icmp ult i64 %411, 24
  %415 = select i1 %414, i64 %411, i64 -1
  br label %429

; <label>:416:                                    ; preds = %410
  %417 = add i64 %411, -1
  %418 = icmp ult i64 %417, 11
  %419 = icmp ne i64 %411, 12
  %420 = sext i1 %419 to i64
  %421 = select i1 %418, i64 %411, i64 %420
  br label %429

; <label>:422:                                    ; preds = %410
  %423 = add i64 %411, -1
  %424 = icmp ult i64 %423, 11
  %425 = add nsw i64 %411, 12
  %426 = icmp eq i64 %411, 12
  %427 = select i1 %426, i64 12, i64 -1
  %428 = select i1 %424, i64 %425, i64 %427
  br label %429

; <label>:429:                                    ; preds = %413, %416, %422
  %430 = phi i64 [ %415, %413 ], [ %421, %416 ], [ %428, %422 ]
  %431 = trunc i64 %430 to i32
  %432 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 2
  store i32 %431, i32* %432, align 8
  %433 = icmp slt i32 %431, 0
  br i1 %433, label %434, label %444

; <label>:434:                                    ; preds = %429
  %435 = load i8, i8* %189, align 8
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %1147, label %437

; <label>:437:                                    ; preds = %434
  %438 = icmp eq i32 %412, 0
  %439 = icmp eq i32 %412, 1
  %440 = select i1 %439, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38.120, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39.149, i64 0, i64 0)
  %441 = select i1 %438, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37.150, i64 0, i64 0), i8* %440
  %442 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40.151, i64 0, i64 0), i32 5) #11
  %443 = load i64, i64* %159, align 8
  call void (i8*, ...) @dbg_printf(i8* %442, i64 %443, i8* %441)
  br label %1147

; <label>:444:                                    ; preds = %429
  %445 = load i64, i64* %163, align 8
  %446 = trunc i64 %445 to i32
  %447 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 1
  store i32 %446, i32* %447, align 4
  %448 = load i64, i64* %168, align 8
  %449 = trunc i64 %448 to i32
  %450 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 0
  store i32 %449, i32* %450, align 8
  %451 = load i8, i8* %189, align 8
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %470, label %453

; <label>:453:                                    ; preds = %444
  %454 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41.152, i64 0, i64 0), i32 5) #11
  %455 = load i64, i64* %185, align 8
  %456 = icmp ne i64 %455, 0
  %457 = select i1 %456, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42.153, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43.154, i64 0, i64 0)
  %458 = call i8* @dcgettext(i8* null, i8* %457, i32 5) #11
  %459 = load i32, i32* %432, align 8
  %460 = load i32, i32* %447, align 4
  %461 = load i32, i32* %450, align 8
  %462 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %36, i64 100, i32 1, i64 100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.232, i64 0, i64 0), i32 %459, i32 %460, i32 %461) #11
  call void (i8*, ...) @dbg_printf(i8* %454, i8* %458, i8* nonnull %36)
  br label %470

; <label>:463:                                    ; preds = %402
  %464 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 0
  store i32 0, i32* %464, align 8
  %465 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 1
  store i32 0, i32* %465, align 4
  %466 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 2
  store i32 0, i32* %466, align 8
  store i64 0, i64* %169, align 8
  %467 = load i8, i8* %189, align 8
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %470, label %469

; <label>:469:                                    ; preds = %463
  call void (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.44.155, i64 0, i64 0))
  br label %470

; <label>:470:                                    ; preds = %444, %463, %469, %453
  %471 = load i64, i64* %183, align 8
  %472 = load i64, i64* %184, align 8
  %473 = or i64 %472, %471
  %474 = load i64, i64* %185, align 8
  %475 = or i64 %473, %474
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %478, label %477

; <label>:477:                                    ; preds = %470
  store i32 -1, i32* %172, align 8
  br label %478

; <label>:478:                                    ; preds = %470, %477
  %479 = load i64, i64* %186, align 8
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %484, label %481

; <label>:481:                                    ; preds = %478
  %482 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 3
  %483 = load i32, i32* %482, align 4
  store i32 %483, i32* %172, align 8
  br label %484

; <label>:484:                                    ; preds = %478, %481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %32, i8* nonnull %31, i64 56, i32 8, i1 false)
  %485 = call i64 @mktime_z(%struct.tm_zone* %131, %struct.tm* nonnull %16) #11
  %486 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %486)
  store i64 %485, i64* %11, align 8
  %487 = bitcast %struct.tm* %12 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %487) #11
  %488 = icmp eq i64 %485, -1
  br i1 %488, label %489, label %493

; <label>:489:                                    ; preds = %484
  %490 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* nonnull %11, %struct.tm* nonnull %12) #11
  %491 = icmp eq %struct.tm* %490, null
  br i1 %491, label %492, label %493

; <label>:492:                                    ; preds = %489
  call void @llvm.lifetime.end(i64 56, i8* nonnull %487) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %486)
  br label %531

; <label>:493:                                    ; preds = %484, %489
  %494 = phi %struct.tm* [ %490, %489 ], [ %16, %484 ]
  %495 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = getelementptr inbounds %struct.tm, %struct.tm* %494, i64 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = xor i32 %498, %496
  %500 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 1
  %501 = load i32, i32* %500, align 4
  %502 = getelementptr inbounds %struct.tm, %struct.tm* %494, i64 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = xor i32 %503, %501
  %505 = or i32 %504, %499
  %506 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = getelementptr inbounds %struct.tm, %struct.tm* %494, i64 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = xor i32 %509, %507
  %511 = or i32 %505, %510
  %512 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 3
  %513 = load i32, i32* %512, align 4
  %514 = getelementptr inbounds %struct.tm, %struct.tm* %494, i64 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = xor i32 %515, %513
  %517 = or i32 %511, %516
  %518 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 4
  %519 = load i32, i32* %518, align 8
  %520 = getelementptr inbounds %struct.tm, %struct.tm* %494, i64 0, i32 4
  %521 = load i32, i32* %520, align 8
  %522 = xor i32 %521, %519
  %523 = or i32 %517, %522
  %524 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 5
  %525 = load i32, i32* %524, align 4
  %526 = getelementptr inbounds %struct.tm, %struct.tm* %494, i64 0, i32 5
  %527 = load i32, i32* %526, align 4
  %528 = xor i32 %527, %525
  %529 = or i32 %523, %528
  %530 = icmp eq i32 %529, 0
  call void @llvm.lifetime.end(i64 56, i8* nonnull %487) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %486)
  br i1 %530, label %609, label %531

; <label>:531:                                    ; preds = %492, %493
  %532 = load i64, i64* %188, align 8
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %535

; <label>:534:                                    ; preds = %531
  call fastcc void @debug_mktime_not_ok(%struct.tm* nonnull %17, %struct.tm* nonnull %16, %struct.parser_control* nonnull %18, i1 zeroext false)
  br label %1147

; <label>:535:                                    ; preds = %531
  %536 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %537 = load i64, i64* %536, align 8
  %538 = icmp slt i64 %537, 0
  %539 = sub nsw i64 0, %537
  %540 = select i1 %538, i64 %539, i64 %537
  %541 = sdiv i64 %540, 60
  %542 = srem i64 %540, 60
  %543 = trunc i64 %542 to i32
  %544 = getelementptr inbounds [30 x i8], [30 x i8]* %25, i64 0, i64 0
  call void @llvm.lifetime.start(i64 30, i8* nonnull %544) #11
  %545 = lshr i64 %537, 63
  %546 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.46.156, i64 0, i64 %545
  %547 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %544, i32 1, i64 30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45.157, i64 0, i64 0), i8* %546, i64 %541, i32 %543) #11
  %548 = call %struct.tm_zone* @tzalloc(i8* nonnull %544) #11
  %549 = icmp eq %struct.tm_zone* %548, null
  br i1 %549, label %550, label %555

; <label>:550:                                    ; preds = %535
  %551 = load i8, i8* %189, align 8
  %552 = icmp eq i8 %551, 0
  br i1 %552, label %605, label %553

; <label>:553:                                    ; preds = %550
  %554 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47.158, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %554, i8* nonnull %544)
  br label %605

; <label>:555:                                    ; preds = %535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %31, i8* nonnull %32, i64 56, i32 8, i1 false)
  %556 = call i64 @mktime_z(%struct.tm_zone* nonnull %548, %struct.tm* nonnull %16) #11
  %557 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %557)
  store i64 %556, i64* %9, align 8
  %558 = bitcast %struct.tm* %10 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %558) #11
  %559 = icmp eq i64 %556, -1
  br i1 %559, label %560, label %563

; <label>:560:                                    ; preds = %555
  %561 = call %struct.tm* @localtime_rz(%struct.tm_zone* nonnull %548, i64* nonnull %9, %struct.tm* nonnull %10) #11
  %562 = icmp eq %struct.tm* %561, null
  br i1 %562, label %601, label %563

; <label>:563:                                    ; preds = %560, %555
  %564 = phi %struct.tm* [ %561, %560 ], [ %16, %555 ]
  %565 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = getelementptr inbounds %struct.tm, %struct.tm* %564, i64 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = xor i32 %568, %566
  %570 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 1
  %571 = load i32, i32* %570, align 4
  %572 = getelementptr inbounds %struct.tm, %struct.tm* %564, i64 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = xor i32 %573, %571
  %575 = or i32 %574, %569
  %576 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 2
  %577 = load i32, i32* %576, align 8
  %578 = getelementptr inbounds %struct.tm, %struct.tm* %564, i64 0, i32 2
  %579 = load i32, i32* %578, align 8
  %580 = xor i32 %579, %577
  %581 = or i32 %575, %580
  %582 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 3
  %583 = load i32, i32* %582, align 4
  %584 = getelementptr inbounds %struct.tm, %struct.tm* %564, i64 0, i32 3
  %585 = load i32, i32* %584, align 4
  %586 = xor i32 %585, %583
  %587 = or i32 %581, %586
  %588 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 4
  %589 = load i32, i32* %588, align 8
  %590 = getelementptr inbounds %struct.tm, %struct.tm* %564, i64 0, i32 4
  %591 = load i32, i32* %590, align 8
  %592 = xor i32 %591, %589
  %593 = or i32 %587, %592
  %594 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 5
  %595 = load i32, i32* %594, align 4
  %596 = getelementptr inbounds %struct.tm, %struct.tm* %564, i64 0, i32 5
  %597 = load i32, i32* %596, align 4
  %598 = xor i32 %597, %595
  %599 = or i32 %593, %598
  %600 = icmp eq i32 %599, 0
  br label %601

; <label>:601:                                    ; preds = %560, %563
  %602 = phi i1 [ %600, %563 ], [ false, %560 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %558) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %557)
  %603 = zext i1 %602 to i8
  call void @tzfree(%struct.tm_zone* nonnull %548) #11
  br i1 %602, label %604, label %606

; <label>:604:                                    ; preds = %601
  call void @llvm.lifetime.end(i64 30, i8* nonnull %544) #11
  br label %609

; <label>:605:                                    ; preds = %550, %553
  call void @llvm.lifetime.end(i64 30, i8* nonnull %544) #11
  br label %1147

; <label>:606:                                    ; preds = %601
  %607 = load i64, i64* %188, align 8
  %608 = icmp ne i64 %607, 0
  call fastcc void @debug_mktime_not_ok(%struct.tm* nonnull %17, %struct.tm* nonnull %16, %struct.parser_control* nonnull %18, i1 zeroext %608)
  call void @llvm.lifetime.end(i64 30, i8* nonnull %544) #11
  br label %1082

; <label>:609:                                    ; preds = %604, %493
  %610 = phi i8 [ 1, %493 ], [ %603, %604 ]
  %611 = phi i64 [ %485, %493 ], [ %556, %604 ]
  %612 = load i64, i64* %184, align 8
  %613 = icmp ne i64 %612, 0
  %614 = load i64, i64* %183, align 8
  %615 = icmp eq i64 %614, 0
  %616 = and i1 %613, %615
  br i1 %616, label %617, label %721

; <label>:617:                                    ; preds = %609
  %618 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 2
  %619 = load i32, i32* %618, align 8
  %620 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 6
  %621 = load i32, i32* %620, align 8
  %622 = add i32 %619, 7
  %623 = sub i32 %622, %621
  %624 = srem i32 %623, 7
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 1
  %627 = load i64, i64* %626, align 8
  %628 = icmp sgt i64 %627, 0
  %629 = icmp ne i32 %619, %621
  %630 = and i1 %629, %628
  %631 = zext i1 %630 to i64
  %632 = sub nsw i64 %627, %631
  %633 = mul nsw i64 %632, 7
  %634 = load i32, i32* %400, align 4
  %635 = zext i32 %634 to i64
  %636 = add nuw nsw i64 %625, %635
  %637 = add i64 %636, %633
  %638 = trunc i64 %637 to i32
  store i32 %638, i32* %400, align 4
  store i32 -1, i32* %172, align 8
  %639 = call i64 @mktime_z(%struct.tm_zone* %131, %struct.tm* nonnull %16) #11
  %640 = icmp eq i64 %639, -1
  %641 = load i8, i8* %189, align 8
  %642 = icmp ne i8 %641, 0
  br i1 %640, label %643, label %683

; <label>:643:                                    ; preds = %617
  br i1 %642, label %644, label %1147

; <label>:644:                                    ; preds = %643
  %645 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.48, i64 0, i64 0), i32 5) #11
  %646 = call fastcc i8* @str_days(%struct.parser_control* nonnull %18, i8* nonnull %35)
  %647 = load i64, i64* %626, align 8
  %648 = load i32, i32* %618, align 8
  %649 = call i64 @nstrftime(i8* nonnull %36, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %16, %struct.tm_zone* null, i32 0) #11
  %650 = shl i64 %649, 32
  %651 = ashr exact i64 %650, 32
  %652 = sub nsw i64 100, %651
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %682, label %654

; <label>:654:                                    ; preds = %644
  %655 = load i64, i64* %188, align 8
  %656 = icmp ne i64 %655, 0
  %657 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %658 = load i64, i64* %657, align 8
  %659 = load i64, i64* %195, align 8
  %660 = select i1 %656, i64 %658, i64 %659
  %661 = load i64, i64* %186, align 8
  %662 = icmp eq i64 %661, 0
  %663 = or i1 %656, %662
  br i1 %663, label %670, label %664

; <label>:664:                                    ; preds = %654
  %665 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 3
  %666 = load i32, i32* %665, align 4
  %667 = icmp eq i32 %666, 1
  %668 = add nsw i64 %660, 60
  %669 = select i1 %667, i64 %668, i64 %660
  br label %670

; <label>:670:                                    ; preds = %664, %654
  %671 = phi i64 [ %660, %654 ], [ %669, %664 ]
  %672 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 %651
  %673 = call i64 @llvm.objectsize.i64.p0i8(i8* %672, i1 false) #11
  %674 = sdiv i64 %671, 60
  %675 = trunc i64 %674 to i32
  %676 = trunc i64 %671 to i32
  %677 = icmp sgt i32 %676, -1
  %678 = sub i32 0, %676
  %679 = select i1 %677, i32 %676, i32 %678
  %680 = srem i32 %679, 60
  %681 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %672, i64 %652, i32 1, i64 %673, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i64 0, i64 0), i32 %675, i32 %680) #11
  br label %682

; <label>:682:                                    ; preds = %644, %670
  call void (i8*, ...) @dbg_printf(i8* %645, i8* nonnull %646, i64 %647, i32 %648, i8* nonnull %36)
  br label %1147

; <label>:683:                                    ; preds = %617
  br i1 %642, label %684, label %721

; <label>:684:                                    ; preds = %683
  %685 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i64 0, i64 0), i32 5) #11
  %686 = call fastcc i8* @str_days(%struct.parser_control* nonnull %18, i8* nonnull %35)
  %687 = call i64 @nstrftime(i8* nonnull %36, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %16, %struct.tm_zone* null, i32 0) #11
  %688 = shl i64 %687, 32
  %689 = ashr exact i64 %688, 32
  %690 = sub nsw i64 100, %689
  %691 = icmp eq i64 %690, 0
  br i1 %691, label %720, label %692

; <label>:692:                                    ; preds = %684
  %693 = load i64, i64* %188, align 8
  %694 = icmp ne i64 %693, 0
  %695 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %696 = load i64, i64* %695, align 8
  %697 = load i64, i64* %195, align 8
  %698 = select i1 %694, i64 %696, i64 %697
  %699 = load i64, i64* %186, align 8
  %700 = icmp eq i64 %699, 0
  %701 = or i1 %694, %700
  br i1 %701, label %708, label %702

; <label>:702:                                    ; preds = %692
  %703 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 3
  %704 = load i32, i32* %703, align 4
  %705 = icmp eq i32 %704, 1
  %706 = add nsw i64 %698, 60
  %707 = select i1 %705, i64 %706, i64 %698
  br label %708

; <label>:708:                                    ; preds = %702, %692
  %709 = phi i64 [ %698, %692 ], [ %707, %702 ]
  %710 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 %689
  %711 = call i64 @llvm.objectsize.i64.p0i8(i8* %710, i1 false) #11
  %712 = sdiv i64 %709, 60
  %713 = trunc i64 %712 to i32
  %714 = trunc i64 %709 to i32
  %715 = icmp sgt i32 %714, -1
  %716 = sub i32 0, %714
  %717 = select i1 %715, i32 %714, i32 %716
  %718 = srem i32 %717, 60
  %719 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %710, i64 %690, i32 1, i64 %711, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i64 0, i64 0), i32 %713, i32 %718) #11
  br label %720

; <label>:720:                                    ; preds = %684, %708
  call void (i8*, ...) @dbg_printf(i8* %685, i8* nonnull %686, i8* nonnull %36)
  br label %721

; <label>:721:                                    ; preds = %609, %683, %720
  %722 = phi i64 [ %639, %720 ], [ %639, %683 ], [ %611, %609 ]
  %723 = load i8, i8* %189, align 8
  %724 = icmp eq i8 %723, 0
  br i1 %724, label %785, label %725

; <label>:725:                                    ; preds = %721
  %726 = load i64, i64* %183, align 8
  %727 = load i64, i64* %184, align 8
  %728 = or i64 %727, %726
  %729 = icmp eq i64 %728, 0
  br i1 %729, label %730, label %740

; <label>:730:                                    ; preds = %725
  %731 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.50.159, i64 0, i64 0), i32 5) #11
  %732 = load i32, i32* %393, align 4
  %733 = add nsw i32 %732, 1900
  %734 = load i32, i32* %397, align 8
  %735 = add nsw i32 %734, 1
  %736 = load i32, i32* %400, align 4
  %737 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %36, i64 100, i32 1, i64 100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.272, i64 0, i64 0), i32 %733, i32 %735, i32 %736) #11
  call void (i8*, ...) @dbg_printf(i8* %731, i8* nonnull %36)
  %738 = load i64, i64* %184, align 8
  %739 = load i64, i64* %183, align 8
  br label %740

; <label>:740:                                    ; preds = %725, %730
  %741 = phi i64 [ %726, %725 ], [ %739, %730 ]
  %742 = phi i64 [ %727, %725 ], [ %738, %730 ]
  %743 = icmp eq i64 %742, 0
  %744 = icmp eq i64 %741, 0
  %745 = or i1 %743, %744
  br i1 %745, label %749, label %746

; <label>:746:                                    ; preds = %740
  %747 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.51, i64 0, i64 0), i32 5) #11
  %748 = call fastcc i8* @str_days(%struct.parser_control* nonnull %18, i8* nonnull %35)
  call void (i8*, ...) @dbg_printf(i8* %747, i8* nonnull %748)
  br label %749

; <label>:749:                                    ; preds = %740, %746
  %750 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i32 5) #11
  %751 = call i64 @nstrftime(i8* nonnull %36, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %16, %struct.tm_zone* null, i32 0) #11
  %752 = shl i64 %751, 32
  %753 = ashr exact i64 %752, 32
  %754 = sub nsw i64 100, %753
  %755 = icmp eq i64 %754, 0
  br i1 %755, label %784, label %756

; <label>:756:                                    ; preds = %749
  %757 = load i64, i64* %188, align 8
  %758 = icmp ne i64 %757, 0
  %759 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %760 = load i64, i64* %759, align 8
  %761 = load i64, i64* %195, align 8
  %762 = select i1 %758, i64 %760, i64 %761
  %763 = load i64, i64* %186, align 8
  %764 = icmp eq i64 %763, 0
  %765 = or i1 %758, %764
  br i1 %765, label %772, label %766

; <label>:766:                                    ; preds = %756
  %767 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 3
  %768 = load i32, i32* %767, align 4
  %769 = icmp eq i32 %768, 1
  %770 = add nsw i64 %762, 60
  %771 = select i1 %769, i64 %770, i64 %762
  br label %772

; <label>:772:                                    ; preds = %766, %756
  %773 = phi i64 [ %762, %756 ], [ %771, %766 ]
  %774 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 %753
  %775 = call i64 @llvm.objectsize.i64.p0i8(i8* %774, i1 false) #11
  %776 = sdiv i64 %773, 60
  %777 = trunc i64 %776 to i32
  %778 = trunc i64 %773 to i32
  %779 = icmp sgt i32 %778, -1
  %780 = sub i32 0, %778
  %781 = select i1 %779, i32 %778, i32 %780
  %782 = srem i32 %781, 60
  %783 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %774, i64 %754, i32 1, i64 %775, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i64 0, i64 0), i32 %777, i32 %782) #11
  br label %784

; <label>:784:                                    ; preds = %749, %772
  call void (i8*, ...) @dbg_printf(i8* %750, i8* nonnull %36)
  br label %785

; <label>:785:                                    ; preds = %721, %784
  %786 = load i64, i64* %174, align 8
  %787 = load i64, i64* %175, align 8
  %788 = or i64 %787, %786
  %789 = load i64, i64* %176, align 8
  %790 = or i64 %788, %789
  %791 = icmp eq i64 %790, 0
  br i1 %791, label %977, label %792

; <label>:792:                                    ; preds = %785
  %793 = load i8, i8* %189, align 8
  %794 = icmp eq i8 %793, 0
  br i1 %794, label %813, label %795

; <label>:795:                                    ; preds = %792
  %796 = icmp eq i64 %788, 0
  %797 = load i32, i32* %400, align 4
  %798 = icmp eq i32 %797, 15
  %799 = or i1 %796, %798
  br i1 %799, label %803, label %800

; <label>:800:                                    ; preds = %795
  %801 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.53, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %801)
  %802 = load i64, i64* %176, align 8
  br label %803

; <label>:803:                                    ; preds = %795, %800
  %804 = phi i64 [ %789, %795 ], [ %802, %800 ]
  %805 = icmp eq i64 %804, 0
  br i1 %805, label %813, label %806

; <label>:806:                                    ; preds = %803
  %807 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 2
  %808 = load i32, i32* %807, align 8
  %809 = icmp eq i32 %808, 12
  br i1 %809, label %813, label %810

; <label>:810:                                    ; preds = %806
  %811 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.54, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %811)
  %812 = load i64, i64* %176, align 8
  br label %813

; <label>:813:                                    ; preds = %806, %803, %792, %810
  %814 = phi i64 [ %804, %806 ], [ 0, %803 ], [ %789, %792 ], [ %812, %810 ]
  %815 = load i32, i32* %393, align 4
  %816 = zext i32 %815 to i64
  %817 = load i64, i64* %174, align 8
  %818 = add i64 %816, %817
  %819 = trunc i64 %818 to i32
  %820 = load i32, i32* %397, align 8
  %821 = zext i32 %820 to i64
  %822 = load i64, i64* %175, align 8
  %823 = add i64 %821, %822
  %824 = trunc i64 %823 to i32
  %825 = load i32, i32* %400, align 4
  %826 = zext i32 %825 to i64
  %827 = add i64 %826, %814
  %828 = trunc i64 %827 to i32
  %829 = icmp slt i32 %819, %815
  %830 = zext i1 %829 to i32
  %831 = lshr i64 %817, 63
  %832 = trunc i64 %831 to i32
  %833 = xor i32 %830, %832
  %834 = icmp slt i32 %824, %820
  %835 = zext i1 %834 to i32
  %836 = lshr i64 %822, 63
  %837 = trunc i64 %836 to i32
  %838 = xor i32 %835, %837
  %839 = or i32 %838, %833
  %840 = icmp slt i32 %828, %825
  %841 = zext i1 %840 to i32
  %842 = lshr i64 %814, 63
  %843 = trunc i64 %842 to i32
  %844 = xor i32 %841, %843
  %845 = or i32 %839, %844
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %852, label %847

; <label>:847:                                    ; preds = %813
  %848 = load i8, i8* %189, align 8
  %849 = icmp eq i8 %848, 0
  br i1 %849, label %1147, label %850

; <label>:850:                                    ; preds = %847
  %851 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55.160, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %851, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56.161, i64 0, i64 0), i32 2159)
  br label %1147

; <label>:852:                                    ; preds = %813
  store i32 %819, i32* %393, align 4
  store i32 %824, i32* %397, align 8
  store i32 %828, i32* %400, align 4
  %853 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 2
  %854 = load i32, i32* %853, align 8
  %855 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 2
  store i32 %854, i32* %855, align 8
  %856 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 1
  %857 = load i32, i32* %856, align 4
  %858 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 1
  store i32 %857, i32* %858, align 4
  %859 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 0
  %860 = load i32, i32* %859, align 8
  %861 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 0
  store i32 %860, i32* %861, align 8
  %862 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 8
  %863 = load i32, i32* %862, align 8
  store i32 %863, i32* %172, align 8
  %864 = call i64 @mktime_z(%struct.tm_zone* %131, %struct.tm* nonnull %16) #11
  %865 = icmp eq i64 %864, -1
  %866 = load i8, i8* %189, align 8
  %867 = icmp ne i8 %866, 0
  br i1 %865, label %868, label %905

; <label>:868:                                    ; preds = %852
  br i1 %867, label %869, label %1147

; <label>:869:                                    ; preds = %868
  %870 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.57.162, i64 0, i64 0), i32 5) #11
  %871 = call i64 @nstrftime(i8* nonnull %36, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %16, %struct.tm_zone* null, i32 0) #11
  %872 = shl i64 %871, 32
  %873 = ashr exact i64 %872, 32
  %874 = sub nsw i64 100, %873
  %875 = icmp eq i64 %874, 0
  br i1 %875, label %904, label %876

; <label>:876:                                    ; preds = %869
  %877 = load i64, i64* %188, align 8
  %878 = icmp ne i64 %877, 0
  %879 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %880 = load i64, i64* %879, align 8
  %881 = load i64, i64* %195, align 8
  %882 = select i1 %878, i64 %880, i64 %881
  %883 = load i64, i64* %186, align 8
  %884 = icmp eq i64 %883, 0
  %885 = or i1 %878, %884
  br i1 %885, label %892, label %886

; <label>:886:                                    ; preds = %876
  %887 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 3
  %888 = load i32, i32* %887, align 4
  %889 = icmp eq i32 %888, 1
  %890 = add nsw i64 %882, 60
  %891 = select i1 %889, i64 %890, i64 %882
  br label %892

; <label>:892:                                    ; preds = %886, %876
  %893 = phi i64 [ %882, %876 ], [ %891, %886 ]
  %894 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 %873
  %895 = call i64 @llvm.objectsize.i64.p0i8(i8* %894, i1 false) #11
  %896 = sdiv i64 %893, 60
  %897 = trunc i64 %896 to i32
  %898 = trunc i64 %893 to i32
  %899 = icmp sgt i32 %898, -1
  %900 = sub i32 0, %898
  %901 = select i1 %899, i32 %898, i32 %900
  %902 = srem i32 %901, 60
  %903 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %894, i64 %874, i32 1, i64 %895, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i64 0, i64 0), i32 %897, i32 %902) #11
  br label %904

; <label>:904:                                    ; preds = %869, %892
  call void (i8*, ...) @dbg_printf(i8* %870, i8* nonnull %36)
  br label %1147

; <label>:905:                                    ; preds = %852
  br i1 %867, label %906, label %977

; <label>:906:                                    ; preds = %905
  %907 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.58.163, i64 0, i64 0), i32 5) #11
  %908 = load i64, i64* %174, align 8
  %909 = load i64, i64* %175, align 8
  %910 = load i64, i64* %176, align 8
  call void (i8*, ...) @dbg_printf(i8* %907, i64 %908, i64 %909, i64 %910)
  %911 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59.164, i64 0, i64 0), i32 5) #11
  %912 = call i64 @nstrftime(i8* nonnull %36, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %16, %struct.tm_zone* null, i32 0) #11
  %913 = shl i64 %912, 32
  %914 = ashr exact i64 %913, 32
  %915 = sub nsw i64 100, %914
  %916 = icmp eq i64 %915, 0
  br i1 %916, label %945, label %917

; <label>:917:                                    ; preds = %906
  %918 = load i64, i64* %188, align 8
  %919 = icmp ne i64 %918, 0
  %920 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %921 = load i64, i64* %920, align 8
  %922 = load i64, i64* %195, align 8
  %923 = select i1 %919, i64 %921, i64 %922
  %924 = load i64, i64* %186, align 8
  %925 = icmp eq i64 %924, 0
  %926 = or i1 %919, %925
  br i1 %926, label %933, label %927

; <label>:927:                                    ; preds = %917
  %928 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 3
  %929 = load i32, i32* %928, align 4
  %930 = icmp eq i32 %929, 1
  %931 = add nsw i64 %923, 60
  %932 = select i1 %930, i64 %931, i64 %923
  br label %933

; <label>:933:                                    ; preds = %927, %917
  %934 = phi i64 [ %923, %917 ], [ %932, %927 ]
  %935 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 %914
  %936 = call i64 @llvm.objectsize.i64.p0i8(i8* %935, i1 false) #11
  %937 = sdiv i64 %934, 60
  %938 = trunc i64 %937 to i32
  %939 = trunc i64 %934 to i32
  %940 = icmp sgt i32 %939, -1
  %941 = sub i32 0, %939
  %942 = select i1 %940, i32 %939, i32 %941
  %943 = srem i32 %942, 60
  %944 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %935, i64 %915, i32 1, i64 %936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i64 0, i64 0), i32 %938, i32 %943) #11
  br label %945

; <label>:945:                                    ; preds = %906, %933
  call void (i8*, ...) @dbg_printf(i8* %911, i8* nonnull %36)
  %946 = load i32, i32* %862, align 8
  %947 = icmp eq i32 %946, -1
  %948 = load i32, i32* %172, align 8
  %949 = icmp eq i32 %948, %946
  %950 = or i1 %947, %949
  br i1 %950, label %953, label %951

; <label>:951:                                    ; preds = %945
  %952 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.60.165, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %952)
  br label %953

; <label>:953:                                    ; preds = %945, %951
  %954 = load i64, i64* %176, align 8
  %955 = icmp ne i64 %954, 0
  %956 = load i32, i32* %400, align 4
  %957 = icmp eq i32 %956, %828
  %958 = or i1 %955, %957
  br i1 %958, label %959, label %966

; <label>:959:                                    ; preds = %953
  %960 = load i64, i64* %175, align 8
  %961 = or i64 %960, %954
  %962 = icmp ne i64 %961, 0
  %963 = load i32, i32* %397, align 8
  %964 = icmp eq i32 %963, %824
  %965 = or i1 %962, %964
  br i1 %965, label %977, label %966

; <label>:966:                                    ; preds = %959, %953
  %967 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.61.166, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %967)
  %968 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62.167, i64 0, i64 0), i32 5) #11
  %969 = add nsw i32 %819, 1900
  %970 = add nsw i32 %824, 1
  call void (i8*, ...) @dbg_printf(i8* %968, i32 %969, i32 %970, i32 %828)
  %971 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63.168, i64 0, i64 0), i32 5) #11
  %972 = load i32, i32* %393, align 4
  %973 = add nsw i32 %972, 1900
  %974 = load i32, i32* %397, align 8
  %975 = add nsw i32 %974, 1
  %976 = load i32, i32* %400, align 4
  call void (i8*, ...) @dbg_printf(i8* %971, i32 %973, i32 %975, i32 %976)
  br label %977

; <label>:977:                                    ; preds = %959, %966, %905, %785
  %978 = phi i64 [ %722, %785 ], [ %864, %959 ], [ %864, %966 ], [ %864, %905 ]
  %979 = load i64, i64* %188, align 8
  %980 = icmp eq i64 %979, 0
  br i1 %980, label %989, label %981

; <label>:981:                                    ; preds = %977
  %982 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %983 = load i64, i64* %982, align 8
  %984 = getelementptr inbounds %struct.tm, %struct.tm* %16, i64 0, i32 9
  %985 = load i64, i64* %984, align 8
  %986 = mul i64 %983, -60
  %987 = add i64 %986, %978
  %988 = add i64 %987, %985
  br label %989

; <label>:989:                                    ; preds = %981, %977
  %990 = phi i64 [ %988, %981 ], [ %978, %977 ]
  %991 = load i8, i8* %189, align 8
  %992 = icmp eq i8 %991, 0
  br i1 %992, label %1031, label %993

; <label>:993:                                    ; preds = %989
  %994 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65.169, i64 0, i64 0), i32 5) #11
  %995 = call i64 @nstrftime(i8* nonnull %36, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %16, %struct.tm_zone* null, i32 0) #11
  %996 = shl i64 %995, 32
  %997 = ashr exact i64 %996, 32
  %998 = sub nsw i64 100, %997
  %999 = icmp eq i64 %998, 0
  br i1 %999, label %1028, label %1000

; <label>:1000:                                   ; preds = %993
  %1001 = load i64, i64* %188, align 8
  %1002 = icmp ne i64 %1001, 0
  %1003 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 4
  %1004 = load i64, i64* %1003, align 8
  %1005 = load i64, i64* %195, align 8
  %1006 = select i1 %1002, i64 %1004, i64 %1005
  %1007 = load i64, i64* %186, align 8
  %1008 = icmp eq i64 %1007, 0
  %1009 = or i1 %1002, %1008
  br i1 %1009, label %1016, label %1010

; <label>:1010:                                   ; preds = %1000
  %1011 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i64 0, i32 3
  %1012 = load i32, i32* %1011, align 4
  %1013 = icmp eq i32 %1012, 1
  %1014 = add nsw i64 %1006, 60
  %1015 = select i1 %1013, i64 %1014, i64 %1006
  br label %1016

; <label>:1016:                                   ; preds = %1010, %1000
  %1017 = phi i64 [ %1006, %1000 ], [ %1015, %1010 ]
  %1018 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 %997
  %1019 = call i64 @llvm.objectsize.i64.p0i8(i8* %1018, i1 false) #11
  %1020 = sdiv i64 %1017, 60
  %1021 = trunc i64 %1020 to i32
  %1022 = trunc i64 %1017 to i32
  %1023 = icmp sgt i32 %1022, -1
  %1024 = sub i32 0, %1022
  %1025 = select i1 %1023, i32 %1022, i32 %1024
  %1026 = srem i32 %1025, 60
  %1027 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %1018, i64 %998, i32 1, i64 %1019, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i64 0, i64 0), i32 %1021, i32 %1026) #11
  br label %1028

; <label>:1028:                                   ; preds = %993, %1016
  call void (i8*, ...) @dbg_printf(i8* %994, i8* nonnull %36, i64 %990)
  %1029 = load i8, i8* %189, align 8
  %1030 = icmp ne i8 %1029, 0
  br label %1031

; <label>:1031:                                   ; preds = %1028, %989
  %1032 = phi i1 [ false, %989 ], [ %1030, %1028 ]
  %1033 = load i64, i64* %169, align 8
  %1034 = load i64, i64* %180, align 8
  %1035 = add nsw i64 %1034, %1033
  %1036 = srem i64 %1035, 1000000000
  %1037 = add nsw i64 %1036, 1000000000
  %1038 = srem i64 %1037, 1000000000
  %1039 = load i64, i64* %177, align 8
  %1040 = mul nsw i64 %1039, 3600
  %1041 = add nsw i64 %1040, %990
  %1042 = load i64, i64* %178, align 8
  %1043 = mul nsw i64 %1042, 60
  %1044 = add nsw i64 %1041, %1043
  %1045 = load i64, i64* %179, align 8
  %1046 = add nsw i64 %1044, %1045
  %1047 = sub nsw i64 %1035, %1038
  %1048 = sdiv i64 %1047, 1000000000
  %1049 = add nsw i64 %1046, %1048
  %1050 = bitcast i64* %26 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1050) #11
  store i64 %1049, i64* %26, align 8
  br i1 %1032, label %1051, label %1078

; <label>:1051:                                   ; preds = %1031
  %1052 = or i64 %1042, %1039
  %1053 = or i64 %1052, %1045
  %1054 = or i64 %1053, %1034
  %1055 = icmp eq i64 %1054, 0
  br i1 %1055, label %1078, label %1056

; <label>:1056:                                   ; preds = %1051
  %1057 = bitcast %struct.tm* %27 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1057) #11
  %1058 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67.170, i64 0, i64 0), i32 5) #11
  %1059 = load i64, i64* %177, align 8
  %1060 = load i64, i64* %178, align 8
  %1061 = load i64, i64* %179, align 8
  %1062 = load i64, i64* %180, align 8
  call void (i8*, ...) @dbg_printf(i8* %1058, i64 %1059, i64 %1060, i64 %1061, i64 %1062)
  %1063 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.68.171, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %1063, i64 %1049)
  %1064 = load i32, i32* %172, align 8
  %1065 = icmp eq i32 %1064, -1
  br i1 %1065, label %1076, label %1066

; <label>:1066:                                   ; preds = %1056
  %1067 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* nonnull %26, %struct.tm* nonnull %27) #11
  %1068 = icmp eq %struct.tm* %1067, null
  br i1 %1068, label %1076, label %1069

; <label>:1069:                                   ; preds = %1066
  %1070 = load i32, i32* %172, align 8
  %1071 = getelementptr inbounds %struct.tm, %struct.tm* %27, i64 0, i32 8
  %1072 = load i32, i32* %1071, align 8
  %1073 = icmp eq i32 %1070, %1072
  br i1 %1073, label %1076, label %1074

; <label>:1074:                                   ; preds = %1069
  %1075 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.69.172, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %1075)
  br label %1076

; <label>:1076:                                   ; preds = %1069, %1066, %1056, %1074
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1057) #11
  %1077 = load i64, i64* %26, align 8
  br label %1078

; <label>:1078:                                   ; preds = %1031, %1076, %1051
  %1079 = phi i64 [ %1049, %1031 ], [ %1077, %1076 ], [ %1049, %1051 ]
  %1080 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  store i64 %1079, i64* %1080, align 8
  %1081 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  store i64 %1038, i64* %1081, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1050) #11
  br label %1082

; <label>:1082:                                   ; preds = %1078, %606
  %1083 = phi i8 [ %610, %1078 ], [ %603, %606 ]
  %1084 = and i8 %1083, 1
  %1085 = icmp eq i8 %1084, 0
  br i1 %1085, label %1147, label %1086

; <label>:1086:                                   ; preds = %1082, %332
  %1087 = load i8, i8* %189, align 8
  %1088 = icmp eq i8 %1087, 0
  br i1 %1088, label %1147, label %1089

; <label>:1089:                                   ; preds = %1086
  %1090 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1090) #11
  store i64 0, i64* %7, align 8
  %1091 = bitcast %struct.tm* %8 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1091) #11
  %1092 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* nonnull %7, %struct.tm* nonnull %8) #11
  %1093 = icmp eq %struct.tm* %1092, null
  br i1 %1093, label %1097, label %1094

; <label>:1094:                                   ; preds = %1089
  %1095 = call i64 @timegm(%struct.tm* nonnull %8) #11
  %1096 = sdiv i64 %1095, 60
  br label %1097

; <label>:1097:                                   ; preds = %1089, %1094
  %1098 = phi i64 [ %1096, %1094 ], [ 0, %1089 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1091) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1090) #11
  %1099 = icmp eq i8* %132, null
  br i1 %1099, label %1108, label %1100

; <label>:1100:                                   ; preds = %1097
  %1101 = call i32 @strcmp(i8* nonnull %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26.138, i64 0, i64 0)) #11
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1103, label %1105

; <label>:1103:                                   ; preds = %1100
  %1104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27.139, i64 0, i64 0), i32 5) #11
  br label %1110

; <label>:1105:                                   ; preds = %1100
  %1106 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28.140, i64 0, i64 0), i32 5) #11
  %1107 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %36, i64 100, i32 1, i64 100, i8* %1106, i8* nonnull %132) #11
  br label %1110

; <label>:1108:                                   ; preds = %1097
  %1109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29.141, i64 0, i64 0), i32 5) #11
  br label %1110

; <label>:1110:                                   ; preds = %1103, %1105, %1108
  %1111 = phi i8* [ %1104, %1103 ], [ %36, %1105 ], [ %1109, %1108 ]
  %1112 = load i8, i8* %189, align 8
  %1113 = icmp eq i8 %1112, 0
  br i1 %1113, label %1147, label %1114

; <label>:1114:                                   ; preds = %1110
  %1115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70.173, i64 0, i64 0), i32 5) #11
  %1116 = sdiv i64 %1098, 60
  %1117 = trunc i64 %1116 to i32
  %1118 = trunc i64 %1098 to i32
  %1119 = icmp sgt i32 %1118, -1
  %1120 = sub i32 0, %1118
  %1121 = select i1 %1119, i32 %1118, i32 %1120
  %1122 = srem i32 %1121, 60
  call void (i8*, ...) @dbg_printf(i8* %1115, i32 %1117, i32 %1122, i8* %1111)
  %1123 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.71.174, i64 0, i64 0), i32 5) #11
  %1124 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  %1125 = load i64, i64* %1124, align 8
  %1126 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  %1127 = load i64, i64* %1126, align 8
  call void (i8*, ...) @dbg_printf(i8* %1123, i64 %1125, i64 %1127)
  %1128 = bitcast %struct.tm* %28 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1128) #11
  %1129 = bitcast %struct.tm* %29 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1129) #11
  %1130 = call %struct.tm* @gmtime_r(i64* %1124, %struct.tm* nonnull %28) #11
  %1131 = icmp eq %struct.tm* %1130, null
  br i1 %1131, label %1135, label %1132

; <label>:1132:                                   ; preds = %1114
  %1133 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72.175, i64 0, i64 0), i32 5) #11
  %1134 = call i64 @nstrftime(i8* nonnull %36, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %28, %struct.tm_zone* null, i32 0) #11
  call void (i8*, ...) @dbg_printf(i8* %1133, i8* nonnull %36)
  br label %1135

; <label>:1135:                                   ; preds = %1114, %1132
  %1136 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* %1124, %struct.tm* nonnull %29) #11
  %1137 = icmp eq %struct.tm* %1136, null
  br i1 %1137, label %1146, label %1138

; <label>:1138:                                   ; preds = %1135
  %1139 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73.176, i64 0, i64 0), i32 5) #11
  %1140 = call i64 @nstrftime(i8* nonnull %36, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %29, %struct.tm_zone* null, i32 0) #11
  %1141 = srem i64 %1098, 60
  %1142 = trunc i64 %1141 to i32
  %1143 = icmp sgt i32 %1142, -1
  %1144 = sub i32 0, %1142
  %1145 = select i1 %1143, i32 %1142, i32 %1144
  call void (i8*, ...) @dbg_printf(i8* %1139, i8* nonnull %36, i32 %1117, i32 %1145)
  br label %1146

; <label>:1146:                                   ; preds = %1135, %1138
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1129) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1128) #11
  br label %1147

; <label>:1147:                                   ; preds = %1082, %868, %904, %850, %847, %534, %258, %261, %254, %367, %372, %682, %643, %350, %434, %437, %605, %1146, %1110, %1086
  %1148 = phi i1 [ true, %1146 ], [ true, %1110 ], [ true, %1086 ], [ false, %1082 ], [ false, %605 ], [ false, %437 ], [ false, %434 ], [ false, %350 ], [ false, %643 ], [ false, %682 ], [ false, %372 ], [ false, %367 ], [ false, %254 ], [ false, %261 ], [ false, %258 ], [ false, %534 ], [ false, %847 ], [ false, %850 ], [ false, %904 ], [ false, %868 ]
  %1149 = icmp eq %struct.tm_zone* %131, %4
  br i1 %1149, label %1151, label %1150

; <label>:1150:                                   ; preds = %1147
  call void @tzfree(%struct.tm_zone* %131) #11
  br label %1151

; <label>:1151:                                   ; preds = %83, %105, %1147, %1150
  %1152 = phi i8* [ %130, %1147 ], [ %130, %1150 ], [ null, %83 ], [ %88, %105 ]
  %1153 = phi i1 [ %1148, %1147 ], [ %1148, %1150 ], [ false, %83 ], [ false, %105 ]
  call void @free(i8* %1152) #11
  br label %1154

; <label>:1154:                                   ; preds = %129, %1151
  %1155 = phi i1 [ %1153, %1151 ], [ false, %129 ]
  call void @llvm.lifetime.end(i64 100, i8* nonnull %39) #11
  call void @llvm.lifetime.end(i64 100, i8* nonnull %36) #11
  call void @llvm.lifetime.end(i64 100, i8* nonnull %35) #11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %34) #11
  call void @llvm.lifetime.end(i64 360, i8* nonnull %33) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %32) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %31) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %30) #11
  ret i1 %1155

; <label>:1156:                                   ; preds = %226
  %1157 = load i8*, i8** %208, align 8
  %1158 = icmp eq i8* %1157, null
  br i1 %1158, label %1163, label %1159

; <label>:1159:                                   ; preds = %1156
  %1160 = load i32, i32* %209, align 8
  %1161 = load i32, i32* %204, align 4
  %1162 = icmp eq i32 %1160, %1161
  br i1 %1162, label %1163, label %220

; <label>:1163:                                   ; preds = %1159, %1156, %226
  call void @llvm.lifetime.end(i64 56, i8* nonnull %207) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %206) #11
  call void @llvm.lifetime.start(i64 8, i8* nonnull %206) #11
  %1164 = add nsw i64 %45, 23328000
  store i64 %1164, i64* %23, align 8
  call void @llvm.lifetime.start(i64 56, i8* nonnull %207) #11
  %1165 = call %struct.tm* @localtime_rz(%struct.tm_zone* %131, i64* nonnull %23, %struct.tm* nonnull %24) #11
  %1166 = icmp eq %struct.tm* %1165, null
  br i1 %1166, label %1174, label %1167

; <label>:1167:                                   ; preds = %1163
  %1168 = load i8*, i8** %208, align 8
  %1169 = icmp eq i8* %1168, null
  br i1 %1169, label %1174, label %1170

; <label>:1170:                                   ; preds = %1167
  %1171 = load i32, i32* %209, align 8
  %1172 = load i32, i32* %204, align 4
  %1173 = icmp eq i32 %1171, %1172
  br i1 %1173, label %1174, label %220

; <label>:1174:                                   ; preds = %1170, %1167, %1163
  call void @llvm.lifetime.end(i64 56, i8* nonnull %207) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %206) #11
  br label %230
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm*) local_unnamed_addr #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
declare i8* @strncpy(i8* noalias nonnull, i8* noalias nocapture nonnull readonly, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @debug_mktime_not_ok(%struct.tm*, %struct.tm*, %struct.parser_control* readonly, i1 zeroext) unnamed_addr #6 {
  %5 = alloca [100 x i8], align 16
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* nonnull %6) #11
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %8, %10
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %13, %15
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %18, %20
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %23, %25
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %28, %30
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %33, %35
  %37 = and i1 %11, %16
  %38 = and i1 %31, %36
  %39 = xor i1 %21, true
  %40 = and i1 %37, %39
  %41 = and i1 %40, %26
  %42 = and i1 %41, %38
  %43 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 22
  %44 = load i8, i8* %43, align 8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %158, label %46

; <label>:46:                                     ; preds = %4
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.233, i64 0, i64 0), i32 5) #11
  tail call void (i8*, ...) @dbg_printf(i8* %47)
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.234, i64 0, i64 0), i32 5) #11
  %49 = call i64 @nstrftime(i8* nonnull %6, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %0, %struct.tm_zone* null, i32 0) #11
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = sub nsw i64 100, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %84, label %54

; <label>:54:                                     ; preds = %46
  %55 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 20
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 31
  %59 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 4
  %60 = select i1 %57, i64* %59, i64* %58
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 17
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  %65 = or i1 %57, %64
  br i1 %65, label %72, label %66

; <label>:66:                                     ; preds = %54
  %67 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  %70 = add nsw i64 %61, 60
  %71 = select i1 %69, i64 %70, i64 %61
  br label %72

; <label>:72:                                     ; preds = %66, %54
  %73 = phi i64 [ %61, %54 ], [ %71, %66 ]
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %51
  %75 = call i64 @llvm.objectsize.i64.p0i8(i8* %74, i1 false) #11
  %76 = sdiv i64 %73, 60
  %77 = trunc i64 %76 to i32
  %78 = trunc i64 %73 to i32
  %79 = icmp sgt i32 %78, -1
  %80 = sub i32 0, %78
  %81 = select i1 %79, i32 %78, i32 %80
  %82 = srem i32 %81, 60
  %83 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %74, i64 %52, i32 1, i64 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i64 0, i64 0), i32 %77, i32 %82) #11
  br label %84

; <label>:84:                                     ; preds = %72, %46
  call void (i8*, ...) @dbg_printf(i8* %48, i8* nonnull %6)
  %85 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.235, i64 0, i64 0), i32 5) #11
  %86 = call i64 @nstrftime(i8* nonnull %6, i64 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i64 0, i64 0), %struct.tm* nonnull %1, %struct.tm_zone* null, i32 0) #11
  %87 = shl i64 %86, 32
  %88 = ashr exact i64 %87, 32
  %89 = sub nsw i64 100, %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %121, label %91

; <label>:91:                                     ; preds = %84
  %92 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 20
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 31
  %96 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 4
  %97 = select i1 %94, i64* %96, i64* %95
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 17
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  %102 = or i1 %94, %101
  br i1 %102, label %109, label %103

; <label>:103:                                    ; preds = %91
  %104 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %2, i64 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  %107 = add nsw i64 %98, 60
  %108 = select i1 %106, i64 %107, i64 %98
  br label %109

; <label>:109:                                    ; preds = %103, %91
  %110 = phi i64 [ %98, %91 ], [ %108, %103 ]
  %111 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %88
  %112 = call i64 @llvm.objectsize.i64.p0i8(i8* %111, i1 false) #11
  %113 = sdiv i64 %110, 60
  %114 = trunc i64 %113 to i32
  %115 = trunc i64 %110 to i32
  %116 = icmp sgt i32 %115, -1
  %117 = sub i32 0, %115
  %118 = select i1 %116, i32 %115, i32 %117
  %119 = srem i32 %118, 60
  %120 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %111, i64 %89, i32 1, i64 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i64 0, i64 0), i32 %114, i32 %119) #11
  br label %121

; <label>:121:                                    ; preds = %84, %109
  call void (i8*, ...) @dbg_printf(i8* %85, i8* nonnull %6)
  %122 = select i1 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39.149, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.237, i64 0, i64 0)
  %123 = select i1 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39.149, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.238, i64 0, i64 0)
  %124 = select i1 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39.149, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.238, i64 0, i64 0)
  %125 = select i1 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39.149, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.238, i64 0, i64 0)
  %126 = select i1 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39.149, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.238, i64 0, i64 0)
  %127 = select i1 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39.149, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.238, i64 0, i64 0)
  %128 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %6, i64 100, i32 1, i64 100, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.236, i64 0, i64 0), i8* %122, i8* %123, i8* %124, i8* %125, i8* %126, i8* %127) #11
  %129 = icmp sgt i32 %128, 0
  %130 = icmp ult i32 %128, 100
  %131 = and i1 %129, %130
  br i1 %131, label %132, label %146

; <label>:132:                                    ; preds = %121
  %133 = sext i32 %128 to i64
  br label %134

; <label>:134:                                    ; preds = %132, %137
  %135 = phi i64 [ %133, %132 ], [ %138, %137 ]
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %142

; <label>:137:                                    ; preds = %134
  %138 = add nsw i64 %135, -1
  %139 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = icmp eq i8 %140, 32
  br i1 %141, label %134, label %142

; <label>:142:                                    ; preds = %134, %137
  %143 = shl i64 %135, 32
  %144 = ashr exact i64 %143, 32
  %145 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %144
  store i8 0, i8* %145, align 1
  br label %146

; <label>:146:                                    ; preds = %142, %121
  call void (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.239, i64 0, i64 0), i8* nonnull %6)
  %147 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.240, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %147)
  br i1 %42, label %148, label %150

; <label>:148:                                    ; preds = %146
  %149 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.241, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %149)
  br label %150

; <label>:150:                                    ; preds = %148, %146
  %151 = or i1 %26, %31
  br i1 %151, label %154, label %152

; <label>:152:                                    ; preds = %150
  %153 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.242, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %153)
  br label %154

; <label>:154:                                    ; preds = %150, %152
  %155 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.243, i64 0, i64 0), i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* %155)
  %156 = select i1 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.245, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.246, i64 0, i64 0)
  %157 = call i8* @dcgettext(i8* null, i8* %156, i32 5) #11
  call void (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.244, i64 0, i64 0), i8* %157)
  br label %158

; <label>:158:                                    ; preds = %4, %154
  call void @llvm.lifetime.end(i64 100, i8* nonnull %6) #11
  ret void
}

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @posixtime(i64* nocapture, i8*, i32) local_unnamed_addr #6 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca { i32, i32, i32, i64, i8* }, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16 x i8], align 16
  %12 = bitcast { i32, i32, i32, i64, i8* }* %7 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %12)
  %13 = bitcast %struct.tm* %8 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %13) #11
  %14 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %14) #11
  %15 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %15) #11
  %16 = tail call i64 @strlen(i8* %1) #14
  %17 = and i32 %2, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

; <label>:19:                                     ; preds = %3
  %20 = tail call i8* @strchr(i8* %1, i32 46) #11
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %19
  %23 = ptrtoint i8* %20 to i64
  %24 = ptrtoint i8* %1 to i64
  %25 = sub i64 %23, %24
  %26 = sub i64 %16, %25
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %232

; <label>:28:                                     ; preds = %22, %19, %3
  %29 = phi i8* [ %20, %22 ], [ null, %19 ], [ null, %3 ]
  %30 = phi i64 [ %25, %22 ], [ %16, %19 ], [ %16, %3 ]
  %31 = add i64 %30, -8
  %32 = icmp ult i64 %31, 5
  %33 = and i64 %30, 1
  %34 = icmp eq i64 %33, 0
  %35 = and i1 %32, %34
  br i1 %35, label %36, label %232

; <label>:36:                                     ; preds = %28
  br label %39

; <label>:37:                                     ; preds = %39
  %38 = icmp ult i64 %46, %30
  br i1 %38, label %39, label %47

; <label>:39:                                     ; preds = %36, %37
  %40 = phi i64 [ %46, %37 ], [ 0, %36 ]
  %41 = getelementptr inbounds i8, i8* %1, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, -48
  %45 = icmp ult i32 %44, 10
  %46 = add nuw i64 %40, 1
  br i1 %45, label %37, label %231

; <label>:47:                                     ; preds = %37
  %48 = lshr i64 %30, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %129, label %50

; <label>:50:                                     ; preds = %47
  %51 = icmp ult i64 %30, 8
  br i1 %51, label %110, label %52

; <label>:52:                                     ; preds = %50
  %53 = and i64 %48, 9223372036854775804
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %110, label %55

; <label>:55:                                     ; preds = %52
  %56 = add nsw i64 %53, -4
  %57 = lshr exact i64 %56, 2
  %58 = and i64 %57, 1
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %55
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = bitcast i8* %1 to <8 x i8>*
  %63 = load <8 x i8>, <8 x i8>* %62, align 1
  %64 = shufflevector <8 x i8> %63, <8 x i8> undef, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %65 = shufflevector <8 x i8> %63, <8 x i8> undef, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %66 = sext <4 x i8> %64 to <4 x i32>
  %67 = mul nsw <4 x i32> %66, <i32 10, i32 10, i32 10, i32 10>
  %68 = sext <4 x i8> %65 to <4 x i32>
  %69 = add <4 x i32> %67, <i32 -528, i32 -528, i32 -528, i32 -528>
  %70 = add <4 x i32> %69, %68
  %71 = bitcast [6 x i32]* %6 to <4 x i32>*
  store <4 x i32> %70, <4 x i32>* %71, align 16
  br label %72

; <label>:72:                                     ; preds = %61, %55
  %73 = phi i64 [ 0, %55 ], [ 4, %61 ]
  %74 = icmp eq i64 %57, 0
  br i1 %74, label %108, label %75

; <label>:75:                                     ; preds = %72
  br label %76

; <label>:76:                                     ; preds = %76, %75
  %77 = phi i64 [ %73, %75 ], [ %105, %76 ]
  %78 = shl i64 %77, 1
  %79 = getelementptr inbounds i8, i8* %1, i64 %78
  %80 = bitcast i8* %79 to <8 x i8>*
  %81 = load <8 x i8>, <8 x i8>* %80, align 1
  %82 = shufflevector <8 x i8> %81, <8 x i8> undef, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %83 = shufflevector <8 x i8> %81, <8 x i8> undef, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %84 = sext <4 x i8> %82 to <4 x i32>
  %85 = mul nsw <4 x i32> %84, <i32 10, i32 10, i32 10, i32 10>
  %86 = sext <4 x i8> %83 to <4 x i32>
  %87 = add <4 x i32> %85, <i32 -528, i32 -528, i32 -528, i32 -528>
  %88 = add <4 x i32> %87, %86
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %77
  %90 = bitcast i32* %89 to <4 x i32>*
  store <4 x i32> %88, <4 x i32>* %90, align 16
  %91 = add i64 %77, 4
  %92 = shl i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %1, i64 %92
  %94 = bitcast i8* %93 to <8 x i8>*
  %95 = load <8 x i8>, <8 x i8>* %94, align 1
  %96 = shufflevector <8 x i8> %95, <8 x i8> undef, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %97 = shufflevector <8 x i8> %95, <8 x i8> undef, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %98 = sext <4 x i8> %96 to <4 x i32>
  %99 = mul nsw <4 x i32> %98, <i32 10, i32 10, i32 10, i32 10>
  %100 = sext <4 x i8> %97 to <4 x i32>
  %101 = add <4 x i32> %99, <i32 -528, i32 -528, i32 -528, i32 -528>
  %102 = add <4 x i32> %101, %100
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %91
  %104 = bitcast i32* %103 to <4 x i32>*
  store <4 x i32> %102, <4 x i32>* %104, align 16
  %105 = add i64 %77, 8
  %106 = icmp eq i64 %105, %53
  br i1 %106, label %107, label %76

; <label>:107:                                    ; preds = %76
  br label %108

; <label>:108:                                    ; preds = %72, %107
  %109 = icmp eq i64 %48, %53
  br i1 %109, label %129, label %110

; <label>:110:                                    ; preds = %108, %52, %50
  %111 = phi i64 [ 0, %52 ], [ 0, %50 ], [ %53, %108 ]
  br label %112

; <label>:112:                                    ; preds = %110, %112
  %113 = phi i64 [ %126, %112 ], [ %111, %110 ]
  %114 = shl i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %1, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = mul nsw i32 %117, 10
  %119 = or i64 %114, 1
  %120 = getelementptr inbounds i8, i8* %1, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = add i32 %118, -528
  %124 = add i32 %123, %122
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %113
  store i32 %124, i32* %125, align 4
  %126 = add nuw nsw i64 %113, 1
  %127 = icmp eq i64 %126, %48
  br i1 %127, label %128, label %112

; <label>:128:                                    ; preds = %112
  br label %129

; <label>:129:                                    ; preds = %128, %108, %47
  %130 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %131 = and i32 %2, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %167, label %133

; <label>:133:                                    ; preds = %129
  %134 = add nsw i64 %48, -4
  %135 = trunc i64 %48 to i63
  switch i63 %135, label %163 [
    i63 5, label %136
    i63 6, label %144
    i63 4, label %154
  ]

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %130, align 16
  %138 = icmp slt i32 %137, 69
  br i1 %138, label %139, label %164

; <label>:139:                                    ; preds = %136
  %140 = and i32 %2, 16
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %232

; <label>:142:                                    ; preds = %139
  %143 = add nsw i32 %137, 100
  br label %164

; <label>:144:                                    ; preds = %133
  %145 = and i32 %2, 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %232, label %147

; <label>:147:                                    ; preds = %144
  %148 = load i32, i32* %130, align 16
  %149 = mul nsw i32 %148, 100
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, -1900
  %153 = add i32 %152, %149
  br label %164

; <label>:154:                                    ; preds = %133
  %155 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %155) #11
  %156 = call i64 @time(i64* nonnull %5) #11
  %157 = call %struct.tm* @localtime(i64* nonnull %5) #11
  %158 = icmp eq %struct.tm* %157, null
  br i1 %158, label %162, label %159

; <label>:159:                                    ; preds = %154
  %160 = getelementptr inbounds %struct.tm, %struct.tm* %157, i64 0, i32 5
  %161 = load i32, i32* %160, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %155) #11
  br label %164

; <label>:162:                                    ; preds = %154
  call void @llvm.lifetime.end(i64 8, i8* nonnull %155) #11
  br label %232

; <label>:163:                                    ; preds = %133
  tail call void @abort() #15
  unreachable

; <label>:164:                                    ; preds = %159, %147, %142, %136
  %165 = phi i32 [ %161, %159 ], [ %153, %147 ], [ %143, %142 ], [ %137, %136 ]
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %134
  br label %167

; <label>:167:                                    ; preds = %164, %129
  %168 = phi i32 [ undef, %129 ], [ %165, %164 ]
  %169 = phi i32* [ %130, %129 ], [ %166, %164 ]
  %170 = phi i64 [ %48, %129 ], [ 4, %164 ]
  %171 = getelementptr inbounds i32, i32* %169, i64 1
  %172 = load i32, i32* %169, align 4
  %173 = add nsw i32 %172, -1
  %174 = getelementptr inbounds i32, i32* %169, i64 2
  %175 = load i32, i32* %171, align 4
  %176 = getelementptr inbounds i32, i32* %169, i64 3
  %177 = load i32, i32* %174, align 4
  %178 = load i32, i32* %176, align 4
  %179 = and i32 %2, 2
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %212, label %181

; <label>:181:                                    ; preds = %167
  %182 = getelementptr inbounds i32, i32* %169, i64 4
  %183 = trunc i64 %170 to i63
  switch i63 %183, label %211 [
    i63 5, label %184
    i63 6, label %192
    i63 4, label %202
  ]

; <label>:184:                                    ; preds = %181
  %185 = load i32, i32* %182, align 4
  %186 = icmp slt i32 %185, 69
  br i1 %186, label %187, label %212

; <label>:187:                                    ; preds = %184
  %188 = and i32 %2, 16
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %232

; <label>:190:                                    ; preds = %187
  %191 = add nsw i32 %185, 100
  br label %212

; <label>:192:                                    ; preds = %181
  %193 = and i32 %2, 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %232, label %195

; <label>:195:                                    ; preds = %192
  %196 = load i32, i32* %182, align 4
  %197 = mul nsw i32 %196, 100
  %198 = getelementptr inbounds i32, i32* %169, i64 5
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %199, -1900
  %201 = add i32 %200, %197
  br label %212

; <label>:202:                                    ; preds = %181
  %203 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %203) #11
  %204 = call i64 @time(i64* nonnull %4) #11
  %205 = call %struct.tm* @localtime(i64* nonnull %4) #11
  %206 = icmp eq %struct.tm* %205, null
  br i1 %206, label %210, label %207

; <label>:207:                                    ; preds = %202
  %208 = getelementptr inbounds %struct.tm, %struct.tm* %205, i64 0, i32 5
  %209 = load i32, i32* %208, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %203) #11
  br label %212

; <label>:210:                                    ; preds = %202
  call void @llvm.lifetime.end(i64 8, i8* nonnull %203) #11
  br label %232

; <label>:211:                                    ; preds = %181
  call void @abort() #15
  unreachable

; <label>:212:                                    ; preds = %207, %195, %190, %184, %167
  %213 = phi i32 [ %168, %167 ], [ %209, %207 ], [ %201, %195 ], [ %191, %190 ], [ %185, %184 ]
  %214 = icmp eq i8* %29, null
  br i1 %214, label %233, label %215

; <label>:215:                                    ; preds = %212
  %216 = getelementptr inbounds i8, i8* %29, i64 1
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = add nsw i32 %218, -48
  %220 = icmp ult i32 %219, 10
  br i1 %220, label %221, label %232

; <label>:221:                                    ; preds = %215
  %222 = getelementptr inbounds i8, i8* %29, i64 2
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = add nsw i32 %224, -48
  %226 = icmp ult i32 %225, 10
  br i1 %226, label %227, label %232

; <label>:227:                                    ; preds = %221
  %228 = mul nsw i32 %219, 10
  %229 = add i32 %228, -48
  %230 = add i32 %229, %224
  br label %233

; <label>:231:                                    ; preds = %39
  br label %232

; <label>:232:                                    ; preds = %231, %22, %28, %221, %215, %139, %144, %162, %187, %192, %210
  call void @llvm.lifetime.end(i64 24, i8* nonnull %15) #11
  br label %285

; <label>:233:                                    ; preds = %227, %212
  %234 = phi i32 [ %230, %227 ], [ 0, %212 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %15) #11
  %235 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 0
  store i32 %234, i32* %235, align 8
  %236 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 1
  store i32 %178, i32* %236, align 4
  %237 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 2
  store i32 %177, i32* %237, align 8
  %238 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 3
  store i32 %175, i32* %238, align 4
  %239 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 4
  store i32 %173, i32* %239, align 8
  %240 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 5
  store i32 %213, i32* %240, align 4
  %241 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 6
  %242 = bitcast i32* %241 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* nonnull %12, i64 32, i32 8, i1 false)
  %243 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 8
  store i32 -1, i32* %243, align 8
  %244 = call i64 @rpl_mktime(%struct.tm* nonnull %8) #11
  store i64 %244, i64* %9, align 8
  %245 = icmp eq i64 %244, -1
  br i1 %245, label %246, label %249

; <label>:246:                                    ; preds = %233
  %247 = call %struct.tm* @localtime(i64* nonnull %9) #11
  %248 = icmp eq %struct.tm* %247, null
  br i1 %248, label %285, label %249

; <label>:249:                                    ; preds = %233, %246
  %250 = phi %struct.tm* [ %247, %246 ], [ %8, %233 ]
  %251 = getelementptr inbounds %struct.tm, %struct.tm* %250, i64 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = xor i32 %252, %213
  %254 = getelementptr inbounds %struct.tm, %struct.tm* %250, i64 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = xor i32 %255, %173
  %257 = or i32 %256, %253
  %258 = getelementptr inbounds %struct.tm, %struct.tm* %250, i64 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = xor i32 %259, %175
  %261 = or i32 %257, %260
  %262 = getelementptr inbounds %struct.tm, %struct.tm* %250, i64 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = xor i32 %263, %177
  %265 = or i32 %261, %264
  %266 = getelementptr inbounds %struct.tm, %struct.tm* %250, i64 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = xor i32 %267, %178
  %269 = or i32 %265, %268
  %270 = getelementptr inbounds %struct.tm, %struct.tm* %250, i64 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = xor i32 %271, %234
  %273 = or i32 %269, %272
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %283, label %275

; <label>:275:                                    ; preds = %249
  %276 = icmp eq i32 %234, 60
  br i1 %276, label %277, label %285

; <label>:277:                                    ; preds = %275
  %278 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %278) #11
  %279 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %279) #11
  %280 = call i8* @__stpcpy_chk(i8* nonnull %279, i8* nonnull %1, i64 16) #11
  %281 = getelementptr inbounds i8, i8* %280, i64 -2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %281, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.273, i64 0, i64 0), i64 3, i32 1, i1 false)
  %282 = call zeroext i1 @posixtime(i64* nonnull %10, i8* nonnull %279, i32 %2)
  call void @llvm.lifetime.end(i64 16, i8* nonnull %279) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %278) #11
  br i1 %282, label %283, label %285

; <label>:283:                                    ; preds = %249, %277
  %284 = load i64, i64* %9, align 8
  store i64 %284, i64* %0, align 8
  br label %285

; <label>:285:                                    ; preds = %232, %275, %246, %277, %283
  %286 = phi i1 [ true, %283 ], [ false, %277 ], [ false, %246 ], [ false, %275 ], [ false, %232 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %14) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %13) #11
  call void @llvm.lifetime.end(i64 32, i8* nonnull %12)
  ret i1 %286
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.278, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.279, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.280, i64 0, i64 0), i64 3) #14
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
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 {
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.291, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.292, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.293, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.293, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.293, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.292, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.292, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.292, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.293, i64 0, i64 0), %41 ]
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11
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
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.294, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.295, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.296, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.297, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.293, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.292, i64 0, i64 0)
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
define i32 @settime(%struct.timespec*) local_unnamed_addr #6 {
  %2 = alloca %struct.timespec, align 8
  %3 = tail call i32 @clock_settime(i32 0, %struct.timespec* %0) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %19, label %9

; <label>:9:                                      ; preds = %5
  %10 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %10) #11
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sdiv i64 %15, 1000
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = call i32 @settimeofday(%struct.timespec* nonnull %2, %struct.timezone* null) #11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %10) #11
  br label %19

; <label>:19:                                     ; preds = %5, %1, %9
  %20 = phi i32 [ %18, %9 ], [ 0, %1 ], [ %3, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind
declare i32 @clock_settime(i32, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @settimeofday(%struct.timespec*, %struct.timezone*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @nstrftime(i8*, i64, i8* readonly, %struct.tm*, %struct.tm_zone*, i32) local_unnamed_addr #6 {
  %7 = tail call fastcc i64 @__strftime_internal.312(i8* %0, i64 %1, i8* %2, %struct.tm* %3, i1 zeroext false, %struct.tm_zone* %4, i32 %5)
  ret i64 %7
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal.312(i8*, i64, i8* readonly, %struct.tm*, i1 zeroext, %struct.tm_zone*, i32) unnamed_addr #6 {
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
  %18 = select i1 %17, i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.313, i64 0, i64 0)
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
  call void @llvm.lifetime.start(i64 23, i8* nonnull %27) #11
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
  %184 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.314, i64 0, i64 0), %886 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.315, i64 0, i64 0), %422 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.316, i64 0, i64 0), %759 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.317, i64 0, i64 0), %126 ]
  %185 = icmp ne i8 %82, 0
  %186 = call fastcc i64 @__strftime_internal.312(i8* null, i64 -1, i8* nonnull %184, %struct.tm* %3, i1 zeroext %185, %struct.tm_zone* %5, i32 %6)
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
  %207 = call fastcc i64 @__strftime_internal.312(i8* %206, i64 %192, i8* %184, %struct.tm* %3, i1 zeroext %185, %struct.tm_zone* %5, i32 %6)
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
  call void @llvm.lifetime.start(i64 5, i8* nonnull %28) #11
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %29) #11
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
  %228 = call i64 @strftime(i8* nonnull %29, i64 1024, i8* nonnull %28, %struct.tm* %3) #11
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
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #11
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #11
  br label %1372

; <label>:405:                                    ; preds = %230
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #11
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #11
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %42) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %42, i8* %43, i64 56, i32 8, i1 false)
  %866 = call i64 @mktime_z(%struct.tm_zone* %5, %struct.tm* nonnull %11) #11
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %42) #11
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
  %1040 = call i64 @strlen(i8* %18) #14
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
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #11
  br label %1403

; <label>:1372:                                   ; preds = %1367, %1202, %910, %847, %756, %402, %209, %159, %1212
  %1373 = phi i32 [ %1259, %1367 ], [ %54, %1202 ], [ %54, %910 ], [ %54, %847 ], [ %493, %756 ], [ %217, %402 ], [ %54, %209 ], [ %54, %159 ], [ %54, %1212 ]
  %1374 = phi i32 [ %1260, %1367 ], [ %53, %1202 ], [ %53, %910 ], [ %53, %847 ], [ %496, %756 ], [ %218, %402 ], [ %53, %209 ], [ %53, %159 ], [ %53, %1212 ]
  %1375 = phi i8* [ %1262, %1367 ], [ %129, %1202 ], [ %129, %910 ], [ %129, %847 ], [ %499, %756 ], [ %221, %402 ], [ %129, %209 ], [ %129, %159 ], [ %1214, %1212 ]
  %1376 = phi i8* [ %1368, %1367 ], [ %1203, %1202 ], [ %911, %910 ], [ %848, %847 ], [ %757, %756 ], [ %403, %402 ], [ %210, %209 ], [ %160, %159 ], [ %51, %1212 ]
  %1377 = phi i64 [ %1369, %1367 ], [ %1204, %1202 ], [ %912, %910 ], [ %849, %847 ], [ %758, %756 ], [ %404, %402 ], [ %211, %209 ], [ %161, %159 ], [ %50, %1212 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #11
  br label %1385

; <label>:1378:                                   ; preds = %67, %1248
  %1379 = phi i32 [ %1249, %1248 ], [ %72, %67 ]
  %1380 = phi i32 [ %1250, %1248 ], [ %54, %67 ]
  %1381 = phi i32 [ %1251, %1248 ], [ %53, %67 ]
  %1382 = phi i8* [ %1214, %1248 ], [ %52, %67 ]
  %1383 = phi i8* [ %51, %1248 ], [ %69, %67 ]
  %1384 = phi i64 [ %50, %1248 ], [ %70, %67 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #11
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

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.318, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.319, i64 0, i64 0), i8* %2, i8* %3) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.320, i64 0, i64 0), i32 5) #11
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.321, i64 0, i64 0), i32 5) #11
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
  tail call void @abort() #15
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.322, i64 0, i64 0), i32 5) #11
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.323, i64 0, i64 0), i32 5) #11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.324, i64 0, i64 0), i32 5) #11
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.325, i64 0, i64 0), i32 5) #11
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.326, i64 0, i64 0), i32 5) #11
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.327, i64 0, i64 0), i32 5) #11
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.328, i64 0, i64 0), i32 5) #11
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.329, i64 0, i64 0), i32 5) #11
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.330, i64 0, i64 0), i32 5) #11
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.331, i64 0, i64 0), i32 5) #11
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

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.334, i64 0, i64 0), i32 5) #11
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.335, i64 0, i64 0)) #11
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.336, i64 0, i64 0), i32 5) #11
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.337, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.338, i64 0, i64 0)) #11
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.339, i64 0, i64 0), i32 5) #11
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11
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
  %8 = tail call noalias i8* @malloc(i64 %7) #11
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

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
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
  tail call void @free(i8* nonnull %0) #11
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11
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
  tail call void @free(i8* nonnull %0) #11
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11
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
  tail call void @xalloc_die() #15
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
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
  tail call void @xalloc_die() #15
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11
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
  %3 = tail call noalias i8* @malloc(i64 %1) #11
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
  %4 = tail call noalias i8* @malloc(i64 %3) #11
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.350, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.351, i64 0, i64 0), i8* %2) #11
  tail call void @abort() #15
  unreachable
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
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %16) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #11
  store i64 %103, i64* %9, align 8
  %108 = call %struct.tm* %1(i64* nonnull %9, %struct.tm* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %97) #11
  store i64 %121, i64* %7, align 8
  %124 = call %struct.tm* %1(i64* nonnull %7, %struct.tm* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %97) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %98) #11
  store i64 %127, i64* %8, align 8
  %141 = call %struct.tm* %1(i64* nonnull %8, %struct.tm* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %98) #11
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #11
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #11
  store i64 %254, i64* %6, align 8
  %255 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #11
  store i64 %268, i64* %4, align 8
  %271 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #11
  store i64 %274, i64* %5, align 8
  %288 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %364) #11
  store i64 %363, i64* %12, align 8
  %365 = call %struct.tm* %1(i64* nonnull %12, %struct.tm* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %364) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %377) #11
  store i64 %379, i64* %10, align 8
  %382 = call %struct.tm* %1(i64* nonnull %10, %struct.tm* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %377) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %399) #11
  store i64 %385, i64* %11, align 8
  %400 = call %struct.tm* %1(i64* nonnull %11, %struct.tm* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %399) #11
  br label %402

; <label>:401:                                    ; preds = %289
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #11
  br label %438

; <label>:402:                                    ; preds = %362, %369, %395, %398
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %429) #11
  store i64 %428, i64* %13, align 8
  %430 = call %struct.tm* %1(i64* nonnull %13, %struct.tm* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %429) #11
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %16) #11
  ret i64 %437

; <label>:438:                                    ; preds = %401, %249
  %439 = sub nuw nsw i64 9223372036854775807, %250
  %440 = icmp slt i64 %439, %103
  br i1 %440, label %485, label %441

; <label>:441:                                    ; preds = %438
  %442 = add i64 %250, %103
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #11
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #11
  store i64 %442, i64* %6, align 8
  %443 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #11
  store i64 %456, i64* %4, align 8
  %459 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #11
  store i64 %462, i64* %5, align 8
  %476 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #11
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #11
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
  tail call void @tzset() #11
  %14 = bitcast %struct.tm* %12 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %94) #11
  store i64 %101, i64* %7, align 8
  %106 = call %struct.tm* @localtime_r(i64* nonnull %7, %struct.tm* nonnull %12) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %94) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %95) #11
  store i64 %119, i64* %5, align 8
  %122 = call %struct.tm* @localtime_r(i64* nonnull %5, %struct.tm* nonnull %12) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %95) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #11
  store i64 %125, i64* %6, align 8
  %139 = call %struct.tm* @localtime_r(i64* nonnull %6, %struct.tm* nonnull %12) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #11
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #11
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #11
  store i64 %252, i64* %4, align 8
  %253 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #11
  store i64 %266, i64* %2, align 8
  %269 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #11
  store i64 %272, i64* %3, align 8
  %286 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %362) #11
  store i64 %361, i64* %10, align 8
  %363 = call %struct.tm* @localtime_r(i64* nonnull %10, %struct.tm* nonnull %12) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %362) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %375) #11
  store i64 %377, i64* %8, align 8
  %380 = call %struct.tm* @localtime_r(i64* nonnull %8, %struct.tm* nonnull %12) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %375) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %397) #11
  store i64 %383, i64* %9, align 8
  %398 = call %struct.tm* @localtime_r(i64* nonnull %9, %struct.tm* nonnull %12) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %397) #11
  br label %400

; <label>:399:                                    ; preds = %287
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #11
  br label %433

; <label>:400:                                    ; preds = %396, %393, %367, %360
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %427) #11
  store i64 %426, i64* %11, align 8
  %428 = call %struct.tm* @localtime_r(i64* nonnull %11, %struct.tm* nonnull %12) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %427) #11
  %429 = icmp eq %struct.tm* %428, null
  br i1 %429, label %484, label %430

; <label>:430:                                    ; preds = %425, %403
  %431 = phi i64 [ %404, %403 ], [ %426, %425 ]
  %432 = bitcast %struct.tm* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %432, i8* nonnull %14, i64 56, i32 8, i1 false) #11
  br label %484

; <label>:433:                                    ; preds = %399, %247
  %434 = sub nuw nsw i64 9223372036854775807, %248
  %435 = icmp slt i64 %434, %101
  br i1 %435, label %480, label %436

; <label>:436:                                    ; preds = %433
  %437 = add i64 %248, %101
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #11
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #11
  store i64 %437, i64* %4, align 8
  %438 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #11
  store i64 %451, i64* %2, align 8
  %454 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #11
  store i64 %457, i64* %3, align 8
  %471 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #11
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #11
  br label %480

; <label>:480:                                    ; preds = %479, %433
  %481 = add nuw nsw i64 %248, 601200
  %482 = icmp slt i64 %481, 268828200
  br i1 %482, label %247, label %401

; <label>:483:                                    ; preds = %226
  br label %484

; <label>:484:                                    ; preds = %483, %419, %422, %425, %430
  %485 = phi i64 [ %431, %430 ], [ -1, %425 ], [ -1, %422 ], [ -1, %419 ], [ -1, %483 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #11
  ret i64 %485
}

; Function Attrs: nounwind
declare void @tzset() local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64*, %struct.tm*) #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.tm_zone* @tzalloc(i8* readonly) local_unnamed_addr #6 {
  %2 = icmp ne i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #14
  %5 = add i64 %4, 1
  br label %6

; <label>:6:                                      ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  %8 = icmp ult i64 %7, 119
  %9 = add i64 %7, 17
  %10 = and i64 %9, -8
  %11 = select i1 %8, i64 128, i64 %10
  %12 = tail call noalias i8* @malloc(i64 %11) #11
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* nonnull %0, i64 %7, i32 1, i1 false) #11
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
  tail call void @free(i8* %8) #11
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
  %6 = tail call %struct.tm* @gmtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #11
  br label %54

; <label>:7:                                      ; preds = %3
  %8 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %9 = icmp eq %struct.tm_zone* %8, null
  br i1 %9, label %54, label %10

; <label>:10:                                     ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #11
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
  %27 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.370, i64 0, i64 0), i8* nonnull %26, i32 1) #11
  br label %30

; <label>:28:                                     ; preds = %19
  %29 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.370, i64 0, i64 0)) #11
  br label %30

; <label>:30:                                     ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  tail call void @tzset() #11
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
  tail call void @free(i8* %45) #11
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.tm_zone* @set_tz(%struct.tm_zone*) unnamed_addr #6 {
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.370, i64 0, i64 0)) #11
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %3, label %12, label %7

; <label>:7:                                      ; preds = %1
  br i1 %6, label %13, label %8

; <label>:8:                                      ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %10 = tail call i32 @strcmp(i8* %9, i8* nonnull %2) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %13

; <label>:12:                                     ; preds = %1
  br i1 %6, label %56, label %16

; <label>:13:                                     ; preds = %7, %8
  %14 = tail call i64 @strlen(i8* nonnull %2) #14
  %15 = add i64 %14, 1
  br label %16

; <label>:16:                                     ; preds = %12, %13
  %17 = phi i1 [ true, %13 ], [ false, %12 ]
  %18 = phi i64 [ %15, %13 ], [ 0, %12 ]
  %19 = icmp ult i64 %18, 119
  %20 = add i64 %18, 17
  %21 = and i64 %20, -8
  %22 = select i1 %19, i64 128, i64 %21
  %23 = tail call noalias i8* @malloc(i64 %22) #11
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* nonnull %2, i64 %18, i32 1, i1 false) #11
  %32 = getelementptr inbounds i8, i8* %30, i64 %18
  store i8 0, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %31, %26
  br i1 %6, label %37, label %34

; <label>:34:                                     ; preds = %33
  %35 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %36 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.370, i64 0, i64 0), i8* nonnull %35, i32 1) #11
  br label %39

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.370, i64 0, i64 0)) #11
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  tail call void @tzset() #11
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
  tail call void @free(i8* %52) #11
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
  %25 = tail call i32 @strcmp(i8* %24, i8* nonnull %4) #11
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
  %37 = tail call i64 @strlen(i8* nonnull %4) #14
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 2, i64 119
  %40 = ptrtoint i8* %39 to i64
  %41 = ptrtoint i8* %36 to i64
  %42 = sub i64 %40, %41
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %35
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %36, i8* nonnull %4, i64 %38, i32 1, i1 false) #11
  %45 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %45, align 1
  br label %75

; <label>:46:                                     ; preds = %35
  %47 = icmp ult i64 %38, 119
  %48 = add i64 %37, 18
  %49 = and i64 %48, -8
  %50 = select i1 %47, i64 128, i64 %49
  %51 = tail call noalias i8* @malloc(i64 %50) #11
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

; <label>:53:                                     ; preds = %46
  %54 = bitcast i8* %51 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %54, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 8
  store i8 1, i8* %55, align 8
  %56 = getelementptr inbounds i8, i8* %51, i64 9
  store i8 0, i8* %56, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* nonnull %4, i64 %38, i32 1, i1 false) #11
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
  %62 = tail call i64 @strlen(i8* nonnull %24) #14
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
  %76 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.371, i64 0, i64 0), %13 ], [ %56, %53 ], [ %36, %44 ], [ %24, %74 ]
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

; Function Attrs: nounwind sspstrong uwtable
define i64 @mktime_z(%struct.tm_zone*, %struct.tm* nonnull) local_unnamed_addr #6 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  %5 = icmp eq %struct.tm_zone* %0, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @timegm(%struct.tm* nonnull %1) #11
  br label %106

; <label>:8:                                      ; preds = %2
  %9 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %10 = icmp eq %struct.tm_zone* %9, null
  br i1 %10, label %106, label %11

; <label>:11:                                     ; preds = %8
  %12 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #11
  %13 = tail call i64 @rpl_mktime(%struct.tm* nonnull %1) #11
  store i64 %13, i64* %3, align 8
  %14 = bitcast %struct.tm* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #11
  %15 = icmp eq i64 %13, -1
  br i1 %15, label %16, label %68

; <label>:16:                                     ; preds = %11
  %17 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %4) #11
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
  %81 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.370, i64 0, i64 0), i8* nonnull %80, i32 1) #11
  br label %84

; <label>:82:                                     ; preds = %73
  %83 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.370, i64 0, i64 0)) #11
  br label %84

; <label>:84:                                     ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %84
  call void @tzset() #11
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
  call void @free(i8* %99) #11
  %100 = icmp eq %struct.tm_zone* %98, null
  br i1 %100, label %101, label %95

; <label>:101:                                    ; preds = %95
  br label %102

; <label>:102:                                    ; preds = %101, %90
  store i32 %92, i32* %74, align 4
  br i1 %91, label %104, label %103

; <label>:103:                                    ; preds = %102
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #11
  br label %106

; <label>:104:                                    ; preds = %71, %102
  %105 = load i64, i64* %3, align 8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #11
  br label %106

; <label>:106:                                    ; preds = %8, %103, %104, %6
  %107 = phi i64 [ %7, %6 ], [ %105, %104 ], [ -1, %103 ], [ -1, %8 ]
  ret i64 %107
}

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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.378, i64 0, i64 0)) #11
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
  %3 = tail call i8* @nl_langinfo(i32 14) #11
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.382, i64 0, i64 0)) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.383, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.384, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.384, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.385, i64 0, i64 0)) #11
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.386, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #11
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.387, i64 0, i64 0), i8* %158
  ret i8* %161
}

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
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
