; ModuleID = 'coreutils-8.27/src/printf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Usage: %s FORMAT [ARGUMENT]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"\0AFORMAT controls the output as in C printf.  Interpreted sequences are:\0A\0A  \5C\22      double quote\0A\00", align 1
@.str.6 = private unnamed_addr constant [229 x i8] c"  \5C\5C      backslash\0A  \5Ca      alert (BEL)\0A  \5Cb      backspace\0A  \5Cc      produce no further output\0A  \5Ce      escape\0A  \5Cf      form feed\0A  \5Cn      new line\0A  \5Cr      carriage return\0A  \5Ct      horizontal tab\0A  \5Cv      vertical tab\0A\00", align 1
@.str.7 = private unnamed_addr constant [252 x i8] c"  \5CNNN    byte with octal value NNN (1 to 3 digits)\0A  \5CxHH    byte with hexadecimal value HH (1 to 2 digits)\0A  \5CuHHHH  Unicode (ISO/IEC 10646) character with hex value HHHH (4 digits)\0A  \5CUHHHHHHHH  Unicode character with hex value HHHHHHHH (8 digits)\0A\00", align 1
@.str.8 = private unnamed_addr constant [448 x i8] c"  %%      a single %\0A  %b      ARGUMENT as a string with '\5C' escapes interpreted,\0A          except that octal escapes are of the form \5C0 or \5C0NNN\0A  %q      ARGUMENT is printed in a format that can be reused as shell input,\0A          escaping non-printable characters with the proposed POSIX $'' syntax.\0A\0Aand all C format specifications ending with one of diouxXfeEgGcs, with\0AARGUMENTs converted to proper type first.  Variable widths are handled.\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@exit_status = internal unnamed_addr global i1 false, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly_correct = internal unnamed_addr global i8 0, align 1, !dbg !0
@.str.15 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"invalid field width: %s\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"invalid precision: %s\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"%.*s: invalid conversion specification\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"warning: %s: character(s) following character constant have been ignored\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"warning: ignoring excess arguments, starting with %s\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"%s: expected a numeric value\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"%s: value not completely converted\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"missing hexadecimal number in escape\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"\22\5Cabcefnrtv\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"invalid universal character name \5C%c%0*x\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !88
@.str.19 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !94
@.str.22 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !123
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !128
@.str.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !131
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !138
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !145
@.str.52 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.53 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.54 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.55 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.56 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.58 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.59 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.60 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.61 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !157
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !164
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !176
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !183
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !190
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !178
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !192
@unicode_to_mb.initialized = internal unnamed_addr global i1 false, align 4
@.str.75 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@unicode_to_mb.is_utf8 = internal unnamed_addr global i32 0, align 4, !dbg !197
@unicode_to_mb.utf8_to_local = internal unnamed_addr global i8* null, align 8, !dbg !274
@.str.1.76 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.2.77 = private unnamed_addr constant [26 x i8] c"iconv function not usable\00", align 1
@.str.3.78 = private unnamed_addr constant [23 x i8] c"character out of range\00", align 1
@.str.6.81 = private unnamed_addr constant [7 x i8] c"\5Cu%04X\00", align 1
@.str.7.82 = private unnamed_addr constant [7 x i8] c"\5CU%08X\00", align 1
@.str.4.83 = private unnamed_addr constant [45 x i8] c"cannot convert U+%04X to local character set\00", align 1
@.str.5.84 = private unnamed_addr constant [49 x i8] c"cannot convert U+%04X to local character set: %s\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.103 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.107 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.108 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !306
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"cannot perform formatted output\00", align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !315
@.str.3.136 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.137 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.138 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.139 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.140 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !714 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !718, metadata !719), !dbg !720
  %2 = icmp eq i32 %0, 0, !dbg !721
  br i1 %2, label %8, label %3, !dbg !723

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !724, !tbaa !727
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !724
  %6 = load i8*, i8** @program_name, align 8, !dbg !724, !tbaa !727
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !731
  br label %50, !dbg !733

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !735
  %10 = load i8*, i8** @program_name, align 8, !dbg !735, !tbaa !727
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11, !dbg !737
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !739
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !727
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !740
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !741
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !727
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !742
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !743
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !727
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !744
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !745
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !727
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !746
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !747
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !727
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !748
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !749
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !727
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !750
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([448 x i8], [448 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !751
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !727
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !752
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !753
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !754
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !62, metadata !719) #11, !dbg !755
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !62, metadata !719) #11, !dbg !755
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !757
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !758
  %37 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !760
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !73, metadata !719) #11, !dbg !761
  %38 = icmp eq i8* %37, null, !dbg !762
  br i1 %38, label %45, label %39, !dbg !763

; <label>:39:                                     ; preds = %8
  %40 = tail call i32 @strncmp(i8* nonnull %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #9, !dbg !764
  %41 = icmp eq i32 %40, 0, !dbg !764
  br i1 %41, label %45, label %42, !dbg !766

; <label>:42:                                     ; preds = %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !768
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !770
  br label %45, !dbg !772

; <label>:45:                                     ; preds = %8, %39, %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !773
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !774
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !775
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #11, !dbg !776
  br label %50

; <label>:50:                                     ; preds = %45, %3
  tail call void @exit(i32 %0) #14, !dbg !777
  unreachable, !dbg !777
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
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 !dbg !778 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !809, metadata !719), !dbg !846
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !782, metadata !719), !dbg !849
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !783, metadata !719), !dbg !850
  %6 = load i8*, i8** %1, align 8, !dbg !851, !tbaa !727
  tail call void @set_program_name(i8* %6) #11, !dbg !852
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !853
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !854
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !855
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !856
  store i1 false, i1* @exit_status, align 4
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !857
  %12 = icmp ne i8* %11, null, !dbg !858
  %13 = zext i1 %12 to i8, !dbg !859
  store i8 %13, i8* @posixly_correct, align 1, !dbg !859, !tbaa !860
  %14 = icmp eq i32 %0, 2, !dbg !862
  br i1 %14, label %15, label %27, !dbg !863

; <label>:15:                                     ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !791, metadata !719), !dbg !864
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !865
  %17 = load i8*, i8** %16, align 8, !dbg !865, !tbaa !727
  %18 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !865
  %19 = icmp eq i32 %18, 0, !dbg !867
  br i1 %19, label %20, label %21, !dbg !869

; <label>:20:                                     ; preds = %15
  tail call void @usage(i32 0) #15, !dbg !871
  unreachable, !dbg !871

; <label>:21:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !798, metadata !719), !dbg !872
  %22 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !873
  %23 = icmp eq i32 %22, 0, !dbg !875
  br i1 %23, label %24, label %32, !dbg !877

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !878, !tbaa !727
  %26 = load i8*, i8** @Version, align 8, !dbg !880, !tbaa !727
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* null) #11, !dbg !881
  br label %423, !dbg !882

; <label>:27:                                     ; preds = %2
  %28 = icmp sgt i32 %0, 1, !dbg !883
  br i1 %28, label %29, label %51, !dbg !884

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds i8*, i8** %1, i64 1
  %31 = load i8*, i8** %30, align 8, !tbaa !727
  br label %32, !dbg !884

; <label>:32:                                     ; preds = %29, %21
  %33 = phi i8** [ %30, %29 ], [ %16, %21 ], !dbg !885
  %34 = phi i8* [ %31, %29 ], [ %17, %21 ], !dbg !885
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !805, metadata !719), !dbg !887
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !806, metadata !719), !dbg !888
  %35 = load i8, i8* %34, align 1, !dbg !885, !tbaa !889
  %36 = icmp eq i8 %35, 45, !dbg !890
  br i1 %36, label %37, label %53, !dbg !893

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !895
  %39 = load i8, i8* %38, align 1, !dbg !895, !tbaa !889
  %40 = icmp eq i8 %39, 45, !dbg !898
  br i1 %40, label %41, label %53, !dbg !901

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !903
  %43 = load i8, i8* %42, align 1, !dbg !903, !tbaa !889
  %44 = icmp eq i8 %43, 0, !dbg !906
  br i1 %44, label %45, label %53, !dbg !908

; <label>:45:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !782, metadata !719), !dbg !849
  tail call void @llvm.dbg.value(metadata i8** %33, i64 0, metadata !783, metadata !719), !dbg !850
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !782, metadata !719), !dbg !849
  tail call void @llvm.dbg.value(metadata i8** %33, i64 0, metadata !783, metadata !719), !dbg !850
  %46 = icmp slt i32 %0, 3, !dbg !910
  br i1 %46, label %51, label %47, !dbg !912

; <label>:47:                                     ; preds = %45
  %48 = add nsw i32 %0, -1, !dbg !913
  %49 = getelementptr inbounds i8*, i8** %1, i64 2
  %50 = load i8*, i8** %49, align 8, !tbaa !727
  br label %53, !dbg !912

; <label>:51:                                     ; preds = %27, %45
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !915
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52) #11, !dbg !917
  tail call void @usage(i32 1) #15, !dbg !919
  unreachable, !dbg !919

; <label>:53:                                     ; preds = %47, %32, %37, %41
  %54 = phi i8* [ %50, %47 ], [ %34, %41 ], [ %34, %37 ], [ %34, %32 ], !dbg !920
  %55 = phi i32 [ %48, %47 ], [ %0, %41 ], [ %0, %37 ], [ %0, %32 ]
  %56 = phi i8** [ %33, %47 ], [ %1, %41 ], [ %1, %37 ], [ %1, %32 ]
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !784, metadata !719), !dbg !921
  %57 = add nsw i32 %55, -2, !dbg !922
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !782, metadata !719), !dbg !849
  %58 = getelementptr inbounds i8*, i8** %56, i64 2, !dbg !923
  tail call void @llvm.dbg.value(metadata i8** %58, i64 0, metadata !783, metadata !719), !dbg !850
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 88
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 120
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 117
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 115
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 111
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 105
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 71
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 70
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 69
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 101
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 100
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 99
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 65
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 97
  %74 = bitcast i8** %4 to i8*
  %75 = bitcast i8** %3 to i8*
  br label %76, !dbg !924, !llvm.loop !925

; <label>:76:                                     ; preds = %407, %53
  %77 = phi i8** [ %58, %53 ], [ %411, %407 ]
  %78 = phi i32 [ %57, %53 ], [ %408, %407 ]
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !782, metadata !719), !dbg !849
  call void @llvm.dbg.value(metadata i8** %77, i64 0, metadata !783, metadata !719), !dbg !850
  call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !814, metadata !719) #11, !dbg !927
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !815, metadata !719) #11, !dbg !928
  call void @llvm.dbg.value(metadata i8** %77, i64 0, metadata !816, metadata !719) #11, !dbg !929
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !817, metadata !719) #11, !dbg !930
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !822, metadata !719) #11, !dbg !931
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !824, metadata !719) #11, !dbg !932
  call void @llvm.lifetime.start(i64 256, i8* nonnull %59) #11, !dbg !933
  call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !815, metadata !719) #11, !dbg !928
  call void @llvm.dbg.value(metadata i8** %77, i64 0, metadata !816, metadata !719) #11, !dbg !929
  call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !824, metadata !719) #11, !dbg !932
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !822, metadata !719) #11, !dbg !931
  %79 = load i8, i8* %54, align 1, !dbg !935, !tbaa !889
  %80 = icmp eq i8 %79, 0, !dbg !937
  br i1 %80, label %407, label %81, !dbg !937

; <label>:81:                                     ; preds = %76
  br label %82, !dbg !939

; <label>:82:                                     ; preds = %81, %397
  %83 = phi i8 [ %404, %397 ], [ %79, %81 ]
  %84 = phi i32 [ %402, %397 ], [ %78, %81 ]
  %85 = phi i8** [ %401, %397 ], [ %77, %81 ]
  %86 = phi i8* [ %403, %397 ], [ %54, %81 ]
  %87 = phi i32 [ %399, %397 ], [ 0, %81 ]
  %88 = phi i32 [ %398, %397 ], [ 0, %81 ]
  %89 = sext i8 %83 to i32, !dbg !939
  switch i32 %89, label %385 [
    i32 37, label %90
    i32 92, label %381
  ], !dbg !940

; <label>:90:                                     ; preds = %82
  %91 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !941
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !819, metadata !719) #11, !dbg !942
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !820, metadata !719) #11, !dbg !943
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !823, metadata !719) #11, !dbg !944
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !821, metadata !719) #11, !dbg !945
  %92 = load i8, i8* %91, align 1, !dbg !946, !tbaa !889
  switch i8 %92, label %142 [
    i8 37, label %93
    i8 98, label %104
    i8 113, label %133
  ], !dbg !948

; <label>:93:                                     ; preds = %90
  call void @llvm.dbg.value(metadata i32 37, i64 0, metadata !949, metadata !719) #11, !dbg !955
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !958, !tbaa !727
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %94, i64 0, i32 5, !dbg !958
  %96 = load i8*, i8** %95, align 8, !dbg !958, !tbaa !959
  %97 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %94, i64 0, i32 6, !dbg !958
  %98 = load i8*, i8** %97, align 8, !dbg !958, !tbaa !964
  %99 = icmp ult i8* %96, %98, !dbg !958
  br i1 %99, label %102, label %100, !dbg !958, !prof !965

; <label>:100:                                    ; preds = %93
  %101 = call i32 @__overflow(%struct._IO_FILE* %94, i32 37) #11, !dbg !966
  br label %397, !dbg !966

; <label>:102:                                    ; preds = %93
  %103 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !968
  store i8* %103, i8** %95, align 8, !dbg !968, !tbaa !959
  store i8 37, i8* %96, align 1, !dbg !968, !tbaa !889
  br label %397, !dbg !968

; <label>:104:                                    ; preds = %90
  %105 = icmp sgt i32 %84, 0, !dbg !970
  br i1 %105, label %106, label %397, !dbg !974

; <label>:106:                                    ; preds = %104
  %107 = load i8*, i8** %85, align 8, !dbg !975, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !977, metadata !719) #11, !dbg !980
  br label %108, !dbg !982

; <label>:108:                                    ; preds = %127, %106
  %109 = phi i8* [ %107, %106 ], [ %129, %127 ]
  call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !977, metadata !719) #11, !dbg !980
  %110 = load i8, i8* %109, align 1, !dbg !983, !tbaa !889
  switch i8 %110, label %115 [
    i8 0, label %130
    i8 92, label %111
  ], !dbg !987

; <label>:111:                                    ; preds = %108
  %112 = call fastcc i32 @print_esc(i8* %109, i1 zeroext true) #11, !dbg !989
  %113 = sext i32 %112 to i64, !dbg !991
  %114 = getelementptr inbounds i8, i8* %109, i64 %113, !dbg !991
  call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !977, metadata !719) #11, !dbg !980
  br label %127, !dbg !992

; <label>:115:                                    ; preds = %108
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !993, !tbaa !727
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5, !dbg !993
  %118 = load i8*, i8** %117, align 8, !dbg !993, !tbaa !959
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6, !dbg !993
  %120 = load i8*, i8** %119, align 8, !dbg !993, !tbaa !964
  %121 = icmp ult i8* %118, %120, !dbg !993
  br i1 %121, label %125, label %122, !dbg !993, !prof !965

; <label>:122:                                    ; preds = %115
  %123 = zext i8 %110 to i32, !dbg !995
  %124 = call i32 @__overflow(%struct._IO_FILE* %116, i32 %123) #11, !dbg !996
  br label %127, !dbg !996

; <label>:125:                                    ; preds = %115
  %126 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !997
  store i8* %126, i8** %117, align 8, !dbg !997, !tbaa !959
  store i8 %110, i8* %118, align 1, !dbg !997, !tbaa !889
  br label %127, !dbg !997

; <label>:127:                                    ; preds = %125, %122, %111
  %128 = phi i8* [ %114, %111 ], [ %109, %122 ], [ %109, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !977, metadata !719) #11, !dbg !980
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !998
  call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !977, metadata !719) #11, !dbg !980
  br label %108, !dbg !1000, !llvm.loop !1001

; <label>:130:                                    ; preds = %108
  %131 = getelementptr inbounds i8*, i8** %85, i64 1, !dbg !1004
  call void @llvm.dbg.value(metadata i8** %131, i64 0, metadata !816, metadata !719) #11, !dbg !929
  %132 = add nsw i32 %84, -1, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !815, metadata !719) #11, !dbg !928
  br label %397, !dbg !1006

; <label>:133:                                    ; preds = %90
  %134 = icmp sgt i32 %84, 0, !dbg !1007
  br i1 %134, label %135, label %397, !dbg !1011

; <label>:135:                                    ; preds = %133
  %136 = load i8*, i8** %85, align 8, !dbg !1012, !tbaa !727
  %137 = call i8* @quotearg_style(i32 3, i8* %136) #11, !dbg !1012
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1012, !tbaa !727
  %139 = call i32 @fputs_unlocked(i8* %137, %struct._IO_FILE* %138) #11, !dbg !1014
  %140 = getelementptr inbounds i8*, i8** %85, i64 1, !dbg !1016
  call void @llvm.dbg.value(metadata i8** %140, i64 0, metadata !816, metadata !719) #11, !dbg !929
  %141 = add nsw i32 %84, -1, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %141, i64 0, metadata !815, metadata !719) #11, !dbg !928
  br label %397, !dbg !1018

; <label>:142:                                    ; preds = %90
  call void @llvm.memset.p0i8.i64(i8* nonnull %59, i8 0, i64 256, i32 16, i1 false) #11, !dbg !1019
  store i8 1, i8* %60, align 8, !dbg !1020, !tbaa !889
  store i8 1, i8* %61, align 8, !dbg !1021, !tbaa !889
  store i8 1, i8* %62, align 1, !dbg !1022, !tbaa !889
  store i8 1, i8* %63, align 1, !dbg !1023, !tbaa !889
  store i8 1, i8* %64, align 1, !dbg !1024, !tbaa !889
  store i8 1, i8* %65, align 1, !dbg !1025, !tbaa !889
  store i8 1, i8* %66, align 1, !dbg !1026, !tbaa !889
  store i8 1, i8* %67, align 2, !dbg !1027, !tbaa !889
  store i8 1, i8* %68, align 1, !dbg !1028, !tbaa !889
  store i8 1, i8* %72, align 1, !dbg !1029, !tbaa !889
  store i8 1, i8* %73, align 1, !dbg !1030, !tbaa !889
  call void @llvm.memset.p0i8.i64(i8* %71, i8 1, i64 5, i32 1, i1 false) #11, !dbg !1031
  br label %143, !dbg !1032

; <label>:143:                                    ; preds = %151, %142
  %144 = phi i64 [ 1, %142 ], [ %153, %151 ]
  %145 = phi i8* [ %91, %142 ], [ %152, %151 ]
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %146 = load i8, i8* %145, align 1, !dbg !1033, !tbaa !889
  %147 = sext i8 %146 to i32, !dbg !1033
  switch i32 %147, label %154 [
    i32 73, label %148
    i32 39, label %148
    i32 45, label %151
    i32 43, label %151
    i32 32, label %151
    i32 35, label %149
    i32 48, label %150
  ], !dbg !1036

; <label>:148:                                    ; preds = %143, %143
  store i8 0, i8* %60, align 8, !dbg !1037, !tbaa !889
  store i8 0, i8* %61, align 8, !dbg !1039, !tbaa !889
  store i8 0, i8* %63, align 1, !dbg !1040, !tbaa !889
  store i8 0, i8* %64, align 1, !dbg !1041, !tbaa !889
  store i8 0, i8* %68, align 1, !dbg !1042, !tbaa !889
  store i8 0, i8* %69, align 1, !dbg !1043, !tbaa !889
  store i8 0, i8* %71, align 1, !dbg !1044, !tbaa !889
  store i8 0, i8* %72, align 1, !dbg !1045, !tbaa !889
  store i8 0, i8* %73, align 1, !dbg !1046, !tbaa !889
  br label %151, !dbg !1047

; <label>:149:                                    ; preds = %143
  store i8 0, i8* %62, align 1, !dbg !1048, !tbaa !889
  store i8 0, i8* %63, align 1, !dbg !1049, !tbaa !889
  store i8 0, i8* %65, align 1, !dbg !1050, !tbaa !889
  store i8 0, i8* %70, align 4, !dbg !1051, !tbaa !889
  store i8 0, i8* %71, align 1, !dbg !1052, !tbaa !889
  br label %151, !dbg !1053

; <label>:150:                                    ; preds = %143
  store i8 0, i8* %63, align 1, !dbg !1054, !tbaa !889
  store i8 0, i8* %71, align 1, !dbg !1055, !tbaa !889
  br label %151, !dbg !1056

; <label>:151:                                    ; preds = %150, %149, %148, %143, %143, %143
  %152 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !818, metadata !719) #11, !dbg !934
  %153 = add i64 %144, 1, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %153, i64 0, metadata !820, metadata !719) #11, !dbg !943
  br label %143, !dbg !1060, !llvm.loop !1061

; <label>:154:                                    ; preds = %143
  %155 = icmp eq i8 %146, 42, !dbg !1064
  br i1 %155, label %160, label %156, !dbg !1065

; <label>:156:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %157 = add nsw i32 %147, -48, !dbg !1066
  %158 = icmp ult i32 %157, 10, !dbg !1066
  br i1 %158, label %159, label %187, !dbg !1068

; <label>:159:                                    ; preds = %156
  br label %177, !dbg !1069

; <label>:160:                                    ; preds = %154
  %161 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !818, metadata !719) #11, !dbg !934
  %162 = add i64 %144, 1, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %162, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %163 = icmp sgt i32 %84, 0, !dbg !1073
  br i1 %163, label %164, label %187, !dbg !1074

; <label>:164:                                    ; preds = %160
  %165 = load i8*, i8** %85, align 8, !dbg !1075, !tbaa !727
  %166 = call fastcc i64 @vstrtoimax(i8* %165) #11, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !825, metadata !719) #11, !dbg !1077
  %167 = add i64 %166, 2147483648, !dbg !1078
  %168 = icmp ult i64 %167, 4294967296, !dbg !1078
  br i1 %168, label %169, label %173, !dbg !1078

; <label>:169:                                    ; preds = %164
  %170 = trunc i64 %166 to i32, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %170, i64 0, metadata !822, metadata !719) #11, !dbg !931
  %171 = getelementptr inbounds i8*, i8** %85, i64 1, !dbg !1081
  call void @llvm.dbg.value(metadata i8** %171, i64 0, metadata !816, metadata !719) #11, !dbg !929
  %172 = add nsw i32 %84, -1, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %172, i64 0, metadata !815, metadata !719) #11, !dbg !928
  br label %187, !dbg !1083

; <label>:173:                                    ; preds = %164
  %174 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !1084
  %175 = load i8*, i8** %85, align 8, !dbg !1084, !tbaa !727
  %176 = call i8* @quote(i8* %175) #11, !dbg !1085
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %174, i8* %176) #11, !dbg !1087
  unreachable, !dbg !1084

; <label>:177:                                    ; preds = %159, %177
  %178 = phi i8* [ %180, %177 ], [ %145, %159 ]
  %179 = phi i64 [ %181, %177 ], [ %144, %159 ]
  %180 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !1069
  call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !818, metadata !719) #11, !dbg !934
  %181 = add i64 %179, 1, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !820, metadata !719) #11, !dbg !943
  call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %182 = load i8, i8* %180, align 1, !dbg !1066, !tbaa !889
  %183 = sext i8 %182 to i32, !dbg !1066
  %184 = add nsw i32 %183, -48, !dbg !1066
  %185 = icmp ult i32 %184, 10, !dbg !1066
  br i1 %185, label %177, label %186, !dbg !1068, !llvm.loop !1090

; <label>:186:                                    ; preds = %177
  br label %187, !dbg !928

; <label>:187:                                    ; preds = %186, %169, %160, %156
  %188 = phi i64 [ %162, %160 ], [ %162, %169 ], [ %144, %156 ], [ %181, %186 ]
  %189 = phi i1 [ true, %160 ], [ true, %169 ], [ false, %156 ], [ false, %186 ]
  %190 = phi i32 [ 0, %160 ], [ %170, %169 ], [ %88, %156 ], [ %88, %186 ]
  %191 = phi i8* [ %161, %160 ], [ %161, %169 ], [ %145, %156 ], [ %180, %186 ]
  %192 = phi i8** [ %85, %160 ], [ %171, %169 ], [ %85, %156 ], [ %85, %186 ]
  %193 = phi i32 [ %84, %160 ], [ %172, %169 ], [ %84, %156 ], [ %84, %186 ]
  call void @llvm.dbg.value(metadata i32 %193, i64 0, metadata !815, metadata !719) #11, !dbg !928
  call void @llvm.dbg.value(metadata i8** %192, i64 0, metadata !816, metadata !719) #11, !dbg !929
  call void @llvm.dbg.value(metadata i8* %191, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i32 %190, i64 0, metadata !822, metadata !719) #11, !dbg !931
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %194 = load i8, i8* %191, align 1, !dbg !1093, !tbaa !889
  %195 = icmp eq i8 %194, 46, !dbg !1094
  br i1 %195, label %196, label %228, !dbg !1095

; <label>:196:                                    ; preds = %187
  %197 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !818, metadata !719) #11, !dbg !934
  store i8 0, i8* %71, align 1, !dbg !1097, !tbaa !889
  %198 = load i8, i8* %197, align 1, !dbg !1098, !tbaa !889
  %199 = icmp eq i8 %198, 42, !dbg !1099
  br i1 %199, label %207, label %200, !dbg !1100

; <label>:200:                                    ; preds = %196
  %201 = add i64 %188, 1
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i64 %201, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %202 = sext i8 %198 to i32, !dbg !1101
  %203 = add nsw i32 %202, -48, !dbg !1101
  %204 = icmp ult i32 %203, 10, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !818, metadata !719) #11, !dbg !934
  br i1 %204, label %205, label %228, !dbg !1103, !llvm.loop !1104

; <label>:205:                                    ; preds = %200
  %206 = getelementptr inbounds i8, i8* %191, i64 2, !dbg !1107
  br label %235

; <label>:207:                                    ; preds = %196
  %208 = getelementptr inbounds i8, i8* %191, i64 2, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %208, i64 0, metadata !818, metadata !719) #11, !dbg !934
  %209 = add i64 %188, 2, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %209, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %210 = icmp sgt i32 %193, 0, !dbg !1111
  br i1 %210, label %211, label %228, !dbg !1112

; <label>:211:                                    ; preds = %207
  %212 = load i8*, i8** %192, align 8, !dbg !1113, !tbaa !727
  %213 = call fastcc i64 @vstrtoimax(i8* %212) #11, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !837, metadata !719) #11, !dbg !1115
  %214 = icmp slt i64 %213, 0, !dbg !1116
  br i1 %214, label %223, label %215, !dbg !1118

; <label>:215:                                    ; preds = %211
  %216 = icmp sgt i64 %213, 2147483647, !dbg !1119
  br i1 %216, label %217, label %221, !dbg !1121

; <label>:217:                                    ; preds = %215
  %218 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !1122
  %219 = load i8*, i8** %192, align 8, !dbg !1122, !tbaa !727
  %220 = call i8* @quote(i8* %219) #11, !dbg !1123
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %218, i8* %220) #11, !dbg !1125
  unreachable, !dbg !1122

; <label>:221:                                    ; preds = %215
  %222 = trunc i64 %213 to i32, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !824, metadata !719) #11, !dbg !932
  br label %223

; <label>:223:                                    ; preds = %221, %211
  %224 = phi i32 [ %222, %221 ], [ -1, %211 ]
  call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !824, metadata !719) #11, !dbg !932
  %225 = getelementptr inbounds i8*, i8** %192, i64 1, !dbg !1128
  call void @llvm.dbg.value(metadata i8** %225, i64 0, metadata !816, metadata !719) #11, !dbg !929
  %226 = add nsw i32 %193, -1, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !815, metadata !719) #11, !dbg !928
  br label %228, !dbg !1130

; <label>:227:                                    ; preds = %235
  br label %228, !dbg !928

; <label>:228:                                    ; preds = %227, %200, %223, %207, %187
  %229 = phi i64 [ %209, %223 ], [ %209, %207 ], [ %188, %187 ], [ %201, %200 ], [ %239, %227 ]
  %230 = phi i8 [ 1, %223 ], [ 1, %207 ], [ 0, %187 ], [ 0, %200 ], [ 0, %227 ]
  %231 = phi i32 [ %224, %223 ], [ 0, %207 ], [ %87, %187 ], [ %87, %200 ], [ %87, %227 ]
  %232 = phi i8* [ %208, %223 ], [ %208, %207 ], [ %191, %187 ], [ %197, %200 ], [ %236, %227 ]
  %233 = phi i8** [ %225, %223 ], [ %192, %207 ], [ %192, %187 ], [ %192, %200 ], [ %192, %227 ]
  %234 = phi i32 [ %226, %223 ], [ %193, %207 ], [ %193, %187 ], [ %193, %200 ], [ %193, %227 ]
  br label %244, !dbg !928

; <label>:235:                                    ; preds = %205, %235
  %236 = phi i8* [ %243, %235 ], [ %206, %205 ]
  %237 = phi i64 [ %239, %235 ], [ %201, %205 ]
  %238 = load i8, i8* %236, align 1, !tbaa !889
  %239 = add i64 %237, 1
  call void @llvm.dbg.value(metadata i8* %236, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i64 %239, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %240 = sext i8 %238 to i32, !dbg !1101
  %241 = add nsw i32 %240, -48, !dbg !1101
  %242 = icmp ult i32 %241, 10, !dbg !1101
  %243 = getelementptr inbounds i8, i8* %236, i64 1, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %243, i64 0, metadata !818, metadata !719) #11, !dbg !934
  br i1 %242, label %235, label %227, !dbg !1103, !llvm.loop !1104

; <label>:244:                                    ; preds = %247, %228
  %245 = phi i8* [ %248, %247 ], [ %232, %228 ]
  call void @llvm.dbg.value(metadata i32 %234, i64 0, metadata !815, metadata !719) #11, !dbg !928
  call void @llvm.dbg.value(metadata i8** %233, i64 0, metadata !816, metadata !719) #11, !dbg !929
  call void @llvm.dbg.value(metadata i8* %245, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i32 %231, i64 0, metadata !824, metadata !719) #11, !dbg !932
  call void @llvm.dbg.value(metadata i8 %230, i64 0, metadata !823, metadata !719) #11, !dbg !944
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !820, metadata !719) #11, !dbg !943
  %246 = load i8, i8* %245, align 1, !dbg !1131, !tbaa !889
  switch i8 %246, label %249 [
    i8 108, label %247
    i8 76, label %247
    i8 104, label %247
    i8 106, label %247
    i8 116, label %247
    i8 122, label %247
  ], !dbg !1133

; <label>:247:                                    ; preds = %244, %244, %244, %244, %244, %244
  %248 = getelementptr inbounds i8, i8* %245, i64 1, !dbg !1134
  call void @llvm.dbg.value(metadata i8* %248, i64 0, metadata !818, metadata !719) #11, !dbg !934
  br label %244, !dbg !1135, !llvm.loop !1137

; <label>:249:                                    ; preds = %244
  call void @llvm.dbg.value(metadata i8 %246, i64 0, metadata !844, metadata !719) #11, !dbg !1140
  %250 = zext i8 %246 to i64, !dbg !1141
  %251 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %250, !dbg !1141
  %252 = load i8, i8* %251, align 1, !dbg !1141, !tbaa !889
  %253 = icmp eq i8 %252, 0, !dbg !1141
  br i1 %253, label %254, label %261, !dbg !1143

; <label>:254:                                    ; preds = %249
  %255 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !1144
  %256 = getelementptr inbounds i8, i8* %245, i64 1, !dbg !1144
  %257 = ptrtoint i8* %256 to i64, !dbg !1144
  %258 = ptrtoint i8* %86 to i64, !dbg !1144
  %259 = sub i64 %257, %258, !dbg !1144
  %260 = trunc i64 %259 to i32, !dbg !1144
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %255, i32 %260, i8* %86) #11, !dbg !1145
  unreachable, !dbg !1144

; <label>:261:                                    ; preds = %249
  %262 = icmp ne i8 %230, 0, !dbg !1147
  %263 = icmp slt i32 %234, 1, !dbg !1148
  br i1 %263, label %268, label %264, !dbg !1149

; <label>:264:                                    ; preds = %261
  %265 = add nsw i32 %234, -1, !dbg !1150
  call void @llvm.dbg.value(metadata i32 %265, i64 0, metadata !815, metadata !719) #11, !dbg !928
  %266 = getelementptr inbounds i8*, i8** %233, i64 1, !dbg !1152
  call void @llvm.dbg.value(metadata i8** %266, i64 0, metadata !816, metadata !719) #11, !dbg !929
  %267 = load i8*, i8** %233, align 8, !dbg !1153, !tbaa !727
  br label %268, !dbg !1154

; <label>:268:                                    ; preds = %264, %261
  %269 = phi i8** [ %233, %261 ], [ %266, %264 ]
  %270 = phi i32 [ %234, %261 ], [ %265, %264 ]
  %271 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %261 ], [ %267, %264 ], !dbg !1155
  call void @llvm.dbg.value(metadata i32 %270, i64 0, metadata !815, metadata !719) #11, !dbg !928
  call void @llvm.dbg.value(metadata i8** %269, i64 0, metadata !816, metadata !719) #11, !dbg !929
  call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !1157, metadata !719) #11, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1162, metadata !719) #11, !dbg !1186
  call void @llvm.dbg.value(metadata i8 %246, i64 0, metadata !1163, metadata !719) #11, !dbg !1187
  call void @llvm.dbg.value(metadata i1 %189, i64 0, metadata !1164, metadata !1188) #11, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %190, i64 0, metadata !1165, metadata !719) #11, !dbg !1190
  call void @llvm.dbg.value(metadata i1 %262, i64 0, metadata !1166, metadata !1188) #11, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %231, i64 0, metadata !1167, metadata !719) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1168, metadata !719) #11, !dbg !1193
  %272 = sext i8 %246 to i32, !dbg !1194
  switch i32 %272, label %274 [
    i32 100, label %275
    i32 105, label %275
    i32 111, label %275
    i32 117, label %275
    i32 120, label %275
    i32 88, label %275
    i32 97, label %273
    i32 101, label %273
    i32 102, label %273
    i32 103, label %273
    i32 65, label %273
    i32 69, label %273
    i32 70, label %273
    i32 71, label %273
  ], !dbg !1195

; <label>:273:                                    ; preds = %268, %268, %268, %268, %268, %268, %268, %268
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1173, metadata !719) #11, !dbg !1196
  br label %275, !dbg !1197

; <label>:274:                                    ; preds = %268
  call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !1172, metadata !719) #11, !dbg !1199
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1173, metadata !719) #11, !dbg !1196
  br label %275, !dbg !1200

; <label>:275:                                    ; preds = %274, %273, %268, %268, %268, %268, %268, %268
  %276 = phi i64 [ 0, %274 ], [ 1, %273 ], [ 1, %268 ], [ 1, %268 ], [ 1, %268 ], [ 1, %268 ], [ 1, %268 ], [ 1, %268 ]
  %277 = phi i8* [ %86, %274 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %273 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ]
  call void @llvm.dbg.value(metadata i8* %277, i64 0, metadata !1172, metadata !719) #11, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !1173, metadata !719) #11, !dbg !1196
  %278 = add i64 %229, 2, !dbg !1201
  %279 = add i64 %278, %276, !dbg !1202
  %280 = call noalias i8* @xmalloc(i64 %279) #11, !dbg !1203
  call void @llvm.dbg.value(metadata i8* %280, i64 0, metadata !1169, metadata !719) #11, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %280, i64 0, metadata !1205, metadata !719) #11, !dbg !1215
  call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !1213, metadata !719) #11, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1214, metadata !719) #11, !dbg !1215
  %281 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %280, i1 false) #11, !dbg !1217
  %282 = call i8* @__mempcpy_chk(i8* nonnull %280, i8* nonnull %86, i64 %229, i64 %281) #11, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %282, i64 0, metadata !1170, metadata !719) #11, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %282, i64 0, metadata !1205, metadata !719) #11, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %277, i64 0, metadata !1213, metadata !719) #11, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !1214, metadata !719) #11, !dbg !1220
  %283 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %282, i1 false) #11, !dbg !1222
  %284 = call i8* @__mempcpy_chk(i8* nonnull %282, i8* nonnull %277, i64 %276, i64 %283) #11, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %284, i64 0, metadata !1170, metadata !719) #11, !dbg !1219
  %285 = getelementptr inbounds i8, i8* %284, i64 1, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %285, i64 0, metadata !1170, metadata !719) #11, !dbg !1219
  store i8 %246, i8* %284, align 1, !dbg !1225, !tbaa !889
  store i8 0, i8* %285, align 1, !dbg !1226, !tbaa !889
  switch i32 %272, label %380 [
    i32 100, label %286
    i32 105, label %286
    i32 111, label %298
    i32 117, label %298
    i32 120, label %298
    i32 88, label %298
    i32 97, label %330
    i32 65, label %330
    i32 101, label %330
    i32 69, label %330
    i32 102, label %330
    i32 70, label %330
    i32 103, label %330
    i32 71, label %330
    i32 99, label %362
    i32 115, label %369
  ], !dbg !1227

; <label>:286:                                    ; preds = %275, %275
  %287 = call fastcc i64 @vstrtoimax(i8* %271) #11, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1174, metadata !719) #11, !dbg !1229
  br i1 %189, label %293, label %288, !dbg !1230

; <label>:288:                                    ; preds = %286
  br i1 %262, label %291, label %289, !dbg !1231

; <label>:289:                                    ; preds = %288
  %290 = call i32 (i8*, ...) @xprintf(i8* %280, i64 %287) #11, !dbg !1234
  br label %380, !dbg !1234

; <label>:291:                                    ; preds = %288
  %292 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %231, i64 %287) #11, !dbg !1236
  br label %380

; <label>:293:                                    ; preds = %286
  br i1 %262, label %296, label %294, !dbg !1237

; <label>:294:                                    ; preds = %293
  %295 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i64 %287) #11, !dbg !1239
  br label %380, !dbg !1239

; <label>:296:                                    ; preds = %293
  %297 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %231, i64 %287) #11, !dbg !1241
  br label %380

; <label>:298:                                    ; preds = %275, %275, %275, %275
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1242, metadata !719) #11, !dbg !1252
  call void @llvm.lifetime.start(i64 8, i8* nonnull %74) #11, !dbg !1252
  %299 = load i8, i8* %271, align 1, !dbg !1254, !tbaa !889
  switch i8 %299, label %314 [
    i8 34, label %300
    i8 39, label %300
  ], !dbg !1254

; <label>:300:                                    ; preds = %298, %298
  %301 = getelementptr inbounds i8, i8* %271, i64 1, !dbg !1255
  %302 = load i8, i8* %301, align 1, !dbg !1255, !tbaa !889
  %303 = icmp eq i8 %302, 0, !dbg !1255
  br i1 %303, label %314, label %304, !dbg !1257

; <label>:304:                                    ; preds = %300
  call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !1242, metadata !719) #11, !dbg !1252
  call void @llvm.dbg.value(metadata i8 %302, i64 0, metadata !1249, metadata !719) #11, !dbg !1259
  %305 = zext i8 %302 to i64, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %305, i64 0, metadata !1248, metadata !719) #11, !dbg !1252
  %306 = getelementptr inbounds i8, i8* %271, i64 2, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %306, i64 0, metadata !1242, metadata !719) #11, !dbg !1252
  %307 = load i8, i8* %306, align 1, !dbg !1262, !tbaa !889
  %308 = icmp ne i8 %307, 0, !dbg !1262
  %309 = load i8, i8* @posixly_correct, align 1, !dbg !1265
  %310 = icmp eq i8 %309, 0, !dbg !1265
  %311 = and i1 %308, %310, !dbg !1262
  br i1 %311, label %312, label %318, !dbg !1262

; <label>:312:                                    ; preds = %304
  %313 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1267
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %313, i8* %306) #11, !dbg !1269
  br label %318, !dbg !1267

; <label>:314:                                    ; preds = %300, %298
  %315 = tail call i32* @__errno_location() #1, !dbg !1271
  store i32 0, i32* %315, align 4, !dbg !1271, !tbaa !1274
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1247, metadata !1275) #11, !dbg !1252
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1276, metadata !719) #11, !dbg !1286
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1284, metadata !719) #11, !dbg !1286
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1285, metadata !719) #11, !dbg !1286
  %316 = call i64 @__strtoul_internal(i8* nonnull %271, i8** nonnull %4, i32 0, i32 0) #11, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1248, metadata !719) #11, !dbg !1252
  %317 = load i8*, i8** %4, align 8, !dbg !1271, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %317, i64 0, metadata !1247, metadata !719) #11, !dbg !1252
  call fastcc void @verify_numeric(i8* nonnull %271, i8* %317) #11, !dbg !1290
  br label %318

; <label>:318:                                    ; preds = %314, %312, %304
  %319 = phi i64 [ %316, %314 ], [ %305, %304 ], [ %305, %312 ]
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1248, metadata !719) #11, !dbg !1252
  call void @llvm.lifetime.end(i64 8, i8* nonnull %74) #11, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1177, metadata !719) #11, !dbg !1292
  br i1 %189, label %325, label %320, !dbg !1293

; <label>:320:                                    ; preds = %318
  br i1 %262, label %323, label %321, !dbg !1294

; <label>:321:                                    ; preds = %320
  %322 = call i32 (i8*, ...) @xprintf(i8* %280, i64 %319) #11, !dbg !1297
  br label %380, !dbg !1297

; <label>:323:                                    ; preds = %320
  %324 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %231, i64 %319) #11, !dbg !1299
  br label %380

; <label>:325:                                    ; preds = %318
  br i1 %262, label %328, label %326, !dbg !1300

; <label>:326:                                    ; preds = %325
  %327 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i64 %319) #11, !dbg !1302
  br label %380, !dbg !1302

; <label>:328:                                    ; preds = %325
  %329 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %231, i64 %319) #11, !dbg !1304
  br label %380

; <label>:330:                                    ; preds = %275, %275, %275, %275, %275, %275, %275, %275
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1305, metadata !719) #11, !dbg !1315
  call void @llvm.lifetime.start(i64 8, i8* nonnull %75) #11, !dbg !1315
  %331 = load i8, i8* %271, align 1, !dbg !1317, !tbaa !889
  switch i8 %331, label %346 [
    i8 34, label %332
    i8 39, label %332
  ], !dbg !1317

; <label>:332:                                    ; preds = %330, %330
  %333 = getelementptr inbounds i8, i8* %271, i64 1, !dbg !1318
  %334 = load i8, i8* %333, align 1, !dbg !1318, !tbaa !889
  %335 = icmp eq i8 %334, 0, !dbg !1318
  br i1 %335, label %346, label %336, !dbg !1320

; <label>:336:                                    ; preds = %332
  call void @llvm.dbg.value(metadata i8* %333, i64 0, metadata !1305, metadata !719) #11, !dbg !1315
  call void @llvm.dbg.value(metadata i8 %334, i64 0, metadata !1312, metadata !719) #11, !dbg !1322
  %337 = uitofp i8 %334 to x86_fp80, !dbg !1323
  call void @llvm.dbg.value(metadata x86_fp80 %337, i64 0, metadata !1311, metadata !719) #11, !dbg !1315
  %338 = getelementptr inbounds i8, i8* %271, i64 2, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %338, i64 0, metadata !1305, metadata !719) #11, !dbg !1315
  %339 = load i8, i8* %338, align 1, !dbg !1325, !tbaa !889
  %340 = icmp ne i8 %339, 0, !dbg !1325
  %341 = load i8, i8* @posixly_correct, align 1, !dbg !1328
  %342 = icmp eq i8 %341, 0, !dbg !1328
  %343 = and i1 %340, %342, !dbg !1325
  br i1 %343, label %344, label %350, !dbg !1325

; <label>:344:                                    ; preds = %336
  %345 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1330
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %345, i8* %338) #11, !dbg !1332
  br label %350, !dbg !1330

; <label>:346:                                    ; preds = %332, %330
  %347 = tail call i32* @__errno_location() #1, !dbg !1334
  store i32 0, i32* %347, align 4, !dbg !1334, !tbaa !1274
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1310, metadata !1275) #11, !dbg !1315
  %348 = call x86_fp80 @c_strtold(i8* nonnull %271, i8** nonnull %3) #11, !dbg !1337
  call void @llvm.dbg.value(metadata x86_fp80 %348, i64 0, metadata !1311, metadata !719) #11, !dbg !1315
  %349 = load i8*, i8** %3, align 8, !dbg !1334, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %349, i64 0, metadata !1310, metadata !719) #11, !dbg !1315
  call fastcc void @verify_numeric(i8* nonnull %271, i8* %349) #11, !dbg !1339
  br label %350

; <label>:350:                                    ; preds = %346, %344, %336
  %351 = phi x86_fp80 [ %348, %346 ], [ %337, %336 ], [ %337, %344 ]
  call void @llvm.dbg.value(metadata x86_fp80 %351, i64 0, metadata !1311, metadata !719) #11, !dbg !1315
  call void @llvm.lifetime.end(i64 8, i8* nonnull %75) #11, !dbg !1315
  call void @llvm.dbg.value(metadata x86_fp80 %351, i64 0, metadata !1181, metadata !719) #11, !dbg !1341
  br i1 %189, label %357, label %352, !dbg !1342

; <label>:352:                                    ; preds = %350
  br i1 %262, label %355, label %353, !dbg !1343

; <label>:353:                                    ; preds = %352
  %354 = call i32 (i8*, ...) @xprintf(i8* %280, x86_fp80 %351) #11, !dbg !1346
  br label %380, !dbg !1346

; <label>:355:                                    ; preds = %352
  %356 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %231, x86_fp80 %351) #11, !dbg !1348
  br label %380

; <label>:357:                                    ; preds = %350
  br i1 %262, label %360, label %358, !dbg !1349

; <label>:358:                                    ; preds = %357
  %359 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, x86_fp80 %351) #11, !dbg !1351
  br label %380, !dbg !1351

; <label>:360:                                    ; preds = %357
  %361 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %231, x86_fp80 %351) #11, !dbg !1353
  br label %380

; <label>:362:                                    ; preds = %275
  %363 = load i8, i8* %271, align 1, !tbaa !889
  %364 = sext i8 %363 to i32
  br i1 %189, label %367, label %365, !dbg !1354

; <label>:365:                                    ; preds = %362
  %366 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %364) #11, !dbg !1355
  br label %380, !dbg !1355

; <label>:367:                                    ; preds = %362
  %368 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %364) #11, !dbg !1357
  br label %380

; <label>:369:                                    ; preds = %275
  br i1 %189, label %375, label %370, !dbg !1358

; <label>:370:                                    ; preds = %369
  br i1 %262, label %373, label %371, !dbg !1359

; <label>:371:                                    ; preds = %370
  %372 = call i32 (i8*, ...) @xprintf(i8* %280, i8* %271) #11, !dbg !1362
  br label %380, !dbg !1362

; <label>:373:                                    ; preds = %370
  %374 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %231, i8* %271) #11, !dbg !1364
  br label %380

; <label>:375:                                    ; preds = %369
  br i1 %262, label %378, label %376, !dbg !1365

; <label>:376:                                    ; preds = %375
  %377 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i8* %271) #11, !dbg !1367
  br label %380, !dbg !1367

; <label>:378:                                    ; preds = %375
  %379 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %231, i8* %271) #11, !dbg !1369
  br label %380

; <label>:380:                                    ; preds = %378, %376, %373, %371, %367, %365, %360, %358, %355, %353, %328, %326, %323, %321, %296, %294, %291, %289, %275
  call void @free(i8* %280) #11, !dbg !1370
  br label %397, !dbg !1371

; <label>:381:                                    ; preds = %82
  %382 = call fastcc i32 @print_esc(i8* %86, i1 zeroext false) #11, !dbg !1372
  %383 = sext i32 %382 to i64, !dbg !1373
  %384 = getelementptr inbounds i8, i8* %86, i64 %383, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %384, i64 0, metadata !818, metadata !719) #11, !dbg !934
  br label %397, !dbg !1374

; <label>:385:                                    ; preds = %82
  call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !949, metadata !719) #11, !dbg !1375
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1377, !tbaa !727
  %387 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %386, i64 0, i32 5, !dbg !1377
  %388 = load i8*, i8** %387, align 8, !dbg !1377, !tbaa !959
  %389 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %386, i64 0, i32 6, !dbg !1377
  %390 = load i8*, i8** %389, align 8, !dbg !1377, !tbaa !964
  %391 = icmp ult i8* %388, %390, !dbg !1377
  br i1 %391, label %395, label %392, !dbg !1377, !prof !965

; <label>:392:                                    ; preds = %385
  %393 = and i32 %89, 255, !dbg !1378
  %394 = call i32 @__overflow(%struct._IO_FILE* %386, i32 %393) #11, !dbg !1378
  br label %397, !dbg !1378

; <label>:395:                                    ; preds = %385
  %396 = getelementptr inbounds i8, i8* %388, i64 1, !dbg !1379
  store i8* %396, i8** %387, align 8, !dbg !1379, !tbaa !959
  store i8 %83, i8* %388, align 1, !dbg !1379, !tbaa !889
  br label %397, !dbg !1379

; <label>:397:                                    ; preds = %395, %392, %381, %380, %135, %133, %130, %104, %102, %100
  %398 = phi i32 [ %88, %381 ], [ %88, %130 ], [ %88, %104 ], [ %88, %135 ], [ %88, %133 ], [ %190, %380 ], [ %88, %100 ], [ %88, %102 ], [ %88, %392 ], [ %88, %395 ]
  %399 = phi i32 [ %87, %381 ], [ %87, %130 ], [ %87, %104 ], [ %87, %135 ], [ %87, %133 ], [ %231, %380 ], [ %87, %100 ], [ %87, %102 ], [ %87, %392 ], [ %87, %395 ]
  %400 = phi i8* [ %384, %381 ], [ %91, %130 ], [ %91, %104 ], [ %91, %135 ], [ %91, %133 ], [ %245, %380 ], [ %91, %100 ], [ %91, %102 ], [ %86, %392 ], [ %86, %395 ]
  %401 = phi i8** [ %85, %381 ], [ %131, %130 ], [ %85, %104 ], [ %140, %135 ], [ %85, %133 ], [ %269, %380 ], [ %85, %100 ], [ %85, %102 ], [ %85, %392 ], [ %85, %395 ]
  %402 = phi i32 [ %84, %381 ], [ %132, %130 ], [ %84, %104 ], [ %141, %135 ], [ %84, %133 ], [ %270, %380 ], [ %84, %100 ], [ %84, %102 ], [ %84, %392 ], [ %84, %395 ]
  call void @llvm.dbg.value(metadata i32 %402, i64 0, metadata !815, metadata !719) #11, !dbg !928
  call void @llvm.dbg.value(metadata i8** %401, i64 0, metadata !816, metadata !719) #11, !dbg !929
  call void @llvm.dbg.value(metadata i8* %400, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i32 %399, i64 0, metadata !824, metadata !719) #11, !dbg !932
  call void @llvm.dbg.value(metadata i32 %398, i64 0, metadata !822, metadata !719) #11, !dbg !931
  %403 = getelementptr inbounds i8, i8* %400, i64 1, !dbg !1380
  call void @llvm.dbg.value(metadata i8* %403, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i32 %402, i64 0, metadata !815, metadata !719) #11, !dbg !928
  call void @llvm.dbg.value(metadata i8** %401, i64 0, metadata !816, metadata !719) #11, !dbg !929
  call void @llvm.dbg.value(metadata i8* %403, i64 0, metadata !818, metadata !719) #11, !dbg !934
  call void @llvm.dbg.value(metadata i32 %399, i64 0, metadata !824, metadata !719) #11, !dbg !932
  call void @llvm.dbg.value(metadata i32 %398, i64 0, metadata !822, metadata !719) #11, !dbg !931
  %404 = load i8, i8* %403, align 1, !dbg !935, !tbaa !889
  %405 = icmp eq i8 %404, 0, !dbg !937
  br i1 %405, label %406, label %82, !dbg !937, !llvm.loop !1382

; <label>:406:                                    ; preds = %397
  br label %407, !dbg !1385

; <label>:407:                                    ; preds = %406, %76
  %408 = phi i32 [ %78, %76 ], [ %402, %406 ]
  %409 = sub nsw i32 %78, %408, !dbg !1385
  call void @llvm.lifetime.end(i64 256, i8* nonnull %59) #11, !dbg !1386
  call void @llvm.dbg.value(metadata i32 %409, i64 0, metadata !785, metadata !719), !dbg !1387
  call void @llvm.dbg.value(metadata i32 %408, i64 0, metadata !782, metadata !719), !dbg !849
  %410 = sext i32 %409 to i64, !dbg !1388
  %411 = getelementptr inbounds i8*, i8** %77, i64 %410, !dbg !1388
  call void @llvm.dbg.value(metadata i8** %411, i64 0, metadata !783, metadata !719), !dbg !850
  %412 = icmp sgt i32 %409, 0, !dbg !1389
  %413 = icmp sgt i32 %408, 0, !dbg !1390
  %414 = and i1 %413, %412, !dbg !1392
  br i1 %414, label %76, label %415, !dbg !1393, !llvm.loop !925

; <label>:415:                                    ; preds = %407
  br i1 %413, label %416, label %420, !dbg !1395

; <label>:416:                                    ; preds = %415
  %417 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !1396
  %418 = load i8*, i8** %411, align 8, !dbg !1398, !tbaa !727
  %419 = call i8* @quote(i8* %418) #11, !dbg !1399
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %417, i8* %419) #11, !dbg !1400
  br label %420, !dbg !1400

; <label>:420:                                    ; preds = %416, %415
  %421 = load i1, i1* @exit_status, align 4
  %422 = zext i1 %421 to i32
  br label %423, !dbg !1401

; <label>:423:                                    ; preds = %420, %24
  %424 = phi i32 [ 0, %24 ], [ %422, %420 ]
  ret i32 %424, !dbg !1402
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @print_esc(i8*, i1 zeroext) unnamed_addr #6 !dbg !1403 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1407, metadata !719), !dbg !1419
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1408, metadata !1188), !dbg !1420
  %3 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1421
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1410, metadata !719), !dbg !1423
  %4 = load i8, i8* %3, align 1, !dbg !1424, !tbaa !889
  %5 = icmp eq i8 %4, 120, !dbg !1425
  br i1 %5, label %6, label %51, !dbg !1426

; <label>:6:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1411, metadata !719), !dbg !1427
  %7 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1428
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1411, metadata !719), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1410, metadata !719), !dbg !1423
  %8 = tail call i16** @__ctype_b_loc() #1, !dbg !1431
  %9 = load i16*, i16** %8, align 8, !tbaa !727
  %10 = load i8, i8* %7, align 1, !dbg !1431, !tbaa !889
  %11 = zext i8 %10 to i64, !dbg !1431
  %12 = getelementptr inbounds i16, i16* %9, i64 %11, !dbg !1431
  %13 = load i16, i16* %12, align 2, !dbg !1431, !tbaa !1434
  %14 = and i16 %13, 4096, !dbg !1431
  %15 = icmp eq i16 %14, 0, !dbg !1435
  br i1 %15, label %34, label %16, !dbg !1436

; <label>:16:                                     ; preds = %6
  %17 = sext i8 %10 to i32, !dbg !1438
  %18 = add i8 %10, -97, !dbg !1438
  %19 = icmp ult i8 %18, 6, !dbg !1438
  br i1 %19, label %24, label %20, !dbg !1438

; <label>:20:                                     ; preds = %16
  %21 = add i8 %10, -65, !dbg !1439
  %22 = icmp ult i8 %21, 6, !dbg !1439
  %23 = select i1 %22, i32 -55, i32 -48, !dbg !1441
  br label %24, !dbg !1441

; <label>:24:                                     ; preds = %16, %20
  %25 = phi i32 [ %23, %20 ], [ -87, %16 ]
  %26 = add nsw i32 %17, %25, !dbg !1443
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1410, metadata !719), !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  %27 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1445
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1410, metadata !719), !dbg !1423
  %28 = load i8, i8* %27, align 1, !dbg !1431, !tbaa !889
  %29 = zext i8 %28 to i64, !dbg !1431
  %30 = getelementptr inbounds i16, i16* %9, i64 %29, !dbg !1431
  %31 = load i16, i16* %30, align 2, !dbg !1431, !tbaa !1434
  %32 = and i16 %31, 4096, !dbg !1431
  %33 = icmp eq i16 %32, 0, !dbg !1435
  br i1 %33, label %36, label %274, !dbg !1436

; <label>:34:                                     ; preds = %6
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1446
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35) #11, !dbg !1448
  unreachable, !dbg !1446

; <label>:36:                                     ; preds = %24, %283
  %37 = phi i32 [ %286, %283 ], [ %26, %24 ]
  %38 = phi i8* [ %287, %283 ], [ %27, %24 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !949, metadata !719) #11, !dbg !1450
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1452, !tbaa !727
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1452
  %41 = load i8*, i8** %40, align 8, !dbg !1452, !tbaa !959
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1452
  %43 = load i8*, i8** %42, align 8, !dbg !1452, !tbaa !964
  %44 = icmp ult i8* %41, %43, !dbg !1452
  br i1 %44, label %48, label %45, !dbg !1452, !prof !965

; <label>:45:                                     ; preds = %36
  %46 = and i32 %37, 255, !dbg !1453
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #11, !dbg !1453
  br label %267, !dbg !1453

; <label>:48:                                     ; preds = %36
  %49 = trunc i32 %37 to i8, !dbg !1454
  %50 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1454
  store i8* %50, i8** %40, align 8, !dbg !1454, !tbaa !959
  store i8 %49, i8* %41, align 1, !dbg !1454, !tbaa !889
  br label %267, !dbg !1454

; <label>:51:                                     ; preds = %2
  %52 = and i8 %4, -8, !dbg !1455
  %53 = icmp eq i8 %52, 48, !dbg !1455
  br i1 %53, label %54, label %84, !dbg !1455

; <label>:54:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1411, metadata !719), !dbg !1427
  %55 = icmp eq i8 %4, 48, !dbg !1456
  %56 = and i1 %55, %1, !dbg !1460
  %57 = zext i1 %56 to i64, !dbg !1461
  %58 = getelementptr inbounds i8, i8* %3, i64 %57, !dbg !1461
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1411, metadata !719), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1410, metadata !719), !dbg !1423
  %59 = load i8, i8* %58, align 1, !dbg !1463, !tbaa !889
  %60 = and i8 %59, -8, !dbg !1463
  %61 = icmp eq i8 %60, 48, !dbg !1463
  br i1 %61, label %62, label %69, !dbg !1466

; <label>:62:                                     ; preds = %54
  %63 = sext i8 %59 to i32, !dbg !1468
  %64 = add nsw i32 %63, -48, !dbg !1469
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1410, metadata !719), !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  %65 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1470
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1410, metadata !719), !dbg !1423
  %66 = load i8, i8* %65, align 1, !dbg !1463, !tbaa !889
  %67 = and i8 %66, -8, !dbg !1463
  %68 = icmp eq i8 %67, 48, !dbg !1463
  br i1 %68, label %288, label %69, !dbg !1466

; <label>:69:                                     ; preds = %297, %288, %62, %54
  %70 = phi i32 [ 0, %54 ], [ %64, %62 ], [ %292, %288 ], [ %301, %297 ]
  %71 = phi i8* [ %58, %54 ], [ %65, %62 ], [ %293, %288 ], [ %302, %297 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !949, metadata !719) #11, !dbg !1471
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1473, !tbaa !727
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5, !dbg !1473
  %74 = load i8*, i8** %73, align 8, !dbg !1473, !tbaa !959
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6, !dbg !1473
  %76 = load i8*, i8** %75, align 8, !dbg !1473, !tbaa !964
  %77 = icmp ult i8* %74, %76, !dbg !1473
  br i1 %77, label %81, label %78, !dbg !1473, !prof !965

; <label>:78:                                     ; preds = %69
  %79 = and i32 %70, 255, !dbg !1474
  %80 = tail call i32 @__overflow(%struct._IO_FILE* %72, i32 %79) #11, !dbg !1474
  br label %267, !dbg !1474

; <label>:81:                                     ; preds = %69
  %82 = trunc i32 %70 to i8, !dbg !1475
  %83 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1475
  store i8* %83, i8** %73, align 8, !dbg !1475, !tbaa !959
  store i8 %82, i8* %74, align 1, !dbg !1475, !tbaa !889
  br label %267, !dbg !1475

; <label>:84:                                     ; preds = %51
  %85 = icmp eq i8 %4, 0, !dbg !1476
  br i1 %85, label %239, label %86, !dbg !1477

; <label>:86:                                     ; preds = %84
  %87 = sext i8 %4 to i32, !dbg !1476
  %88 = tail call i8* @memchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 %87, i64 12), !dbg !1478
  %89 = icmp eq i8* %88, null, !dbg !1478
  br i1 %89, label %193, label %90, !dbg !1480

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1482
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !1483, metadata !719) #11, !dbg !1488
  switch i32 %87, label %181 [
    i32 97, label %92
    i32 98, label %103
    i32 99, label %114
    i32 101, label %115
    i32 102, label %126
    i32 110, label %137
    i32 114, label %148
    i32 116, label %159
    i32 118, label %170
  ], !dbg !1490

; <label>:92:                                     ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !949, metadata !719) #11, !dbg !1491
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1494, !tbaa !727
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 5, !dbg !1494
  %95 = load i8*, i8** %94, align 8, !dbg !1494, !tbaa !959
  %96 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 6, !dbg !1494
  %97 = load i8*, i8** %96, align 8, !dbg !1494, !tbaa !964
  %98 = icmp ult i8* %95, %97, !dbg !1494
  br i1 %98, label %101, label %99, !dbg !1494, !prof !965

; <label>:99:                                     ; preds = %92
  %100 = tail call i32 @__overflow(%struct._IO_FILE* %93, i32 7) #11, !dbg !1495
  br label %267, !dbg !1495

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1496
  store i8* %102, i8** %94, align 8, !dbg !1496, !tbaa !959
  store i8 7, i8* %95, align 1, !dbg !1496, !tbaa !889
  br label %267, !dbg !1496

; <label>:103:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !949, metadata !719) #11, !dbg !1497
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1499, !tbaa !727
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5, !dbg !1499
  %106 = load i8*, i8** %105, align 8, !dbg !1499, !tbaa !959
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6, !dbg !1499
  %108 = load i8*, i8** %107, align 8, !dbg !1499, !tbaa !964
  %109 = icmp ult i8* %106, %108, !dbg !1499
  br i1 %109, label %112, label %110, !dbg !1499, !prof !965

; <label>:110:                                    ; preds = %103
  %111 = tail call i32 @__overflow(%struct._IO_FILE* %104, i32 8) #11, !dbg !1500
  br label %267, !dbg !1500

; <label>:112:                                    ; preds = %103
  %113 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1501
  store i8* %113, i8** %105, align 8, !dbg !1501, !tbaa !959
  store i8 8, i8* %106, align 1, !dbg !1501, !tbaa !889
  br label %267, !dbg !1501

; <label>:114:                                    ; preds = %90
  tail call void @exit(i32 0) #14, !dbg !1502
  unreachable, !dbg !1502

; <label>:115:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 27, i64 0, metadata !949, metadata !719) #11, !dbg !1503
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1505, !tbaa !727
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5, !dbg !1505
  %118 = load i8*, i8** %117, align 8, !dbg !1505, !tbaa !959
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6, !dbg !1505
  %120 = load i8*, i8** %119, align 8, !dbg !1505, !tbaa !964
  %121 = icmp ult i8* %118, %120, !dbg !1505
  br i1 %121, label %124, label %122, !dbg !1505, !prof !965

; <label>:122:                                    ; preds = %115
  %123 = tail call i32 @__overflow(%struct._IO_FILE* %116, i32 27) #11, !dbg !1506
  br label %267, !dbg !1506

; <label>:124:                                    ; preds = %115
  %125 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1507
  store i8* %125, i8** %117, align 8, !dbg !1507, !tbaa !959
  store i8 27, i8* %118, align 1, !dbg !1507, !tbaa !889
  br label %267, !dbg !1507

; <label>:126:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 12, i64 0, metadata !949, metadata !719) #11, !dbg !1508
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1510, !tbaa !727
  %128 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %127, i64 0, i32 5, !dbg !1510
  %129 = load i8*, i8** %128, align 8, !dbg !1510, !tbaa !959
  %130 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %127, i64 0, i32 6, !dbg !1510
  %131 = load i8*, i8** %130, align 8, !dbg !1510, !tbaa !964
  %132 = icmp ult i8* %129, %131, !dbg !1510
  br i1 %132, label %135, label %133, !dbg !1510, !prof !965

; <label>:133:                                    ; preds = %126
  %134 = tail call i32 @__overflow(%struct._IO_FILE* %127, i32 12) #11, !dbg !1511
  br label %267, !dbg !1511

; <label>:135:                                    ; preds = %126
  %136 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1512
  store i8* %136, i8** %128, align 8, !dbg !1512, !tbaa !959
  store i8 12, i8* %129, align 1, !dbg !1512, !tbaa !889
  br label %267, !dbg !1512

; <label>:137:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !949, metadata !719) #11, !dbg !1513
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1515, !tbaa !727
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1515
  %140 = load i8*, i8** %139, align 8, !dbg !1515, !tbaa !959
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1515
  %142 = load i8*, i8** %141, align 8, !dbg !1515, !tbaa !964
  %143 = icmp ult i8* %140, %142, !dbg !1515
  br i1 %143, label %146, label %144, !dbg !1515, !prof !965

; <label>:144:                                    ; preds = %137
  %145 = tail call i32 @__overflow(%struct._IO_FILE* %138, i32 10) #11, !dbg !1516
  br label %267, !dbg !1516

; <label>:146:                                    ; preds = %137
  %147 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1517
  store i8* %147, i8** %139, align 8, !dbg !1517, !tbaa !959
  store i8 10, i8* %140, align 1, !dbg !1517, !tbaa !889
  br label %267, !dbg !1517

; <label>:148:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 13, i64 0, metadata !949, metadata !719) #11, !dbg !1518
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1520, !tbaa !727
  %150 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %149, i64 0, i32 5, !dbg !1520
  %151 = load i8*, i8** %150, align 8, !dbg !1520, !tbaa !959
  %152 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %149, i64 0, i32 6, !dbg !1520
  %153 = load i8*, i8** %152, align 8, !dbg !1520, !tbaa !964
  %154 = icmp ult i8* %151, %153, !dbg !1520
  br i1 %154, label %157, label %155, !dbg !1520, !prof !965

; <label>:155:                                    ; preds = %148
  %156 = tail call i32 @__overflow(%struct._IO_FILE* %149, i32 13) #11, !dbg !1521
  br label %267, !dbg !1521

; <label>:157:                                    ; preds = %148
  %158 = getelementptr inbounds i8, i8* %151, i64 1, !dbg !1522
  store i8* %158, i8** %150, align 8, !dbg !1522, !tbaa !959
  store i8 13, i8* %151, align 1, !dbg !1522, !tbaa !889
  br label %267, !dbg !1522

; <label>:159:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !949, metadata !719) #11, !dbg !1523
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1525, !tbaa !727
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 5, !dbg !1525
  %162 = load i8*, i8** %161, align 8, !dbg !1525, !tbaa !959
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 6, !dbg !1525
  %164 = load i8*, i8** %163, align 8, !dbg !1525, !tbaa !964
  %165 = icmp ult i8* %162, %164, !dbg !1525
  br i1 %165, label %168, label %166, !dbg !1525, !prof !965

; <label>:166:                                    ; preds = %159
  %167 = tail call i32 @__overflow(%struct._IO_FILE* %160, i32 9) #11, !dbg !1526
  br label %267, !dbg !1526

; <label>:168:                                    ; preds = %159
  %169 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !1527
  store i8* %169, i8** %161, align 8, !dbg !1527, !tbaa !959
  store i8 9, i8* %162, align 1, !dbg !1527, !tbaa !889
  br label %267, !dbg !1527

; <label>:170:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 11, i64 0, metadata !949, metadata !719) #11, !dbg !1528
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1530, !tbaa !727
  %172 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 5, !dbg !1530
  %173 = load i8*, i8** %172, align 8, !dbg !1530, !tbaa !959
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 6, !dbg !1530
  %175 = load i8*, i8** %174, align 8, !dbg !1530, !tbaa !964
  %176 = icmp ult i8* %173, %175, !dbg !1530
  br i1 %176, label %179, label %177, !dbg !1530, !prof !965

; <label>:177:                                    ; preds = %170
  %178 = tail call i32 @__overflow(%struct._IO_FILE* %171, i32 11) #11, !dbg !1531
  br label %267, !dbg !1531

; <label>:179:                                    ; preds = %170
  %180 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !1532
  store i8* %180, i8** %172, align 8, !dbg !1532, !tbaa !959
  store i8 11, i8* %173, align 1, !dbg !1532, !tbaa !889
  br label %267, !dbg !1532

; <label>:181:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !949, metadata !719) #11, !dbg !1533
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1535, !tbaa !727
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5, !dbg !1535
  %184 = load i8*, i8** %183, align 8, !dbg !1535, !tbaa !959
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6, !dbg !1535
  %186 = load i8*, i8** %185, align 8, !dbg !1535, !tbaa !964
  %187 = icmp ult i8* %184, %186, !dbg !1535
  br i1 %187, label %191, label %188, !dbg !1535, !prof !965

; <label>:188:                                    ; preds = %181
  %189 = and i32 %87, 255, !dbg !1536
  %190 = tail call i32 @__overflow(%struct._IO_FILE* %182, i32 %189) #11, !dbg !1536
  br label %267, !dbg !1536

; <label>:191:                                    ; preds = %181
  %192 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !1537
  store i8* %192, i8** %183, align 8, !dbg !1537, !tbaa !959
  store i8 %4, i8* %184, align 1, !dbg !1537, !tbaa !889
  br label %267, !dbg !1537

; <label>:193:                                    ; preds = %86
  switch i8 %4, label %239 [
    i8 117, label %194
    i8 85, label %194
  ], !dbg !1538

; <label>:194:                                    ; preds = %193, %193
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !1412, metadata !719), !dbg !1539
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1418, metadata !719), !dbg !1540
  %195 = sext i8 %4 to i32, !dbg !1541
  %196 = icmp eq i8 %4, 117, !dbg !1543
  %197 = select i1 %196, i32 4, i32 8, !dbg !1541
  tail call void @llvm.dbg.value(metadata i32 %197, i64 0, metadata !1411, metadata !719), !dbg !1427
  %198 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1544
  tail call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1418, metadata !719), !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 %197, i64 0, metadata !1411, metadata !719), !dbg !1427
  %199 = tail call i16** @__ctype_b_loc() #1, !dbg !1545
  %200 = load i16*, i16** %199, align 8, !tbaa !727
  br label %201, !dbg !1549

; <label>:201:                                    ; preds = %194, %222
  %202 = phi i32 [ 0, %194 ], [ %225, %222 ]
  %203 = phi i8* [ %198, %194 ], [ %227, %222 ]
  %204 = phi i32 [ %197, %194 ], [ %226, %222 ]
  %205 = load i8, i8* %203, align 1, !dbg !1545, !tbaa !889
  %206 = zext i8 %205 to i64, !dbg !1545
  %207 = getelementptr inbounds i16, i16* %200, i64 %206, !dbg !1545
  %208 = load i16, i16* %207, align 2, !dbg !1545, !tbaa !1434
  %209 = and i16 %208, 4096, !dbg !1545
  %210 = icmp eq i16 %209, 0, !dbg !1545
  br i1 %210, label %211, label %213, !dbg !1551

; <label>:211:                                    ; preds = %201
  %212 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1552
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %212) #11, !dbg !1553
  unreachable, !dbg !1552

; <label>:213:                                    ; preds = %201
  %214 = shl i32 %202, 4, !dbg !1555
  %215 = sext i8 %205 to i32, !dbg !1556
  %216 = add i8 %205, -97, !dbg !1556
  %217 = icmp ult i8 %216, 6, !dbg !1556
  br i1 %217, label %222, label %218, !dbg !1556

; <label>:218:                                    ; preds = %213
  %219 = add i8 %205, -65, !dbg !1557
  %220 = icmp ult i8 %219, 6, !dbg !1557
  %221 = select i1 %220, i32 -55, i32 -48, !dbg !1559
  br label %222, !dbg !1559

; <label>:222:                                    ; preds = %213, %218
  %223 = phi i32 [ %221, %218 ], [ -87, %213 ]
  %224 = add i32 %215, %214
  %225 = add i32 %224, %223, !dbg !1561
  tail call void @llvm.dbg.value(metadata i32 %225, i64 0, metadata !1418, metadata !719), !dbg !1540
  %226 = add nsw i32 %204, -1, !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !1411, metadata !719), !dbg !1427
  %227 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !1564
  tail call void @llvm.dbg.value(metadata i8* %227, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 %225, i64 0, metadata !1418, metadata !719), !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %227, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !1411, metadata !719), !dbg !1427
  %228 = icmp sgt i32 %204, 1, !dbg !1565
  br i1 %228, label %201, label %229, !dbg !1549, !llvm.loop !1566

; <label>:229:                                    ; preds = %222
  %230 = icmp ult i32 %225, 160, !dbg !1569
  br i1 %230, label %231, label %232, !dbg !1571

; <label>:231:                                    ; preds = %229
  switch i32 %225, label %235 [
    i32 96, label %232
    i32 64, label %232
    i32 36, label %232
  ], !dbg !1571

; <label>:232:                                    ; preds = %231, %231, %231, %229
  %233 = and i32 %225, -2048, !dbg !1572
  %234 = icmp eq i32 %233, 55296, !dbg !1572
  br i1 %234, label %235, label %237, !dbg !1572

; <label>:235:                                    ; preds = %231, %232
  %236 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !1574
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %236, i32 %195, i32 %197, i32 %225) #11, !dbg !1575
  unreachable, !dbg !1574

; <label>:237:                                    ; preds = %232
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1576, !tbaa !727
  tail call void @print_unicode_char(%struct._IO_FILE* %238, i32 %225, i32 0) #11, !dbg !1577
  br label %267, !dbg !1578

; <label>:239:                                    ; preds = %84, %193
  tail call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !949, metadata !719) #11, !dbg !1579
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1582, !tbaa !727
  %241 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %240, i64 0, i32 5, !dbg !1582
  %242 = load i8*, i8** %241, align 8, !dbg !1582, !tbaa !959
  %243 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %240, i64 0, i32 6, !dbg !1582
  %244 = load i8*, i8** %243, align 8, !dbg !1582, !tbaa !964
  %245 = icmp ult i8* %242, %244, !dbg !1582
  br i1 %245, label %248, label %246, !dbg !1582, !prof !965

; <label>:246:                                    ; preds = %239
  %247 = tail call i32 @__overflow(%struct._IO_FILE* %240, i32 92) #11, !dbg !1583
  br label %250, !dbg !1583

; <label>:248:                                    ; preds = %239
  %249 = getelementptr inbounds i8, i8* %242, i64 1, !dbg !1584
  store i8* %249, i8** %241, align 8, !dbg !1584, !tbaa !959
  store i8 92, i8* %242, align 1, !dbg !1584, !tbaa !889
  br label %250, !dbg !1584

; <label>:250:                                    ; preds = %246, %248
  %251 = load i8, i8* %3, align 1, !dbg !1585, !tbaa !889
  %252 = icmp eq i8 %251, 0, !dbg !1585
  br i1 %252, label %267, label %253, !dbg !1587

; <label>:253:                                    ; preds = %250
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1588, !tbaa !727
  %255 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %254, i64 0, i32 5, !dbg !1588
  %256 = load i8*, i8** %255, align 8, !dbg !1588, !tbaa !959
  %257 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %254, i64 0, i32 6, !dbg !1588
  %258 = load i8*, i8** %257, align 8, !dbg !1588, !tbaa !964
  %259 = icmp ult i8* %256, %258, !dbg !1588
  br i1 %259, label %263, label %260, !dbg !1588, !prof !965

; <label>:260:                                    ; preds = %253
  %261 = zext i8 %251 to i32, !dbg !1591
  %262 = tail call i32 @__overflow(%struct._IO_FILE* %254, i32 %261) #11, !dbg !1592
  br label %265, !dbg !1592

; <label>:263:                                    ; preds = %253
  %264 = getelementptr inbounds i8, i8* %256, i64 1, !dbg !1593
  store i8* %264, i8** %255, align 8, !dbg !1593, !tbaa !959
  store i8 %251, i8* %256, align 1, !dbg !1593, !tbaa !889
  br label %265, !dbg !1593

; <label>:265:                                    ; preds = %260, %263
  %266 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1594
  tail call void @llvm.dbg.value(metadata i8* %266, i64 0, metadata !1409, metadata !719), !dbg !1422
  br label %267, !dbg !1595

; <label>:267:                                    ; preds = %191, %188, %179, %177, %168, %166, %157, %155, %146, %144, %135, %133, %124, %122, %112, %110, %101, %99, %81, %78, %48, %45, %250, %237, %265
  %268 = phi i8* [ %227, %237 ], [ %266, %265 ], [ %3, %250 ], [ %38, %45 ], [ %38, %48 ], [ %71, %78 ], [ %71, %81 ], [ %91, %99 ], [ %91, %101 ], [ %91, %110 ], [ %91, %112 ], [ %91, %122 ], [ %91, %124 ], [ %91, %133 ], [ %91, %135 ], [ %91, %144 ], [ %91, %146 ], [ %91, %155 ], [ %91, %157 ], [ %91, %166 ], [ %91, %168 ], [ %91, %177 ], [ %91, %179 ], [ %91, %188 ], [ %91, %191 ]
  tail call void @llvm.dbg.value(metadata i8* %268, i64 0, metadata !1409, metadata !719), !dbg !1422
  %269 = ptrtoint i8* %268 to i64, !dbg !1596
  %270 = ptrtoint i8* %0 to i64, !dbg !1596
  %271 = sub i64 4294967295, %270, !dbg !1596
  %272 = add i64 %271, %269, !dbg !1597
  %273 = trunc i64 %272 to i32, !dbg !1598
  ret i32 %273, !dbg !1599

; <label>:274:                                    ; preds = %24
  %275 = shl nsw i32 %26, 4, !dbg !1600
  %276 = sext i8 %28 to i32, !dbg !1438
  %277 = add i8 %28, -97, !dbg !1438
  %278 = icmp ult i8 %277, 6, !dbg !1438
  br i1 %278, label %283, label %279, !dbg !1438

; <label>:279:                                    ; preds = %274
  %280 = add i8 %28, -65, !dbg !1439
  %281 = icmp ult i8 %280, 6, !dbg !1439
  %282 = select i1 %281, i32 -55, i32 -48, !dbg !1441
  br label %283, !dbg !1441

; <label>:283:                                    ; preds = %279, %274
  %284 = phi i32 [ %282, %279 ], [ -87, %274 ]
  %285 = add nsw i32 %276, %275
  %286 = add nsw i32 %285, %284, !dbg !1443
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1410, metadata !719), !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  %287 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1445
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1410, metadata !719), !dbg !1423
  br label %36, !dbg !1450

; <label>:288:                                    ; preds = %62
  %289 = shl nsw i32 %64, 3, !dbg !1601
  %290 = sext i8 %66 to i32, !dbg !1468
  %291 = add nsw i32 %289, -48, !dbg !1468
  %292 = add nsw i32 %291, %290, !dbg !1469
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1410, metadata !719), !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  %293 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !1470
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1410, metadata !719), !dbg !1423
  %294 = load i8, i8* %293, align 1, !dbg !1463, !tbaa !889
  %295 = and i8 %294, -8, !dbg !1463
  %296 = icmp eq i8 %295, 48, !dbg !1463
  br i1 %296, label %297, label %69, !dbg !1466

; <label>:297:                                    ; preds = %288
  %298 = shl nsw i32 %292, 3, !dbg !1601
  %299 = sext i8 %294 to i32, !dbg !1468
  %300 = add nsw i32 %298, -48, !dbg !1468
  %301 = add i32 %300, %299, !dbg !1469
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1410, metadata !719), !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  %302 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !1470
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1409, metadata !719), !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1411, metadata !719), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1410, metadata !719), !dbg !1423
  br label %69
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vstrtoimax(i8*) unnamed_addr #6 !dbg !1602 {
  %2 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1606, metadata !719), !dbg !1612
  %3 = bitcast i8** %2 to i8*, !dbg !1612
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #11, !dbg !1612
  %4 = load i8, i8* %0, align 1, !dbg !1613, !tbaa !889
  switch i8 %4, label %19 [
    i8 34, label %5
    i8 39, label %5
  ], !dbg !1613

; <label>:5:                                      ; preds = %1, %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1614
  %7 = load i8, i8* %6, align 1, !dbg !1614, !tbaa !889
  %8 = icmp eq i8 %7, 0, !dbg !1614
  br i1 %8, label %19, label %9, !dbg !1616

; <label>:9:                                      ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1606, metadata !719), !dbg !1612
  tail call void @llvm.dbg.value(metadata i8 %7, i64 0, metadata !1609, metadata !719), !dbg !1618
  %10 = zext i8 %7 to i64, !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1608, metadata !719), !dbg !1612
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1621
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1606, metadata !719), !dbg !1612
  %12 = load i8, i8* %11, align 1, !dbg !1621, !tbaa !889
  %13 = icmp ne i8 %12, 0, !dbg !1621
  %14 = load i8, i8* @posixly_correct, align 1, !dbg !1624
  %15 = icmp eq i8 %14, 0, !dbg !1624
  %16 = and i1 %13, %15, !dbg !1621
  br i1 %16, label %17, label %23, !dbg !1621

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1626
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* %11) #11, !dbg !1628
  br label %23, !dbg !1626

; <label>:19:                                     ; preds = %1, %5
  %20 = tail call i32* @__errno_location() #1, !dbg !1630
  store i32 0, i32* %20, align 4, !dbg !1630, !tbaa !1274
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1607, metadata !1275), !dbg !1612
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1633, metadata !719) #11, !dbg !1640
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1638, metadata !719) #11, !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1639, metadata !719) #11, !dbg !1640
  %21 = call i64 @__strtol_internal(i8* nonnull %0, i8** nonnull %2, i32 0, i32 0) #11, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1608, metadata !719), !dbg !1612
  %22 = load i8*, i8** %2, align 8, !dbg !1630, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1607, metadata !719), !dbg !1612
  call fastcc void @verify_numeric(i8* nonnull %0, i8* %22), !dbg !1644
  br label %23

; <label>:23:                                     ; preds = %17, %9, %19
  %24 = phi i64 [ %21, %19 ], [ %10, %9 ], [ %10, %17 ]
  call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1608, metadata !719), !dbg !1612
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11, !dbg !1612
  ret i64 %24, !dbg !1646
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @verify_numeric(i8*, i8* readonly) unnamed_addr #6 !dbg !1648 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1652, metadata !719), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1653, metadata !719), !dbg !1655
  %3 = tail call i32* @__errno_location() #1, !dbg !1656
  %4 = load i32, i32* %3, align 4, !dbg !1656, !tbaa !1274
  %5 = icmp eq i32 %4, 0, !dbg !1656
  br i1 %5, label %8, label %6, !dbg !1658

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @quote(i8* %0) #11, !dbg !1659
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %7) #11, !dbg !1662
  br label %19, !dbg !1664

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %1, align 1, !dbg !1665, !tbaa !889
  %10 = icmp eq i8 %9, 0, !dbg !1665
  br i1 %10, label %20, label %11, !dbg !1667

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i8* %0, %1, !dbg !1668
  br i1 %12, label %13, label %16, !dbg !1671

; <label>:13:                                     ; preds = %11
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1672
  %15 = tail call i8* @quote(i8* %0) #11, !dbg !1673
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %15) #11, !dbg !1675
  br label %19, !dbg !1677

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1678
  %18 = tail call i8* @quote(i8* %0) #11, !dbg !1679
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %18) #11, !dbg !1680
  br label %19

; <label>:19:                                     ; preds = %13, %16, %6
  store i1 true, i1* @exit_status, align 4
  br label %20, !dbg !1681

; <label>:20:                                     ; preds = %8, %19
  ret void, !dbg !1681
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #9

; Function Attrs: nounwind sspstrong uwtable
define x86_fp80 @c_strtold(i8*, i8**) local_unnamed_addr #6 !dbg !1682 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1686, metadata !719), !dbg !1690
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1687, metadata !719), !dbg !1691
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1692, !tbaa !727
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1692
  br i1 %4, label %5, label %7, !dbg !1698

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %struct.__locale_struct* null) #11, !dbg !1699
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1700, !tbaa !727
  br label %7, !dbg !1701

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1702, !tbaa !727
  tail call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, i64 0, metadata !1689, metadata !719), !dbg !1703
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1704
  br i1 %9, label %10, label %13, !dbg !1706

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1707
  br i1 %11, label %15, label %12, !dbg !1710

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1711, !tbaa !727
  br label %15, !dbg !1712

; <label>:13:                                     ; preds = %7
  %14 = tail call x86_fp80 @strtold_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #11, !dbg !1713
  tail call void @llvm.dbg.value(metadata x86_fp80 %14, i64 0, metadata !1688, metadata !719), !dbg !1714
  br label %15, !dbg !1715

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi x86_fp80 [ %14, %13 ], [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ]
  ret x86_fp80 %16, !dbg !1716
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare x86_fp80 @strtold_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1717 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1719, metadata !719), !dbg !1720
  store i8* %0, i8** @file_name, align 8, !dbg !1721, !tbaa !727
  ret void, !dbg !1722
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1723 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1727, metadata !1188), !dbg !1728
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1729, !tbaa !860
  ret void, !dbg !1730
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1731 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1738, !tbaa !727
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1739
  %3 = icmp eq i32 %2, 0, !dbg !1740
  br i1 %3, label %21, label %4, !dbg !1741

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1742, !tbaa !860, !range !1744
  %6 = icmp eq i8 %5, 0, !dbg !1742
  %7 = tail call i32* @__errno_location() #1, !dbg !1745
  br i1 %6, label %11, label %8, !dbg !1747

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1748, !tbaa !1274
  %10 = icmp eq i32 %9, 32, !dbg !1750
  br i1 %10, label %21, label %11, !dbg !1751

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !1753
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1735, metadata !719), !dbg !1754
  %13 = load i8*, i8** @file_name, align 8, !dbg !1755, !tbaa !727
  %14 = icmp eq i8* %13, null, !dbg !1755
  %15 = load i32, i32* %7, align 4, !tbaa !1274
  br i1 %14, label %18, label %16, !dbg !1756

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1757
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.26, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1759
  br label %19, !dbg !1761

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.27, i64 0, i64 0), i8* %12) #11, !dbg !1762
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1763, !tbaa !1274
  tail call void @_exit(i32 %20) #14, !dbg !1764
  unreachable, !dbg !1764

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1765, !tbaa !727
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1767
  %24 = icmp eq i32 %23, 0, !dbg !1768
  br i1 %24, label %27, label %25, !dbg !1769

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1770, !tbaa !1274
  tail call void @_exit(i32 %26) #14, !dbg !1771
  unreachable, !dbg !1771

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1772
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1773 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1775, metadata !719), !dbg !1778
  %2 = icmp eq i8* %0, null, !dbg !1779
  br i1 %2, label %3, label %6, !dbg !1781

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1782, !tbaa !727
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1784
  tail call void @abort() #14, !dbg !1785
  unreachable, !dbg !1785

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #9, !dbg !1786
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1776, metadata !719), !dbg !1787
  %8 = icmp ne i8* %7, null, !dbg !1788
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1789
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1791
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1777, metadata !719), !dbg !1792
  %11 = ptrtoint i8* %10 to i64, !dbg !1793
  %12 = ptrtoint i8* %0 to i64, !dbg !1793
  %13 = sub i64 %11, %12, !dbg !1793
  %14 = icmp sgt i64 %13, 6, !dbg !1795
  br i1 %14, label %15, label %24, !dbg !1796

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1797
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #9, !dbg !1797
  %18 = icmp eq i32 %17, 0, !dbg !1799
  br i1 %18, label %19, label %24, !dbg !1800

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1775, metadata !719), !dbg !1778
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #9, !dbg !1801
  %21 = icmp eq i32 %20, 0, !dbg !1804
  br i1 %21, label %22, label %24, !dbg !1805

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1806
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1775, metadata !719), !dbg !1778
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1808, !tbaa !727
  br label %24, !dbg !1809

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1775, metadata !719), !dbg !1778
  store i8* %25, i8** @program_name, align 8, !dbg !1810, !tbaa !727
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1811, !tbaa !727
  ret void, !dbg !1812
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1813 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1818, metadata !719), !dbg !1821
  %2 = tail call i32* @__errno_location() #1, !dbg !1822
  %3 = load i32, i32* %2, align 4, !dbg !1822, !tbaa !1274
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1819, metadata !719), !dbg !1823
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1824
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1825
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1825
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1827
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1827
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1820, metadata !719), !dbg !1828
  store i32 %3, i32* %2, align 4, !dbg !1829, !tbaa !1274
  ret %struct.quoting_options* %8, !dbg !1830
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1831 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1837, metadata !719), !dbg !1838
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1839
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1839
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1840
  %5 = load i32, i32* %4, align 8, !dbg !1840, !tbaa !1842
  ret i32 %5, !dbg !1844
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1845 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1849, metadata !719), !dbg !1851
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1850, metadata !719), !dbg !1852
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1853
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1853
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1854
  store i32 %1, i32* %5, align 8, !dbg !1856, !tbaa !1842
  ret void, !dbg !1857
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1858 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1862, metadata !719), !dbg !1870
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1863, metadata !719), !dbg !1871
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1864, metadata !719), !dbg !1872
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1865, metadata !719), !dbg !1873
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1874
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1874
  %6 = lshr i8 %1, 5, !dbg !1875
  %7 = zext i8 %6 to i64, !dbg !1875
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1877
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1866, metadata !719), !dbg !1878
  %9 = and i8 %1, 31, !dbg !1879
  %10 = zext i8 %9 to i32, !dbg !1880
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1868, metadata !719), !dbg !1881
  %11 = load i32, i32* %8, align 4, !dbg !1882, !tbaa !1274
  %12 = lshr i32 %11, %10, !dbg !1883
  %13 = and i32 %12, 1, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1869, metadata !719), !dbg !1885
  %14 = and i32 %2, 1, !dbg !1886
  %15 = xor i32 %13, %14, !dbg !1887
  %16 = shl i32 %15, %10, !dbg !1888
  %17 = xor i32 %16, %11, !dbg !1889
  store i32 %17, i32* %8, align 4, !dbg !1889, !tbaa !1274
  ret i32 %13, !dbg !1890
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1891 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1895, metadata !719), !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1896, metadata !719), !dbg !1899
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1900
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1895, metadata !719), !dbg !1898
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1895, metadata !719), !dbg !1898
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1903
  %6 = load i32, i32* %5, align 4, !dbg !1903, !tbaa !1904
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1897, metadata !719), !dbg !1905
  store i32 %1, i32* %5, align 4, !dbg !1906, !tbaa !1904
  ret i32 %6, !dbg !1907
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1908 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1912, metadata !719), !dbg !1915
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1913, metadata !719), !dbg !1916
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1914, metadata !719), !dbg !1917
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1918
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1912, metadata !719), !dbg !1915
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1912, metadata !719), !dbg !1915
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1921
  store i32 10, i32* %6, align 8, !dbg !1922, !tbaa !1842
  %7 = icmp ne i8* %1, null, !dbg !1923
  %8 = icmp ne i8* %2, null, !dbg !1925
  %9 = and i1 %7, %8, !dbg !1927
  br i1 %9, label %11, label %10, !dbg !1927

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1928
  unreachable, !dbg !1928

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1929
  store i8* %1, i8** %12, align 8, !dbg !1930, !tbaa !1931
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1932
  store i8* %2, i8** %13, align 8, !dbg !1933, !tbaa !1934
  ret void, !dbg !1935
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1936 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1940, metadata !719), !dbg !1948
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1941, metadata !719), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1942, metadata !719), !dbg !1950
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1943, metadata !719), !dbg !1951
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1944, metadata !719), !dbg !1952
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1953
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1953
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1945, metadata !719), !dbg !1954
  %8 = tail call i32* @__errno_location() #1, !dbg !1955
  %9 = load i32, i32* %8, align 4, !dbg !1955, !tbaa !1274
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1946, metadata !719), !dbg !1956
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1957
  %11 = load i32, i32* %10, align 8, !dbg !1957, !tbaa !1842
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1958
  %13 = load i32, i32* %12, align 4, !dbg !1958, !tbaa !1904
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1959
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1960
  %16 = load i8*, i8** %15, align 8, !dbg !1960, !tbaa !1931
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1961
  %18 = load i8*, i8** %17, align 8, !dbg !1961, !tbaa !1934
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1947, metadata !719), !dbg !1963
  store i32 %9, i32* %8, align 4, !dbg !1964, !tbaa !1274
  ret i64 %19, !dbg !1965
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1966 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1972, metadata !719), !dbg !2035
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1973, metadata !719), !dbg !2036
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1974, metadata !719), !dbg !2037
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1975, metadata !719), !dbg !2038
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1976, metadata !719), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1977, metadata !719), !dbg !2040
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1978, metadata !719), !dbg !2041
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1979, metadata !719), !dbg !2042
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1980, metadata !719), !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1982, metadata !719), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1983, metadata !719), !dbg !2045
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1984, metadata !719), !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1985, metadata !719), !dbg !2047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1986, metadata !719), !dbg !2048
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2049
  %14 = icmp eq i64 %13, 1, !dbg !2050
  %15 = lshr i32 %5, 1, !dbg !2051
  %16 = trunc i32 %15 to i8, !dbg !2051
  %17 = and i8 %16, 1, !dbg !2051
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1988, metadata !719), !dbg !2051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1989, metadata !719), !dbg !2052
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1990, metadata !719), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1991, metadata !719), !dbg !2054
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2055

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1973, metadata !719), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1991, metadata !719), !dbg !2054
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1990, metadata !719), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1988, metadata !719), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1975, metadata !719), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1986, metadata !719), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1985, metadata !719), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1984, metadata !719), !dbg !2046
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1983, metadata !719), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1980, metadata !719), !dbg !2043
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1979, metadata !719), !dbg !2042
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1976, metadata !719), !dbg !2039
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
  ], !dbg !2056

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1976, metadata !719), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1988, metadata !719), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1988, metadata !719), !dbg !2051
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1976, metadata !719), !dbg !2039
  br label %95, !dbg !2057

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1988, metadata !719), !dbg !2051
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1976, metadata !719), !dbg !2039
  %43 = and i8 %36, 1, !dbg !2059
  %44 = icmp eq i8 %43, 0, !dbg !2059
  br i1 %44, label %45, label %95, !dbg !2057

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2061
  br i1 %46, label %95, label %47, !dbg !2065

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2067, !tbaa !889
  br label %95, !dbg !2067

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %28), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1979, metadata !719), !dbg !2042
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %28), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1980, metadata !719), !dbg !2043
  br label %51, !dbg !2074

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1980, metadata !719), !dbg !2043
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1979, metadata !719), !dbg !2042
  %54 = and i8 %36, 1, !dbg !2075
  %55 = icmp eq i8 %54, 0, !dbg !2075
  br i1 %55, label %56, label %73, !dbg !2077

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1984, metadata !719), !dbg !2046
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1982, metadata !719), !dbg !2044
  %57 = load i8, i8* %52, align 1, !dbg !2078, !tbaa !889
  %58 = icmp eq i8 %57, 0, !dbg !2082
  br i1 %58, label %73, label %59, !dbg !2082

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2084

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2084
  br i1 %64, label %65, label %67, !dbg !2088

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2090
  store i8 %61, i8* %66, align 1, !dbg !2090, !tbaa !889
  br label %67, !dbg !2090

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1982, metadata !719), !dbg !2044
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2094
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1984, metadata !719), !dbg !2046
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1984, metadata !719), !dbg !2046
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1982, metadata !719), !dbg !2044
  %70 = load i8, i8* %69, align 1, !dbg !2078, !tbaa !889
  %71 = icmp eq i8 %70, 0, !dbg !2082
  br i1 %71, label %72, label %60, !dbg !2082, !llvm.loop !2096

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2044

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1986, metadata !719), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1984, metadata !719), !dbg !2046
  %75 = call i64 @strlen(i8* %53) #9, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1985, metadata !719), !dbg !2047
  br label %95, !dbg !2100

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1986, metadata !719), !dbg !2048
  br label %77, !dbg !2101

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1986, metadata !719), !dbg !2048
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1988, metadata !719), !dbg !2051
  br label %79, !dbg !2102

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1988, metadata !719), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1986, metadata !719), !dbg !2048
  %82 = and i8 %81, 1, !dbg !2103
  %83 = icmp eq i8 %82, 0, !dbg !2103
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1986, metadata !719), !dbg !2048
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2105
  br label %85, !dbg !2105

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1988, metadata !719), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1986, metadata !719), !dbg !2048
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1976, metadata !719), !dbg !2039
  %88 = and i8 %87, 1, !dbg !2106
  %89 = icmp eq i8 %88, 0, !dbg !2106
  br i1 %89, label %90, label %95, !dbg !2108

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2109
  br i1 %91, label %95, label %92, !dbg !2113

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2115, !tbaa !889
  br label %95, !dbg !2115

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1988, metadata !719), !dbg !2051
  br label %95, !dbg !2117

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2118
  unreachable, !dbg !2118

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1988, metadata !719), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1986, metadata !719), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1985, metadata !719), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1984, metadata !719), !dbg !2046
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1980, metadata !719), !dbg !2043
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1979, metadata !719), !dbg !2042
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1976, metadata !719), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1981, metadata !719), !dbg !2119
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
  br label %123, !dbg !2120

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1973, metadata !719), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1991, metadata !719), !dbg !2054
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1990, metadata !719), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1975, metadata !719), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1983, metadata !719), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1981, metadata !719), !dbg !2119
  %132 = icmp eq i64 %127, -1, !dbg !2121
  br i1 %132, label %135, label %133, !dbg !2123

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2124
  br i1 %134, label %597, label %139, !dbg !2126

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2128
  %137 = load i8, i8* %136, align 1, !dbg !2128, !tbaa !889
  %138 = icmp eq i8 %137, 0, !dbg !2130
  br i1 %138, label %597, label %139, !dbg !2126

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1997, metadata !719), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1998, metadata !719), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1999, metadata !719), !dbg !2133
  br i1 %109, label %140, label %155, !dbg !2134

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2136
  %142 = and i1 %110, %132, !dbg !2138
  br i1 %142, label %143, label %145, !dbg !2138

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #9, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1975, metadata !719), !dbg !2038
  br label %145, !dbg !2140

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1975, metadata !719), !dbg !2038
  %147 = icmp ugt i64 %141, %146, !dbg !2142
  br i1 %147, label %155, label %148, !dbg !2144

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2145
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #9, !dbg !2146
  %151 = icmp ne i32 %150, 0, !dbg !2147
  %152 = or i1 %151, %112, !dbg !2147
  %153 = xor i1 %151, true, !dbg !2147
  %154 = zext i1 %153 to i8, !dbg !2147
  br i1 %152, label %155, label %644, !dbg !2147

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1997, metadata !719), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1975, metadata !719), !dbg !2038
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2149
  %159 = load i8, i8* %158, align 1, !dbg !2149, !tbaa !889
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1992, metadata !719), !dbg !2150
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
  ], !dbg !2151

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2152

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2153

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1998, metadata !719), !dbg !2132
  %163 = and i8 %128, 1, !dbg !2158
  %164 = icmp eq i8 %163, 0, !dbg !2158
  %165 = and i1 %114, %164, !dbg !2161
  br i1 %165, label %166, label %182, !dbg !2161

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2163
  br i1 %167, label %168, label %170, !dbg !2168

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2170
  store i8 39, i8* %169, align 1, !dbg !2170, !tbaa !889
  br label %170, !dbg !2170

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1982, metadata !719), !dbg !2044
  %172 = icmp ult i64 %171, %131, !dbg !2174
  br i1 %172, label %173, label %175, !dbg !2178

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2180
  store i8 36, i8* %174, align 1, !dbg !2180, !tbaa !889
  br label %175, !dbg !2180

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1982, metadata !719), !dbg !2044
  %177 = icmp ult i64 %176, %131, !dbg !2184
  br i1 %177, label %178, label %180, !dbg !2188

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2190
  store i8 39, i8* %179, align 1, !dbg !2190, !tbaa !889
  br label %180, !dbg !2190

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1989, metadata !719), !dbg !2052
  br label %182, !dbg !2194

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1982, metadata !719), !dbg !2044
  %185 = icmp ult i64 %183, %131, !dbg !2196
  br i1 %185, label %186, label %188, !dbg !2200

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2202
  store i8 92, i8* %187, align 1, !dbg !2202, !tbaa !889
  br label %188, !dbg !2202

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1982, metadata !719), !dbg !2044
  br i1 %106, label %190, label %476, !dbg !2206

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2208
  %192 = icmp ult i64 %191, %156, !dbg !2210
  br i1 %192, label %193, label %476, !dbg !2211

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2212
  %195 = load i8, i8* %194, align 1, !dbg !2212, !tbaa !889
  %196 = add i8 %195, -48, !dbg !2214
  %197 = icmp ult i8 %196, 10, !dbg !2214
  br i1 %197, label %198, label %476, !dbg !2214

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2215
  br i1 %199, label %200, label %202, !dbg !2220

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2222
  store i8 48, i8* %201, align 1, !dbg !2222, !tbaa !889
  br label %202, !dbg !2222

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1982, metadata !719), !dbg !2044
  %204 = icmp ult i64 %203, %131, !dbg !2226
  br i1 %204, label %205, label %207, !dbg !2230

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2232
  store i8 48, i8* %206, align 1, !dbg !2232, !tbaa !889
  br label %207, !dbg !2232

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1982, metadata !719), !dbg !2044
  br label %476, !dbg !2236

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2237

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2238

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2239

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2241

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2243
  %215 = icmp ult i64 %214, %156, !dbg !2245
  br i1 %215, label %216, label %476, !dbg !2246

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2247
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2249
  %219 = load i8, i8* %218, align 1, !dbg !2249, !tbaa !889
  %220 = icmp eq i8 %219, 63, !dbg !2250
  br i1 %220, label %221, label %476, !dbg !2251

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2253
  %223 = load i8, i8* %222, align 1, !dbg !2253, !tbaa !889
  %224 = sext i8 %223 to i32, !dbg !2253
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
  ], !dbg !2254

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2255

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1992, metadata !719), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1981, metadata !719), !dbg !2119
  %227 = icmp ult i64 %125, %131, !dbg !2257
  br i1 %227, label %228, label %230, !dbg !2261

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2263
  store i8 63, i8* %229, align 1, !dbg !2263, !tbaa !889
  br label %230, !dbg !2263

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1982, metadata !719), !dbg !2044
  %232 = icmp ult i64 %231, %131, !dbg !2267
  br i1 %232, label %233, label %235, !dbg !2271

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2273
  store i8 34, i8* %234, align 1, !dbg !2273, !tbaa !889
  br label %235, !dbg !2273

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1982, metadata !719), !dbg !2044
  %237 = icmp ult i64 %236, %131, !dbg !2277
  br i1 %237, label %238, label %240, !dbg !2281

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2283
  store i8 34, i8* %239, align 1, !dbg !2283, !tbaa !889
  br label %240, !dbg !2283

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1982, metadata !719), !dbg !2044
  %242 = icmp ult i64 %241, %131, !dbg !2287
  br i1 %242, label %243, label %245, !dbg !2291

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2293
  store i8 63, i8* %244, align 1, !dbg !2293, !tbaa !889
  br label %245, !dbg !2293

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1982, metadata !719), !dbg !2044
  br label %476, !dbg !2297

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1996, metadata !719), !dbg !2298
  br label %257, !dbg !2299

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1996, metadata !719), !dbg !2298
  br label %257, !dbg !2300

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1996, metadata !719), !dbg !2298
  br label %255, !dbg !2301

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1996, metadata !719), !dbg !2298
  br label %255, !dbg !2302

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1996, metadata !719), !dbg !2298
  br label %257, !dbg !2303

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1996, metadata !719), !dbg !2298
  br i1 %114, label %253, label %254, !dbg !2304

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2305

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2308

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1996, metadata !719), !dbg !2298
  br i1 %118, label %257, label %644, !dbg !2310

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1996, metadata !719), !dbg !2298
  br i1 %105, label %503, label %476, !dbg !2312

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2313
  br i1 %260, label %261, label %266, !dbg !2315

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2316, !tbaa !889
  %263 = icmp ne i8 %262, 0, !dbg !2318
  %264 = icmp ne i64 %124, 0, !dbg !2319
  %265 = or i1 %264, %263, !dbg !2321
  br i1 %265, label %476, label %272, !dbg !2321

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2322
  %268 = icmp ne i64 %124, 0, !dbg !2319
  %269 = or i1 %268, %267, !dbg !2324
  br i1 %269, label %476, label %272, !dbg !2324

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2319
  br i1 %271, label %272, label %476, !dbg !2326

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1999, metadata !719), !dbg !2133
  br label %273, !dbg !2327

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1999, metadata !719), !dbg !2133
  br i1 %118, label %476, label %644, !dbg !2328

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1990, metadata !719), !dbg !2053
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1999, metadata !719), !dbg !2133
  br i1 %114, label %276, label %476, !dbg !2330

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2331

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2334
  %279 = icmp ne i64 %126, 0, !dbg !2336
  %280 = or i1 %279, %278, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1983, metadata !719), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1973, metadata !719), !dbg !2036
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2338
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1973, metadata !719), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1983, metadata !719), !dbg !2045
  %283 = icmp ult i64 %125, %282, !dbg !2339
  br i1 %283, label %284, label %286, !dbg !2343

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2345
  store i8 39, i8* %285, align 1, !dbg !2345, !tbaa !889
  br label %286, !dbg !2345

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1982, metadata !719), !dbg !2044
  %288 = icmp ult i64 %287, %282, !dbg !2349
  br i1 %288, label %289, label %291, !dbg !2353

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2355
  store i8 92, i8* %290, align 1, !dbg !2355, !tbaa !889
  br label %291, !dbg !2355

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1982, metadata !719), !dbg !2044
  %293 = icmp ult i64 %292, %282, !dbg !2359
  br i1 %293, label %294, label %296, !dbg !2363

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2365
  store i8 39, i8* %295, align 1, !dbg !2365, !tbaa !889
  br label %296, !dbg !2365

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1989, metadata !719), !dbg !2052
  br label %476, !dbg !2369

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2370

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2000, metadata !719), !dbg !2371
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2372
  %301 = load i16*, i16** %300, align 8, !dbg !2372, !tbaa !727
  %302 = zext i8 %159 to i64, !dbg !2372
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2372
  %304 = load i16, i16* %303, align 2, !dbg !2372, !tbaa !1434
  %305 = lshr i16 %304, 14, !dbg !2374
  %306 = trunc i16 %305 to i8, !dbg !2374
  %307 = and i8 %306, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2003, metadata !719), !dbg !2375
  br label %368, !dbg !2376

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2377
  store i64 0, i64* %10, align 8, !dbg !2378
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2000, metadata !719), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2003, metadata !719), !dbg !2375
  %309 = icmp eq i64 %156, -1, !dbg !2379
  br i1 %309, label %310, label %312, !dbg !2381, !llvm.loop !2382

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #9, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1975, metadata !719), !dbg !2038
  br label %312, !dbg !2386, !llvm.loop !2382

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2375

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2003, metadata !719), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2000, metadata !719), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1975, metadata !719), !dbg !2038
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2387
  %317 = add i64 %315, %124, !dbg !2388
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2389
  %319 = sub i64 %313, %317, !dbg !2390
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2004, metadata !1275), !dbg !2391
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2021, metadata !1275), !dbg !2392
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2024, metadata !719), !dbg !2394
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2395

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2000, metadata !719), !dbg !2371
  %322 = icmp ugt i64 %313, %317, !dbg !2396
  br i1 %322, label %323, label %351, !dbg !2399

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2400

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2400
  %328 = load i8, i8* %327, align 1, !dbg !2400, !tbaa !889
  %329 = icmp eq i8 %328, 0, !dbg !2402
  br i1 %329, label %348, label %330, !dbg !2403

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2000, metadata !719), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2000, metadata !719), !dbg !2371
  %332 = add i64 %331, %124, !dbg !2406
  %333 = icmp ult i64 %332, %313, !dbg !2396
  br i1 %333, label %324, label %348, !dbg !2399, !llvm.loop !2407

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2409
  %336 = and i1 %116, %335, !dbg !2413
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2025, metadata !719), !dbg !2414
  br i1 %336, label %337, label %355, !dbg !2413

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2415

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2415
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2416
  %342 = load i8, i8* %341, align 1, !dbg !2416, !tbaa !889
  %343 = sext i8 %342 to i32, !dbg !2416
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2417

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2025, metadata !719), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2025, metadata !719), !dbg !2414
  %346 = icmp ult i64 %345, %320, !dbg !2409
  br i1 %346, label %338, label %354, !dbg !2420, !llvm.loop !2422

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2375

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2375

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2375

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2003, metadata !719), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2000, metadata !719), !dbg !2371
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2425
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2426

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2426, !tbaa !1274
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2021, metadata !719), !dbg !2392
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2428
  %358 = icmp eq i32 %357, 0, !dbg !2428
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2003, metadata !719), !dbg !2375
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2429
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2003, metadata !719), !dbg !2375
  %360 = add i64 %320, %315, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2000, metadata !719), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2003, metadata !719), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2000, metadata !719), !dbg !2371
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2425
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2004, metadata !1275), !dbg !2391
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #9, !dbg !2431
  %362 = icmp eq i32 %361, 0, !dbg !2432
  br i1 %362, label %314, label %363, !dbg !2433, !llvm.loop !2382

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2435

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2435
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2003, metadata !719), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2000, metadata !719), !dbg !2371
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2425
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2435
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2003, metadata !719), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2000, metadata !719), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1975, metadata !719), !dbg !2038
  %372 = and i8 %371, 1, !dbg !2436
  %373 = icmp ne i8 %372, 0, !dbg !2436
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1999, metadata !719), !dbg !2133
  %374 = icmp ult i64 %370, 2, !dbg !2437
  %375 = or i1 %373, %113, !dbg !2438
  %376 = and i1 %374, %375, !dbg !2440
  br i1 %376, label %476, label %377, !dbg !2440

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2032, metadata !719), !dbg !2442
  br label %379, !dbg !2443

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1998, metadata !719), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1997, metadata !719), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1992, metadata !719), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1981, metadata !719), !dbg !2119
  br i1 %375, label %432, label %386, !dbg !2444

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2449

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1998, metadata !719), !dbg !2132
  %388 = and i8 %382, 1, !dbg !2453
  %389 = icmp eq i8 %388, 0, !dbg !2453
  %390 = and i1 %114, %389, !dbg !2456
  br i1 %390, label %391, label %407, !dbg !2456

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2458
  br i1 %392, label %393, label %395, !dbg !2463

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2465
  store i8 39, i8* %394, align 1, !dbg !2465, !tbaa !889
  br label %395, !dbg !2465

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1982, metadata !719), !dbg !2044
  %397 = icmp ult i64 %396, %131, !dbg !2469
  br i1 %397, label %398, label %400, !dbg !2473

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2475
  store i8 36, i8* %399, align 1, !dbg !2475, !tbaa !889
  br label %400, !dbg !2475

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1982, metadata !719), !dbg !2044
  %402 = icmp ult i64 %401, %131, !dbg !2479
  br i1 %402, label %403, label %405, !dbg !2483

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2485
  store i8 39, i8* %404, align 1, !dbg !2485, !tbaa !889
  br label %405, !dbg !2485

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1989, metadata !719), !dbg !2052
  br label %407, !dbg !2489

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1982, metadata !719), !dbg !2044
  %410 = icmp ult i64 %408, %131, !dbg !2491
  br i1 %410, label %411, label %413, !dbg !2495

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2497
  store i8 92, i8* %412, align 1, !dbg !2497, !tbaa !889
  br label %413, !dbg !2497

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1982, metadata !719), !dbg !2044
  %415 = icmp ult i64 %414, %131, !dbg !2501
  br i1 %415, label %416, label %420, !dbg !2505

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2507
  %418 = or i8 %417, 48, !dbg !2507
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2507
  store i8 %418, i8* %419, align 1, !dbg !2507, !tbaa !889
  br label %420, !dbg !2507

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1982, metadata !719), !dbg !2044
  %422 = icmp ult i64 %421, %131, !dbg !2511
  br i1 %422, label %423, label %428, !dbg !2515

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2517
  %425 = and i8 %424, 7, !dbg !2517
  %426 = or i8 %425, 48, !dbg !2517
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2517
  store i8 %426, i8* %427, align 1, !dbg !2517, !tbaa !889
  br label %428, !dbg !2517

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1982, metadata !719), !dbg !2044
  %430 = and i8 %383, 7, !dbg !2521
  %431 = or i8 %430, 48, !dbg !2522
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1992, metadata !719), !dbg !2150
  br label %441, !dbg !2523

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2524
  %434 = icmp eq i8 %433, 0, !dbg !2524
  br i1 %434, label %441, label %435, !dbg !2526

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2527
  br i1 %436, label %437, label %439, !dbg !2532

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2534
  store i8 92, i8* %438, align 1, !dbg !2534, !tbaa !889
  br label %439, !dbg !2534

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1997, metadata !719), !dbg !2131
  br label %441, !dbg !2538

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1998, metadata !719), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1997, metadata !719), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1992, metadata !719), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1982, metadata !719), !dbg !2044
  %447 = add i64 %380, 1, !dbg !2539
  %448 = icmp ugt i64 %378, %447, !dbg !2541
  br i1 %448, label %449, label %541, !dbg !2542

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2543
  %451 = icmp ne i8 %450, 0, !dbg !2543
  %452 = and i8 %446, 1, !dbg !2547
  %453 = icmp eq i8 %452, 0, !dbg !2547
  %454 = and i1 %451, %453, !dbg !2543
  br i1 %454, label %455, label %466, !dbg !2543

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2549
  br i1 %456, label %457, label %459, !dbg !2554

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2556
  store i8 39, i8* %458, align 1, !dbg !2556, !tbaa !889
  br label %459, !dbg !2556

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1982, metadata !719), !dbg !2044
  %461 = icmp ult i64 %460, %131, !dbg !2560
  br i1 %461, label %462, label %464, !dbg !2564

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2566
  store i8 39, i8* %463, align 1, !dbg !2566, !tbaa !889
  br label %464, !dbg !2566

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1989, metadata !719), !dbg !2052
  br label %466, !dbg !2570

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1982, metadata !719), !dbg !2044
  %469 = icmp ult i64 %467, %131, !dbg !2572
  br i1 %469, label %470, label %472, !dbg !2576

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2578
  store i8 %444, i8* %471, align 1, !dbg !2578, !tbaa !889
  br label %472, !dbg !2578

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1981, metadata !719), !dbg !2119
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2582
  %475 = load i8, i8* %474, align 1, !dbg !2582, !tbaa !889
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1992, metadata !719), !dbg !2150
  br label %379, !dbg !2583, !llvm.loop !2585

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1973, metadata !719), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1999, metadata !719), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1998, metadata !719), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1997, metadata !719), !dbg !2131
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1992, metadata !719), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1990, metadata !719), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1975, metadata !719), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1983, metadata !719), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1981, metadata !719), !dbg !2119
  br i1 %107, label %488, label %487, !dbg !2588

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2590

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2591

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2592
  %491 = zext i8 %490 to i64, !dbg !2592
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2594
  %493 = load i32, i32* %492, align 4, !dbg !2594, !tbaa !1274
  %494 = and i8 %483, 31, !dbg !2595
  %495 = zext i8 %494 to i32, !dbg !2596
  %496 = shl i32 1, %495, !dbg !2597
  %497 = and i32 %493, %496, !dbg !2597
  %498 = icmp eq i32 %497, 0, !dbg !2597
  %499 = icmp eq i8 %157, 0, !dbg !2598
  %500 = and i1 %499, %498, !dbg !2599
  br i1 %500, label %542, label %503, !dbg !2599

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2598
  br i1 %502, label %542, label %503, !dbg !2600

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1973, metadata !719), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1999, metadata !719), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1992, metadata !719), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1990, metadata !719), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1975, metadata !719), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1983, metadata !719), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1981, metadata !719), !dbg !2119
  br i1 %112, label %513, label %644, !dbg !2602

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1998, metadata !719), !dbg !2132
  %514 = and i8 %508, 1, !dbg !2605
  %515 = icmp eq i8 %514, 0, !dbg !2605
  %516 = and i1 %114, %515, !dbg !2608
  br i1 %516, label %517, label %533, !dbg !2608

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2610
  br i1 %518, label %519, label %521, !dbg !2615

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2617
  store i8 39, i8* %520, align 1, !dbg !2617, !tbaa !889
  br label %521, !dbg !2617

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1982, metadata !719), !dbg !2044
  %523 = icmp ult i64 %522, %512, !dbg !2621
  br i1 %523, label %524, label %526, !dbg !2625

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2627
  store i8 36, i8* %525, align 1, !dbg !2627, !tbaa !889
  br label %526, !dbg !2627

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1982, metadata !719), !dbg !2044
  %528 = icmp ult i64 %527, %512, !dbg !2631
  br i1 %528, label %529, label %531, !dbg !2635

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2637
  store i8 39, i8* %530, align 1, !dbg !2637, !tbaa !889
  br label %531, !dbg !2637

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1989, metadata !719), !dbg !2052
  br label %533, !dbg !2641

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1982, metadata !719), !dbg !2044
  %536 = icmp ult i64 %534, %512, !dbg !2643
  br i1 %536, label %537, label %539, !dbg !2647

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2649
  store i8 92, i8* %538, align 1, !dbg !2649, !tbaa !889
  br label %539, !dbg !2649

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1973, metadata !719), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1999, metadata !719), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1998, metadata !719), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1992, metadata !719), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1990, metadata !719), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1975, metadata !719), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1983, metadata !719), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1981, metadata !719), !dbg !2119
  br label %569, !dbg !2653

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2036

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1973, metadata !719), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1999, metadata !719), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1998, metadata !719), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1992, metadata !719), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1990, metadata !719), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1975, metadata !719), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1983, metadata !719), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1981, metadata !719), !dbg !2119
  %553 = and i8 %547, 1, !dbg !2653
  %554 = icmp ne i8 %553, 0, !dbg !2653
  %555 = and i8 %550, 1, !dbg !2657
  %556 = icmp eq i8 %555, 0, !dbg !2657
  %557 = and i1 %554, %556, !dbg !2653
  br i1 %557, label %558, label %569, !dbg !2653

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2659
  br i1 %559, label %560, label %562, !dbg !2664

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2666
  store i8 39, i8* %561, align 1, !dbg !2666, !tbaa !889
  br label %562, !dbg !2666

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1982, metadata !719), !dbg !2044
  %564 = icmp ult i64 %563, %552, !dbg !2670
  br i1 %564, label %565, label %567, !dbg !2674

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2676
  store i8 39, i8* %566, align 1, !dbg !2676, !tbaa !889
  br label %567, !dbg !2676

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1982, metadata !719), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1989, metadata !719), !dbg !2052
  br label %569, !dbg !2680

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1989, metadata !719), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1982, metadata !719), !dbg !2044
  %579 = icmp ult i64 %577, %570, !dbg !2682
  br i1 %579, label %580, label %582, !dbg !2686

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2688
  store i8 %572, i8* %581, align 1, !dbg !2688, !tbaa !889
  br label %582, !dbg !2688

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1982, metadata !719), !dbg !2044
  %584 = and i8 %571, 1, !dbg !2692
  %585 = icmp eq i8 %584, 0, !dbg !2692
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1991, metadata !719), !dbg !2054
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2694
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1991, metadata !719), !dbg !2054
  br label %587, !dbg !2695

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1981, metadata !719), !dbg !2119
  br label %123, !dbg !2698, !llvm.loop !2699

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2702
  %600 = and i1 %114, %599, !dbg !2704
  %601 = xor i1 %600, true, !dbg !2704
  %602 = or i1 %112, %601, !dbg !2704
  br i1 %602, label %603, label %648, !dbg !2704

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2705
  %605 = xor i1 %604, true, !dbg !2705
  %606 = and i8 %129, 1, !dbg !2707
  %607 = icmp eq i8 %606, 0, !dbg !2707
  %608 = or i1 %607, %605, !dbg !2705
  br i1 %608, label %618, label %609, !dbg !2705

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2709
  %611 = icmp eq i8 %610, 0, !dbg !2709
  br i1 %611, label %614, label %612, !dbg !2712

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2713
  br label %659, !dbg !2714

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2715
  %616 = icmp ne i64 %126, 0, !dbg !2717
  %617 = and i1 %616, %615, !dbg !2719
  br i1 %617, label %27, label %618, !dbg !2719

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2720
  %620 = and i1 %619, %112, !dbg !2722
  br i1 %620, label %621, label %638, !dbg !2722

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1984, metadata !719), !dbg !2046
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1982, metadata !719), !dbg !2044
  %622 = load i8, i8* %100, align 1, !dbg !2723, !tbaa !889
  %623 = icmp eq i8 %622, 0, !dbg !2727
  br i1 %623, label %638, label %624, !dbg !2727

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2729

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2729
  br i1 %629, label %630, label %632, !dbg !2733

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2735
  store i8 %626, i8* %631, align 1, !dbg !2735, !tbaa !889
  br label %632, !dbg !2735

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1982, metadata !719), !dbg !2044
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2739
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1984, metadata !719), !dbg !2046
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1984, metadata !719), !dbg !2046
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1982, metadata !719), !dbg !2044
  %635 = load i8, i8* %634, align 1, !dbg !2723, !tbaa !889
  %636 = icmp eq i8 %635, 0, !dbg !2727
  br i1 %636, label %637, label %625, !dbg !2727, !llvm.loop !2741

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2044

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1982, metadata !719), !dbg !2044
  %640 = icmp ult i64 %639, %131, !dbg !2744
  br i1 %640, label %641, label %659, !dbg !2746

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2747
  store i8 0, i8* %642, align 1, !dbg !2748, !tbaa !889
  br label %659, !dbg !2747

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2036

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2036

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2036

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1973, metadata !719), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1975, metadata !719), !dbg !2038
  %653 = icmp ne i32 %650, 2, !dbg !2749
  %654 = icmp eq i8 %104, 0, !dbg !2751
  %655 = or i1 %653, %654, !dbg !2753
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1976, metadata !719), !dbg !2039
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1976, metadata !719), !dbg !2039
  %657 = and i32 %5, -3, !dbg !2754
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2755
  br label %659, !dbg !2756

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2757
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2758 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2762, metadata !719), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2763, metadata !719), !dbg !2767
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2768
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2764, metadata !719), !dbg !2769
  %4 = icmp eq i8* %3, %0, !dbg !2770
  br i1 %4, label %5, label %75, !dbg !2772

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2765, metadata !719), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2775, metadata !719), !dbg !2791
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2789, metadata !719), !dbg !2794
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2790, metadata !719), !dbg !2795
  %7 = load i8, i8* %6, align 1, !tbaa !889
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2796
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2796

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2799, metadata !719), !dbg !2813
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2811, metadata !719), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2812, metadata !719), !dbg !2818
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !889
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2819
  %15 = icmp eq i32 %14, 84, !dbg !2819
  br i1 %15, label %16, label %72, !dbg !2819

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2822, metadata !719), !dbg !2835
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2833, metadata !719), !dbg !2839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2834, metadata !719), !dbg !2840
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !889
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2841
  %21 = icmp eq i32 %20, 70, !dbg !2841
  br i1 %21, label %22, label %72, !dbg !2841

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2844, metadata !719), !dbg !2856
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2854, metadata !719), !dbg !2860
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2855, metadata !719), !dbg !2861
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !889
  %25 = icmp eq i8 %24, 45, !dbg !2862
  br i1 %25, label %26, label %72, !dbg !2865

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2867, metadata !719), !dbg !2878
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2876, metadata !719), !dbg !2882
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2877, metadata !719), !dbg !2883
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !889
  %29 = icmp eq i8 %28, 56, !dbg !2884
  br i1 %29, label %30, label %72, !dbg !2887

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2889, metadata !719), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2897, metadata !719), !dbg !2903
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2898, metadata !719), !dbg !2904
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !889
  %33 = icmp eq i8 %32, 0, !dbg !2905
  br i1 %33, label %34, label %72, !dbg !2908

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2910, !tbaa !889
  %36 = icmp eq i8 %35, 96, !dbg !2911
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !2910
  br label %75, !dbg !2912

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2799, metadata !719), !dbg !2913
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2811, metadata !719), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2812, metadata !719), !dbg !2918
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !889
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2919
  %43 = icmp eq i32 %42, 66, !dbg !2919
  br i1 %43, label %44, label %72, !dbg !2919

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2822, metadata !719), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2833, metadata !719), !dbg !2922
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2834, metadata !719), !dbg !2923
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !889
  %47 = icmp eq i8 %46, 49, !dbg !2924
  br i1 %47, label %48, label %72, !dbg !2926

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2844, metadata !719), !dbg !2928
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2854, metadata !719), !dbg !2930
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2855, metadata !719), !dbg !2931
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !889
  %51 = icmp eq i8 %50, 56, !dbg !2932
  br i1 %51, label %52, label %72, !dbg !2933

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2867, metadata !719), !dbg !2934
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2876, metadata !719), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2877, metadata !719), !dbg !2937
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !889
  %55 = icmp eq i8 %54, 48, !dbg !2938
  br i1 %55, label %56, label %72, !dbg !2939

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2889, metadata !719), !dbg !2940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2897, metadata !719), !dbg !2942
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2898, metadata !719), !dbg !2943
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !889
  %59 = icmp eq i8 %58, 51, !dbg !2944
  br i1 %59, label %60, label %72, !dbg !2945

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2946, metadata !719), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2953, metadata !719), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2954, metadata !719), !dbg !2960
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !889
  %63 = icmp eq i8 %62, 48, !dbg !2961
  br i1 %63, label %64, label %72, !dbg !2964

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2966, metadata !719), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2972, metadata !719), !dbg !2978
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2973, metadata !719), !dbg !2979
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !889
  %67 = icmp eq i8 %66, 0, !dbg !2980
  br i1 %67, label %68, label %72, !dbg !2983

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2984, !tbaa !889
  %70 = icmp eq i8 %69, 96, !dbg !2985
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !2984
  br label %75, !dbg !2986

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2987
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !2988
  br label %75, !dbg !2989

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2990
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2991 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2995, metadata !719), !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2996, metadata !719), !dbg !2999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2997, metadata !719), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3001, metadata !719) #11, !dbg !3014
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3006, metadata !719) #11, !dbg !3016
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3007, metadata !719) #11, !dbg !3017
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3008, metadata !719) #11, !dbg !3018
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3019
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3019
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3009, metadata !719) #11, !dbg !3020
  %6 = tail call i32* @__errno_location() #1, !dbg !3021
  %7 = load i32, i32* %6, align 4, !dbg !3021, !tbaa !1274
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3010, metadata !719) #11, !dbg !3022
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3023
  %9 = load i32, i32* %8, align 4, !dbg !3023, !tbaa !1904
  %10 = or i32 %9, 1, !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3011, metadata !719) #11, !dbg !3025
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3026
  %12 = load i32, i32* %11, align 8, !dbg !3026, !tbaa !1842
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3027
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3028
  %15 = load i8*, i8** %14, align 8, !dbg !3028, !tbaa !1931
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3029
  %17 = load i8*, i8** %16, align 8, !dbg !3029, !tbaa !1934
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3030
  %19 = add i64 %18, 1, !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3012, metadata !719) #11, !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3033, metadata !719) #11, !dbg !3038
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3013, metadata !719) #11, !dbg !3041
  %21 = load i32, i32* %11, align 8, !dbg !3042, !tbaa !1842
  %22 = load i8*, i8** %14, align 8, !dbg !3043, !tbaa !1931
  %23 = load i8*, i8** %16, align 8, !dbg !3044, !tbaa !1934
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3045
  store i32 %7, i32* %6, align 4, !dbg !3046, !tbaa !1274
  ret i8* %20, !dbg !3047
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3002 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3001, metadata !719), !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3006, metadata !719), !dbg !3049
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3007, metadata !719), !dbg !3050
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3008, metadata !719), !dbg !3051
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3052
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3052
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3009, metadata !719), !dbg !3053
  %7 = tail call i32* @__errno_location() #1, !dbg !3054
  %8 = load i32, i32* %7, align 4, !dbg !3054, !tbaa !1274
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3010, metadata !719), !dbg !3055
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3056
  %10 = load i32, i32* %9, align 4, !dbg !3056, !tbaa !1904
  %11 = icmp ne i64* %2, null, !dbg !3057
  %12 = xor i1 %11, true, !dbg !3057
  %13 = zext i1 %12 to i32, !dbg !3057
  %14 = or i32 %10, %13, !dbg !3058
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3011, metadata !719), !dbg !3059
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3060
  %16 = load i32, i32* %15, align 8, !dbg !3060, !tbaa !1842
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3061
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3062
  %19 = load i8*, i8** %18, align 8, !dbg !3062, !tbaa !1931
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3063
  %21 = load i8*, i8** %20, align 8, !dbg !3063, !tbaa !1934
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3064
  %23 = add i64 %22, 1, !dbg !3065
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3012, metadata !719), !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3033, metadata !719) #11, !dbg !3067
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3013, metadata !719), !dbg !3070
  %25 = load i32, i32* %15, align 8, !dbg !3071, !tbaa !1842
  %26 = load i8*, i8** %18, align 8, !dbg !3072, !tbaa !1931
  %27 = load i8*, i8** %20, align 8, !dbg !3073, !tbaa !1934
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3074
  store i32 %8, i32* %7, align 4, !dbg !3075, !tbaa !1274
  br i1 %11, label %29, label %30, !dbg !3076

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3077, !tbaa !3079
  br label %30, !dbg !3080

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3081
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3082 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3086, !tbaa !727
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3084, metadata !719), !dbg !3087
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3085, metadata !719), !dbg !3088
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3085, metadata !719), !dbg !3088
  %2 = load i32, i32* @nslots, align 4, !dbg !3089, !tbaa !1274
  %3 = icmp sgt i32 %2, 1, !dbg !3093
  br i1 %3, label %4, label %14, !dbg !3094

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3096

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3096
  %8 = load i8*, i8** %7, align 8, !dbg !3096, !tbaa !3097
  tail call void @free(i8* %8) #11, !dbg !3099
  %9 = add nuw i64 %6, 1, !dbg !3100
  %10 = load i32, i32* @nslots, align 4, !dbg !3089, !tbaa !1274
  %11 = sext i32 %10 to i64, !dbg !3093
  %12 = icmp slt i64 %9, %11, !dbg !3093
  br i1 %12, label %5, label %13, !dbg !3094, !llvm.loop !3102

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3105

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3105
  %16 = load i8*, i8** %15, align 8, !dbg !3105, !tbaa !3097
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3107
  br i1 %17, label %19, label %18, !dbg !3108

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3109
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3111, !tbaa !3112
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3113, !tbaa !3097
  br label %19, !dbg !3114

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3115
  br i1 %20, label %23, label %21, !dbg !3117

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3118
  tail call void @free(i8* %22) #11, !dbg !3120
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3121, !tbaa !727
  br label %23, !dbg !3122

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3123, !tbaa !1274
  ret void, !dbg !3124
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3125 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3129, metadata !719), !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3130, metadata !719), !dbg !3132
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3133
  ret i8* %3, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3135 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3139, metadata !719), !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3140, metadata !719), !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3141, metadata !719), !dbg !3155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3142, metadata !719), !dbg !3156
  %5 = tail call i32* @__errno_location() #1, !dbg !3157
  %6 = load i32, i32* %5, align 4, !dbg !3157, !tbaa !1274
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3143, metadata !719), !dbg !3158
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3159, !tbaa !727
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3144, metadata !719), !dbg !3160
  %8 = icmp slt i32 %0, 0, !dbg !3161
  br i1 %8, label %9, label %10, !dbg !3163

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3164
  unreachable, !dbg !3164

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3165, !tbaa !1274
  %12 = icmp sgt i32 %11, %0, !dbg !3166
  br i1 %12, label %34, label %13, !dbg !3167

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3168
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3169
  br i1 %15, label %16, label %17, !dbg !3171

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3172
  unreachable, !dbg !3172

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3173
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3173
  %20 = add nsw i32 %0, 1, !dbg !3175
  %21 = sext i32 %20 to i64, !dbg !3176
  %22 = shl nsw i64 %21, 4, !dbg !3177
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3178
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3178
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3144, metadata !719), !dbg !3160
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3179, !tbaa !727
  br i1 %14, label %25, label %26, !dbg !3180

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3181, !tbaa.struct !3183
  br label %26, !dbg !3184

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3185, !tbaa !1274
  %28 = sext i32 %27 to i64, !dbg !3186
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3186
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3187
  %31 = sub nsw i32 %20, %27, !dbg !3188
  %32 = sext i32 %31 to i64, !dbg !3189
  %33 = shl nsw i64 %32, 4, !dbg !3190
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3187
  store i32 %20, i32* @nslots, align 4, !dbg !3191, !tbaa !1274
  br label %34, !dbg !3192

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3144, metadata !719), !dbg !3160
  %36 = sext i32 %0 to i64, !dbg !3193
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3194
  %38 = load i64, i64* %37, align 8, !dbg !3194, !tbaa !3112
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3148, metadata !719), !dbg !3195
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3196
  %40 = load i8*, i8** %39, align 8, !dbg !3196, !tbaa !3097
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3150, metadata !719), !dbg !3197
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3198
  %42 = load i32, i32* %41, align 4, !dbg !3198, !tbaa !1904
  %43 = or i32 %42, 1, !dbg !3199
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3151, metadata !719), !dbg !3200
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3201
  %45 = load i32, i32* %44, align 8, !dbg !3201, !tbaa !1842
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3202
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3203
  %48 = load i8*, i8** %47, align 8, !dbg !3203, !tbaa !1931
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3204
  %50 = load i8*, i8** %49, align 8, !dbg !3204, !tbaa !1934
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3152, metadata !719), !dbg !3206
  %52 = icmp ugt i64 %38, %51, !dbg !3207
  br i1 %52, label %63, label %53, !dbg !3209

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3148, metadata !719), !dbg !3195
  store i64 %54, i64* %37, align 8, !dbg !3212, !tbaa !3112
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3213
  br i1 %55, label %57, label %56, !dbg !3215

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3216
  br label %57, !dbg !3216

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3033, metadata !719) #11, !dbg !3217
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3150, metadata !719), !dbg !3197
  store i8* %58, i8** %39, align 8, !dbg !3220, !tbaa !3097
  %59 = load i32, i32* %44, align 8, !dbg !3221, !tbaa !1842
  %60 = load i8*, i8** %47, align 8, !dbg !3222, !tbaa !1931
  %61 = load i8*, i8** %49, align 8, !dbg !3223, !tbaa !1934
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3224
  br label %63, !dbg !3225

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3150, metadata !719), !dbg !3197
  store i32 %6, i32* %5, align 4, !dbg !3226, !tbaa !1274
  ret i8* %64, !dbg !3227
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3228 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3232, metadata !719), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3233, metadata !719), !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3234, metadata !719), !dbg !3237
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3238
  ret i8* %4, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3240 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3244, metadata !719), !dbg !3245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3129, metadata !719) #11, !dbg !3246
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3130, metadata !719) #11, !dbg !3248
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3249
  ret i8* %2, !dbg !3250
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3251 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3255, metadata !719), !dbg !3257
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3256, metadata !719), !dbg !3258
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3232, metadata !719) #11, !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3233, metadata !719) #11, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3234, metadata !719) #11, !dbg !3262
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3263
  ret i8* %3, !dbg !3264
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3265 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3273, metadata !3279), !dbg !3280
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3269, metadata !719), !dbg !3282
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3270, metadata !719), !dbg !3283
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3271, metadata !719), !dbg !3284
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3285
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3285
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3272, metadata !1275), !dbg !3286
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3278, metadata !719) #11, !dbg !3287
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3288
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3288
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3273, metadata !719) #11, !dbg !3280
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3273, metadata !3289) #11, !dbg !3280
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3280
  %8 = icmp eq i32 %1, 10, !dbg !3290
  br i1 %8, label %9, label %10, !dbg !3292

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3293, !noalias !3294
  unreachable, !dbg !3293

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3273, metadata !3289) #11, !dbg !3280
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3297
  store i32 %1, i32* %11, align 8, !dbg !3297, !alias.scope !3294
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3297
  %13 = bitcast i32* %12 to i8*, !dbg !3297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3297
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3298
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3272, metadata !1275), !dbg !3286
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3299
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3300
  ret i8* %14, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3302 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3273, metadata !3279), !dbg !3311
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3306, metadata !719), !dbg !3313
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3307, metadata !719), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3308, metadata !719), !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3309, metadata !719), !dbg !3316
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3317
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3317
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3310, metadata !1275), !dbg !3318
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3278, metadata !719) #11, !dbg !3319
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3320
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3320
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3273, metadata !719) #11, !dbg !3311
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3273, metadata !3289) #11, !dbg !3311
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3311
  %9 = icmp eq i32 %1, 10, !dbg !3321
  br i1 %9, label %10, label %11, !dbg !3322

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3323, !noalias !3324
  unreachable, !dbg !3323

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3273, metadata !3289) #11, !dbg !3311
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3327
  store i32 %1, i32* %12, align 8, !dbg !3327, !alias.scope !3324
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3327
  %14 = bitcast i32* %13 to i8*, !dbg !3327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3327
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3328
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3310, metadata !1275), !dbg !3318
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3329
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3330
  ret i8* %15, !dbg !3331
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3332 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3273, metadata !3279), !dbg !3338
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3336, metadata !719), !dbg !3341
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3337, metadata !719), !dbg !3342
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3269, metadata !719) #11, !dbg !3343
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3270, metadata !719) #11, !dbg !3344
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3271, metadata !719) #11, !dbg !3345
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3346
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3346
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3272, metadata !1275) #11, !dbg !3347
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3278, metadata !719) #11, !dbg !3348
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3349
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3349
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3273, metadata !719) #11, !dbg !3338
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3273, metadata !3289) #11, !dbg !3338
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3338
  %7 = icmp eq i32 %0, 10, !dbg !3350
  br i1 %7, label %8, label %9, !dbg !3351

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3352, !noalias !3353
  unreachable, !dbg !3352

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3273, metadata !3289) #11, !dbg !3338
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3356
  store i32 %0, i32* %10, align 8, !dbg !3356, !alias.scope !3353
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3356
  %12 = bitcast i32* %11 to i8*, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3356
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3357
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3272, metadata !1275) #11, !dbg !3347
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3358
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3359
  ret i8* %13, !dbg !3360
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3361 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3273, metadata !3279), !dbg !3368
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3365, metadata !719), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3366, metadata !719), !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3367, metadata !719), !dbg !3373
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3306, metadata !719) #11, !dbg !3374
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3307, metadata !719) #11, !dbg !3375
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3308, metadata !719) #11, !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3309, metadata !719) #11, !dbg !3377
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3378
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3310, metadata !1275) #11, !dbg !3379
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3278, metadata !719) #11, !dbg !3380
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3381
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3381
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3273, metadata !719) #11, !dbg !3368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3273, metadata !3289) #11, !dbg !3368
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3368
  %8 = icmp eq i32 %0, 10, !dbg !3382
  br i1 %8, label %9, label %10, !dbg !3383

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3384, !noalias !3385
  unreachable, !dbg !3384

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3273, metadata !3289) #11, !dbg !3368
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3388
  store i32 %0, i32* %11, align 8, !dbg !3388, !alias.scope !3385
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3388
  %13 = bitcast i32* %12 to i8*, !dbg !3388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3388
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3310, metadata !1275) #11, !dbg !3379
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3390
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3391
  ret i8* %14, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3393 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !719), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3398, metadata !719), !dbg !3402
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3399, metadata !719), !dbg !3403
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3404
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3405, !tbaa.struct !3406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3400, metadata !1275), !dbg !3407
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1862, metadata !719), !dbg !3408
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1863, metadata !719), !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1864, metadata !719), !dbg !3411
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1865, metadata !719), !dbg !3412
  %6 = lshr i8 %2, 5, !dbg !3413
  %7 = zext i8 %6 to i64, !dbg !3413
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3414
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1866, metadata !719), !dbg !3415
  %9 = and i8 %2, 31, !dbg !3416
  %10 = zext i8 %9 to i32, !dbg !3417
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1868, metadata !719), !dbg !3418
  %11 = load i32, i32* %8, align 4, !dbg !3419, !tbaa !1274
  %12 = lshr i32 %11, %10, !dbg !3420
  %13 = and i32 %12, 1, !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1869, metadata !719), !dbg !3422
  %14 = xor i32 %13, 1, !dbg !3423
  %15 = shl i32 %14, %10, !dbg !3424
  %16 = xor i32 %15, %11, !dbg !3425
  store i32 %16, i32* %8, align 4, !dbg !3425, !tbaa !1274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3400, metadata !1275), !dbg !3407
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3426
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3427
  ret i8* %17, !dbg !3428
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3429 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !719), !dbg !3435
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3434, metadata !719), !dbg !3436
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !719) #11, !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3398, metadata !719) #11, !dbg !3439
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3399, metadata !719) #11, !dbg !3440
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3441
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3442, !tbaa.struct !3406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3400, metadata !1275) #11, !dbg !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1862, metadata !719) #11, !dbg !3444
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1863, metadata !719) #11, !dbg !3446
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1864, metadata !719) #11, !dbg !3447
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1865, metadata !719) #11, !dbg !3448
  %5 = lshr i8 %1, 5, !dbg !3449
  %6 = zext i8 %5 to i64, !dbg !3449
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3450
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1866, metadata !719) #11, !dbg !3451
  %8 = and i8 %1, 31, !dbg !3452
  %9 = zext i8 %8 to i32, !dbg !3453
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1868, metadata !719) #11, !dbg !3454
  %10 = load i32, i32* %7, align 4, !dbg !3455, !tbaa !1274
  %11 = lshr i32 %10, %9, !dbg !3456
  %12 = and i32 %11, 1, !dbg !3457
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1869, metadata !719) #11, !dbg !3458
  %13 = xor i32 %12, 1, !dbg !3459
  %14 = shl i32 %13, %9, !dbg !3460
  %15 = xor i32 %14, %10, !dbg !3461
  store i32 %15, i32* %7, align 4, !dbg !3461, !tbaa !1274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3400, metadata !1275) #11, !dbg !3443
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3462
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3463
  ret i8* %16, !dbg !3464
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3465 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3467, metadata !719), !dbg !3468
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !719) #11, !dbg !3469
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3434, metadata !719) #11, !dbg !3471
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !719) #11, !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3398, metadata !719) #11, !dbg !3474
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3399, metadata !719) #11, !dbg !3475
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3476
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3477, !tbaa.struct !3406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3400, metadata !1275) #11, !dbg !3478
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1862, metadata !719) #11, !dbg !3479
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1863, metadata !719) #11, !dbg !3481
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1864, metadata !719) #11, !dbg !3482
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1865, metadata !719) #11, !dbg !3483
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3484
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1866, metadata !719) #11, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1868, metadata !719) #11, !dbg !3486
  %5 = load i32, i32* %4, align 4, !dbg !3487, !tbaa !1274
  %6 = or i32 %5, 67108864, !dbg !3488
  store i32 %6, i32* %4, align 4, !dbg !3488, !tbaa !1274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3400, metadata !1275) #11, !dbg !3478
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3489
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3490
  ret i8* %7, !dbg !3491
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3492 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3494, metadata !719), !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3495, metadata !719), !dbg !3497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !719) #11, !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3398, metadata !719) #11, !dbg !3500
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3399, metadata !719) #11, !dbg !3501
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3502
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3503, !tbaa.struct !3406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3400, metadata !1275) #11, !dbg !3504
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1862, metadata !719) #11, !dbg !3505
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1863, metadata !719) #11, !dbg !3507
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1864, metadata !719) #11, !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1865, metadata !719) #11, !dbg !3509
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3510
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1866, metadata !719) #11, !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1868, metadata !719) #11, !dbg !3512
  %6 = load i32, i32* %5, align 4, !dbg !3513, !tbaa !1274
  %7 = or i32 %6, 67108864, !dbg !3514
  store i32 %7, i32* %5, align 4, !dbg !3514, !tbaa !1274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3400, metadata !1275) #11, !dbg !3504
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3515
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3516
  ret i8* %8, !dbg !3517
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3518 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3273, metadata !3279), !dbg !3524
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3520, metadata !719), !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3521, metadata !719), !dbg !3527
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3522, metadata !719), !dbg !3528
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3529
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3278, metadata !719) #11, !dbg !3530
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3531
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3531
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3273, metadata !719) #11, !dbg !3524
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3273, metadata !3289) #11, !dbg !3524
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3524
  %9 = icmp eq i32 %1, 10, !dbg !3532
  br i1 %9, label %10, label %11, !dbg !3533

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3534, !noalias !3535
  unreachable, !dbg !3534

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3273, metadata !3289) #11, !dbg !3524
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3538
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3539
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3540
  store i32 %1, i32* %13, align 8, !dbg !3540
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3540
  %15 = bitcast i32* %14 to i8*, !dbg !3540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3523, metadata !1275), !dbg !3541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1862, metadata !719), !dbg !3542
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1863, metadata !719), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1864, metadata !719), !dbg !3545
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1865, metadata !719), !dbg !3546
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1866, metadata !719), !dbg !3548
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1868, metadata !719), !dbg !3549
  %17 = load i32, i32* %16, align 4, !dbg !3550, !tbaa !1274
  %18 = or i32 %17, 67108864, !dbg !3551
  store i32 %18, i32* %16, align 4, !dbg !3551, !tbaa !1274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3523, metadata !1275), !dbg !3541
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3552
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3553
  ret i8* %19, !dbg !3554
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3555 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3559, metadata !719), !dbg !3563
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3560, metadata !719), !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3561, metadata !719), !dbg !3565
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3562, metadata !719), !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3567, metadata !719) #11, !dbg !3577
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3572, metadata !719) #11, !dbg !3579
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3573, metadata !719) #11, !dbg !3580
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3574, metadata !719) #11, !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3575, metadata !719) #11, !dbg !3582
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3583
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3584, !tbaa.struct !3406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3576, metadata !1275) #11, !dbg !3585
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1912, metadata !719) #11, !dbg !3586
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1913, metadata !719) #11, !dbg !3588
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1914, metadata !719) #11, !dbg !3589
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1912, metadata !719) #11, !dbg !3586
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1912, metadata !719) #11, !dbg !3586
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3590
  store i32 10, i32* %7, align 8, !dbg !3591, !tbaa !1842
  %8 = icmp ne i8* %1, null, !dbg !3592
  %9 = icmp ne i8* %2, null, !dbg !3593
  %10 = and i1 %8, %9, !dbg !3594
  br i1 %10, label %12, label %11, !dbg !3594

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3595
  unreachable, !dbg !3595

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3596
  store i8* %1, i8** %13, align 8, !dbg !3597, !tbaa !1931
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3598
  store i8* %2, i8** %14, align 8, !dbg !3599, !tbaa !1934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3576, metadata !1275) #11, !dbg !3585
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3600
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3601
  ret i8* %15, !dbg !3602
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3568 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3567, metadata !719), !dbg !3603
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3572, metadata !719), !dbg !3604
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3573, metadata !719), !dbg !3605
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3574, metadata !719), !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3575, metadata !719), !dbg !3607
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3608
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3609, !tbaa.struct !3406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3576, metadata !1275), !dbg !3610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1912, metadata !719) #11, !dbg !3611
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1913, metadata !719) #11, !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1914, metadata !719) #11, !dbg !3614
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1912, metadata !719) #11, !dbg !3611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1912, metadata !719) #11, !dbg !3611
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3615
  store i32 10, i32* %8, align 8, !dbg !3616, !tbaa !1842
  %9 = icmp ne i8* %1, null, !dbg !3617
  %10 = icmp ne i8* %2, null, !dbg !3618
  %11 = and i1 %9, %10, !dbg !3619
  br i1 %11, label %13, label %12, !dbg !3619

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3620
  unreachable, !dbg !3620

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3621
  store i8* %1, i8** %14, align 8, !dbg !3622, !tbaa !1931
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3623
  store i8* %2, i8** %15, align 8, !dbg !3624, !tbaa !1934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3576, metadata !1275), !dbg !3610
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3625
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3626
  ret i8* %16, !dbg !3627
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3628 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3632, metadata !719), !dbg !3635
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3633, metadata !719), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3634, metadata !719), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3559, metadata !719) #11, !dbg !3638
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3560, metadata !719) #11, !dbg !3640
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3561, metadata !719) #11, !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3562, metadata !719) #11, !dbg !3642
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !719) #11, !dbg !3643
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !719) #11, !dbg !3645
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3573, metadata !719) #11, !dbg !3646
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3574, metadata !719) #11, !dbg !3647
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3575, metadata !719) #11, !dbg !3648
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3649
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3650, !tbaa.struct !3406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3576, metadata !1275) #11, !dbg !3651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1912, metadata !719) #11, !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1913, metadata !719) #11, !dbg !3654
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1914, metadata !719) #11, !dbg !3655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1912, metadata !719) #11, !dbg !3652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1912, metadata !719) #11, !dbg !3652
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3656
  store i32 10, i32* %6, align 8, !dbg !3657, !tbaa !1842
  %7 = icmp ne i8* %0, null, !dbg !3658
  %8 = icmp ne i8* %1, null, !dbg !3659
  %9 = and i1 %7, %8, !dbg !3660
  br i1 %9, label %11, label %10, !dbg !3660

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3661
  unreachable, !dbg !3661

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3662
  store i8* %0, i8** %12, align 8, !dbg !3663, !tbaa !1931
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3664
  store i8* %1, i8** %13, align 8, !dbg !3665, !tbaa !1934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3576, metadata !1275) #11, !dbg !3651
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3666
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3667
  ret i8* %14, !dbg !3668
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3669 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3673, metadata !719), !dbg !3677
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3674, metadata !719), !dbg !3678
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3675, metadata !719), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3676, metadata !719), !dbg !3680
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3567, metadata !719) #11, !dbg !3681
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !719) #11, !dbg !3683
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3573, metadata !719) #11, !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3574, metadata !719) #11, !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3575, metadata !719) #11, !dbg !3686
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3687
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3688, !tbaa.struct !3406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3576, metadata !1275) #11, !dbg !3689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1912, metadata !719) #11, !dbg !3690
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1913, metadata !719) #11, !dbg !3692
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1914, metadata !719) #11, !dbg !3693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1912, metadata !719) #11, !dbg !3690
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1912, metadata !719) #11, !dbg !3690
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3694
  store i32 10, i32* %7, align 8, !dbg !3695, !tbaa !1842
  %8 = icmp ne i8* %0, null, !dbg !3696
  %9 = icmp ne i8* %1, null, !dbg !3697
  %10 = and i1 %8, %9, !dbg !3698
  br i1 %10, label %12, label %11, !dbg !3698

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3699
  unreachable, !dbg !3699

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3700
  store i8* %0, i8** %13, align 8, !dbg !3701, !tbaa !1931
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3702
  store i8* %1, i8** %14, align 8, !dbg !3703, !tbaa !1934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3576, metadata !1275) #11, !dbg !3689
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3704
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3705
  ret i8* %15, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3707 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3711, metadata !719), !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3712, metadata !719), !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3713, metadata !719), !dbg !3716
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3717
  ret i8* %4, !dbg !3718
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3719 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3723, metadata !719), !dbg !3725
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3724, metadata !719), !dbg !3726
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3711, metadata !719) #11, !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3712, metadata !719) #11, !dbg !3729
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3713, metadata !719) #11, !dbg !3730
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3731
  ret i8* %3, !dbg !3732
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3733 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3737, metadata !719), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3738, metadata !719), !dbg !3740
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3711, metadata !719) #11, !dbg !3741
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3712, metadata !719) #11, !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3713, metadata !719) #11, !dbg !3744
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3745
  ret i8* %3, !dbg !3746
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3747 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3751, metadata !719), !dbg !3752
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3737, metadata !719) #11, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3738, metadata !719) #11, !dbg !3755
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3711, metadata !719) #11, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3712, metadata !719) #11, !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3713, metadata !719) #11, !dbg !3759
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3760
  ret i8* %2, !dbg !3761
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @unicode_to_mb(i32, i64 (i8*, i64, i8*)* nocapture, i64 (i32, i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 !dbg !199 {
  %5 = alloca [6 x i8], align 1
  %6 = alloca [25 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !277, metadata !719), !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*)* %1, i64 0, metadata !278, metadata !719), !dbg !3763
  tail call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*)* %2, i64 0, metadata !279, metadata !719), !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !280, metadata !719), !dbg !3765
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0, !dbg !3766
  call void @llvm.lifetime.start(i64 6, i8* nonnull %11) #11, !dbg !3766
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !281, metadata !719), !dbg !3767
  %12 = load i1, i1* @unicode_to_mb.initialized, align 4
  br i1 %12, label %24, label %13, !dbg !3768

; <label>:13:                                     ; preds = %4
  %14 = tail call i8* @locale_charset() #11, !dbg !3769
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !286, metadata !719), !dbg !3770
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !291, metadata !719), !dbg !3771
  %15 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11, !dbg !3772
  %16 = icmp eq i32 %15, 0, !dbg !3774
  %17 = zext i1 %16 to i32, !dbg !3774
  store i32 %17, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3776, !tbaa !1274
  br i1 %16, label %23, label %18, !dbg !3777

; <label>:18:                                     ; preds = %13
  %19 = tail call i8* @iconv_open(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11, !dbg !3778
  store i8* %19, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3781, !tbaa !727
  %20 = icmp eq i8* %19, inttoptr (i64 -1 to i8*), !dbg !3782
  br i1 %20, label %21, label %23, !dbg !3784

; <label>:21:                                     ; preds = %18
  %22 = tail call i8* @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11, !dbg !3785
  store i8* %22, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3786, !tbaa !727
  br label %23, !dbg !3787

; <label>:23:                                     ; preds = %18, %21, %13
  store i1 true, i1* @unicode_to_mb.initialized, align 4
  br label %24, !dbg !3788

; <label>:24:                                     ; preds = %23, %4
  %25 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3789, !tbaa !1274
  %26 = icmp eq i32 %25, 0, !dbg !3789
  %27 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3791
  %28 = icmp eq i8* %27, inttoptr (i64 -1 to i8*), !dbg !3794
  %29 = and i1 %26, %28, !dbg !3795
  br i1 %29, label %30, label %32, !dbg !3795

; <label>:30:                                     ; preds = %24
  %31 = tail call i64 %2(i32 %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.77, i64 0, i64 0), i8* %3) #11, !dbg !3796
  br label %78, !dbg !3797

; <label>:32:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3798, metadata !719) #11, !dbg !3811
  %33 = icmp ult i32 %0, 128, !dbg !3813
  br i1 %33, label %34, label %36, !dbg !3815

; <label>:34:                                     ; preds = %32
  %35 = trunc i32 %0 to i8, !dbg !3816
  store i8 %35, i8* %11, align 1, !dbg !3818, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !285, metadata !719), !dbg !3819
  br label %44, !dbg !3820

; <label>:36:                                     ; preds = %32
  %37 = call i32 @u8_uctomb_aux(i8* nonnull %11, i32 %0, i32 6) #11, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !285, metadata !719), !dbg !3819
  %38 = icmp slt i32 %37, 0, !dbg !3822
  br i1 %38, label %42, label %39, !dbg !3820

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !tbaa !1274
  %41 = sext i32 %37 to i64, !dbg !3820
  br label %44, !dbg !3820

; <label>:42:                                     ; preds = %36
  %43 = call i64 %2(i32 %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.78, i64 0, i64 0), i8* %3) #11, !dbg !3824
  br label %78, !dbg !3825

; <label>:44:                                     ; preds = %39, %34
  %45 = phi i32 [ %25, %34 ], [ %40, %39 ], !dbg !3826
  %46 = phi i64 [ 1, %34 ], [ %41, %39 ]
  %47 = icmp eq i32 %45, 0, !dbg !3826
  br i1 %47, label %48, label %76, !dbg !3827

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0, !dbg !3828
  call void @llvm.lifetime.start(i64 25, i8* nonnull %49) #11, !dbg !3828
  call void @llvm.dbg.declare(metadata [25 x i8]* %6, metadata !295, metadata !719), !dbg !3829
  %50 = bitcast i8** %7 to i8*, !dbg !3830
  call void @llvm.lifetime.start(i64 8, i8* nonnull %50) #11, !dbg !3830
  %51 = bitcast i64* %8 to i8*, !dbg !3831
  call void @llvm.lifetime.start(i64 8, i8* nonnull %51) #11, !dbg !3831
  %52 = bitcast i8** %9 to i8*, !dbg !3832
  call void @llvm.lifetime.start(i64 8, i8* nonnull %52) #11, !dbg !3832
  %53 = bitcast i64* %10 to i8*, !dbg !3833
  call void @llvm.lifetime.start(i64 8, i8* nonnull %53) #11, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !301, metadata !719), !dbg !3834
  store i8* %11, i8** %7, align 8, !dbg !3835, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !302, metadata !719), !dbg !3836
  store i64 %46, i64* %8, align 8, !dbg !3837, !tbaa !3079
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !303, metadata !719), !dbg !3838
  store i8* %49, i8** %9, align 8, !dbg !3839, !tbaa !727
  call void @llvm.dbg.value(metadata i64 25, i64 0, metadata !304, metadata !719), !dbg !3840
  store i64 25, i64* %10, align 8, !dbg !3841, !tbaa !3079
  %54 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3842, !tbaa !727
  call void @llvm.dbg.value(metadata i8** %7, i64 0, metadata !301, metadata !1275), !dbg !3834
  call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !302, metadata !1275), !dbg !3836
  call void @llvm.dbg.value(metadata i8** %9, i64 0, metadata !303, metadata !1275), !dbg !3838
  call void @llvm.dbg.value(metadata i64* %10, i64 0, metadata !304, metadata !1275), !dbg !3840
  %55 = call i64 @iconv(i8* %54, i8** nonnull %7, i64* nonnull %8, i8** nonnull %9, i64* nonnull %10) #11, !dbg !3843
  call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !305, metadata !719), !dbg !3844
  %56 = load i64, i64* %8, align 8, !dbg !3845, !tbaa !3079
  call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !302, metadata !719), !dbg !3836
  %57 = icmp ne i64 %56, 0, !dbg !3847
  %58 = icmp eq i64 %55, -1, !dbg !3848
  %59 = or i1 %58, %57, !dbg !3850
  br i1 %59, label %60, label %62, !dbg !3850

; <label>:60:                                     ; preds = %48
  %61 = call i64 %2(i32 %0, i8* null, i8* %3) #11, !dbg !3851
  br label %74, !dbg !3852

; <label>:62:                                     ; preds = %48
  %63 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3853, !tbaa !727
  call void @llvm.dbg.value(metadata i8** %9, i64 0, metadata !303, metadata !1275), !dbg !3838
  call void @llvm.dbg.value(metadata i64* %10, i64 0, metadata !304, metadata !1275), !dbg !3840
  %64 = call i64 @iconv(i8* %63, i8** null, i64* null, i8** nonnull %9, i64* nonnull %10) #11, !dbg !3854
  call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !305, metadata !719), !dbg !3844
  %65 = icmp eq i64 %64, -1, !dbg !3855
  br i1 %65, label %66, label %68, !dbg !3857

; <label>:66:                                     ; preds = %62
  %67 = call i64 %2(i32 %0, i8* null, i8* %3) #11, !dbg !3858
  br label %74, !dbg !3859

; <label>:68:                                     ; preds = %62
  %69 = bitcast i8** %9 to i64*, !dbg !3860
  %70 = load i64, i64* %69, align 8, !dbg !3860, !tbaa !727
  %71 = ptrtoint [25 x i8]* %6 to i64, !dbg !3861
  %72 = sub i64 %70, %71, !dbg !3861
  %73 = call i64 %1(i8* nonnull %49, i64 %72, i8* %3) #11, !dbg !3862
  br label %74, !dbg !3863

; <label>:74:                                     ; preds = %68, %66, %60
  %75 = phi i64 [ %61, %60 ], [ %67, %66 ], [ %73, %68 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %53) #11, !dbg !3864
  call void @llvm.lifetime.end(i64 8, i8* nonnull %52) #11, !dbg !3864
  call void @llvm.lifetime.end(i64 8, i8* nonnull %51) #11, !dbg !3864
  call void @llvm.lifetime.end(i64 8, i8* nonnull %50) #11, !dbg !3864
  call void @llvm.lifetime.end(i64 25, i8* nonnull %49) #11, !dbg !3864
  br label %78

; <label>:76:                                     ; preds = %44
  %77 = call i64 %1(i8* nonnull %11, i64 %46, i8* %3) #11, !dbg !3865
  br label %78, !dbg !3866

; <label>:78:                                     ; preds = %76, %74, %42, %30
  %79 = phi i64 [ %31, %30 ], [ %43, %42 ], [ %77, %76 ], [ %75, %74 ]
  call void @llvm.lifetime.end(i64 6, i8* nonnull %11) #11, !dbg !3867
  ret i64 %79, !dbg !3867
}

declare i8* @iconv_open(i8*, i8*) local_unnamed_addr #3

declare i64 @iconv(i8*, i8**, i64*, i8**, i64*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @fwrite_success_callback(i8* nocapture, i64, i8* nocapture) #6 !dbg !3868 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3870, metadata !719), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3871, metadata !719), !dbg !3875
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3872, metadata !719), !dbg !3876
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3877
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !3873, metadata !719), !dbg !3878
  %5 = tail call i64 @fwrite(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %4), !dbg !3879
  ret i64 0, !dbg !3880
}

; Function Attrs: nounwind sspstrong uwtable
define void @print_unicode_char(%struct._IO_FILE*, i32, i32) local_unnamed_addr #6 !dbg !3881 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3885, metadata !719), !dbg !3888
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3886, metadata !719), !dbg !3889
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3887, metadata !719), !dbg !3890
  %4 = icmp ne i32 %2, 0, !dbg !3891
  %5 = select i1 %4, i64 (i32, i8*, i8*)* @exit_failure_callback, i64 (i32, i8*, i8*)* @fallback_failure_callback, !dbg !3891
  %6 = bitcast %struct._IO_FILE* %0 to i8*, !dbg !3892
  %7 = tail call i64 @unicode_to_mb(i32 %1, i64 (i8*, i64, i8*)* nonnull @fwrite_success_callback, i64 (i32, i8*, i8*)* %5, i8* %6), !dbg !3893
  ret void, !dbg !3894
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @exit_failure_callback(i32, i8*, i8* nocapture readnone) #6 !dbg !3895 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3897, metadata !719), !dbg !3900
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3898, metadata !719), !dbg !3901
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3899, metadata !719), !dbg !3902
  %4 = icmp eq i8* %1, null, !dbg !3903
  br i1 %4, label %5, label %7, !dbg !3905

; <label>:5:                                      ; preds = %3
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4.83, i64 0, i64 0), i32 5) #11, !dbg !3906
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %6, i32 %0) #11, !dbg !3907
  br label %10, !dbg !3909

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.84, i64 0, i64 0), i32 5) #11, !dbg !3910
  %9 = tail call i8* @dcgettext(i8* null, i8* nonnull %1, i32 5) #11, !dbg !3911
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %8, i32 %0, i8* %9) #11, !dbg !3912
  br label %10

; <label>:10:                                     ; preds = %7, %5
  ret i64 -1, !dbg !3913
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fallback_failure_callback(i32, i8* nocapture readnone, i8*) #6 !dbg !3914 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3916, metadata !719), !dbg !3920
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3917, metadata !719), !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3918, metadata !719), !dbg !3922
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3923
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !3919, metadata !719), !dbg !3924
  %5 = icmp ult i32 %0, 65536, !dbg !3925
  br i1 %5, label %6, label %8, !dbg !3927

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.81, i64 0, i64 0), i32 %0) #11, !dbg !3928
  br label %10, !dbg !3928

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i64 0, i64 0), i32 %0) #11, !dbg !3929
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret i64 -1, !dbg !3930
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @u8_uctomb_aux(i8* nocapture, i32, i32) local_unnamed_addr #6 !dbg !3931 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3933, metadata !719), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3934, metadata !719), !dbg !3938
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3935, metadata !719), !dbg !3939
  %4 = icmp ult i32 %1, 128, !dbg !3940
  br i1 %4, label %43, label %5, !dbg !3942

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i32 %1, 2048, !dbg !3943
  br i1 %6, label %14, label %7, !dbg !3945

; <label>:7:                                      ; preds = %5
  %8 = icmp ult i32 %1, 65536, !dbg !3946
  br i1 %8, label %9, label %12, !dbg !3948

; <label>:9:                                      ; preds = %7
  %10 = and i32 %1, -2048, !dbg !3949
  %11 = icmp eq i32 %10, 55296, !dbg !3949
  br i1 %11, label %43, label %14, !dbg !3949

; <label>:12:                                     ; preds = %7
  %13 = icmp ult i32 %1, 1114112, !dbg !3952
  br i1 %13, label %14, label %43, !dbg !3954

; <label>:14:                                     ; preds = %12, %9, %5
  %15 = phi i32 [ 2, %5 ], [ 3, %9 ], [ 4, %12 ]
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !3936, metadata !719), !dbg !3955
  %16 = icmp sgt i32 %15, %2, !dbg !3956
  br i1 %16, label %43, label %17, !dbg !3958

; <label>:17:                                     ; preds = %14
  %18 = trunc i32 %15 to i3, !dbg !3959
  switch i3 %18, label %43 [
    i3 -4, label %19
    i3 3, label %26
    i3 2, label %34
  ], !dbg !3959

; <label>:19:                                     ; preds = %17
  %20 = trunc i32 %1 to i8, !dbg !3960
  %21 = and i8 %20, 63, !dbg !3960
  %22 = or i8 %21, -128, !dbg !3960
  %23 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !3962
  store i8 %22, i8* %23, align 1, !dbg !3963, !tbaa !889
  %24 = lshr i32 %1, 6, !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !3934, metadata !719), !dbg !3938
  %25 = or i32 %24, 65536, !dbg !3965
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !3934, metadata !719), !dbg !3938
  br label %26, !dbg !3966

; <label>:26:                                     ; preds = %17, %19
  %27 = phi i32 [ %1, %17 ], [ %25, %19 ]
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !3934, metadata !719), !dbg !3938
  %28 = trunc i32 %27 to i8, !dbg !3967
  %29 = and i8 %28, 63, !dbg !3967
  %30 = or i8 %29, -128, !dbg !3967
  %31 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !3968
  store i8 %30, i8* %31, align 1, !dbg !3969, !tbaa !889
  %32 = lshr i32 %27, 6, !dbg !3970
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !3934, metadata !719), !dbg !3938
  %33 = or i32 %32, 2048, !dbg !3971
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !3934, metadata !719), !dbg !3938
  br label %34, !dbg !3972

; <label>:34:                                     ; preds = %17, %26
  %35 = phi i32 [ %1, %17 ], [ %33, %26 ]
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !3934, metadata !719), !dbg !3938
  %36 = trunc i32 %35 to i8, !dbg !3973
  %37 = and i8 %36, 63, !dbg !3973
  %38 = or i8 %37, -128, !dbg !3973
  %39 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3974
  store i8 %38, i8* %39, align 1, !dbg !3975, !tbaa !889
  %40 = lshr i32 %35, 6, !dbg !3976
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !3934, metadata !719), !dbg !3938
  %41 = trunc i32 %40 to i8, !dbg !3977
  %42 = or i8 %41, -64, !dbg !3977
  store i8 %42, i8* %0, align 1, !dbg !3978, !tbaa !889
  br label %43, !dbg !3979

; <label>:43:                                     ; preds = %17, %34, %14, %12, %9, %3
  %44 = phi i32 [ -2, %3 ], [ -1, %9 ], [ -1, %12 ], [ -2, %14 ], [ %15, %34 ], [ %15, %17 ]
  ret i32 %44, !dbg !3980
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3981 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4026, metadata !719), !dbg !4032
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4027, metadata !719), !dbg !4033
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4028, metadata !719), !dbg !4034
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4029, metadata !719), !dbg !4035
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4030, metadata !719), !dbg !4036
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4031, metadata !719), !dbg !4037
  %7 = icmp eq i8* %1, null, !dbg !4038
  br i1 %7, label %10, label %8, !dbg !4040

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !4041
  br label %12, !dbg !4041

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !4042
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #11, !dbg !4043
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !4044
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.90, i64 0, i64 0), i32 5) #11, !dbg !4046
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !4047
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
  ], !dbg !4048

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4049
  unreachable, !dbg !4049

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #11, !dbg !4051
  %20 = load i8*, i8** %4, align 8, !dbg !4051, !tbaa !727
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !4052
  br label %146, !dbg !4054

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.92, i64 0, i64 0), i32 5) #11, !dbg !4055
  %24 = load i8*, i8** %4, align 8, !dbg !4055, !tbaa !727
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4055
  %26 = load i8*, i8** %25, align 8, !dbg !4055, !tbaa !727
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !4056
  br label %146, !dbg !4057

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #11, !dbg !4058
  %30 = load i8*, i8** %4, align 8, !dbg !4058, !tbaa !727
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4058
  %32 = load i8*, i8** %31, align 8, !dbg !4058, !tbaa !727
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4058
  %34 = load i8*, i8** %33, align 8, !dbg !4058, !tbaa !727
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !4059
  br label %146, !dbg !4060

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #11, !dbg !4061
  %38 = load i8*, i8** %4, align 8, !dbg !4061, !tbaa !727
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4061
  %40 = load i8*, i8** %39, align 8, !dbg !4061, !tbaa !727
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4061
  %42 = load i8*, i8** %41, align 8, !dbg !4061, !tbaa !727
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4061
  %44 = load i8*, i8** %43, align 8, !dbg !4061, !tbaa !727
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !4062
  br label %146, !dbg !4063

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #11, !dbg !4064
  %48 = load i8*, i8** %4, align 8, !dbg !4064, !tbaa !727
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4064
  %50 = load i8*, i8** %49, align 8, !dbg !4064, !tbaa !727
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4064
  %52 = load i8*, i8** %51, align 8, !dbg !4064, !tbaa !727
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4064
  %54 = load i8*, i8** %53, align 8, !dbg !4064, !tbaa !727
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4064
  %56 = load i8*, i8** %55, align 8, !dbg !4064, !tbaa !727
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !4065
  br label %146, !dbg !4066

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #11, !dbg !4067
  %60 = load i8*, i8** %4, align 8, !dbg !4067, !tbaa !727
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4067
  %62 = load i8*, i8** %61, align 8, !dbg !4067, !tbaa !727
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4067
  %64 = load i8*, i8** %63, align 8, !dbg !4067, !tbaa !727
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4067
  %66 = load i8*, i8** %65, align 8, !dbg !4067, !tbaa !727
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4067
  %68 = load i8*, i8** %67, align 8, !dbg !4067, !tbaa !727
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4067
  %70 = load i8*, i8** %69, align 8, !dbg !4067, !tbaa !727
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !4068
  br label %146, !dbg !4069

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #11, !dbg !4070
  %74 = load i8*, i8** %4, align 8, !dbg !4070, !tbaa !727
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4070
  %76 = load i8*, i8** %75, align 8, !dbg !4070, !tbaa !727
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4070
  %78 = load i8*, i8** %77, align 8, !dbg !4070, !tbaa !727
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4070
  %80 = load i8*, i8** %79, align 8, !dbg !4070, !tbaa !727
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4070
  %82 = load i8*, i8** %81, align 8, !dbg !4070, !tbaa !727
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4070
  %84 = load i8*, i8** %83, align 8, !dbg !4070, !tbaa !727
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4070
  %86 = load i8*, i8** %85, align 8, !dbg !4070, !tbaa !727
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !4071
  br label %146, !dbg !4072

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #11, !dbg !4073
  %90 = load i8*, i8** %4, align 8, !dbg !4073, !tbaa !727
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4073
  %92 = load i8*, i8** %91, align 8, !dbg !4073, !tbaa !727
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4073
  %94 = load i8*, i8** %93, align 8, !dbg !4073, !tbaa !727
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4073
  %96 = load i8*, i8** %95, align 8, !dbg !4073, !tbaa !727
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4073
  %98 = load i8*, i8** %97, align 8, !dbg !4073, !tbaa !727
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4073
  %100 = load i8*, i8** %99, align 8, !dbg !4073, !tbaa !727
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4073
  %102 = load i8*, i8** %101, align 8, !dbg !4073, !tbaa !727
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4073
  %104 = load i8*, i8** %103, align 8, !dbg !4073, !tbaa !727
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !4074
  br label %146, !dbg !4075

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #11, !dbg !4076
  %108 = load i8*, i8** %4, align 8, !dbg !4076, !tbaa !727
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4076
  %110 = load i8*, i8** %109, align 8, !dbg !4076, !tbaa !727
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4076
  %112 = load i8*, i8** %111, align 8, !dbg !4076, !tbaa !727
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4076
  %114 = load i8*, i8** %113, align 8, !dbg !4076, !tbaa !727
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4076
  %116 = load i8*, i8** %115, align 8, !dbg !4076, !tbaa !727
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4076
  %118 = load i8*, i8** %117, align 8, !dbg !4076, !tbaa !727
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4076
  %120 = load i8*, i8** %119, align 8, !dbg !4076, !tbaa !727
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4076
  %122 = load i8*, i8** %121, align 8, !dbg !4076, !tbaa !727
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4076
  %124 = load i8*, i8** %123, align 8, !dbg !4076, !tbaa !727
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !4077
  br label %146, !dbg !4078

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #11, !dbg !4079
  %128 = load i8*, i8** %4, align 8, !dbg !4079, !tbaa !727
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4079
  %130 = load i8*, i8** %129, align 8, !dbg !4079, !tbaa !727
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4079
  %132 = load i8*, i8** %131, align 8, !dbg !4079, !tbaa !727
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4079
  %134 = load i8*, i8** %133, align 8, !dbg !4079, !tbaa !727
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4079
  %136 = load i8*, i8** %135, align 8, !dbg !4079, !tbaa !727
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4079
  %138 = load i8*, i8** %137, align 8, !dbg !4079, !tbaa !727
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4079
  %140 = load i8*, i8** %139, align 8, !dbg !4079, !tbaa !727
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4079
  %142 = load i8*, i8** %141, align 8, !dbg !4079, !tbaa !727
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4079
  %144 = load i8*, i8** %143, align 8, !dbg !4079, !tbaa !727
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !4080
  br label %146, !dbg !4081

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4082
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4083 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4087, metadata !719), !dbg !4093
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4088, metadata !719), !dbg !4094
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4089, metadata !719), !dbg !4095
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4090, metadata !719), !dbg !4096
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4091, metadata !719), !dbg !4097
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4092, metadata !719), !dbg !4098
  br label %6, !dbg !4099

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4092, metadata !719), !dbg !4098
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4101
  %9 = load i8*, i8** %8, align 8, !dbg !4101, !tbaa !727
  %10 = icmp eq i8* %9, null, !dbg !4104
  %11 = add i64 %7, 1, !dbg !4106
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4092, metadata !719), !dbg !4098
  br i1 %10, label %12, label %6, !dbg !4104, !llvm.loop !4108

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4111
  ret void, !dbg !4112
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4113 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4124, metadata !719), !dbg !4132
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4125, metadata !719), !dbg !4133
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4126, metadata !719), !dbg !4134
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4127, metadata !719), !dbg !4135
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4128, metadata !719), !dbg !4136
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4137
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !4137
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4130, metadata !719), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4129, metadata !719), !dbg !4139
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4140
  %12 = icmp ult i32 %11, 41, !dbg !4140
  br i1 %12, label %13, label %18, !dbg !4140

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4144
  %15 = sext i32 %11 to i64, !dbg !4144
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4144
  %17 = add i32 %11, 8, !dbg !4144
  store i32 %17, i32* %8, align 8, !dbg !4144
  br label %21, !dbg !4144

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4146
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4146
  store i8* %20, i8** %10, align 8, !dbg !4146
  br label %21, !dbg !4146

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4140
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4148
  %25 = load i8*, i8** %24, align 8, !dbg !4148
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4150
  store i8* %25, i8** %26, align 16, !dbg !4151, !tbaa !727
  %27 = icmp eq i8* %25, null, !dbg !4152
  br i1 %27, label %30, label %28, !dbg !4153

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %29 = icmp ult i32 %22, 41, !dbg !4140
  br i1 %29, label %35, label %32, !dbg !4140

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4155
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !4156
  ret void, !dbg !4156

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4146
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4146
  store i8* %34, i8** %10, align 8, !dbg !4146
  br label %40, !dbg !4146

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4144
  %37 = sext i32 %22 to i64, !dbg !4144
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4144
  %39 = add i32 %22, 8, !dbg !4144
  store i32 %39, i32* %8, align 8, !dbg !4144
  br label %40, !dbg !4144

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4140
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4148
  %44 = load i8*, i8** %43, align 8, !dbg !4148
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4150
  store i8* %44, i8** %45, align 8, !dbg !4151, !tbaa !727
  %46 = icmp eq i8* %44, null, !dbg !4152
  br i1 %46, label %30, label %47, !dbg !4153

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %48 = icmp ult i32 %41, 41, !dbg !4140
  br i1 %48, label %52, label %49, !dbg !4140

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4146
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4146
  store i8* %51, i8** %10, align 8, !dbg !4146
  br label %57, !dbg !4146

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4144
  %54 = sext i32 %41 to i64, !dbg !4144
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4144
  %56 = add i32 %41, 8, !dbg !4144
  store i32 %56, i32* %8, align 8, !dbg !4144
  br label %57, !dbg !4144

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4140
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4148
  %61 = load i8*, i8** %60, align 8, !dbg !4148
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4150
  store i8* %61, i8** %62, align 16, !dbg !4151, !tbaa !727
  %63 = icmp eq i8* %61, null, !dbg !4152
  br i1 %63, label %30, label %64, !dbg !4153

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %65 = icmp ult i32 %58, 41, !dbg !4140
  br i1 %65, label %69, label %66, !dbg !4140

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4146
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4146
  store i8* %68, i8** %10, align 8, !dbg !4146
  br label %74, !dbg !4146

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4144
  %71 = sext i32 %58 to i64, !dbg !4144
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4144
  %73 = add i32 %58, 8, !dbg !4144
  store i32 %73, i32* %8, align 8, !dbg !4144
  br label %74, !dbg !4144

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4140
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4148
  %78 = load i8*, i8** %77, align 8, !dbg !4148
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4150
  store i8* %78, i8** %79, align 8, !dbg !4151, !tbaa !727
  %80 = icmp eq i8* %78, null, !dbg !4152
  br i1 %80, label %30, label %81, !dbg !4153

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %82 = icmp ult i32 %75, 41, !dbg !4140
  br i1 %82, label %86, label %83, !dbg !4140

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4146
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4146
  store i8* %85, i8** %10, align 8, !dbg !4146
  br label %91, !dbg !4146

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4144
  %88 = sext i32 %75 to i64, !dbg !4144
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4144
  %90 = add i32 %75, 8, !dbg !4144
  store i32 %90, i32* %8, align 8, !dbg !4144
  br label %91, !dbg !4144

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4140
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4148
  %95 = load i8*, i8** %94, align 8, !dbg !4148
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4150
  store i8* %95, i8** %96, align 16, !dbg !4151, !tbaa !727
  %97 = icmp eq i8* %95, null, !dbg !4152
  br i1 %97, label %30, label %98, !dbg !4153

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %99 = icmp ult i32 %92, 41, !dbg !4140
  br i1 %99, label %103, label %100, !dbg !4140

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4146
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4146
  store i8* %102, i8** %10, align 8, !dbg !4146
  br label %108, !dbg !4146

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4144
  %105 = sext i32 %92 to i64, !dbg !4144
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4144
  %107 = add i32 %92, 8, !dbg !4144
  store i32 %107, i32* %8, align 8, !dbg !4144
  br label %108, !dbg !4144

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4148
  %111 = load i8*, i8** %110, align 8, !dbg !4148
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4150
  store i8* %111, i8** %112, align 8, !dbg !4151, !tbaa !727
  %113 = icmp eq i8* %111, null, !dbg !4152
  br i1 %113, label %30, label %114, !dbg !4153

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %115 = load i8*, i8** %10, align 8, !dbg !4146
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4146
  store i8* %116, i8** %10, align 8, !dbg !4146
  %117 = bitcast i8* %115 to i8**, !dbg !4148
  %118 = load i8*, i8** %117, align 8, !dbg !4148
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4150
  store i8* %118, i8** %119, align 16, !dbg !4151, !tbaa !727
  %120 = icmp eq i8* %118, null, !dbg !4152
  br i1 %120, label %30, label %121, !dbg !4153

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %122 = load i8*, i8** %10, align 8, !dbg !4146
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4146
  store i8* %123, i8** %10, align 8, !dbg !4146
  %124 = bitcast i8* %122 to i8**, !dbg !4148
  %125 = load i8*, i8** %124, align 8, !dbg !4148
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4150
  store i8* %125, i8** %126, align 8, !dbg !4151, !tbaa !727
  %127 = icmp eq i8* %125, null, !dbg !4152
  br i1 %127, label %30, label %128, !dbg !4153

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %129 = load i8*, i8** %10, align 8, !dbg !4146
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4146
  store i8* %130, i8** %10, align 8, !dbg !4146
  %131 = bitcast i8* %129 to i8**, !dbg !4148
  %132 = load i8*, i8** %131, align 8, !dbg !4148
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4150
  store i8* %132, i8** %133, align 16, !dbg !4151, !tbaa !727
  %134 = icmp eq i8* %132, null, !dbg !4152
  br i1 %134, label %30, label %135, !dbg !4153

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %136 = load i8*, i8** %10, align 8, !dbg !4146
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4146
  store i8* %137, i8** %10, align 8, !dbg !4146
  %138 = bitcast i8* %136 to i8**, !dbg !4148
  %139 = load i8*, i8** %138, align 8, !dbg !4148
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4150
  store i8* %139, i8** %140, align 8, !dbg !4151, !tbaa !727
  %141 = icmp eq i8* %139, null, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4129, metadata !719), !dbg !4139
  %142 = select i1 %141, i64 9, i64 10, !dbg !4153
  br label %30, !dbg !4153
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4157 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4161, metadata !719), !dbg !4171
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4162, metadata !719), !dbg !4172
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4163, metadata !719), !dbg !4173
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4164, metadata !719), !dbg !4174
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4175
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4175
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4165, metadata !719), !dbg !4176
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4177
  call void @llvm.va_start(i8* nonnull %6), !dbg !4177
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4178
  call void @llvm.va_end(i8* nonnull %6), !dbg !4179
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4180
  ret void, !dbg !4180
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4181 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #11, !dbg !4182
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.104, i64 0, i64 0)) #11, !dbg !4183
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #11, !dbg !4185
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.107, i64 0, i64 0)) #11, !dbg !4186
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.108, i64 0, i64 0), i32 5) #11, !dbg !4187
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4187, !tbaa !727
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4188
  ret void, !dbg !4189
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4190 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4194, metadata !719), !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4195, metadata !719), !dbg !4197
  %3 = udiv i64 9223372036854775807, %1, !dbg !4198
  %4 = icmp ult i64 %3, %0, !dbg !4198
  br i1 %4, label %5, label %6, !dbg !4200

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4201
  unreachable, !dbg !4201

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4202
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4203, metadata !719) #11, !dbg !4210
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4212
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4209, metadata !719) #11, !dbg !4213
  %9 = icmp eq i8* %8, null, !dbg !4214
  %10 = icmp ne i64 %7, 0, !dbg !4216
  %11 = and i1 %10, %9, !dbg !4218
  br i1 %11, label %12, label %13, !dbg !4218

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4219
  unreachable, !dbg !4219

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4220
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4204 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4203, metadata !719), !dbg !4221
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4222
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4209, metadata !719), !dbg !4223
  %3 = icmp eq i8* %2, null, !dbg !4224
  %4 = icmp ne i64 %0, 0, !dbg !4225
  %5 = and i1 %4, %3, !dbg !4226
  br i1 %5, label %6, label %7, !dbg !4226

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4227
  unreachable, !dbg !4227

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4228
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4229 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4233, metadata !719), !dbg !4236
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4234, metadata !719), !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4235, metadata !719), !dbg !4238
  %4 = udiv i64 9223372036854775807, %2, !dbg !4239
  %5 = icmp ult i64 %4, %1, !dbg !4239
  br i1 %5, label %6, label %7, !dbg !4241

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4242
  unreachable, !dbg !4242

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4243
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4244, metadata !719) #11, !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4249, metadata !719) #11, !dbg !4252
  %9 = icmp eq i64 %8, 0, !dbg !4253
  %10 = icmp ne i8* %0, null, !dbg !4255
  %11 = and i1 %10, %9, !dbg !4257
  br i1 %11, label %12, label %13, !dbg !4257

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4258
  br label %19, !dbg !4260

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4261
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4244, metadata !719) #11, !dbg !4250
  %15 = icmp eq i8* %14, null, !dbg !4262
  %16 = icmp ne i64 %8, 0, !dbg !4264
  %17 = and i1 %16, %15, !dbg !4266
  br i1 %17, label %18, label %19, !dbg !4266

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4267
  unreachable, !dbg !4267

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4268
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4245 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4244, metadata !719), !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4249, metadata !719), !dbg !4270
  %3 = icmp eq i64 %1, 0, !dbg !4271
  %4 = icmp ne i8* %0, null, !dbg !4272
  %5 = and i1 %4, %3, !dbg !4273
  br i1 %5, label %6, label %7, !dbg !4273

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4274
  br label %13, !dbg !4275

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4276
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4244, metadata !719), !dbg !4269
  %9 = icmp eq i8* %8, null, !dbg !4277
  %10 = icmp ne i64 %1, 0, !dbg !4278
  %11 = and i1 %10, %9, !dbg !4279
  br i1 %11, label %12, label %13, !dbg !4279

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4280
  unreachable, !dbg !4280

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4281
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !677 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !682, metadata !719), !dbg !4282
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !683, metadata !719), !dbg !4283
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !684, metadata !719), !dbg !4284
  %4 = load i64, i64* %1, align 8, !dbg !4285, !tbaa !3079
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !685, metadata !719), !dbg !4286
  %5 = icmp eq i8* %0, null, !dbg !4287
  br i1 %5, label %6, label %13, !dbg !4289

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4290
  br i1 %7, label %8, label %17, !dbg !4293

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4294
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !685, metadata !719), !dbg !4286
  %10 = icmp ugt i64 %2, 128, !dbg !4296
  %11 = zext i1 %10 to i64, !dbg !4296
  %12 = add nuw nsw i64 %9, %11, !dbg !4297
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !685, metadata !719), !dbg !4286
  br label %17, !dbg !4298

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4299
  %15 = icmp ugt i64 %14, %4, !dbg !4302
  br i1 %15, label %20, label %16, !dbg !4303

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4304
  unreachable, !dbg !4304

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !685, metadata !719), !dbg !4286
  store i64 %18, i64* %1, align 8, !dbg !4305, !tbaa !3079
  %19 = mul i64 %18, %2, !dbg !4306
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4244, metadata !719) #11, !dbg !4307
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4249, metadata !719) #11, !dbg !4309
  br label %27, !dbg !4310

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4311
  %22 = add i64 %4, 1, !dbg !4312
  %23 = add i64 %22, %21, !dbg !4313
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !685, metadata !719), !dbg !4286
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !685, metadata !719), !dbg !4286
  store i64 %23, i64* %1, align 8, !dbg !4305, !tbaa !3079
  %24 = mul i64 %23, %2, !dbg !4306
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4244, metadata !719) #11, !dbg !4307
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4249, metadata !719) #11, !dbg !4309
  %25 = icmp eq i64 %24, 0, !dbg !4314
  br i1 %25, label %26, label %27, !dbg !4310

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4315
  br label %34, !dbg !4316

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4317
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4244, metadata !719) #11, !dbg !4307
  %30 = icmp eq i8* %29, null, !dbg !4318
  %31 = icmp ne i64 %28, 0, !dbg !4319
  %32 = and i1 %31, %30, !dbg !4320
  br i1 %32, label %33, label %34, !dbg !4320

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4321
  unreachable, !dbg !4321

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4322
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4323 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4325, metadata !719), !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4203, metadata !719) #11, !dbg !4327
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4329
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4209, metadata !719) #11, !dbg !4330
  %3 = icmp eq i8* %2, null, !dbg !4331
  %4 = icmp ne i64 %0, 0, !dbg !4332
  %5 = and i1 %4, %3, !dbg !4333
  br i1 %5, label %6, label %7, !dbg !4333

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4334
  unreachable, !dbg !4334

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4335
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4336 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4340, metadata !719), !dbg !4342
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4341, metadata !719), !dbg !4343
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !682, metadata !719) #11, !dbg !4344
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !683, metadata !719) #11, !dbg !4346
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !684, metadata !719) #11, !dbg !4347
  %3 = load i64, i64* %1, align 8, !dbg !4348, !tbaa !3079
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !685, metadata !719) #11, !dbg !4349
  %4 = icmp eq i8* %0, null, !dbg !4350
  br i1 %4, label %5, label %8, !dbg !4351

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !685, metadata !719) #11, !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !685, metadata !719) #11, !dbg !4349
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4353
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !685, metadata !719) #11, !dbg !4349
  store i64 %7, i64* %1, align 8, !dbg !4354, !tbaa !3079
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4244, metadata !719) #11, !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4249, metadata !719) #11, !dbg !4357
  br label %17, !dbg !4358

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4359
  br i1 %9, label %11, label %10, !dbg !4360

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4361
  unreachable, !dbg !4361

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4362
  %13 = add i64 %3, 1, !dbg !4363
  %14 = add i64 %13, %12, !dbg !4364
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !685, metadata !719) #11, !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !685, metadata !719) #11, !dbg !4349
  store i64 %14, i64* %1, align 8, !dbg !4354, !tbaa !3079
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4244, metadata !719) #11, !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4249, metadata !719) #11, !dbg !4357
  %15 = icmp eq i64 %14, 0, !dbg !4365
  br i1 %15, label %16, label %17, !dbg !4358

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4366
  br label %24, !dbg !4367

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4368
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4244, metadata !719) #11, !dbg !4355
  %20 = icmp eq i8* %19, null, !dbg !4369
  %21 = icmp ne i64 %18, 0, !dbg !4370
  %22 = and i1 %21, %20, !dbg !4371
  br i1 %22, label %23, label %24, !dbg !4371

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4372
  unreachable, !dbg !4372

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4373
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4374 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4376, metadata !719), !dbg !4377
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4203, metadata !719) #11, !dbg !4378
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4380
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4209, metadata !719) #11, !dbg !4381
  %3 = icmp eq i8* %2, null, !dbg !4382
  %4 = icmp ne i64 %0, 0, !dbg !4383
  %5 = and i1 %4, %3, !dbg !4384
  br i1 %5, label %6, label %7, !dbg !4384

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4385
  unreachable, !dbg !4385

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4386
  ret i8* %2, !dbg !4387
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4388 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4390, metadata !719), !dbg !4393
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4391, metadata !719), !dbg !4394
  %3 = udiv i64 9223372036854775807, %1, !dbg !4395
  %4 = icmp ult i64 %3, %0, !dbg !4395
  br i1 %4, label %8, label %5, !dbg !4397

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4398
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4392, metadata !719), !dbg !4400
  %7 = icmp eq i8* %6, null, !dbg !4401
  br i1 %7, label %8, label %9, !dbg !4402

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4404
  unreachable, !dbg !4404

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4405
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4406 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4410, metadata !719), !dbg !4412
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4411, metadata !719), !dbg !4413
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4203, metadata !719) #11, !dbg !4414
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4416
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4209, metadata !719) #11, !dbg !4417
  %4 = icmp eq i8* %3, null, !dbg !4418
  %5 = icmp ne i64 %1, 0, !dbg !4419
  %6 = and i1 %5, %4, !dbg !4420
  br i1 %6, label %7, label %8, !dbg !4420

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4421
  unreachable, !dbg !4421

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4422
  ret i8* %3, !dbg !4423
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4424 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4426, metadata !719), !dbg !4427
  %2 = tail call i64 @strlen(i8* %0) #9, !dbg !4428
  %3 = add i64 %2, 1, !dbg !4429
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4410, metadata !719) #11, !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4411, metadata !719) #11, !dbg !4433
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4203, metadata !719) #11, !dbg !4434
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4436
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4209, metadata !719) #11, !dbg !4437
  %5 = icmp eq i8* %4, null, !dbg !4438
  %6 = icmp ne i64 %3, 0, !dbg !4439
  %7 = and i1 %6, %5, !dbg !4440
  br i1 %7, label %8, label %9, !dbg !4440

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4441
  unreachable, !dbg !4441

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4442
  ret i8* %4, !dbg !4443
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4444 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4446, !tbaa !1274
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #11, !dbg !4447
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #11, !dbg !4448
  tail call void @abort() #14, !dbg !4450
  unreachable, !dbg !4450
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xprintf(i8* noalias, ...) local_unnamed_addr #6 !dbg !4451 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4456, metadata !719), !dbg !4469
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !4470
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #11, !dbg !4470
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !4457, metadata !719), !dbg !4471
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !4472
  call void @llvm.va_start(i8* nonnull %3), !dbg !4472
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4473, metadata !719) #11, !dbg !4481
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4479, metadata !719) #11, !dbg !4483
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4484, metadata !719) #11, !dbg !4489
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4488, metadata !719) #11, !dbg !4491
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4492, !tbaa !727, !noalias !4493
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !4498
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4480, metadata !719) #11, !dbg !4499
  %7 = icmp slt i32 %6, 0, !dbg !4500
  br i1 %7, label %8, label %17, !dbg !4502

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4503, !tbaa !727
  %10 = call i32 @ferror(%struct._IO_FILE* %9) #11, !dbg !4505
  %11 = icmp eq i32 %10, 0, !dbg !4505
  br i1 %11, label %12, label %17, !dbg !4506

; <label>:12:                                     ; preds = %8
  %13 = load volatile i32, i32* @exit_failure, align 4, !dbg !4508, !tbaa !1274
  %14 = tail call i32* @__errno_location() #1, !dbg !4509
  %15 = load i32, i32* %14, align 4, !dbg !4509, !tbaa !1274
  %16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11, !dbg !4510
  call void (i32, i32, i8*, ...) @error(i32 %13, i32 %15, i8* %16) #11, !dbg !4511
  br label %17, !dbg !4513

; <label>:17:                                     ; preds = %1, %8, %12
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4468, metadata !719), !dbg !4514
  call void @llvm.va_end(i8* nonnull %3), !dbg !4515
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #11, !dbg !4516
  ret i32 %6, !dbg !4517
}

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @xvprintf(i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !4474 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4473, metadata !719), !dbg !4518
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !4479, metadata !719), !dbg !4519
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4484, metadata !719) #11, !dbg !4520
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !4488, metadata !719) #11, !dbg !4522
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4523, !tbaa !727, !noalias !4524
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #11, !dbg !4527
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4480, metadata !719), !dbg !4528
  %5 = icmp slt i32 %4, 0, !dbg !4529
  br i1 %5, label %6, label %15, !dbg !4530

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4531, !tbaa !727
  %8 = tail call i32 @ferror(%struct._IO_FILE* %7) #11, !dbg !4532
  %9 = icmp eq i32 %8, 0, !dbg !4532
  br i1 %9, label %10, label %15, !dbg !4533

; <label>:10:                                     ; preds = %6
  %11 = load volatile i32, i32* @exit_failure, align 4, !dbg !4534, !tbaa !1274
  %12 = tail call i32* @__errno_location() #1, !dbg !4535
  %13 = load i32, i32* %12, align 4, !dbg !4535, !tbaa !1274
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11, !dbg !4536
  tail call void (i32, i32, i8*, ...) @error(i32 %11, i32 %13, i8* %14) #11, !dbg !4537
  br label %15, !dbg !4538

; <label>:15:                                     ; preds = %6, %10, %2
  ret i32 %4, !dbg !4539
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xfprintf(%struct._IO_FILE* noalias, i8* noalias, ...) local_unnamed_addr #6 !dbg !4540 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4585, metadata !719), !dbg !4589
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4586, metadata !719), !dbg !4590
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4591
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11, !dbg !4591
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4587, metadata !719), !dbg !4592
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !4593
  call void @llvm.va_start(i8* nonnull %4), !dbg !4593
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4594, metadata !719) #11, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4599, metadata !719) #11, !dbg !4604
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, i64 0, metadata !4600, metadata !719) #11, !dbg !4605
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4606, metadata !719) #11, !dbg !4611
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4609, metadata !719) #11, !dbg !4613
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, i64 0, metadata !4610, metadata !719) #11, !dbg !4614
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %5) #11, !dbg !4615
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4601, metadata !719) #11, !dbg !4616
  %7 = icmp slt i32 %6, 0, !dbg !4617
  br i1 %7, label %8, label %16, !dbg !4619

; <label>:8:                                      ; preds = %2
  %9 = call i32 @ferror(%struct._IO_FILE* %0) #11, !dbg !4620
  %10 = icmp eq i32 %9, 0, !dbg !4620
  br i1 %10, label %11, label %16, !dbg !4622

; <label>:11:                                     ; preds = %8
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4624, !tbaa !1274
  %13 = tail call i32* @__errno_location() #1, !dbg !4625
  %14 = load i32, i32* %13, align 4, !dbg !4625, !tbaa !1274
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11, !dbg !4626
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 %14, i8* %15) #11, !dbg !4627
  br label %16, !dbg !4629

; <label>:16:                                     ; preds = %2, %8, %11
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4588, metadata !719), !dbg !4630
  call void @llvm.va_end(i8* nonnull %4), !dbg !4631
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11, !dbg !4632
  ret i32 %6, !dbg !4633
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xvfprintf(%struct._IO_FILE* noalias, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !4595 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4594, metadata !719), !dbg !4634
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4599, metadata !719), !dbg !4635
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, i64 0, metadata !4600, metadata !719), !dbg !4636
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4606, metadata !719) #11, !dbg !4637
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4609, metadata !719) #11, !dbg !4639
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, i64 0, metadata !4610, metadata !719) #11, !dbg !4640
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* %2) #11, !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4601, metadata !719), !dbg !4642
  %5 = icmp slt i32 %4, 0, !dbg !4643
  br i1 %5, label %6, label %14, !dbg !4644

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @ferror(%struct._IO_FILE* %0) #11, !dbg !4645
  %8 = icmp eq i32 %7, 0, !dbg !4645
  br i1 %8, label %9, label %14, !dbg !4646

; <label>:9:                                      ; preds = %6
  %10 = load volatile i32, i32* @exit_failure, align 4, !dbg !4647, !tbaa !1274
  %11 = tail call i32* @__errno_location() #1, !dbg !4648
  %12 = load i32, i32* %11, align 4, !dbg !4648, !tbaa !1274
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11, !dbg !4649
  tail call void (i32, i32, i8*, ...) @error(i32 %10, i32 %12, i8* %13) #11, !dbg !4650
  br label %14, !dbg !4651

; <label>:14:                                     ; preds = %6, %9, %3
  ret i32 %4, !dbg !4652
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4653 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4656, metadata !719), !dbg !4662
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4657, metadata !719), !dbg !4663
  %3 = icmp eq i64 %0, 0, !dbg !4664
  %4 = icmp eq i64 %1, 0, !dbg !4665
  %5 = or i1 %3, %4, !dbg !4667
  br i1 %5, label %12, label %6, !dbg !4667

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4668
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4659, metadata !719), !dbg !4669
  %8 = udiv i64 %7, %1, !dbg !4670
  %9 = icmp eq i64 %8, %0, !dbg !4672
  br i1 %9, label %12, label %10, !dbg !4673

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4674
  store i32 12, i32* %11, align 4, !dbg !4676, !tbaa !1274
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4656, metadata !719), !dbg !4662
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4657, metadata !719), !dbg !4663
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4677
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4658, metadata !719), !dbg !4678
  br label %16, !dbg !4679

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4680
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4681 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4698, metadata !719), !dbg !4707
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4699, metadata !719), !dbg !4708
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4700, metadata !719), !dbg !4709
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4701, metadata !719), !dbg !4710
  %6 = bitcast i32* %5 to i8*, !dbg !4711
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !4711
  %7 = icmp eq i32* %0, null, !dbg !4712
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4698, metadata !719), !dbg !4707
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4714
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4698, metadata !719), !dbg !4707
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4715
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4702, metadata !719), !dbg !4716
  %10 = icmp ugt i64 %9, -3, !dbg !4717
  %11 = icmp ne i64 %2, 0, !dbg !4718
  %12 = and i1 %11, %10, !dbg !4720
  br i1 %12, label %13, label %18, !dbg !4720

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4721
  br i1 %14, label %18, label %15, !dbg !4723

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4725, !tbaa !889
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4704, metadata !719), !dbg !4726
  %17 = zext i8 %16 to i32, !dbg !4727
  store i32 %17, i32* %8, align 4, !dbg !4728, !tbaa !1274
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !4729
  ret i64 %19, !dbg !4729
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4730 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4775, metadata !719), !dbg !4780
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4781
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4782, metadata !719), !dbg !4785
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4787
  %4 = load i32, i32* %3, align 8, !dbg !4787, !tbaa !4788
  %5 = and i32 %4, 32, !dbg !4787
  %6 = icmp eq i32 %5, 0, !dbg !4789
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4790
  %8 = icmp ne i32 %7, 0, !dbg !4791
  br i1 %6, label %9, label %19, !dbg !4792

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4794
  %11 = icmp ne i64 %2, 0, !dbg !4794
  %12 = or i1 %11, %10, !dbg !4794
  %13 = sext i1 %8 to i32, !dbg !4794
  br i1 %12, label %22, label %14, !dbg !4794

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4796
  %16 = load i32, i32* %15, align 4, !dbg !4796, !tbaa !1274
  %17 = icmp ne i32 %16, 9, !dbg !4798
  %18 = sext i1 %17 to i32, !dbg !4798
  br label %22, !dbg !4798

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4800

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4802
  store i32 0, i32* %21, align 4, !dbg !4804, !tbaa !1274
  br label %22, !dbg !4802

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4805
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4806 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4811, metadata !719), !dbg !4831
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4812, metadata !719), !dbg !4832
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4833
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4813, metadata !719), !dbg !4834
  %3 = icmp eq i8* %2, null, !dbg !4835
  br i1 %3, label %15, label %4, !dbg !4836

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4821, metadata !719), !dbg !4837
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4822, metadata !719), !dbg !4838
  %5 = load i8, i8* %2, align 1, !dbg !4839, !tbaa !889
  %6 = icmp eq i8 %5, 67, !dbg !4841
  br i1 %6, label %7, label %11, !dbg !4844

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4846
  %9 = load i8, i8* %8, align 1, !dbg !4846, !tbaa !889
  %10 = icmp eq i8 %9, 0, !dbg !4849
  br i1 %10, label %14, label %11, !dbg !4851

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4827, metadata !719), !dbg !4853
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0)) #11, !dbg !4854
  %13 = icmp eq i32 %12, 0, !dbg !4856
  br i1 %13, label %14, label %15, !dbg !4858

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4812, metadata !719), !dbg !4832
  br label %15, !dbg !4860

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4861
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4862 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4874, metadata !719), !dbg !4948
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4941, metadata !719), !dbg !4950
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4951
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4866, metadata !719), !dbg !4952
  %4 = icmp eq i8* %3, null, !dbg !4953
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %3, !dbg !4955
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4866, metadata !719), !dbg !4952
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4956, !tbaa !727
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4888, metadata !719) #11, !dbg !4957
  %7 = icmp eq i8* %6, null, !dbg !4958
  br i1 %7, label %8, label %127, !dbg !4959

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.136, i64 0, i64 0)) #11, !dbg !4960
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4889, metadata !719) #11, !dbg !4961
  %10 = icmp eq i8* %9, null, !dbg !4962
  br i1 %10, label %14, label %11, !dbg !4964

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4965, !tbaa !889
  %13 = icmp eq i8 %12, 0, !dbg !4967
  br i1 %13, label %14, label %15, !dbg !4968

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4970

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.137, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4889, metadata !719) #11, !dbg !4961
  %17 = tail call i64 @strlen(i8* nonnull %16) #9, !dbg !4971
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4892, metadata !719) #11, !dbg !4972
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4894, metadata !719) #11, !dbg !4973
  %18 = icmp eq i64 %17, 0, !dbg !4974
  br i1 %18, label %24, label %19, !dbg !4975

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4976
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4976
  %22 = load i8, i8* %21, align 1, !dbg !4976, !tbaa !889
  %23 = icmp ne i8 %22, 47, !dbg !4978
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4979
  %27 = add i64 %17, 14, !dbg !4980
  %28 = add i64 %27, %26, !dbg !4981
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4982
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4891, metadata !719) #11, !dbg !4983
  %30 = icmp eq i8* %29, null, !dbg !4984
  br i1 %30, label %125, label %31, !dbg !4984

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4985
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4988

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4989, !tbaa !889
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4991
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4992
  br label %37, !dbg !4993

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4991
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4992
  br label %37, !dbg !4993

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4994
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4896, metadata !719) #11, !dbg !4995
  %39 = icmp slt i32 %38, 0, !dbg !4996
  br i1 %39, label %123, label %40, !dbg !4997

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.139, i64 0, i64 0)) #11, !dbg !4998
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4897, metadata !719) #11, !dbg !4999
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5000
  br i1 %42, label %48, label %43, !dbg !5001

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5002

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !5003
  br label %123, !dbg !5005

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4938, metadata !719) #11, !dbg !5002
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4939, metadata !719) #11, !dbg !5006
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !5007
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !5008
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5009, metadata !719) #11, !dbg !5014
  %53 = load i8*, i8** %46, align 8, !dbg !5016, !tbaa !5017
  %54 = load i8*, i8** %47, align 8, !dbg !5016, !tbaa !5018
  %55 = icmp ult i8* %53, %54, !dbg !5016
  br i1 %55, label %58, label %56, !dbg !5016, !prof !965

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5019
  br label %62, !dbg !5019

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5021
  store i8* %59, i8** %46, align 8, !dbg !5021, !tbaa !5017
  %60 = load i8, i8* %53, align 1, !dbg !5021, !tbaa !889
  %61 = zext i8 %60 to i32, !dbg !5021
  br label %62, !dbg !5021

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5023
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4940, metadata !719) #11, !dbg !5025
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5026

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5027

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5009, metadata !719) #11, !dbg !5027
  %66 = load i8*, i8** %46, align 8, !dbg !5031, !tbaa !5017
  %67 = load i8*, i8** %47, align 8, !dbg !5031, !tbaa !5018
  %68 = icmp ult i8* %66, %67, !dbg !5031
  br i1 %68, label %71, label %69, !dbg !5031, !prof !965

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5032
  br label %75, !dbg !5032

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5033
  store i8* %72, i8** %46, align 8, !dbg !5033, !tbaa !5017
  %73 = load i8, i8* %66, align 1, !dbg !5033, !tbaa !889
  %74 = zext i8 %73 to i32, !dbg !5033
  br label %75, !dbg !5033

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5034
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4940, metadata !719) #11, !dbg !5025
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5035, !llvm.loop !5037

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !5040
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.140, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !5041
  %80 = icmp slt i32 %79, 2, !dbg !5043
  br i1 %80, label %115, label %81, !dbg !5044

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #9, !dbg !5045
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4945, metadata !719) #11, !dbg !5046
  %83 = call i64 @strlen(i8* nonnull %45) #9, !dbg !5047
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4946, metadata !719) #11, !dbg !5048
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4947, metadata !719) #11, !dbg !5049
  %84 = icmp eq i64 %51, 0, !dbg !5050
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5052

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4939, metadata !719) #11, !dbg !5006
  %89 = add i64 %86, 2, !dbg !5053
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !5055
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4938, metadata !719) #11, !dbg !5002
  br label %95, !dbg !5056

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5057
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4939, metadata !719) #11, !dbg !5006
  %93 = add i64 %92, 1, !dbg !5059
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !5060
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4938, metadata !719) #11, !dbg !5002
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4938, metadata !719) #11, !dbg !5002
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4939, metadata !719) #11, !dbg !5006
  %98 = icmp eq i8* %97, null, !dbg !5061
  br i1 %98, label %99, label %100, !dbg !5063

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4939, metadata !719) #11, !dbg !5006
  call void @free(i8* %52) #11, !dbg !5064
  br label %116, !dbg !5066

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5067
  %102 = xor i64 %83, -1, !dbg !5068
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5068
  %104 = xor i64 %82, -1, !dbg !5069
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5069
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5070, metadata !719) #11, !dbg !5077
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5076, metadata !719) #11, !dbg !5077
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !5079
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !5080
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5070, metadata !719) #11, !dbg !5081
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5076, metadata !719) #11, !dbg !5081
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !5083
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !5084
  br label %111, !dbg !5085

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5002

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4938, metadata !719) #11, !dbg !5002
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4939, metadata !719) #11, !dbg !5006
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5085
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5085
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5002

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5002

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4938, metadata !719) #11, !dbg !5002
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4939, metadata !719) #11, !dbg !5006
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5085
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5085
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5086
  %120 = icmp eq i64 %117, 0, !dbg !5087
  br i1 %120, label %123, label %121, !dbg !5089

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5090
  store i8 0, i8* %122, align 1, !dbg !5092, !tbaa !889
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4888, metadata !719) #11, !dbg !4957
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4888, metadata !719) #11, !dbg !4957
  call void @free(i8* %29) #11, !dbg !5093
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4888, metadata !719) #11, !dbg !4957
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5094, !tbaa !727
  br label %127, !dbg !5095

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4867, metadata !719), !dbg !5096
  %129 = load i8, i8* %128, align 1, !dbg !5097, !tbaa !889
  %130 = icmp eq i8 %129, 0, !dbg !5098
  br i1 %130, label %157, label %131, !dbg !5099

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5101

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !5101
  %136 = icmp eq i32 %135, 0, !dbg !5102
  br i1 %136, label %143, label %137, !dbg !5103

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5104
  br i1 %138, label %139, label %147, !dbg !5106

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5107
  %141 = load i8, i8* %140, align 1, !dbg !5107, !tbaa !889
  %142 = icmp eq i8 %141, 0, !dbg !5109
  br i1 %142, label %143, label %147, !dbg !5110

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #9, !dbg !5112
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5114
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5115
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4866, metadata !719), !dbg !4952
  br label %157, !dbg !5116

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #9, !dbg !5117
  %149 = add i64 %148, 1, !dbg !5118
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5119
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4867, metadata !719), !dbg !5096
  %151 = call i64 @strlen(i8* %150) #9, !dbg !5120
  %152 = add i64 %151, 1, !dbg !5121
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5122
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4867, metadata !719), !dbg !5096
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4867, metadata !719), !dbg !5096
  %154 = load i8, i8* %153, align 1, !dbg !5097, !tbaa !889
  %155 = icmp eq i8 %154, 0, !dbg !5098
  br i1 %155, label %156, label %132, !dbg !5099, !llvm.loop !5123

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4952

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4866, metadata !719), !dbg !4952
  %159 = load i8, i8* %158, align 1, !dbg !5126, !tbaa !889
  %160 = icmp eq i8 %159, 0, !dbg !5128
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i8* %158, !dbg !5129
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4866, metadata !719), !dbg !4952
  ret i8* %161, !dbg !5130
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

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

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5131 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5176, metadata !719), !dbg !5180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5177, metadata !719), !dbg !5181
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5179, metadata !719), !dbg !5182
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5183
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5178, metadata !719), !dbg !5184
  %3 = icmp slt i32 %2, 0, !dbg !5185
  br i1 %3, label %4, label %6, !dbg !5187

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5188
  br label %24, !dbg !5189

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5190
  %8 = icmp eq i32 %7, 0, !dbg !5190
  br i1 %8, label %13, label %9, !dbg !5192

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5193
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !5195
  %12 = icmp eq i64 %11, -1, !dbg !5197
  br i1 %12, label %16, label %13, !dbg !5198

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !5199
  %15 = icmp eq i32 %14, 0, !dbg !5199
  br i1 %15, label %16, label %18, !dbg !5200

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5177, metadata !719), !dbg !5181
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5202
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5179, metadata !719), !dbg !5182
  br label %24, !dbg !5203

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5204
  %20 = load i32, i32* %19, align 4, !dbg !5204, !tbaa !1274
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5177, metadata !719), !dbg !5181
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5177, metadata !719), !dbg !5181
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5202
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5179, metadata !719), !dbg !5182
  %22 = icmp eq i32 %20, 0, !dbg !5205
  br i1 %22, label %24, label %23, !dbg !5203

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5207, !tbaa !1274
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5179, metadata !719), !dbg !5182
  br label %24, !dbg !5209

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5210
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5211 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5256, metadata !719), !dbg !5257
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5258
  br i1 %2, label %6, label %3, !dbg !5260

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5261
  %5 = icmp eq i32 %4, 0, !dbg !5261
  br i1 %5, label %6, label %8, !dbg !5263

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5265
  br label %17, !dbg !5266

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5267, metadata !719) #11, !dbg !5272
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5274
  %10 = load i32, i32* %9, align 8, !dbg !5274, !tbaa !4788
  %11 = and i32 %10, 256, !dbg !5276
  %12 = icmp eq i32 %11, 0, !dbg !5276
  br i1 %12, label %15, label %13, !dbg !5277

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !5278
  br label %15, !dbg !5278

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5279
  br label %17, !dbg !5280

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5281
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5282 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5328, metadata !719), !dbg !5334
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5329, metadata !719), !dbg !5335
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5330, metadata !719), !dbg !5336
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5337
  %5 = load i8*, i8** %4, align 8, !dbg !5337, !tbaa !5018
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5338
  %7 = load i8*, i8** %6, align 8, !dbg !5338, !tbaa !5017
  %8 = icmp eq i8* %5, %7, !dbg !5339
  br i1 %8, label %9, label %28, !dbg !5340

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5341
  %11 = load i8*, i8** %10, align 8, !dbg !5341, !tbaa !959
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5343
  %13 = load i8*, i8** %12, align 8, !dbg !5343, !tbaa !5344
  %14 = icmp eq i8* %11, %13, !dbg !5345
  br i1 %14, label %15, label %28, !dbg !5346

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5347
  %17 = load i8*, i8** %16, align 8, !dbg !5347, !tbaa !5348
  %18 = icmp eq i8* %17, null, !dbg !5349
  br i1 %18, label %19, label %28, !dbg !5350

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5352
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5353
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5331, metadata !719), !dbg !5355
  %22 = icmp eq i64 %21, -1, !dbg !5356
  br i1 %22, label %30, label %23, !dbg !5358

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5359
  %25 = load i32, i32* %24, align 8, !dbg !5360, !tbaa !4788
  %26 = and i32 %25, -17, !dbg !5360
  store i32 %26, i32* %24, align 8, !dbg !5360, !tbaa !4788
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5361
  store i64 %21, i64* %27, align 8, !dbg !5362, !tbaa !5363
  br label %30, !dbg !5364

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5365
  br label %30, !dbg !5366

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5367
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !90, !96, !125, !133, !140, !147, !210, !662, !664, !308, !672, !689, !691, !693, !695, !698, !700, !317, !703, !705, !707}
!llvm.ident = !{!709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709}
!llvm.module.flags = !{!710, !711, !712, !713}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "posixly_correct", scope: !2, file: !3, line: 79, type: !87, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !51)
!3 = !DIFile(filename: "src/printf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!8 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!9 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!10 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!11 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!12 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!13 = !DIEnumerator(name: "c_quoting_style", value: 5)
!14 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!15 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!16 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!17 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!18 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 46, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256)
!23 = !DIEnumerator(name: "_ISlower", value: 512)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!27 = !DIEnumerator(name: "_ISspace", value: 8192)
!28 = !DIEnumerator(name: "_ISprint", value: 16384)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768)
!30 = !DIEnumerator(name: "_ISblank", value: 1)
!31 = !DIEnumerator(name: "_IScntrl", value: 2)
!32 = !DIEnumerator(name: "_ISpunct", value: 4)
!33 = !DIEnumerator(name: "_ISalnum", value: 8)
!34 = !{!35, !36, !39, !41, !44, !47, !48, !49, !43, !50}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 62, baseType: !38)
!37 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !{!52, !0, !54, !84}
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "exit_status", scope: !2, file: !3, line: 76, type: !49, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "infomap", scope: !56, file: !57, line: 632, type: !81, isLocal: true, isDefinition: true)
!56 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !57, file: !57, line: 630, type: !58, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !60)
!57 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !DISubroutineType(types: !59)
!59 = !{null, !44}
!60 = !{!61, !62, !63, !70, !72, !73, !74, !77, !78, !80}
!61 = !DILocalVariable(name: "program", arg: 1, scope: !56, file: !57, line: 630, type: !44)
!62 = !DILocalVariable(name: "node", scope: !56, file: !57, line: 642, type: !44)
!63 = !DILocalVariable(name: "map_prog", scope: !56, file: !57, line: 643, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !56, file: !57, line: 632, size: 128, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !66, file: !57, line: 632, baseType: !44, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !66, file: !57, line: 632, baseType: !44, size: 64, offset: 64)
!70 = !DILocalVariable(name: "__s1_len", scope: !71, file: !57, line: 645, type: !36)
!71 = distinct !DILexicalBlock(scope: !56, file: !57, line: 645, column: 33)
!72 = !DILocalVariable(name: "__s2_len", scope: !71, file: !57, line: 645, type: !36)
!73 = !DILocalVariable(name: "lc_messages", scope: !56, file: !57, line: 655, type: !44)
!74 = !DILocalVariable(name: "__s1_len", scope: !75, file: !57, line: 656, type: !36)
!75 = distinct !DILexicalBlock(scope: !76, file: !57, line: 656, column: 22)
!76 = distinct !DILexicalBlock(scope: !56, file: !57, line: 656, column: 7)
!77 = !DILocalVariable(name: "__s2_len", scope: !75, file: !57, line: 656, type: !36)
!78 = !DILocalVariable(name: "__s2", scope: !79, file: !57, line: 656, type: !41)
!79 = distinct !DILexicalBlock(scope: !75, file: !57, line: 656, column: 22)
!80 = !DILocalVariable(name: "__result", scope: !79, file: !57, line: 656, type: !49)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 896, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 7)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "cfcc_msg", scope: !2, file: !3, line: 83, type: !86, isLocal: true, isDefinition: true)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!87 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "Version", scope: !90, file: !91, line: 2, type: !44, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !93)
!91 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{}
!93 = !{!88}
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !96, file: !121, line: 51, type: !122, isLocal: true, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !98, globals: !120)
!97 = !DIFile(filename: "./lib/c-strtold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!47, !99}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !100, line: 42, baseType: !101)
!100 = !DIFile(filename: "/usr/include/xlocale.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !100, line: 39, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !100, line: 27, size: 1856, elements: !104)
!104 = !{!105, !111, !114, !117, !118}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !103, file: !100, line: 30, baseType: !106, size: 832)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 832, elements: !109)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !100, line: 30, flags: DIFlagFwdDecl)
!109 = !{!110}
!110 = !DISubrange(count: 13)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !103, file: !100, line: 33, baseType: !112, size: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !103, file: !100, line: 34, baseType: !115, size: 64, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !103, file: !100, line: 35, baseType: !115, size: 64, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !103, file: !100, line: 38, baseType: !119, size: 832, offset: 1024)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 832, elements: !109)
!120 = !{!94}
!121 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!123 = !DIGlobalVariableExpression(var: !124)
!124 = distinct !DIGlobalVariable(name: "file_name", scope: !125, file: !130, line: 36, type: !44, isLocal: true, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !127)
!126 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !{!123, !128}
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !125, file: !130, line: 46, type: !87, isLocal: true, isDefinition: true)
!130 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "exit_failure", scope: !133, file: !136, line: 24, type: !137, isLocal: false, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !135)
!134 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!131}
!136 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!138 = !DIGlobalVariableExpression(var: !139)
!139 = distinct !DIGlobalVariable(name: "program_name", scope: !140, file: !144, line: 33, type: !44, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !142, globals: !143)
!141 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !{!35, !47}
!143 = !{!138}
!144 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !147, file: !159, line: 77, type: !194, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !155, globals: !156)
!148 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!149 = !{!5, !150, !19}
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !151)
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!153 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!154 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!155 = !{!49, !50, !36, !47}
!156 = !{!145, !157, !164, !176, !178, !183, !190, !192}
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !147, file: !159, line: 93, type: !160, isLocal: false, isDefinition: true)
!159 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 320, elements: !162)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!162 = !{!163}
!163 = !DISubrange(count: 10)
!164 = !DIGlobalVariableExpression(var: !165)
!165 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !147, file: !159, line: 1043, type: !166, isLocal: false, isDefinition: true)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !159, line: 57, size: 448, elements: !167)
!167 = !{!168, !169, !170, !174, !175}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !166, file: !159, line: 60, baseType: !5, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !159, line: 63, baseType: !49, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !166, file: !159, line: 67, baseType: !171, size: 256, offset: 64)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !166, file: !159, line: 70, baseType: !44, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !166, file: !159, line: 73, baseType: !44, size: 64, offset: 384)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !147, file: !159, line: 108, type: !166, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179)
!179 = distinct !DIGlobalVariable(name: "slot0", scope: !147, file: !159, line: 834, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 256)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "slotvec", scope: !147, file: !159, line: 837, type: !185, isLocal: true, isDefinition: true)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !159, line: 826, size: 128, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !186, file: !159, line: 828, baseType: !36, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !159, line: 829, baseType: !47, size: 64, offset: 64)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "nslots", scope: !147, file: !159, line: 835, type: !49, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "slotvec0", scope: !147, file: !159, line: 836, type: !186, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 704, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 11)
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "is_utf8", scope: !199, file: !200, line: 72, type: !49, isLocal: true, isDefinition: true)
!199 = distinct !DISubprogram(name: "unicode_to_mb", scope: !200, file: !200, line: 64, type: !201, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !276)
!200 = !DIFile(filename: "lib/unicodeio.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !48, !204, !207, !35}
!203 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!203, !44, !36, !35}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!203, !48, !44, !35}
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !212, globals: !271)
!211 = !DIFile(filename: "./lib/unicodeio.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!212 = !{!36, !39, !41, !44, !213, !215, !216, !217, !35}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !214, line: 29, baseType: !35)
!214 = !DIFile(filename: "/usr/include/iconv.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !219, line: 49, baseType: !220)
!219 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !221, line: 241, size: 1728, elements: !222)
!221 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !243, !244, !245, !246, !249, !250, !252, !256, !259, !261, !262, !263, !264, !265, !266, !267}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !220, file: !221, line: 242, baseType: !49, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !220, file: !221, line: 247, baseType: !47, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !220, file: !221, line: 248, baseType: !47, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !220, file: !221, line: 249, baseType: !47, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !220, file: !221, line: 250, baseType: !47, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !220, file: !221, line: 251, baseType: !47, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !220, file: !221, line: 252, baseType: !47, size: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !220, file: !221, line: 253, baseType: !47, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !220, file: !221, line: 254, baseType: !47, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !220, file: !221, line: 256, baseType: !47, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !220, file: !221, line: 257, baseType: !47, size: 64, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !220, file: !221, line: 258, baseType: !47, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !220, file: !221, line: 260, baseType: !236, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !221, line: 156, size: 192, elements: !238)
!238 = !{!239, !240, !242}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !237, file: !221, line: 157, baseType: !236, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !237, file: !221, line: 158, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !237, file: !221, line: 162, baseType: !49, size: 32, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !220, file: !221, line: 262, baseType: !241, size: 64, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !220, file: !221, line: 264, baseType: !49, size: 32, offset: 896)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !220, file: !221, line: 268, baseType: !49, size: 32, offset: 928)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !220, file: !221, line: 270, baseType: !247, size: 64, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !248, line: 140, baseType: !203)
!248 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !220, file: !221, line: 274, baseType: !50, size: 16, offset: 1024)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !220, file: !221, line: 275, baseType: !251, size: 8, offset: 1040)
!251 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !220, file: !221, line: 276, baseType: !253, size: 8, offset: 1048)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 1)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !220, file: !221, line: 280, baseType: !257, size: 64, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !221, line: 150, baseType: null)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !220, file: !221, line: 289, baseType: !260, size: 64, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !248, line: 141, baseType: !203)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !220, file: !221, line: 297, baseType: !35, size: 64, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !220, file: !221, line: 298, baseType: !35, size: 64, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !220, file: !221, line: 299, baseType: !35, size: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !220, file: !221, line: 300, baseType: !35, size: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !220, file: !221, line: 302, baseType: !36, size: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !220, file: !221, line: 303, baseType: !49, size: 32, offset: 1536)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !220, file: !221, line: 305, baseType: !268, size: 160, offset: 1568)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 20)
!271 = !{!272, !197, !274}
!272 = !DIGlobalVariableExpression(var: !273)
!273 = distinct !DIGlobalVariable(name: "initialized", scope: !199, file: !200, line: 71, type: !49, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275)
!275 = distinct !DIGlobalVariable(name: "utf8_to_local", scope: !199, file: !200, line: 74, type: !213, isLocal: true, isDefinition: true)
!276 = !{!277, !278, !279, !280, !281, !285, !286, !289, !291, !292, !294, !295, !301, !302, !303, !304, !305}
!277 = !DILocalVariable(name: "code", arg: 1, scope: !199, file: !200, line: 64, type: !48)
!278 = !DILocalVariable(name: "success", arg: 2, scope: !199, file: !200, line: 65, type: !204)
!279 = !DILocalVariable(name: "failure", arg: 3, scope: !199, file: !200, line: 67, type: !207)
!280 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !199, file: !200, line: 69, type: !35)
!281 = !DILocalVariable(name: "inbuf", scope: !199, file: !200, line: 77, type: !282)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 6)
!285 = !DILocalVariable(name: "count", scope: !199, file: !200, line: 78, type: !49)
!286 = !DILocalVariable(name: "charset", scope: !287, file: !200, line: 82, type: !44)
!287 = distinct !DILexicalBlock(scope: !288, file: !200, line: 81, column: 5)
!288 = distinct !DILexicalBlock(scope: !199, file: !200, line: 80, column: 7)
!289 = !DILocalVariable(name: "__s1_len", scope: !290, file: !200, line: 84, type: !36)
!290 = distinct !DILexicalBlock(scope: !287, file: !200, line: 84, column: 18)
!291 = !DILocalVariable(name: "__s2_len", scope: !290, file: !200, line: 84, type: !36)
!292 = !DILocalVariable(name: "__s2", scope: !293, file: !200, line: 84, type: !41)
!293 = distinct !DILexicalBlock(scope: !290, file: !200, line: 84, column: 18)
!294 = !DILocalVariable(name: "__result", scope: !293, file: !200, line: 84, type: !49)
!295 = !DILocalVariable(name: "outbuf", scope: !296, file: !200, line: 116, type: !298)
!296 = distinct !DILexicalBlock(scope: !297, file: !200, line: 115, column: 5)
!297 = distinct !DILexicalBlock(scope: !199, file: !200, line: 114, column: 7)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 25)
!301 = !DILocalVariable(name: "inptr", scope: !296, file: !200, line: 117, type: !44)
!302 = !DILocalVariable(name: "inbytesleft", scope: !296, file: !200, line: 118, type: !36)
!303 = !DILocalVariable(name: "outptr", scope: !296, file: !200, line: 119, type: !47)
!304 = !DILocalVariable(name: "outbytesleft", scope: !296, file: !200, line: 120, type: !36)
!305 = !DILocalVariable(name: "res", scope: !296, file: !200, line: 121, type: !36)
!306 = !DIGlobalVariableExpression(var: !307)
!307 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !308, file: !311, line: 26, type: !312, isLocal: false, isDefinition: true)
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !310)
!309 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!310 = !{!306}
!311 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 47)
!315 = !DIGlobalVariableExpression(var: !316)
!316 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !317, file: !660, line: 120, type: !661, isLocal: true, isDefinition: true)
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !319, retainedTypes: !658, globals: !659)
!318 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!319 = !{!320}
!320 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !321, line: 41, size: 32, elements: !322)
!321 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!323 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!324 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!325 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!326 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!327 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!328 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!329 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!330 = !DIEnumerator(name: "DAY_1", value: 131079)
!331 = !DIEnumerator(name: "DAY_2", value: 131080)
!332 = !DIEnumerator(name: "DAY_3", value: 131081)
!333 = !DIEnumerator(name: "DAY_4", value: 131082)
!334 = !DIEnumerator(name: "DAY_5", value: 131083)
!335 = !DIEnumerator(name: "DAY_6", value: 131084)
!336 = !DIEnumerator(name: "DAY_7", value: 131085)
!337 = !DIEnumerator(name: "ABMON_1", value: 131086)
!338 = !DIEnumerator(name: "ABMON_2", value: 131087)
!339 = !DIEnumerator(name: "ABMON_3", value: 131088)
!340 = !DIEnumerator(name: "ABMON_4", value: 131089)
!341 = !DIEnumerator(name: "ABMON_5", value: 131090)
!342 = !DIEnumerator(name: "ABMON_6", value: 131091)
!343 = !DIEnumerator(name: "ABMON_7", value: 131092)
!344 = !DIEnumerator(name: "ABMON_8", value: 131093)
!345 = !DIEnumerator(name: "ABMON_9", value: 131094)
!346 = !DIEnumerator(name: "ABMON_10", value: 131095)
!347 = !DIEnumerator(name: "ABMON_11", value: 131096)
!348 = !DIEnumerator(name: "ABMON_12", value: 131097)
!349 = !DIEnumerator(name: "MON_1", value: 131098)
!350 = !DIEnumerator(name: "MON_2", value: 131099)
!351 = !DIEnumerator(name: "MON_3", value: 131100)
!352 = !DIEnumerator(name: "MON_4", value: 131101)
!353 = !DIEnumerator(name: "MON_5", value: 131102)
!354 = !DIEnumerator(name: "MON_6", value: 131103)
!355 = !DIEnumerator(name: "MON_7", value: 131104)
!356 = !DIEnumerator(name: "MON_8", value: 131105)
!357 = !DIEnumerator(name: "MON_9", value: 131106)
!358 = !DIEnumerator(name: "MON_10", value: 131107)
!359 = !DIEnumerator(name: "MON_11", value: 131108)
!360 = !DIEnumerator(name: "MON_12", value: 131109)
!361 = !DIEnumerator(name: "AM_STR", value: 131110)
!362 = !DIEnumerator(name: "PM_STR", value: 131111)
!363 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!364 = !DIEnumerator(name: "D_FMT", value: 131113)
!365 = !DIEnumerator(name: "T_FMT", value: 131114)
!366 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!367 = !DIEnumerator(name: "ERA", value: 131116)
!368 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!369 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!370 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!371 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!372 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!373 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!374 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!375 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!376 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!377 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!378 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!379 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!380 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!381 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!382 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!383 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!384 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!385 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!386 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!387 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!388 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!389 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!390 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!391 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!392 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!393 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!394 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!395 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!396 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!397 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!398 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!399 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!400 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!401 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!402 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!403 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!404 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!405 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!406 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!407 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!408 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!409 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!410 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!411 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!412 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!413 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!414 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!415 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!416 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!417 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!418 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!419 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!420 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!421 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!422 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!423 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!424 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!425 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!426 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!427 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!428 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!429 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!430 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!431 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!432 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!433 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!434 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!435 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!436 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!437 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!438 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!439 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!440 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!441 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!442 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!443 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!444 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!445 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!446 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!447 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!448 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!449 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!450 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!451 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!452 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!453 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!454 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!455 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!456 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!457 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!458 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!459 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!460 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!461 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!462 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!463 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!464 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!465 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!466 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!467 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!468 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!469 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!470 = !DIEnumerator(name: "CODESET", value: 14)
!471 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!472 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!473 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!474 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!519 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!522 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!523 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!524 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!526 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!527 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!542 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!543 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!544 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!545 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!546 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!547 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!548 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!549 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!550 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!551 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!552 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!553 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!554 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!555 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!556 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!557 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!558 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!559 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!560 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!561 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!562 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!563 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!564 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!581 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!582 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!585 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!586 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!587 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!588 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!589 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!590 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!591 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!592 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!593 = !DIEnumerator(name: "THOUSEP", value: 65537)
!594 = !DIEnumerator(name: "__GROUPING", value: 65538)
!595 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!596 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!597 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!598 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!599 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!600 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!601 = !DIEnumerator(name: "__YESSTR", value: 327682)
!602 = !DIEnumerator(name: "__NOSTR", value: 327683)
!603 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!604 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!605 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!606 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!607 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!608 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!609 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!610 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!611 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!612 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!613 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!614 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!615 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!616 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!617 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!618 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!619 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!620 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!621 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!622 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!623 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!624 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!625 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!626 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!627 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!628 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!629 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!630 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!631 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!632 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!633 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!634 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!635 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!636 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!637 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!638 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!639 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!656 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!657 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!658 = !{!35, !47, !215}
!659 = !{!315}
!660 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92)
!663 = !DIFile(filename: "lib/unistr/u8-uctomb-aux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!664 = distinct !DICompileUnit(language: DW_LANG_C99, file: !665, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !671)
!665 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!666 = !{!667}
!667 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !668, line: 41, size: 32, elements: !669)
!668 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = !{!670}
!670 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!671 = !{!35}
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !674, retainedTypes: !688)
!673 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = !{!675}
!675 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !677, file: !676, line: 192, size: 32, elements: !686)
!676 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!677 = distinct !DISubprogram(name: "x2nrealloc", scope: !676, file: !676, line: 180, type: !678, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !681)
!678 = !DISubroutineType(types: !679)
!679 = !{!35, !35, !680, !36}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!681 = !{!682, !683, !684, !685}
!682 = !DILocalVariable(name: "p", arg: 1, scope: !677, file: !676, line: 180, type: !35)
!683 = !DILocalVariable(name: "pn", arg: 2, scope: !677, file: !676, line: 180, type: !680)
!684 = !DILocalVariable(name: "s", arg: 3, scope: !677, file: !676, line: 180, type: !36)
!685 = !DILocalVariable(name: "n", scope: !677, file: !676, line: 182, type: !36)
!686 = !{!687}
!687 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!688 = !{!36, !47, !35}
!689 = distinct !DICompileUnit(language: DW_LANG_C99, file: !690, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92)
!690 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !692, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92)
!692 = !DIFile(filename: "./lib/xprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !671)
!694 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !697)
!696 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!697 = !{!36}
!698 = distinct !DICompileUnit(language: DW_LANG_C99, file: !699, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92)
!699 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!700 = distinct !DICompileUnit(language: DW_LANG_C99, file: !701, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !702)
!701 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!702 = !{!36, !39, !41, !44}
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92)
!704 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !671)
!706 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !671)
!708 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!709 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!710 = !{i32 2, !"Dwarf Version", i32 4}
!711 = !{i32 2, !"Debug Info Version", i32 3}
!712 = !{i32 1, !"PIC Level", i32 2}
!713 = !{i32 1, !"PIE Level", i32 2}
!714 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 87, type: !715, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !49}
!717 = !{!718}
!718 = !DILocalVariable(name: "status", arg: 1, scope: !714, file: !3, line: 87, type: !49)
!719 = !DIExpression()
!720 = !DILocation(line: 87, column: 12, scope: !714)
!721 = !DILocation(line: 89, column: 14, scope: !722)
!722 = distinct !DILexicalBlock(scope: !714, file: !3, line: 89, column: 7)
!723 = !DILocation(line: 89, column: 7, scope: !714)
!724 = !DILocation(line: 90, column: 5, scope: !725)
!725 = !DILexicalBlockFile(scope: !726, file: !3, discriminator: 1)
!726 = distinct !DILexicalBlock(scope: !722, file: !3, line: 90, column: 5)
!727 = !{!728, !728, i64 0}
!728 = !{!"any pointer", !729, i64 0}
!729 = !{!"omnipotent char", !730, i64 0}
!730 = !{!"Simple C/C++ TBAA"}
!731 = !DILocation(line: 90, column: 5, scope: !732)
!732 = !DILexicalBlockFile(scope: !726, file: !3, discriminator: 3)
!733 = !DILocation(line: 90, column: 5, scope: !734)
!734 = !DILexicalBlockFile(scope: !726, file: !3, discriminator: 2)
!735 = !DILocation(line: 93, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !722, file: !3, line: 92, column: 5)
!737 = !DILocation(line: 93, column: 7, scope: !738)
!738 = !DILexicalBlockFile(scope: !736, file: !3, discriminator: 1)
!739 = !DILocation(line: 98, column: 7, scope: !736)
!740 = !DILocation(line: 98, column: 7, scope: !738)
!741 = !DILocation(line: 102, column: 7, scope: !736)
!742 = !DILocation(line: 102, column: 7, scope: !738)
!743 = !DILocation(line: 103, column: 7, scope: !736)
!744 = !DILocation(line: 103, column: 7, scope: !738)
!745 = !DILocation(line: 104, column: 7, scope: !736)
!746 = !DILocation(line: 104, column: 7, scope: !738)
!747 = !DILocation(line: 110, column: 7, scope: !736)
!748 = !DILocation(line: 110, column: 7, scope: !738)
!749 = !DILocation(line: 122, column: 7, scope: !736)
!750 = !DILocation(line: 122, column: 7, scope: !738)
!751 = !DILocation(line: 128, column: 7, scope: !736)
!752 = !DILocation(line: 128, column: 7, scope: !738)
!753 = !DILocation(line: 138, column: 7, scope: !736)
!754 = !DILocation(line: 138, column: 7, scope: !738)
!755 = !DILocation(line: 642, column: 15, scope: !56, inlinedAt: !756)
!756 = distinct !DILocation(line: 139, column: 7, scope: !736)
!757 = !DILocation(line: 651, column: 3, scope: !56, inlinedAt: !756)
!758 = !DILocation(line: 651, column: 3, scope: !759, inlinedAt: !756)
!759 = !DILexicalBlockFile(scope: !56, file: !57, discriminator: 1)
!760 = !DILocation(line: 655, column: 29, scope: !56, inlinedAt: !756)
!761 = !DILocation(line: 655, column: 15, scope: !56, inlinedAt: !756)
!762 = !DILocation(line: 656, column: 7, scope: !76, inlinedAt: !756)
!763 = !DILocation(line: 656, column: 19, scope: !76, inlinedAt: !756)
!764 = !DILocation(line: 656, column: 22, scope: !765, inlinedAt: !756)
!765 = !DILexicalBlockFile(scope: !76, file: !57, discriminator: 16)
!766 = !DILocation(line: 656, column: 7, scope: !767, inlinedAt: !756)
!767 = !DILexicalBlockFile(scope: !56, file: !57, discriminator: 16)
!768 = !DILocation(line: 662, column: 7, scope: !769, inlinedAt: !756)
!769 = distinct !DILexicalBlock(scope: !76, file: !57, line: 657, column: 5)
!770 = !DILocation(line: 662, column: 7, scope: !771, inlinedAt: !756)
!771 = !DILexicalBlockFile(scope: !769, file: !57, discriminator: 1)
!772 = !DILocation(line: 664, column: 5, scope: !769, inlinedAt: !756)
!773 = !DILocation(line: 665, column: 3, scope: !56, inlinedAt: !756)
!774 = !DILocation(line: 665, column: 3, scope: !759, inlinedAt: !756)
!775 = !DILocation(line: 667, column: 3, scope: !56, inlinedAt: !756)
!776 = !DILocation(line: 667, column: 3, scope: !759, inlinedAt: !756)
!777 = !DILocation(line: 141, column: 3, scope: !714)
!778 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 651, type: !779, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!49, !49, !216}
!781 = !{!782, !783, !784, !785, !786, !791, !792, !794, !795, !798, !799, !801, !802, !805, !806, !808}
!782 = !DILocalVariable(name: "argc", arg: 1, scope: !778, file: !3, line: 651, type: !49)
!783 = !DILocalVariable(name: "argv", arg: 2, scope: !778, file: !3, line: 651, type: !216)
!784 = !DILocalVariable(name: "format", scope: !778, file: !3, line: 653, type: !47)
!785 = !DILocalVariable(name: "args_used", scope: !778, file: !3, line: 654, type: !49)
!786 = !DILocalVariable(name: "__s1_len", scope: !787, file: !3, line: 672, type: !36)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 672, column: 11)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 672, column: 11)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 671, column: 5)
!790 = distinct !DILexicalBlock(scope: !778, file: !3, line: 670, column: 7)
!791 = !DILocalVariable(name: "__s2_len", scope: !787, file: !3, line: 672, type: !36)
!792 = !DILocalVariable(name: "__s2", scope: !793, file: !3, line: 672, type: !41)
!793 = distinct !DILexicalBlock(scope: !787, file: !3, line: 672, column: 11)
!794 = !DILocalVariable(name: "__result", scope: !793, file: !3, line: 672, type: !49)
!795 = !DILocalVariable(name: "__s1_len", scope: !796, file: !3, line: 675, type: !36)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 675, column: 11)
!797 = distinct !DILexicalBlock(scope: !789, file: !3, line: 675, column: 11)
!798 = !DILocalVariable(name: "__s2_len", scope: !796, file: !3, line: 675, type: !36)
!799 = !DILocalVariable(name: "__s2", scope: !800, file: !3, line: 675, type: !41)
!800 = distinct !DILexicalBlock(scope: !796, file: !3, line: 675, column: 11)
!801 = !DILocalVariable(name: "__result", scope: !800, file: !3, line: 675, type: !49)
!802 = !DILocalVariable(name: "__s1_len", scope: !803, file: !3, line: 685, type: !36)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 685, column: 19)
!804 = distinct !DILexicalBlock(scope: !778, file: !3, line: 685, column: 7)
!805 = !DILocalVariable(name: "__s2_len", scope: !803, file: !3, line: 685, type: !36)
!806 = !DILocalVariable(name: "__s2", scope: !807, file: !3, line: 685, type: !41)
!807 = distinct !DILexicalBlock(scope: !803, file: !3, line: 685, column: 19)
!808 = !DILocalVariable(name: "__result", scope: !807, file: !3, line: 685, type: !49)
!809 = !DILocalVariable(name: "ok", scope: !810, file: !3, line: 488, type: !180)
!810 = distinct !DISubprogram(name: "print_formatted", scope: !3, file: !3, line: 478, type: !811, isLocal: true, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!49, !44, !49, !216}
!813 = !{!814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !809, !825, !837, !844}
!814 = !DILocalVariable(name: "format", arg: 1, scope: !810, file: !3, line: 478, type: !44)
!815 = !DILocalVariable(name: "argc", arg: 2, scope: !810, file: !3, line: 478, type: !49)
!816 = !DILocalVariable(name: "argv", arg: 3, scope: !810, file: !3, line: 478, type: !216)
!817 = !DILocalVariable(name: "save_argc", scope: !810, file: !3, line: 480, type: !49)
!818 = !DILocalVariable(name: "f", scope: !810, file: !3, line: 481, type: !44)
!819 = !DILocalVariable(name: "direc_start", scope: !810, file: !3, line: 482, type: !44)
!820 = !DILocalVariable(name: "direc_length", scope: !810, file: !3, line: 483, type: !36)
!821 = !DILocalVariable(name: "have_field_width", scope: !810, file: !3, line: 484, type: !87)
!822 = !DILocalVariable(name: "field_width", scope: !810, file: !3, line: 485, type: !49)
!823 = !DILocalVariable(name: "have_precision", scope: !810, file: !3, line: 486, type: !87)
!824 = !DILocalVariable(name: "precision", scope: !810, file: !3, line: 487, type: !49)
!825 = !DILocalVariable(name: "width", scope: !826, file: !3, line: 562, type: !834)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 561, column: 17)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 560, column: 19)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 557, column: 13)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 556, column: 15)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 493, column: 9)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 491, column: 5)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 490, column: 3)
!833 = distinct !DILexicalBlock(scope: !810, file: !3, line: 490, column: 3)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !835, line: 135, baseType: !836)
!835 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !248, line: 61, baseType: !203)
!837 = !DILocalVariable(name: "prec", scope: !838, file: !3, line: 592, type: !834)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 591, column: 21)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 590, column: 23)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 587, column: 17)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 586, column: 19)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 582, column: 13)
!843 = distinct !DILexicalBlock(scope: !830, file: !3, line: 581, column: 15)
!844 = !DILocalVariable(name: "conversion", scope: !845, file: !3, line: 625, type: !43)
!845 = distinct !DILexicalBlock(scope: !830, file: !3, line: 624, column: 11)
!846 = !DILocation(line: 488, column: 8, scope: !810, inlinedAt: !847)
!847 = distinct !DILocation(line: 703, column: 19, scope: !848)
!848 = distinct !DILexicalBlock(scope: !778, file: !3, line: 702, column: 5)
!849 = !DILocation(line: 651, column: 11, scope: !778)
!850 = !DILocation(line: 651, column: 24, scope: !778)
!851 = !DILocation(line: 657, column: 21, scope: !778)
!852 = !DILocation(line: 657, column: 3, scope: !778)
!853 = !DILocation(line: 658, column: 3, scope: !778)
!854 = !DILocation(line: 659, column: 3, scope: !778)
!855 = !DILocation(line: 660, column: 3, scope: !778)
!856 = !DILocation(line: 662, column: 3, scope: !778)
!857 = !DILocation(line: 666, column: 22, scope: !778)
!858 = !DILocation(line: 666, column: 49, scope: !778)
!859 = !DILocation(line: 666, column: 19, scope: !778)
!860 = !{!861, !861, i64 0}
!861 = !{!"_Bool", !729, i64 0}
!862 = !DILocation(line: 670, column: 12, scope: !790)
!863 = !DILocation(line: 670, column: 7, scope: !778)
!864 = !DILocation(line: 672, column: 11, scope: !787)
!865 = !DILocation(line: 672, column: 11, scope: !866)
!866 = !DILexicalBlockFile(scope: !787, file: !3, discriminator: 12)
!867 = !DILocation(line: 672, column: 11, scope: !868)
!868 = !DILexicalBlockFile(scope: !788, file: !3, discriminator: 13)
!869 = !DILocation(line: 672, column: 11, scope: !870)
!870 = !DILexicalBlockFile(scope: !789, file: !3, discriminator: 13)
!871 = !DILocation(line: 673, column: 9, scope: !788)
!872 = !DILocation(line: 675, column: 11, scope: !796)
!873 = !DILocation(line: 675, column: 11, scope: !874)
!874 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 12)
!875 = !DILocation(line: 675, column: 11, scope: !876)
!876 = !DILexicalBlockFile(scope: !797, file: !3, discriminator: 13)
!877 = !DILocation(line: 675, column: 11, scope: !870)
!878 = !DILocation(line: 677, column: 24, scope: !879)
!879 = distinct !DILexicalBlock(scope: !797, file: !3, line: 676, column: 9)
!880 = !DILocation(line: 677, column: 60, scope: !879)
!881 = !DILocation(line: 677, column: 11, scope: !879)
!882 = !DILocation(line: 679, column: 11, scope: !879)
!883 = !DILocation(line: 685, column: 9, scope: !804)
!884 = !DILocation(line: 685, column: 16, scope: !804)
!885 = !DILocation(line: 685, column: 19, scope: !886)
!886 = !DILexicalBlockFile(scope: !807, file: !3, discriminator: 3)
!887 = !DILocation(line: 685, column: 19, scope: !803)
!888 = !DILocation(line: 685, column: 19, scope: !807)
!889 = !{!729, !729, i64 0}
!890 = !DILocation(line: 685, column: 19, scope: !891)
!891 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 4)
!892 = distinct !DILexicalBlock(scope: !807, file: !3, line: 685, column: 19)
!893 = !DILocation(line: 685, column: 19, scope: !894)
!894 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 3)
!895 = !DILocation(line: 685, column: 19, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !3, discriminator: 5)
!897 = distinct !DILexicalBlock(scope: !892, file: !3, line: 685, column: 19)
!898 = !DILocation(line: 685, column: 19, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 6)
!900 = distinct !DILexicalBlock(scope: !897, file: !3, line: 685, column: 19)
!901 = !DILocation(line: 685, column: 19, scope: !902)
!902 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 5)
!903 = !DILocation(line: 685, column: 19, scope: !904)
!904 = !DILexicalBlockFile(scope: !905, file: !3, discriminator: 7)
!905 = distinct !DILexicalBlock(scope: !900, file: !3, line: 685, column: 19)
!906 = !DILocation(line: 685, column: 19, scope: !907)
!907 = !DILexicalBlockFile(scope: !803, file: !3, discriminator: 12)
!908 = !DILocation(line: 685, column: 7, scope: !909)
!909 = !DILexicalBlockFile(scope: !778, file: !3, discriminator: 14)
!910 = !DILocation(line: 691, column: 12, scope: !911)
!911 = distinct !DILexicalBlock(scope: !778, file: !3, line: 691, column: 7)
!912 = !DILocation(line: 691, column: 7, scope: !778)
!913 = !DILocation(line: 687, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !804, file: !3, line: 686, column: 5)
!915 = !DILocation(line: 693, column: 20, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 692, column: 5)
!917 = !DILocation(line: 693, column: 7, scope: !918)
!918 = !DILexicalBlockFile(scope: !916, file: !3, discriminator: 1)
!919 = !DILocation(line: 694, column: 7, scope: !916)
!920 = !DILocation(line: 697, column: 12, scope: !778)
!921 = !DILocation(line: 653, column: 9, scope: !778)
!922 = !DILocation(line: 698, column: 8, scope: !778)
!923 = !DILocation(line: 699, column: 8, scope: !778)
!924 = !DILocation(line: 701, column: 3, scope: !778)
!925 = distinct !{!925, !924, !926}
!926 = !DILocation(line: 707, column: 35, scope: !778)
!927 = !DILocation(line: 478, column: 30, scope: !810, inlinedAt: !847)
!928 = !DILocation(line: 478, column: 42, scope: !810, inlinedAt: !847)
!929 = !DILocation(line: 478, column: 55, scope: !810, inlinedAt: !847)
!930 = !DILocation(line: 480, column: 7, scope: !810, inlinedAt: !847)
!931 = !DILocation(line: 485, column: 7, scope: !810, inlinedAt: !847)
!932 = !DILocation(line: 487, column: 7, scope: !810, inlinedAt: !847)
!933 = !DILocation(line: 488, column: 3, scope: !810, inlinedAt: !847)
!934 = !DILocation(line: 481, column: 15, scope: !810, inlinedAt: !847)
!935 = !DILocation(line: 490, column: 20, scope: !936, inlinedAt: !847)
!936 = !DILexicalBlockFile(scope: !832, file: !3, discriminator: 1)
!937 = !DILocation(line: 490, column: 3, scope: !938, inlinedAt: !847)
!938 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 1)
!939 = !DILocation(line: 492, column: 15, scope: !831, inlinedAt: !847)
!940 = !DILocation(line: 492, column: 7, scope: !831, inlinedAt: !847)
!941 = !DILocation(line: 495, column: 26, scope: !830, inlinedAt: !847)
!942 = !DILocation(line: 482, column: 15, scope: !810, inlinedAt: !847)
!943 = !DILocation(line: 483, column: 10, scope: !810, inlinedAt: !847)
!944 = !DILocation(line: 486, column: 8, scope: !810, inlinedAt: !847)
!945 = !DILocation(line: 484, column: 8, scope: !810, inlinedAt: !847)
!946 = !DILocation(line: 498, column: 15, scope: !947, inlinedAt: !847)
!947 = distinct !DILexicalBlock(scope: !830, file: !3, line: 498, column: 15)
!948 = !DILocation(line: 498, column: 15, scope: !830, inlinedAt: !847)
!949 = !DILocalVariable(name: "__c", arg: 1, scope: !950, file: !951, line: 105, type: !49)
!950 = distinct !DISubprogram(name: "putchar_unlocked", scope: !951, file: !951, line: 105, type: !952, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !954)
!951 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!952 = !DISubroutineType(types: !953)
!953 = !{!49, !49}
!954 = !{!949}
!955 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !956)
!956 = distinct !DILocation(line: 500, column: 15, scope: !957, inlinedAt: !847)
!957 = distinct !DILexicalBlock(scope: !947, file: !3, line: 499, column: 13)
!958 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !956)
!959 = !{!960, !728, i64 40}
!960 = !{!"_IO_FILE", !961, i64 0, !728, i64 8, !728, i64 16, !728, i64 24, !728, i64 32, !728, i64 40, !728, i64 48, !728, i64 56, !728, i64 64, !728, i64 72, !728, i64 80, !728, i64 88, !728, i64 96, !728, i64 104, !961, i64 112, !961, i64 116, !962, i64 120, !963, i64 128, !729, i64 130, !729, i64 131, !728, i64 136, !962, i64 144, !728, i64 152, !728, i64 160, !728, i64 168, !728, i64 176, !962, i64 184, !961, i64 192, !729, i64 196}
!961 = !{!"int", !729, i64 0}
!962 = !{!"long", !729, i64 0}
!963 = !{!"short", !729, i64 0}
!964 = !{!960, !728, i64 48}
!965 = !{!"branch_weights", i32 2000, i32 1}
!966 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !956)
!967 = !DILexicalBlockFile(scope: !950, file: !951, discriminator: 1)
!968 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !956)
!969 = !DILexicalBlockFile(scope: !950, file: !951, discriminator: 2)
!970 = !DILocation(line: 507, column: 24, scope: !971, inlinedAt: !847)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 507, column: 19)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 504, column: 13)
!973 = distinct !DILexicalBlock(scope: !830, file: !3, line: 503, column: 15)
!974 = !DILocation(line: 507, column: 19, scope: !972, inlinedAt: !847)
!975 = !DILocation(line: 509, column: 37, scope: !976, inlinedAt: !847)
!976 = distinct !DILexicalBlock(scope: !971, file: !3, line: 508, column: 17)
!977 = !DILocalVariable(name: "str", arg: 1, scope: !978, file: !3, line: 313, type: !44)
!978 = distinct !DISubprogram(name: "print_esc_string", scope: !3, file: !3, line: 313, type: !58, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !979)
!979 = !{!977}
!980 = !DILocation(line: 313, column: 31, scope: !978, inlinedAt: !981)
!981 = distinct !DILocation(line: 509, column: 19, scope: !976, inlinedAt: !847)
!982 = !DILocation(line: 315, column: 3, scope: !978, inlinedAt: !981)
!983 = !DILocation(line: 315, column: 10, scope: !984, inlinedAt: !981)
!984 = !DILexicalBlockFile(scope: !985, file: !3, discriminator: 1)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 315, column: 3)
!986 = distinct !DILexicalBlock(scope: !978, file: !3, line: 315, column: 3)
!987 = !DILocation(line: 315, column: 3, scope: !988, inlinedAt: !981)
!988 = !DILexicalBlockFile(scope: !986, file: !3, discriminator: 1)
!989 = !DILocation(line: 317, column: 14, scope: !990, inlinedAt: !981)
!990 = distinct !DILexicalBlock(scope: !985, file: !3, line: 316, column: 9)
!991 = !DILocation(line: 317, column: 11, scope: !990, inlinedAt: !981)
!992 = !DILocation(line: 317, column: 7, scope: !990, inlinedAt: !981)
!993 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !994)
!994 = distinct !DILocation(line: 319, column: 7, scope: !990, inlinedAt: !981)
!995 = !DILocation(line: 316, column: 9, scope: !990, inlinedAt: !981)
!996 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !994)
!997 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !994)
!998 = !DILocation(line: 315, column: 19, scope: !999, inlinedAt: !981)
!999 = !DILexicalBlockFile(scope: !985, file: !3, discriminator: 2)
!1000 = !DILocation(line: 315, column: 3, scope: !999, inlinedAt: !981)
!1001 = distinct !{!1001, !1002, !1003}
!1002 = !DILocation(line: 315, column: 3, scope: !986)
!1003 = !DILocation(line: 319, column: 7, scope: !986)
!1004 = !DILocation(line: 510, column: 19, scope: !976, inlinedAt: !847)
!1005 = !DILocation(line: 511, column: 19, scope: !976, inlinedAt: !847)
!1006 = !DILocation(line: 512, column: 17, scope: !976, inlinedAt: !847)
!1007 = !DILocation(line: 518, column: 24, scope: !1008, inlinedAt: !847)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 518, column: 19)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 517, column: 13)
!1010 = distinct !DILexicalBlock(scope: !830, file: !3, line: 516, column: 15)
!1011 = !DILocation(line: 518, column: 19, scope: !1009, inlinedAt: !847)
!1012 = !DILocation(line: 520, column: 19, scope: !1013, inlinedAt: !847)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 519, column: 17)
!1014 = !DILocation(line: 520, column: 19, scope: !1015, inlinedAt: !847)
!1015 = !DILexicalBlockFile(scope: !1013, file: !3, discriminator: 1)
!1016 = !DILocation(line: 522, column: 19, scope: !1013, inlinedAt: !847)
!1017 = !DILocation(line: 523, column: 19, scope: !1013, inlinedAt: !847)
!1018 = !DILocation(line: 524, column: 17, scope: !1013, inlinedAt: !847)
!1019 = !DILocation(line: 528, column: 11, scope: !830, inlinedAt: !847)
!1020 = !DILocation(line: 531, column: 51, scope: !830, inlinedAt: !847)
!1021 = !DILocation(line: 531, column: 41, scope: !830, inlinedAt: !847)
!1022 = !DILocation(line: 531, column: 31, scope: !830, inlinedAt: !847)
!1023 = !DILocation(line: 531, column: 21, scope: !830, inlinedAt: !847)
!1024 = !DILocation(line: 530, column: 71, scope: !830, inlinedAt: !847)
!1025 = !DILocation(line: 530, column: 61, scope: !830, inlinedAt: !847)
!1026 = !DILocation(line: 530, column: 51, scope: !830, inlinedAt: !847)
!1027 = !DILocation(line: 530, column: 31, scope: !830, inlinedAt: !847)
!1028 = !DILocation(line: 529, column: 69, scope: !830, inlinedAt: !847)
!1029 = !DILocation(line: 529, column: 29, scope: !830, inlinedAt: !847)
!1030 = !DILocation(line: 529, column: 19, scope: !830, inlinedAt: !847)
!1031 = !DILocation(line: 530, column: 41, scope: !830, inlinedAt: !847)
!1032 = !DILocation(line: 533, column: 11, scope: !830, inlinedAt: !847)
!1033 = !DILocation(line: 534, column: 21, scope: !1034, inlinedAt: !847)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 533, column: 11)
!1035 = distinct !DILexicalBlock(scope: !830, file: !3, line: 533, column: 11)
!1036 = !DILocation(line: 534, column: 13, scope: !1034, inlinedAt: !847)
!1037 = !DILocation(line: 541, column: 57, scope: !1038, inlinedAt: !847)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 535, column: 15)
!1039 = !DILocation(line: 541, column: 47, scope: !1038, inlinedAt: !847)
!1040 = !DILocation(line: 541, column: 37, scope: !1038, inlinedAt: !847)
!1041 = !DILocation(line: 541, column: 27, scope: !1038, inlinedAt: !847)
!1042 = !DILocation(line: 540, column: 65, scope: !1038, inlinedAt: !847)
!1043 = !DILocation(line: 540, column: 55, scope: !1038, inlinedAt: !847)
!1044 = !DILocation(line: 540, column: 45, scope: !1038, inlinedAt: !847)
!1045 = !DILocation(line: 540, column: 35, scope: !1038, inlinedAt: !847)
!1046 = !DILocation(line: 540, column: 25, scope: !1038, inlinedAt: !847)
!1047 = !DILocation(line: 542, column: 17, scope: !1038, inlinedAt: !847)
!1048 = !DILocation(line: 546, column: 65, scope: !1038, inlinedAt: !847)
!1049 = !DILocation(line: 546, column: 55, scope: !1038, inlinedAt: !847)
!1050 = !DILocation(line: 546, column: 45, scope: !1038, inlinedAt: !847)
!1051 = !DILocation(line: 546, column: 35, scope: !1038, inlinedAt: !847)
!1052 = !DILocation(line: 546, column: 25, scope: !1038, inlinedAt: !847)
!1053 = !DILocation(line: 547, column: 17, scope: !1038, inlinedAt: !847)
!1054 = !DILocation(line: 549, column: 35, scope: !1038, inlinedAt: !847)
!1055 = !DILocation(line: 549, column: 25, scope: !1038, inlinedAt: !847)
!1056 = !DILocation(line: 550, column: 17, scope: !1038, inlinedAt: !847)
!1057 = !DILocation(line: 533, column: 20, scope: !1058, inlinedAt: !847)
!1058 = !DILexicalBlockFile(scope: !1034, file: !3, discriminator: 1)
!1059 = !DILocation(line: 533, column: 36, scope: !1058, inlinedAt: !847)
!1060 = !DILocation(line: 533, column: 11, scope: !1058, inlinedAt: !847)
!1061 = distinct !{!1061, !1062, !1063}
!1062 = !DILocation(line: 533, column: 11, scope: !1035)
!1063 = !DILocation(line: 553, column: 15, scope: !1035)
!1064 = !DILocation(line: 556, column: 18, scope: !829, inlinedAt: !847)
!1065 = !DILocation(line: 556, column: 15, scope: !830, inlinedAt: !847)
!1066 = !DILocation(line: 576, column: 20, scope: !1067, inlinedAt: !847)
!1067 = !DILexicalBlockFile(scope: !829, file: !3, discriminator: 1)
!1068 = !DILocation(line: 576, column: 13, scope: !1067, inlinedAt: !847)
!1069 = !DILocation(line: 578, column: 17, scope: !1070, inlinedAt: !847)
!1070 = distinct !DILexicalBlock(scope: !829, file: !3, line: 577, column: 15)
!1071 = !DILocation(line: 558, column: 15, scope: !828, inlinedAt: !847)
!1072 = !DILocation(line: 559, column: 15, scope: !828, inlinedAt: !847)
!1073 = !DILocation(line: 560, column: 24, scope: !827, inlinedAt: !847)
!1074 = !DILocation(line: 560, column: 19, scope: !828, inlinedAt: !847)
!1075 = !DILocation(line: 562, column: 48, scope: !826, inlinedAt: !847)
!1076 = !DILocation(line: 562, column: 36, scope: !826, inlinedAt: !847)
!1077 = !DILocation(line: 562, column: 28, scope: !826, inlinedAt: !847)
!1078 = !DILocation(line: 563, column: 40, scope: !1079, inlinedAt: !847)
!1079 = distinct !DILexicalBlock(scope: !826, file: !3, line: 563, column: 23)
!1080 = !DILocation(line: 564, column: 35, scope: !1079, inlinedAt: !847)
!1081 = !DILocation(line: 568, column: 19, scope: !826, inlinedAt: !847)
!1082 = !DILocation(line: 569, column: 19, scope: !826, inlinedAt: !847)
!1083 = !DILocation(line: 570, column: 17, scope: !826, inlinedAt: !847)
!1084 = !DILocation(line: 566, column: 21, scope: !1079, inlinedAt: !847)
!1085 = !DILocation(line: 566, column: 21, scope: !1086, inlinedAt: !847)
!1086 = !DILexicalBlockFile(scope: !1079, file: !3, discriminator: 1)
!1087 = !DILocation(line: 566, column: 21, scope: !1088, inlinedAt: !847)
!1088 = !DILexicalBlockFile(scope: !1079, file: !3, discriminator: 2)
!1089 = !DILocation(line: 579, column: 17, scope: !1070, inlinedAt: !847)
!1090 = distinct !{!1090, !1091, !1092}
!1091 = !DILocation(line: 576, column: 13, scope: !829)
!1092 = !DILocation(line: 580, column: 15, scope: !829)
!1093 = !DILocation(line: 581, column: 15, scope: !843, inlinedAt: !847)
!1094 = !DILocation(line: 581, column: 18, scope: !843, inlinedAt: !847)
!1095 = !DILocation(line: 581, column: 15, scope: !830, inlinedAt: !847)
!1096 = !DILocation(line: 583, column: 15, scope: !842, inlinedAt: !847)
!1097 = !DILocation(line: 585, column: 23, scope: !842, inlinedAt: !847)
!1098 = !DILocation(line: 586, column: 19, scope: !841, inlinedAt: !847)
!1099 = !DILocation(line: 586, column: 22, scope: !841, inlinedAt: !847)
!1100 = !DILocation(line: 586, column: 19, scope: !842, inlinedAt: !847)
!1101 = !DILocation(line: 613, column: 24, scope: !1102, inlinedAt: !847)
!1102 = !DILexicalBlockFile(scope: !841, file: !3, discriminator: 1)
!1103 = !DILocation(line: 613, column: 17, scope: !1102, inlinedAt: !847)
!1104 = distinct !{!1104, !1105, !1106}
!1105 = !DILocation(line: 613, column: 17, scope: !841)
!1106 = !DILocation(line: 617, column: 19, scope: !841)
!1107 = !DILocation(line: 615, column: 21, scope: !1108, inlinedAt: !847)
!1108 = distinct !DILexicalBlock(scope: !841, file: !3, line: 614, column: 19)
!1109 = !DILocation(line: 588, column: 19, scope: !840, inlinedAt: !847)
!1110 = !DILocation(line: 589, column: 19, scope: !840, inlinedAt: !847)
!1111 = !DILocation(line: 590, column: 28, scope: !839, inlinedAt: !847)
!1112 = !DILocation(line: 590, column: 23, scope: !840, inlinedAt: !847)
!1113 = !DILocation(line: 592, column: 51, scope: !838, inlinedAt: !847)
!1114 = !DILocation(line: 592, column: 39, scope: !838, inlinedAt: !847)
!1115 = !DILocation(line: 592, column: 32, scope: !838, inlinedAt: !847)
!1116 = !DILocation(line: 593, column: 32, scope: !1117, inlinedAt: !847)
!1117 = distinct !DILexicalBlock(scope: !838, file: !3, line: 593, column: 27)
!1118 = !DILocation(line: 593, column: 27, scope: !838, inlinedAt: !847)
!1119 = !DILocation(line: 600, column: 40, scope: !1120, inlinedAt: !847)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 600, column: 32)
!1121 = !DILocation(line: 600, column: 32, scope: !1117, inlinedAt: !847)
!1122 = !DILocation(line: 601, column: 25, scope: !1120, inlinedAt: !847)
!1123 = !DILocation(line: 601, column: 25, scope: !1124, inlinedAt: !847)
!1124 = !DILexicalBlockFile(scope: !1120, file: !3, discriminator: 1)
!1125 = !DILocation(line: 601, column: 25, scope: !1126, inlinedAt: !847)
!1126 = !DILexicalBlockFile(scope: !1120, file: !3, discriminator: 2)
!1127 = !DILocation(line: 604, column: 37, scope: !1120, inlinedAt: !847)
!1128 = !DILocation(line: 605, column: 23, scope: !838, inlinedAt: !847)
!1129 = !DILocation(line: 606, column: 23, scope: !838, inlinedAt: !847)
!1130 = !DILocation(line: 607, column: 21, scope: !838, inlinedAt: !847)
!1131 = !DILocation(line: 620, column: 18, scope: !1132, inlinedAt: !847)
!1132 = !DILexicalBlockFile(scope: !830, file: !3, discriminator: 1)
!1133 = !DILocation(line: 620, column: 28, scope: !1132, inlinedAt: !847)
!1134 = !DILocation(line: 622, column: 13, scope: !830, inlinedAt: !847)
!1135 = !DILocation(line: 620, column: 11, scope: !1136, inlinedAt: !847)
!1136 = !DILexicalBlockFile(scope: !830, file: !3, discriminator: 5)
!1137 = distinct !{!1137, !1138, !1139}
!1138 = !DILocation(line: 620, column: 11, scope: !830)
!1139 = !DILocation(line: 622, column: 15, scope: !830)
!1140 = !DILocation(line: 625, column: 27, scope: !845, inlinedAt: !847)
!1141 = !DILocation(line: 626, column: 19, scope: !1142, inlinedAt: !847)
!1142 = distinct !DILexicalBlock(scope: !845, file: !3, line: 626, column: 17)
!1143 = !DILocation(line: 626, column: 17, scope: !845, inlinedAt: !847)
!1144 = !DILocation(line: 627, column: 15, scope: !1142, inlinedAt: !847)
!1145 = !DILocation(line: 627, column: 15, scope: !1146, inlinedAt: !847)
!1146 = !DILexicalBlockFile(scope: !1142, file: !3, discriminator: 1)
!1147 = !DILocation(line: 634, column: 24, scope: !830, inlinedAt: !847)
!1148 = !DILocation(line: 635, column: 30, scope: !830, inlinedAt: !847)
!1149 = !DILocation(line: 635, column: 25, scope: !830, inlinedAt: !847)
!1150 = !DILocation(line: 635, column: 47, scope: !1151, inlinedAt: !847)
!1151 = !DILexicalBlockFile(scope: !830, file: !3, discriminator: 2)
!1152 = !DILocation(line: 635, column: 56, scope: !1151, inlinedAt: !847)
!1153 = !DILocation(line: 635, column: 51, scope: !1151, inlinedAt: !847)
!1154 = !DILocation(line: 635, column: 25, scope: !1151, inlinedAt: !847)
!1155 = !DILocation(line: 635, column: 25, scope: !1156, inlinedAt: !847)
!1156 = !DILexicalBlockFile(scope: !830, file: !3, discriminator: 3)
!1157 = !DILocalVariable(name: "start", arg: 1, scope: !1158, file: !3, line: 331, type: !44)
!1158 = distinct !DISubprogram(name: "print_direc", scope: !3, file: !3, line: 331, type: !1159, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1161)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !44, !36, !46, !87, !49, !87, !49, !44}
!1161 = !{!1157, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1172, !1173, !1174, !1177, !1181}
!1162 = !DILocalVariable(name: "length", arg: 2, scope: !1158, file: !3, line: 331, type: !36)
!1163 = !DILocalVariable(name: "conversion", arg: 3, scope: !1158, file: !3, line: 331, type: !46)
!1164 = !DILocalVariable(name: "have_field_width", arg: 4, scope: !1158, file: !3, line: 332, type: !87)
!1165 = !DILocalVariable(name: "field_width", arg: 5, scope: !1158, file: !3, line: 332, type: !49)
!1166 = !DILocalVariable(name: "have_precision", arg: 6, scope: !1158, file: !3, line: 333, type: !87)
!1167 = !DILocalVariable(name: "precision", arg: 7, scope: !1158, file: !3, line: 333, type: !49)
!1168 = !DILocalVariable(name: "argument", arg: 8, scope: !1158, file: !3, line: 334, type: !44)
!1169 = !DILocalVariable(name: "p", scope: !1158, file: !3, line: 336, type: !47)
!1170 = !DILocalVariable(name: "q", scope: !1171, file: !3, line: 342, type: !47)
!1171 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 341, column: 3)
!1172 = !DILocalVariable(name: "length_modifier", scope: !1171, file: !3, line: 343, type: !44)
!1173 = !DILocalVariable(name: "length_modifier_len", scope: !1171, file: !3, line: 344, type: !36)
!1174 = !DILocalVariable(name: "arg", scope: !1175, file: !3, line: 377, type: !834)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 376, column: 7)
!1176 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 373, column: 5)
!1177 = !DILocalVariable(name: "arg", scope: !1178, file: !3, line: 400, type: !1179)
!1178 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 399, column: 7)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !835, line: 136, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !248, line: 62, baseType: !38)
!1181 = !DILocalVariable(name: "arg", scope: !1182, file: !3, line: 427, type: !1183)
!1182 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 426, column: 7)
!1183 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1184 = !DILocation(line: 331, column: 26, scope: !1158, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 632, column: 11, scope: !1132, inlinedAt: !847)
!1186 = !DILocation(line: 331, column: 40, scope: !1158, inlinedAt: !1185)
!1187 = !DILocation(line: 331, column: 53, scope: !1158, inlinedAt: !1185)
!1188 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1189 = !DILocation(line: 332, column: 19, scope: !1158, inlinedAt: !1185)
!1190 = !DILocation(line: 332, column: 41, scope: !1158, inlinedAt: !1185)
!1191 = !DILocation(line: 333, column: 19, scope: !1158, inlinedAt: !1185)
!1192 = !DILocation(line: 333, column: 39, scope: !1158, inlinedAt: !1185)
!1193 = !DILocation(line: 334, column: 26, scope: !1158, inlinedAt: !1185)
!1194 = !DILocation(line: 346, column: 13, scope: !1171, inlinedAt: !1185)
!1195 = !DILocation(line: 346, column: 5, scope: !1171, inlinedAt: !1185)
!1196 = !DILocation(line: 344, column: 12, scope: !1171, inlinedAt: !1185)
!1197 = !DILocation(line: 357, column: 9, scope: !1198, inlinedAt: !1185)
!1198 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 347, column: 7)
!1199 = !DILocation(line: 343, column: 17, scope: !1171, inlinedAt: !1185)
!1200 = !DILocation(line: 362, column: 9, scope: !1198, inlinedAt: !1185)
!1201 = !DILocation(line: 365, column: 25, scope: !1171, inlinedAt: !1185)
!1202 = !DILocation(line: 365, column: 47, scope: !1171, inlinedAt: !1185)
!1203 = !DILocation(line: 365, column: 9, scope: !1171, inlinedAt: !1185)
!1204 = !DILocation(line: 336, column: 9, scope: !1158, inlinedAt: !1185)
!1205 = !DILocalVariable(name: "__dest", arg: 1, scope: !1206, file: !1207, line: 64, type: !1210)
!1206 = distinct !DISubprogram(name: "mempcpy", scope: !1207, file: !1207, line: 64, type: !1208, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1212)
!1207 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!35, !1210, !1211, !36}
!1210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!1211 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!1212 = !{!1205, !1213, !1214}
!1213 = !DILocalVariable(name: "__src", arg: 2, scope: !1206, file: !1207, line: 64, type: !1211)
!1214 = !DILocalVariable(name: "__len", arg: 3, scope: !1206, file: !1207, line: 64, type: !36)
!1215 = !DILocation(line: 64, column: 1, scope: !1206, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 366, column: 9, scope: !1171, inlinedAt: !1185)
!1217 = !DILocation(line: 67, column: 57, scope: !1206, inlinedAt: !1216)
!1218 = !DILocation(line: 67, column: 10, scope: !1206, inlinedAt: !1216)
!1219 = !DILocation(line: 342, column: 11, scope: !1171, inlinedAt: !1185)
!1220 = !DILocation(line: 64, column: 1, scope: !1206, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 367, column: 9, scope: !1171, inlinedAt: !1185)
!1222 = !DILocation(line: 67, column: 57, scope: !1206, inlinedAt: !1221)
!1223 = !DILocation(line: 67, column: 10, scope: !1206, inlinedAt: !1221)
!1224 = !DILocation(line: 368, column: 7, scope: !1171, inlinedAt: !1185)
!1225 = !DILocation(line: 368, column: 10, scope: !1171, inlinedAt: !1185)
!1226 = !DILocation(line: 369, column: 8, scope: !1171, inlinedAt: !1185)
!1227 = !DILocation(line: 372, column: 3, scope: !1158, inlinedAt: !1185)
!1228 = !DILocation(line: 377, column: 24, scope: !1175, inlinedAt: !1185)
!1229 = !DILocation(line: 377, column: 18, scope: !1175, inlinedAt: !1185)
!1230 = !DILocation(line: 378, column: 13, scope: !1175, inlinedAt: !1185)
!1231 = !DILocation(line: 380, column: 17, scope: !1232, inlinedAt: !1185)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 379, column: 11)
!1233 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 378, column: 13)
!1234 = !DILocation(line: 381, column: 15, scope: !1235, inlinedAt: !1185)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 380, column: 17)
!1236 = !DILocation(line: 383, column: 15, scope: !1235, inlinedAt: !1185)
!1237 = !DILocation(line: 387, column: 17, scope: !1238, inlinedAt: !1185)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 386, column: 11)
!1239 = !DILocation(line: 388, column: 15, scope: !1240, inlinedAt: !1185)
!1240 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 387, column: 17)
!1241 = !DILocation(line: 390, column: 15, scope: !1240, inlinedAt: !1185)
!1242 = !DILocalVariable(name: "s", arg: 1, scope: !1243, file: !3, line: 190, type: !44)
!1243 = distinct !DISubprogram(name: "vstrtoumax", scope: !3, file: !3, line: 190, type: !1244, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!1179, !44}
!1246 = !{!1242, !1247, !1248, !1249}
!1247 = !DILocalVariable(name: "end", scope: !1243, file: !3, line: 190, type: !47)
!1248 = !DILocalVariable(name: "val", scope: !1243, file: !3, line: 190, type: !1179)
!1249 = !DILocalVariable(name: "ch", scope: !1250, file: !3, line: 190, type: !43)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 190, column: 1)
!1251 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 190, column: 1)
!1252 = !DILocation(line: 190, column: 1, scope: !1243, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 400, column: 25, scope: !1178, inlinedAt: !1185)
!1254 = !DILocation(line: 190, column: 1, scope: !1251, inlinedAt: !1253)
!1255 = !DILocation(line: 190, column: 1, scope: !1256, inlinedAt: !1253)
!1256 = !DILexicalBlockFile(scope: !1251, file: !3, discriminator: 2)
!1257 = !DILocation(line: 190, column: 1, scope: !1258, inlinedAt: !1253)
!1258 = !DILexicalBlockFile(scope: !1243, file: !3, discriminator: 2)
!1259 = !DILocation(line: 190, column: 1, scope: !1250, inlinedAt: !1253)
!1260 = !DILocation(line: 190, column: 1, scope: !1261, inlinedAt: !1253)
!1261 = !DILexicalBlockFile(scope: !1250, file: !3, discriminator: 3)
!1262 = !DILocation(line: 190, column: 1, scope: !1263, inlinedAt: !1253)
!1263 = !DILexicalBlockFile(scope: !1264, file: !3, discriminator: 3)
!1264 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 190, column: 1)
!1265 = !DILocation(line: 190, column: 1, scope: !1266, inlinedAt: !1253)
!1266 = !DILexicalBlockFile(scope: !1264, file: !3, discriminator: 4)
!1267 = !DILocation(line: 190, column: 1, scope: !1268, inlinedAt: !1253)
!1268 = !DILexicalBlockFile(scope: !1264, file: !3, discriminator: 5)
!1269 = !DILocation(line: 190, column: 1, scope: !1270, inlinedAt: !1253)
!1270 = !DILexicalBlockFile(scope: !1264, file: !3, discriminator: 9)
!1271 = !DILocation(line: 190, column: 1, scope: !1272, inlinedAt: !1253)
!1272 = !DILexicalBlockFile(scope: !1273, file: !3, discriminator: 7)
!1273 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 190, column: 1)
!1274 = !{!961, !961, i64 0}
!1275 = !DIExpression(DW_OP_deref)
!1276 = !DILocalVariable(name: "nptr", arg: 1, scope: !1277, file: !1278, line: 336, type: !1281)
!1277 = distinct !DISubprogram(name: "strtoumax", scope: !1278, file: !1278, line: 336, type: !1279, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1283)
!1278 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!1179, !1281, !1282, !49}
!1281 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!1282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !216)
!1283 = !{!1276, !1284, !1285}
!1284 = !DILocalVariable(name: "endptr", arg: 2, scope: !1277, file: !1278, line: 336, type: !1282)
!1285 = !DILocalVariable(name: "base", arg: 3, scope: !1277, file: !1278, line: 336, type: !49)
!1286 = !DILocation(line: 336, column: 1, scope: !1277, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 190, column: 1, scope: !1288, inlinedAt: !1253)
!1288 = !DILexicalBlockFile(scope: !1273, file: !3, discriminator: 10)
!1289 = !DILocation(line: 339, column: 10, scope: !1277, inlinedAt: !1287)
!1290 = !DILocation(line: 190, column: 1, scope: !1291, inlinedAt: !1253)
!1291 = !DILexicalBlockFile(scope: !1273, file: !3, discriminator: 11)
!1292 = !DILocation(line: 400, column: 19, scope: !1178, inlinedAt: !1185)
!1293 = !DILocation(line: 401, column: 13, scope: !1178, inlinedAt: !1185)
!1294 = !DILocation(line: 403, column: 17, scope: !1295, inlinedAt: !1185)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 402, column: 11)
!1296 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 401, column: 13)
!1297 = !DILocation(line: 404, column: 15, scope: !1298, inlinedAt: !1185)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 403, column: 17)
!1299 = !DILocation(line: 406, column: 15, scope: !1298, inlinedAt: !1185)
!1300 = !DILocation(line: 410, column: 17, scope: !1301, inlinedAt: !1185)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 409, column: 11)
!1302 = !DILocation(line: 411, column: 15, scope: !1303, inlinedAt: !1185)
!1303 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 410, column: 17)
!1304 = !DILocation(line: 413, column: 15, scope: !1303, inlinedAt: !1185)
!1305 = !DILocalVariable(name: "s", arg: 1, scope: !1306, file: !3, line: 191, type: !44)
!1306 = distinct !DISubprogram(name: "vstrtold", scope: !3, file: !3, line: 191, type: !1307, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1183, !44}
!1309 = !{!1305, !1310, !1311, !1312}
!1310 = !DILocalVariable(name: "end", scope: !1306, file: !3, line: 191, type: !47)
!1311 = !DILocalVariable(name: "val", scope: !1306, file: !3, line: 191, type: !1183)
!1312 = !DILocalVariable(name: "ch", scope: !1313, file: !3, line: 191, type: !43)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 191, column: 1)
!1314 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 191, column: 1)
!1315 = !DILocation(line: 191, column: 1, scope: !1306, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 427, column: 27, scope: !1182, inlinedAt: !1185)
!1317 = !DILocation(line: 191, column: 1, scope: !1314, inlinedAt: !1316)
!1318 = !DILocation(line: 191, column: 1, scope: !1319, inlinedAt: !1316)
!1319 = !DILexicalBlockFile(scope: !1314, file: !3, discriminator: 2)
!1320 = !DILocation(line: 191, column: 1, scope: !1321, inlinedAt: !1316)
!1321 = !DILexicalBlockFile(scope: !1306, file: !3, discriminator: 2)
!1322 = !DILocation(line: 191, column: 1, scope: !1313, inlinedAt: !1316)
!1323 = !DILocation(line: 191, column: 1, scope: !1324, inlinedAt: !1316)
!1324 = !DILexicalBlockFile(scope: !1313, file: !3, discriminator: 3)
!1325 = !DILocation(line: 191, column: 1, scope: !1326, inlinedAt: !1316)
!1326 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 3)
!1327 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 191, column: 1)
!1328 = !DILocation(line: 191, column: 1, scope: !1329, inlinedAt: !1316)
!1329 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 4)
!1330 = !DILocation(line: 191, column: 1, scope: !1331, inlinedAt: !1316)
!1331 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 5)
!1332 = !DILocation(line: 191, column: 1, scope: !1333, inlinedAt: !1316)
!1333 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 9)
!1334 = !DILocation(line: 191, column: 1, scope: !1335, inlinedAt: !1316)
!1335 = !DILexicalBlockFile(scope: !1336, file: !3, discriminator: 7)
!1336 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 191, column: 1)
!1337 = !DILocation(line: 191, column: 1, scope: !1338, inlinedAt: !1316)
!1338 = !DILexicalBlockFile(scope: !1336, file: !3, discriminator: 10)
!1339 = !DILocation(line: 191, column: 1, scope: !1340, inlinedAt: !1316)
!1340 = !DILexicalBlockFile(scope: !1336, file: !3, discriminator: 11)
!1341 = !DILocation(line: 427, column: 21, scope: !1182, inlinedAt: !1185)
!1342 = !DILocation(line: 428, column: 13, scope: !1182, inlinedAt: !1185)
!1343 = !DILocation(line: 430, column: 17, scope: !1344, inlinedAt: !1185)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 429, column: 11)
!1345 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 428, column: 13)
!1346 = !DILocation(line: 431, column: 15, scope: !1347, inlinedAt: !1185)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 430, column: 17)
!1348 = !DILocation(line: 433, column: 15, scope: !1347, inlinedAt: !1185)
!1349 = !DILocation(line: 437, column: 17, scope: !1350, inlinedAt: !1185)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 436, column: 11)
!1351 = !DILocation(line: 438, column: 15, scope: !1352, inlinedAt: !1185)
!1352 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 437, column: 17)
!1353 = !DILocation(line: 440, column: 15, scope: !1352, inlinedAt: !1185)
!1354 = !DILocation(line: 446, column: 11, scope: !1176, inlinedAt: !1185)
!1355 = !DILocation(line: 447, column: 9, scope: !1356, inlinedAt: !1185)
!1356 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 446, column: 11)
!1357 = !DILocation(line: 449, column: 9, scope: !1356, inlinedAt: !1185)
!1358 = !DILocation(line: 453, column: 11, scope: !1176, inlinedAt: !1185)
!1359 = !DILocation(line: 455, column: 15, scope: !1360, inlinedAt: !1185)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 454, column: 9)
!1361 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 453, column: 11)
!1362 = !DILocation(line: 456, column: 13, scope: !1363, inlinedAt: !1185)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 455, column: 15)
!1364 = !DILocation(line: 458, column: 13, scope: !1363, inlinedAt: !1185)
!1365 = !DILocation(line: 462, column: 15, scope: !1366, inlinedAt: !1185)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 461, column: 9)
!1367 = !DILocation(line: 463, column: 13, scope: !1368, inlinedAt: !1185)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 462, column: 15)
!1369 = !DILocation(line: 465, column: 13, scope: !1368, inlinedAt: !1185)
!1370 = !DILocation(line: 470, column: 3, scope: !1158, inlinedAt: !1185)
!1371 = !DILocation(line: 636, column: 11, scope: !830, inlinedAt: !847)
!1372 = !DILocation(line: 639, column: 16, scope: !830, inlinedAt: !847)
!1373 = !DILocation(line: 639, column: 13, scope: !830, inlinedAt: !847)
!1374 = !DILocation(line: 640, column: 11, scope: !830, inlinedAt: !847)
!1375 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 643, column: 11, scope: !830, inlinedAt: !847)
!1377 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1376)
!1378 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1376)
!1379 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1376)
!1380 = !DILocation(line: 490, column: 24, scope: !1381, inlinedAt: !847)
!1381 = !DILexicalBlockFile(scope: !832, file: !3, discriminator: 2)
!1382 = distinct !{!1382, !1383, !1384}
!1383 = !DILocation(line: 490, column: 3, scope: !833)
!1384 = !DILocation(line: 645, column: 5, scope: !833)
!1385 = !DILocation(line: 647, column: 20, scope: !810, inlinedAt: !847)
!1386 = !DILocation(line: 648, column: 1, scope: !810, inlinedAt: !847)
!1387 = !DILocation(line: 654, column: 7, scope: !778)
!1388 = !DILocation(line: 705, column: 12, scope: !848)
!1389 = !DILocation(line: 707, column: 20, scope: !778)
!1390 = !DILocation(line: 707, column: 32, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !778, file: !3, discriminator: 1)
!1392 = !DILocation(line: 707, column: 24, scope: !778)
!1393 = !DILocation(line: 706, column: 5, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 1)
!1395 = !DILocation(line: 709, column: 7, scope: !778)
!1396 = !DILocation(line: 711, column: 12, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !778, file: !3, line: 709, column: 7)
!1398 = !DILocation(line: 712, column: 19, scope: !1397)
!1399 = !DILocation(line: 712, column: 12, scope: !1397)
!1400 = !DILocation(line: 710, column: 5, scope: !1397)
!1401 = !DILocation(line: 714, column: 3, scope: !778)
!1402 = !DILocation(line: 715, column: 1, scope: !778)
!1403 = distinct !DISubprogram(name: "print_esc", scope: !3, file: !3, line: 240, type: !1404, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!49, !44, !87}
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1418}
!1407 = !DILocalVariable(name: "escstart", arg: 1, scope: !1403, file: !3, line: 240, type: !44)
!1408 = !DILocalVariable(name: "octal_0", arg: 2, scope: !1403, file: !3, line: 240, type: !87)
!1409 = !DILocalVariable(name: "p", scope: !1403, file: !3, line: 242, type: !44)
!1410 = !DILocalVariable(name: "esc_value", scope: !1403, file: !3, line: 243, type: !49)
!1411 = !DILocalVariable(name: "esc_length", scope: !1403, file: !3, line: 244, type: !49)
!1412 = !DILocalVariable(name: "esc_char", scope: !1413, file: !3, line: 272, type: !46)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 271, column: 5)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 270, column: 12)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 268, column: 12)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 257, column: 12)
!1417 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 246, column: 7)
!1418 = !DILocalVariable(name: "uni_value", scope: !1413, file: !3, line: 273, type: !48)
!1419 = !DILocation(line: 240, column: 24, scope: !1403)
!1420 = !DILocation(line: 240, column: 39, scope: !1403)
!1421 = !DILocation(line: 242, column: 28, scope: !1403)
!1422 = !DILocation(line: 242, column: 15, scope: !1403)
!1423 = !DILocation(line: 243, column: 7, scope: !1403)
!1424 = !DILocation(line: 246, column: 7, scope: !1417)
!1425 = !DILocation(line: 246, column: 10, scope: !1417)
!1426 = !DILocation(line: 246, column: 7, scope: !1403)
!1427 = !DILocation(line: 244, column: 7, scope: !1403)
!1428 = !DILocation(line: 249, column: 28, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 249, column: 7)
!1430 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 247, column: 5)
!1431 = !DILocation(line: 250, column: 30, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1433, file: !3, discriminator: 1)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 249, column: 7)
!1434 = !{!963, !963, i64 0}
!1435 = !DILocation(line: 250, column: 27, scope: !1432)
!1436 = !DILocation(line: 249, column: 7, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1429, file: !3, discriminator: 1)
!1438 = !DILocation(line: 252, column: 38, scope: !1433)
!1439 = !DILocation(line: 252, column: 38, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1433, file: !3, discriminator: 3)
!1441 = !DILocation(line: 252, column: 38, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1433, file: !3, discriminator: 5)
!1443 = !DILocation(line: 252, column: 36, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1433, file: !3, discriminator: 8)
!1445 = !DILocation(line: 251, column: 26, scope: !1433)
!1446 = !DILocation(line: 254, column: 9, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 253, column: 11)
!1448 = !DILocation(line: 254, column: 9, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1447, file: !3, discriminator: 1)
!1450 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 255, column: 7, scope: !1430)
!1452 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1451)
!1453 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1451)
!1454 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1451)
!1455 = !DILocation(line: 257, column: 12, scope: !1416)
!1456 = !DILocation(line: 262, column: 47, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1458, file: !3, discriminator: 1)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 262, column: 7)
!1459 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 258, column: 5)
!1460 = !DILocation(line: 262, column: 41, scope: !1458)
!1461 = !DILocation(line: 262, column: 30, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1458, file: !3, discriminator: 2)
!1463 = !DILocation(line: 263, column: 30, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1465, file: !3, discriminator: 1)
!1465 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 262, column: 7)
!1466 = !DILocation(line: 262, column: 7, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1458, file: !3, discriminator: 3)
!1468 = !DILocation(line: 265, column: 37, scope: !1465)
!1469 = !DILocation(line: 265, column: 35, scope: !1465)
!1470 = !DILocation(line: 264, column: 26, scope: !1465)
!1471 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 266, column: 7, scope: !1459)
!1473 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1472)
!1474 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1472)
!1475 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1472)
!1476 = !DILocation(line: 268, column: 12, scope: !1415)
!1477 = !DILocation(line: 268, column: 15, scope: !1415)
!1478 = !DILocation(line: 268, column: 18, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1415, file: !3, discriminator: 5)
!1480 = !DILocation(line: 268, column: 12, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1416, file: !3, discriminator: 5)
!1482 = !DILocation(line: 269, column: 23, scope: !1415)
!1483 = !DILocalVariable(name: "c", arg: 1, scope: !1484, file: !3, line: 196, type: !46)
!1484 = distinct !DISubprogram(name: "print_esc_char", scope: !3, file: !3, line: 196, type: !1485, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !46}
!1487 = !{!1483}
!1488 = !DILocation(line: 196, column: 22, scope: !1484, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 269, column: 5, scope: !1415)
!1490 = !DILocation(line: 198, column: 3, scope: !1484, inlinedAt: !1489)
!1491 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 201, column: 7, scope: !1493, inlinedAt: !1489)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 199, column: 5)
!1494 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1492)
!1495 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1492)
!1496 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1492)
!1497 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 204, column: 7, scope: !1493, inlinedAt: !1489)
!1499 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1498)
!1500 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1498)
!1501 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1498)
!1502 = !DILocation(line: 207, column: 7, scope: !1493, inlinedAt: !1489)
!1503 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 210, column: 7, scope: !1493, inlinedAt: !1489)
!1505 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1504)
!1506 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1504)
!1507 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1504)
!1508 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 213, column: 7, scope: !1493, inlinedAt: !1489)
!1510 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1509)
!1511 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1509)
!1512 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1509)
!1513 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 216, column: 7, scope: !1493, inlinedAt: !1489)
!1515 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1514)
!1516 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1514)
!1517 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1514)
!1518 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 219, column: 7, scope: !1493, inlinedAt: !1489)
!1520 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1519)
!1521 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1519)
!1522 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1519)
!1523 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 222, column: 7, scope: !1493, inlinedAt: !1489)
!1525 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1524)
!1526 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1524)
!1527 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1524)
!1528 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 225, column: 7, scope: !1493, inlinedAt: !1489)
!1530 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1529)
!1531 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1529)
!1532 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1529)
!1533 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 228, column: 7, scope: !1493, inlinedAt: !1489)
!1535 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1534)
!1536 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1534)
!1537 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1534)
!1538 = !DILocation(line: 270, column: 22, scope: !1414)
!1539 = !DILocation(line: 272, column: 12, scope: !1413)
!1540 = !DILocation(line: 273, column: 20, scope: !1413)
!1541 = !DILocation(line: 276, column: 26, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 276, column: 7)
!1543 = !DILocation(line: 276, column: 35, scope: !1542)
!1544 = !DILocation(line: 276, column: 52, scope: !1542)
!1545 = !DILocation(line: 280, column: 17, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 280, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 279, column: 9)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 276, column: 7)
!1549 = !DILocation(line: 276, column: 7, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1542, file: !3, discriminator: 1)
!1551 = !DILocation(line: 280, column: 15, scope: !1547)
!1552 = !DILocation(line: 281, column: 13, scope: !1546)
!1553 = !DILocation(line: 281, column: 13, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1546, file: !3, discriminator: 1)
!1555 = !DILocation(line: 282, column: 33, scope: !1547)
!1556 = !DILocation(line: 282, column: 40, scope: !1547)
!1557 = !DILocation(line: 282, column: 40, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1547, file: !3, discriminator: 3)
!1559 = !DILocation(line: 282, column: 40, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1547, file: !3, discriminator: 5)
!1561 = !DILocation(line: 282, column: 38, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1547, file: !3, discriminator: 8)
!1563 = !DILocation(line: 278, column: 12, scope: !1548)
!1564 = !DILocation(line: 278, column: 26, scope: !1548)
!1565 = !DILocation(line: 277, column: 23, scope: !1548)
!1566 = distinct !{!1566, !1567, !1568}
!1567 = !DILocation(line: 276, column: 7, scope: !1542)
!1568 = !DILocation(line: 283, column: 9, scope: !1542)
!1569 = !DILocation(line: 290, column: 22, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 290, column: 11)
!1571 = !DILocation(line: 291, column: 12, scope: !1570)
!1572 = !DILocation(line: 292, column: 35, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1570, file: !3, discriminator: 1)
!1574 = !DILocation(line: 293, column: 9, scope: !1570)
!1575 = !DILocation(line: 293, column: 9, scope: !1573)
!1576 = !DILocation(line: 296, column: 27, scope: !1413)
!1577 = !DILocation(line: 296, column: 7, scope: !1413)
!1578 = !DILocation(line: 297, column: 5, scope: !1413)
!1579 = !DILocation(line: 105, column: 23, scope: !950, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 300, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 299, column: 5)
!1582 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1580)
!1583 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1580)
!1584 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1580)
!1585 = !DILocation(line: 301, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 301, column: 11)
!1587 = !DILocation(line: 301, column: 11, scope: !1581)
!1588 = !DILocation(line: 107, column: 10, scope: !950, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 303, column: 11, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 302, column: 9)
!1591 = !DILocation(line: 303, column: 11, scope: !1590)
!1592 = !DILocation(line: 107, column: 10, scope: !967, inlinedAt: !1589)
!1593 = !DILocation(line: 107, column: 10, scope: !969, inlinedAt: !1589)
!1594 = !DILocation(line: 304, column: 12, scope: !1590)
!1595 = !DILocation(line: 305, column: 9, scope: !1590)
!1596 = !DILocation(line: 307, column: 12, scope: !1403)
!1597 = !DILocation(line: 307, column: 23, scope: !1403)
!1598 = !DILocation(line: 307, column: 10, scope: !1403)
!1599 = !DILocation(line: 307, column: 3, scope: !1403)
!1600 = !DILocation(line: 252, column: 31, scope: !1433)
!1601 = !DILocation(line: 265, column: 31, scope: !1465)
!1602 = distinct !DISubprogram(name: "vstrtoimax", scope: !3, file: !3, line: 189, type: !1603, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!834, !44}
!1605 = !{!1606, !1607, !1608, !1609}
!1606 = !DILocalVariable(name: "s", arg: 1, scope: !1602, file: !3, line: 189, type: !44)
!1607 = !DILocalVariable(name: "end", scope: !1602, file: !3, line: 189, type: !47)
!1608 = !DILocalVariable(name: "val", scope: !1602, file: !3, line: 189, type: !834)
!1609 = !DILocalVariable(name: "ch", scope: !1610, file: !3, line: 189, type: !43)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 189, column: 1)
!1611 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 189, column: 1)
!1612 = !DILocation(line: 189, column: 1, scope: !1602)
!1613 = !DILocation(line: 189, column: 1, scope: !1611)
!1614 = !DILocation(line: 189, column: 1, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1611, file: !3, discriminator: 2)
!1616 = !DILocation(line: 189, column: 1, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1602, file: !3, discriminator: 2)
!1618 = !DILocation(line: 189, column: 1, scope: !1610)
!1619 = !DILocation(line: 189, column: 1, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1610, file: !3, discriminator: 3)
!1621 = !DILocation(line: 189, column: 1, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !3, discriminator: 3)
!1623 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 189, column: 1)
!1624 = !DILocation(line: 189, column: 1, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1623, file: !3, discriminator: 4)
!1626 = !DILocation(line: 189, column: 1, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1623, file: !3, discriminator: 5)
!1628 = !DILocation(line: 189, column: 1, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1623, file: !3, discriminator: 9)
!1630 = !DILocation(line: 189, column: 1, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1632, file: !3, discriminator: 7)
!1632 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 189, column: 1)
!1633 = !DILocalVariable(name: "nptr", arg: 1, scope: !1634, file: !1278, line: 324, type: !1281)
!1634 = distinct !DISubprogram(name: "strtoimax", scope: !1278, file: !1278, line: 324, type: !1635, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!834, !1281, !1282, !49}
!1637 = !{!1633, !1638, !1639}
!1638 = !DILocalVariable(name: "endptr", arg: 2, scope: !1634, file: !1278, line: 324, type: !1282)
!1639 = !DILocalVariable(name: "base", arg: 3, scope: !1634, file: !1278, line: 324, type: !49)
!1640 = !DILocation(line: 324, column: 1, scope: !1634, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 189, column: 1, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1632, file: !3, discriminator: 10)
!1643 = !DILocation(line: 327, column: 10, scope: !1634, inlinedAt: !1641)
!1644 = !DILocation(line: 189, column: 1, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1632, file: !3, discriminator: 11)
!1646 = !DILocation(line: 189, column: 1, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1602, file: !3, discriminator: 8)
!1648 = distinct !DISubprogram(name: "verify_numeric", scope: !3, file: !3, line: 145, type: !1649, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{null, !44, !44}
!1651 = !{!1652, !1653}
!1652 = !DILocalVariable(name: "s", arg: 1, scope: !1648, file: !3, line: 145, type: !44)
!1653 = !DILocalVariable(name: "end", arg: 2, scope: !1648, file: !3, line: 145, type: !44)
!1654 = !DILocation(line: 145, column: 29, scope: !1648)
!1655 = !DILocation(line: 145, column: 44, scope: !1648)
!1656 = !DILocation(line: 147, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 147, column: 7)
!1658 = !DILocation(line: 147, column: 7, scope: !1648)
!1659 = !DILocation(line: 149, column: 30, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1661, file: !3, discriminator: 1)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 148, column: 5)
!1662 = !DILocation(line: 149, column: 7, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1661, file: !3, discriminator: 2)
!1664 = !DILocation(line: 151, column: 5, scope: !1661)
!1665 = !DILocation(line: 152, column: 12, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 152, column: 12)
!1667 = !DILocation(line: 152, column: 12, scope: !1657)
!1668 = !DILocation(line: 154, column: 13, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 154, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 153, column: 5)
!1671 = !DILocation(line: 154, column: 11, scope: !1670)
!1672 = !DILocation(line: 155, column: 22, scope: !1669)
!1673 = !DILocation(line: 155, column: 57, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1669, file: !3, discriminator: 1)
!1675 = !DILocation(line: 155, column: 9, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1669, file: !3, discriminator: 2)
!1677 = !DILocation(line: 155, column: 9, scope: !1669)
!1678 = !DILocation(line: 157, column: 22, scope: !1669)
!1679 = !DILocation(line: 157, column: 63, scope: !1674)
!1680 = !DILocation(line: 157, column: 9, scope: !1676)
!1681 = !DILocation(line: 160, column: 1, scope: !1648)
!1682 = distinct !DISubprogram(name: "c_strtold", scope: !121, file: !121, line: 66, type: !1683, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!1183, !44, !216}
!1685 = !{!1686, !1687, !1688, !1689}
!1686 = !DILocalVariable(name: "nptr", arg: 1, scope: !1682, file: !121, line: 66, type: !44)
!1687 = !DILocalVariable(name: "endptr", arg: 2, scope: !1682, file: !121, line: 66, type: !216)
!1688 = !DILocalVariable(name: "r", scope: !1682, file: !121, line: 68, type: !1183)
!1689 = !DILocalVariable(name: "locale", scope: !1682, file: !121, line: 72, type: !99)
!1690 = !DILocation(line: 66, column: 23, scope: !1682)
!1691 = !DILocation(line: 66, column: 36, scope: !1682)
!1692 = !DILocation(line: 58, column: 8, scope: !1693, inlinedAt: !1697)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !121, line: 58, column: 7)
!1694 = distinct !DISubprogram(name: "c_locale", scope: !121, file: !121, line: 56, type: !1695, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !96, variables: !92)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!99}
!1697 = distinct !DILocation(line: 72, column: 21, scope: !1682)
!1698 = !DILocation(line: 58, column: 7, scope: !1694, inlinedAt: !1697)
!1699 = !DILocation(line: 59, column: 22, scope: !1693, inlinedAt: !1697)
!1700 = !DILocation(line: 59, column: 20, scope: !1693, inlinedAt: !1697)
!1701 = !DILocation(line: 59, column: 5, scope: !1693, inlinedAt: !1697)
!1702 = !DILocation(line: 60, column: 10, scope: !1694, inlinedAt: !1697)
!1703 = !DILocation(line: 72, column: 12, scope: !1682)
!1704 = !DILocation(line: 73, column: 8, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1682, file: !121, line: 73, column: 7)
!1706 = !DILocation(line: 73, column: 7, scope: !1682)
!1707 = !DILocation(line: 75, column: 11, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !121, line: 75, column: 11)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !121, line: 74, column: 5)
!1710 = !DILocation(line: 75, column: 11, scope: !1709)
!1711 = !DILocation(line: 76, column: 17, scope: !1708)
!1712 = !DILocation(line: 76, column: 9, scope: !1708)
!1713 = !DILocation(line: 80, column: 7, scope: !1682)
!1714 = !DILocation(line: 68, column: 10, scope: !1682)
!1715 = !DILocation(line: 111, column: 3, scope: !1682)
!1716 = !DILocation(line: 112, column: 1, scope: !1682)
!1717 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !130, file: !130, line: 41, type: !58, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1718)
!1718 = !{!1719}
!1719 = !DILocalVariable(name: "file", arg: 1, scope: !1717, file: !130, line: 41, type: !44)
!1720 = !DILocation(line: 41, column: 41, scope: !1717)
!1721 = !DILocation(line: 43, column: 13, scope: !1717)
!1722 = !DILocation(line: 44, column: 1, scope: !1717)
!1723 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !130, file: !130, line: 78, type: !1724, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !87}
!1726 = !{!1727}
!1727 = !DILocalVariable(name: "ignore", arg: 1, scope: !1723, file: !130, line: 78, type: !87)
!1728 = !DILocation(line: 78, column: 37, scope: !1723)
!1729 = !DILocation(line: 80, column: 16, scope: !1723)
!1730 = !DILocation(line: 81, column: 1, scope: !1723)
!1731 = distinct !DISubprogram(name: "close_stdout", scope: !130, file: !130, line: 107, type: !1732, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null}
!1734 = !{!1735}
!1735 = !DILocalVariable(name: "write_error", scope: !1736, file: !130, line: 112, type: !44)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !130, line: 111, column: 5)
!1737 = distinct !DILexicalBlock(scope: !1731, file: !130, line: 109, column: 7)
!1738 = !DILocation(line: 109, column: 21, scope: !1737)
!1739 = !DILocation(line: 109, column: 7, scope: !1737)
!1740 = !DILocation(line: 109, column: 29, scope: !1737)
!1741 = !DILocation(line: 110, column: 7, scope: !1737)
!1742 = !DILocation(line: 110, column: 12, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1737, file: !130, discriminator: 1)
!1744 = !{i8 0, i8 2}
!1745 = !DILocation(line: 114, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1736, file: !130, line: 113, column: 11)
!1747 = !DILocation(line: 110, column: 25, scope: !1743)
!1748 = !DILocation(line: 110, column: 28, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1737, file: !130, discriminator: 2)
!1750 = !DILocation(line: 110, column: 34, scope: !1749)
!1751 = !DILocation(line: 109, column: 7, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1731, file: !130, discriminator: 1)
!1753 = !DILocation(line: 112, column: 33, scope: !1736)
!1754 = !DILocation(line: 112, column: 19, scope: !1736)
!1755 = !DILocation(line: 113, column: 11, scope: !1746)
!1756 = !DILocation(line: 113, column: 11, scope: !1736)
!1757 = !DILocation(line: 114, column: 36, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1746, file: !130, discriminator: 1)
!1759 = !DILocation(line: 114, column: 9, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1746, file: !130, discriminator: 2)
!1761 = !DILocation(line: 114, column: 9, scope: !1746)
!1762 = !DILocation(line: 117, column: 9, scope: !1758)
!1763 = !DILocation(line: 119, column: 14, scope: !1736)
!1764 = !DILocation(line: 119, column: 7, scope: !1736)
!1765 = !DILocation(line: 122, column: 22, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1731, file: !130, line: 122, column: 8)
!1767 = !DILocation(line: 122, column: 8, scope: !1766)
!1768 = !DILocation(line: 122, column: 30, scope: !1766)
!1769 = !DILocation(line: 122, column: 8, scope: !1731)
!1770 = !DILocation(line: 123, column: 13, scope: !1766)
!1771 = !DILocation(line: 123, column: 6, scope: !1766)
!1772 = !DILocation(line: 124, column: 1, scope: !1731)
!1773 = distinct !DISubprogram(name: "set_program_name", scope: !144, file: !144, line: 39, type: !58, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !140, variables: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DILocalVariable(name: "argv0", arg: 1, scope: !1773, file: !144, line: 39, type: !44)
!1776 = !DILocalVariable(name: "slash", scope: !1773, file: !144, line: 46, type: !44)
!1777 = !DILocalVariable(name: "base", scope: !1773, file: !144, line: 47, type: !44)
!1778 = !DILocation(line: 39, column: 31, scope: !1773)
!1779 = !DILocation(line: 51, column: 13, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1773, file: !144, line: 51, column: 7)
!1781 = !DILocation(line: 51, column: 7, scope: !1773)
!1782 = !DILocation(line: 55, column: 14, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !144, line: 52, column: 5)
!1784 = !DILocation(line: 54, column: 7, scope: !1783)
!1785 = !DILocation(line: 56, column: 7, scope: !1783)
!1786 = !DILocation(line: 59, column: 11, scope: !1773)
!1787 = !DILocation(line: 46, column: 15, scope: !1773)
!1788 = !DILocation(line: 60, column: 17, scope: !1773)
!1789 = !DILocation(line: 60, column: 33, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1773, file: !144, discriminator: 1)
!1791 = !DILocation(line: 60, column: 11, scope: !1773)
!1792 = !DILocation(line: 47, column: 15, scope: !1773)
!1793 = !DILocation(line: 61, column: 12, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1773, file: !144, line: 61, column: 7)
!1795 = !DILocation(line: 61, column: 20, scope: !1794)
!1796 = !DILocation(line: 61, column: 25, scope: !1794)
!1797 = !DILocation(line: 61, column: 28, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1794, file: !144, discriminator: 1)
!1799 = !DILocation(line: 61, column: 61, scope: !1798)
!1800 = !DILocation(line: 61, column: 7, scope: !1790)
!1801 = !DILocation(line: 64, column: 11, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !144, line: 64, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1794, file: !144, line: 62, column: 5)
!1804 = !DILocation(line: 64, column: 36, scope: !1802)
!1805 = !DILocation(line: 64, column: 11, scope: !1803)
!1806 = !DILocation(line: 66, column: 24, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !144, line: 65, column: 9)
!1808 = !DILocation(line: 70, column: 41, scope: !1807)
!1809 = !DILocation(line: 72, column: 9, scope: !1807)
!1810 = !DILocation(line: 84, column: 16, scope: !1773)
!1811 = !DILocation(line: 90, column: 27, scope: !1773)
!1812 = !DILocation(line: 92, column: 1, scope: !1773)
!1813 = distinct !DISubprogram(name: "clone_quoting_options", scope: !159, file: !159, line: 114, type: !1814, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1817)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!1816, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1817 = !{!1818, !1819, !1820}
!1818 = !DILocalVariable(name: "o", arg: 1, scope: !1813, file: !159, line: 114, type: !1816)
!1819 = !DILocalVariable(name: "e", scope: !1813, file: !159, line: 116, type: !49)
!1820 = !DILocalVariable(name: "p", scope: !1813, file: !159, line: 117, type: !1816)
!1821 = !DILocation(line: 114, column: 48, scope: !1813)
!1822 = !DILocation(line: 116, column: 11, scope: !1813)
!1823 = !DILocation(line: 116, column: 7, scope: !1813)
!1824 = !DILocation(line: 117, column: 40, scope: !1813)
!1825 = !DILocation(line: 117, column: 40, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1813, file: !159, discriminator: 3)
!1827 = !DILocation(line: 117, column: 31, scope: !1826)
!1828 = !DILocation(line: 117, column: 27, scope: !1813)
!1829 = !DILocation(line: 119, column: 9, scope: !1813)
!1830 = !DILocation(line: 120, column: 3, scope: !1813)
!1831 = distinct !DISubprogram(name: "get_quoting_style", scope: !159, file: !159, line: 125, type: !1832, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1836)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!5, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1836 = !{!1837}
!1837 = !DILocalVariable(name: "o", arg: 1, scope: !1831, file: !159, line: 125, type: !1834)
!1838 = !DILocation(line: 125, column: 50, scope: !1831)
!1839 = !DILocation(line: 127, column: 11, scope: !1831)
!1840 = !DILocation(line: 127, column: 46, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1831, file: !159, discriminator: 3)
!1842 = !{!1843, !729, i64 0}
!1843 = !{!"quoting_options", !729, i64 0, !961, i64 4, !729, i64 8, !728, i64 40, !728, i64 48}
!1844 = !DILocation(line: 127, column: 3, scope: !1841)
!1845 = distinct !DISubprogram(name: "set_quoting_style", scope: !159, file: !159, line: 133, type: !1846, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !1816, !5}
!1848 = !{!1849, !1850}
!1849 = !DILocalVariable(name: "o", arg: 1, scope: !1845, file: !159, line: 133, type: !1816)
!1850 = !DILocalVariable(name: "s", arg: 2, scope: !1845, file: !159, line: 133, type: !5)
!1851 = !DILocation(line: 133, column: 44, scope: !1845)
!1852 = !DILocation(line: 133, column: 66, scope: !1845)
!1853 = !DILocation(line: 135, column: 4, scope: !1845)
!1854 = !DILocation(line: 135, column: 39, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1845, file: !159, discriminator: 3)
!1856 = !DILocation(line: 135, column: 45, scope: !1855)
!1857 = !DILocation(line: 136, column: 1, scope: !1845)
!1858 = distinct !DISubprogram(name: "set_char_quoting", scope: !159, file: !159, line: 144, type: !1859, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!49, !1816, !46, !49}
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1868, !1869}
!1862 = !DILocalVariable(name: "o", arg: 1, scope: !1858, file: !159, line: 144, type: !1816)
!1863 = !DILocalVariable(name: "c", arg: 2, scope: !1858, file: !159, line: 144, type: !46)
!1864 = !DILocalVariable(name: "i", arg: 3, scope: !1858, file: !159, line: 144, type: !49)
!1865 = !DILocalVariable(name: "uc", scope: !1858, file: !159, line: 146, type: !43)
!1866 = !DILocalVariable(name: "p", scope: !1858, file: !159, line: 147, type: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1868 = !DILocalVariable(name: "shift", scope: !1858, file: !159, line: 149, type: !49)
!1869 = !DILocalVariable(name: "r", scope: !1858, file: !159, line: 150, type: !49)
!1870 = !DILocation(line: 144, column: 43, scope: !1858)
!1871 = !DILocation(line: 144, column: 51, scope: !1858)
!1872 = !DILocation(line: 144, column: 58, scope: !1858)
!1873 = !DILocation(line: 146, column: 17, scope: !1858)
!1874 = !DILocation(line: 148, column: 6, scope: !1858)
!1875 = !DILocation(line: 148, column: 62, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1858, file: !159, discriminator: 3)
!1877 = !DILocation(line: 148, column: 57, scope: !1876)
!1878 = !DILocation(line: 147, column: 17, scope: !1858)
!1879 = !DILocation(line: 149, column: 18, scope: !1858)
!1880 = !DILocation(line: 149, column: 15, scope: !1858)
!1881 = !DILocation(line: 149, column: 7, scope: !1858)
!1882 = !DILocation(line: 150, column: 12, scope: !1858)
!1883 = !DILocation(line: 150, column: 15, scope: !1858)
!1884 = !DILocation(line: 150, column: 25, scope: !1858)
!1885 = !DILocation(line: 150, column: 7, scope: !1858)
!1886 = !DILocation(line: 151, column: 13, scope: !1858)
!1887 = !DILocation(line: 151, column: 18, scope: !1858)
!1888 = !DILocation(line: 151, column: 23, scope: !1858)
!1889 = !DILocation(line: 151, column: 6, scope: !1858)
!1890 = !DILocation(line: 152, column: 3, scope: !1858)
!1891 = distinct !DISubprogram(name: "set_quoting_flags", scope: !159, file: !159, line: 160, type: !1892, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1894)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!49, !1816, !49}
!1894 = !{!1895, !1896, !1897}
!1895 = !DILocalVariable(name: "o", arg: 1, scope: !1891, file: !159, line: 160, type: !1816)
!1896 = !DILocalVariable(name: "i", arg: 2, scope: !1891, file: !159, line: 160, type: !49)
!1897 = !DILocalVariable(name: "r", scope: !1891, file: !159, line: 162, type: !49)
!1898 = !DILocation(line: 160, column: 44, scope: !1891)
!1899 = !DILocation(line: 160, column: 51, scope: !1891)
!1900 = !DILocation(line: 163, column: 8, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1891, file: !159, line: 163, column: 7)
!1902 = !DILocation(line: 163, column: 7, scope: !1891)
!1903 = !DILocation(line: 165, column: 10, scope: !1891)
!1904 = !{!1843, !961, i64 4}
!1905 = !DILocation(line: 162, column: 7, scope: !1891)
!1906 = !DILocation(line: 166, column: 12, scope: !1891)
!1907 = !DILocation(line: 167, column: 3, scope: !1891)
!1908 = distinct !DISubprogram(name: "set_custom_quoting", scope: !159, file: !159, line: 171, type: !1909, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1816, !44, !44}
!1911 = !{!1912, !1913, !1914}
!1912 = !DILocalVariable(name: "o", arg: 1, scope: !1908, file: !159, line: 171, type: !1816)
!1913 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1908, file: !159, line: 172, type: !44)
!1914 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1908, file: !159, line: 172, type: !44)
!1915 = !DILocation(line: 171, column: 45, scope: !1908)
!1916 = !DILocation(line: 172, column: 33, scope: !1908)
!1917 = !DILocation(line: 172, column: 57, scope: !1908)
!1918 = !DILocation(line: 174, column: 8, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1908, file: !159, line: 174, column: 7)
!1920 = !DILocation(line: 174, column: 7, scope: !1908)
!1921 = !DILocation(line: 176, column: 6, scope: !1908)
!1922 = !DILocation(line: 176, column: 12, scope: !1908)
!1923 = !DILocation(line: 177, column: 8, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1908, file: !159, line: 177, column: 7)
!1925 = !DILocation(line: 177, column: 23, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1924, file: !159, discriminator: 1)
!1927 = !DILocation(line: 177, column: 19, scope: !1924)
!1928 = !DILocation(line: 178, column: 5, scope: !1924)
!1929 = !DILocation(line: 179, column: 6, scope: !1908)
!1930 = !DILocation(line: 179, column: 17, scope: !1908)
!1931 = !{!1843, !728, i64 40}
!1932 = !DILocation(line: 180, column: 6, scope: !1908)
!1933 = !DILocation(line: 180, column: 18, scope: !1908)
!1934 = !{!1843, !728, i64 48}
!1935 = !DILocation(line: 181, column: 1, scope: !1908)
!1936 = distinct !DISubprogram(name: "quotearg_buffer", scope: !159, file: !159, line: 776, type: !1937, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!36, !47, !36, !44, !36, !1834}
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1940 = !DILocalVariable(name: "buffer", arg: 1, scope: !1936, file: !159, line: 776, type: !47)
!1941 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1936, file: !159, line: 776, type: !36)
!1942 = !DILocalVariable(name: "arg", arg: 3, scope: !1936, file: !159, line: 777, type: !44)
!1943 = !DILocalVariable(name: "argsize", arg: 4, scope: !1936, file: !159, line: 777, type: !36)
!1944 = !DILocalVariable(name: "o", arg: 5, scope: !1936, file: !159, line: 778, type: !1834)
!1945 = !DILocalVariable(name: "p", scope: !1936, file: !159, line: 780, type: !1834)
!1946 = !DILocalVariable(name: "e", scope: !1936, file: !159, line: 781, type: !49)
!1947 = !DILocalVariable(name: "r", scope: !1936, file: !159, line: 782, type: !36)
!1948 = !DILocation(line: 776, column: 24, scope: !1936)
!1949 = !DILocation(line: 776, column: 39, scope: !1936)
!1950 = !DILocation(line: 777, column: 30, scope: !1936)
!1951 = !DILocation(line: 777, column: 42, scope: !1936)
!1952 = !DILocation(line: 778, column: 48, scope: !1936)
!1953 = !DILocation(line: 780, column: 37, scope: !1936)
!1954 = !DILocation(line: 780, column: 33, scope: !1936)
!1955 = !DILocation(line: 781, column: 11, scope: !1936)
!1956 = !DILocation(line: 781, column: 7, scope: !1936)
!1957 = !DILocation(line: 783, column: 43, scope: !1936)
!1958 = !DILocation(line: 783, column: 53, scope: !1936)
!1959 = !DILocation(line: 783, column: 60, scope: !1936)
!1960 = !DILocation(line: 784, column: 43, scope: !1936)
!1961 = !DILocation(line: 784, column: 58, scope: !1936)
!1962 = !DILocation(line: 782, column: 14, scope: !1936)
!1963 = !DILocation(line: 782, column: 10, scope: !1936)
!1964 = !DILocation(line: 785, column: 9, scope: !1936)
!1965 = !DILocation(line: 786, column: 3, scope: !1936)
!1966 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !159, file: !159, line: 248, type: !1967, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1971)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!36, !47, !36, !44, !36, !5, !49, !1969, !44, !44}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1996, !1997, !1998, !1999, !2000, !2003, !2004, !2021, !2024, !2025, !2032}
!1972 = !DILocalVariable(name: "buffer", arg: 1, scope: !1966, file: !159, line: 248, type: !47)
!1973 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1966, file: !159, line: 248, type: !36)
!1974 = !DILocalVariable(name: "arg", arg: 3, scope: !1966, file: !159, line: 249, type: !44)
!1975 = !DILocalVariable(name: "argsize", arg: 4, scope: !1966, file: !159, line: 249, type: !36)
!1976 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1966, file: !159, line: 250, type: !5)
!1977 = !DILocalVariable(name: "flags", arg: 6, scope: !1966, file: !159, line: 250, type: !49)
!1978 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1966, file: !159, line: 251, type: !1969)
!1979 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1966, file: !159, line: 252, type: !44)
!1980 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1966, file: !159, line: 253, type: !44)
!1981 = !DILocalVariable(name: "i", scope: !1966, file: !159, line: 255, type: !36)
!1982 = !DILocalVariable(name: "len", scope: !1966, file: !159, line: 256, type: !36)
!1983 = !DILocalVariable(name: "orig_buffersize", scope: !1966, file: !159, line: 257, type: !36)
!1984 = !DILocalVariable(name: "quote_string", scope: !1966, file: !159, line: 258, type: !44)
!1985 = !DILocalVariable(name: "quote_string_len", scope: !1966, file: !159, line: 259, type: !36)
!1986 = !DILocalVariable(name: "backslash_escapes", scope: !1966, file: !159, line: 260, type: !87)
!1987 = !DILocalVariable(name: "unibyte_locale", scope: !1966, file: !159, line: 261, type: !87)
!1988 = !DILocalVariable(name: "elide_outer_quotes", scope: !1966, file: !159, line: 262, type: !87)
!1989 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1966, file: !159, line: 263, type: !87)
!1990 = !DILocalVariable(name: "encountered_single_quote", scope: !1966, file: !159, line: 264, type: !87)
!1991 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1966, file: !159, line: 265, type: !87)
!1992 = !DILocalVariable(name: "c", scope: !1993, file: !159, line: 394, type: !43)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !159, line: 393, column: 5)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !159, line: 392, column: 3)
!1995 = distinct !DILexicalBlock(scope: !1966, file: !159, line: 392, column: 3)
!1996 = !DILocalVariable(name: "esc", scope: !1993, file: !159, line: 395, type: !43)
!1997 = !DILocalVariable(name: "is_right_quote", scope: !1993, file: !159, line: 396, type: !87)
!1998 = !DILocalVariable(name: "escaping", scope: !1993, file: !159, line: 397, type: !87)
!1999 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1993, file: !159, line: 398, type: !87)
!2000 = !DILocalVariable(name: "m", scope: !2001, file: !159, line: 602, type: !36)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 600, column: 11)
!2002 = distinct !DILexicalBlock(scope: !1993, file: !159, line: 418, column: 9)
!2003 = !DILocalVariable(name: "printable", scope: !2001, file: !159, line: 604, type: !87)
!2004 = !DILocalVariable(name: "mbstate", scope: !2005, file: !159, line: 613, type: !2007)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !159, line: 612, column: 15)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !159, line: 606, column: 17)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2008, line: 107, baseType: !2009)
!2008 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2008, line: 95, baseType: !2010)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2008, line: 83, size: 64, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2010, file: !2008, line: 85, baseType: !49, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2010, file: !2008, line: 94, baseType: !2014, size: 32, offset: 32)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2010, file: !2008, line: 86, size: 32, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2014, file: !2008, line: 89, baseType: !48, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2014, file: !2008, line: 93, baseType: !2018, size: 32)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !2019)
!2019 = !{!2020}
!2020 = !DISubrange(count: 4)
!2021 = !DILocalVariable(name: "w", scope: !2022, file: !159, line: 623, type: !2023)
!2022 = distinct !DILexicalBlock(scope: !2005, file: !159, line: 622, column: 19)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !37, line: 90, baseType: !49)
!2024 = !DILocalVariable(name: "bytes", scope: !2022, file: !159, line: 624, type: !36)
!2025 = !DILocalVariable(name: "j", scope: !2026, file: !159, line: 649, type: !36)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !159, line: 648, column: 27)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !159, line: 646, column: 29)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !159, line: 641, column: 23)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !159, line: 633, column: 30)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !159, line: 628, column: 30)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !159, line: 626, column: 25)
!2032 = !DILocalVariable(name: "ilim", scope: !2033, file: !159, line: 676, type: !36)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !159, line: 673, column: 15)
!2034 = distinct !DILexicalBlock(scope: !2001, file: !159, line: 672, column: 17)
!2035 = !DILocation(line: 248, column: 33, scope: !1966)
!2036 = !DILocation(line: 248, column: 48, scope: !1966)
!2037 = !DILocation(line: 249, column: 39, scope: !1966)
!2038 = !DILocation(line: 249, column: 51, scope: !1966)
!2039 = !DILocation(line: 250, column: 46, scope: !1966)
!2040 = !DILocation(line: 250, column: 65, scope: !1966)
!2041 = !DILocation(line: 251, column: 47, scope: !1966)
!2042 = !DILocation(line: 252, column: 39, scope: !1966)
!2043 = !DILocation(line: 253, column: 39, scope: !1966)
!2044 = !DILocation(line: 256, column: 10, scope: !1966)
!2045 = !DILocation(line: 257, column: 10, scope: !1966)
!2046 = !DILocation(line: 258, column: 15, scope: !1966)
!2047 = !DILocation(line: 259, column: 10, scope: !1966)
!2048 = !DILocation(line: 260, column: 8, scope: !1966)
!2049 = !DILocation(line: 261, column: 25, scope: !1966)
!2050 = !DILocation(line: 261, column: 36, scope: !1966)
!2051 = !DILocation(line: 262, column: 8, scope: !1966)
!2052 = !DILocation(line: 263, column: 8, scope: !1966)
!2053 = !DILocation(line: 264, column: 8, scope: !1966)
!2054 = !DILocation(line: 265, column: 8, scope: !1966)
!2055 = !DILocation(line: 265, column: 3, scope: !1966)
!2056 = !DILocation(line: 308, column: 3, scope: !1966)
!2057 = !DILocation(line: 315, column: 11, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1966, file: !159, line: 309, column: 5)
!2059 = !DILocation(line: 315, column: 12, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2058, file: !159, line: 315, column: 11)
!2061 = !DILocation(line: 316, column: 9, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2063, file: !159, discriminator: 1)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !159, line: 316, column: 9)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !159, line: 316, column: 9)
!2065 = !DILocation(line: 316, column: 9, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2064, file: !159, discriminator: 1)
!2067 = !DILocation(line: 316, column: 9, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2063, file: !159, discriminator: 2)
!2069 = !DILocation(line: 354, column: 26, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !159, line: 332, column: 11)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !159, line: 331, column: 13)
!2072 = distinct !DILexicalBlock(scope: !2058, file: !159, line: 330, column: 7)
!2073 = !DILocation(line: 355, column: 27, scope: !2070)
!2074 = !DILocation(line: 356, column: 11, scope: !2070)
!2075 = !DILocation(line: 357, column: 14, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !159, line: 357, column: 13)
!2077 = !DILocation(line: 357, column: 13, scope: !2072)
!2078 = !DILocation(line: 358, column: 43, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2080, file: !159, discriminator: 1)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !159, line: 358, column: 11)
!2081 = distinct !DILexicalBlock(scope: !2076, file: !159, line: 358, column: 11)
!2082 = !DILocation(line: 358, column: 11, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2081, file: !159, discriminator: 1)
!2084 = !DILocation(line: 359, column: 13, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2086, file: !159, discriminator: 1)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !159, line: 359, column: 13)
!2087 = distinct !DILexicalBlock(scope: !2080, file: !159, line: 359, column: 13)
!2088 = !DILocation(line: 359, column: 13, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2087, file: !159, discriminator: 1)
!2090 = !DILocation(line: 359, column: 13, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2086, file: !159, discriminator: 2)
!2092 = !DILocation(line: 359, column: 13, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2087, file: !159, discriminator: 3)
!2094 = !DILocation(line: 358, column: 70, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2080, file: !159, discriminator: 2)
!2096 = distinct !{!2096, !2097, !2098}
!2097 = !DILocation(line: 358, column: 11, scope: !2081)
!2098 = !DILocation(line: 359, column: 13, scope: !2081)
!2099 = !DILocation(line: 362, column: 28, scope: !2072)
!2100 = !DILocation(line: 364, column: 7, scope: !2058)
!2101 = !DILocation(line: 367, column: 7, scope: !2058)
!2102 = !DILocation(line: 370, column: 7, scope: !2058)
!2103 = !DILocation(line: 373, column: 12, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2058, file: !159, line: 373, column: 11)
!2105 = !DILocation(line: 373, column: 11, scope: !2058)
!2106 = !DILocation(line: 378, column: 12, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2058, file: !159, line: 378, column: 11)
!2108 = !DILocation(line: 378, column: 11, scope: !2058)
!2109 = !DILocation(line: 379, column: 9, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2111, file: !159, discriminator: 1)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !159, line: 379, column: 9)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !159, line: 379, column: 9)
!2113 = !DILocation(line: 379, column: 9, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2112, file: !159, discriminator: 1)
!2115 = !DILocation(line: 379, column: 9, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2111, file: !159, discriminator: 2)
!2117 = !DILocation(line: 386, column: 7, scope: !2058)
!2118 = !DILocation(line: 389, column: 7, scope: !2058)
!2119 = !DILocation(line: 255, column: 10, scope: !1966)
!2120 = !DILocation(line: 392, column: 8, scope: !1995)
!2121 = !DILocation(line: 392, column: 27, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !1994, file: !159, discriminator: 1)
!2123 = !DILocation(line: 392, column: 19, scope: !2122)
!2124 = !DILocation(line: 392, column: 60, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !1994, file: !159, discriminator: 3)
!2126 = !DILocation(line: 392, column: 3, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !1995, file: !159, discriminator: 4)
!2128 = !DILocation(line: 392, column: 41, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !1994, file: !159, discriminator: 2)
!2130 = !DILocation(line: 392, column: 48, scope: !2129)
!2131 = !DILocation(line: 396, column: 12, scope: !1993)
!2132 = !DILocation(line: 397, column: 12, scope: !1993)
!2133 = !DILocation(line: 398, column: 12, scope: !1993)
!2134 = !DILocation(line: 401, column: 11, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1993, file: !159, line: 400, column: 11)
!2136 = !DILocation(line: 403, column: 17, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2135, file: !159, discriminator: 1)
!2138 = !DILocation(line: 404, column: 39, scope: !2135)
!2139 = !DILocation(line: 408, column: 32, scope: !2135)
!2140 = !DILocation(line: 404, column: 19, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2135, file: !159, discriminator: 2)
!2142 = !DILocation(line: 404, column: 15, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2135, file: !159, discriminator: 4)
!2144 = !DILocation(line: 409, column: 11, scope: !2135)
!2145 = !DILocation(line: 409, column: 26, scope: !2137)
!2146 = !DILocation(line: 409, column: 14, scope: !2137)
!2147 = !DILocation(line: 400, column: 11, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !1993, file: !159, discriminator: 1)
!2149 = !DILocation(line: 416, column: 11, scope: !1993)
!2150 = !DILocation(line: 394, column: 21, scope: !1993)
!2151 = !DILocation(line: 417, column: 7, scope: !1993)
!2152 = !DILocation(line: 420, column: 15, scope: !2002)
!2153 = !DILocation(line: 422, column: 15, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2155, file: !159, discriminator: 1)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !159, line: 422, column: 15)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !159, line: 421, column: 13)
!2157 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 420, column: 15)
!2158 = !DILocation(line: 422, column: 15, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !159, discriminator: 4)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !159, line: 422, column: 15)
!2161 = !DILocation(line: 422, column: 15, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2160, file: !159, discriminator: 3)
!2163 = !DILocation(line: 422, column: 15, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2165, file: !159, discriminator: 6)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !159, line: 422, column: 15)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !159, line: 422, column: 15)
!2167 = distinct !DILexicalBlock(scope: !2160, file: !159, line: 422, column: 15)
!2168 = !DILocation(line: 422, column: 15, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2166, file: !159, discriminator: 6)
!2170 = !DILocation(line: 422, column: 15, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2165, file: !159, discriminator: 7)
!2172 = !DILocation(line: 422, column: 15, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2166, file: !159, discriminator: 8)
!2174 = !DILocation(line: 422, column: 15, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2176, file: !159, discriminator: 11)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !159, line: 422, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2167, file: !159, line: 422, column: 15)
!2178 = !DILocation(line: 422, column: 15, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2177, file: !159, discriminator: 11)
!2180 = !DILocation(line: 422, column: 15, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2176, file: !159, discriminator: 12)
!2182 = !DILocation(line: 422, column: 15, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2177, file: !159, discriminator: 13)
!2184 = !DILocation(line: 422, column: 15, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2186, file: !159, discriminator: 16)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !159, line: 422, column: 15)
!2187 = distinct !DILexicalBlock(scope: !2167, file: !159, line: 422, column: 15)
!2188 = !DILocation(line: 422, column: 15, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2187, file: !159, discriminator: 16)
!2190 = !DILocation(line: 422, column: 15, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2186, file: !159, discriminator: 17)
!2192 = !DILocation(line: 422, column: 15, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2187, file: !159, discriminator: 18)
!2194 = !DILocation(line: 422, column: 15, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2167, file: !159, discriminator: 20)
!2196 = !DILocation(line: 422, column: 15, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !159, discriminator: 22)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !159, line: 422, column: 15)
!2199 = distinct !DILexicalBlock(scope: !2155, file: !159, line: 422, column: 15)
!2200 = !DILocation(line: 422, column: 15, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2199, file: !159, discriminator: 22)
!2202 = !DILocation(line: 422, column: 15, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2198, file: !159, discriminator: 23)
!2204 = !DILocation(line: 422, column: 15, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2199, file: !159, discriminator: 24)
!2206 = !DILocation(line: 430, column: 19, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2156, file: !159, line: 429, column: 19)
!2208 = !DILocation(line: 430, column: 24, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2207, file: !159, discriminator: 1)
!2210 = !DILocation(line: 430, column: 28, scope: !2209)
!2211 = !DILocation(line: 430, column: 38, scope: !2209)
!2212 = !DILocation(line: 430, column: 48, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2207, file: !159, discriminator: 2)
!2214 = !DILocation(line: 430, column: 59, scope: !2213)
!2215 = !DILocation(line: 432, column: 19, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !159, discriminator: 1)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !159, line: 432, column: 19)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !159, line: 432, column: 19)
!2219 = distinct !DILexicalBlock(scope: !2207, file: !159, line: 431, column: 17)
!2220 = !DILocation(line: 432, column: 19, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2218, file: !159, discriminator: 1)
!2222 = !DILocation(line: 432, column: 19, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2217, file: !159, discriminator: 2)
!2224 = !DILocation(line: 432, column: 19, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2218, file: !159, discriminator: 3)
!2226 = !DILocation(line: 433, column: 19, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2228, file: !159, discriminator: 1)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !159, line: 433, column: 19)
!2229 = distinct !DILexicalBlock(scope: !2219, file: !159, line: 433, column: 19)
!2230 = !DILocation(line: 433, column: 19, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2229, file: !159, discriminator: 1)
!2232 = !DILocation(line: 433, column: 19, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2228, file: !159, discriminator: 2)
!2234 = !DILocation(line: 433, column: 19, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2229, file: !159, discriminator: 3)
!2236 = !DILocation(line: 434, column: 17, scope: !2219)
!2237 = !DILocation(line: 441, column: 20, scope: !2157)
!2238 = !DILocation(line: 446, column: 11, scope: !2002)
!2239 = !DILocation(line: 449, column: 19, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 447, column: 13)
!2241 = !DILocation(line: 455, column: 19, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2240, file: !159, line: 454, column: 19)
!2243 = !DILocation(line: 455, column: 24, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2242, file: !159, discriminator: 1)
!2245 = !DILocation(line: 455, column: 28, scope: !2244)
!2246 = !DILocation(line: 455, column: 38, scope: !2244)
!2247 = !DILocation(line: 455, column: 47, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2242, file: !159, discriminator: 2)
!2249 = !DILocation(line: 455, column: 41, scope: !2248)
!2250 = !DILocation(line: 455, column: 52, scope: !2248)
!2251 = !DILocation(line: 454, column: 19, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2240, file: !159, discriminator: 1)
!2253 = !DILocation(line: 456, column: 25, scope: !2242)
!2254 = !DILocation(line: 456, column: 17, scope: !2242)
!2255 = !DILocation(line: 463, column: 25, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2242, file: !159, line: 457, column: 19)
!2257 = !DILocation(line: 467, column: 21, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2259, file: !159, discriminator: 1)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !159, line: 467, column: 21)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !159, line: 467, column: 21)
!2261 = !DILocation(line: 467, column: 21, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2260, file: !159, discriminator: 1)
!2263 = !DILocation(line: 467, column: 21, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2259, file: !159, discriminator: 2)
!2265 = !DILocation(line: 467, column: 21, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2260, file: !159, discriminator: 3)
!2267 = !DILocation(line: 468, column: 21, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2269, file: !159, discriminator: 1)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !159, line: 468, column: 21)
!2270 = distinct !DILexicalBlock(scope: !2256, file: !159, line: 468, column: 21)
!2271 = !DILocation(line: 468, column: 21, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2270, file: !159, discriminator: 1)
!2273 = !DILocation(line: 468, column: 21, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2269, file: !159, discriminator: 2)
!2275 = !DILocation(line: 468, column: 21, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2270, file: !159, discriminator: 3)
!2277 = !DILocation(line: 469, column: 21, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2279, file: !159, discriminator: 1)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !159, line: 469, column: 21)
!2280 = distinct !DILexicalBlock(scope: !2256, file: !159, line: 469, column: 21)
!2281 = !DILocation(line: 469, column: 21, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2280, file: !159, discriminator: 1)
!2283 = !DILocation(line: 469, column: 21, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2279, file: !159, discriminator: 2)
!2285 = !DILocation(line: 469, column: 21, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2280, file: !159, discriminator: 3)
!2287 = !DILocation(line: 470, column: 21, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2289, file: !159, discriminator: 1)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !159, line: 470, column: 21)
!2290 = distinct !DILexicalBlock(scope: !2256, file: !159, line: 470, column: 21)
!2291 = !DILocation(line: 470, column: 21, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2290, file: !159, discriminator: 1)
!2293 = !DILocation(line: 470, column: 21, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2289, file: !159, discriminator: 2)
!2295 = !DILocation(line: 470, column: 21, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2290, file: !159, discriminator: 3)
!2297 = !DILocation(line: 471, column: 21, scope: !2256)
!2298 = !DILocation(line: 395, column: 21, scope: !1993)
!2299 = !DILocation(line: 484, column: 31, scope: !2002)
!2300 = !DILocation(line: 485, column: 31, scope: !2002)
!2301 = !DILocation(line: 487, column: 31, scope: !2002)
!2302 = !DILocation(line: 488, column: 31, scope: !2002)
!2303 = !DILocation(line: 489, column: 31, scope: !2002)
!2304 = !DILocation(line: 492, column: 15, scope: !2002)
!2305 = !DILocation(line: 494, column: 19, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !159, line: 493, column: 13)
!2307 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 492, column: 15)
!2308 = !DILocation(line: 501, column: 33, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 501, column: 15)
!2310 = !DILocation(line: 506, column: 15, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 505, column: 15)
!2312 = !DILocation(line: 510, column: 15, scope: !2002)
!2313 = !DILocation(line: 518, column: 26, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 518, column: 15)
!2315 = !DILocation(line: 518, column: 15, scope: !2002)
!2316 = !DILocation(line: 518, column: 40, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2314, file: !159, discriminator: 1)
!2318 = !DILocation(line: 518, column: 47, scope: !2317)
!2319 = !DILocation(line: 522, column: 17, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 522, column: 15)
!2321 = !DILocation(line: 518, column: 18, scope: !2317)
!2322 = !DILocation(line: 518, column: 65, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2314, file: !159, discriminator: 2)
!2324 = !DILocation(line: 518, column: 15, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2002, file: !159, discriminator: 2)
!2326 = !DILocation(line: 522, column: 15, scope: !2002)
!2327 = !DILocation(line: 526, column: 11, scope: !2002)
!2328 = !DILocation(line: 541, column: 15, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 540, column: 15)
!2330 = !DILocation(line: 548, column: 15, scope: !2002)
!2331 = !DILocation(line: 550, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !159, line: 549, column: 13)
!2333 = distinct !DILexicalBlock(scope: !2002, file: !159, line: 548, column: 15)
!2334 = !DILocation(line: 553, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !159, line: 553, column: 19)
!2336 = !DILocation(line: 553, column: 35, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2335, file: !159, discriminator: 1)
!2338 = !DILocation(line: 553, column: 30, scope: !2335)
!2339 = !DILocation(line: 562, column: 15, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2341, file: !159, discriminator: 1)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !159, line: 562, column: 15)
!2342 = distinct !DILexicalBlock(scope: !2332, file: !159, line: 562, column: 15)
!2343 = !DILocation(line: 562, column: 15, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2342, file: !159, discriminator: 1)
!2345 = !DILocation(line: 562, column: 15, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2341, file: !159, discriminator: 2)
!2347 = !DILocation(line: 562, column: 15, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2342, file: !159, discriminator: 3)
!2349 = !DILocation(line: 563, column: 15, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2351, file: !159, discriminator: 1)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !159, line: 563, column: 15)
!2352 = distinct !DILexicalBlock(scope: !2332, file: !159, line: 563, column: 15)
!2353 = !DILocation(line: 563, column: 15, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !2352, file: !159, discriminator: 1)
!2355 = !DILocation(line: 563, column: 15, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2351, file: !159, discriminator: 2)
!2357 = !DILocation(line: 563, column: 15, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2352, file: !159, discriminator: 3)
!2359 = !DILocation(line: 564, column: 15, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2361, file: !159, discriminator: 1)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !159, line: 564, column: 15)
!2362 = distinct !DILexicalBlock(scope: !2332, file: !159, line: 564, column: 15)
!2363 = !DILocation(line: 564, column: 15, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !2362, file: !159, discriminator: 1)
!2365 = !DILocation(line: 564, column: 15, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2361, file: !159, discriminator: 2)
!2367 = !DILocation(line: 564, column: 15, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2362, file: !159, discriminator: 3)
!2369 = !DILocation(line: 566, column: 13, scope: !2332)
!2370 = !DILocation(line: 606, column: 17, scope: !2001)
!2371 = !DILocation(line: 602, column: 20, scope: !2001)
!2372 = !DILocation(line: 609, column: 29, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2006, file: !159, line: 607, column: 15)
!2374 = !DILocation(line: 609, column: 27, scope: !2373)
!2375 = !DILocation(line: 604, column: 18, scope: !2001)
!2376 = !DILocation(line: 610, column: 15, scope: !2373)
!2377 = !DILocation(line: 613, column: 17, scope: !2005)
!2378 = !DILocation(line: 614, column: 17, scope: !2005)
!2379 = !DILocation(line: 618, column: 29, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2005, file: !159, line: 618, column: 21)
!2381 = !DILocation(line: 618, column: 21, scope: !2005)
!2382 = distinct !{!2382, !2383, !2384}
!2383 = !DILocation(line: 621, column: 17, scope: !2005)
!2384 = !DILocation(line: 667, column: 44, scope: !2005)
!2385 = !DILocation(line: 619, column: 29, scope: !2380)
!2386 = !DILocation(line: 619, column: 19, scope: !2380)
!2387 = !DILocation(line: 623, column: 21, scope: !2022)
!2388 = !DILocation(line: 624, column: 56, scope: !2022)
!2389 = !DILocation(line: 624, column: 50, scope: !2022)
!2390 = !DILocation(line: 625, column: 53, scope: !2022)
!2391 = !DILocation(line: 613, column: 27, scope: !2005)
!2392 = !DILocation(line: 623, column: 29, scope: !2022)
!2393 = !DILocation(line: 624, column: 36, scope: !2022)
!2394 = !DILocation(line: 624, column: 28, scope: !2022)
!2395 = !DILocation(line: 626, column: 25, scope: !2022)
!2396 = !DILocation(line: 636, column: 38, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2398, file: !159, discriminator: 1)
!2398 = distinct !DILexicalBlock(scope: !2029, file: !159, line: 634, column: 23)
!2399 = !DILocation(line: 636, column: 48, scope: !2397)
!2400 = !DILocation(line: 636, column: 51, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2398, file: !159, discriminator: 2)
!2402 = !DILocation(line: 636, column: 48, scope: !2401)
!2403 = !DILocation(line: 636, column: 25, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2398, file: !159, discriminator: 3)
!2405 = !DILocation(line: 637, column: 28, scope: !2398)
!2406 = !DILocation(line: 636, column: 34, scope: !2397)
!2407 = distinct !{!2407, !2408, !2405}
!2408 = !DILocation(line: 636, column: 25, scope: !2398)
!2409 = !DILocation(line: 650, column: 43, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2411, file: !159, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !159, line: 650, column: 29)
!2412 = distinct !DILexicalBlock(scope: !2026, file: !159, line: 650, column: 29)
!2413 = !DILocation(line: 647, column: 29, scope: !2027)
!2414 = !DILocation(line: 649, column: 36, scope: !2026)
!2415 = !DILocation(line: 651, column: 49, scope: !2411)
!2416 = !DILocation(line: 651, column: 39, scope: !2411)
!2417 = !DILocation(line: 651, column: 31, scope: !2411)
!2418 = !DILocation(line: 650, column: 53, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2411, file: !159, discriminator: 2)
!2420 = !DILocation(line: 650, column: 29, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2412, file: !159, discriminator: 1)
!2422 = distinct !{!2422, !2423, !2424}
!2423 = !DILocation(line: 650, column: 29, scope: !2412)
!2424 = !DILocation(line: 659, column: 33, scope: !2412)
!2425 = !DILocation(line: 666, column: 19, scope: !2005)
!2426 = !DILocation(line: 662, column: 41, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2028, file: !159, line: 662, column: 29)
!2428 = !DILocation(line: 662, column: 31, scope: !2427)
!2429 = !DILocation(line: 662, column: 29, scope: !2028)
!2430 = !DILocation(line: 664, column: 27, scope: !2028)
!2431 = !DILocation(line: 667, column: 26, scope: !2005)
!2432 = !DILocation(line: 667, column: 24, scope: !2005)
!2433 = !DILocation(line: 666, column: 19, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2022, file: !159, discriminator: 3)
!2435 = !DILocation(line: 668, column: 15, scope: !2006)
!2436 = !DILocation(line: 670, column: 40, scope: !2001)
!2437 = !DILocation(line: 672, column: 19, scope: !2034)
!2438 = !DILocation(line: 672, column: 45, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2034, file: !159, discriminator: 1)
!2440 = !DILocation(line: 672, column: 23, scope: !2034)
!2441 = !DILocation(line: 676, column: 33, scope: !2033)
!2442 = !DILocation(line: 676, column: 24, scope: !2033)
!2443 = !DILocation(line: 678, column: 17, scope: !2033)
!2444 = !DILocation(line: 680, column: 43, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !159, line: 680, column: 25)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !159, line: 679, column: 19)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !159, line: 678, column: 17)
!2448 = distinct !DILexicalBlock(scope: !2033, file: !159, line: 678, column: 17)
!2449 = !DILocation(line: 682, column: 25, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2451, file: !159, discriminator: 1)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !159, line: 682, column: 25)
!2452 = distinct !DILexicalBlock(scope: !2445, file: !159, line: 681, column: 23)
!2453 = !DILocation(line: 682, column: 25, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2455, file: !159, discriminator: 4)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !159, line: 682, column: 25)
!2456 = !DILocation(line: 682, column: 25, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2455, file: !159, discriminator: 3)
!2458 = !DILocation(line: 682, column: 25, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2460, file: !159, discriminator: 6)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !159, line: 682, column: 25)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !159, line: 682, column: 25)
!2462 = distinct !DILexicalBlock(scope: !2455, file: !159, line: 682, column: 25)
!2463 = !DILocation(line: 682, column: 25, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2461, file: !159, discriminator: 6)
!2465 = !DILocation(line: 682, column: 25, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2460, file: !159, discriminator: 7)
!2467 = !DILocation(line: 682, column: 25, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2461, file: !159, discriminator: 8)
!2469 = !DILocation(line: 682, column: 25, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2471, file: !159, discriminator: 11)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !159, line: 682, column: 25)
!2472 = distinct !DILexicalBlock(scope: !2462, file: !159, line: 682, column: 25)
!2473 = !DILocation(line: 682, column: 25, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2472, file: !159, discriminator: 11)
!2475 = !DILocation(line: 682, column: 25, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2471, file: !159, discriminator: 12)
!2477 = !DILocation(line: 682, column: 25, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2472, file: !159, discriminator: 13)
!2479 = !DILocation(line: 682, column: 25, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2481, file: !159, discriminator: 16)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !159, line: 682, column: 25)
!2482 = distinct !DILexicalBlock(scope: !2462, file: !159, line: 682, column: 25)
!2483 = !DILocation(line: 682, column: 25, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2482, file: !159, discriminator: 16)
!2485 = !DILocation(line: 682, column: 25, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2481, file: !159, discriminator: 17)
!2487 = !DILocation(line: 682, column: 25, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2482, file: !159, discriminator: 18)
!2489 = !DILocation(line: 682, column: 25, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2462, file: !159, discriminator: 20)
!2491 = !DILocation(line: 682, column: 25, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2493, file: !159, discriminator: 22)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !159, line: 682, column: 25)
!2494 = distinct !DILexicalBlock(scope: !2451, file: !159, line: 682, column: 25)
!2495 = !DILocation(line: 682, column: 25, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2494, file: !159, discriminator: 22)
!2497 = !DILocation(line: 682, column: 25, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2493, file: !159, discriminator: 23)
!2499 = !DILocation(line: 682, column: 25, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2494, file: !159, discriminator: 24)
!2501 = !DILocation(line: 683, column: 25, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2503, file: !159, discriminator: 1)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !159, line: 683, column: 25)
!2504 = distinct !DILexicalBlock(scope: !2452, file: !159, line: 683, column: 25)
!2505 = !DILocation(line: 683, column: 25, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2504, file: !159, discriminator: 1)
!2507 = !DILocation(line: 683, column: 25, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2503, file: !159, discriminator: 2)
!2509 = !DILocation(line: 683, column: 25, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2504, file: !159, discriminator: 3)
!2511 = !DILocation(line: 684, column: 25, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2513, file: !159, discriminator: 1)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !159, line: 684, column: 25)
!2514 = distinct !DILexicalBlock(scope: !2452, file: !159, line: 684, column: 25)
!2515 = !DILocation(line: 684, column: 25, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2514, file: !159, discriminator: 1)
!2517 = !DILocation(line: 684, column: 25, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2513, file: !159, discriminator: 2)
!2519 = !DILocation(line: 684, column: 25, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2514, file: !159, discriminator: 3)
!2521 = !DILocation(line: 685, column: 38, scope: !2452)
!2522 = !DILocation(line: 685, column: 33, scope: !2452)
!2523 = !DILocation(line: 686, column: 23, scope: !2452)
!2524 = !DILocation(line: 687, column: 30, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2445, file: !159, line: 687, column: 30)
!2526 = !DILocation(line: 687, column: 30, scope: !2445)
!2527 = !DILocation(line: 689, column: 25, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2529, file: !159, discriminator: 1)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !159, line: 689, column: 25)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !159, line: 689, column: 25)
!2531 = distinct !DILexicalBlock(scope: !2525, file: !159, line: 688, column: 23)
!2532 = !DILocation(line: 689, column: 25, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2530, file: !159, discriminator: 1)
!2534 = !DILocation(line: 689, column: 25, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2529, file: !159, discriminator: 2)
!2536 = !DILocation(line: 689, column: 25, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2530, file: !159, discriminator: 3)
!2538 = !DILocation(line: 691, column: 23, scope: !2531)
!2539 = !DILocation(line: 692, column: 35, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2446, file: !159, line: 692, column: 25)
!2541 = !DILocation(line: 692, column: 30, scope: !2540)
!2542 = !DILocation(line: 692, column: 25, scope: !2446)
!2543 = !DILocation(line: 694, column: 21, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2545, file: !159, discriminator: 1)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !159, line: 694, column: 21)
!2546 = distinct !DILexicalBlock(scope: !2446, file: !159, line: 694, column: 21)
!2547 = !DILocation(line: 694, column: 21, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2545, file: !159, discriminator: 2)
!2549 = !DILocation(line: 694, column: 21, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2551, file: !159, discriminator: 4)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !159, line: 694, column: 21)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !159, line: 694, column: 21)
!2553 = distinct !DILexicalBlock(scope: !2545, file: !159, line: 694, column: 21)
!2554 = !DILocation(line: 694, column: 21, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2552, file: !159, discriminator: 4)
!2556 = !DILocation(line: 694, column: 21, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2551, file: !159, discriminator: 5)
!2558 = !DILocation(line: 694, column: 21, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2552, file: !159, discriminator: 6)
!2560 = !DILocation(line: 694, column: 21, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2562, file: !159, discriminator: 9)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !159, line: 694, column: 21)
!2563 = distinct !DILexicalBlock(scope: !2553, file: !159, line: 694, column: 21)
!2564 = !DILocation(line: 694, column: 21, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2563, file: !159, discriminator: 9)
!2566 = !DILocation(line: 694, column: 21, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2562, file: !159, discriminator: 10)
!2568 = !DILocation(line: 694, column: 21, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2563, file: !159, discriminator: 11)
!2570 = !DILocation(line: 694, column: 21, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2553, file: !159, discriminator: 13)
!2572 = !DILocation(line: 695, column: 21, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2574, file: !159, discriminator: 1)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !159, line: 695, column: 21)
!2575 = distinct !DILexicalBlock(scope: !2446, file: !159, line: 695, column: 21)
!2576 = !DILocation(line: 695, column: 21, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2575, file: !159, discriminator: 1)
!2578 = !DILocation(line: 695, column: 21, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2574, file: !159, discriminator: 2)
!2580 = !DILocation(line: 695, column: 21, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2575, file: !159, discriminator: 3)
!2582 = !DILocation(line: 696, column: 25, scope: !2446)
!2583 = !DILocation(line: 678, column: 17, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2447, file: !159, discriminator: 1)
!2585 = distinct !{!2585, !2586, !2587}
!2586 = !DILocation(line: 678, column: 17, scope: !2448)
!2587 = !DILocation(line: 697, column: 19, scope: !2448)
!2588 = !DILocation(line: 704, column: 34, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !1993, file: !159, line: 704, column: 11)
!2590 = !DILocation(line: 706, column: 14, scope: !2589)
!2591 = !DILocation(line: 707, column: 14, scope: !2589)
!2592 = !DILocation(line: 707, column: 35, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2589, file: !159, discriminator: 1)
!2594 = !DILocation(line: 707, column: 17, scope: !2593)
!2595 = !DILocation(line: 707, column: 53, scope: !2593)
!2596 = !DILocation(line: 707, column: 47, scope: !2593)
!2597 = !DILocation(line: 707, column: 65, scope: !2593)
!2598 = !DILocation(line: 708, column: 15, scope: !2593)
!2599 = !DILocation(line: 708, column: 11, scope: !2589)
!2600 = !DILocation(line: 704, column: 11, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !1993, file: !159, discriminator: 2)
!2602 = !DILocation(line: 712, column: 7, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2604, file: !159, discriminator: 1)
!2604 = distinct !DILexicalBlock(scope: !1993, file: !159, line: 712, column: 7)
!2605 = !DILocation(line: 712, column: 7, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2607, file: !159, discriminator: 4)
!2607 = distinct !DILexicalBlock(scope: !2604, file: !159, line: 712, column: 7)
!2608 = !DILocation(line: 712, column: 7, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2607, file: !159, discriminator: 3)
!2610 = !DILocation(line: 712, column: 7, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2612, file: !159, discriminator: 6)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !159, line: 712, column: 7)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !159, line: 712, column: 7)
!2614 = distinct !DILexicalBlock(scope: !2607, file: !159, line: 712, column: 7)
!2615 = !DILocation(line: 712, column: 7, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2613, file: !159, discriminator: 6)
!2617 = !DILocation(line: 712, column: 7, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2612, file: !159, discriminator: 7)
!2619 = !DILocation(line: 712, column: 7, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2613, file: !159, discriminator: 8)
!2621 = !DILocation(line: 712, column: 7, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2623, file: !159, discriminator: 11)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !159, line: 712, column: 7)
!2624 = distinct !DILexicalBlock(scope: !2614, file: !159, line: 712, column: 7)
!2625 = !DILocation(line: 712, column: 7, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2624, file: !159, discriminator: 11)
!2627 = !DILocation(line: 712, column: 7, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2623, file: !159, discriminator: 12)
!2629 = !DILocation(line: 712, column: 7, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2624, file: !159, discriminator: 13)
!2631 = !DILocation(line: 712, column: 7, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2633, file: !159, discriminator: 16)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !159, line: 712, column: 7)
!2634 = distinct !DILexicalBlock(scope: !2614, file: !159, line: 712, column: 7)
!2635 = !DILocation(line: 712, column: 7, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2634, file: !159, discriminator: 16)
!2637 = !DILocation(line: 712, column: 7, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2633, file: !159, discriminator: 17)
!2639 = !DILocation(line: 712, column: 7, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2634, file: !159, discriminator: 18)
!2641 = !DILocation(line: 712, column: 7, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2614, file: !159, discriminator: 20)
!2643 = !DILocation(line: 712, column: 7, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !159, discriminator: 22)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !159, line: 712, column: 7)
!2646 = distinct !DILexicalBlock(scope: !2604, file: !159, line: 712, column: 7)
!2647 = !DILocation(line: 712, column: 7, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2646, file: !159, discriminator: 22)
!2649 = !DILocation(line: 712, column: 7, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2645, file: !159, discriminator: 23)
!2651 = !DILocation(line: 712, column: 7, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2646, file: !159, discriminator: 24)
!2653 = !DILocation(line: 715, column: 7, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2655, file: !159, discriminator: 1)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !159, line: 715, column: 7)
!2656 = distinct !DILexicalBlock(scope: !1993, file: !159, line: 715, column: 7)
!2657 = !DILocation(line: 715, column: 7, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2655, file: !159, discriminator: 2)
!2659 = !DILocation(line: 715, column: 7, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2661, file: !159, discriminator: 4)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !159, line: 715, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !159, line: 715, column: 7)
!2663 = distinct !DILexicalBlock(scope: !2655, file: !159, line: 715, column: 7)
!2664 = !DILocation(line: 715, column: 7, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2662, file: !159, discriminator: 4)
!2666 = !DILocation(line: 715, column: 7, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2661, file: !159, discriminator: 5)
!2668 = !DILocation(line: 715, column: 7, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2662, file: !159, discriminator: 6)
!2670 = !DILocation(line: 715, column: 7, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2672, file: !159, discriminator: 9)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !159, line: 715, column: 7)
!2673 = distinct !DILexicalBlock(scope: !2663, file: !159, line: 715, column: 7)
!2674 = !DILocation(line: 715, column: 7, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2673, file: !159, discriminator: 9)
!2676 = !DILocation(line: 715, column: 7, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2672, file: !159, discriminator: 10)
!2678 = !DILocation(line: 715, column: 7, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2673, file: !159, discriminator: 11)
!2680 = !DILocation(line: 715, column: 7, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2663, file: !159, discriminator: 13)
!2682 = !DILocation(line: 716, column: 7, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2684, file: !159, discriminator: 1)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !159, line: 716, column: 7)
!2685 = distinct !DILexicalBlock(scope: !1993, file: !159, line: 716, column: 7)
!2686 = !DILocation(line: 716, column: 7, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2685, file: !159, discriminator: 1)
!2688 = !DILocation(line: 716, column: 7, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2684, file: !159, discriminator: 2)
!2690 = !DILocation(line: 716, column: 7, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2685, file: !159, discriminator: 3)
!2692 = !DILocation(line: 718, column: 13, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !1993, file: !159, line: 718, column: 11)
!2694 = !DILocation(line: 718, column: 11, scope: !1993)
!2695 = !DILocation(line: 720, column: 5, scope: !1994)
!2696 = !DILocation(line: 392, column: 75, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !1994, file: !159, discriminator: 5)
!2698 = !DILocation(line: 392, column: 3, scope: !2697)
!2699 = distinct !{!2699, !2700, !2701}
!2700 = !DILocation(line: 392, column: 3, scope: !1995)
!2701 = !DILocation(line: 720, column: 5, scope: !1995)
!2702 = !DILocation(line: 722, column: 11, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !1966, file: !159, line: 722, column: 7)
!2704 = !DILocation(line: 722, column: 16, scope: !2703)
!2705 = !DILocation(line: 730, column: 51, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !1966, file: !159, line: 730, column: 7)
!2707 = !DILocation(line: 731, column: 10, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2706, file: !159, discriminator: 1)
!2709 = !DILocation(line: 733, column: 11, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !159, line: 733, column: 11)
!2711 = distinct !DILexicalBlock(scope: !2706, file: !159, line: 732, column: 5)
!2712 = !DILocation(line: 733, column: 11, scope: !2711)
!2713 = !DILocation(line: 734, column: 16, scope: !2710)
!2714 = !DILocation(line: 734, column: 9, scope: !2710)
!2715 = !DILocation(line: 738, column: 18, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !159, line: 738, column: 16)
!2717 = !DILocation(line: 738, column: 32, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2716, file: !159, discriminator: 1)
!2719 = !DILocation(line: 738, column: 29, scope: !2716)
!2720 = !DILocation(line: 747, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !1966, file: !159, line: 747, column: 7)
!2722 = !DILocation(line: 747, column: 20, scope: !2721)
!2723 = !DILocation(line: 748, column: 12, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2725, file: !159, discriminator: 1)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !159, line: 748, column: 5)
!2726 = distinct !DILexicalBlock(scope: !2721, file: !159, line: 748, column: 5)
!2727 = !DILocation(line: 748, column: 5, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2726, file: !159, discriminator: 1)
!2729 = !DILocation(line: 749, column: 7, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2731, file: !159, discriminator: 1)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !159, line: 749, column: 7)
!2732 = distinct !DILexicalBlock(scope: !2725, file: !159, line: 749, column: 7)
!2733 = !DILocation(line: 749, column: 7, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2732, file: !159, discriminator: 1)
!2735 = !DILocation(line: 749, column: 7, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2731, file: !159, discriminator: 2)
!2737 = !DILocation(line: 749, column: 7, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2732, file: !159, discriminator: 3)
!2739 = !DILocation(line: 748, column: 39, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2725, file: !159, discriminator: 2)
!2741 = distinct !{!2741, !2742, !2743}
!2742 = !DILocation(line: 748, column: 5, scope: !2726)
!2743 = !DILocation(line: 749, column: 7, scope: !2726)
!2744 = !DILocation(line: 751, column: 11, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !1966, file: !159, line: 751, column: 7)
!2746 = !DILocation(line: 751, column: 7, scope: !1966)
!2747 = !DILocation(line: 752, column: 5, scope: !2745)
!2748 = !DILocation(line: 752, column: 17, scope: !2745)
!2749 = !DILocation(line: 758, column: 21, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !1966, file: !159, line: 758, column: 7)
!2751 = !DILocation(line: 758, column: 54, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2750, file: !159, discriminator: 1)
!2753 = !DILocation(line: 758, column: 51, scope: !2750)
!2754 = !DILocation(line: 762, column: 42, scope: !1966)
!2755 = !DILocation(line: 760, column: 10, scope: !1966)
!2756 = !DILocation(line: 760, column: 3, scope: !1966)
!2757 = !DILocation(line: 764, column: 1, scope: !1966)
!2758 = distinct !DISubprogram(name: "gettext_quote", scope: !159, file: !159, line: 199, type: !2759, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!44, !44, !5}
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DILocalVariable(name: "msgid", arg: 1, scope: !2758, file: !159, line: 199, type: !44)
!2763 = !DILocalVariable(name: "s", arg: 2, scope: !2758, file: !159, line: 199, type: !5)
!2764 = !DILocalVariable(name: "translation", scope: !2758, file: !159, line: 201, type: !44)
!2765 = !DILocalVariable(name: "locale_code", scope: !2758, file: !159, line: 202, type: !44)
!2766 = !DILocation(line: 199, column: 28, scope: !2758)
!2767 = !DILocation(line: 199, column: 54, scope: !2758)
!2768 = !DILocation(line: 201, column: 29, scope: !2758)
!2769 = !DILocation(line: 201, column: 15, scope: !2758)
!2770 = !DILocation(line: 204, column: 19, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2758, file: !159, line: 204, column: 7)
!2772 = !DILocation(line: 204, column: 7, scope: !2758)
!2773 = !DILocation(line: 225, column: 17, scope: !2758)
!2774 = !DILocation(line: 202, column: 15, scope: !2758)
!2775 = !DILocalVariable(name: "s2", arg: 2, scope: !2776, file: !2777, line: 160, type: !44)
!2776 = distinct !DISubprogram(name: "strcaseeq0", scope: !2777, file: !2777, line: 160, type: !2778, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2780)
!2777 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!49, !44, !44, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!2780 = !{!2781, !2775, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790}
!2781 = !DILocalVariable(name: "s1", arg: 1, scope: !2776, file: !2777, line: 160, type: !44)
!2782 = !DILocalVariable(name: "s20", arg: 3, scope: !2776, file: !2777, line: 160, type: !46)
!2783 = !DILocalVariable(name: "s21", arg: 4, scope: !2776, file: !2777, line: 160, type: !46)
!2784 = !DILocalVariable(name: "s22", arg: 5, scope: !2776, file: !2777, line: 160, type: !46)
!2785 = !DILocalVariable(name: "s23", arg: 6, scope: !2776, file: !2777, line: 160, type: !46)
!2786 = !DILocalVariable(name: "s24", arg: 7, scope: !2776, file: !2777, line: 160, type: !46)
!2787 = !DILocalVariable(name: "s25", arg: 8, scope: !2776, file: !2777, line: 160, type: !46)
!2788 = !DILocalVariable(name: "s26", arg: 9, scope: !2776, file: !2777, line: 160, type: !46)
!2789 = !DILocalVariable(name: "s27", arg: 10, scope: !2776, file: !2777, line: 160, type: !46)
!2790 = !DILocalVariable(name: "s28", arg: 11, scope: !2776, file: !2777, line: 160, type: !46)
!2791 = !DILocation(line: 160, column: 41, scope: !2776, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 226, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2758, file: !159, line: 226, column: 7)
!2794 = !DILocation(line: 160, column: 120, scope: !2776, inlinedAt: !2792)
!2795 = !DILocation(line: 160, column: 130, scope: !2776, inlinedAt: !2792)
!2796 = !DILocation(line: 162, column: 7, scope: !2797, inlinedAt: !2792)
!2797 = !DILexicalBlockFile(scope: !2798, file: !2777, discriminator: 1)
!2798 = distinct !DILexicalBlock(scope: !2776, file: !2777, line: 162, column: 7)
!2799 = !DILocalVariable(name: "s2", arg: 2, scope: !2800, file: !2777, line: 146, type: !44)
!2800 = distinct !DISubprogram(name: "strcaseeq1", scope: !2777, file: !2777, line: 146, type: !2801, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!49, !44, !44, !46, !46, !46, !46, !46, !46, !46, !46}
!2803 = !{!2804, !2799, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812}
!2804 = !DILocalVariable(name: "s1", arg: 1, scope: !2800, file: !2777, line: 146, type: !44)
!2805 = !DILocalVariable(name: "s21", arg: 3, scope: !2800, file: !2777, line: 146, type: !46)
!2806 = !DILocalVariable(name: "s22", arg: 4, scope: !2800, file: !2777, line: 146, type: !46)
!2807 = !DILocalVariable(name: "s23", arg: 5, scope: !2800, file: !2777, line: 146, type: !46)
!2808 = !DILocalVariable(name: "s24", arg: 6, scope: !2800, file: !2777, line: 146, type: !46)
!2809 = !DILocalVariable(name: "s25", arg: 7, scope: !2800, file: !2777, line: 146, type: !46)
!2810 = !DILocalVariable(name: "s26", arg: 8, scope: !2800, file: !2777, line: 146, type: !46)
!2811 = !DILocalVariable(name: "s27", arg: 9, scope: !2800, file: !2777, line: 146, type: !46)
!2812 = !DILocalVariable(name: "s28", arg: 10, scope: !2800, file: !2777, line: 146, type: !46)
!2813 = !DILocation(line: 146, column: 41, scope: !2800, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 167, column: 16, scope: !2815, inlinedAt: !2792)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !2777, line: 164, column: 11)
!2816 = distinct !DILexicalBlock(scope: !2798, file: !2777, line: 163, column: 5)
!2817 = !DILocation(line: 146, column: 110, scope: !2800, inlinedAt: !2814)
!2818 = !DILocation(line: 146, column: 120, scope: !2800, inlinedAt: !2814)
!2819 = !DILocation(line: 148, column: 7, scope: !2820, inlinedAt: !2814)
!2820 = !DILexicalBlockFile(scope: !2821, file: !2777, discriminator: 1)
!2821 = distinct !DILexicalBlock(scope: !2800, file: !2777, line: 148, column: 7)
!2822 = !DILocalVariable(name: "s2", arg: 2, scope: !2823, file: !2777, line: 132, type: !44)
!2823 = distinct !DISubprogram(name: "strcaseeq2", scope: !2777, file: !2777, line: 132, type: !2824, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!49, !44, !44, !46, !46, !46, !46, !46, !46, !46}
!2826 = !{!2827, !2822, !2828, !2829, !2830, !2831, !2832, !2833, !2834}
!2827 = !DILocalVariable(name: "s1", arg: 1, scope: !2823, file: !2777, line: 132, type: !44)
!2828 = !DILocalVariable(name: "s22", arg: 3, scope: !2823, file: !2777, line: 132, type: !46)
!2829 = !DILocalVariable(name: "s23", arg: 4, scope: !2823, file: !2777, line: 132, type: !46)
!2830 = !DILocalVariable(name: "s24", arg: 5, scope: !2823, file: !2777, line: 132, type: !46)
!2831 = !DILocalVariable(name: "s25", arg: 6, scope: !2823, file: !2777, line: 132, type: !46)
!2832 = !DILocalVariable(name: "s26", arg: 7, scope: !2823, file: !2777, line: 132, type: !46)
!2833 = !DILocalVariable(name: "s27", arg: 8, scope: !2823, file: !2777, line: 132, type: !46)
!2834 = !DILocalVariable(name: "s28", arg: 9, scope: !2823, file: !2777, line: 132, type: !46)
!2835 = !DILocation(line: 132, column: 41, scope: !2823, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 153, column: 16, scope: !2837, inlinedAt: !2814)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !2777, line: 150, column: 11)
!2838 = distinct !DILexicalBlock(scope: !2821, file: !2777, line: 149, column: 5)
!2839 = !DILocation(line: 132, column: 100, scope: !2823, inlinedAt: !2836)
!2840 = !DILocation(line: 132, column: 110, scope: !2823, inlinedAt: !2836)
!2841 = !DILocation(line: 134, column: 7, scope: !2842, inlinedAt: !2836)
!2842 = !DILexicalBlockFile(scope: !2843, file: !2777, discriminator: 1)
!2843 = distinct !DILexicalBlock(scope: !2823, file: !2777, line: 134, column: 7)
!2844 = !DILocalVariable(name: "s2", arg: 2, scope: !2845, file: !2777, line: 118, type: !44)
!2845 = distinct !DISubprogram(name: "strcaseeq3", scope: !2777, file: !2777, line: 118, type: !2846, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!49, !44, !44, !46, !46, !46, !46, !46, !46}
!2848 = !{!2849, !2844, !2850, !2851, !2852, !2853, !2854, !2855}
!2849 = !DILocalVariable(name: "s1", arg: 1, scope: !2845, file: !2777, line: 118, type: !44)
!2850 = !DILocalVariable(name: "s23", arg: 3, scope: !2845, file: !2777, line: 118, type: !46)
!2851 = !DILocalVariable(name: "s24", arg: 4, scope: !2845, file: !2777, line: 118, type: !46)
!2852 = !DILocalVariable(name: "s25", arg: 5, scope: !2845, file: !2777, line: 118, type: !46)
!2853 = !DILocalVariable(name: "s26", arg: 6, scope: !2845, file: !2777, line: 118, type: !46)
!2854 = !DILocalVariable(name: "s27", arg: 7, scope: !2845, file: !2777, line: 118, type: !46)
!2855 = !DILocalVariable(name: "s28", arg: 8, scope: !2845, file: !2777, line: 118, type: !46)
!2856 = !DILocation(line: 118, column: 41, scope: !2845, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 139, column: 16, scope: !2858, inlinedAt: !2836)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !2777, line: 136, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2843, file: !2777, line: 135, column: 5)
!2860 = !DILocation(line: 118, column: 90, scope: !2845, inlinedAt: !2857)
!2861 = !DILocation(line: 118, column: 100, scope: !2845, inlinedAt: !2857)
!2862 = !DILocation(line: 120, column: 7, scope: !2863, inlinedAt: !2857)
!2863 = !DILexicalBlockFile(scope: !2864, file: !2777, discriminator: 2)
!2864 = distinct !DILexicalBlock(scope: !2845, file: !2777, line: 120, column: 7)
!2865 = !DILocation(line: 120, column: 7, scope: !2866, inlinedAt: !2857)
!2866 = !DILexicalBlockFile(scope: !2845, file: !2777, discriminator: 2)
!2867 = !DILocalVariable(name: "s2", arg: 2, scope: !2868, file: !2777, line: 104, type: !44)
!2868 = distinct !DISubprogram(name: "strcaseeq4", scope: !2777, file: !2777, line: 104, type: !2869, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!49, !44, !44, !46, !46, !46, !46, !46}
!2871 = !{!2872, !2867, !2873, !2874, !2875, !2876, !2877}
!2872 = !DILocalVariable(name: "s1", arg: 1, scope: !2868, file: !2777, line: 104, type: !44)
!2873 = !DILocalVariable(name: "s24", arg: 3, scope: !2868, file: !2777, line: 104, type: !46)
!2874 = !DILocalVariable(name: "s25", arg: 4, scope: !2868, file: !2777, line: 104, type: !46)
!2875 = !DILocalVariable(name: "s26", arg: 5, scope: !2868, file: !2777, line: 104, type: !46)
!2876 = !DILocalVariable(name: "s27", arg: 6, scope: !2868, file: !2777, line: 104, type: !46)
!2877 = !DILocalVariable(name: "s28", arg: 7, scope: !2868, file: !2777, line: 104, type: !46)
!2878 = !DILocation(line: 104, column: 41, scope: !2868, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 125, column: 16, scope: !2880, inlinedAt: !2857)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !2777, line: 122, column: 11)
!2881 = distinct !DILexicalBlock(scope: !2864, file: !2777, line: 121, column: 5)
!2882 = !DILocation(line: 104, column: 80, scope: !2868, inlinedAt: !2879)
!2883 = !DILocation(line: 104, column: 90, scope: !2868, inlinedAt: !2879)
!2884 = !DILocation(line: 106, column: 7, scope: !2885, inlinedAt: !2879)
!2885 = !DILexicalBlockFile(scope: !2886, file: !2777, discriminator: 2)
!2886 = distinct !DILexicalBlock(scope: !2868, file: !2777, line: 106, column: 7)
!2887 = !DILocation(line: 106, column: 7, scope: !2888, inlinedAt: !2879)
!2888 = !DILexicalBlockFile(scope: !2868, file: !2777, discriminator: 2)
!2889 = !DILocalVariable(name: "s2", arg: 2, scope: !2890, file: !2777, line: 90, type: !44)
!2890 = distinct !DISubprogram(name: "strcaseeq5", scope: !2777, file: !2777, line: 90, type: !2891, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!49, !44, !44, !46, !46, !46, !46}
!2893 = !{!2894, !2889, !2895, !2896, !2897, !2898}
!2894 = !DILocalVariable(name: "s1", arg: 1, scope: !2890, file: !2777, line: 90, type: !44)
!2895 = !DILocalVariable(name: "s25", arg: 3, scope: !2890, file: !2777, line: 90, type: !46)
!2896 = !DILocalVariable(name: "s26", arg: 4, scope: !2890, file: !2777, line: 90, type: !46)
!2897 = !DILocalVariable(name: "s27", arg: 5, scope: !2890, file: !2777, line: 90, type: !46)
!2898 = !DILocalVariable(name: "s28", arg: 6, scope: !2890, file: !2777, line: 90, type: !46)
!2899 = !DILocation(line: 90, column: 41, scope: !2890, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 111, column: 16, scope: !2901, inlinedAt: !2879)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !2777, line: 108, column: 11)
!2902 = distinct !DILexicalBlock(scope: !2886, file: !2777, line: 107, column: 5)
!2903 = !DILocation(line: 90, column: 70, scope: !2890, inlinedAt: !2900)
!2904 = !DILocation(line: 90, column: 80, scope: !2890, inlinedAt: !2900)
!2905 = !DILocation(line: 92, column: 7, scope: !2906, inlinedAt: !2900)
!2906 = !DILexicalBlockFile(scope: !2907, file: !2777, discriminator: 2)
!2907 = distinct !DILexicalBlock(scope: !2890, file: !2777, line: 92, column: 7)
!2908 = !DILocation(line: 92, column: 7, scope: !2909, inlinedAt: !2900)
!2909 = !DILexicalBlockFile(scope: !2890, file: !2777, discriminator: 2)
!2910 = !DILocation(line: 227, column: 12, scope: !2793)
!2911 = !DILocation(line: 227, column: 21, scope: !2793)
!2912 = !DILocation(line: 227, column: 5, scope: !2793)
!2913 = !DILocation(line: 146, column: 41, scope: !2800, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 167, column: 16, scope: !2815, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 228, column: 7, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2758, file: !159, line: 228, column: 7)
!2917 = !DILocation(line: 146, column: 110, scope: !2800, inlinedAt: !2914)
!2918 = !DILocation(line: 146, column: 120, scope: !2800, inlinedAt: !2914)
!2919 = !DILocation(line: 148, column: 7, scope: !2820, inlinedAt: !2914)
!2920 = !DILocation(line: 132, column: 41, scope: !2823, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 153, column: 16, scope: !2837, inlinedAt: !2914)
!2922 = !DILocation(line: 132, column: 100, scope: !2823, inlinedAt: !2921)
!2923 = !DILocation(line: 132, column: 110, scope: !2823, inlinedAt: !2921)
!2924 = !DILocation(line: 134, column: 7, scope: !2925, inlinedAt: !2921)
!2925 = !DILexicalBlockFile(scope: !2843, file: !2777, discriminator: 2)
!2926 = !DILocation(line: 134, column: 7, scope: !2927, inlinedAt: !2921)
!2927 = !DILexicalBlockFile(scope: !2823, file: !2777, discriminator: 2)
!2928 = !DILocation(line: 118, column: 41, scope: !2845, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 139, column: 16, scope: !2858, inlinedAt: !2921)
!2930 = !DILocation(line: 118, column: 90, scope: !2845, inlinedAt: !2929)
!2931 = !DILocation(line: 118, column: 100, scope: !2845, inlinedAt: !2929)
!2932 = !DILocation(line: 120, column: 7, scope: !2863, inlinedAt: !2929)
!2933 = !DILocation(line: 120, column: 7, scope: !2866, inlinedAt: !2929)
!2934 = !DILocation(line: 104, column: 41, scope: !2868, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 125, column: 16, scope: !2880, inlinedAt: !2929)
!2936 = !DILocation(line: 104, column: 80, scope: !2868, inlinedAt: !2935)
!2937 = !DILocation(line: 104, column: 90, scope: !2868, inlinedAt: !2935)
!2938 = !DILocation(line: 106, column: 7, scope: !2885, inlinedAt: !2935)
!2939 = !DILocation(line: 106, column: 7, scope: !2888, inlinedAt: !2935)
!2940 = !DILocation(line: 90, column: 41, scope: !2890, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 111, column: 16, scope: !2901, inlinedAt: !2935)
!2942 = !DILocation(line: 90, column: 70, scope: !2890, inlinedAt: !2941)
!2943 = !DILocation(line: 90, column: 80, scope: !2890, inlinedAt: !2941)
!2944 = !DILocation(line: 92, column: 7, scope: !2906, inlinedAt: !2941)
!2945 = !DILocation(line: 92, column: 7, scope: !2909, inlinedAt: !2941)
!2946 = !DILocalVariable(name: "s2", arg: 2, scope: !2947, file: !2777, line: 76, type: !44)
!2947 = distinct !DISubprogram(name: "strcaseeq6", scope: !2777, file: !2777, line: 76, type: !2948, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!49, !44, !44, !46, !46, !46}
!2950 = !{!2951, !2946, !2952, !2953, !2954}
!2951 = !DILocalVariable(name: "s1", arg: 1, scope: !2947, file: !2777, line: 76, type: !44)
!2952 = !DILocalVariable(name: "s26", arg: 3, scope: !2947, file: !2777, line: 76, type: !46)
!2953 = !DILocalVariable(name: "s27", arg: 4, scope: !2947, file: !2777, line: 76, type: !46)
!2954 = !DILocalVariable(name: "s28", arg: 5, scope: !2947, file: !2777, line: 76, type: !46)
!2955 = !DILocation(line: 76, column: 41, scope: !2947, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 97, column: 16, scope: !2957, inlinedAt: !2941)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !2777, line: 94, column: 11)
!2958 = distinct !DILexicalBlock(scope: !2907, file: !2777, line: 93, column: 5)
!2959 = !DILocation(line: 76, column: 60, scope: !2947, inlinedAt: !2956)
!2960 = !DILocation(line: 76, column: 70, scope: !2947, inlinedAt: !2956)
!2961 = !DILocation(line: 78, column: 7, scope: !2962, inlinedAt: !2956)
!2962 = !DILexicalBlockFile(scope: !2963, file: !2777, discriminator: 2)
!2963 = distinct !DILexicalBlock(scope: !2947, file: !2777, line: 78, column: 7)
!2964 = !DILocation(line: 78, column: 7, scope: !2965, inlinedAt: !2956)
!2965 = !DILexicalBlockFile(scope: !2947, file: !2777, discriminator: 2)
!2966 = !DILocalVariable(name: "s2", arg: 2, scope: !2967, file: !2777, line: 62, type: !44)
!2967 = distinct !DISubprogram(name: "strcaseeq7", scope: !2777, file: !2777, line: 62, type: !2968, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!49, !44, !44, !46, !46}
!2970 = !{!2971, !2966, !2972, !2973}
!2971 = !DILocalVariable(name: "s1", arg: 1, scope: !2967, file: !2777, line: 62, type: !44)
!2972 = !DILocalVariable(name: "s27", arg: 3, scope: !2967, file: !2777, line: 62, type: !46)
!2973 = !DILocalVariable(name: "s28", arg: 4, scope: !2967, file: !2777, line: 62, type: !46)
!2974 = !DILocation(line: 62, column: 41, scope: !2967, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 83, column: 16, scope: !2976, inlinedAt: !2956)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !2777, line: 80, column: 11)
!2977 = distinct !DILexicalBlock(scope: !2963, file: !2777, line: 79, column: 5)
!2978 = !DILocation(line: 62, column: 50, scope: !2967, inlinedAt: !2975)
!2979 = !DILocation(line: 62, column: 60, scope: !2967, inlinedAt: !2975)
!2980 = !DILocation(line: 64, column: 7, scope: !2981, inlinedAt: !2975)
!2981 = !DILexicalBlockFile(scope: !2982, file: !2777, discriminator: 2)
!2982 = distinct !DILexicalBlock(scope: !2967, file: !2777, line: 64, column: 7)
!2983 = !DILocation(line: 228, column: 7, scope: !2758)
!2984 = !DILocation(line: 229, column: 12, scope: !2916)
!2985 = !DILocation(line: 229, column: 21, scope: !2916)
!2986 = !DILocation(line: 229, column: 5, scope: !2916)
!2987 = !DILocation(line: 231, column: 13, scope: !2758)
!2988 = !DILocation(line: 231, column: 11, scope: !2758)
!2989 = !DILocation(line: 231, column: 3, scope: !2758)
!2990 = !DILocation(line: 232, column: 1, scope: !2758)
!2991 = distinct !DISubprogram(name: "quotearg_alloc", scope: !159, file: !159, line: 791, type: !2992, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!47, !44, !36, !1834}
!2994 = !{!2995, !2996, !2997}
!2995 = !DILocalVariable(name: "arg", arg: 1, scope: !2991, file: !159, line: 791, type: !44)
!2996 = !DILocalVariable(name: "argsize", arg: 2, scope: !2991, file: !159, line: 791, type: !36)
!2997 = !DILocalVariable(name: "o", arg: 3, scope: !2991, file: !159, line: 792, type: !1834)
!2998 = !DILocation(line: 791, column: 29, scope: !2991)
!2999 = !DILocation(line: 791, column: 41, scope: !2991)
!3000 = !DILocation(line: 792, column: 47, scope: !2991)
!3001 = !DILocalVariable(name: "arg", arg: 1, scope: !3002, file: !159, line: 804, type: !44)
!3002 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !159, file: !159, line: 804, type: !3003, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!47, !44, !36, !680, !1834}
!3005 = !{!3001, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013}
!3006 = !DILocalVariable(name: "argsize", arg: 2, scope: !3002, file: !159, line: 804, type: !36)
!3007 = !DILocalVariable(name: "size", arg: 3, scope: !3002, file: !159, line: 804, type: !680)
!3008 = !DILocalVariable(name: "o", arg: 4, scope: !3002, file: !159, line: 805, type: !1834)
!3009 = !DILocalVariable(name: "p", scope: !3002, file: !159, line: 807, type: !1834)
!3010 = !DILocalVariable(name: "e", scope: !3002, file: !159, line: 808, type: !49)
!3011 = !DILocalVariable(name: "flags", scope: !3002, file: !159, line: 810, type: !49)
!3012 = !DILocalVariable(name: "bufsize", scope: !3002, file: !159, line: 811, type: !36)
!3013 = !DILocalVariable(name: "buf", scope: !3002, file: !159, line: 815, type: !47)
!3014 = !DILocation(line: 804, column: 33, scope: !3002, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 794, column: 10, scope: !2991)
!3016 = !DILocation(line: 804, column: 45, scope: !3002, inlinedAt: !3015)
!3017 = !DILocation(line: 804, column: 62, scope: !3002, inlinedAt: !3015)
!3018 = !DILocation(line: 805, column: 51, scope: !3002, inlinedAt: !3015)
!3019 = !DILocation(line: 807, column: 37, scope: !3002, inlinedAt: !3015)
!3020 = !DILocation(line: 807, column: 33, scope: !3002, inlinedAt: !3015)
!3021 = !DILocation(line: 808, column: 11, scope: !3002, inlinedAt: !3015)
!3022 = !DILocation(line: 808, column: 7, scope: !3002, inlinedAt: !3015)
!3023 = !DILocation(line: 810, column: 18, scope: !3002, inlinedAt: !3015)
!3024 = !DILocation(line: 810, column: 24, scope: !3002, inlinedAt: !3015)
!3025 = !DILocation(line: 810, column: 7, scope: !3002, inlinedAt: !3015)
!3026 = !DILocation(line: 811, column: 69, scope: !3002, inlinedAt: !3015)
!3027 = !DILocation(line: 812, column: 53, scope: !3002, inlinedAt: !3015)
!3028 = !DILocation(line: 813, column: 49, scope: !3002, inlinedAt: !3015)
!3029 = !DILocation(line: 814, column: 49, scope: !3002, inlinedAt: !3015)
!3030 = !DILocation(line: 811, column: 20, scope: !3002, inlinedAt: !3015)
!3031 = !DILocation(line: 814, column: 62, scope: !3002, inlinedAt: !3015)
!3032 = !DILocation(line: 811, column: 10, scope: !3002, inlinedAt: !3015)
!3033 = !DILocalVariable(name: "n", arg: 1, scope: !3034, file: !676, line: 220, type: !36)
!3034 = distinct !DISubprogram(name: "xcharalloc", scope: !676, file: !676, line: 220, type: !3035, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!47, !36}
!3037 = !{!3033}
!3038 = !DILocation(line: 220, column: 20, scope: !3034, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 815, column: 15, scope: !3002, inlinedAt: !3015)
!3040 = !DILocation(line: 222, column: 10, scope: !3034, inlinedAt: !3039)
!3041 = !DILocation(line: 815, column: 9, scope: !3002, inlinedAt: !3015)
!3042 = !DILocation(line: 816, column: 60, scope: !3002, inlinedAt: !3015)
!3043 = !DILocation(line: 818, column: 32, scope: !3002, inlinedAt: !3015)
!3044 = !DILocation(line: 818, column: 47, scope: !3002, inlinedAt: !3015)
!3045 = !DILocation(line: 816, column: 3, scope: !3002, inlinedAt: !3015)
!3046 = !DILocation(line: 819, column: 9, scope: !3002, inlinedAt: !3015)
!3047 = !DILocation(line: 794, column: 3, scope: !2991)
!3048 = !DILocation(line: 804, column: 33, scope: !3002)
!3049 = !DILocation(line: 804, column: 45, scope: !3002)
!3050 = !DILocation(line: 804, column: 62, scope: !3002)
!3051 = !DILocation(line: 805, column: 51, scope: !3002)
!3052 = !DILocation(line: 807, column: 37, scope: !3002)
!3053 = !DILocation(line: 807, column: 33, scope: !3002)
!3054 = !DILocation(line: 808, column: 11, scope: !3002)
!3055 = !DILocation(line: 808, column: 7, scope: !3002)
!3056 = !DILocation(line: 810, column: 18, scope: !3002)
!3057 = !DILocation(line: 810, column: 27, scope: !3002)
!3058 = !DILocation(line: 810, column: 24, scope: !3002)
!3059 = !DILocation(line: 810, column: 7, scope: !3002)
!3060 = !DILocation(line: 811, column: 69, scope: !3002)
!3061 = !DILocation(line: 812, column: 53, scope: !3002)
!3062 = !DILocation(line: 813, column: 49, scope: !3002)
!3063 = !DILocation(line: 814, column: 49, scope: !3002)
!3064 = !DILocation(line: 811, column: 20, scope: !3002)
!3065 = !DILocation(line: 814, column: 62, scope: !3002)
!3066 = !DILocation(line: 811, column: 10, scope: !3002)
!3067 = !DILocation(line: 220, column: 20, scope: !3034, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 815, column: 15, scope: !3002)
!3069 = !DILocation(line: 222, column: 10, scope: !3034, inlinedAt: !3068)
!3070 = !DILocation(line: 815, column: 9, scope: !3002)
!3071 = !DILocation(line: 816, column: 60, scope: !3002)
!3072 = !DILocation(line: 818, column: 32, scope: !3002)
!3073 = !DILocation(line: 818, column: 47, scope: !3002)
!3074 = !DILocation(line: 816, column: 3, scope: !3002)
!3075 = !DILocation(line: 819, column: 9, scope: !3002)
!3076 = !DILocation(line: 820, column: 7, scope: !3002)
!3077 = !DILocation(line: 821, column: 11, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3002, file: !159, line: 820, column: 7)
!3079 = !{!962, !962, i64 0}
!3080 = !DILocation(line: 821, column: 5, scope: !3078)
!3081 = !DILocation(line: 822, column: 3, scope: !3002)
!3082 = distinct !DISubprogram(name: "quotearg_free", scope: !159, file: !159, line: 840, type: !1732, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3083)
!3083 = !{!3084, !3085}
!3084 = !DILocalVariable(name: "sv", scope: !3082, file: !159, line: 842, type: !185)
!3085 = !DILocalVariable(name: "i", scope: !3082, file: !159, line: 843, type: !49)
!3086 = !DILocation(line: 842, column: 24, scope: !3082)
!3087 = !DILocation(line: 842, column: 19, scope: !3082)
!3088 = !DILocation(line: 843, column: 7, scope: !3082)
!3089 = !DILocation(line: 844, column: 19, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3091, file: !159, discriminator: 1)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !159, line: 844, column: 3)
!3092 = distinct !DILexicalBlock(scope: !3082, file: !159, line: 844, column: 3)
!3093 = !DILocation(line: 844, column: 17, scope: !3090)
!3094 = !DILocation(line: 844, column: 3, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3092, file: !159, discriminator: 1)
!3096 = !DILocation(line: 845, column: 17, scope: !3091)
!3097 = !{!3098, !728, i64 8}
!3098 = !{!"slotvec", !962, i64 0, !728, i64 8}
!3099 = !DILocation(line: 845, column: 5, scope: !3091)
!3100 = !DILocation(line: 844, column: 28, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !3091, file: !159, discriminator: 2)
!3102 = distinct !{!3102, !3103, !3104}
!3103 = !DILocation(line: 844, column: 3, scope: !3092)
!3104 = !DILocation(line: 845, column: 20, scope: !3092)
!3105 = !DILocation(line: 846, column: 13, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3082, file: !159, line: 846, column: 7)
!3107 = !DILocation(line: 846, column: 17, scope: !3106)
!3108 = !DILocation(line: 846, column: 7, scope: !3082)
!3109 = !DILocation(line: 848, column: 7, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3106, file: !159, line: 847, column: 5)
!3111 = !DILocation(line: 849, column: 21, scope: !3110)
!3112 = !{!3098, !962, i64 0}
!3113 = !DILocation(line: 850, column: 20, scope: !3110)
!3114 = !DILocation(line: 851, column: 5, scope: !3110)
!3115 = !DILocation(line: 852, column: 10, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3082, file: !159, line: 852, column: 7)
!3117 = !DILocation(line: 852, column: 7, scope: !3082)
!3118 = !DILocation(line: 854, column: 13, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !159, line: 853, column: 5)
!3120 = !DILocation(line: 854, column: 7, scope: !3119)
!3121 = !DILocation(line: 855, column: 15, scope: !3119)
!3122 = !DILocation(line: 856, column: 5, scope: !3119)
!3123 = !DILocation(line: 857, column: 10, scope: !3082)
!3124 = !DILocation(line: 858, column: 1, scope: !3082)
!3125 = distinct !DISubprogram(name: "quotearg_n", scope: !159, file: !159, line: 922, type: !3126, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!47, !49, !44}
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "n", arg: 1, scope: !3125, file: !159, line: 922, type: !49)
!3130 = !DILocalVariable(name: "arg", arg: 2, scope: !3125, file: !159, line: 922, type: !44)
!3131 = !DILocation(line: 922, column: 17, scope: !3125)
!3132 = !DILocation(line: 922, column: 32, scope: !3125)
!3133 = !DILocation(line: 924, column: 10, scope: !3125)
!3134 = !DILocation(line: 924, column: 3, scope: !3125)
!3135 = distinct !DISubprogram(name: "quotearg_n_options", scope: !159, file: !159, line: 869, type: !3136, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!47, !49, !44, !36, !1834}
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3145, !3148, !3150, !3151, !3152}
!3139 = !DILocalVariable(name: "n", arg: 1, scope: !3135, file: !159, line: 869, type: !49)
!3140 = !DILocalVariable(name: "arg", arg: 2, scope: !3135, file: !159, line: 869, type: !44)
!3141 = !DILocalVariable(name: "argsize", arg: 3, scope: !3135, file: !159, line: 869, type: !36)
!3142 = !DILocalVariable(name: "options", arg: 4, scope: !3135, file: !159, line: 870, type: !1834)
!3143 = !DILocalVariable(name: "e", scope: !3135, file: !159, line: 872, type: !49)
!3144 = !DILocalVariable(name: "sv", scope: !3135, file: !159, line: 874, type: !185)
!3145 = !DILocalVariable(name: "preallocated", scope: !3146, file: !159, line: 881, type: !87)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !159, line: 880, column: 5)
!3147 = distinct !DILexicalBlock(scope: !3135, file: !159, line: 879, column: 7)
!3148 = !DILocalVariable(name: "size", scope: !3149, file: !159, line: 894, type: !36)
!3149 = distinct !DILexicalBlock(scope: !3135, file: !159, line: 893, column: 3)
!3150 = !DILocalVariable(name: "val", scope: !3149, file: !159, line: 895, type: !47)
!3151 = !DILocalVariable(name: "flags", scope: !3149, file: !159, line: 897, type: !49)
!3152 = !DILocalVariable(name: "qsize", scope: !3149, file: !159, line: 898, type: !36)
!3153 = !DILocation(line: 869, column: 25, scope: !3135)
!3154 = !DILocation(line: 869, column: 40, scope: !3135)
!3155 = !DILocation(line: 869, column: 52, scope: !3135)
!3156 = !DILocation(line: 870, column: 51, scope: !3135)
!3157 = !DILocation(line: 872, column: 11, scope: !3135)
!3158 = !DILocation(line: 872, column: 7, scope: !3135)
!3159 = !DILocation(line: 874, column: 24, scope: !3135)
!3160 = !DILocation(line: 874, column: 19, scope: !3135)
!3161 = !DILocation(line: 876, column: 9, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3135, file: !159, line: 876, column: 7)
!3163 = !DILocation(line: 876, column: 7, scope: !3135)
!3164 = !DILocation(line: 877, column: 5, scope: !3162)
!3165 = !DILocation(line: 879, column: 7, scope: !3147)
!3166 = !DILocation(line: 879, column: 14, scope: !3147)
!3167 = !DILocation(line: 879, column: 7, scope: !3135)
!3168 = !DILocation(line: 881, column: 31, scope: !3146)
!3169 = !DILocation(line: 883, column: 67, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3146, file: !159, line: 883, column: 11)
!3171 = !DILocation(line: 883, column: 11, scope: !3146)
!3172 = !DILocation(line: 884, column: 9, scope: !3170)
!3173 = !DILocation(line: 886, column: 32, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !3146, file: !159, discriminator: 3)
!3175 = !DILocation(line: 886, column: 61, scope: !3174)
!3176 = !DILocation(line: 886, column: 58, scope: !3174)
!3177 = !DILocation(line: 886, column: 66, scope: !3174)
!3178 = !DILocation(line: 886, column: 22, scope: !3174)
!3179 = !DILocation(line: 886, column: 15, scope: !3174)
!3180 = !DILocation(line: 887, column: 11, scope: !3146)
!3181 = !DILocation(line: 888, column: 15, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3146, file: !159, line: 887, column: 11)
!3183 = !{i64 0, i64 8, !3079, i64 8, i64 8, !727}
!3184 = !DILocation(line: 888, column: 9, scope: !3182)
!3185 = !DILocation(line: 889, column: 20, scope: !3146)
!3186 = !DILocation(line: 889, column: 18, scope: !3146)
!3187 = !DILocation(line: 889, column: 7, scope: !3146)
!3188 = !DILocation(line: 889, column: 38, scope: !3146)
!3189 = !DILocation(line: 889, column: 31, scope: !3146)
!3190 = !DILocation(line: 889, column: 48, scope: !3146)
!3191 = !DILocation(line: 890, column: 14, scope: !3146)
!3192 = !DILocation(line: 891, column: 5, scope: !3146)
!3193 = !DILocation(line: 894, column: 19, scope: !3149)
!3194 = !DILocation(line: 894, column: 25, scope: !3149)
!3195 = !DILocation(line: 894, column: 12, scope: !3149)
!3196 = !DILocation(line: 895, column: 23, scope: !3149)
!3197 = !DILocation(line: 895, column: 11, scope: !3149)
!3198 = !DILocation(line: 897, column: 26, scope: !3149)
!3199 = !DILocation(line: 897, column: 32, scope: !3149)
!3200 = !DILocation(line: 897, column: 9, scope: !3149)
!3201 = !DILocation(line: 899, column: 55, scope: !3149)
!3202 = !DILocation(line: 900, column: 46, scope: !3149)
!3203 = !DILocation(line: 901, column: 55, scope: !3149)
!3204 = !DILocation(line: 902, column: 55, scope: !3149)
!3205 = !DILocation(line: 898, column: 20, scope: !3149)
!3206 = !DILocation(line: 898, column: 12, scope: !3149)
!3207 = !DILocation(line: 904, column: 14, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3149, file: !159, line: 904, column: 9)
!3209 = !DILocation(line: 904, column: 9, scope: !3149)
!3210 = !DILocation(line: 906, column: 35, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !159, line: 905, column: 7)
!3212 = !DILocation(line: 906, column: 20, scope: !3211)
!3213 = !DILocation(line: 907, column: 17, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3211, file: !159, line: 907, column: 13)
!3215 = !DILocation(line: 907, column: 13, scope: !3211)
!3216 = !DILocation(line: 908, column: 11, scope: !3214)
!3217 = !DILocation(line: 220, column: 20, scope: !3034, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 909, column: 27, scope: !3211)
!3219 = !DILocation(line: 222, column: 10, scope: !3034, inlinedAt: !3218)
!3220 = !DILocation(line: 909, column: 19, scope: !3211)
!3221 = !DILocation(line: 910, column: 69, scope: !3211)
!3222 = !DILocation(line: 912, column: 44, scope: !3211)
!3223 = !DILocation(line: 913, column: 44, scope: !3211)
!3224 = !DILocation(line: 910, column: 9, scope: !3211)
!3225 = !DILocation(line: 914, column: 7, scope: !3211)
!3226 = !DILocation(line: 916, column: 11, scope: !3149)
!3227 = !DILocation(line: 917, column: 5, scope: !3149)
!3228 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !159, file: !159, line: 928, type: !3229, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!47, !49, !44, !36}
!3231 = !{!3232, !3233, !3234}
!3232 = !DILocalVariable(name: "n", arg: 1, scope: !3228, file: !159, line: 928, type: !49)
!3233 = !DILocalVariable(name: "arg", arg: 2, scope: !3228, file: !159, line: 928, type: !44)
!3234 = !DILocalVariable(name: "argsize", arg: 3, scope: !3228, file: !159, line: 928, type: !36)
!3235 = !DILocation(line: 928, column: 21, scope: !3228)
!3236 = !DILocation(line: 928, column: 36, scope: !3228)
!3237 = !DILocation(line: 928, column: 48, scope: !3228)
!3238 = !DILocation(line: 930, column: 10, scope: !3228)
!3239 = !DILocation(line: 930, column: 3, scope: !3228)
!3240 = distinct !DISubprogram(name: "quotearg", scope: !159, file: !159, line: 934, type: !3241, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!47, !44}
!3243 = !{!3244}
!3244 = !DILocalVariable(name: "arg", arg: 1, scope: !3240, file: !159, line: 934, type: !44)
!3245 = !DILocation(line: 934, column: 23, scope: !3240)
!3246 = !DILocation(line: 922, column: 17, scope: !3125, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 936, column: 10, scope: !3240)
!3248 = !DILocation(line: 922, column: 32, scope: !3125, inlinedAt: !3247)
!3249 = !DILocation(line: 924, column: 10, scope: !3125, inlinedAt: !3247)
!3250 = !DILocation(line: 936, column: 3, scope: !3240)
!3251 = distinct !DISubprogram(name: "quotearg_mem", scope: !159, file: !159, line: 940, type: !3252, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!47, !44, !36}
!3254 = !{!3255, !3256}
!3255 = !DILocalVariable(name: "arg", arg: 1, scope: !3251, file: !159, line: 940, type: !44)
!3256 = !DILocalVariable(name: "argsize", arg: 2, scope: !3251, file: !159, line: 940, type: !36)
!3257 = !DILocation(line: 940, column: 27, scope: !3251)
!3258 = !DILocation(line: 940, column: 39, scope: !3251)
!3259 = !DILocation(line: 928, column: 21, scope: !3228, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 942, column: 10, scope: !3251)
!3261 = !DILocation(line: 928, column: 36, scope: !3228, inlinedAt: !3260)
!3262 = !DILocation(line: 928, column: 48, scope: !3228, inlinedAt: !3260)
!3263 = !DILocation(line: 930, column: 10, scope: !3228, inlinedAt: !3260)
!3264 = !DILocation(line: 942, column: 3, scope: !3251)
!3265 = distinct !DISubprogram(name: "quotearg_n_style", scope: !159, file: !159, line: 946, type: !3266, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!47, !49, !5, !44}
!3268 = !{!3269, !3270, !3271, !3272}
!3269 = !DILocalVariable(name: "n", arg: 1, scope: !3265, file: !159, line: 946, type: !49)
!3270 = !DILocalVariable(name: "s", arg: 2, scope: !3265, file: !159, line: 946, type: !5)
!3271 = !DILocalVariable(name: "arg", arg: 3, scope: !3265, file: !159, line: 946, type: !44)
!3272 = !DILocalVariable(name: "o", scope: !3265, file: !159, line: 948, type: !1835)
!3273 = !DILocalVariable(name: "o", scope: !3274, file: !159, line: 187, type: !166)
!3274 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !159, file: !159, line: 185, type: !3275, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!166, !5}
!3277 = !{!3278, !3273}
!3278 = !DILocalVariable(name: "style", arg: 1, scope: !3274, file: !159, line: 185, type: !5)
!3279 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3280 = !DILocation(line: 187, column: 26, scope: !3274, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 948, column: 36, scope: !3265)
!3282 = !DILocation(line: 946, column: 23, scope: !3265)
!3283 = !DILocation(line: 946, column: 45, scope: !3265)
!3284 = !DILocation(line: 946, column: 60, scope: !3265)
!3285 = !DILocation(line: 948, column: 3, scope: !3265)
!3286 = !DILocation(line: 948, column: 32, scope: !3265)
!3287 = !DILocation(line: 185, column: 48, scope: !3274, inlinedAt: !3281)
!3288 = !DILocation(line: 187, column: 3, scope: !3274, inlinedAt: !3281)
!3289 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3290 = !DILocation(line: 188, column: 13, scope: !3291, inlinedAt: !3281)
!3291 = distinct !DILexicalBlock(scope: !3274, file: !159, line: 188, column: 7)
!3292 = !DILocation(line: 188, column: 7, scope: !3274, inlinedAt: !3281)
!3293 = !DILocation(line: 189, column: 5, scope: !3291, inlinedAt: !3281)
!3294 = !{!3295}
!3295 = distinct !{!3295, !3296, !"quoting_options_from_style: argument 0"}
!3296 = distinct !{!3296, !"quoting_options_from_style"}
!3297 = !DILocation(line: 191, column: 10, scope: !3274, inlinedAt: !3281)
!3298 = !DILocation(line: 192, column: 1, scope: !3274, inlinedAt: !3281)
!3299 = !DILocation(line: 949, column: 10, scope: !3265)
!3300 = !DILocation(line: 950, column: 1, scope: !3265)
!3301 = !DILocation(line: 949, column: 3, scope: !3265)
!3302 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !159, file: !159, line: 953, type: !3303, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!47, !49, !5, !44, !36}
!3305 = !{!3306, !3307, !3308, !3309, !3310}
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !159, line: 953, type: !49)
!3307 = !DILocalVariable(name: "s", arg: 2, scope: !3302, file: !159, line: 953, type: !5)
!3308 = !DILocalVariable(name: "arg", arg: 3, scope: !3302, file: !159, line: 954, type: !44)
!3309 = !DILocalVariable(name: "argsize", arg: 4, scope: !3302, file: !159, line: 954, type: !36)
!3310 = !DILocalVariable(name: "o", scope: !3302, file: !159, line: 956, type: !1835)
!3311 = !DILocation(line: 187, column: 26, scope: !3274, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 956, column: 36, scope: !3302)
!3313 = !DILocation(line: 953, column: 27, scope: !3302)
!3314 = !DILocation(line: 953, column: 49, scope: !3302)
!3315 = !DILocation(line: 954, column: 35, scope: !3302)
!3316 = !DILocation(line: 954, column: 47, scope: !3302)
!3317 = !DILocation(line: 956, column: 3, scope: !3302)
!3318 = !DILocation(line: 956, column: 32, scope: !3302)
!3319 = !DILocation(line: 185, column: 48, scope: !3274, inlinedAt: !3312)
!3320 = !DILocation(line: 187, column: 3, scope: !3274, inlinedAt: !3312)
!3321 = !DILocation(line: 188, column: 13, scope: !3291, inlinedAt: !3312)
!3322 = !DILocation(line: 188, column: 7, scope: !3274, inlinedAt: !3312)
!3323 = !DILocation(line: 189, column: 5, scope: !3291, inlinedAt: !3312)
!3324 = !{!3325}
!3325 = distinct !{!3325, !3326, !"quoting_options_from_style: argument 0"}
!3326 = distinct !{!3326, !"quoting_options_from_style"}
!3327 = !DILocation(line: 191, column: 10, scope: !3274, inlinedAt: !3312)
!3328 = !DILocation(line: 192, column: 1, scope: !3274, inlinedAt: !3312)
!3329 = !DILocation(line: 957, column: 10, scope: !3302)
!3330 = !DILocation(line: 958, column: 1, scope: !3302)
!3331 = !DILocation(line: 957, column: 3, scope: !3302)
!3332 = distinct !DISubprogram(name: "quotearg_style", scope: !159, file: !159, line: 961, type: !3333, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!47, !5, !44}
!3335 = !{!3336, !3337}
!3336 = !DILocalVariable(name: "s", arg: 1, scope: !3332, file: !159, line: 961, type: !5)
!3337 = !DILocalVariable(name: "arg", arg: 2, scope: !3332, file: !159, line: 961, type: !44)
!3338 = !DILocation(line: 187, column: 26, scope: !3274, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 948, column: 36, scope: !3265, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 963, column: 10, scope: !3332)
!3341 = !DILocation(line: 961, column: 36, scope: !3332)
!3342 = !DILocation(line: 961, column: 51, scope: !3332)
!3343 = !DILocation(line: 946, column: 23, scope: !3265, inlinedAt: !3340)
!3344 = !DILocation(line: 946, column: 45, scope: !3265, inlinedAt: !3340)
!3345 = !DILocation(line: 946, column: 60, scope: !3265, inlinedAt: !3340)
!3346 = !DILocation(line: 948, column: 3, scope: !3265, inlinedAt: !3340)
!3347 = !DILocation(line: 948, column: 32, scope: !3265, inlinedAt: !3340)
!3348 = !DILocation(line: 185, column: 48, scope: !3274, inlinedAt: !3339)
!3349 = !DILocation(line: 187, column: 3, scope: !3274, inlinedAt: !3339)
!3350 = !DILocation(line: 188, column: 13, scope: !3291, inlinedAt: !3339)
!3351 = !DILocation(line: 188, column: 7, scope: !3274, inlinedAt: !3339)
!3352 = !DILocation(line: 189, column: 5, scope: !3291, inlinedAt: !3339)
!3353 = !{!3354}
!3354 = distinct !{!3354, !3355, !"quoting_options_from_style: argument 0"}
!3355 = distinct !{!3355, !"quoting_options_from_style"}
!3356 = !DILocation(line: 191, column: 10, scope: !3274, inlinedAt: !3339)
!3357 = !DILocation(line: 192, column: 1, scope: !3274, inlinedAt: !3339)
!3358 = !DILocation(line: 949, column: 10, scope: !3265, inlinedAt: !3340)
!3359 = !DILocation(line: 950, column: 1, scope: !3265, inlinedAt: !3340)
!3360 = !DILocation(line: 963, column: 3, scope: !3332)
!3361 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !159, file: !159, line: 967, type: !3362, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!47, !5, !44, !36}
!3364 = !{!3365, !3366, !3367}
!3365 = !DILocalVariable(name: "s", arg: 1, scope: !3361, file: !159, line: 967, type: !5)
!3366 = !DILocalVariable(name: "arg", arg: 2, scope: !3361, file: !159, line: 967, type: !44)
!3367 = !DILocalVariable(name: "argsize", arg: 3, scope: !3361, file: !159, line: 967, type: !36)
!3368 = !DILocation(line: 187, column: 26, scope: !3274, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 956, column: 36, scope: !3302, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 969, column: 10, scope: !3361)
!3371 = !DILocation(line: 967, column: 40, scope: !3361)
!3372 = !DILocation(line: 967, column: 55, scope: !3361)
!3373 = !DILocation(line: 967, column: 67, scope: !3361)
!3374 = !DILocation(line: 953, column: 27, scope: !3302, inlinedAt: !3370)
!3375 = !DILocation(line: 953, column: 49, scope: !3302, inlinedAt: !3370)
!3376 = !DILocation(line: 954, column: 35, scope: !3302, inlinedAt: !3370)
!3377 = !DILocation(line: 954, column: 47, scope: !3302, inlinedAt: !3370)
!3378 = !DILocation(line: 956, column: 3, scope: !3302, inlinedAt: !3370)
!3379 = !DILocation(line: 956, column: 32, scope: !3302, inlinedAt: !3370)
!3380 = !DILocation(line: 185, column: 48, scope: !3274, inlinedAt: !3369)
!3381 = !DILocation(line: 187, column: 3, scope: !3274, inlinedAt: !3369)
!3382 = !DILocation(line: 188, column: 13, scope: !3291, inlinedAt: !3369)
!3383 = !DILocation(line: 188, column: 7, scope: !3274, inlinedAt: !3369)
!3384 = !DILocation(line: 189, column: 5, scope: !3291, inlinedAt: !3369)
!3385 = !{!3386}
!3386 = distinct !{!3386, !3387, !"quoting_options_from_style: argument 0"}
!3387 = distinct !{!3387, !"quoting_options_from_style"}
!3388 = !DILocation(line: 191, column: 10, scope: !3274, inlinedAt: !3369)
!3389 = !DILocation(line: 192, column: 1, scope: !3274, inlinedAt: !3369)
!3390 = !DILocation(line: 957, column: 10, scope: !3302, inlinedAt: !3370)
!3391 = !DILocation(line: 958, column: 1, scope: !3302, inlinedAt: !3370)
!3392 = !DILocation(line: 969, column: 3, scope: !3361)
!3393 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !159, file: !159, line: 973, type: !3394, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!47, !44, !36, !46}
!3396 = !{!3397, !3398, !3399, !3400}
!3397 = !DILocalVariable(name: "arg", arg: 1, scope: !3393, file: !159, line: 973, type: !44)
!3398 = !DILocalVariable(name: "argsize", arg: 2, scope: !3393, file: !159, line: 973, type: !36)
!3399 = !DILocalVariable(name: "ch", arg: 3, scope: !3393, file: !159, line: 973, type: !46)
!3400 = !DILocalVariable(name: "options", scope: !3393, file: !159, line: 975, type: !166)
!3401 = !DILocation(line: 973, column: 32, scope: !3393)
!3402 = !DILocation(line: 973, column: 44, scope: !3393)
!3403 = !DILocation(line: 973, column: 58, scope: !3393)
!3404 = !DILocation(line: 975, column: 3, scope: !3393)
!3405 = !DILocation(line: 976, column: 13, scope: !3393)
!3406 = !{i64 0, i64 4, !889, i64 4, i64 4, !1274, i64 8, i64 32, !889, i64 40, i64 8, !727, i64 48, i64 8, !727}
!3407 = !DILocation(line: 975, column: 26, scope: !3393)
!3408 = !DILocation(line: 144, column: 43, scope: !1858, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 977, column: 3, scope: !3393)
!3410 = !DILocation(line: 144, column: 51, scope: !1858, inlinedAt: !3409)
!3411 = !DILocation(line: 144, column: 58, scope: !1858, inlinedAt: !3409)
!3412 = !DILocation(line: 146, column: 17, scope: !1858, inlinedAt: !3409)
!3413 = !DILocation(line: 148, column: 62, scope: !1876, inlinedAt: !3409)
!3414 = !DILocation(line: 148, column: 57, scope: !1876, inlinedAt: !3409)
!3415 = !DILocation(line: 147, column: 17, scope: !1858, inlinedAt: !3409)
!3416 = !DILocation(line: 149, column: 18, scope: !1858, inlinedAt: !3409)
!3417 = !DILocation(line: 149, column: 15, scope: !1858, inlinedAt: !3409)
!3418 = !DILocation(line: 149, column: 7, scope: !1858, inlinedAt: !3409)
!3419 = !DILocation(line: 150, column: 12, scope: !1858, inlinedAt: !3409)
!3420 = !DILocation(line: 150, column: 15, scope: !1858, inlinedAt: !3409)
!3421 = !DILocation(line: 150, column: 25, scope: !1858, inlinedAt: !3409)
!3422 = !DILocation(line: 150, column: 7, scope: !1858, inlinedAt: !3409)
!3423 = !DILocation(line: 151, column: 18, scope: !1858, inlinedAt: !3409)
!3424 = !DILocation(line: 151, column: 23, scope: !1858, inlinedAt: !3409)
!3425 = !DILocation(line: 151, column: 6, scope: !1858, inlinedAt: !3409)
!3426 = !DILocation(line: 978, column: 10, scope: !3393)
!3427 = !DILocation(line: 979, column: 1, scope: !3393)
!3428 = !DILocation(line: 978, column: 3, scope: !3393)
!3429 = distinct !DISubprogram(name: "quotearg_char", scope: !159, file: !159, line: 982, type: !3430, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!47, !44, !46}
!3432 = !{!3433, !3434}
!3433 = !DILocalVariable(name: "arg", arg: 1, scope: !3429, file: !159, line: 982, type: !44)
!3434 = !DILocalVariable(name: "ch", arg: 2, scope: !3429, file: !159, line: 982, type: !46)
!3435 = !DILocation(line: 982, column: 28, scope: !3429)
!3436 = !DILocation(line: 982, column: 38, scope: !3429)
!3437 = !DILocation(line: 973, column: 32, scope: !3393, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 984, column: 10, scope: !3429)
!3439 = !DILocation(line: 973, column: 44, scope: !3393, inlinedAt: !3438)
!3440 = !DILocation(line: 973, column: 58, scope: !3393, inlinedAt: !3438)
!3441 = !DILocation(line: 975, column: 3, scope: !3393, inlinedAt: !3438)
!3442 = !DILocation(line: 976, column: 13, scope: !3393, inlinedAt: !3438)
!3443 = !DILocation(line: 975, column: 26, scope: !3393, inlinedAt: !3438)
!3444 = !DILocation(line: 144, column: 43, scope: !1858, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 977, column: 3, scope: !3393, inlinedAt: !3438)
!3446 = !DILocation(line: 144, column: 51, scope: !1858, inlinedAt: !3445)
!3447 = !DILocation(line: 144, column: 58, scope: !1858, inlinedAt: !3445)
!3448 = !DILocation(line: 146, column: 17, scope: !1858, inlinedAt: !3445)
!3449 = !DILocation(line: 148, column: 62, scope: !1876, inlinedAt: !3445)
!3450 = !DILocation(line: 148, column: 57, scope: !1876, inlinedAt: !3445)
!3451 = !DILocation(line: 147, column: 17, scope: !1858, inlinedAt: !3445)
!3452 = !DILocation(line: 149, column: 18, scope: !1858, inlinedAt: !3445)
!3453 = !DILocation(line: 149, column: 15, scope: !1858, inlinedAt: !3445)
!3454 = !DILocation(line: 149, column: 7, scope: !1858, inlinedAt: !3445)
!3455 = !DILocation(line: 150, column: 12, scope: !1858, inlinedAt: !3445)
!3456 = !DILocation(line: 150, column: 15, scope: !1858, inlinedAt: !3445)
!3457 = !DILocation(line: 150, column: 25, scope: !1858, inlinedAt: !3445)
!3458 = !DILocation(line: 150, column: 7, scope: !1858, inlinedAt: !3445)
!3459 = !DILocation(line: 151, column: 18, scope: !1858, inlinedAt: !3445)
!3460 = !DILocation(line: 151, column: 23, scope: !1858, inlinedAt: !3445)
!3461 = !DILocation(line: 151, column: 6, scope: !1858, inlinedAt: !3445)
!3462 = !DILocation(line: 978, column: 10, scope: !3393, inlinedAt: !3438)
!3463 = !DILocation(line: 979, column: 1, scope: !3393, inlinedAt: !3438)
!3464 = !DILocation(line: 984, column: 3, scope: !3429)
!3465 = distinct !DISubprogram(name: "quotearg_colon", scope: !159, file: !159, line: 988, type: !3241, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3466)
!3466 = !{!3467}
!3467 = !DILocalVariable(name: "arg", arg: 1, scope: !3465, file: !159, line: 988, type: !44)
!3468 = !DILocation(line: 988, column: 29, scope: !3465)
!3469 = !DILocation(line: 982, column: 28, scope: !3429, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 990, column: 10, scope: !3465)
!3471 = !DILocation(line: 982, column: 38, scope: !3429, inlinedAt: !3470)
!3472 = !DILocation(line: 973, column: 32, scope: !3393, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 984, column: 10, scope: !3429, inlinedAt: !3470)
!3474 = !DILocation(line: 973, column: 44, scope: !3393, inlinedAt: !3473)
!3475 = !DILocation(line: 973, column: 58, scope: !3393, inlinedAt: !3473)
!3476 = !DILocation(line: 975, column: 3, scope: !3393, inlinedAt: !3473)
!3477 = !DILocation(line: 976, column: 13, scope: !3393, inlinedAt: !3473)
!3478 = !DILocation(line: 975, column: 26, scope: !3393, inlinedAt: !3473)
!3479 = !DILocation(line: 144, column: 43, scope: !1858, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 977, column: 3, scope: !3393, inlinedAt: !3473)
!3481 = !DILocation(line: 144, column: 51, scope: !1858, inlinedAt: !3480)
!3482 = !DILocation(line: 144, column: 58, scope: !1858, inlinedAt: !3480)
!3483 = !DILocation(line: 146, column: 17, scope: !1858, inlinedAt: !3480)
!3484 = !DILocation(line: 148, column: 57, scope: !1876, inlinedAt: !3480)
!3485 = !DILocation(line: 147, column: 17, scope: !1858, inlinedAt: !3480)
!3486 = !DILocation(line: 149, column: 7, scope: !1858, inlinedAt: !3480)
!3487 = !DILocation(line: 150, column: 12, scope: !1858, inlinedAt: !3480)
!3488 = !DILocation(line: 151, column: 6, scope: !1858, inlinedAt: !3480)
!3489 = !DILocation(line: 978, column: 10, scope: !3393, inlinedAt: !3473)
!3490 = !DILocation(line: 979, column: 1, scope: !3393, inlinedAt: !3473)
!3491 = !DILocation(line: 990, column: 3, scope: !3465)
!3492 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !159, file: !159, line: 994, type: !3252, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3493)
!3493 = !{!3494, !3495}
!3494 = !DILocalVariable(name: "arg", arg: 1, scope: !3492, file: !159, line: 994, type: !44)
!3495 = !DILocalVariable(name: "argsize", arg: 2, scope: !3492, file: !159, line: 994, type: !36)
!3496 = !DILocation(line: 994, column: 33, scope: !3492)
!3497 = !DILocation(line: 994, column: 45, scope: !3492)
!3498 = !DILocation(line: 973, column: 32, scope: !3393, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 996, column: 10, scope: !3492)
!3500 = !DILocation(line: 973, column: 44, scope: !3393, inlinedAt: !3499)
!3501 = !DILocation(line: 973, column: 58, scope: !3393, inlinedAt: !3499)
!3502 = !DILocation(line: 975, column: 3, scope: !3393, inlinedAt: !3499)
!3503 = !DILocation(line: 976, column: 13, scope: !3393, inlinedAt: !3499)
!3504 = !DILocation(line: 975, column: 26, scope: !3393, inlinedAt: !3499)
!3505 = !DILocation(line: 144, column: 43, scope: !1858, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 977, column: 3, scope: !3393, inlinedAt: !3499)
!3507 = !DILocation(line: 144, column: 51, scope: !1858, inlinedAt: !3506)
!3508 = !DILocation(line: 144, column: 58, scope: !1858, inlinedAt: !3506)
!3509 = !DILocation(line: 146, column: 17, scope: !1858, inlinedAt: !3506)
!3510 = !DILocation(line: 148, column: 57, scope: !1876, inlinedAt: !3506)
!3511 = !DILocation(line: 147, column: 17, scope: !1858, inlinedAt: !3506)
!3512 = !DILocation(line: 149, column: 7, scope: !1858, inlinedAt: !3506)
!3513 = !DILocation(line: 150, column: 12, scope: !1858, inlinedAt: !3506)
!3514 = !DILocation(line: 151, column: 6, scope: !1858, inlinedAt: !3506)
!3515 = !DILocation(line: 978, column: 10, scope: !3393, inlinedAt: !3499)
!3516 = !DILocation(line: 979, column: 1, scope: !3393, inlinedAt: !3499)
!3517 = !DILocation(line: 996, column: 3, scope: !3492)
!3518 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !159, file: !159, line: 1000, type: !3266, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3519)
!3519 = !{!3520, !3521, !3522, !3523}
!3520 = !DILocalVariable(name: "n", arg: 1, scope: !3518, file: !159, line: 1000, type: !49)
!3521 = !DILocalVariable(name: "s", arg: 2, scope: !3518, file: !159, line: 1000, type: !5)
!3522 = !DILocalVariable(name: "arg", arg: 3, scope: !3518, file: !159, line: 1000, type: !44)
!3523 = !DILocalVariable(name: "options", scope: !3518, file: !159, line: 1002, type: !166)
!3524 = !DILocation(line: 187, column: 26, scope: !3274, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1003, column: 13, scope: !3518)
!3526 = !DILocation(line: 1000, column: 29, scope: !3518)
!3527 = !DILocation(line: 1000, column: 51, scope: !3518)
!3528 = !DILocation(line: 1000, column: 66, scope: !3518)
!3529 = !DILocation(line: 1002, column: 3, scope: !3518)
!3530 = !DILocation(line: 185, column: 48, scope: !3274, inlinedAt: !3525)
!3531 = !DILocation(line: 187, column: 3, scope: !3274, inlinedAt: !3525)
!3532 = !DILocation(line: 188, column: 13, scope: !3291, inlinedAt: !3525)
!3533 = !DILocation(line: 188, column: 7, scope: !3274, inlinedAt: !3525)
!3534 = !DILocation(line: 189, column: 5, scope: !3291, inlinedAt: !3525)
!3535 = !{!3536}
!3536 = distinct !{!3536, !3537, !"quoting_options_from_style: argument 0"}
!3537 = distinct !{!3537, !"quoting_options_from_style"}
!3538 = !DILocation(line: 191, column: 10, scope: !3274, inlinedAt: !3525)
!3539 = !DILocation(line: 192, column: 1, scope: !3274, inlinedAt: !3525)
!3540 = !DILocation(line: 1003, column: 13, scope: !3518)
!3541 = !DILocation(line: 1002, column: 26, scope: !3518)
!3542 = !DILocation(line: 144, column: 43, scope: !1858, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 1004, column: 3, scope: !3518)
!3544 = !DILocation(line: 144, column: 51, scope: !1858, inlinedAt: !3543)
!3545 = !DILocation(line: 144, column: 58, scope: !1858, inlinedAt: !3543)
!3546 = !DILocation(line: 146, column: 17, scope: !1858, inlinedAt: !3543)
!3547 = !DILocation(line: 148, column: 57, scope: !1876, inlinedAt: !3543)
!3548 = !DILocation(line: 147, column: 17, scope: !1858, inlinedAt: !3543)
!3549 = !DILocation(line: 149, column: 7, scope: !1858, inlinedAt: !3543)
!3550 = !DILocation(line: 150, column: 12, scope: !1858, inlinedAt: !3543)
!3551 = !DILocation(line: 151, column: 6, scope: !1858, inlinedAt: !3543)
!3552 = !DILocation(line: 1005, column: 10, scope: !3518)
!3553 = !DILocation(line: 1006, column: 1, scope: !3518)
!3554 = !DILocation(line: 1005, column: 3, scope: !3518)
!3555 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !159, file: !159, line: 1009, type: !3556, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!47, !49, !44, !44, !44}
!3558 = !{!3559, !3560, !3561, !3562}
!3559 = !DILocalVariable(name: "n", arg: 1, scope: !3555, file: !159, line: 1009, type: !49)
!3560 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3555, file: !159, line: 1009, type: !44)
!3561 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3555, file: !159, line: 1010, type: !44)
!3562 = !DILocalVariable(name: "arg", arg: 4, scope: !3555, file: !159, line: 1010, type: !44)
!3563 = !DILocation(line: 1009, column: 24, scope: !3555)
!3564 = !DILocation(line: 1009, column: 39, scope: !3555)
!3565 = !DILocation(line: 1010, column: 32, scope: !3555)
!3566 = !DILocation(line: 1010, column: 57, scope: !3555)
!3567 = !DILocalVariable(name: "n", arg: 1, scope: !3568, file: !159, line: 1017, type: !49)
!3568 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !159, file: !159, line: 1017, type: !3569, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3571)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!47, !49, !44, !44, !44, !36}
!3571 = !{!3567, !3572, !3573, !3574, !3575, !3576}
!3572 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3568, file: !159, line: 1017, type: !44)
!3573 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3568, file: !159, line: 1018, type: !44)
!3574 = !DILocalVariable(name: "arg", arg: 4, scope: !3568, file: !159, line: 1019, type: !44)
!3575 = !DILocalVariable(name: "argsize", arg: 5, scope: !3568, file: !159, line: 1019, type: !36)
!3576 = !DILocalVariable(name: "o", scope: !3568, file: !159, line: 1021, type: !166)
!3577 = !DILocation(line: 1017, column: 28, scope: !3568, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 1012, column: 10, scope: !3555)
!3579 = !DILocation(line: 1017, column: 43, scope: !3568, inlinedAt: !3578)
!3580 = !DILocation(line: 1018, column: 36, scope: !3568, inlinedAt: !3578)
!3581 = !DILocation(line: 1019, column: 36, scope: !3568, inlinedAt: !3578)
!3582 = !DILocation(line: 1019, column: 48, scope: !3568, inlinedAt: !3578)
!3583 = !DILocation(line: 1021, column: 3, scope: !3568, inlinedAt: !3578)
!3584 = !DILocation(line: 1021, column: 30, scope: !3568, inlinedAt: !3578)
!3585 = !DILocation(line: 1021, column: 26, scope: !3568, inlinedAt: !3578)
!3586 = !DILocation(line: 171, column: 45, scope: !1908, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 1022, column: 3, scope: !3568, inlinedAt: !3578)
!3588 = !DILocation(line: 172, column: 33, scope: !1908, inlinedAt: !3587)
!3589 = !DILocation(line: 172, column: 57, scope: !1908, inlinedAt: !3587)
!3590 = !DILocation(line: 176, column: 6, scope: !1908, inlinedAt: !3587)
!3591 = !DILocation(line: 176, column: 12, scope: !1908, inlinedAt: !3587)
!3592 = !DILocation(line: 177, column: 8, scope: !1924, inlinedAt: !3587)
!3593 = !DILocation(line: 177, column: 23, scope: !1926, inlinedAt: !3587)
!3594 = !DILocation(line: 177, column: 19, scope: !1924, inlinedAt: !3587)
!3595 = !DILocation(line: 178, column: 5, scope: !1924, inlinedAt: !3587)
!3596 = !DILocation(line: 179, column: 6, scope: !1908, inlinedAt: !3587)
!3597 = !DILocation(line: 179, column: 17, scope: !1908, inlinedAt: !3587)
!3598 = !DILocation(line: 180, column: 6, scope: !1908, inlinedAt: !3587)
!3599 = !DILocation(line: 180, column: 18, scope: !1908, inlinedAt: !3587)
!3600 = !DILocation(line: 1023, column: 10, scope: !3568, inlinedAt: !3578)
!3601 = !DILocation(line: 1024, column: 1, scope: !3568, inlinedAt: !3578)
!3602 = !DILocation(line: 1012, column: 3, scope: !3555)
!3603 = !DILocation(line: 1017, column: 28, scope: !3568)
!3604 = !DILocation(line: 1017, column: 43, scope: !3568)
!3605 = !DILocation(line: 1018, column: 36, scope: !3568)
!3606 = !DILocation(line: 1019, column: 36, scope: !3568)
!3607 = !DILocation(line: 1019, column: 48, scope: !3568)
!3608 = !DILocation(line: 1021, column: 3, scope: !3568)
!3609 = !DILocation(line: 1021, column: 30, scope: !3568)
!3610 = !DILocation(line: 1021, column: 26, scope: !3568)
!3611 = !DILocation(line: 171, column: 45, scope: !1908, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 1022, column: 3, scope: !3568)
!3613 = !DILocation(line: 172, column: 33, scope: !1908, inlinedAt: !3612)
!3614 = !DILocation(line: 172, column: 57, scope: !1908, inlinedAt: !3612)
!3615 = !DILocation(line: 176, column: 6, scope: !1908, inlinedAt: !3612)
!3616 = !DILocation(line: 176, column: 12, scope: !1908, inlinedAt: !3612)
!3617 = !DILocation(line: 177, column: 8, scope: !1924, inlinedAt: !3612)
!3618 = !DILocation(line: 177, column: 23, scope: !1926, inlinedAt: !3612)
!3619 = !DILocation(line: 177, column: 19, scope: !1924, inlinedAt: !3612)
!3620 = !DILocation(line: 178, column: 5, scope: !1924, inlinedAt: !3612)
!3621 = !DILocation(line: 179, column: 6, scope: !1908, inlinedAt: !3612)
!3622 = !DILocation(line: 179, column: 17, scope: !1908, inlinedAt: !3612)
!3623 = !DILocation(line: 180, column: 6, scope: !1908, inlinedAt: !3612)
!3624 = !DILocation(line: 180, column: 18, scope: !1908, inlinedAt: !3612)
!3625 = !DILocation(line: 1023, column: 10, scope: !3568)
!3626 = !DILocation(line: 1024, column: 1, scope: !3568)
!3627 = !DILocation(line: 1023, column: 3, scope: !3568)
!3628 = distinct !DISubprogram(name: "quotearg_custom", scope: !159, file: !159, line: 1027, type: !3629, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!47, !44, !44, !44}
!3631 = !{!3632, !3633, !3634}
!3632 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3628, file: !159, line: 1027, type: !44)
!3633 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3628, file: !159, line: 1027, type: !44)
!3634 = !DILocalVariable(name: "arg", arg: 3, scope: !3628, file: !159, line: 1028, type: !44)
!3635 = !DILocation(line: 1027, column: 30, scope: !3628)
!3636 = !DILocation(line: 1027, column: 54, scope: !3628)
!3637 = !DILocation(line: 1028, column: 30, scope: !3628)
!3638 = !DILocation(line: 1009, column: 24, scope: !3555, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 1030, column: 10, scope: !3628)
!3640 = !DILocation(line: 1009, column: 39, scope: !3555, inlinedAt: !3639)
!3641 = !DILocation(line: 1010, column: 32, scope: !3555, inlinedAt: !3639)
!3642 = !DILocation(line: 1010, column: 57, scope: !3555, inlinedAt: !3639)
!3643 = !DILocation(line: 1017, column: 28, scope: !3568, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 1012, column: 10, scope: !3555, inlinedAt: !3639)
!3645 = !DILocation(line: 1017, column: 43, scope: !3568, inlinedAt: !3644)
!3646 = !DILocation(line: 1018, column: 36, scope: !3568, inlinedAt: !3644)
!3647 = !DILocation(line: 1019, column: 36, scope: !3568, inlinedAt: !3644)
!3648 = !DILocation(line: 1019, column: 48, scope: !3568, inlinedAt: !3644)
!3649 = !DILocation(line: 1021, column: 3, scope: !3568, inlinedAt: !3644)
!3650 = !DILocation(line: 1021, column: 30, scope: !3568, inlinedAt: !3644)
!3651 = !DILocation(line: 1021, column: 26, scope: !3568, inlinedAt: !3644)
!3652 = !DILocation(line: 171, column: 45, scope: !1908, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 1022, column: 3, scope: !3568, inlinedAt: !3644)
!3654 = !DILocation(line: 172, column: 33, scope: !1908, inlinedAt: !3653)
!3655 = !DILocation(line: 172, column: 57, scope: !1908, inlinedAt: !3653)
!3656 = !DILocation(line: 176, column: 6, scope: !1908, inlinedAt: !3653)
!3657 = !DILocation(line: 176, column: 12, scope: !1908, inlinedAt: !3653)
!3658 = !DILocation(line: 177, column: 8, scope: !1924, inlinedAt: !3653)
!3659 = !DILocation(line: 177, column: 23, scope: !1926, inlinedAt: !3653)
!3660 = !DILocation(line: 177, column: 19, scope: !1924, inlinedAt: !3653)
!3661 = !DILocation(line: 178, column: 5, scope: !1924, inlinedAt: !3653)
!3662 = !DILocation(line: 179, column: 6, scope: !1908, inlinedAt: !3653)
!3663 = !DILocation(line: 179, column: 17, scope: !1908, inlinedAt: !3653)
!3664 = !DILocation(line: 180, column: 6, scope: !1908, inlinedAt: !3653)
!3665 = !DILocation(line: 180, column: 18, scope: !1908, inlinedAt: !3653)
!3666 = !DILocation(line: 1023, column: 10, scope: !3568, inlinedAt: !3644)
!3667 = !DILocation(line: 1024, column: 1, scope: !3568, inlinedAt: !3644)
!3668 = !DILocation(line: 1030, column: 3, scope: !3628)
!3669 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !159, file: !159, line: 1034, type: !3670, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!47, !44, !44, !44, !36}
!3672 = !{!3673, !3674, !3675, !3676}
!3673 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3669, file: !159, line: 1034, type: !44)
!3674 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3669, file: !159, line: 1034, type: !44)
!3675 = !DILocalVariable(name: "arg", arg: 3, scope: !3669, file: !159, line: 1035, type: !44)
!3676 = !DILocalVariable(name: "argsize", arg: 4, scope: !3669, file: !159, line: 1035, type: !36)
!3677 = !DILocation(line: 1034, column: 34, scope: !3669)
!3678 = !DILocation(line: 1034, column: 58, scope: !3669)
!3679 = !DILocation(line: 1035, column: 34, scope: !3669)
!3680 = !DILocation(line: 1035, column: 46, scope: !3669)
!3681 = !DILocation(line: 1017, column: 28, scope: !3568, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 1037, column: 10, scope: !3669)
!3683 = !DILocation(line: 1017, column: 43, scope: !3568, inlinedAt: !3682)
!3684 = !DILocation(line: 1018, column: 36, scope: !3568, inlinedAt: !3682)
!3685 = !DILocation(line: 1019, column: 36, scope: !3568, inlinedAt: !3682)
!3686 = !DILocation(line: 1019, column: 48, scope: !3568, inlinedAt: !3682)
!3687 = !DILocation(line: 1021, column: 3, scope: !3568, inlinedAt: !3682)
!3688 = !DILocation(line: 1021, column: 30, scope: !3568, inlinedAt: !3682)
!3689 = !DILocation(line: 1021, column: 26, scope: !3568, inlinedAt: !3682)
!3690 = !DILocation(line: 171, column: 45, scope: !1908, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 1022, column: 3, scope: !3568, inlinedAt: !3682)
!3692 = !DILocation(line: 172, column: 33, scope: !1908, inlinedAt: !3691)
!3693 = !DILocation(line: 172, column: 57, scope: !1908, inlinedAt: !3691)
!3694 = !DILocation(line: 176, column: 6, scope: !1908, inlinedAt: !3691)
!3695 = !DILocation(line: 176, column: 12, scope: !1908, inlinedAt: !3691)
!3696 = !DILocation(line: 177, column: 8, scope: !1924, inlinedAt: !3691)
!3697 = !DILocation(line: 177, column: 23, scope: !1926, inlinedAt: !3691)
!3698 = !DILocation(line: 177, column: 19, scope: !1924, inlinedAt: !3691)
!3699 = !DILocation(line: 178, column: 5, scope: !1924, inlinedAt: !3691)
!3700 = !DILocation(line: 179, column: 6, scope: !1908, inlinedAt: !3691)
!3701 = !DILocation(line: 179, column: 17, scope: !1908, inlinedAt: !3691)
!3702 = !DILocation(line: 180, column: 6, scope: !1908, inlinedAt: !3691)
!3703 = !DILocation(line: 180, column: 18, scope: !1908, inlinedAt: !3691)
!3704 = !DILocation(line: 1023, column: 10, scope: !3568, inlinedAt: !3682)
!3705 = !DILocation(line: 1024, column: 1, scope: !3568, inlinedAt: !3682)
!3706 = !DILocation(line: 1037, column: 3, scope: !3669)
!3707 = distinct !DISubprogram(name: "quote_n_mem", scope: !159, file: !159, line: 1052, type: !3708, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!44, !49, !44, !36}
!3710 = !{!3711, !3712, !3713}
!3711 = !DILocalVariable(name: "n", arg: 1, scope: !3707, file: !159, line: 1052, type: !49)
!3712 = !DILocalVariable(name: "arg", arg: 2, scope: !3707, file: !159, line: 1052, type: !44)
!3713 = !DILocalVariable(name: "argsize", arg: 3, scope: !3707, file: !159, line: 1052, type: !36)
!3714 = !DILocation(line: 1052, column: 18, scope: !3707)
!3715 = !DILocation(line: 1052, column: 33, scope: !3707)
!3716 = !DILocation(line: 1052, column: 45, scope: !3707)
!3717 = !DILocation(line: 1054, column: 10, scope: !3707)
!3718 = !DILocation(line: 1054, column: 3, scope: !3707)
!3719 = distinct !DISubprogram(name: "quote_mem", scope: !159, file: !159, line: 1058, type: !3720, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!44, !44, !36}
!3722 = !{!3723, !3724}
!3723 = !DILocalVariable(name: "arg", arg: 1, scope: !3719, file: !159, line: 1058, type: !44)
!3724 = !DILocalVariable(name: "argsize", arg: 2, scope: !3719, file: !159, line: 1058, type: !36)
!3725 = !DILocation(line: 1058, column: 24, scope: !3719)
!3726 = !DILocation(line: 1058, column: 36, scope: !3719)
!3727 = !DILocation(line: 1052, column: 18, scope: !3707, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 1060, column: 10, scope: !3719)
!3729 = !DILocation(line: 1052, column: 33, scope: !3707, inlinedAt: !3728)
!3730 = !DILocation(line: 1052, column: 45, scope: !3707, inlinedAt: !3728)
!3731 = !DILocation(line: 1054, column: 10, scope: !3707, inlinedAt: !3728)
!3732 = !DILocation(line: 1060, column: 3, scope: !3719)
!3733 = distinct !DISubprogram(name: "quote_n", scope: !159, file: !159, line: 1064, type: !3734, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!44, !49, !44}
!3736 = !{!3737, !3738}
!3737 = !DILocalVariable(name: "n", arg: 1, scope: !3733, file: !159, line: 1064, type: !49)
!3738 = !DILocalVariable(name: "arg", arg: 2, scope: !3733, file: !159, line: 1064, type: !44)
!3739 = !DILocation(line: 1064, column: 14, scope: !3733)
!3740 = !DILocation(line: 1064, column: 29, scope: !3733)
!3741 = !DILocation(line: 1052, column: 18, scope: !3707, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 1066, column: 10, scope: !3733)
!3743 = !DILocation(line: 1052, column: 33, scope: !3707, inlinedAt: !3742)
!3744 = !DILocation(line: 1052, column: 45, scope: !3707, inlinedAt: !3742)
!3745 = !DILocation(line: 1054, column: 10, scope: !3707, inlinedAt: !3742)
!3746 = !DILocation(line: 1066, column: 3, scope: !3733)
!3747 = distinct !DISubprogram(name: "quote", scope: !159, file: !159, line: 1070, type: !3748, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!44, !44}
!3750 = !{!3751}
!3751 = !DILocalVariable(name: "arg", arg: 1, scope: !3747, file: !159, line: 1070, type: !44)
!3752 = !DILocation(line: 1070, column: 20, scope: !3747)
!3753 = !DILocation(line: 1064, column: 14, scope: !3733, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 1072, column: 10, scope: !3747)
!3755 = !DILocation(line: 1064, column: 29, scope: !3733, inlinedAt: !3754)
!3756 = !DILocation(line: 1052, column: 18, scope: !3707, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 1066, column: 10, scope: !3733, inlinedAt: !3754)
!3758 = !DILocation(line: 1052, column: 33, scope: !3707, inlinedAt: !3757)
!3759 = !DILocation(line: 1052, column: 45, scope: !3707, inlinedAt: !3757)
!3760 = !DILocation(line: 1054, column: 10, scope: !3707, inlinedAt: !3757)
!3761 = !DILocation(line: 1072, column: 3, scope: !3747)
!3762 = !DILocation(line: 64, column: 29, scope: !199)
!3763 = !DILocation(line: 65, column: 23, scope: !199)
!3764 = !DILocation(line: 67, column: 23, scope: !199)
!3765 = !DILocation(line: 69, column: 22, scope: !199)
!3766 = !DILocation(line: 77, column: 3, scope: !199)
!3767 = !DILocation(line: 77, column: 8, scope: !199)
!3768 = !DILocation(line: 80, column: 7, scope: !199)
!3769 = !DILocation(line: 82, column: 29, scope: !287)
!3770 = !DILocation(line: 82, column: 19, scope: !287)
!3771 = !DILocation(line: 84, column: 18, scope: !290)
!3772 = !DILocation(line: 84, column: 18, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !290, file: !200, discriminator: 12)
!3774 = !DILocation(line: 84, column: 17, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !287, file: !200, discriminator: 13)
!3776 = !DILocation(line: 84, column: 15, scope: !3775)
!3777 = !DILocation(line: 86, column: 11, scope: !287)
!3778 = !DILocation(line: 88, column: 27, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !200, line: 87, column: 9)
!3780 = distinct !DILexicalBlock(scope: !287, file: !200, line: 86, column: 11)
!3781 = !DILocation(line: 88, column: 25, scope: !3779)
!3782 = !DILocation(line: 89, column: 29, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3779, file: !200, line: 89, column: 15)
!3784 = !DILocation(line: 89, column: 15, scope: !3779)
!3785 = !DILocation(line: 91, column: 29, scope: !3783)
!3786 = !DILocation(line: 91, column: 27, scope: !3783)
!3787 = !DILocation(line: 91, column: 13, scope: !3783)
!3788 = !DILocation(line: 95, column: 5, scope: !287)
!3789 = !DILocation(line: 98, column: 8, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !199, file: !200, line: 98, column: 7)
!3791 = !DILocation(line: 101, column: 11, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !200, line: 101, column: 11)
!3793 = distinct !DILexicalBlock(scope: !3790, file: !200, line: 99, column: 5)
!3794 = !DILocation(line: 101, column: 25, scope: !3792)
!3795 = !DILocation(line: 98, column: 7, scope: !199)
!3796 = !DILocation(line: 102, column: 16, scope: !3792)
!3797 = !DILocation(line: 102, column: 9, scope: !3792)
!3798 = !DILocalVariable(name: "n", arg: 3, scope: !3799, file: !3800, line: 315, type: !49)
!3799 = distinct !DISubprogram(name: "u8_uctomb", scope: !3800, file: !3800, line: 315, type: !3801, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !3808)
!3800 = !DIFile(filename: "./lib/unistr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!49, !3803, !3805, !49}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !835, line: 50, baseType: !43)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs4_t", file: !3806, line: 25, baseType: !3807)
!3806 = !DIFile(filename: "./lib/unitypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !835, line: 53, baseType: !48)
!3808 = !{!3809, !3810, !3798}
!3809 = !DILocalVariable(name: "s", arg: 1, scope: !3799, file: !3800, line: 315, type: !3803)
!3810 = !DILocalVariable(name: "uc", arg: 2, scope: !3799, file: !3800, line: 315, type: !3805)
!3811 = !DILocation(line: 315, column: 39, scope: !3799, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 109, column: 11, scope: !199)
!3813 = !DILocation(line: 317, column: 10, scope: !3814, inlinedAt: !3812)
!3814 = distinct !DILexicalBlock(scope: !3799, file: !3800, line: 317, column: 7)
!3815 = !DILocation(line: 317, column: 17, scope: !3814, inlinedAt: !3812)
!3816 = !DILocation(line: 319, column: 14, scope: !3817, inlinedAt: !3812)
!3817 = distinct !DILexicalBlock(scope: !3814, file: !3800, line: 318, column: 5)
!3818 = !DILocation(line: 319, column: 12, scope: !3817, inlinedAt: !3812)
!3819 = !DILocation(line: 78, column: 7, scope: !199)
!3820 = !DILocation(line: 110, column: 7, scope: !199)
!3821 = !DILocation(line: 323, column: 12, scope: !3814, inlinedAt: !3812)
!3822 = !DILocation(line: 110, column: 13, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !199, file: !200, line: 110, column: 7)
!3824 = !DILocation(line: 111, column: 12, scope: !3823)
!3825 = !DILocation(line: 111, column: 5, scope: !3823)
!3826 = !DILocation(line: 114, column: 8, scope: !297)
!3827 = !DILocation(line: 114, column: 7, scope: !199)
!3828 = !DILocation(line: 116, column: 7, scope: !296)
!3829 = !DILocation(line: 116, column: 12, scope: !296)
!3830 = !DILocation(line: 117, column: 7, scope: !296)
!3831 = !DILocation(line: 118, column: 7, scope: !296)
!3832 = !DILocation(line: 119, column: 7, scope: !296)
!3833 = !DILocation(line: 120, column: 7, scope: !296)
!3834 = !DILocation(line: 117, column: 19, scope: !296)
!3835 = !DILocation(line: 123, column: 13, scope: !296)
!3836 = !DILocation(line: 118, column: 14, scope: !296)
!3837 = !DILocation(line: 124, column: 19, scope: !296)
!3838 = !DILocation(line: 119, column: 13, scope: !296)
!3839 = !DILocation(line: 125, column: 14, scope: !296)
!3840 = !DILocation(line: 120, column: 14, scope: !296)
!3841 = !DILocation(line: 126, column: 20, scope: !296)
!3842 = !DILocation(line: 129, column: 20, scope: !296)
!3843 = !DILocation(line: 129, column: 13, scope: !296)
!3844 = !DILocation(line: 121, column: 14, scope: !296)
!3845 = !DILocation(line: 132, column: 11, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !296, file: !200, line: 132, column: 11)
!3847 = !DILocation(line: 132, column: 23, scope: !3846)
!3848 = !DILocation(line: 132, column: 34, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !3846, file: !200, discriminator: 1)
!3850 = !DILocation(line: 132, column: 27, scope: !3846)
!3851 = !DILocation(line: 138, column: 16, scope: !3846)
!3852 = !DILocation(line: 138, column: 9, scope: !3846)
!3853 = !DILocation(line: 147, column: 20, scope: !296)
!3854 = !DILocation(line: 147, column: 13, scope: !296)
!3855 = !DILocation(line: 148, column: 15, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !296, file: !200, line: 148, column: 11)
!3857 = !DILocation(line: 148, column: 11, scope: !296)
!3858 = !DILocation(line: 149, column: 16, scope: !3856)
!3859 = !DILocation(line: 149, column: 9, scope: !3856)
!3860 = !DILocation(line: 152, column: 31, scope: !296)
!3861 = !DILocation(line: 152, column: 38, scope: !296)
!3862 = !DILocation(line: 152, column: 14, scope: !296)
!3863 = !DILocation(line: 152, column: 7, scope: !296)
!3864 = !DILocation(line: 153, column: 5, scope: !297)
!3865 = !DILocation(line: 157, column: 10, scope: !199)
!3866 = !DILocation(line: 157, column: 3, scope: !199)
!3867 = !DILocation(line: 158, column: 1, scope: !199)
!3868 = distinct !DISubprogram(name: "fwrite_success_callback", scope: !200, file: !200, line: 163, type: !205, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !3869)
!3869 = !{!3870, !3871, !3872, !3873}
!3870 = !DILocalVariable(name: "buf", arg: 1, scope: !3868, file: !200, line: 163, type: !44)
!3871 = !DILocalVariable(name: "buflen", arg: 2, scope: !3868, file: !200, line: 163, type: !36)
!3872 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3868, file: !200, line: 163, type: !35)
!3873 = !DILocalVariable(name: "stream", scope: !3868, file: !200, line: 165, type: !217)
!3874 = !DILocation(line: 163, column: 38, scope: !3868)
!3875 = !DILocation(line: 163, column: 50, scope: !3868)
!3876 = !DILocation(line: 163, column: 64, scope: !3868)
!3877 = !DILocation(line: 165, column: 18, scope: !3868)
!3878 = !DILocation(line: 165, column: 9, scope: !3868)
!3879 = !DILocation(line: 171, column: 3, scope: !3868)
!3880 = !DILocation(line: 172, column: 3, scope: !3868)
!3881 = distinct !DISubprogram(name: "print_unicode_char", scope: !200, file: !200, line: 208, type: !3882, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !217, !48, !49}
!3884 = !{!3885, !3886, !3887}
!3885 = !DILocalVariable(name: "stream", arg: 1, scope: !3881, file: !200, line: 208, type: !217)
!3886 = !DILocalVariable(name: "code", arg: 2, scope: !3881, file: !200, line: 208, type: !48)
!3887 = !DILocalVariable(name: "exit_on_error", arg: 3, scope: !3881, file: !200, line: 208, type: !49)
!3888 = !DILocation(line: 208, column: 27, scope: !3881)
!3889 = !DILocation(line: 208, column: 48, scope: !3881)
!3890 = !DILocation(line: 208, column: 58, scope: !3881)
!3891 = !DILocation(line: 211, column: 18, scope: !3881)
!3892 = !DILocation(line: 214, column: 18, scope: !3881)
!3893 = !DILocation(line: 210, column: 3, scope: !3881)
!3894 = !DILocation(line: 215, column: 1, scope: !3881)
!3895 = distinct !DISubprogram(name: "exit_failure_callback", scope: !200, file: !200, line: 177, type: !208, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !3896)
!3896 = !{!3897, !3898, !3899}
!3897 = !DILocalVariable(name: "code", arg: 1, scope: !3895, file: !200, line: 177, type: !48)
!3898 = !DILocalVariable(name: "msg", arg: 2, scope: !3895, file: !200, line: 177, type: !44)
!3899 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3895, file: !200, line: 178, type: !35)
!3900 = !DILocation(line: 177, column: 37, scope: !3895)
!3901 = !DILocation(line: 177, column: 55, scope: !3895)
!3902 = !DILocation(line: 178, column: 30, scope: !3895)
!3903 = !DILocation(line: 180, column: 11, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3895, file: !200, line: 180, column: 7)
!3905 = !DILocation(line: 180, column: 7, scope: !3895)
!3906 = !DILocation(line: 181, column: 18, scope: !3904)
!3907 = !DILocation(line: 181, column: 5, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3904, file: !200, discriminator: 1)
!3909 = !DILocation(line: 181, column: 5, scope: !3904)
!3910 = !DILocation(line: 183, column: 18, scope: !3904)
!3911 = !DILocation(line: 184, column: 12, scope: !3904)
!3912 = !DILocation(line: 183, column: 5, scope: !3908)
!3913 = !DILocation(line: 185, column: 3, scope: !3895)
!3914 = distinct !DISubprogram(name: "fallback_failure_callback", scope: !200, file: !200, line: 191, type: !208, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !3915)
!3915 = !{!3916, !3917, !3918, !3919}
!3916 = !DILocalVariable(name: "code", arg: 1, scope: !3914, file: !200, line: 191, type: !48)
!3917 = !DILocalVariable(name: "msg", arg: 2, scope: !3914, file: !200, line: 192, type: !44)
!3918 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3914, file: !200, line: 193, type: !35)
!3919 = !DILocalVariable(name: "stream", scope: !3914, file: !200, line: 195, type: !217)
!3920 = !DILocation(line: 191, column: 41, scope: !3914)
!3921 = !DILocation(line: 192, column: 40, scope: !3914)
!3922 = !DILocation(line: 193, column: 34, scope: !3914)
!3923 = !DILocation(line: 195, column: 18, scope: !3914)
!3924 = !DILocation(line: 195, column: 9, scope: !3914)
!3925 = !DILocation(line: 197, column: 12, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3914, file: !200, line: 197, column: 7)
!3927 = !DILocation(line: 197, column: 7, scope: !3914)
!3928 = !DILocation(line: 198, column: 5, scope: !3926)
!3929 = !DILocation(line: 200, column: 5, scope: !3926)
!3930 = !DILocation(line: 201, column: 3, scope: !3914)
!3931 = distinct !DISubprogram(name: "u8_uctomb_aux", scope: !663, file: !663, line: 24, type: !3801, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !3932)
!3932 = !{!3933, !3934, !3935, !3936}
!3933 = !DILocalVariable(name: "s", arg: 1, scope: !3931, file: !663, line: 24, type: !3803)
!3934 = !DILocalVariable(name: "uc", arg: 2, scope: !3931, file: !663, line: 24, type: !3805)
!3935 = !DILocalVariable(name: "n", arg: 3, scope: !3931, file: !663, line: 24, type: !49)
!3936 = !DILocalVariable(name: "count", scope: !3931, file: !663, line: 26, type: !49)
!3937 = !DILocation(line: 24, column: 25, scope: !3931)
!3938 = !DILocation(line: 24, column: 35, scope: !3931)
!3939 = !DILocation(line: 24, column: 43, scope: !3931)
!3940 = !DILocation(line: 28, column: 10, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3931, file: !663, line: 28, column: 7)
!3942 = !DILocation(line: 28, column: 7, scope: !3931)
!3943 = !DILocation(line: 31, column: 15, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3941, file: !663, line: 31, column: 12)
!3945 = !DILocation(line: 31, column: 12, scope: !3941)
!3946 = !DILocation(line: 33, column: 15, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3944, file: !663, line: 33, column: 12)
!3948 = !DILocation(line: 33, column: 12, scope: !3944)
!3949 = !DILocation(line: 35, column: 23, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !663, line: 35, column: 11)
!3951 = distinct !DILexicalBlock(scope: !3947, file: !663, line: 34, column: 5)
!3952 = !DILocation(line: 40, column: 15, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3947, file: !663, line: 40, column: 12)
!3954 = !DILocation(line: 40, column: 12, scope: !3947)
!3955 = !DILocation(line: 26, column: 7, scope: !3931)
!3956 = !DILocation(line: 45, column: 9, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3931, file: !663, line: 45, column: 7)
!3958 = !DILocation(line: 45, column: 7, scope: !3931)
!3959 = !DILocation(line: 48, column: 3, scope: !3931)
!3960 = !DILocation(line: 50, column: 20, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3931, file: !663, line: 49, column: 5)
!3962 = !DILocation(line: 50, column: 13, scope: !3961)
!3963 = !DILocation(line: 50, column: 18, scope: !3961)
!3964 = !DILocation(line: 50, column: 48, scope: !3961)
!3965 = !DILocation(line: 50, column: 57, scope: !3961)
!3966 = !DILocation(line: 50, column: 54, scope: !3961)
!3967 = !DILocation(line: 52, column: 20, scope: !3961)
!3968 = !DILocation(line: 52, column: 13, scope: !3961)
!3969 = !DILocation(line: 52, column: 18, scope: !3961)
!3970 = !DILocation(line: 52, column: 48, scope: !3961)
!3971 = !DILocation(line: 52, column: 57, scope: !3961)
!3972 = !DILocation(line: 52, column: 54, scope: !3961)
!3973 = !DILocation(line: 54, column: 20, scope: !3961)
!3974 = !DILocation(line: 54, column: 13, scope: !3961)
!3975 = !DILocation(line: 54, column: 18, scope: !3961)
!3976 = !DILocation(line: 54, column: 48, scope: !3961)
!3977 = !DILocation(line: 55, column: 22, scope: !3961)
!3978 = !DILocation(line: 55, column: 20, scope: !3961)
!3979 = !DILocation(line: 56, column: 5, scope: !3961)
!3980 = !DILocation(line: 58, column: 1, scope: !3931)
!3981 = distinct !DISubprogram(name: "version_etc_arn", scope: !668, file: !668, line: 62, type: !3982, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4025)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3984, !44, !44, !44, !4024, !36}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !219, line: 49, baseType: !3986)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !221, line: 241, size: 1728, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3986, file: !221, line: 242, baseType: !49, size: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3986, file: !221, line: 247, baseType: !47, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3986, file: !221, line: 248, baseType: !47, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3986, file: !221, line: 249, baseType: !47, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3986, file: !221, line: 250, baseType: !47, size: 64, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3986, file: !221, line: 251, baseType: !47, size: 64, offset: 320)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3986, file: !221, line: 252, baseType: !47, size: 64, offset: 384)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3986, file: !221, line: 253, baseType: !47, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3986, file: !221, line: 254, baseType: !47, size: 64, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3986, file: !221, line: 256, baseType: !47, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3986, file: !221, line: 257, baseType: !47, size: 64, offset: 640)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3986, file: !221, line: 258, baseType: !47, size: 64, offset: 704)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3986, file: !221, line: 260, baseType: !4001, size: 64, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !221, line: 156, size: 192, elements: !4003)
!4003 = !{!4004, !4005, !4007}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4002, file: !221, line: 157, baseType: !4001, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4002, file: !221, line: 158, baseType: !4006, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4002, file: !221, line: 162, baseType: !49, size: 32, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3986, file: !221, line: 262, baseType: !4006, size: 64, offset: 832)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3986, file: !221, line: 264, baseType: !49, size: 32, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3986, file: !221, line: 268, baseType: !49, size: 32, offset: 928)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3986, file: !221, line: 270, baseType: !247, size: 64, offset: 960)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3986, file: !221, line: 274, baseType: !50, size: 16, offset: 1024)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3986, file: !221, line: 275, baseType: !251, size: 8, offset: 1040)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3986, file: !221, line: 276, baseType: !253, size: 8, offset: 1048)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3986, file: !221, line: 280, baseType: !257, size: 64, offset: 1088)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3986, file: !221, line: 289, baseType: !260, size: 64, offset: 1152)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3986, file: !221, line: 297, baseType: !35, size: 64, offset: 1216)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3986, file: !221, line: 298, baseType: !35, size: 64, offset: 1280)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3986, file: !221, line: 299, baseType: !35, size: 64, offset: 1344)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3986, file: !221, line: 300, baseType: !35, size: 64, offset: 1408)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3986, file: !221, line: 302, baseType: !36, size: 64, offset: 1472)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3986, file: !221, line: 303, baseType: !49, size: 32, offset: 1536)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3986, file: !221, line: 305, baseType: !268, size: 160, offset: 1568)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031}
!4026 = !DILocalVariable(name: "stream", arg: 1, scope: !3981, file: !668, line: 62, type: !3984)
!4027 = !DILocalVariable(name: "command_name", arg: 2, scope: !3981, file: !668, line: 63, type: !44)
!4028 = !DILocalVariable(name: "package", arg: 3, scope: !3981, file: !668, line: 63, type: !44)
!4029 = !DILocalVariable(name: "version", arg: 4, scope: !3981, file: !668, line: 64, type: !44)
!4030 = !DILocalVariable(name: "authors", arg: 5, scope: !3981, file: !668, line: 65, type: !4024)
!4031 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3981, file: !668, line: 65, type: !36)
!4032 = !DILocation(line: 62, column: 24, scope: !3981)
!4033 = !DILocation(line: 63, column: 30, scope: !3981)
!4034 = !DILocation(line: 63, column: 56, scope: !3981)
!4035 = !DILocation(line: 64, column: 30, scope: !3981)
!4036 = !DILocation(line: 65, column: 39, scope: !3981)
!4037 = !DILocation(line: 65, column: 55, scope: !3981)
!4038 = !DILocation(line: 67, column: 7, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3981, file: !668, line: 67, column: 7)
!4040 = !DILocation(line: 67, column: 7, scope: !3981)
!4041 = !DILocation(line: 68, column: 5, scope: !4039)
!4042 = !DILocation(line: 70, column: 5, scope: !4039)
!4043 = !DILocation(line: 84, column: 3, scope: !3981)
!4044 = !DILocation(line: 84, column: 3, scope: !4045)
!4045 = !DILexicalBlockFile(scope: !3981, file: !668, discriminator: 1)
!4046 = !DILocation(line: 86, column: 3, scope: !3981)
!4047 = !DILocation(line: 86, column: 3, scope: !4045)
!4048 = !DILocation(line: 95, column: 3, scope: !3981)
!4049 = !DILocation(line: 99, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !3981, file: !668, line: 96, column: 5)
!4051 = !DILocation(line: 102, column: 7, scope: !4050)
!4052 = !DILocation(line: 102, column: 7, scope: !4053)
!4053 = !DILexicalBlockFile(scope: !4050, file: !668, discriminator: 1)
!4054 = !DILocation(line: 103, column: 7, scope: !4050)
!4055 = !DILocation(line: 106, column: 7, scope: !4050)
!4056 = !DILocation(line: 106, column: 7, scope: !4053)
!4057 = !DILocation(line: 107, column: 7, scope: !4050)
!4058 = !DILocation(line: 110, column: 7, scope: !4050)
!4059 = !DILocation(line: 110, column: 7, scope: !4053)
!4060 = !DILocation(line: 112, column: 7, scope: !4050)
!4061 = !DILocation(line: 117, column: 7, scope: !4050)
!4062 = !DILocation(line: 117, column: 7, scope: !4053)
!4063 = !DILocation(line: 119, column: 7, scope: !4050)
!4064 = !DILocation(line: 124, column: 7, scope: !4050)
!4065 = !DILocation(line: 124, column: 7, scope: !4053)
!4066 = !DILocation(line: 126, column: 7, scope: !4050)
!4067 = !DILocation(line: 131, column: 7, scope: !4050)
!4068 = !DILocation(line: 131, column: 7, scope: !4053)
!4069 = !DILocation(line: 134, column: 7, scope: !4050)
!4070 = !DILocation(line: 139, column: 7, scope: !4050)
!4071 = !DILocation(line: 139, column: 7, scope: !4053)
!4072 = !DILocation(line: 142, column: 7, scope: !4050)
!4073 = !DILocation(line: 147, column: 7, scope: !4050)
!4074 = !DILocation(line: 147, column: 7, scope: !4053)
!4075 = !DILocation(line: 151, column: 7, scope: !4050)
!4076 = !DILocation(line: 156, column: 7, scope: !4050)
!4077 = !DILocation(line: 156, column: 7, scope: !4053)
!4078 = !DILocation(line: 160, column: 7, scope: !4050)
!4079 = !DILocation(line: 167, column: 7, scope: !4050)
!4080 = !DILocation(line: 167, column: 7, scope: !4053)
!4081 = !DILocation(line: 171, column: 7, scope: !4050)
!4082 = !DILocation(line: 173, column: 1, scope: !3981)
!4083 = distinct !DISubprogram(name: "version_etc_ar", scope: !668, file: !668, line: 180, type: !4084, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !3984, !44, !44, !44, !4024}
!4086 = !{!4087, !4088, !4089, !4090, !4091, !4092}
!4087 = !DILocalVariable(name: "stream", arg: 1, scope: !4083, file: !668, line: 180, type: !3984)
!4088 = !DILocalVariable(name: "command_name", arg: 2, scope: !4083, file: !668, line: 181, type: !44)
!4089 = !DILocalVariable(name: "package", arg: 3, scope: !4083, file: !668, line: 181, type: !44)
!4090 = !DILocalVariable(name: "version", arg: 4, scope: !4083, file: !668, line: 182, type: !44)
!4091 = !DILocalVariable(name: "authors", arg: 5, scope: !4083, file: !668, line: 182, type: !4024)
!4092 = !DILocalVariable(name: "n_authors", scope: !4083, file: !668, line: 184, type: !36)
!4093 = !DILocation(line: 180, column: 23, scope: !4083)
!4094 = !DILocation(line: 181, column: 29, scope: !4083)
!4095 = !DILocation(line: 181, column: 55, scope: !4083)
!4096 = !DILocation(line: 182, column: 29, scope: !4083)
!4097 = !DILocation(line: 182, column: 59, scope: !4083)
!4098 = !DILocation(line: 184, column: 10, scope: !4083)
!4099 = !DILocation(line: 186, column: 8, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4083, file: !668, line: 186, column: 3)
!4101 = !DILocation(line: 186, column: 23, scope: !4102)
!4102 = !DILexicalBlockFile(scope: !4103, file: !668, discriminator: 1)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !668, line: 186, column: 3)
!4104 = !DILocation(line: 186, column: 3, scope: !4105)
!4105 = !DILexicalBlockFile(scope: !4100, file: !668, discriminator: 1)
!4106 = !DILocation(line: 186, column: 52, scope: !4107)
!4107 = !DILexicalBlockFile(scope: !4103, file: !668, discriminator: 3)
!4108 = distinct !{!4108, !4109, !4110}
!4109 = !DILocation(line: 186, column: 3, scope: !4100)
!4110 = !DILocation(line: 187, column: 5, scope: !4100)
!4111 = !DILocation(line: 188, column: 3, scope: !4083)
!4112 = !DILocation(line: 189, column: 1, scope: !4083)
!4113 = distinct !DISubprogram(name: "version_etc_va", scope: !668, file: !668, line: 196, type: !4114, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4123)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !3984, !44, !44, !44, !4116}
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !665, line: 189, size: 192, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4117, file: !665, line: 189, baseType: !48, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4117, file: !665, line: 189, baseType: !48, size: 32, offset: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4117, file: !665, line: 189, baseType: !35, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4117, file: !665, line: 189, baseType: !35, size: 64, offset: 128)
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4129, !4130}
!4124 = !DILocalVariable(name: "stream", arg: 1, scope: !4113, file: !668, line: 196, type: !3984)
!4125 = !DILocalVariable(name: "command_name", arg: 2, scope: !4113, file: !668, line: 197, type: !44)
!4126 = !DILocalVariable(name: "package", arg: 3, scope: !4113, file: !668, line: 197, type: !44)
!4127 = !DILocalVariable(name: "version", arg: 4, scope: !4113, file: !668, line: 198, type: !44)
!4128 = !DILocalVariable(name: "authors", arg: 5, scope: !4113, file: !668, line: 198, type: !4116)
!4129 = !DILocalVariable(name: "n_authors", scope: !4113, file: !668, line: 200, type: !36)
!4130 = !DILocalVariable(name: "authtab", scope: !4113, file: !668, line: 201, type: !4131)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !162)
!4132 = !DILocation(line: 196, column: 23, scope: !4113)
!4133 = !DILocation(line: 197, column: 29, scope: !4113)
!4134 = !DILocation(line: 197, column: 55, scope: !4113)
!4135 = !DILocation(line: 198, column: 29, scope: !4113)
!4136 = !DILocation(line: 198, column: 46, scope: !4113)
!4137 = !DILocation(line: 201, column: 3, scope: !4113)
!4138 = !DILocation(line: 201, column: 15, scope: !4113)
!4139 = !DILocation(line: 200, column: 10, scope: !4113)
!4140 = !DILocation(line: 205, column: 35, scope: !4141)
!4141 = !DILexicalBlockFile(scope: !4142, file: !668, discriminator: 1)
!4142 = distinct !DILexicalBlock(scope: !4143, file: !668, line: 203, column: 3)
!4143 = distinct !DILexicalBlock(scope: !4113, file: !668, line: 203, column: 3)
!4144 = !DILocation(line: 205, column: 35, scope: !4145)
!4145 = !DILexicalBlockFile(scope: !4142, file: !668, discriminator: 2)
!4146 = !DILocation(line: 205, column: 35, scope: !4147)
!4147 = !DILexicalBlockFile(scope: !4142, file: !668, discriminator: 3)
!4148 = !DILocation(line: 205, column: 35, scope: !4149)
!4149 = !DILexicalBlockFile(scope: !4142, file: !668, discriminator: 4)
!4150 = !DILocation(line: 205, column: 14, scope: !4149)
!4151 = !DILocation(line: 205, column: 33, scope: !4149)
!4152 = !DILocation(line: 205, column: 67, scope: !4149)
!4153 = !DILocation(line: 203, column: 3, scope: !4154)
!4154 = !DILexicalBlockFile(scope: !4143, file: !668, discriminator: 1)
!4155 = !DILocation(line: 208, column: 3, scope: !4113)
!4156 = !DILocation(line: 210, column: 1, scope: !4113)
!4157 = distinct !DISubprogram(name: "version_etc", scope: !668, file: !668, line: 227, type: !4158, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4160)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{null, !3984, !44, !44, !44, null}
!4160 = !{!4161, !4162, !4163, !4164, !4165}
!4161 = !DILocalVariable(name: "stream", arg: 1, scope: !4157, file: !668, line: 227, type: !3984)
!4162 = !DILocalVariable(name: "command_name", arg: 2, scope: !4157, file: !668, line: 228, type: !44)
!4163 = !DILocalVariable(name: "package", arg: 3, scope: !4157, file: !668, line: 228, type: !44)
!4164 = !DILocalVariable(name: "version", arg: 4, scope: !4157, file: !668, line: 229, type: !44)
!4165 = !DILocalVariable(name: "authors", scope: !4157, file: !668, line: 231, type: !4166)
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !219, line: 80, baseType: !4167)
!4167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4168, line: 50, baseType: !4169)
!4168 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !665, line: 231, baseType: !4170)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4117, size: 192, elements: !254)
!4171 = !DILocation(line: 227, column: 20, scope: !4157)
!4172 = !DILocation(line: 228, column: 26, scope: !4157)
!4173 = !DILocation(line: 228, column: 52, scope: !4157)
!4174 = !DILocation(line: 229, column: 26, scope: !4157)
!4175 = !DILocation(line: 231, column: 3, scope: !4157)
!4176 = !DILocation(line: 231, column: 11, scope: !4157)
!4177 = !DILocation(line: 233, column: 3, scope: !4157)
!4178 = !DILocation(line: 234, column: 3, scope: !4157)
!4179 = !DILocation(line: 235, column: 3, scope: !4157)
!4180 = !DILocation(line: 236, column: 1, scope: !4157)
!4181 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !668, file: !668, line: 239, type: !1732, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !92)
!4182 = !DILocation(line: 245, column: 3, scope: !4181)
!4183 = !DILocation(line: 245, column: 3, scope: !4184)
!4184 = !DILexicalBlockFile(scope: !4181, file: !668, discriminator: 1)
!4185 = !DILocation(line: 251, column: 3, scope: !4181)
!4186 = !DILocation(line: 251, column: 3, scope: !4184)
!4187 = !DILocation(line: 256, column: 3, scope: !4181)
!4188 = !DILocation(line: 256, column: 3, scope: !4184)
!4189 = !DILocation(line: 258, column: 1, scope: !4181)
!4190 = distinct !DISubprogram(name: "xnmalloc", scope: !676, file: !676, line: 105, type: !4191, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!35, !36, !36}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "n", arg: 1, scope: !4190, file: !676, line: 105, type: !36)
!4195 = !DILocalVariable(name: "s", arg: 2, scope: !4190, file: !676, line: 105, type: !36)
!4196 = !DILocation(line: 105, column: 18, scope: !4190)
!4197 = !DILocation(line: 105, column: 28, scope: !4190)
!4198 = !DILocation(line: 107, column: 7, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4190, file: !676, line: 107, column: 7)
!4200 = !DILocation(line: 107, column: 7, scope: !4190)
!4201 = !DILocation(line: 108, column: 5, scope: !4199)
!4202 = !DILocation(line: 109, column: 21, scope: !4190)
!4203 = !DILocalVariable(name: "n", arg: 1, scope: !4204, file: !4205, line: 39, type: !36)
!4204 = distinct !DISubprogram(name: "xmalloc", scope: !4205, file: !4205, line: 39, type: !4206, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4208)
!4205 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!35, !36}
!4208 = !{!4203, !4209}
!4209 = !DILocalVariable(name: "p", scope: !4204, file: !4205, line: 41, type: !35)
!4210 = !DILocation(line: 39, column: 17, scope: !4204, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 109, column: 10, scope: !4190)
!4212 = !DILocation(line: 41, column: 13, scope: !4204, inlinedAt: !4211)
!4213 = !DILocation(line: 41, column: 9, scope: !4204, inlinedAt: !4211)
!4214 = !DILocation(line: 42, column: 8, scope: !4215, inlinedAt: !4211)
!4215 = distinct !DILexicalBlock(scope: !4204, file: !4205, line: 42, column: 7)
!4216 = !DILocation(line: 42, column: 15, scope: !4217, inlinedAt: !4211)
!4217 = !DILexicalBlockFile(scope: !4215, file: !4205, discriminator: 1)
!4218 = !DILocation(line: 42, column: 10, scope: !4215, inlinedAt: !4211)
!4219 = !DILocation(line: 43, column: 5, scope: !4215, inlinedAt: !4211)
!4220 = !DILocation(line: 109, column: 3, scope: !4190)
!4221 = !DILocation(line: 39, column: 17, scope: !4204)
!4222 = !DILocation(line: 41, column: 13, scope: !4204)
!4223 = !DILocation(line: 41, column: 9, scope: !4204)
!4224 = !DILocation(line: 42, column: 8, scope: !4215)
!4225 = !DILocation(line: 42, column: 15, scope: !4217)
!4226 = !DILocation(line: 42, column: 10, scope: !4215)
!4227 = !DILocation(line: 43, column: 5, scope: !4215)
!4228 = !DILocation(line: 44, column: 3, scope: !4204)
!4229 = distinct !DISubprogram(name: "xnrealloc", scope: !676, file: !676, line: 118, type: !4230, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!35, !35, !36, !36}
!4232 = !{!4233, !4234, !4235}
!4233 = !DILocalVariable(name: "p", arg: 1, scope: !4229, file: !676, line: 118, type: !35)
!4234 = !DILocalVariable(name: "n", arg: 2, scope: !4229, file: !676, line: 118, type: !36)
!4235 = !DILocalVariable(name: "s", arg: 3, scope: !4229, file: !676, line: 118, type: !36)
!4236 = !DILocation(line: 118, column: 18, scope: !4229)
!4237 = !DILocation(line: 118, column: 28, scope: !4229)
!4238 = !DILocation(line: 118, column: 38, scope: !4229)
!4239 = !DILocation(line: 120, column: 7, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4229, file: !676, line: 120, column: 7)
!4241 = !DILocation(line: 120, column: 7, scope: !4229)
!4242 = !DILocation(line: 121, column: 5, scope: !4240)
!4243 = !DILocation(line: 122, column: 25, scope: !4229)
!4244 = !DILocalVariable(name: "p", arg: 1, scope: !4245, file: !4205, line: 51, type: !35)
!4245 = distinct !DISubprogram(name: "xrealloc", scope: !4205, file: !4205, line: 51, type: !4246, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!35, !35, !36}
!4248 = !{!4244, !4249}
!4249 = !DILocalVariable(name: "n", arg: 2, scope: !4245, file: !4205, line: 51, type: !36)
!4250 = !DILocation(line: 51, column: 17, scope: !4245, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 122, column: 10, scope: !4229)
!4252 = !DILocation(line: 51, column: 27, scope: !4245, inlinedAt: !4251)
!4253 = !DILocation(line: 53, column: 8, scope: !4254, inlinedAt: !4251)
!4254 = distinct !DILexicalBlock(scope: !4245, file: !4205, line: 53, column: 7)
!4255 = !DILocation(line: 53, column: 13, scope: !4256, inlinedAt: !4251)
!4256 = !DILexicalBlockFile(scope: !4254, file: !4205, discriminator: 1)
!4257 = !DILocation(line: 53, column: 10, scope: !4254, inlinedAt: !4251)
!4258 = !DILocation(line: 57, column: 7, scope: !4259, inlinedAt: !4251)
!4259 = distinct !DILexicalBlock(scope: !4254, file: !4205, line: 54, column: 5)
!4260 = !DILocation(line: 58, column: 7, scope: !4259, inlinedAt: !4251)
!4261 = !DILocation(line: 61, column: 7, scope: !4245, inlinedAt: !4251)
!4262 = !DILocation(line: 62, column: 8, scope: !4263, inlinedAt: !4251)
!4263 = distinct !DILexicalBlock(scope: !4245, file: !4205, line: 62, column: 7)
!4264 = !DILocation(line: 62, column: 13, scope: !4265, inlinedAt: !4251)
!4265 = !DILexicalBlockFile(scope: !4263, file: !4205, discriminator: 1)
!4266 = !DILocation(line: 62, column: 10, scope: !4263, inlinedAt: !4251)
!4267 = !DILocation(line: 63, column: 5, scope: !4263, inlinedAt: !4251)
!4268 = !DILocation(line: 122, column: 3, scope: !4229)
!4269 = !DILocation(line: 51, column: 17, scope: !4245)
!4270 = !DILocation(line: 51, column: 27, scope: !4245)
!4271 = !DILocation(line: 53, column: 8, scope: !4254)
!4272 = !DILocation(line: 53, column: 13, scope: !4256)
!4273 = !DILocation(line: 53, column: 10, scope: !4254)
!4274 = !DILocation(line: 57, column: 7, scope: !4259)
!4275 = !DILocation(line: 58, column: 7, scope: !4259)
!4276 = !DILocation(line: 61, column: 7, scope: !4245)
!4277 = !DILocation(line: 62, column: 8, scope: !4263)
!4278 = !DILocation(line: 62, column: 13, scope: !4265)
!4279 = !DILocation(line: 62, column: 10, scope: !4263)
!4280 = !DILocation(line: 63, column: 5, scope: !4263)
!4281 = !DILocation(line: 65, column: 1, scope: !4245)
!4282 = !DILocation(line: 180, column: 19, scope: !677)
!4283 = !DILocation(line: 180, column: 30, scope: !677)
!4284 = !DILocation(line: 180, column: 41, scope: !677)
!4285 = !DILocation(line: 182, column: 14, scope: !677)
!4286 = !DILocation(line: 182, column: 10, scope: !677)
!4287 = !DILocation(line: 184, column: 9, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !677, file: !676, line: 184, column: 7)
!4289 = !DILocation(line: 184, column: 7, scope: !677)
!4290 = !DILocation(line: 186, column: 13, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !676, line: 186, column: 11)
!4292 = distinct !DILexicalBlock(scope: !4288, file: !676, line: 185, column: 5)
!4293 = !DILocation(line: 186, column: 11, scope: !4292)
!4294 = !DILocation(line: 194, column: 30, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4291, file: !676, line: 187, column: 9)
!4296 = !DILocation(line: 195, column: 16, scope: !4295)
!4297 = !DILocation(line: 195, column: 13, scope: !4295)
!4298 = !DILocation(line: 196, column: 9, scope: !4295)
!4299 = !DILocation(line: 204, column: 69, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !676, line: 204, column: 11)
!4301 = distinct !DILexicalBlock(scope: !4288, file: !676, line: 199, column: 5)
!4302 = !DILocation(line: 205, column: 11, scope: !4300)
!4303 = !DILocation(line: 204, column: 11, scope: !4301)
!4304 = !DILocation(line: 206, column: 9, scope: !4300)
!4305 = !DILocation(line: 210, column: 7, scope: !677)
!4306 = !DILocation(line: 211, column: 25, scope: !677)
!4307 = !DILocation(line: 51, column: 17, scope: !4245, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 211, column: 10, scope: !677)
!4309 = !DILocation(line: 51, column: 27, scope: !4245, inlinedAt: !4308)
!4310 = !DILocation(line: 53, column: 10, scope: !4254, inlinedAt: !4308)
!4311 = !DILocation(line: 207, column: 14, scope: !4301)
!4312 = !DILocation(line: 207, column: 18, scope: !4301)
!4313 = !DILocation(line: 207, column: 9, scope: !4301)
!4314 = !DILocation(line: 53, column: 8, scope: !4254, inlinedAt: !4308)
!4315 = !DILocation(line: 57, column: 7, scope: !4259, inlinedAt: !4308)
!4316 = !DILocation(line: 58, column: 7, scope: !4259, inlinedAt: !4308)
!4317 = !DILocation(line: 61, column: 7, scope: !4245, inlinedAt: !4308)
!4318 = !DILocation(line: 62, column: 8, scope: !4263, inlinedAt: !4308)
!4319 = !DILocation(line: 62, column: 13, scope: !4265, inlinedAt: !4308)
!4320 = !DILocation(line: 62, column: 10, scope: !4263, inlinedAt: !4308)
!4321 = !DILocation(line: 63, column: 5, scope: !4263, inlinedAt: !4308)
!4322 = !DILocation(line: 211, column: 3, scope: !677)
!4323 = distinct !DISubprogram(name: "xcharalloc", scope: !676, file: !676, line: 220, type: !3035, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4324)
!4324 = !{!4325}
!4325 = !DILocalVariable(name: "n", arg: 1, scope: !4323, file: !676, line: 220, type: !36)
!4326 = !DILocation(line: 220, column: 20, scope: !4323)
!4327 = !DILocation(line: 39, column: 17, scope: !4204, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 222, column: 10, scope: !4323)
!4329 = !DILocation(line: 41, column: 13, scope: !4204, inlinedAt: !4328)
!4330 = !DILocation(line: 41, column: 9, scope: !4204, inlinedAt: !4328)
!4331 = !DILocation(line: 42, column: 8, scope: !4215, inlinedAt: !4328)
!4332 = !DILocation(line: 42, column: 15, scope: !4217, inlinedAt: !4328)
!4333 = !DILocation(line: 42, column: 10, scope: !4215, inlinedAt: !4328)
!4334 = !DILocation(line: 43, column: 5, scope: !4215, inlinedAt: !4328)
!4335 = !DILocation(line: 222, column: 3, scope: !4323)
!4336 = distinct !DISubprogram(name: "x2realloc", scope: !4205, file: !4205, line: 74, type: !4337, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!35, !35, !680}
!4339 = !{!4340, !4341}
!4340 = !DILocalVariable(name: "p", arg: 1, scope: !4336, file: !4205, line: 74, type: !35)
!4341 = !DILocalVariable(name: "pn", arg: 2, scope: !4336, file: !4205, line: 74, type: !680)
!4342 = !DILocation(line: 74, column: 18, scope: !4336)
!4343 = !DILocation(line: 74, column: 29, scope: !4336)
!4344 = !DILocation(line: 180, column: 19, scope: !677, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 76, column: 10, scope: !4336)
!4346 = !DILocation(line: 180, column: 30, scope: !677, inlinedAt: !4345)
!4347 = !DILocation(line: 180, column: 41, scope: !677, inlinedAt: !4345)
!4348 = !DILocation(line: 182, column: 14, scope: !677, inlinedAt: !4345)
!4349 = !DILocation(line: 182, column: 10, scope: !677, inlinedAt: !4345)
!4350 = !DILocation(line: 184, column: 9, scope: !4288, inlinedAt: !4345)
!4351 = !DILocation(line: 184, column: 7, scope: !677, inlinedAt: !4345)
!4352 = !DILocation(line: 186, column: 13, scope: !4291, inlinedAt: !4345)
!4353 = !DILocation(line: 186, column: 11, scope: !4292, inlinedAt: !4345)
!4354 = !DILocation(line: 210, column: 7, scope: !677, inlinedAt: !4345)
!4355 = !DILocation(line: 51, column: 17, scope: !4245, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 211, column: 10, scope: !677, inlinedAt: !4345)
!4357 = !DILocation(line: 51, column: 27, scope: !4245, inlinedAt: !4356)
!4358 = !DILocation(line: 53, column: 10, scope: !4254, inlinedAt: !4356)
!4359 = !DILocation(line: 205, column: 11, scope: !4300, inlinedAt: !4345)
!4360 = !DILocation(line: 204, column: 11, scope: !4301, inlinedAt: !4345)
!4361 = !DILocation(line: 206, column: 9, scope: !4300, inlinedAt: !4345)
!4362 = !DILocation(line: 207, column: 14, scope: !4301, inlinedAt: !4345)
!4363 = !DILocation(line: 207, column: 18, scope: !4301, inlinedAt: !4345)
!4364 = !DILocation(line: 207, column: 9, scope: !4301, inlinedAt: !4345)
!4365 = !DILocation(line: 53, column: 8, scope: !4254, inlinedAt: !4356)
!4366 = !DILocation(line: 57, column: 7, scope: !4259, inlinedAt: !4356)
!4367 = !DILocation(line: 58, column: 7, scope: !4259, inlinedAt: !4356)
!4368 = !DILocation(line: 61, column: 7, scope: !4245, inlinedAt: !4356)
!4369 = !DILocation(line: 62, column: 8, scope: !4263, inlinedAt: !4356)
!4370 = !DILocation(line: 62, column: 13, scope: !4265, inlinedAt: !4356)
!4371 = !DILocation(line: 62, column: 10, scope: !4263, inlinedAt: !4356)
!4372 = !DILocation(line: 63, column: 5, scope: !4263, inlinedAt: !4356)
!4373 = !DILocation(line: 76, column: 3, scope: !4336)
!4374 = distinct !DISubprogram(name: "xzalloc", scope: !4205, file: !4205, line: 84, type: !4206, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4375)
!4375 = !{!4376}
!4376 = !DILocalVariable(name: "s", arg: 1, scope: !4374, file: !4205, line: 84, type: !36)
!4377 = !DILocation(line: 84, column: 17, scope: !4374)
!4378 = !DILocation(line: 39, column: 17, scope: !4204, inlinedAt: !4379)
!4379 = distinct !DILocation(line: 86, column: 18, scope: !4374)
!4380 = !DILocation(line: 41, column: 13, scope: !4204, inlinedAt: !4379)
!4381 = !DILocation(line: 41, column: 9, scope: !4204, inlinedAt: !4379)
!4382 = !DILocation(line: 42, column: 8, scope: !4215, inlinedAt: !4379)
!4383 = !DILocation(line: 42, column: 15, scope: !4217, inlinedAt: !4379)
!4384 = !DILocation(line: 42, column: 10, scope: !4215, inlinedAt: !4379)
!4385 = !DILocation(line: 43, column: 5, scope: !4215, inlinedAt: !4379)
!4386 = !DILocation(line: 86, column: 10, scope: !4374)
!4387 = !DILocation(line: 86, column: 3, scope: !4374)
!4388 = distinct !DISubprogram(name: "xcalloc", scope: !4205, file: !4205, line: 93, type: !4191, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4389)
!4389 = !{!4390, !4391, !4392}
!4390 = !DILocalVariable(name: "n", arg: 1, scope: !4388, file: !4205, line: 93, type: !36)
!4391 = !DILocalVariable(name: "s", arg: 2, scope: !4388, file: !4205, line: 93, type: !36)
!4392 = !DILocalVariable(name: "p", scope: !4388, file: !4205, line: 95, type: !35)
!4393 = !DILocation(line: 93, column: 17, scope: !4388)
!4394 = !DILocation(line: 93, column: 27, scope: !4388)
!4395 = !DILocation(line: 100, column: 7, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4388, file: !4205, line: 100, column: 7)
!4397 = !DILocation(line: 101, column: 7, scope: !4396)
!4398 = !DILocation(line: 101, column: 18, scope: !4399)
!4399 = !DILexicalBlockFile(scope: !4396, file: !4205, discriminator: 1)
!4400 = !DILocation(line: 95, column: 9, scope: !4388)
!4401 = !DILocation(line: 101, column: 16, scope: !4399)
!4402 = !DILocation(line: 100, column: 7, scope: !4403)
!4403 = !DILexicalBlockFile(scope: !4388, file: !4205, discriminator: 1)
!4404 = !DILocation(line: 102, column: 5, scope: !4396)
!4405 = !DILocation(line: 103, column: 3, scope: !4388)
!4406 = distinct !DISubprogram(name: "xmemdup", scope: !4205, file: !4205, line: 111, type: !4407, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!35, !39, !36}
!4409 = !{!4410, !4411}
!4410 = !DILocalVariable(name: "p", arg: 1, scope: !4406, file: !4205, line: 111, type: !39)
!4411 = !DILocalVariable(name: "s", arg: 2, scope: !4406, file: !4205, line: 111, type: !36)
!4412 = !DILocation(line: 111, column: 22, scope: !4406)
!4413 = !DILocation(line: 111, column: 32, scope: !4406)
!4414 = !DILocation(line: 39, column: 17, scope: !4204, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 113, column: 18, scope: !4406)
!4416 = !DILocation(line: 41, column: 13, scope: !4204, inlinedAt: !4415)
!4417 = !DILocation(line: 41, column: 9, scope: !4204, inlinedAt: !4415)
!4418 = !DILocation(line: 42, column: 8, scope: !4215, inlinedAt: !4415)
!4419 = !DILocation(line: 42, column: 15, scope: !4217, inlinedAt: !4415)
!4420 = !DILocation(line: 42, column: 10, scope: !4215, inlinedAt: !4415)
!4421 = !DILocation(line: 43, column: 5, scope: !4215, inlinedAt: !4415)
!4422 = !DILocation(line: 113, column: 10, scope: !4406)
!4423 = !DILocation(line: 113, column: 3, scope: !4406)
!4424 = distinct !DISubprogram(name: "xstrdup", scope: !4205, file: !4205, line: 119, type: !3241, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4425)
!4425 = !{!4426}
!4426 = !DILocalVariable(name: "string", arg: 1, scope: !4424, file: !4205, line: 119, type: !44)
!4427 = !DILocation(line: 119, column: 22, scope: !4424)
!4428 = !DILocation(line: 121, column: 27, scope: !4424)
!4429 = !DILocation(line: 121, column: 43, scope: !4424)
!4430 = !DILocation(line: 111, column: 22, scope: !4406, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 121, column: 10, scope: !4432)
!4432 = !DILexicalBlockFile(scope: !4424, file: !4205, discriminator: 1)
!4433 = !DILocation(line: 111, column: 32, scope: !4406, inlinedAt: !4431)
!4434 = !DILocation(line: 39, column: 17, scope: !4204, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 113, column: 18, scope: !4406, inlinedAt: !4431)
!4436 = !DILocation(line: 41, column: 13, scope: !4204, inlinedAt: !4435)
!4437 = !DILocation(line: 41, column: 9, scope: !4204, inlinedAt: !4435)
!4438 = !DILocation(line: 42, column: 8, scope: !4215, inlinedAt: !4435)
!4439 = !DILocation(line: 42, column: 15, scope: !4217, inlinedAt: !4435)
!4440 = !DILocation(line: 42, column: 10, scope: !4215, inlinedAt: !4435)
!4441 = !DILocation(line: 43, column: 5, scope: !4215, inlinedAt: !4435)
!4442 = !DILocation(line: 113, column: 10, scope: !4406, inlinedAt: !4431)
!4443 = !DILocation(line: 121, column: 3, scope: !4424)
!4444 = distinct !DISubprogram(name: "xalloc_die", scope: !4445, file: !4445, line: 32, type: !1732, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !689, variables: !92)
!4445 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4446 = !DILocation(line: 34, column: 10, scope: !4444)
!4447 = !DILocation(line: 34, column: 33, scope: !4444)
!4448 = !DILocation(line: 34, column: 3, scope: !4449)
!4449 = !DILexicalBlockFile(scope: !4444, file: !4445, discriminator: 1)
!4450 = !DILocation(line: 40, column: 3, scope: !4444)
!4451 = distinct !DISubprogram(name: "xprintf", scope: !4452, file: !4452, line: 32, type: !4453, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !4455)
!4452 = !DIFile(filename: "lib/xprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!49, !1281, null}
!4455 = !{!4456, !4457, !4468}
!4456 = !DILocalVariable(name: "format", arg: 1, scope: !4451, file: !4452, line: 32, type: !1281)
!4457 = !DILocalVariable(name: "args", scope: !4451, file: !4452, line: 34, type: !4458)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !219, line: 80, baseType: !4459)
!4459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4168, line: 50, baseType: !4460)
!4460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !692, line: 34, baseType: !4461)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4462, size: 192, elements: !254)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !692, line: 34, size: 192, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4462, file: !692, line: 34, baseType: !48, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4462, file: !692, line: 34, baseType: !48, size: 32, offset: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4462, file: !692, line: 34, baseType: !35, size: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4462, file: !692, line: 34, baseType: !35, size: 64, offset: 128)
!4468 = !DILocalVariable(name: "retval", scope: !4451, file: !4452, line: 35, type: !49)
!4469 = !DILocation(line: 32, column: 31, scope: !4451)
!4470 = !DILocation(line: 34, column: 3, scope: !4451)
!4471 = !DILocation(line: 34, column: 11, scope: !4451)
!4472 = !DILocation(line: 36, column: 3, scope: !4451)
!4473 = !DILocalVariable(name: "format", arg: 1, scope: !4474, file: !4452, line: 46, type: !1281)
!4474 = distinct !DISubprogram(name: "xvprintf", scope: !4452, file: !4452, line: 46, type: !4475, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !4478)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!49, !1281, !4477}
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4478 = !{!4473, !4479, !4480}
!4479 = !DILocalVariable(name: "args", arg: 2, scope: !4474, file: !4452, line: 46, type: !4477)
!4480 = !DILocalVariable(name: "retval", scope: !4474, file: !4452, line: 48, type: !49)
!4481 = !DILocation(line: 46, column: 32, scope: !4474, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 37, column: 12, scope: !4451)
!4483 = !DILocation(line: 46, column: 48, scope: !4474, inlinedAt: !4482)
!4484 = !DILocalVariable(name: "__fmt", arg: 1, scope: !4485, file: !4486, line: 114, type: !1281)
!4485 = distinct !DISubprogram(name: "vprintf", scope: !4486, file: !4486, line: 114, type: !4475, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !4487)
!4486 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4487 = !{!4484, !4488}
!4488 = !DILocalVariable(name: "__ap", arg: 2, scope: !4485, file: !4486, line: 114, type: !4477)
!4489 = !DILocation(line: 114, column: 33, scope: !4485, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 48, column: 16, scope: !4474, inlinedAt: !4482)
!4491 = !DILocation(line: 114, column: 51, scope: !4485, inlinedAt: !4490)
!4492 = !DILocation(line: 117, column: 26, scope: !4485, inlinedAt: !4490)
!4493 = !{!4494, !4496}
!4494 = distinct !{!4494, !4495, !"vprintf: argument 0"}
!4495 = distinct !{!4495, !"vprintf"}
!4496 = distinct !{!4496, !4497, !"xvprintf: argument 0"}
!4497 = distinct !{!4497, !"xvprintf"}
!4498 = !DILocation(line: 117, column: 10, scope: !4485, inlinedAt: !4490)
!4499 = !DILocation(line: 48, column: 7, scope: !4474, inlinedAt: !4482)
!4500 = !DILocation(line: 49, column: 14, scope: !4501, inlinedAt: !4482)
!4501 = distinct !DILexicalBlock(scope: !4474, file: !4452, line: 49, column: 7)
!4502 = !DILocation(line: 49, column: 18, scope: !4501, inlinedAt: !4482)
!4503 = !DILocation(line: 49, column: 31, scope: !4504, inlinedAt: !4482)
!4504 = !DILexicalBlockFile(scope: !4501, file: !4452, discriminator: 1)
!4505 = !DILocation(line: 49, column: 23, scope: !4504, inlinedAt: !4482)
!4506 = !DILocation(line: 49, column: 7, scope: !4507, inlinedAt: !4482)
!4507 = !DILexicalBlockFile(scope: !4474, file: !4452, discriminator: 1)
!4508 = !DILocation(line: 50, column: 12, scope: !4501, inlinedAt: !4482)
!4509 = !DILocation(line: 50, column: 26, scope: !4501, inlinedAt: !4482)
!4510 = !DILocation(line: 50, column: 33, scope: !4504, inlinedAt: !4482)
!4511 = !DILocation(line: 50, column: 5, scope: !4512, inlinedAt: !4482)
!4512 = !DILexicalBlockFile(scope: !4501, file: !4452, discriminator: 2)
!4513 = !DILocation(line: 50, column: 5, scope: !4501, inlinedAt: !4482)
!4514 = !DILocation(line: 35, column: 7, scope: !4451)
!4515 = !DILocation(line: 38, column: 3, scope: !4451)
!4516 = !DILocation(line: 41, column: 1, scope: !4451)
!4517 = !DILocation(line: 40, column: 3, scope: !4451)
!4518 = !DILocation(line: 46, column: 32, scope: !4474)
!4519 = !DILocation(line: 46, column: 48, scope: !4474)
!4520 = !DILocation(line: 114, column: 33, scope: !4485, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 48, column: 16, scope: !4474)
!4522 = !DILocation(line: 114, column: 51, scope: !4485, inlinedAt: !4521)
!4523 = !DILocation(line: 117, column: 26, scope: !4485, inlinedAt: !4521)
!4524 = !{!4525}
!4525 = distinct !{!4525, !4526, !"vprintf: argument 0"}
!4526 = distinct !{!4526, !"vprintf"}
!4527 = !DILocation(line: 117, column: 10, scope: !4485, inlinedAt: !4521)
!4528 = !DILocation(line: 48, column: 7, scope: !4474)
!4529 = !DILocation(line: 49, column: 14, scope: !4501)
!4530 = !DILocation(line: 49, column: 18, scope: !4501)
!4531 = !DILocation(line: 49, column: 31, scope: !4504)
!4532 = !DILocation(line: 49, column: 23, scope: !4504)
!4533 = !DILocation(line: 49, column: 7, scope: !4507)
!4534 = !DILocation(line: 50, column: 12, scope: !4501)
!4535 = !DILocation(line: 50, column: 26, scope: !4501)
!4536 = !DILocation(line: 50, column: 33, scope: !4504)
!4537 = !DILocation(line: 50, column: 5, scope: !4512)
!4538 = !DILocation(line: 50, column: 5, scope: !4501)
!4539 = !DILocation(line: 52, column: 3, scope: !4474)
!4540 = distinct !DISubprogram(name: "xfprintf", scope: !4452, file: !4452, line: 58, type: !4541, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !4584)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!49, !4543, !1281, null}
!4543 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4544)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !219, line: 49, baseType: !4546)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !221, line: 241, size: 1728, elements: !4547)
!4547 = !{!4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4546, file: !221, line: 242, baseType: !49, size: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4546, file: !221, line: 247, baseType: !47, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4546, file: !221, line: 248, baseType: !47, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4546, file: !221, line: 249, baseType: !47, size: 64, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4546, file: !221, line: 250, baseType: !47, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4546, file: !221, line: 251, baseType: !47, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4546, file: !221, line: 252, baseType: !47, size: 64, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4546, file: !221, line: 253, baseType: !47, size: 64, offset: 448)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4546, file: !221, line: 254, baseType: !47, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4546, file: !221, line: 256, baseType: !47, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4546, file: !221, line: 257, baseType: !47, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4546, file: !221, line: 258, baseType: !47, size: 64, offset: 704)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4546, file: !221, line: 260, baseType: !4561, size: 64, offset: 768)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !221, line: 156, size: 192, elements: !4563)
!4563 = !{!4564, !4565, !4567}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4562, file: !221, line: 157, baseType: !4561, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4562, file: !221, line: 158, baseType: !4566, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4562, file: !221, line: 162, baseType: !49, size: 32, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4546, file: !221, line: 262, baseType: !4566, size: 64, offset: 832)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4546, file: !221, line: 264, baseType: !49, size: 32, offset: 896)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4546, file: !221, line: 268, baseType: !49, size: 32, offset: 928)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4546, file: !221, line: 270, baseType: !247, size: 64, offset: 960)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4546, file: !221, line: 274, baseType: !50, size: 16, offset: 1024)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4546, file: !221, line: 275, baseType: !251, size: 8, offset: 1040)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4546, file: !221, line: 276, baseType: !253, size: 8, offset: 1048)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4546, file: !221, line: 280, baseType: !257, size: 64, offset: 1088)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4546, file: !221, line: 289, baseType: !260, size: 64, offset: 1152)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4546, file: !221, line: 297, baseType: !35, size: 64, offset: 1216)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4546, file: !221, line: 298, baseType: !35, size: 64, offset: 1280)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4546, file: !221, line: 299, baseType: !35, size: 64, offset: 1344)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4546, file: !221, line: 300, baseType: !35, size: 64, offset: 1408)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4546, file: !221, line: 302, baseType: !36, size: 64, offset: 1472)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4546, file: !221, line: 303, baseType: !49, size: 32, offset: 1536)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4546, file: !221, line: 305, baseType: !268, size: 160, offset: 1568)
!4584 = !{!4585, !4586, !4587, !4588}
!4585 = !DILocalVariable(name: "stream", arg: 1, scope: !4540, file: !4452, line: 58, type: !4543)
!4586 = !DILocalVariable(name: "format", arg: 2, scope: !4540, file: !4452, line: 58, type: !1281)
!4587 = !DILocalVariable(name: "args", scope: !4540, file: !4452, line: 60, type: !4458)
!4588 = !DILocalVariable(name: "retval", scope: !4540, file: !4452, line: 61, type: !49)
!4589 = !DILocation(line: 58, column: 26, scope: !4540)
!4590 = !DILocation(line: 58, column: 55, scope: !4540)
!4591 = !DILocation(line: 60, column: 3, scope: !4540)
!4592 = !DILocation(line: 60, column: 11, scope: !4540)
!4593 = !DILocation(line: 62, column: 3, scope: !4540)
!4594 = !DILocalVariable(name: "stream", arg: 1, scope: !4595, file: !4452, line: 72, type: !4543)
!4595 = distinct !DISubprogram(name: "xvfprintf", scope: !4452, file: !4452, line: 72, type: !4596, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !4598)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!49, !4543, !1281, !4477}
!4598 = !{!4594, !4599, !4600, !4601}
!4599 = !DILocalVariable(name: "format", arg: 2, scope: !4595, file: !4452, line: 72, type: !1281)
!4600 = !DILocalVariable(name: "args", arg: 3, scope: !4595, file: !4452, line: 72, type: !4477)
!4601 = !DILocalVariable(name: "retval", scope: !4595, file: !4452, line: 74, type: !49)
!4602 = !DILocation(line: 72, column: 27, scope: !4595, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 63, column: 12, scope: !4540)
!4604 = !DILocation(line: 72, column: 56, scope: !4595, inlinedAt: !4603)
!4605 = !DILocation(line: 72, column: 72, scope: !4595, inlinedAt: !4603)
!4606 = !DILocalVariable(name: "__stream", arg: 1, scope: !4607, file: !4486, line: 124, type: !4543)
!4607 = distinct !DISubprogram(name: "vfprintf", scope: !4486, file: !4486, line: 124, type: !4596, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !4608)
!4608 = !{!4606, !4609, !4610}
!4609 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4607, file: !4486, line: 125, type: !1281)
!4610 = !DILocalVariable(name: "__ap", arg: 3, scope: !4607, file: !4486, line: 125, type: !4477)
!4611 = !DILocation(line: 124, column: 28, scope: !4607, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 74, column: 16, scope: !4595, inlinedAt: !4603)
!4613 = !DILocation(line: 125, column: 27, scope: !4607, inlinedAt: !4612)
!4614 = !DILocation(line: 125, column: 45, scope: !4607, inlinedAt: !4612)
!4615 = !DILocation(line: 127, column: 10, scope: !4607, inlinedAt: !4612)
!4616 = !DILocation(line: 74, column: 7, scope: !4595, inlinedAt: !4603)
!4617 = !DILocation(line: 75, column: 14, scope: !4618, inlinedAt: !4603)
!4618 = distinct !DILexicalBlock(scope: !4595, file: !4452, line: 75, column: 7)
!4619 = !DILocation(line: 75, column: 18, scope: !4618, inlinedAt: !4603)
!4620 = !DILocation(line: 75, column: 23, scope: !4621, inlinedAt: !4603)
!4621 = !DILexicalBlockFile(scope: !4618, file: !4452, discriminator: 1)
!4622 = !DILocation(line: 75, column: 7, scope: !4623, inlinedAt: !4603)
!4623 = !DILexicalBlockFile(scope: !4595, file: !4452, discriminator: 1)
!4624 = !DILocation(line: 76, column: 12, scope: !4618, inlinedAt: !4603)
!4625 = !DILocation(line: 76, column: 26, scope: !4618, inlinedAt: !4603)
!4626 = !DILocation(line: 76, column: 33, scope: !4621, inlinedAt: !4603)
!4627 = !DILocation(line: 76, column: 5, scope: !4628, inlinedAt: !4603)
!4628 = !DILexicalBlockFile(scope: !4618, file: !4452, discriminator: 2)
!4629 = !DILocation(line: 76, column: 5, scope: !4618, inlinedAt: !4603)
!4630 = !DILocation(line: 61, column: 7, scope: !4540)
!4631 = !DILocation(line: 64, column: 3, scope: !4540)
!4632 = !DILocation(line: 67, column: 1, scope: !4540)
!4633 = !DILocation(line: 66, column: 3, scope: !4540)
!4634 = !DILocation(line: 72, column: 27, scope: !4595)
!4635 = !DILocation(line: 72, column: 56, scope: !4595)
!4636 = !DILocation(line: 72, column: 72, scope: !4595)
!4637 = !DILocation(line: 124, column: 28, scope: !4607, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 74, column: 16, scope: !4595)
!4639 = !DILocation(line: 125, column: 27, scope: !4607, inlinedAt: !4638)
!4640 = !DILocation(line: 125, column: 45, scope: !4607, inlinedAt: !4638)
!4641 = !DILocation(line: 127, column: 10, scope: !4607, inlinedAt: !4638)
!4642 = !DILocation(line: 74, column: 7, scope: !4595)
!4643 = !DILocation(line: 75, column: 14, scope: !4618)
!4644 = !DILocation(line: 75, column: 18, scope: !4618)
!4645 = !DILocation(line: 75, column: 23, scope: !4621)
!4646 = !DILocation(line: 75, column: 7, scope: !4623)
!4647 = !DILocation(line: 76, column: 12, scope: !4618)
!4648 = !DILocation(line: 76, column: 26, scope: !4618)
!4649 = !DILocation(line: 76, column: 33, scope: !4621)
!4650 = !DILocation(line: 76, column: 5, scope: !4628)
!4651 = !DILocation(line: 76, column: 5, scope: !4618)
!4652 = !DILocation(line: 78, column: 3, scope: !4595)
!4653 = distinct !DISubprogram(name: "rpl_calloc", scope: !4654, file: !4654, line: 42, type: !4191, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !693, variables: !4655)
!4654 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4655 = !{!4656, !4657, !4658, !4659}
!4656 = !DILocalVariable(name: "n", arg: 1, scope: !4653, file: !4654, line: 42, type: !36)
!4657 = !DILocalVariable(name: "s", arg: 2, scope: !4653, file: !4654, line: 42, type: !36)
!4658 = !DILocalVariable(name: "result", scope: !4653, file: !4654, line: 44, type: !35)
!4659 = !DILocalVariable(name: "bytes", scope: !4660, file: !4654, line: 56, type: !36)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !4654, line: 53, column: 5)
!4661 = distinct !DILexicalBlock(scope: !4653, file: !4654, line: 47, column: 7)
!4662 = !DILocation(line: 42, column: 20, scope: !4653)
!4663 = !DILocation(line: 42, column: 30, scope: !4653)
!4664 = !DILocation(line: 47, column: 9, scope: !4661)
!4665 = !DILocation(line: 47, column: 19, scope: !4666)
!4666 = !DILexicalBlockFile(scope: !4661, file: !4654, discriminator: 1)
!4667 = !DILocation(line: 47, column: 14, scope: !4661)
!4668 = !DILocation(line: 56, column: 24, scope: !4660)
!4669 = !DILocation(line: 56, column: 14, scope: !4660)
!4670 = !DILocation(line: 57, column: 17, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4660, file: !4654, line: 57, column: 11)
!4672 = !DILocation(line: 57, column: 21, scope: !4671)
!4673 = !DILocation(line: 57, column: 11, scope: !4660)
!4674 = !DILocation(line: 59, column: 11, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4671, file: !4654, line: 58, column: 9)
!4676 = !DILocation(line: 59, column: 17, scope: !4675)
!4677 = !DILocation(line: 65, column: 12, scope: !4653)
!4678 = !DILocation(line: 44, column: 9, scope: !4653)
!4679 = !DILocation(line: 72, column: 3, scope: !4653)
!4680 = !DILocation(line: 73, column: 1, scope: !4653)
!4681 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4682, file: !4682, line: 334, type: !4683, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !695, variables: !4697)
!4682 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!36, !4685, !44, !36, !4686}
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2008, line: 107, baseType: !4688)
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2008, line: 95, baseType: !4689)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2008, line: 83, size: 64, elements: !4690)
!4690 = !{!4691, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4689, file: !2008, line: 85, baseType: !49, size: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4689, file: !2008, line: 94, baseType: !4693, size: 32, offset: 32)
!4693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4689, file: !2008, line: 86, size: 32, elements: !4694)
!4694 = !{!4695, !4696}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4693, file: !2008, line: 89, baseType: !48, size: 32)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4693, file: !2008, line: 93, baseType: !2018, size: 32)
!4697 = !{!4698, !4699, !4700, !4701, !4702, !4703, !4704}
!4698 = !DILocalVariable(name: "pwc", arg: 1, scope: !4681, file: !4682, line: 334, type: !4685)
!4699 = !DILocalVariable(name: "s", arg: 2, scope: !4681, file: !4682, line: 334, type: !44)
!4700 = !DILocalVariable(name: "n", arg: 3, scope: !4681, file: !4682, line: 334, type: !36)
!4701 = !DILocalVariable(name: "ps", arg: 4, scope: !4681, file: !4682, line: 334, type: !4686)
!4702 = !DILocalVariable(name: "ret", scope: !4681, file: !4682, line: 336, type: !36)
!4703 = !DILocalVariable(name: "wc", scope: !4681, file: !4682, line: 337, type: !2023)
!4704 = !DILocalVariable(name: "uc", scope: !4705, file: !4682, line: 398, type: !43)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !4682, line: 397, column: 5)
!4706 = distinct !DILexicalBlock(scope: !4681, file: !4682, line: 396, column: 7)
!4707 = !DILocation(line: 334, column: 23, scope: !4681)
!4708 = !DILocation(line: 334, column: 40, scope: !4681)
!4709 = !DILocation(line: 334, column: 50, scope: !4681)
!4710 = !DILocation(line: 334, column: 64, scope: !4681)
!4711 = !DILocation(line: 337, column: 3, scope: !4681)
!4712 = !DILocation(line: 353, column: 9, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4681, file: !4682, line: 353, column: 7)
!4714 = !DILocation(line: 353, column: 7, scope: !4681)
!4715 = !DILocation(line: 388, column: 9, scope: !4681)
!4716 = !DILocation(line: 336, column: 10, scope: !4681)
!4717 = !DILocation(line: 396, column: 19, scope: !4706)
!4718 = !DILocation(line: 396, column: 31, scope: !4719)
!4719 = !DILexicalBlockFile(scope: !4706, file: !4682, discriminator: 1)
!4720 = !DILocation(line: 396, column: 26, scope: !4706)
!4721 = !DILocation(line: 396, column: 41, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !4706, file: !4682, discriminator: 2)
!4723 = !DILocation(line: 396, column: 7, scope: !4724)
!4724 = !DILexicalBlockFile(scope: !4681, file: !4682, discriminator: 2)
!4725 = !DILocation(line: 398, column: 26, scope: !4705)
!4726 = !DILocation(line: 398, column: 21, scope: !4705)
!4727 = !DILocation(line: 399, column: 14, scope: !4705)
!4728 = !DILocation(line: 399, column: 12, scope: !4705)
!4729 = !DILocation(line: 405, column: 1, scope: !4681)
!4730 = distinct !DISubprogram(name: "close_stream", scope: !4731, file: !4731, line: 56, type: !4732, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !698, variables: !4774)
!4731 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!49, !4734}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !219, line: 49, baseType: !4736)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !221, line: 241, size: 1728, elements: !4737)
!4737 = !{!4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4736, file: !221, line: 242, baseType: !49, size: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4736, file: !221, line: 247, baseType: !47, size: 64, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4736, file: !221, line: 248, baseType: !47, size: 64, offset: 128)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4736, file: !221, line: 249, baseType: !47, size: 64, offset: 192)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4736, file: !221, line: 250, baseType: !47, size: 64, offset: 256)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4736, file: !221, line: 251, baseType: !47, size: 64, offset: 320)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4736, file: !221, line: 252, baseType: !47, size: 64, offset: 384)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4736, file: !221, line: 253, baseType: !47, size: 64, offset: 448)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4736, file: !221, line: 254, baseType: !47, size: 64, offset: 512)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4736, file: !221, line: 256, baseType: !47, size: 64, offset: 576)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4736, file: !221, line: 257, baseType: !47, size: 64, offset: 640)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4736, file: !221, line: 258, baseType: !47, size: 64, offset: 704)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4736, file: !221, line: 260, baseType: !4751, size: 64, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !221, line: 156, size: 192, elements: !4753)
!4753 = !{!4754, !4755, !4757}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4752, file: !221, line: 157, baseType: !4751, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4752, file: !221, line: 158, baseType: !4756, size: 64, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4752, file: !221, line: 162, baseType: !49, size: 32, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4736, file: !221, line: 262, baseType: !4756, size: 64, offset: 832)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4736, file: !221, line: 264, baseType: !49, size: 32, offset: 896)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4736, file: !221, line: 268, baseType: !49, size: 32, offset: 928)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4736, file: !221, line: 270, baseType: !247, size: 64, offset: 960)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4736, file: !221, line: 274, baseType: !50, size: 16, offset: 1024)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4736, file: !221, line: 275, baseType: !251, size: 8, offset: 1040)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4736, file: !221, line: 276, baseType: !253, size: 8, offset: 1048)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4736, file: !221, line: 280, baseType: !257, size: 64, offset: 1088)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4736, file: !221, line: 289, baseType: !260, size: 64, offset: 1152)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4736, file: !221, line: 297, baseType: !35, size: 64, offset: 1216)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4736, file: !221, line: 298, baseType: !35, size: 64, offset: 1280)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4736, file: !221, line: 299, baseType: !35, size: 64, offset: 1344)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4736, file: !221, line: 300, baseType: !35, size: 64, offset: 1408)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4736, file: !221, line: 302, baseType: !36, size: 64, offset: 1472)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4736, file: !221, line: 303, baseType: !49, size: 32, offset: 1536)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4736, file: !221, line: 305, baseType: !268, size: 160, offset: 1568)
!4774 = !{!4775, !4776, !4778, !4779}
!4775 = !DILocalVariable(name: "stream", arg: 1, scope: !4730, file: !4731, line: 56, type: !4734)
!4776 = !DILocalVariable(name: "some_pending", scope: !4730, file: !4731, line: 58, type: !4777)
!4777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4778 = !DILocalVariable(name: "prev_fail", scope: !4730, file: !4731, line: 59, type: !4777)
!4779 = !DILocalVariable(name: "fclose_fail", scope: !4730, file: !4731, line: 60, type: !4777)
!4780 = !DILocation(line: 56, column: 21, scope: !4730)
!4781 = !DILocation(line: 58, column: 30, scope: !4730)
!4782 = !DILocalVariable(name: "__stream", arg: 1, scope: !4783, file: !951, line: 132, type: !4734)
!4783 = distinct !DISubprogram(name: "ferror_unlocked", scope: !951, file: !951, line: 132, type: !4732, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !698, variables: !4784)
!4784 = !{!4782}
!4785 = !DILocation(line: 132, column: 1, scope: !4783, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 59, column: 27, scope: !4730)
!4787 = !DILocation(line: 134, column: 10, scope: !4783, inlinedAt: !4786)
!4788 = !{!960, !961, i64 0}
!4789 = !DILocation(line: 59, column: 43, scope: !4730)
!4790 = !DILocation(line: 60, column: 29, scope: !4730)
!4791 = !DILocation(line: 60, column: 45, scope: !4730)
!4792 = !DILocation(line: 70, column: 17, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4730, file: !4731, line: 70, column: 7)
!4794 = !DILocation(line: 70, column: 33, scope: !4795)
!4795 = !DILexicalBlockFile(scope: !4793, file: !4731, discriminator: 1)
!4796 = !DILocation(line: 70, column: 53, scope: !4797)
!4797 = !DILexicalBlockFile(scope: !4793, file: !4731, discriminator: 3)
!4798 = !DILocation(line: 70, column: 7, scope: !4799)
!4799 = !DILexicalBlockFile(scope: !4730, file: !4731, discriminator: 3)
!4800 = !DILocation(line: 72, column: 11, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4793, file: !4731, line: 71, column: 5)
!4802 = !DILocation(line: 73, column: 9, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4801, file: !4731, line: 72, column: 11)
!4804 = !DILocation(line: 73, column: 15, scope: !4803)
!4805 = !DILocation(line: 78, column: 1, scope: !4730)
!4806 = distinct !DISubprogram(name: "hard_locale", scope: !4807, file: !4807, line: 38, type: !4808, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !700, variables: !4810)
!4807 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!87, !49}
!4810 = !{!4811, !4812, !4813, !4814, !4821, !4822, !4824, !4825, !4827, !4828, !4830}
!4811 = !DILocalVariable(name: "category", arg: 1, scope: !4806, file: !4807, line: 38, type: !49)
!4812 = !DILocalVariable(name: "hard", scope: !4806, file: !4807, line: 40, type: !87)
!4813 = !DILocalVariable(name: "p", scope: !4806, file: !4807, line: 41, type: !44)
!4814 = !DILocalVariable(name: "__s1_len", scope: !4815, file: !4807, line: 47, type: !36)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !4807, line: 47, column: 15)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !4807, line: 47, column: 15)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !4807, line: 46, column: 9)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !4807, line: 45, column: 11)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !4807, line: 44, column: 5)
!4820 = distinct !DILexicalBlock(scope: !4806, file: !4807, line: 43, column: 7)
!4821 = !DILocalVariable(name: "__s2_len", scope: !4815, file: !4807, line: 47, type: !36)
!4822 = !DILocalVariable(name: "__s2", scope: !4823, file: !4807, line: 47, type: !41)
!4823 = distinct !DILexicalBlock(scope: !4815, file: !4807, line: 47, column: 15)
!4824 = !DILocalVariable(name: "__result", scope: !4823, file: !4807, line: 47, type: !49)
!4825 = !DILocalVariable(name: "__s1_len", scope: !4826, file: !4807, line: 47, type: !36)
!4826 = distinct !DILexicalBlock(scope: !4816, file: !4807, line: 47, column: 39)
!4827 = !DILocalVariable(name: "__s2_len", scope: !4826, file: !4807, line: 47, type: !36)
!4828 = !DILocalVariable(name: "__s2", scope: !4829, file: !4807, line: 47, type: !41)
!4829 = distinct !DILexicalBlock(scope: !4826, file: !4807, line: 47, column: 39)
!4830 = !DILocalVariable(name: "__result", scope: !4829, file: !4807, line: 47, type: !49)
!4831 = !DILocation(line: 38, column: 18, scope: !4806)
!4832 = !DILocation(line: 40, column: 8, scope: !4806)
!4833 = !DILocation(line: 41, column: 19, scope: !4806)
!4834 = !DILocation(line: 41, column: 15, scope: !4806)
!4835 = !DILocation(line: 43, column: 7, scope: !4820)
!4836 = !DILocation(line: 43, column: 7, scope: !4806)
!4837 = !DILocation(line: 47, column: 15, scope: !4815)
!4838 = !DILocation(line: 47, column: 15, scope: !4823)
!4839 = !DILocation(line: 47, column: 15, scope: !4840)
!4840 = !DILexicalBlockFile(scope: !4823, file: !4807, discriminator: 2)
!4841 = !DILocation(line: 47, column: 15, scope: !4842)
!4842 = !DILexicalBlockFile(scope: !4843, file: !4807, discriminator: 3)
!4843 = distinct !DILexicalBlock(scope: !4823, file: !4807, line: 47, column: 15)
!4844 = !DILocation(line: 47, column: 15, scope: !4845)
!4845 = !DILexicalBlockFile(scope: !4843, file: !4807, discriminator: 2)
!4846 = !DILocation(line: 47, column: 15, scope: !4847)
!4847 = !DILexicalBlockFile(scope: !4848, file: !4807, discriminator: 4)
!4848 = distinct !DILexicalBlock(scope: !4843, file: !4807, line: 47, column: 15)
!4849 = !DILocation(line: 47, column: 15, scope: !4850)
!4850 = !DILexicalBlockFile(scope: !4815, file: !4807, discriminator: 11)
!4851 = !DILocation(line: 47, column: 36, scope: !4852)
!4852 = !DILexicalBlockFile(scope: !4816, file: !4807, discriminator: 13)
!4853 = !DILocation(line: 47, column: 39, scope: !4826)
!4854 = !DILocation(line: 47, column: 39, scope: !4855)
!4855 = !DILexicalBlockFile(scope: !4826, file: !4807, discriminator: 26)
!4856 = !DILocation(line: 47, column: 59, scope: !4857)
!4857 = !DILexicalBlockFile(scope: !4816, file: !4807, discriminator: 27)
!4858 = !DILocation(line: 47, column: 15, scope: !4859)
!4859 = !DILexicalBlockFile(scope: !4817, file: !4807, discriminator: 27)
!4860 = !DILocation(line: 48, column: 13, scope: !4816)
!4861 = !DILocation(line: 71, column: 3, scope: !4806)
!4862 = distinct !DISubprogram(name: "locale_charset", scope: !660, file: !660, line: 393, type: !4863, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !317, variables: !4865)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!44}
!4865 = !{!4866, !4867, !4868, !4873}
!4866 = !DILocalVariable(name: "codeset", scope: !4862, file: !660, line: 395, type: !44)
!4867 = !DILocalVariable(name: "aliases", scope: !4862, file: !660, line: 396, type: !44)
!4868 = !DILocalVariable(name: "__s1_len", scope: !4869, file: !660, line: 592, type: !36)
!4869 = distinct !DILexicalBlock(scope: !4870, file: !660, line: 592, column: 9)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !660, line: 592, column: 9)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !660, line: 589, column: 3)
!4872 = distinct !DILexicalBlock(scope: !4862, file: !660, line: 589, column: 3)
!4873 = !DILocalVariable(name: "__s2_len", scope: !4869, file: !660, line: 592, type: !36)
!4874 = !DILocalVariable(name: "buf1", scope: !4875, file: !660, line: 196, type: !4942)
!4875 = distinct !DILexicalBlock(scope: !4876, file: !660, line: 194, column: 21)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !660, line: 193, column: 19)
!4877 = distinct !DILexicalBlock(scope: !4878, file: !660, line: 193, column: 19)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !660, line: 188, column: 17)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !660, line: 181, column: 19)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !660, line: 177, column: 13)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !660, line: 173, column: 15)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !660, line: 161, column: 9)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !660, line: 157, column: 11)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !660, line: 130, column: 5)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !660, line: 129, column: 7)
!4886 = distinct !DISubprogram(name: "get_charset_aliases", scope: !660, file: !660, line: 124, type: !4863, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !317, variables: !4887)
!4887 = !{!4888, !4889, !4890, !4891, !4892, !4894, !4895, !4896, !4897, !4938, !4939, !4940, !4874, !4941, !4945, !4946, !4947}
!4888 = !DILocalVariable(name: "cp", scope: !4886, file: !660, line: 126, type: !44)
!4889 = !DILocalVariable(name: "dir", scope: !4884, file: !660, line: 132, type: !44)
!4890 = !DILocalVariable(name: "base", scope: !4884, file: !660, line: 133, type: !44)
!4891 = !DILocalVariable(name: "file_name", scope: !4884, file: !660, line: 134, type: !47)
!4892 = !DILocalVariable(name: "dir_len", scope: !4893, file: !660, line: 144, type: !36)
!4893 = distinct !DILexicalBlock(scope: !4884, file: !660, line: 143, column: 7)
!4894 = !DILocalVariable(name: "base_len", scope: !4893, file: !660, line: 145, type: !36)
!4895 = !DILocalVariable(name: "add_slash", scope: !4893, file: !660, line: 146, type: !49)
!4896 = !DILocalVariable(name: "fd", scope: !4882, file: !660, line: 162, type: !49)
!4897 = !DILocalVariable(name: "fp", scope: !4880, file: !660, line: 178, type: !4898)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !219, line: 49, baseType: !4900)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !221, line: 241, size: 1728, elements: !4901)
!4901 = !{!4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4900, file: !221, line: 242, baseType: !49, size: 32)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4900, file: !221, line: 247, baseType: !47, size: 64, offset: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4900, file: !221, line: 248, baseType: !47, size: 64, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4900, file: !221, line: 249, baseType: !47, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4900, file: !221, line: 250, baseType: !47, size: 64, offset: 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4900, file: !221, line: 251, baseType: !47, size: 64, offset: 320)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4900, file: !221, line: 252, baseType: !47, size: 64, offset: 384)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4900, file: !221, line: 253, baseType: !47, size: 64, offset: 448)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4900, file: !221, line: 254, baseType: !47, size: 64, offset: 512)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4900, file: !221, line: 256, baseType: !47, size: 64, offset: 576)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4900, file: !221, line: 257, baseType: !47, size: 64, offset: 640)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4900, file: !221, line: 258, baseType: !47, size: 64, offset: 704)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4900, file: !221, line: 260, baseType: !4915, size: 64, offset: 768)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !221, line: 156, size: 192, elements: !4917)
!4917 = !{!4918, !4919, !4921}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4916, file: !221, line: 157, baseType: !4915, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4916, file: !221, line: 158, baseType: !4920, size: 64, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4916, file: !221, line: 162, baseType: !49, size: 32, offset: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4900, file: !221, line: 262, baseType: !4920, size: 64, offset: 832)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4900, file: !221, line: 264, baseType: !49, size: 32, offset: 896)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4900, file: !221, line: 268, baseType: !49, size: 32, offset: 928)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4900, file: !221, line: 270, baseType: !247, size: 64, offset: 960)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4900, file: !221, line: 274, baseType: !50, size: 16, offset: 1024)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4900, file: !221, line: 275, baseType: !251, size: 8, offset: 1040)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4900, file: !221, line: 276, baseType: !253, size: 8, offset: 1048)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4900, file: !221, line: 280, baseType: !257, size: 64, offset: 1088)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4900, file: !221, line: 289, baseType: !260, size: 64, offset: 1152)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4900, file: !221, line: 297, baseType: !35, size: 64, offset: 1216)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4900, file: !221, line: 298, baseType: !35, size: 64, offset: 1280)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4900, file: !221, line: 299, baseType: !35, size: 64, offset: 1344)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4900, file: !221, line: 300, baseType: !35, size: 64, offset: 1408)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4900, file: !221, line: 302, baseType: !36, size: 64, offset: 1472)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4900, file: !221, line: 303, baseType: !49, size: 32, offset: 1536)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4900, file: !221, line: 305, baseType: !268, size: 160, offset: 1568)
!4938 = !DILocalVariable(name: "res_ptr", scope: !4878, file: !660, line: 190, type: !47)
!4939 = !DILocalVariable(name: "res_size", scope: !4878, file: !660, line: 191, type: !36)
!4940 = !DILocalVariable(name: "c", scope: !4875, file: !660, line: 195, type: !49)
!4941 = !DILocalVariable(name: "buf2", scope: !4875, file: !660, line: 197, type: !4942)
!4942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 408, elements: !4943)
!4943 = !{!4944}
!4944 = !DISubrange(count: 51)
!4945 = !DILocalVariable(name: "l1", scope: !4875, file: !660, line: 198, type: !36)
!4946 = !DILocalVariable(name: "l2", scope: !4875, file: !660, line: 198, type: !36)
!4947 = !DILocalVariable(name: "old_res_ptr", scope: !4875, file: !660, line: 199, type: !47)
!4948 = !DILocation(line: 196, column: 28, scope: !4875, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 589, column: 18, scope: !4872)
!4950 = !DILocation(line: 197, column: 28, scope: !4875, inlinedAt: !4949)
!4951 = !DILocation(line: 403, column: 13, scope: !4862)
!4952 = !DILocation(line: 395, column: 15, scope: !4862)
!4953 = !DILocation(line: 584, column: 15, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4862, file: !660, line: 584, column: 7)
!4955 = !DILocation(line: 584, column: 7, scope: !4862)
!4956 = !DILocation(line: 128, column: 8, scope: !4886, inlinedAt: !4949)
!4957 = !DILocation(line: 126, column: 15, scope: !4886, inlinedAt: !4949)
!4958 = !DILocation(line: 129, column: 10, scope: !4885, inlinedAt: !4949)
!4959 = !DILocation(line: 129, column: 7, scope: !4886, inlinedAt: !4949)
!4960 = !DILocation(line: 138, column: 13, scope: !4884, inlinedAt: !4949)
!4961 = !DILocation(line: 132, column: 19, scope: !4884, inlinedAt: !4949)
!4962 = !DILocation(line: 139, column: 15, scope: !4963, inlinedAt: !4949)
!4963 = distinct !DILexicalBlock(scope: !4884, file: !660, line: 139, column: 11)
!4964 = !DILocation(line: 139, column: 23, scope: !4963, inlinedAt: !4949)
!4965 = !DILocation(line: 139, column: 26, scope: !4966, inlinedAt: !4949)
!4966 = !DILexicalBlockFile(scope: !4963, file: !660, discriminator: 1)
!4967 = !DILocation(line: 139, column: 33, scope: !4966, inlinedAt: !4949)
!4968 = !DILocation(line: 139, column: 11, scope: !4969, inlinedAt: !4949)
!4969 = !DILexicalBlockFile(scope: !4884, file: !660, discriminator: 1)
!4970 = !DILocation(line: 140, column: 9, scope: !4963, inlinedAt: !4949)
!4971 = !DILocation(line: 144, column: 26, scope: !4893, inlinedAt: !4949)
!4972 = !DILocation(line: 144, column: 16, scope: !4893, inlinedAt: !4949)
!4973 = !DILocation(line: 145, column: 16, scope: !4893, inlinedAt: !4949)
!4974 = !DILocation(line: 146, column: 34, scope: !4893, inlinedAt: !4949)
!4975 = !DILocation(line: 146, column: 38, scope: !4893, inlinedAt: !4949)
!4976 = !DILocation(line: 146, column: 42, scope: !4977, inlinedAt: !4949)
!4977 = !DILexicalBlockFile(scope: !4893, file: !660, discriminator: 1)
!4978 = !DILocation(line: 146, column: 41, scope: !4977, inlinedAt: !4949)
!4979 = !DILocation(line: 147, column: 48, scope: !4893, inlinedAt: !4949)
!4980 = !DILocation(line: 147, column: 46, scope: !4893, inlinedAt: !4949)
!4981 = !DILocation(line: 147, column: 69, scope: !4893, inlinedAt: !4949)
!4982 = !DILocation(line: 147, column: 30, scope: !4893, inlinedAt: !4949)
!4983 = !DILocation(line: 134, column: 13, scope: !4884, inlinedAt: !4949)
!4984 = !DILocation(line: 148, column: 13, scope: !4893, inlinedAt: !4949)
!4985 = !DILocation(line: 150, column: 13, scope: !4986, inlinedAt: !4949)
!4986 = distinct !DILexicalBlock(scope: !4987, file: !660, line: 149, column: 11)
!4987 = distinct !DILexicalBlock(scope: !4893, file: !660, line: 148, column: 13)
!4988 = !DILocation(line: 151, column: 17, scope: !4986, inlinedAt: !4949)
!4989 = !DILocation(line: 152, column: 34, scope: !4990, inlinedAt: !4949)
!4990 = distinct !DILexicalBlock(scope: !4986, file: !660, line: 151, column: 17)
!4991 = !DILocation(line: 153, column: 41, scope: !4986, inlinedAt: !4949)
!4992 = !DILocation(line: 153, column: 13, scope: !4986, inlinedAt: !4949)
!4993 = !DILocation(line: 157, column: 11, scope: !4884, inlinedAt: !4949)
!4994 = !DILocation(line: 171, column: 16, scope: !4882, inlinedAt: !4949)
!4995 = !DILocation(line: 162, column: 15, scope: !4882, inlinedAt: !4949)
!4996 = !DILocation(line: 173, column: 18, scope: !4881, inlinedAt: !4949)
!4997 = !DILocation(line: 173, column: 15, scope: !4882, inlinedAt: !4949)
!4998 = !DILocation(line: 180, column: 20, scope: !4880, inlinedAt: !4949)
!4999 = !DILocation(line: 178, column: 21, scope: !4880, inlinedAt: !4949)
!5000 = !DILocation(line: 181, column: 22, scope: !4879, inlinedAt: !4949)
!5001 = !DILocation(line: 181, column: 19, scope: !4880, inlinedAt: !4949)
!5002 = !DILocation(line: 190, column: 25, scope: !4878, inlinedAt: !4949)
!5003 = !DILocation(line: 184, column: 19, scope: !5004, inlinedAt: !4949)
!5004 = distinct !DILexicalBlock(scope: !4879, file: !660, line: 182, column: 17)
!5005 = !DILocation(line: 186, column: 17, scope: !5004, inlinedAt: !4949)
!5006 = !DILocation(line: 191, column: 26, scope: !4878, inlinedAt: !4949)
!5007 = !DILocation(line: 196, column: 23, scope: !4875, inlinedAt: !4949)
!5008 = !DILocation(line: 197, column: 23, scope: !4875, inlinedAt: !4949)
!5009 = !DILocalVariable(name: "__fp", arg: 1, scope: !5010, file: !951, line: 63, type: !4898)
!5010 = distinct !DISubprogram(name: "getc_unlocked", scope: !951, file: !951, line: 63, type: !5011, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !317, variables: !5013)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!49, !4898}
!5013 = !{!5009}
!5014 = !DILocation(line: 63, column: 22, scope: !5010, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 201, column: 27, scope: !4875, inlinedAt: !4949)
!5016 = !DILocation(line: 65, column: 10, scope: !5010, inlinedAt: !5015)
!5017 = !{!960, !728, i64 8}
!5018 = !{!960, !728, i64 16}
!5019 = !DILocation(line: 65, column: 10, scope: !5020, inlinedAt: !5015)
!5020 = !DILexicalBlockFile(scope: !5010, file: !951, discriminator: 1)
!5021 = !DILocation(line: 65, column: 10, scope: !5022, inlinedAt: !5015)
!5022 = !DILexicalBlockFile(scope: !5010, file: !951, discriminator: 2)
!5023 = !DILocation(line: 65, column: 10, scope: !5024, inlinedAt: !5015)
!5024 = !DILexicalBlockFile(scope: !5010, file: !951, discriminator: 3)
!5025 = !DILocation(line: 195, column: 27, scope: !4875, inlinedAt: !4949)
!5026 = !DILocation(line: 202, column: 27, scope: !4875, inlinedAt: !4949)
!5027 = !DILocation(line: 63, column: 22, scope: !5010, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 210, column: 33, scope: !5029, inlinedAt: !4949)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !660, line: 207, column: 25)
!5030 = distinct !DILexicalBlock(scope: !4875, file: !660, line: 206, column: 27)
!5031 = !DILocation(line: 65, column: 10, scope: !5010, inlinedAt: !5028)
!5032 = !DILocation(line: 65, column: 10, scope: !5020, inlinedAt: !5028)
!5033 = !DILocation(line: 65, column: 10, scope: !5022, inlinedAt: !5028)
!5034 = !DILocation(line: 65, column: 10, scope: !5024, inlinedAt: !5028)
!5035 = !DILocation(line: 210, column: 29, scope: !5036, inlinedAt: !4949)
!5036 = !DILexicalBlockFile(scope: !5029, file: !660, discriminator: 1)
!5037 = distinct !{!5037, !5038, !5039}
!5038 = !DILocation(line: 193, column: 19, scope: !4877)
!5039 = !DILocation(line: 241, column: 21, scope: !4877)
!5040 = !DILocation(line: 216, column: 23, scope: !4875, inlinedAt: !4949)
!5041 = !DILocation(line: 217, column: 27, scope: !5042, inlinedAt: !4949)
!5042 = distinct !DILexicalBlock(scope: !4875, file: !660, line: 217, column: 27)
!5043 = !DILocation(line: 217, column: 64, scope: !5042, inlinedAt: !4949)
!5044 = !DILocation(line: 217, column: 27, scope: !4875, inlinedAt: !4949)
!5045 = !DILocation(line: 219, column: 28, scope: !4875, inlinedAt: !4949)
!5046 = !DILocation(line: 198, column: 30, scope: !4875, inlinedAt: !4949)
!5047 = !DILocation(line: 220, column: 28, scope: !4875, inlinedAt: !4949)
!5048 = !DILocation(line: 198, column: 34, scope: !4875, inlinedAt: !4949)
!5049 = !DILocation(line: 199, column: 29, scope: !4875, inlinedAt: !4949)
!5050 = !DILocation(line: 222, column: 36, scope: !5051, inlinedAt: !4949)
!5051 = distinct !DILexicalBlock(scope: !4875, file: !660, line: 222, column: 27)
!5052 = !DILocation(line: 222, column: 27, scope: !4875, inlinedAt: !4949)
!5053 = !DILocation(line: 225, column: 63, scope: !5054, inlinedAt: !4949)
!5054 = distinct !DILexicalBlock(scope: !5051, file: !660, line: 223, column: 25)
!5055 = !DILocation(line: 225, column: 46, scope: !5054, inlinedAt: !4949)
!5056 = !DILocation(line: 226, column: 25, scope: !5054, inlinedAt: !4949)
!5057 = !DILocation(line: 229, column: 36, scope: !5058, inlinedAt: !4949)
!5058 = distinct !DILexicalBlock(scope: !5051, file: !660, line: 228, column: 25)
!5059 = !DILocation(line: 230, column: 73, scope: !5058, inlinedAt: !4949)
!5060 = !DILocation(line: 230, column: 46, scope: !5058, inlinedAt: !4949)
!5061 = !DILocation(line: 232, column: 35, scope: !5062, inlinedAt: !4949)
!5062 = distinct !DILexicalBlock(scope: !4875, file: !660, line: 232, column: 27)
!5063 = !DILocation(line: 232, column: 27, scope: !4875, inlinedAt: !4949)
!5064 = !DILocation(line: 236, column: 27, scope: !5065, inlinedAt: !4949)
!5065 = distinct !DILexicalBlock(scope: !5062, file: !660, line: 233, column: 25)
!5066 = !DILocation(line: 237, column: 27, scope: !5065, inlinedAt: !4949)
!5067 = !DILocation(line: 239, column: 39, scope: !4875, inlinedAt: !4949)
!5068 = !DILocation(line: 239, column: 50, scope: !4875, inlinedAt: !4949)
!5069 = !DILocation(line: 239, column: 61, scope: !4875, inlinedAt: !4949)
!5070 = !DILocalVariable(name: "__dest", arg: 1, scope: !5071, file: !1207, line: 107, type: !5074)
!5071 = distinct !DISubprogram(name: "strcpy", scope: !1207, file: !1207, line: 107, type: !5072, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !317, variables: !5075)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!47, !5074, !1281}
!5074 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!5075 = !{!5070, !5076}
!5076 = !DILocalVariable(name: "__src", arg: 2, scope: !5071, file: !1207, line: 107, type: !1281)
!5077 = !DILocation(line: 107, column: 1, scope: !5071, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 239, column: 23, scope: !4875, inlinedAt: !4949)
!5079 = !DILocation(line: 109, column: 49, scope: !5071, inlinedAt: !5078)
!5080 = !DILocation(line: 109, column: 10, scope: !5071, inlinedAt: !5078)
!5081 = !DILocation(line: 107, column: 1, scope: !5071, inlinedAt: !5082)
!5082 = distinct !DILocation(line: 240, column: 23, scope: !4875, inlinedAt: !4949)
!5083 = !DILocation(line: 109, column: 49, scope: !5071, inlinedAt: !5082)
!5084 = !DILocation(line: 109, column: 10, scope: !5071, inlinedAt: !5082)
!5085 = !DILocation(line: 241, column: 21, scope: !4876, inlinedAt: !4949)
!5086 = !DILocation(line: 242, column: 19, scope: !4878, inlinedAt: !4949)
!5087 = !DILocation(line: 243, column: 32, scope: !5088, inlinedAt: !4949)
!5088 = distinct !DILexicalBlock(scope: !4878, file: !660, line: 243, column: 23)
!5089 = !DILocation(line: 243, column: 23, scope: !4878, inlinedAt: !4949)
!5090 = !DILocation(line: 247, column: 33, scope: !5091, inlinedAt: !4949)
!5091 = distinct !DILexicalBlock(scope: !5088, file: !660, line: 246, column: 21)
!5092 = !DILocation(line: 247, column: 45, scope: !5091, inlinedAt: !4949)
!5093 = !DILocation(line: 253, column: 11, scope: !4882, inlinedAt: !4949)
!5094 = !DILocation(line: 377, column: 23, scope: !4884, inlinedAt: !4949)
!5095 = !DILocation(line: 378, column: 5, scope: !4884, inlinedAt: !4949)
!5096 = !DILocation(line: 396, column: 15, scope: !4862)
!5097 = !DILocation(line: 590, column: 8, scope: !4871)
!5098 = !DILocation(line: 590, column: 17, scope: !4871)
!5099 = !DILocation(line: 589, column: 3, scope: !5100)
!5100 = !DILexicalBlockFile(scope: !4872, file: !660, discriminator: 1)
!5101 = !DILocation(line: 592, column: 9, scope: !4869)
!5102 = !DILocation(line: 592, column: 35, scope: !4870)
!5103 = !DILocation(line: 593, column: 9, scope: !4870)
!5104 = !DILocation(line: 593, column: 24, scope: !5105)
!5105 = !DILexicalBlockFile(scope: !4870, file: !660, discriminator: 1)
!5106 = !DILocation(line: 593, column: 31, scope: !5105)
!5107 = !DILocation(line: 593, column: 34, scope: !5108)
!5108 = !DILexicalBlockFile(scope: !4870, file: !660, discriminator: 2)
!5109 = !DILocation(line: 593, column: 45, scope: !5108)
!5110 = !DILocation(line: 592, column: 9, scope: !5111)
!5111 = !DILexicalBlockFile(scope: !4871, file: !660, discriminator: 1)
!5112 = !DILocation(line: 595, column: 29, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !4870, file: !660, line: 594, column: 7)
!5114 = !DILocation(line: 595, column: 27, scope: !5113)
!5115 = !DILocation(line: 595, column: 46, scope: !5113)
!5116 = !DILocation(line: 596, column: 9, scope: !5113)
!5117 = !DILocation(line: 591, column: 19, scope: !4871)
!5118 = !DILocation(line: 591, column: 36, scope: !4871)
!5119 = !DILocation(line: 591, column: 16, scope: !4871)
!5120 = !DILocation(line: 591, column: 52, scope: !5111)
!5121 = !DILocation(line: 591, column: 69, scope: !4871)
!5122 = !DILocation(line: 591, column: 49, scope: !4871)
!5123 = distinct !{!5123, !5124, !5125}
!5124 = !DILocation(line: 589, column: 3, scope: !4872)
!5125 = !DILocation(line: 597, column: 7, scope: !4872)
!5126 = !DILocation(line: 602, column: 7, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !4862, file: !660, line: 602, column: 7)
!5128 = !DILocation(line: 602, column: 18, scope: !5127)
!5129 = !DILocation(line: 602, column: 7, scope: !4862)
!5130 = !DILocation(line: 612, column: 3, scope: !4862)
!5131 = distinct !DISubprogram(name: "rpl_fclose", scope: !5132, file: !5132, line: 56, type: !5133, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !703, variables: !5175)
!5132 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!49, !5135}
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !219, line: 49, baseType: !5137)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !221, line: 241, size: 1728, elements: !5138)
!5138 = !{!5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5137, file: !221, line: 242, baseType: !49, size: 32)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5137, file: !221, line: 247, baseType: !47, size: 64, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5137, file: !221, line: 248, baseType: !47, size: 64, offset: 128)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5137, file: !221, line: 249, baseType: !47, size: 64, offset: 192)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5137, file: !221, line: 250, baseType: !47, size: 64, offset: 256)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5137, file: !221, line: 251, baseType: !47, size: 64, offset: 320)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5137, file: !221, line: 252, baseType: !47, size: 64, offset: 384)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5137, file: !221, line: 253, baseType: !47, size: 64, offset: 448)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5137, file: !221, line: 254, baseType: !47, size: 64, offset: 512)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5137, file: !221, line: 256, baseType: !47, size: 64, offset: 576)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5137, file: !221, line: 257, baseType: !47, size: 64, offset: 640)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5137, file: !221, line: 258, baseType: !47, size: 64, offset: 704)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5137, file: !221, line: 260, baseType: !5152, size: 64, offset: 768)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !221, line: 156, size: 192, elements: !5154)
!5154 = !{!5155, !5156, !5158}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5153, file: !221, line: 157, baseType: !5152, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5153, file: !221, line: 158, baseType: !5157, size: 64, offset: 64)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5153, file: !221, line: 162, baseType: !49, size: 32, offset: 128)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5137, file: !221, line: 262, baseType: !5157, size: 64, offset: 832)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5137, file: !221, line: 264, baseType: !49, size: 32, offset: 896)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5137, file: !221, line: 268, baseType: !49, size: 32, offset: 928)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5137, file: !221, line: 270, baseType: !247, size: 64, offset: 960)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5137, file: !221, line: 274, baseType: !50, size: 16, offset: 1024)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5137, file: !221, line: 275, baseType: !251, size: 8, offset: 1040)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5137, file: !221, line: 276, baseType: !253, size: 8, offset: 1048)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5137, file: !221, line: 280, baseType: !257, size: 64, offset: 1088)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5137, file: !221, line: 289, baseType: !260, size: 64, offset: 1152)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5137, file: !221, line: 297, baseType: !35, size: 64, offset: 1216)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5137, file: !221, line: 298, baseType: !35, size: 64, offset: 1280)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5137, file: !221, line: 299, baseType: !35, size: 64, offset: 1344)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5137, file: !221, line: 300, baseType: !35, size: 64, offset: 1408)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5137, file: !221, line: 302, baseType: !36, size: 64, offset: 1472)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5137, file: !221, line: 303, baseType: !49, size: 32, offset: 1536)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5137, file: !221, line: 305, baseType: !268, size: 160, offset: 1568)
!5175 = !{!5176, !5177, !5178, !5179}
!5176 = !DILocalVariable(name: "fp", arg: 1, scope: !5131, file: !5132, line: 56, type: !5135)
!5177 = !DILocalVariable(name: "saved_errno", scope: !5131, file: !5132, line: 58, type: !49)
!5178 = !DILocalVariable(name: "fd", scope: !5131, file: !5132, line: 59, type: !49)
!5179 = !DILocalVariable(name: "result", scope: !5131, file: !5132, line: 60, type: !49)
!5180 = !DILocation(line: 56, column: 19, scope: !5131)
!5181 = !DILocation(line: 58, column: 7, scope: !5131)
!5182 = !DILocation(line: 60, column: 7, scope: !5131)
!5183 = !DILocation(line: 63, column: 8, scope: !5131)
!5184 = !DILocation(line: 59, column: 7, scope: !5131)
!5185 = !DILocation(line: 64, column: 10, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5131, file: !5132, line: 64, column: 7)
!5187 = !DILocation(line: 64, column: 7, scope: !5131)
!5188 = !DILocation(line: 65, column: 12, scope: !5186)
!5189 = !DILocation(line: 65, column: 5, scope: !5186)
!5190 = !DILocation(line: 70, column: 9, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5131, file: !5132, line: 70, column: 7)
!5192 = !DILocation(line: 70, column: 23, scope: !5191)
!5193 = !DILocation(line: 70, column: 33, scope: !5194)
!5194 = !DILexicalBlockFile(scope: !5191, file: !5132, discriminator: 1)
!5195 = !DILocation(line: 70, column: 26, scope: !5196)
!5196 = !DILexicalBlockFile(scope: !5191, file: !5132, discriminator: 3)
!5197 = !DILocation(line: 70, column: 59, scope: !5194)
!5198 = !DILocation(line: 71, column: 7, scope: !5191)
!5199 = !DILocation(line: 71, column: 10, scope: !5194)
!5200 = !DILocation(line: 70, column: 7, scope: !5201)
!5201 = !DILexicalBlockFile(scope: !5131, file: !5132, discriminator: 2)
!5202 = !DILocation(line: 98, column: 12, scope: !5131)
!5203 = !DILocation(line: 103, column: 7, scope: !5131)
!5204 = !DILocation(line: 72, column: 19, scope: !5191)
!5205 = !DILocation(line: 103, column: 19, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5131, file: !5132, line: 103, column: 7)
!5207 = !DILocation(line: 105, column: 13, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5206, file: !5132, line: 104, column: 5)
!5209 = !DILocation(line: 107, column: 5, scope: !5208)
!5210 = !DILocation(line: 110, column: 1, scope: !5131)
!5211 = distinct !DISubprogram(name: "rpl_fflush", scope: !5212, file: !5212, line: 127, type: !5213, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !5255)
!5212 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!49, !5215}
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !219, line: 49, baseType: !5217)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !221, line: 241, size: 1728, elements: !5218)
!5218 = !{!5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5217, file: !221, line: 242, baseType: !49, size: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5217, file: !221, line: 247, baseType: !47, size: 64, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5217, file: !221, line: 248, baseType: !47, size: 64, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5217, file: !221, line: 249, baseType: !47, size: 64, offset: 192)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5217, file: !221, line: 250, baseType: !47, size: 64, offset: 256)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5217, file: !221, line: 251, baseType: !47, size: 64, offset: 320)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5217, file: !221, line: 252, baseType: !47, size: 64, offset: 384)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5217, file: !221, line: 253, baseType: !47, size: 64, offset: 448)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5217, file: !221, line: 254, baseType: !47, size: 64, offset: 512)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5217, file: !221, line: 256, baseType: !47, size: 64, offset: 576)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5217, file: !221, line: 257, baseType: !47, size: 64, offset: 640)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5217, file: !221, line: 258, baseType: !47, size: 64, offset: 704)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5217, file: !221, line: 260, baseType: !5232, size: 64, offset: 768)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !221, line: 156, size: 192, elements: !5234)
!5234 = !{!5235, !5236, !5238}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5233, file: !221, line: 157, baseType: !5232, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5233, file: !221, line: 158, baseType: !5237, size: 64, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5233, file: !221, line: 162, baseType: !49, size: 32, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5217, file: !221, line: 262, baseType: !5237, size: 64, offset: 832)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5217, file: !221, line: 264, baseType: !49, size: 32, offset: 896)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5217, file: !221, line: 268, baseType: !49, size: 32, offset: 928)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5217, file: !221, line: 270, baseType: !247, size: 64, offset: 960)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5217, file: !221, line: 274, baseType: !50, size: 16, offset: 1024)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5217, file: !221, line: 275, baseType: !251, size: 8, offset: 1040)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5217, file: !221, line: 276, baseType: !253, size: 8, offset: 1048)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5217, file: !221, line: 280, baseType: !257, size: 64, offset: 1088)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5217, file: !221, line: 289, baseType: !260, size: 64, offset: 1152)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5217, file: !221, line: 297, baseType: !35, size: 64, offset: 1216)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5217, file: !221, line: 298, baseType: !35, size: 64, offset: 1280)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5217, file: !221, line: 299, baseType: !35, size: 64, offset: 1344)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5217, file: !221, line: 300, baseType: !35, size: 64, offset: 1408)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5217, file: !221, line: 302, baseType: !36, size: 64, offset: 1472)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5217, file: !221, line: 303, baseType: !49, size: 32, offset: 1536)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5217, file: !221, line: 305, baseType: !268, size: 160, offset: 1568)
!5255 = !{!5256}
!5256 = !DILocalVariable(name: "stream", arg: 1, scope: !5211, file: !5212, line: 127, type: !5215)
!5257 = !DILocation(line: 127, column: 19, scope: !5211)
!5258 = !DILocation(line: 148, column: 14, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5211, file: !5212, line: 148, column: 7)
!5260 = !DILocation(line: 148, column: 22, scope: !5259)
!5261 = !DILocation(line: 148, column: 27, scope: !5262)
!5262 = !DILexicalBlockFile(scope: !5259, file: !5212, discriminator: 1)
!5263 = !DILocation(line: 148, column: 7, scope: !5264)
!5264 = !DILexicalBlockFile(scope: !5211, file: !5212, discriminator: 1)
!5265 = !DILocation(line: 149, column: 12, scope: !5259)
!5266 = !DILocation(line: 149, column: 5, scope: !5259)
!5267 = !DILocalVariable(name: "fp", arg: 1, scope: !5268, file: !5212, line: 40, type: !5215)
!5268 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5212, file: !5212, line: 40, type: !5269, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !5215}
!5271 = !{!5267}
!5272 = !DILocation(line: 40, column: 48, scope: !5268, inlinedAt: !5273)
!5273 = distinct !DILocation(line: 153, column: 3, scope: !5211)
!5274 = !DILocation(line: 42, column: 11, scope: !5275, inlinedAt: !5273)
!5275 = distinct !DILexicalBlock(scope: !5268, file: !5212, line: 42, column: 7)
!5276 = !DILocation(line: 42, column: 18, scope: !5275, inlinedAt: !5273)
!5277 = !DILocation(line: 42, column: 7, scope: !5268, inlinedAt: !5273)
!5278 = !DILocation(line: 44, column: 5, scope: !5275, inlinedAt: !5273)
!5279 = !DILocation(line: 155, column: 10, scope: !5211)
!5280 = !DILocation(line: 155, column: 3, scope: !5211)
!5281 = !DILocation(line: 229, column: 1, scope: !5211)
!5282 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5283, file: !5283, line: 28, type: !5284, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !5327)
!5283 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!49, !5286, !5326, !49}
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !219, line: 49, baseType: !5288)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !221, line: 241, size: 1728, elements: !5289)
!5289 = !{!5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5288, file: !221, line: 242, baseType: !49, size: 32)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5288, file: !221, line: 247, baseType: !47, size: 64, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5288, file: !221, line: 248, baseType: !47, size: 64, offset: 128)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5288, file: !221, line: 249, baseType: !47, size: 64, offset: 192)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5288, file: !221, line: 250, baseType: !47, size: 64, offset: 256)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5288, file: !221, line: 251, baseType: !47, size: 64, offset: 320)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5288, file: !221, line: 252, baseType: !47, size: 64, offset: 384)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5288, file: !221, line: 253, baseType: !47, size: 64, offset: 448)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5288, file: !221, line: 254, baseType: !47, size: 64, offset: 512)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5288, file: !221, line: 256, baseType: !47, size: 64, offset: 576)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5288, file: !221, line: 257, baseType: !47, size: 64, offset: 640)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5288, file: !221, line: 258, baseType: !47, size: 64, offset: 704)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5288, file: !221, line: 260, baseType: !5303, size: 64, offset: 768)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !221, line: 156, size: 192, elements: !5305)
!5305 = !{!5306, !5307, !5309}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5304, file: !221, line: 157, baseType: !5303, size: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5304, file: !221, line: 158, baseType: !5308, size: 64, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5304, file: !221, line: 162, baseType: !49, size: 32, offset: 128)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5288, file: !221, line: 262, baseType: !5308, size: 64, offset: 832)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5288, file: !221, line: 264, baseType: !49, size: 32, offset: 896)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5288, file: !221, line: 268, baseType: !49, size: 32, offset: 928)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5288, file: !221, line: 270, baseType: !247, size: 64, offset: 960)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5288, file: !221, line: 274, baseType: !50, size: 16, offset: 1024)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5288, file: !221, line: 275, baseType: !251, size: 8, offset: 1040)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5288, file: !221, line: 276, baseType: !253, size: 8, offset: 1048)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5288, file: !221, line: 280, baseType: !257, size: 64, offset: 1088)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5288, file: !221, line: 289, baseType: !260, size: 64, offset: 1152)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5288, file: !221, line: 297, baseType: !35, size: 64, offset: 1216)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5288, file: !221, line: 298, baseType: !35, size: 64, offset: 1280)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5288, file: !221, line: 299, baseType: !35, size: 64, offset: 1344)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5288, file: !221, line: 300, baseType: !35, size: 64, offset: 1408)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5288, file: !221, line: 302, baseType: !36, size: 64, offset: 1472)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5288, file: !221, line: 303, baseType: !49, size: 32, offset: 1536)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5288, file: !221, line: 305, baseType: !268, size: 160, offset: 1568)
!5326 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !219, line: 91, baseType: !247)
!5327 = !{!5328, !5329, !5330, !5331}
!5328 = !DILocalVariable(name: "fp", arg: 1, scope: !5282, file: !5283, line: 28, type: !5286)
!5329 = !DILocalVariable(name: "offset", arg: 2, scope: !5282, file: !5283, line: 28, type: !5326)
!5330 = !DILocalVariable(name: "whence", arg: 3, scope: !5282, file: !5283, line: 28, type: !49)
!5331 = !DILocalVariable(name: "pos", scope: !5332, file: !5283, line: 116, type: !5326)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !5283, line: 112, column: 5)
!5333 = distinct !DILexicalBlock(scope: !5282, file: !5283, line: 51, column: 7)
!5334 = !DILocation(line: 28, column: 15, scope: !5282)
!5335 = !DILocation(line: 28, column: 25, scope: !5282)
!5336 = !DILocation(line: 28, column: 37, scope: !5282)
!5337 = !DILocation(line: 51, column: 11, scope: !5333)
!5338 = !DILocation(line: 51, column: 31, scope: !5333)
!5339 = !DILocation(line: 51, column: 24, scope: !5333)
!5340 = !DILocation(line: 52, column: 7, scope: !5333)
!5341 = !DILocation(line: 52, column: 14, scope: !5342)
!5342 = !DILexicalBlockFile(scope: !5333, file: !5283, discriminator: 1)
!5343 = !DILocation(line: 52, column: 35, scope: !5342)
!5344 = !{!960, !728, i64 32}
!5345 = !DILocation(line: 52, column: 28, scope: !5342)
!5346 = !DILocation(line: 53, column: 7, scope: !5333)
!5347 = !DILocation(line: 53, column: 14, scope: !5342)
!5348 = !{!960, !728, i64 72}
!5349 = !DILocation(line: 53, column: 28, scope: !5342)
!5350 = !DILocation(line: 51, column: 7, scope: !5351)
!5351 = !DILexicalBlockFile(scope: !5282, file: !5283, discriminator: 1)
!5352 = !DILocation(line: 116, column: 26, scope: !5332)
!5353 = !DILocation(line: 116, column: 19, scope: !5354)
!5354 = !DILexicalBlockFile(scope: !5332, file: !5283, discriminator: 1)
!5355 = !DILocation(line: 116, column: 13, scope: !5332)
!5356 = !DILocation(line: 117, column: 15, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5332, file: !5283, line: 117, column: 11)
!5358 = !DILocation(line: 117, column: 11, scope: !5332)
!5359 = !DILocation(line: 127, column: 11, scope: !5332)
!5360 = !DILocation(line: 127, column: 18, scope: !5332)
!5361 = !DILocation(line: 128, column: 11, scope: !5332)
!5362 = !DILocation(line: 128, column: 19, scope: !5332)
!5363 = !{!960, !962, i64 144}
!5364 = !DILocation(line: 159, column: 7, scope: !5332)
!5365 = !DILocation(line: 161, column: 10, scope: !5282)
!5366 = !DILocation(line: 161, column: 3, scope: !5282)
!5367 = !DILocation(line: 162, column: 1, scope: !5282)
