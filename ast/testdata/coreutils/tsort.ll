; ModuleID = 'coreutils-8.27/src/tsort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.item = type { i8*, %struct.item*, %struct.item*, i32, i64, %struct.item*, %struct.successor* }
%struct.successor = type { %struct.item*, %struct.successor* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.tokenbuffer = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Usage: %s [OPTION] [FILE]\0AWrite totally ordered list consistent with the partial ordering in FILE.\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"tsort\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Mark Kettenis\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"src/tsort.c\00", align 1
@__PRETTY_FUNCTION__.tsort = private unnamed_addr constant [26 x i8] c"_Bool tsort(const char *)\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@__PRETTY_FUNCTION__.search_item = private unnamed_addr constant [54 x i8] c"struct item *search_item(struct item *, const char *)\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"!STREQ (str, s->str)\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"!STREQ (str, p->str)\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"%s: input contains an odd number of tokens\00", align 1
@n_strings = internal unnamed_addr global i64 0, align 8, !dbg !0
@head = internal unnamed_addr global %struct.item* null, align 8, !dbg !73
@zeros = internal unnamed_addr global %struct.item* null, align 8, !dbg !90
@.str.35 = private unnamed_addr constant [27 x i8] c"%s: input contains a loop:\00", align 1
@loop = internal unnamed_addr global %struct.item* null, align 8, !dbg !92
@.str.36 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), align 8, !dbg !94
@.str.13 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !100
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !105
@.str.16 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.17 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !109
@.str.40 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.44, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.45, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !116
@.str.1.44 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.45 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !134
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !142
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !170
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !177
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !190
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.tokenbuffer* @slotvec0, align 8, !dbg !197
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !204
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !192
@slotvec0 = internal global %struct.tokenbuffer { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !206
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.96 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !212
@.str.1.109 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !221
@.str.3.132 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.133 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.134 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.135 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.136 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !639 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !643, metadata !644), !dbg !645
  %2 = icmp eq i32 %0, 0, !dbg !646
  br i1 %2, label %8, label %3, !dbg !648

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !649, !tbaa !652
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !649
  %6 = load i8*, i8** @program_name, align 8, !dbg !649, !tbaa !652
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !656
  br label %39, !dbg !658

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !660
  %10 = load i8*, i8** @program_name, align 8, !dbg !660, !tbaa !652
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !662
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !664
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !652
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !669
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !671
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !652
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !672
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !673
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !652
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !674
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !675
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !675, !tbaa !652
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !676
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !50, metadata !644) #10, !dbg !677
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !50, metadata !644) #10, !dbg !677
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !679
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !680
  %26 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !682
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !61, metadata !644) #10, !dbg !683
  %27 = icmp eq i8* %26, null, !dbg !684
  br i1 %27, label %34, label %28, !dbg !685

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #13, !dbg !686
  %30 = icmp eq i32 %29, 0, !dbg !686
  br i1 %30, label %34, label %31, !dbg !688

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !690
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !692
  br label %34, !dbg !694

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !695
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !696
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !697
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !698
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #14, !dbg !699
  unreachable, !dbg !699
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !700 {
  %3 = alloca %struct.tokenbuffer, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !705, metadata !644), !dbg !708
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !706, metadata !644), !dbg !709
  %4 = load i8*, i8** %1, align 8, !dbg !710, !tbaa !652
  tail call void @set_program_name(i8* %4) #10, !dbg !711
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !712
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !713
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !714
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !715
  %9 = load i8*, i8** @Version, align 8, !dbg !716, !tbaa !652
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %9, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !717
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !718
  %11 = icmp eq i32 %10, -1, !dbg !720
  br i1 %11, label %13, label %12, !dbg !721

; <label>:12:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !722
  unreachable, !dbg !722

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* @optind, align 4, !dbg !723, !tbaa !725
  %15 = sub nsw i32 %0, %14, !dbg !727
  %16 = icmp sgt i32 %15, 1, !dbg !728
  br i1 %16, label %17, label %25, !dbg !729

; <label>:17:                                     ; preds = %13
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !730
  %19 = load i32, i32* @optind, align 4, !dbg !732, !tbaa !725
  %20 = add nsw i32 %19, 1, !dbg !733
  %21 = sext i32 %20 to i64, !dbg !734
  %22 = getelementptr inbounds i8*, i8** %1, i64 %21, !dbg !734
  %23 = load i8*, i8** %22, align 8, !dbg !734, !tbaa !652
  %24 = tail call i8* @quote(i8* %23) #10, !dbg !735
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* %24) #10, !dbg !737
  tail call void @usage(i32 1) #15, !dbg !739
  unreachable, !dbg !739

; <label>:25:                                     ; preds = %13
  %26 = icmp eq i32 %14, %0, !dbg !740
  br i1 %26, label %31, label %27, !dbg !741

; <label>:27:                                     ; preds = %25
  %28 = sext i32 %14 to i64, !dbg !742
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !742
  %30 = load i8*, i8** %29, align 8, !dbg !742, !tbaa !652
  br label %31, !dbg !744

; <label>:31:                                     ; preds = %25, %27
  %32 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %25 ], !dbg !745
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !747, metadata !644) #10, !dbg !775
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !752, metadata !644) #10, !dbg !777
  tail call void @llvm.dbg.value(metadata %struct.item* null, i64 0, metadata !754, metadata !644) #10, !dbg !778
  tail call void @llvm.dbg.value(metadata %struct.item* null, i64 0, metadata !755, metadata !644) #10, !dbg !779
  %33 = bitcast %struct.tokenbuffer* %3 to i8*, !dbg !780
  call void @llvm.lifetime.start(i64 16, i8* nonnull %33) #10, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !766, metadata !644) #10, !dbg !781
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !767, metadata !644) #10, !dbg !782
  %34 = load i8, i8* %32, align 1, !dbg !783, !tbaa !785
  %35 = zext i8 %34 to i32, !dbg !783
  %36 = sub nsw i32 45, %35, !dbg !783
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !769, metadata !644) #10, !dbg !782
  %37 = icmp eq i32 %36, 0, !dbg !786
  br i1 %37, label %38, label %43, !dbg !789

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !791
  %40 = load i8, i8* %39, align 1, !dbg !791, !tbaa !785
  %41 = zext i8 %40 to i32, !dbg !791
  %42 = sub nsw i32 0, %41, !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !769, metadata !644) #10, !dbg !782
  br label %43, !dbg !794

; <label>:43:                                     ; preds = %38, %31
  %44 = phi i32 [ %42, %38 ], [ %36, %31 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !769, metadata !644) #10, !dbg !782
  %45 = icmp eq i32 %44, 0, !dbg !797
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !799, metadata !644) #10, !dbg !805
  %46 = tail call noalias i8* @xmalloc(i64 56) #10, !dbg !807
  %47 = bitcast i8* %46 to %struct.item*, !dbg !807
  tail call void @llvm.dbg.value(metadata %struct.item* %47, i64 0, metadata !804, metadata !644) #10, !dbg !808
  %48 = getelementptr inbounds i8, i8* %46, i64 32, !dbg !809
  tail call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 24, i32 8, i1 false) #10, !dbg !810
  tail call void @llvm.dbg.value(metadata %struct.item* %47, i64 0, metadata !753, metadata !644) #10, !dbg !811
  tail call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 28, i32 8, i1 false) #10, !dbg !812
  br i1 %45, label %57, label %49, !dbg !813

; <label>:49:                                     ; preds = %43
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !815, !tbaa !652
  %51 = tail call %struct._IO_FILE* @freopen_safer(i8* nonnull %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %50) #10, !dbg !817
  %52 = icmp eq %struct._IO_FILE* %51, null, !dbg !817
  br i1 %52, label %53, label %57, !dbg !818

; <label>:53:                                     ; preds = %49
  %54 = tail call i32* @__errno_location() #1, !dbg !820
  %55 = load i32, i32* %54, align 4, !dbg !820, !tbaa !725
  %56 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %32) #10, !dbg !821
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %56) #10, !dbg !822
  unreachable, !dbg !820

; <label>:57:                                     ; preds = %49, %43
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !824, !tbaa !652
  tail call void @fadvise(%struct._IO_FILE* %58, i32 2) #10, !dbg !825
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, i64 0, metadata !756, metadata !826) #10, !dbg !827
  call void @init_tokenbuffer(%struct.tokenbuffer* nonnull %3) #10, !dbg !828
  %59 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1
  %60 = icmp eq i8* %46, null
  %61 = getelementptr inbounds i8, i8* %46, i64 16
  %62 = bitcast i8* %61 to %struct.item**
  %63 = bitcast i8* %61 to i8**
  br label %64, !dbg !829

; <label>:64:                                     ; preds = %227, %57
  %65 = phi %struct.item* [ null, %57 ], [ %228, %227 ]
  call void @llvm.dbg.value(metadata %struct.item* %65, i64 0, metadata !754, metadata !644) #10, !dbg !778
  call void @llvm.dbg.value(metadata %struct.item* %65, i64 0, metadata !755, metadata !644) #10, !dbg !779
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !830, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, i64 0, metadata !756, metadata !826) #10, !dbg !827
  %67 = call i64 @readtoken(%struct._IO_FILE* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3, %struct.tokenbuffer* nonnull %3) #10, !dbg !831
  call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !770, metadata !644) #10, !dbg !832
  switch i64 %67, label %69 [
    i64 -1, label %248
    i64 0, label %68
  ], !dbg !833

; <label>:68:                                     ; preds = %64
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 462, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.tsort, i64 0, i64 0)) #14, !dbg !834
  unreachable, !dbg !834

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %59, align 8, !dbg !838, !tbaa !839
  call void @llvm.dbg.value(metadata %struct.item* %47, i64 0, metadata !842, metadata !644) #10, !dbg !879
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !847, metadata !644) #10, !dbg !881
  br i1 %60, label %71, label %72, !dbg !882

; <label>:71:                                     ; preds = %69
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 133, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #14, !dbg !884
  unreachable, !dbg !884

; <label>:72:                                     ; preds = %69
  %73 = load %struct.item*, %struct.item** %62, align 8, !dbg !887, !tbaa !889
  %74 = icmp eq %struct.item* %73, null, !dbg !891
  br i1 %74, label %81, label %75, !dbg !892

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata %struct.item* %73, i64 0, metadata !848, metadata !644) #10, !dbg !893
  call void @llvm.dbg.value(metadata %struct.item* %73, i64 0, metadata !851, metadata !644) #10, !dbg !894
  call void @llvm.dbg.value(metadata %struct.item* %47, i64 0, metadata !852, metadata !644) #10, !dbg !895
  %76 = getelementptr inbounds %struct.item, %struct.item* %73, i64 0, i32 0, !dbg !896
  %77 = load i8*, i8** %76, align 8, !dbg !896, !tbaa !897
  %78 = call i32 @strcmp(i8* %70, i8* %77) #10, !dbg !896
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !853, metadata !644) #10, !dbg !898
  %79 = icmp eq i32 %78, 0, !dbg !899
  br i1 %79, label %224, label %80, !dbg !901

; <label>:80:                                     ; preds = %75
  br label %92, !dbg !902

; <label>:81:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !799, metadata !644) #10, !dbg !904
  %82 = call noalias i8* @xmalloc(i64 56) #10, !dbg !906
  %83 = bitcast i8* %82 to %struct.item*, !dbg !906
  call void @llvm.dbg.value(metadata %struct.item* %83, i64 0, metadata !804, metadata !644) #10, !dbg !907
  %84 = icmp eq i8* %70, null, !dbg !908
  br i1 %84, label %87, label %85, !dbg !908

; <label>:85:                                     ; preds = %81
  %86 = call noalias i8* @xstrdup(i8* nonnull %70) #10, !dbg !909
  br label %87, !dbg !911

; <label>:87:                                     ; preds = %85, %81
  %88 = phi i8* [ %86, %85 ], [ null, %81 ], !dbg !912
  %89 = bitcast i8* %82 to i8**, !dbg !914
  store i8* %88, i8** %89, align 8, !dbg !915, !tbaa !897
  %90 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !916
  %91 = getelementptr inbounds i8, i8* %82, i64 32, !dbg !917
  call void @llvm.memset.p0i8.i64(i8* %90, i8 0, i64 20, i32 8, i1 false) #10, !dbg !918
  call void @llvm.memset.p0i8.i64(i8* %91, i8 0, i64 24, i32 8, i1 false) #10, !dbg !919
  store i8* %82, i8** %63, align 8, !dbg !920, !tbaa !889
  br label %224, !dbg !921

; <label>:92:                                     ; preds = %80, %213
  %93 = phi i32 [ %221, %213 ], [ %78, %80 ]
  %94 = phi %struct.item* [ %101, %213 ], [ %73, %80 ]
  %95 = phi %struct.item* [ %218, %213 ], [ %73, %80 ]
  %96 = phi %struct.item* [ %217, %213 ], [ %47, %80 ]
  %97 = icmp slt i32 %93, 0, !dbg !902
  %98 = getelementptr inbounds %struct.item, %struct.item* %94, i64 0, i32 1, !dbg !922
  %99 = getelementptr inbounds %struct.item, %struct.item* %94, i64 0, i32 2, !dbg !923
  %100 = select i1 %97, %struct.item** %98, %struct.item** %99, !dbg !924
  %101 = load %struct.item*, %struct.item** %100, align 8, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.item* %101, i64 0, metadata !849, metadata !644) #10, !dbg !925
  %102 = icmp eq %struct.item* %101, null, !dbg !926
  br i1 %102, label %103, label %213, !dbg !927

; <label>:103:                                    ; preds = %92
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !799, metadata !644) #10, !dbg !928
  %104 = call noalias i8* @xmalloc(i64 56) #10, !dbg !930
  %105 = bitcast i8* %104 to %struct.item*, !dbg !930
  call void @llvm.dbg.value(metadata %struct.item* %105, i64 0, metadata !804, metadata !644) #10, !dbg !931
  %106 = icmp eq i8* %70, null, !dbg !932
  br i1 %106, label %109, label %107, !dbg !932

; <label>:107:                                    ; preds = %103
  %108 = call noalias i8* @xstrdup(i8* nonnull %70) #10, !dbg !933
  br label %109, !dbg !934

; <label>:109:                                    ; preds = %107, %103
  %110 = phi i8* [ %108, %107 ], [ null, %103 ], !dbg !935
  %111 = bitcast i8* %104 to i8**, !dbg !936
  store i8* %110, i8** %111, align 8, !dbg !937, !tbaa !897
  %112 = getelementptr inbounds i8, i8* %104, i64 8, !dbg !938
  %113 = getelementptr inbounds i8, i8* %104, i64 32, !dbg !939
  call void @llvm.memset.p0i8.i64(i8* %112, i8 0, i64 20, i32 8, i1 false) #10, !dbg !940
  call void @llvm.memset.p0i8.i64(i8* %113, i8 0, i64 24, i32 8, i1 false) #10, !dbg !941
  call void @llvm.dbg.value(metadata %struct.item* %105, i64 0, metadata !849, metadata !644) #10, !dbg !925
  %114 = bitcast %struct.item** %100 to i8**
  store i8* %104, i8** %114, align 8, !tbaa !652
  %115 = getelementptr inbounds %struct.item, %struct.item* %95, i64 0, i32 0, !dbg !942
  %116 = load i8*, i8** %115, align 8, !dbg !942, !tbaa !897
  %117 = call i32 @strcmp(i8* %70, i8* %116) #10, !dbg !942
  %118 = icmp eq i32 %117, 0, !dbg !943
  br i1 %118, label %119, label %120, !dbg !944

; <label>:119:                                    ; preds = %109
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #14, !dbg !945
  unreachable, !dbg !945

; <label>:120:                                    ; preds = %109
  %121 = icmp slt i32 %117, 0, !dbg !947
  %122 = getelementptr inbounds %struct.item, %struct.item* %95, i64 0, i32 2, !dbg !948
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !853, metadata !644) #10, !dbg !898
  %123 = getelementptr inbounds %struct.item, %struct.item* %95, i64 0, i32 1, !dbg !950
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !853, metadata !644) #10, !dbg !898
  %124 = select i1 %121, %struct.item** %123, %struct.item** %122, !dbg !952
  %125 = ashr i32 %117, 31, !dbg !952
  %126 = or i32 %125, 1, !dbg !952
  %127 = load %struct.item*, %struct.item** %124, align 8, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.item* %127, i64 0, metadata !848, metadata !644) #10, !dbg !893
  call void @llvm.dbg.value(metadata %struct.item* %127, i64 0, metadata !850, metadata !644) #10, !dbg !953
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !853, metadata !644) #10, !dbg !898
  %128 = icmp eq %struct.item* %127, %105, !dbg !954
  br i1 %128, label %149, label %129, !dbg !956

; <label>:129:                                    ; preds = %120
  br label %130, !dbg !957

; <label>:130:                                    ; preds = %129, %144
  %131 = phi %struct.item* [ %146, %144 ], [ %127, %129 ]
  %132 = getelementptr inbounds %struct.item, %struct.item* %131, i64 0, i32 0, !dbg !957
  %133 = load i8*, i8** %132, align 8, !dbg !957, !tbaa !897
  %134 = call i32 @strcmp(i8* %70, i8* %133) #10, !dbg !957
  %135 = icmp eq i32 %134, 0, !dbg !958
  br i1 %135, label %136, label %137, !dbg !959

; <label>:136:                                    ; preds = %130
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 183, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #14, !dbg !960
  unreachable, !dbg !960

; <label>:137:                                    ; preds = %130
  %138 = icmp slt i32 %134, 0, !dbg !962
  %139 = getelementptr inbounds %struct.item, %struct.item* %131, i64 0, i32 3
  br i1 %138, label %140, label %142, !dbg !963

; <label>:140:                                    ; preds = %137
  store i32 -1, i32* %139, align 8, !dbg !964, !tbaa !966
  %141 = getelementptr inbounds %struct.item, %struct.item* %131, i64 0, i32 1, !dbg !967
  br label %144, !dbg !968

; <label>:142:                                    ; preds = %137
  store i32 1, i32* %139, align 8, !dbg !969, !tbaa !966
  %143 = getelementptr inbounds %struct.item, %struct.item* %131, i64 0, i32 2, !dbg !971
  br label %144

; <label>:144:                                    ; preds = %142, %140
  %145 = phi %struct.item** [ %143, %142 ], [ %141, %140 ]
  %146 = load %struct.item*, %struct.item** %145, align 8, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.item* %146, i64 0, metadata !848, metadata !644) #10, !dbg !893
  call void @llvm.dbg.value(metadata %struct.item* %127, i64 0, metadata !850, metadata !644) #10, !dbg !953
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !853, metadata !644) #10, !dbg !898
  %147 = icmp eq %struct.item* %146, %105, !dbg !954
  br i1 %147, label %148, label %130, !dbg !956, !llvm.loop !972

; <label>:148:                                    ; preds = %144
  br label %149, !dbg !975

; <label>:149:                                    ; preds = %148, %120
  %150 = getelementptr inbounds %struct.item, %struct.item* %95, i64 0, i32 3, !dbg !975
  %151 = load i32, i32* %150, align 8, !dbg !975, !tbaa !966
  %152 = icmp eq i32 %151, 0, !dbg !977
  br i1 %152, label %156, label %153, !dbg !978

; <label>:153:                                    ; preds = %149
  %154 = sub nsw i32 0, %126, !dbg !979
  %155 = icmp eq i32 %151, %154, !dbg !981
  br i1 %155, label %156, label %158, !dbg !982

; <label>:156:                                    ; preds = %153, %149
  %157 = add nsw i32 %151, %126, !dbg !983
  store i32 %157, i32* %150, align 8, !dbg !983, !tbaa !966
  br label %224, !dbg !985

; <label>:158:                                    ; preds = %153
  %159 = getelementptr inbounds %struct.item, %struct.item* %127, i64 0, i32 3, !dbg !986
  %160 = load i32, i32* %159, align 8, !dbg !986, !tbaa !966
  %161 = icmp eq i32 %160, %126, !dbg !988
  %162 = icmp slt i32 %126, 0
  br i1 %161, label %163, label %171, !dbg !989

; <label>:163:                                    ; preds = %158
  call void @llvm.dbg.value(metadata %struct.item* %127, i64 0, metadata !848, metadata !644) #10, !dbg !893
  %164 = getelementptr inbounds %struct.item, %struct.item* %127, i64 0, i32 1, !dbg !990
  %165 = getelementptr inbounds %struct.item, %struct.item* %127, i64 0, i32 2, !dbg !994
  %166 = select i1 %162, %struct.item** %123, %struct.item** %122, !dbg !996
  %167 = select i1 %162, %struct.item** %165, %struct.item** %164, !dbg !996
  %168 = bitcast %struct.item** %167 to i64*
  %169 = load i64, i64* %168, align 8, !tbaa !652
  %170 = bitcast %struct.item** %166 to i64*
  store i64 %169, i64* %170, align 8, !tbaa !652
  store %struct.item* %95, %struct.item** %167, align 8, !tbaa !652
  store i32 0, i32* %159, align 8, !dbg !997, !tbaa !966
  br label %204, !dbg !998

; <label>:171:                                    ; preds = %158
  br i1 %162, label %172, label %180, !dbg !999

; <label>:172:                                    ; preds = %171
  %173 = getelementptr inbounds %struct.item, %struct.item* %127, i64 0, i32 2, !dbg !1001
  %174 = load %struct.item*, %struct.item** %173, align 8, !dbg !1001, !tbaa !889
  call void @llvm.dbg.value(metadata %struct.item* %174, i64 0, metadata !848, metadata !644) #10, !dbg !893
  %175 = getelementptr inbounds %struct.item, %struct.item* %174, i64 0, i32 1, !dbg !1004
  %176 = bitcast %struct.item** %175 to i64*, !dbg !1004
  %177 = load i64, i64* %176, align 8, !dbg !1004, !tbaa !1005
  %178 = bitcast %struct.item** %173 to i64*, !dbg !1006
  store i64 %177, i64* %178, align 8, !dbg !1006, !tbaa !889
  store %struct.item* %127, %struct.item** %175, align 8, !dbg !1007, !tbaa !1005
  %179 = getelementptr inbounds %struct.item, %struct.item* %174, i64 0, i32 2, !dbg !1008
  br label %188, !dbg !1009

; <label>:180:                                    ; preds = %171
  %181 = getelementptr inbounds %struct.item, %struct.item* %127, i64 0, i32 1, !dbg !1010
  %182 = load %struct.item*, %struct.item** %181, align 8, !dbg !1010, !tbaa !1005
  call void @llvm.dbg.value(metadata %struct.item* %182, i64 0, metadata !848, metadata !644) #10, !dbg !893
  %183 = getelementptr inbounds %struct.item, %struct.item* %182, i64 0, i32 2, !dbg !1012
  %184 = bitcast %struct.item** %183 to i64*, !dbg !1012
  %185 = load i64, i64* %184, align 8, !dbg !1012, !tbaa !889
  %186 = bitcast %struct.item** %181 to i64*, !dbg !1013
  store i64 %185, i64* %186, align 8, !dbg !1013, !tbaa !1005
  store %struct.item* %127, %struct.item** %183, align 8, !dbg !1014, !tbaa !889
  %187 = getelementptr inbounds %struct.item, %struct.item* %182, i64 0, i32 1, !dbg !1015
  br label %188

; <label>:188:                                    ; preds = %180, %172
  %189 = phi %struct.item** [ %122, %180 ], [ %123, %172 ]
  %190 = phi %struct.item** [ %187, %180 ], [ %179, %172 ]
  %191 = phi %struct.item* [ %182, %180 ], [ %174, %172 ]
  %192 = bitcast %struct.item** %190 to i64*
  %193 = load i64, i64* %192, align 8, !tbaa !652
  %194 = bitcast %struct.item** %189 to i64*
  store i64 %193, i64* %194, align 8, !tbaa !652
  store %struct.item* %95, %struct.item** %190, align 8, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.item* %191, i64 0, metadata !848, metadata !644) #10, !dbg !893
  store i32 0, i32* %150, align 8, !dbg !1016, !tbaa !966
  store i32 0, i32* %159, align 8, !dbg !1017, !tbaa !966
  %195 = getelementptr inbounds %struct.item, %struct.item* %191, i64 0, i32 3, !dbg !1018
  %196 = load i32, i32* %195, align 8, !dbg !1018, !tbaa !966
  %197 = icmp eq i32 %196, %126, !dbg !1020
  br i1 %197, label %200, label %198, !dbg !1021

; <label>:198:                                    ; preds = %188
  %199 = icmp eq i32 %196, %154, !dbg !1022
  br i1 %199, label %200, label %204, !dbg !1024

; <label>:200:                                    ; preds = %198, %188
  %201 = phi %struct.item* [ %95, %188 ], [ %127, %198 ]
  %202 = phi i32 [ %154, %188 ], [ %126, %198 ]
  %203 = getelementptr inbounds %struct.item, %struct.item* %201, i64 0, i32 3
  store i32 %202, i32* %203, align 8, !tbaa !966
  br label %204, !dbg !1025

; <label>:204:                                    ; preds = %200, %198, %163
  %205 = phi %struct.item* [ %127, %163 ], [ %191, %200 ], [ %191, %198 ]
  %206 = phi %struct.item* [ %95, %163 ], [ %191, %200 ], [ %191, %198 ]
  call void @llvm.dbg.value(metadata %struct.item* %205, i64 0, metadata !848, metadata !644) #10, !dbg !893
  %207 = getelementptr inbounds %struct.item, %struct.item* %206, i64 0, i32 3
  store i32 0, i32* %207, align 8, !tbaa !966
  %208 = getelementptr inbounds %struct.item, %struct.item* %96, i64 0, i32 2, !dbg !1026
  %209 = load %struct.item*, %struct.item** %208, align 8, !dbg !1026, !tbaa !889
  %210 = icmp eq %struct.item* %95, %209, !dbg !1028
  %211 = getelementptr inbounds %struct.item, %struct.item* %96, i64 0, i32 1, !dbg !1029
  %212 = select i1 %210, %struct.item** %208, %struct.item** %211, !dbg !1030
  store %struct.item* %205, %struct.item** %212, align 8, !tbaa !652
  br label %224, !dbg !1031

; <label>:213:                                    ; preds = %92
  %214 = getelementptr inbounds %struct.item, %struct.item* %101, i64 0, i32 3, !dbg !1032
  %215 = load i32, i32* %214, align 8, !dbg !1032, !tbaa !966
  %216 = icmp eq i32 %215, 0, !dbg !1034
  call void @llvm.dbg.value(metadata %struct.item* %94, i64 0, metadata !852, metadata !644) #10, !dbg !895
  call void @llvm.dbg.value(metadata %struct.item* %101, i64 0, metadata !851, metadata !644) #10, !dbg !894
  %217 = select i1 %216, %struct.item* %96, %struct.item* %94, !dbg !1035
  %218 = select i1 %216, %struct.item* %95, %struct.item* %101, !dbg !1035
  call void @llvm.dbg.value(metadata %struct.item* %218, i64 0, metadata !851, metadata !644) #10, !dbg !894
  call void @llvm.dbg.value(metadata %struct.item* %217, i64 0, metadata !852, metadata !644) #10, !dbg !895
  call void @llvm.dbg.value(metadata %struct.item* %101, i64 0, metadata !848, metadata !644) #10, !dbg !893
  call void @llvm.dbg.value(metadata %struct.item* %101, i64 0, metadata !848, metadata !644) #10, !dbg !893
  call void @llvm.dbg.value(metadata %struct.item* %218, i64 0, metadata !851, metadata !644) #10, !dbg !894
  call void @llvm.dbg.value(metadata %struct.item* %217, i64 0, metadata !852, metadata !644) #10, !dbg !895
  %219 = getelementptr inbounds %struct.item, %struct.item* %101, i64 0, i32 0, !dbg !896
  %220 = load i8*, i8** %219, align 8, !dbg !896, !tbaa !897
  %221 = call i32 @strcmp(i8* %70, i8* %220) #10, !dbg !896
  call void @llvm.dbg.value(metadata i32 %221, i64 0, metadata !853, metadata !644) #10, !dbg !898
  %222 = icmp eq i32 %221, 0, !dbg !899
  br i1 %222, label %223, label %92, !dbg !901, !llvm.loop !1036

; <label>:223:                                    ; preds = %213
  br label %224, !dbg !779

; <label>:224:                                    ; preds = %223, %204, %156, %87, %75
  %225 = phi %struct.item* [ %83, %87 ], [ %105, %156 ], [ %105, %204 ], [ %73, %75 ], [ %101, %223 ]
  call void @llvm.dbg.value(metadata %struct.item* %225, i64 0, metadata !755, metadata !644) #10, !dbg !779
  %226 = icmp eq %struct.item* %65, null, !dbg !1039
  br i1 %226, label %227, label %229, !dbg !1041

; <label>:227:                                    ; preds = %224, %229, %236
  %228 = phi %struct.item* [ null, %236 ], [ null, %229 ], [ %225, %224 ]
  br label %64, !dbg !778

; <label>:229:                                    ; preds = %224
  call void @llvm.dbg.value(metadata %struct.item* %65, i64 0, metadata !1042, metadata !644) #10, !dbg !1053
  call void @llvm.dbg.value(metadata %struct.item* %225, i64 0, metadata !1047, metadata !644) #10, !dbg !1056
  %230 = getelementptr inbounds %struct.item, %struct.item* %65, i64 0, i32 0, !dbg !1057
  %231 = load i8*, i8** %230, align 8, !dbg !1057, !tbaa !897
  %232 = getelementptr inbounds %struct.item, %struct.item* %225, i64 0, i32 0, !dbg !1057
  %233 = load i8*, i8** %232, align 8, !dbg !1057, !tbaa !897
  %234 = call i32 @strcmp(i8* %231, i8* %233) #10, !dbg !1057
  %235 = icmp eq i32 %234, 0, !dbg !1058
  br i1 %235, label %227, label %236, !dbg !1059

; <label>:236:                                    ; preds = %229
  %237 = getelementptr inbounds %struct.item, %struct.item* %225, i64 0, i32 4, !dbg !1060
  %238 = load i64, i64* %237, align 8, !dbg !1062, !tbaa !1063
  %239 = add i64 %238, 1, !dbg !1062
  store i64 %239, i64* %237, align 8, !dbg !1062, !tbaa !1063
  %240 = call noalias i8* @xmalloc(i64 16) #10, !dbg !1064
  %241 = bitcast i8* %240 to %struct.item**, !dbg !1065
  store %struct.item* %225, %struct.item** %241, align 8, !dbg !1066, !tbaa !1067
  %242 = getelementptr inbounds %struct.item, %struct.item* %65, i64 0, i32 6, !dbg !1069
  %243 = bitcast %struct.successor** %242 to i64*, !dbg !1069
  %244 = load i64, i64* %243, align 8, !dbg !1069, !tbaa !1070
  %245 = getelementptr inbounds i8, i8* %240, i64 8, !dbg !1071
  %246 = bitcast i8* %245 to i64*, !dbg !1072
  store i64 %244, i64* %246, align 8, !dbg !1072, !tbaa !1073
  %247 = bitcast %struct.successor** %242 to i8**, !dbg !1074
  store i8* %240, i8** %247, align 8, !dbg !1074, !tbaa !1070
  br label %227, !dbg !1075

; <label>:248:                                    ; preds = %64
  call void @llvm.dbg.value(metadata %struct.item* %65, i64 0, metadata !754, metadata !644) #10, !dbg !778
  call void @llvm.dbg.value(metadata %struct.item* %65, i64 0, metadata !755, metadata !644) #10, !dbg !779
  %249 = icmp eq %struct.item* %65, null, !dbg !1076
  br i1 %249, label %253, label %250, !dbg !1078

; <label>:250:                                    ; preds = %248
  %251 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1079
  %252 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1080
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %251, i8* %252) #10, !dbg !1082
  unreachable, !dbg !1079

; <label>:253:                                    ; preds = %248
  call void @llvm.dbg.value(metadata %struct.item* %47, i64 0, metadata !1084, metadata !644) #10, !dbg !1093
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @count_items, i64 0, metadata !1092, metadata !644) #10, !dbg !1095
  %254 = load %struct.item*, %struct.item** %62, align 8, !dbg !1096, !tbaa !889
  %255 = icmp eq %struct.item* %254, null, !dbg !1098
  br i1 %255, label %258, label %256, !dbg !1099

; <label>:256:                                    ; preds = %253
  %257 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %254, i1 (%struct.item*)* nonnull @count_items) #10, !dbg !1100
  br label %258, !dbg !1100

; <label>:258:                                    ; preds = %253, %256
  br label %260, !dbg !1101

; <label>:259:                                    ; preds = %322
  br label %260, !dbg !1101

; <label>:260:                                    ; preds = %258, %259
  %261 = phi i32 [ 1, %259 ], [ 0, %258 ]
  %262 = load i64, i64* @n_strings, align 8, !dbg !1101, !tbaa !1102
  br label %263, !dbg !777

; <label>:263:                                    ; preds = %313, %260
  %264 = phi i64 [ %262, %260 ], [ 0, %313 ], !dbg !1101
  %265 = icmp eq i64 %264, 0, !dbg !1103
  br i1 %265, label %325, label %266, !dbg !1104

; <label>:266:                                    ; preds = %263
  call void @llvm.dbg.value(metadata %struct.item* %47, i64 0, metadata !1084, metadata !644) #10, !dbg !1105
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @scan_zeros, i64 0, metadata !1092, metadata !644) #10, !dbg !1107
  br i1 %255, label %269, label %267, !dbg !1108

; <label>:267:                                    ; preds = %266
  %268 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %254, i1 (%struct.item*)* nonnull @scan_zeros) #10, !dbg !1109
  br label %269, !dbg !1109

; <label>:269:                                    ; preds = %267, %266
  %270 = load %struct.item*, %struct.item** @head, align 8, !dbg !1110, !tbaa !652
  %271 = icmp eq %struct.item* %270, null, !dbg !1112
  br i1 %271, label %273, label %272, !dbg !1112

; <label>:272:                                    ; preds = %269
  br label %275, !dbg !1113

; <label>:273:                                    ; preds = %269
  %274 = load i64, i64* @n_strings, align 8, !tbaa !1102
  br label %313, !dbg !1112

; <label>:275:                                    ; preds = %272, %305
  %276 = phi %struct.item* [ %310, %305 ], [ %270, %272 ]
  %277 = getelementptr inbounds %struct.item, %struct.item* %276, i64 0, i32 6, !dbg !1113
  %278 = load %struct.successor*, %struct.successor** %277, align 8, !dbg !1113, !tbaa !1070
  call void @llvm.dbg.value(metadata %struct.successor* %278, i64 0, metadata !772, metadata !644) #10, !dbg !1114
  %279 = getelementptr inbounds %struct.item, %struct.item* %276, i64 0, i32 0, !dbg !1115
  %280 = load i8*, i8** %279, align 8, !dbg !1115, !tbaa !897
  %281 = call i32 @puts(i8* %280) #10, !dbg !1116
  %282 = load %struct.item*, %struct.item** @head, align 8, !dbg !1117, !tbaa !652
  %283 = getelementptr inbounds %struct.item, %struct.item* %282, i64 0, i32 0, !dbg !1118
  store i8* null, i8** %283, align 8, !dbg !1119, !tbaa !897
  %284 = load i64, i64* @n_strings, align 8, !dbg !1120, !tbaa !1102
  %285 = add i64 %284, -1, !dbg !1120
  store i64 %285, i64* @n_strings, align 8, !dbg !1120, !tbaa !1102
  call void @llvm.dbg.value(metadata %struct.successor* %278, i64 0, metadata !772, metadata !644) #10, !dbg !1114
  %286 = icmp eq %struct.successor* %278, null, !dbg !1121
  br i1 %286, label %305, label %287, !dbg !1121

; <label>:287:                                    ; preds = %275
  br label %288, !dbg !1123

; <label>:288:                                    ; preds = %287, %300
  %289 = phi %struct.successor* [ %302, %300 ], [ %278, %287 ]
  %290 = getelementptr inbounds %struct.successor, %struct.successor* %289, i64 0, i32 0, !dbg !1123
  %291 = load %struct.item*, %struct.item** %290, align 8, !dbg !1123, !tbaa !1067
  %292 = getelementptr inbounds %struct.item, %struct.item* %291, i64 0, i32 4, !dbg !1125
  %293 = load i64, i64* %292, align 8, !dbg !1126, !tbaa !1063
  %294 = add i64 %293, -1, !dbg !1126
  store i64 %294, i64* %292, align 8, !dbg !1126, !tbaa !1063
  %295 = icmp eq i64 %294, 0, !dbg !1127
  br i1 %295, label %296, label %300, !dbg !1129

; <label>:296:                                    ; preds = %288
  %297 = ptrtoint %struct.item* %291 to i64, !dbg !1129
  %298 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1130, !tbaa !652
  %299 = getelementptr inbounds %struct.item, %struct.item* %298, i64 0, i32 5, !dbg !1132
  store %struct.item* %291, %struct.item** %299, align 8, !dbg !1133, !tbaa !1134
  store i64 %297, i64* bitcast (%struct.item** @zeros to i64*), align 8, !dbg !1135, !tbaa !652
  br label %300, !dbg !1136

; <label>:300:                                    ; preds = %296, %288
  %301 = getelementptr inbounds %struct.successor, %struct.successor* %289, i64 0, i32 1, !dbg !1137
  %302 = load %struct.successor*, %struct.successor** %301, align 8, !dbg !1137, !tbaa !1073
  call void @llvm.dbg.value(metadata %struct.successor* %302, i64 0, metadata !772, metadata !644) #10, !dbg !1114
  call void @llvm.dbg.value(metadata %struct.successor* %302, i64 0, metadata !772, metadata !644) #10, !dbg !1114
  %303 = icmp eq %struct.successor* %302, null, !dbg !1121
  br i1 %303, label %304, label %288, !dbg !1121, !llvm.loop !1138

; <label>:304:                                    ; preds = %300
  br label %305, !dbg !1141

; <label>:305:                                    ; preds = %304, %275
  %306 = load %struct.item*, %struct.item** @head, align 8, !dbg !1141, !tbaa !652
  %307 = getelementptr inbounds %struct.item, %struct.item* %306, i64 0, i32 5, !dbg !1142
  %308 = bitcast %struct.item** %307 to i64*, !dbg !1142
  %309 = load i64, i64* %308, align 8, !dbg !1142, !tbaa !1134
  store i64 %309, i64* bitcast (%struct.item** @head to i64*), align 8, !dbg !1143, !tbaa !652
  %310 = inttoptr i64 %309 to %struct.item*
  %311 = icmp eq i64 %309, 0, !dbg !1112
  br i1 %311, label %312, label %275, !dbg !1112, !llvm.loop !1144

; <label>:312:                                    ; preds = %305
  br label %313, !dbg !1147

; <label>:313:                                    ; preds = %312, %273
  %314 = phi i64 [ %274, %273 ], [ %285, %312 ], !dbg !1149
  %315 = icmp eq i64 %314, 0, !dbg !1147
  br i1 %315, label %263, label %316, !dbg !1150, !llvm.loop !1151

; <label>:316:                                    ; preds = %313
  %317 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1154
  %318 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1156
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %317, i8* %318) #10, !dbg !1158
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !752, metadata !644) #10, !dbg !777
  br label %319, !dbg !1160, !llvm.loop !1161

; <label>:319:                                    ; preds = %322, %316
  call void @llvm.dbg.value(metadata %struct.item* %47, i64 0, metadata !1084, metadata !644) #10, !dbg !1164
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @detect_loop, i64 0, metadata !1092, metadata !644) #10, !dbg !1166
  br i1 %255, label %322, label %320, !dbg !1167

; <label>:320:                                    ; preds = %319
  %321 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %254, i1 (%struct.item*)* nonnull @detect_loop) #10, !dbg !1168
  br label %322, !dbg !1168

; <label>:322:                                    ; preds = %320, %319
  %323 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1169, !tbaa !652
  %324 = icmp eq %struct.item* %323, null, !dbg !1170
  br i1 %324, label %259, label %319, !dbg !1170, !llvm.loop !1151

; <label>:325:                                    ; preds = %263
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1171, !tbaa !652
  %327 = call i32 @rpl_fclose(%struct._IO_FILE* %326) #10, !dbg !1173
  %328 = icmp eq i32 %327, 0, !dbg !1174
  br i1 %328, label %338, label %329, !dbg !1175

; <label>:329:                                    ; preds = %325
  %330 = tail call i32* @__errno_location() #1, !dbg !1176
  %331 = load i32, i32* %330, align 4, !dbg !1176, !tbaa !725
  br i1 %45, label %332, label %334, !dbg !1176

; <label>:332:                                    ; preds = %329
  %333 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !1177
  br label %336, !dbg !1177

; <label>:334:                                    ; preds = %329
  %335 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1179
  br label %336, !dbg !1179

; <label>:336:                                    ; preds = %334, %332
  %337 = phi i8* [ %333, %332 ], [ %335, %334 ], !dbg !1181
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %337) #10, !dbg !1181
  unreachable, !dbg !1181

; <label>:338:                                    ; preds = %325
  call void @llvm.lifetime.end(i64 16, i8* nonnull %33) #10, !dbg !1183
  ret i32 %261, !dbg !1184
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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @count_items(%struct.item* nocapture readnone) #6 !dbg !1185 {
  tail call void @llvm.dbg.value(metadata %struct.item* %0, i64 0, metadata !1187, metadata !644), !dbg !1188
  %2 = load i64, i64* @n_strings, align 8, !dbg !1189, !tbaa !1102
  %3 = add i64 %2, 1, !dbg !1189
  store i64 %3, i64* @n_strings, align 8, !dbg !1189, !tbaa !1102
  ret i1 false, !dbg !1190
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @recurse_tree(%struct.item*, i1 (%struct.item*)*) unnamed_addr #6 !dbg !1191 {
  tail call void @llvm.dbg.value(metadata %struct.item* %0, i64 0, metadata !1195, metadata !644), !dbg !1197
  tail call void @llvm.dbg.value(metadata i1 (%struct.item*)* %1, i64 0, metadata !1196, metadata !644), !dbg !1198
  %3 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 1, !dbg !1199
  %4 = load %struct.item*, %struct.item** %3, align 8, !dbg !1199, !tbaa !1005
  %5 = icmp eq %struct.item* %4, null, !dbg !1201
  br i1 %5, label %6, label %12, !dbg !1202

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1203
  %8 = load %struct.item*, %struct.item** %7, align 8, !dbg !1203, !tbaa !889
  %9 = icmp eq %struct.item* %8, null, !dbg !1205
  br i1 %9, label %10, label %14, !dbg !1206

; <label>:10:                                     ; preds = %6
  %11 = tail call zeroext i1 %1(%struct.item* nonnull %0) #10, !dbg !1208
  br label %23, !dbg !1209

; <label>:12:                                     ; preds = %2
  %13 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %4, i1 (%struct.item*)* %1), !dbg !1210
  br i1 %13, label %23, label %14, !dbg !1214

; <label>:14:                                     ; preds = %6, %12
  %15 = tail call zeroext i1 %1(%struct.item* nonnull %0) #10, !dbg !1215
  br i1 %15, label %23, label %16, !dbg !1217

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1218
  %18 = load %struct.item*, %struct.item** %17, align 8, !dbg !1218, !tbaa !889
  %19 = icmp eq %struct.item* %18, null, !dbg !1220
  br i1 %19, label %22, label %20, !dbg !1221

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %18, i1 (%struct.item*)* %1), !dbg !1222
  br i1 %21, label %23, label %22, !dbg !1224

; <label>:22:                                     ; preds = %16, %20
  br label %23, !dbg !1225

; <label>:23:                                     ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ]
  ret i1 %24, !dbg !1226
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @scan_zeros(%struct.item*) #6 !dbg !1227 {
  tail call void @llvm.dbg.value(metadata %struct.item* %0, i64 0, metadata !1229, metadata !644), !dbg !1230
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1231
  %3 = load i64, i64* %2, align 8, !dbg !1231, !tbaa !1063
  %4 = icmp eq i64 %3, 0, !dbg !1233
  br i1 %4, label %5, label %15, !dbg !1234

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 0, !dbg !1235
  %7 = load i8*, i8** %6, align 8, !dbg !1235, !tbaa !897
  %8 = icmp eq i8* %7, null, !dbg !1237
  br i1 %8, label %15, label %9, !dbg !1238

; <label>:9:                                      ; preds = %5
  %10 = load %struct.item*, %struct.item** @head, align 8, !dbg !1240, !tbaa !652
  %11 = icmp eq %struct.item* %10, null, !dbg !1243
  %12 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1244
  %13 = getelementptr inbounds %struct.item, %struct.item* %12, i64 0, i32 5, !dbg !1245
  %14 = select i1 %11, %struct.item** @head, %struct.item** %13, !dbg !1246
  store %struct.item* %0, %struct.item** %14, align 8, !tbaa !652
  store %struct.item* %0, %struct.item** @zeros, align 8, !dbg !1247, !tbaa !652
  br label %15, !dbg !1248

; <label>:15:                                     ; preds = %5, %9, %1
  ret i1 false, !dbg !1249
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @detect_loop(%struct.item*) #6 !dbg !1250 {
  tail call void @llvm.dbg.value(metadata %struct.item* %0, i64 0, metadata !1252, metadata !644), !dbg !1268
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1269
  %3 = load i64, i64* %2, align 8, !dbg !1269, !tbaa !1063
  %4 = icmp eq i64 %3, 0, !dbg !1270
  br i1 %4, label %66, label %5, !dbg !1271

; <label>:5:                                      ; preds = %1
  %6 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1272, !tbaa !652
  %7 = icmp eq %struct.item* %6, null, !dbg !1273
  br i1 %7, label %8, label %9, !dbg !1274

; <label>:8:                                      ; preds = %5
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1275, !tbaa !652
  br label %66, !dbg !1276

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 6, !dbg !1277
  tail call void @llvm.dbg.value(metadata %struct.successor** %10, i64 0, metadata !1253, metadata !644), !dbg !1278
  tail call void @llvm.dbg.value(metadata %struct.successor** %10, i64 0, metadata !1253, metadata !644), !dbg !1278
  %11 = load %struct.successor*, %struct.successor** %10, align 8, !dbg !1279, !tbaa !652
  %12 = icmp eq %struct.successor* %11, null, !dbg !1281
  br i1 %12, label %66, label %13, !dbg !1281

; <label>:13:                                     ; preds = %9
  br label %17, !dbg !1282

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata %struct.successor** %23, i64 0, metadata !1253, metadata !644), !dbg !1278
  %15 = load %struct.successor*, %struct.successor** %23, align 8, !dbg !1279, !tbaa !652
  %16 = icmp eq %struct.successor* %15, null, !dbg !1281
  br i1 %16, label %65, label %17, !dbg !1281, !llvm.loop !1283

; <label>:17:                                     ; preds = %13, %14
  %18 = phi %struct.successor* [ %15, %14 ], [ %11, %13 ]
  %19 = phi %struct.successor** [ %23, %14 ], [ %10, %13 ]
  %20 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 0, !dbg !1282
  %21 = load %struct.item*, %struct.item** %20, align 8, !dbg !1282, !tbaa !1067
  %22 = icmp eq %struct.item* %21, %6, !dbg !1286
  %23 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 1, !dbg !1287
  tail call void @llvm.dbg.value(metadata %struct.successor** %23, i64 0, metadata !1253, metadata !644), !dbg !1278
  br i1 %22, label %24, label %14, !dbg !1288

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 5, !dbg !1289
  %26 = load %struct.item*, %struct.item** %25, align 8, !dbg !1289, !tbaa !1134
  %27 = icmp eq %struct.item* %26, null, !dbg !1290
  br i1 %27, label %62, label %28, !dbg !1291

; <label>:28:                                     ; preds = %24
  br label %29, !dbg !1292

; <label>:29:                                     ; preds = %28, %38
  %30 = phi %struct.item* [ %41, %38 ], [ %6, %28 ], !dbg !1293
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i64 0, i32 5, !dbg !1292
  %32 = bitcast %struct.item** %31 to i64*, !dbg !1292
  %33 = load i64, i64* %32, align 8, !dbg !1292, !tbaa !1134
  %34 = getelementptr inbounds %struct.item, %struct.item* %30, i64 0, i32 0, !dbg !1294
  %35 = load i8*, i8** %34, align 8, !dbg !1294, !tbaa !897
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %35) #10, !dbg !1295
  %36 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1296, !tbaa !652
  %37 = icmp eq %struct.item* %36, %0, !dbg !1298
  br i1 %37, label %42, label %38, !dbg !1299

; <label>:38:                                     ; preds = %29
  %39 = getelementptr inbounds %struct.item, %struct.item* %36, i64 0, i32 5, !dbg !1300
  store %struct.item* null, %struct.item** %39, align 8, !dbg !1301, !tbaa !1134
  store i64 %33, i64* bitcast (%struct.item** @loop to i64*), align 8, !dbg !1302, !tbaa !652
  %40 = icmp eq i64 %33, 0, !dbg !1303
  %41 = inttoptr i64 %33 to %struct.item*
  br i1 %40, label %64, label %29, !llvm.loop !1305

; <label>:42:                                     ; preds = %29
  %43 = load %struct.successor*, %struct.successor** %19, align 8, !dbg !1308, !tbaa !652
  %44 = getelementptr inbounds %struct.successor, %struct.successor* %43, i64 0, i32 0, !dbg !1310
  %45 = load %struct.item*, %struct.item** %44, align 8, !dbg !1310, !tbaa !1067
  %46 = getelementptr inbounds %struct.item, %struct.item* %45, i64 0, i32 4, !dbg !1311
  %47 = load i64, i64* %46, align 8, !dbg !1312, !tbaa !1063
  %48 = add i64 %47, -1, !dbg !1312
  store i64 %48, i64* %46, align 8, !dbg !1312, !tbaa !1063
  %49 = getelementptr inbounds %struct.successor, %struct.successor* %43, i64 0, i32 1, !dbg !1313
  %50 = bitcast %struct.successor** %49 to i64*, !dbg !1313
  %51 = load i64, i64* %50, align 8, !dbg !1313, !tbaa !1073
  %52 = bitcast %struct.successor** %19 to i64*, !dbg !1314
  store i64 %51, i64* %52, align 8, !dbg !1314, !tbaa !652
  %53 = icmp eq %struct.item* %0, null, !dbg !1315
  br i1 %53, label %66, label %54, !dbg !1315

; <label>:54:                                     ; preds = %42
  br label %55, !dbg !1316

; <label>:55:                                     ; preds = %54, %55
  %56 = phi %struct.item* [ %60, %55 ], [ %0, %54 ]
  %57 = getelementptr inbounds %struct.item, %struct.item* %56, i64 0, i32 5, !dbg !1316
  %58 = bitcast %struct.item** %57 to i64*, !dbg !1316
  %59 = load i64, i64* %58, align 8, !dbg !1316, !tbaa !1134
  store %struct.item* null, %struct.item** %57, align 8, !dbg !1317, !tbaa !1134
  %60 = inttoptr i64 %59 to %struct.item*
  %61 = icmp eq i64 %59, 0, !dbg !1315
  br i1 %61, label %63, label %55, !dbg !1315, !llvm.loop !1318

; <label>:62:                                     ; preds = %24
  store %struct.item* %6, %struct.item** %25, align 8, !dbg !1321, !tbaa !1134
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1323, !tbaa !652
  br label %66, !dbg !1324

; <label>:63:                                     ; preds = %55
  store i64 0, i64* bitcast (%struct.item** @loop to i64*), align 8, !dbg !1325, !tbaa !652
  br label %66, !dbg !1315

; <label>:64:                                     ; preds = %38
  br label %66, !dbg !1326

; <label>:65:                                     ; preds = %14
  br label %66, !dbg !1326

; <label>:66:                                     ; preds = %65, %64, %9, %42, %63, %8, %1, %62
  %67 = phi i1 [ false, %62 ], [ false, %1 ], [ false, %8 ], [ true, %63 ], [ true, %42 ], [ false, %9 ], [ true, %64 ], [ false, %65 ]
  ret i1 %67, !dbg !1326
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1327 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1329, metadata !644), !dbg !1330
  store i8* %0, i8** @file_name, align 8, !dbg !1331, !tbaa !652
  ret void, !dbg !1332
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1333 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1337, metadata !1338), !dbg !1339
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1340, !tbaa !1341
  ret void, !dbg !1343
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1344 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1349, !tbaa !652
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1350
  %3 = icmp eq i32 %2, 0, !dbg !1351
  br i1 %3, label %21, label %4, !dbg !1352

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1353, !tbaa !1341, !range !1355
  %6 = icmp eq i8 %5, 0, !dbg !1353
  %7 = tail call i32* @__errno_location() #1, !dbg !1356
  br i1 %6, label %11, label %8, !dbg !1358

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1359, !tbaa !725
  %10 = icmp eq i32 %9, 32, !dbg !1361
  br i1 %10, label %21, label %11, !dbg !1362

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !1364
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1346, metadata !644), !dbg !1365
  %13 = load i8*, i8** @file_name, align 8, !dbg !1366, !tbaa !652
  %14 = icmp eq i8* %13, null, !dbg !1366
  %15 = load i32, i32* %7, align 4, !tbaa !725
  br i1 %14, label %18, label %16, !dbg !1367

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1368
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.17, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1370
  br label %19, !dbg !1372

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.18, i64 0, i64 0), i8* %12) #10, !dbg !1373
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1374, !tbaa !725
  tail call void @_exit(i32 %20) #14, !dbg !1375
  unreachable, !dbg !1375

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1376, !tbaa !652
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1378
  %24 = icmp eq i32 %23, 0, !dbg !1379
  br i1 %24, label %27, label %25, !dbg !1380

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1381, !tbaa !725
  tail call void @_exit(i32 %26) #14, !dbg !1382
  unreachable, !dbg !1382

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1383
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1384 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1395, metadata !644), !dbg !1401
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1396, metadata !644), !dbg !1402
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1397, metadata !644), !dbg !1403
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1398, metadata !644), !dbg !1404
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1405
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1399, metadata !644), !dbg !1405
  ret void, !dbg !1406
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1407 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1462, metadata !644), !dbg !1464
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1463, metadata !644), !dbg !1465
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1466
  br i1 %3, label %7, label %4, !dbg !1468

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1469
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1395, metadata !644) #10, !dbg !1470
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1396, metadata !644) #10, !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1397, metadata !644) #10, !dbg !1474
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1398, metadata !644) #10, !dbg !1475
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1476
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1399, metadata !644) #10, !dbg !1476
  br label %7, !dbg !1477

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1478
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1479 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1524, metadata !644), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1525, metadata !644), !dbg !1532
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !1526, metadata !644), !dbg !1533
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1527, metadata !644), !dbg !1534
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1528, metadata !644), !dbg !1535
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1529, metadata !644), !dbg !1536
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #10, !dbg !1537
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1538

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #10, !dbg !1539
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1529, metadata !644), !dbg !1536
  %7 = icmp ne i32 %6, 2, !dbg !1542
  %8 = zext i1 %7 to i8, !dbg !1542
  br label %9, !dbg !1542

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !1529, metadata !644), !dbg !1536
  %11 = tail call i32 @dup2(i32 1, i32 1) #10, !dbg !1543
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1528, metadata !644), !dbg !1535
  %12 = icmp ne i32 %11, 1, !dbg !1545
  %13 = zext i1 %12 to i8, !dbg !1545
  br label %14, !dbg !1545

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ]
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1529, metadata !644), !dbg !1536
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1528, metadata !644), !dbg !1535
  %17 = tail call i32 @dup2(i32 0, i32 0) #10, !dbg !1546
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1527, metadata !644), !dbg !1534
  %18 = icmp eq i32 %17, 0, !dbg !1548
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1529, metadata !644), !dbg !1536
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1528, metadata !644), !dbg !1535
  br i1 %18, label %27, label %19, !dbg !1549

; <label>:19:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1551, metadata !644) #10, !dbg !1557
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i32 0) #10, !dbg !1560
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !1556, metadata !644) #10, !dbg !1561
  %21 = icmp eq i32 %20, 0, !dbg !1562
  br i1 %21, label %27, label %22, !dbg !1564

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1565
  br i1 %23, label %24, label %54, !dbg !1568

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #10, !dbg !1569
  %26 = tail call i32* @__errno_location() #1, !dbg !1571
  store i32 9, i32* %26, align 4, !dbg !1572, !tbaa !725
  br label %54, !dbg !1573

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1574
  br i1 %29, label %38, label %30, !dbg !1576

; <label>:30:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1551, metadata !644) #10, !dbg !1577
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i32 0) #10, !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1556, metadata !644) #10, !dbg !1581
  %32 = icmp eq i32 %31, 1, !dbg !1582
  br i1 %32, label %38, label %33, !dbg !1583

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1584
  br i1 %34, label %35, label %54, !dbg !1585

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #10, !dbg !1586
  %37 = tail call i32* @__errno_location() #1, !dbg !1587
  store i32 9, i32* %37, align 4, !dbg !1588, !tbaa !725
  br label %54, !dbg !1589

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !1590
  %40 = icmp eq i8 %39, 0, !dbg !1590
  br i1 %40, label %49, label %41, !dbg !1592

; <label>:41:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1551, metadata !644) #10, !dbg !1593
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i32 0) #10, !dbg !1596
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1556, metadata !644) #10, !dbg !1597
  %43 = icmp eq i32 %42, 2, !dbg !1598
  br i1 %43, label %49, label %44, !dbg !1599

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1600
  br i1 %45, label %46, label %54, !dbg !1601

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #10, !dbg !1602
  %48 = tail call i32* @__errno_location() #1, !dbg !1603
  store i32 9, i32* %48, align 4, !dbg !1604, !tbaa !725
  br label %54, !dbg !1605

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @rpl_freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #10, !dbg !1606
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, i64 0, metadata !1526, metadata !644), !dbg !1533
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, i64 0, metadata !1526, metadata !644), !dbg !1533
  %59 = tail call i32* @__errno_location() #1, !dbg !1607
  %60 = load i32, i32* %59, align 4, !dbg !1607, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !1530, metadata !644), !dbg !1608
  %61 = and i8 %55, 1, !dbg !1609
  %62 = icmp eq i8 %61, 0, !dbg !1609
  br i1 %62, label %65, label %63, !dbg !1611

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #10, !dbg !1612
  br label %65, !dbg !1612

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !1613
  %67 = icmp eq i8 %66, 0, !dbg !1613
  br i1 %67, label %70, label %68, !dbg !1615

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #10, !dbg !1616
  br label %70, !dbg !1616

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !1617

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #10, !dbg !1618
  br label %73, !dbg !1618

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !1620
  br i1 %74, label %75, label %76, !dbg !1622

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !1623, !tbaa !725
  br label %76, !dbg !1624

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !1625
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !1626 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1631, metadata !644), !dbg !1655
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1632, metadata !644), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1633, metadata !644), !dbg !1657
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1634, metadata !644), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1635, metadata !644), !dbg !1659
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !1636, metadata !644), !dbg !1660
  %8 = load i32, i32* @opterr, align 4, !dbg !1661, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1638, metadata !644), !dbg !1662
  store i32 0, i32* @opterr, align 4, !dbg !1663, !tbaa !725
  %9 = icmp eq i32 %0, 2, !dbg !1664
  br i1 %9, label %10, label %17, !dbg !1665

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1637, metadata !644), !dbg !1668
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1669

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !1671
  br label %17, !dbg !1672

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1673
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !1673
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1639, metadata !644), !dbg !1674
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1675
  call void @llvm.va_start(i8* nonnull %14), !dbg !1675
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1676, !tbaa !652
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !1677
  call void @exit(i32 0) #14, !dbg !1678
  unreachable, !dbg !1678

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1679, !tbaa !725
  store i32 0, i32* @optind, align 4, !dbg !1680, !tbaa !725
  ret void, !dbg !1681
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1682 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1684, metadata !644), !dbg !1687
  %2 = icmp eq i8* %0, null, !dbg !1688
  br i1 %2, label %3, label %6, !dbg !1690

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1691, !tbaa !652
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1693
  tail call void @abort() #14, !dbg !1694
  unreachable, !dbg !1694

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1695
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1685, metadata !644), !dbg !1696
  %8 = icmp ne i8* %7, null, !dbg !1697
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1698
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1700
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1686, metadata !644), !dbg !1701
  %11 = ptrtoint i8* %10 to i64, !dbg !1702
  %12 = ptrtoint i8* %0 to i64, !dbg !1702
  %13 = sub i64 %11, %12, !dbg !1702
  %14 = icmp sgt i64 %13, 6, !dbg !1704
  br i1 %14, label %15, label %24, !dbg !1705

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1706
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #13, !dbg !1706
  %18 = icmp eq i32 %17, 0, !dbg !1708
  br i1 %18, label %19, label %24, !dbg !1709

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1684, metadata !644), !dbg !1687
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #13, !dbg !1710
  %21 = icmp eq i32 %20, 0, !dbg !1713
  br i1 %21, label %22, label %24, !dbg !1714

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1715
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1684, metadata !644), !dbg !1687
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1717, !tbaa !652
  br label %24, !dbg !1718

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1684, metadata !644), !dbg !1687
  store i8* %25, i8** @program_name, align 8, !dbg !1719, !tbaa !652
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1720, !tbaa !652
  ret void, !dbg !1721
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1722 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1727, metadata !644), !dbg !1730
  %2 = tail call i32* @__errno_location() #1, !dbg !1731
  %3 = load i32, i32* %2, align 4, !dbg !1731, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1728, metadata !644), !dbg !1732
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1733
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1734
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1734
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1736
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1729, metadata !644), !dbg !1737
  store i32 %3, i32* %2, align 4, !dbg !1738, !tbaa !725
  ret %struct.quoting_options* %8, !dbg !1739
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1740 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1746, metadata !644), !dbg !1747
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1748
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1748
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1749
  %5 = load i32, i32* %4, align 8, !dbg !1749, !tbaa !1751
  ret i32 %5, !dbg !1753
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1754 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1758, metadata !644), !dbg !1760
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1759, metadata !644), !dbg !1761
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1762
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1762
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1763
  store i32 %1, i32* %5, align 8, !dbg !1765, !tbaa !1751
  ret void, !dbg !1766
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1767 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1771, metadata !644), !dbg !1779
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1772, metadata !644), !dbg !1780
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1773, metadata !644), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1774, metadata !644), !dbg !1782
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1783
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1783
  %6 = lshr i8 %1, 5, !dbg !1784
  %7 = zext i8 %6 to i64, !dbg !1784
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1786
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1775, metadata !644), !dbg !1787
  %9 = and i8 %1, 31, !dbg !1788
  %10 = zext i8 %9 to i32, !dbg !1789
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1777, metadata !644), !dbg !1790
  %11 = load i32, i32* %8, align 4, !dbg !1791, !tbaa !725
  %12 = lshr i32 %11, %10, !dbg !1792
  %13 = and i32 %12, 1, !dbg !1793
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1778, metadata !644), !dbg !1794
  %14 = and i32 %2, 1, !dbg !1795
  %15 = xor i32 %13, %14, !dbg !1796
  %16 = shl i32 %15, %10, !dbg !1797
  %17 = xor i32 %16, %11, !dbg !1798
  store i32 %17, i32* %8, align 4, !dbg !1798, !tbaa !725
  ret i32 %13, !dbg !1799
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1800 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1804, metadata !644), !dbg !1807
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1805, metadata !644), !dbg !1808
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1809
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1804, metadata !644), !dbg !1807
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1811
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1804, metadata !644), !dbg !1807
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1812
  %6 = load i32, i32* %5, align 4, !dbg !1812, !tbaa !1813
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1806, metadata !644), !dbg !1814
  store i32 %1, i32* %5, align 4, !dbg !1815, !tbaa !1813
  ret i32 %6, !dbg !1816
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1817 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1821, metadata !644), !dbg !1824
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1822, metadata !644), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1823, metadata !644), !dbg !1826
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1827
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1821, metadata !644), !dbg !1824
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1821, metadata !644), !dbg !1824
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1830
  store i32 10, i32* %6, align 8, !dbg !1831, !tbaa !1751
  %7 = icmp ne i8* %1, null, !dbg !1832
  %8 = icmp ne i8* %2, null, !dbg !1834
  %9 = and i1 %7, %8, !dbg !1836
  br i1 %9, label %11, label %10, !dbg !1836

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1837
  unreachable, !dbg !1837

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1838
  store i8* %1, i8** %12, align 8, !dbg !1839, !tbaa !1840
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1841
  store i8* %2, i8** %13, align 8, !dbg !1842, !tbaa !1843
  ret void, !dbg !1844
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1845 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1849, metadata !644), !dbg !1857
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1850, metadata !644), !dbg !1858
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1851, metadata !644), !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1852, metadata !644), !dbg !1860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1853, metadata !644), !dbg !1861
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1862
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1854, metadata !644), !dbg !1863
  %8 = tail call i32* @__errno_location() #1, !dbg !1864
  %9 = load i32, i32* %8, align 4, !dbg !1864, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1855, metadata !644), !dbg !1865
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1866
  %11 = load i32, i32* %10, align 8, !dbg !1866, !tbaa !1751
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1867
  %13 = load i32, i32* %12, align 4, !dbg !1867, !tbaa !1813
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1868
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1869
  %16 = load i8*, i8** %15, align 8, !dbg !1869, !tbaa !1840
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1870
  %18 = load i8*, i8** %17, align 8, !dbg !1870, !tbaa !1843
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1856, metadata !644), !dbg !1872
  store i32 %9, i32* %8, align 4, !dbg !1873, !tbaa !725
  ret i64 %19, !dbg !1874
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1875 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1881, metadata !644), !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1882, metadata !644), !dbg !1945
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1883, metadata !644), !dbg !1946
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1884, metadata !644), !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1885, metadata !644), !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1886, metadata !644), !dbg !1949
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1887, metadata !644), !dbg !1950
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1888, metadata !644), !dbg !1951
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1889, metadata !644), !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1891, metadata !644), !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1892, metadata !644), !dbg !1954
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1893, metadata !644), !dbg !1955
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1894, metadata !644), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1895, metadata !644), !dbg !1957
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1958
  %14 = icmp eq i64 %13, 1, !dbg !1959
  %15 = lshr i32 %5, 1, !dbg !1960
  %16 = trunc i32 %15 to i8, !dbg !1960
  %17 = and i8 %16, 1, !dbg !1960
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1897, metadata !644), !dbg !1960
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1898, metadata !644), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1899, metadata !644), !dbg !1962
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1900, metadata !644), !dbg !1963
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1964

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1882, metadata !644), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1900, metadata !644), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1899, metadata !644), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1897, metadata !644), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1884, metadata !644), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1895, metadata !644), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1894, metadata !644), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1893, metadata !644), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1892, metadata !644), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1889, metadata !644), !dbg !1952
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1888, metadata !644), !dbg !1951
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1885, metadata !644), !dbg !1948
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
  ], !dbg !1965

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1885, metadata !644), !dbg !1948
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1897, metadata !644), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1897, metadata !644), !dbg !1960
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1885, metadata !644), !dbg !1948
  br label %95, !dbg !1966

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1897, metadata !644), !dbg !1960
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1885, metadata !644), !dbg !1948
  %43 = and i8 %36, 1, !dbg !1968
  %44 = icmp eq i8 %43, 0, !dbg !1968
  br i1 %44, label %45, label %95, !dbg !1966

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1970
  br i1 %46, label %95, label %47, !dbg !1974

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1976, !tbaa !785
  br label %95, !dbg !1976

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1888, metadata !644), !dbg !1951
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !1982
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1889, metadata !644), !dbg !1952
  br label %51, !dbg !1983

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1889, metadata !644), !dbg !1952
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1888, metadata !644), !dbg !1951
  %54 = and i8 %36, 1, !dbg !1984
  %55 = icmp eq i8 %54, 0, !dbg !1984
  br i1 %55, label %56, label %73, !dbg !1986

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1893, metadata !644), !dbg !1955
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1891, metadata !644), !dbg !1953
  %57 = load i8, i8* %52, align 1, !dbg !1987, !tbaa !785
  %58 = icmp eq i8 %57, 0, !dbg !1991
  br i1 %58, label %73, label %59, !dbg !1991

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1993

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1993
  br i1 %64, label %65, label %67, !dbg !1997

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1999
  store i8 %61, i8* %66, align 1, !dbg !1999, !tbaa !785
  br label %67, !dbg !1999

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1891, metadata !644), !dbg !1953
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2003
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1893, metadata !644), !dbg !1955
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1893, metadata !644), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1891, metadata !644), !dbg !1953
  %70 = load i8, i8* %69, align 1, !dbg !1987, !tbaa !785
  %71 = icmp eq i8 %70, 0, !dbg !1991
  br i1 %71, label %72, label %60, !dbg !1991, !llvm.loop !2005

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1953

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1895, metadata !644), !dbg !1957
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1893, metadata !644), !dbg !1955
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1894, metadata !644), !dbg !1956
  br label %95, !dbg !2009

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1895, metadata !644), !dbg !1957
  br label %77, !dbg !2010

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1895, metadata !644), !dbg !1957
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1897, metadata !644), !dbg !1960
  br label %79, !dbg !2011

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1897, metadata !644), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1895, metadata !644), !dbg !1957
  %82 = and i8 %81, 1, !dbg !2012
  %83 = icmp eq i8 %82, 0, !dbg !2012
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1895, metadata !644), !dbg !1957
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2014
  br label %85, !dbg !2014

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1897, metadata !644), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1895, metadata !644), !dbg !1957
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1885, metadata !644), !dbg !1948
  %88 = and i8 %87, 1, !dbg !2015
  %89 = icmp eq i8 %88, 0, !dbg !2015
  br i1 %89, label %90, label %95, !dbg !2017

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2018
  br i1 %91, label %95, label %92, !dbg !2022

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2024, !tbaa !785
  br label %95, !dbg !2024

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1897, metadata !644), !dbg !1960
  br label %95, !dbg !2026

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2027
  unreachable, !dbg !2027

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1897, metadata !644), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1895, metadata !644), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1894, metadata !644), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1893, metadata !644), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1889, metadata !644), !dbg !1952
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1888, metadata !644), !dbg !1951
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1885, metadata !644), !dbg !1948
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1890, metadata !644), !dbg !2028
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
  br label %123, !dbg !2029

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1882, metadata !644), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1900, metadata !644), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1899, metadata !644), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1884, metadata !644), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1892, metadata !644), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1890, metadata !644), !dbg !2028
  %132 = icmp eq i64 %127, -1, !dbg !2030
  br i1 %132, label %135, label %133, !dbg !2032

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2033
  br i1 %134, label %597, label %139, !dbg !2035

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2037
  %137 = load i8, i8* %136, align 1, !dbg !2037, !tbaa !785
  %138 = icmp eq i8 %137, 0, !dbg !2039
  br i1 %138, label %597, label %139, !dbg !2035

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1906, metadata !644), !dbg !2040
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1907, metadata !644), !dbg !2041
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1908, metadata !644), !dbg !2042
  br i1 %109, label %140, label %155, !dbg !2043

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2045
  %142 = and i1 %110, %132, !dbg !2047
  br i1 %142, label %143, label %145, !dbg !2047

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1884, metadata !644), !dbg !1947
  br label %145, !dbg !2049

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1884, metadata !644), !dbg !1947
  %147 = icmp ugt i64 %141, %146, !dbg !2051
  br i1 %147, label %155, label %148, !dbg !2053

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2054
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2055
  %151 = icmp ne i32 %150, 0, !dbg !2056
  %152 = or i1 %151, %112, !dbg !2056
  %153 = xor i1 %151, true, !dbg !2056
  %154 = zext i1 %153 to i8, !dbg !2056
  br i1 %152, label %155, label %644, !dbg !2056

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1906, metadata !644), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1884, metadata !644), !dbg !1947
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2058
  %159 = load i8, i8* %158, align 1, !dbg !2058, !tbaa !785
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1901, metadata !644), !dbg !2059
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
  ], !dbg !2060

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2061

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2062

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1907, metadata !644), !dbg !2041
  %163 = and i8 %128, 1, !dbg !2067
  %164 = icmp eq i8 %163, 0, !dbg !2067
  %165 = and i1 %114, %164, !dbg !2070
  br i1 %165, label %166, label %182, !dbg !2070

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2072
  br i1 %167, label %168, label %170, !dbg !2077

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2079
  store i8 39, i8* %169, align 1, !dbg !2079, !tbaa !785
  br label %170, !dbg !2079

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1891, metadata !644), !dbg !1953
  %172 = icmp ult i64 %171, %131, !dbg !2083
  br i1 %172, label %173, label %175, !dbg !2087

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2089
  store i8 36, i8* %174, align 1, !dbg !2089, !tbaa !785
  br label %175, !dbg !2089

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1891, metadata !644), !dbg !1953
  %177 = icmp ult i64 %176, %131, !dbg !2093
  br i1 %177, label %178, label %180, !dbg !2097

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2099
  store i8 39, i8* %179, align 1, !dbg !2099, !tbaa !785
  br label %180, !dbg !2099

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1898, metadata !644), !dbg !1961
  br label %182, !dbg !2103

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1891, metadata !644), !dbg !1953
  %185 = icmp ult i64 %183, %131, !dbg !2105
  br i1 %185, label %186, label %188, !dbg !2109

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2111
  store i8 92, i8* %187, align 1, !dbg !2111, !tbaa !785
  br label %188, !dbg !2111

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1891, metadata !644), !dbg !1953
  br i1 %106, label %190, label %476, !dbg !2115

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2117
  %192 = icmp ult i64 %191, %156, !dbg !2119
  br i1 %192, label %193, label %476, !dbg !2120

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2121
  %195 = load i8, i8* %194, align 1, !dbg !2121, !tbaa !785
  %196 = add i8 %195, -48, !dbg !2123
  %197 = icmp ult i8 %196, 10, !dbg !2123
  br i1 %197, label %198, label %476, !dbg !2123

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2124
  br i1 %199, label %200, label %202, !dbg !2129

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2131
  store i8 48, i8* %201, align 1, !dbg !2131, !tbaa !785
  br label %202, !dbg !2131

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1891, metadata !644), !dbg !1953
  %204 = icmp ult i64 %203, %131, !dbg !2135
  br i1 %204, label %205, label %207, !dbg !2139

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2141
  store i8 48, i8* %206, align 1, !dbg !2141, !tbaa !785
  br label %207, !dbg !2141

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1891, metadata !644), !dbg !1953
  br label %476, !dbg !2145

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2146

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2147

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2148

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2150

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2152
  %215 = icmp ult i64 %214, %156, !dbg !2154
  br i1 %215, label %216, label %476, !dbg !2155

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2156
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2158
  %219 = load i8, i8* %218, align 1, !dbg !2158, !tbaa !785
  %220 = icmp eq i8 %219, 63, !dbg !2159
  br i1 %220, label %221, label %476, !dbg !2160

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2162
  %223 = load i8, i8* %222, align 1, !dbg !2162, !tbaa !785
  %224 = sext i8 %223 to i32, !dbg !2162
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
  ], !dbg !2163

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2164

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1901, metadata !644), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1890, metadata !644), !dbg !2028
  %227 = icmp ult i64 %125, %131, !dbg !2166
  br i1 %227, label %228, label %230, !dbg !2170

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2172
  store i8 63, i8* %229, align 1, !dbg !2172, !tbaa !785
  br label %230, !dbg !2172

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1891, metadata !644), !dbg !1953
  %232 = icmp ult i64 %231, %131, !dbg !2176
  br i1 %232, label %233, label %235, !dbg !2180

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2182
  store i8 34, i8* %234, align 1, !dbg !2182, !tbaa !785
  br label %235, !dbg !2182

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1891, metadata !644), !dbg !1953
  %237 = icmp ult i64 %236, %131, !dbg !2186
  br i1 %237, label %238, label %240, !dbg !2190

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2192
  store i8 34, i8* %239, align 1, !dbg !2192, !tbaa !785
  br label %240, !dbg !2192

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1891, metadata !644), !dbg !1953
  %242 = icmp ult i64 %241, %131, !dbg !2196
  br i1 %242, label %243, label %245, !dbg !2200

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2202
  store i8 63, i8* %244, align 1, !dbg !2202, !tbaa !785
  br label %245, !dbg !2202

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1891, metadata !644), !dbg !1953
  br label %476, !dbg !2206

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1905, metadata !644), !dbg !2207
  br label %257, !dbg !2208

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1905, metadata !644), !dbg !2207
  br label %257, !dbg !2209

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1905, metadata !644), !dbg !2207
  br label %255, !dbg !2210

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1905, metadata !644), !dbg !2207
  br label %255, !dbg !2211

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1905, metadata !644), !dbg !2207
  br label %257, !dbg !2212

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1905, metadata !644), !dbg !2207
  br i1 %114, label %253, label %254, !dbg !2213

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2214

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2217

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1905, metadata !644), !dbg !2207
  br i1 %118, label %257, label %644, !dbg !2219

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1905, metadata !644), !dbg !2207
  br i1 %105, label %503, label %476, !dbg !2221

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2222
  br i1 %260, label %261, label %266, !dbg !2224

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2225, !tbaa !785
  %263 = icmp ne i8 %262, 0, !dbg !2227
  %264 = icmp ne i64 %124, 0, !dbg !2228
  %265 = or i1 %264, %263, !dbg !2230
  br i1 %265, label %476, label %272, !dbg !2230

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2231
  %268 = icmp ne i64 %124, 0, !dbg !2228
  %269 = or i1 %268, %267, !dbg !2233
  br i1 %269, label %476, label %272, !dbg !2233

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2228
  br i1 %271, label %272, label %476, !dbg !2235

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1908, metadata !644), !dbg !2042
  br label %273, !dbg !2236

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1908, metadata !644), !dbg !2042
  br i1 %118, label %476, label %644, !dbg !2237

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1899, metadata !644), !dbg !1962
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1908, metadata !644), !dbg !2042
  br i1 %114, label %276, label %476, !dbg !2239

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2240

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2243
  %279 = icmp ne i64 %126, 0, !dbg !2245
  %280 = or i1 %279, %278, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1892, metadata !644), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1882, metadata !644), !dbg !1945
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2247
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1882, metadata !644), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1892, metadata !644), !dbg !1954
  %283 = icmp ult i64 %125, %282, !dbg !2248
  br i1 %283, label %284, label %286, !dbg !2252

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2254
  store i8 39, i8* %285, align 1, !dbg !2254, !tbaa !785
  br label %286, !dbg !2254

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1891, metadata !644), !dbg !1953
  %288 = icmp ult i64 %287, %282, !dbg !2258
  br i1 %288, label %289, label %291, !dbg !2262

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2264
  store i8 92, i8* %290, align 1, !dbg !2264, !tbaa !785
  br label %291, !dbg !2264

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1891, metadata !644), !dbg !1953
  %293 = icmp ult i64 %292, %282, !dbg !2268
  br i1 %293, label %294, label %296, !dbg !2272

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2274
  store i8 39, i8* %295, align 1, !dbg !2274, !tbaa !785
  br label %296, !dbg !2274

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1898, metadata !644), !dbg !1961
  br label %476, !dbg !2278

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2279

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1909, metadata !644), !dbg !2280
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2281
  %301 = load i16*, i16** %300, align 8, !dbg !2281, !tbaa !652
  %302 = zext i8 %159 to i64, !dbg !2281
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2281
  %304 = load i16, i16* %303, align 2, !dbg !2281, !tbaa !2283
  %305 = lshr i16 %304, 14, !dbg !2285
  %306 = trunc i16 %305 to i8, !dbg !2285
  %307 = and i8 %306, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1912, metadata !644), !dbg !2286
  br label %368, !dbg !2287

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2288
  store i64 0, i64* %10, align 8, !dbg !2289
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1909, metadata !644), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1912, metadata !644), !dbg !2286
  %309 = icmp eq i64 %156, -1, !dbg !2290
  br i1 %309, label %310, label %312, !dbg !2292, !llvm.loop !2293

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1884, metadata !644), !dbg !1947
  br label %312, !dbg !2297, !llvm.loop !2293

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2286

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1912, metadata !644), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1909, metadata !644), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1884, metadata !644), !dbg !1947
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2298
  %317 = add i64 %315, %124, !dbg !2299
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2300
  %319 = sub i64 %313, %317, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1913, metadata !826), !dbg !2302
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1930, metadata !826), !dbg !2303
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1933, metadata !644), !dbg !2305
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2306

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1909, metadata !644), !dbg !2280
  %322 = icmp ugt i64 %313, %317, !dbg !2307
  br i1 %322, label %323, label %351, !dbg !2310

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2311

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2311
  %328 = load i8, i8* %327, align 1, !dbg !2311, !tbaa !785
  %329 = icmp eq i8 %328, 0, !dbg !2313
  br i1 %329, label %348, label %330, !dbg !2314

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1909, metadata !644), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1909, metadata !644), !dbg !2280
  %332 = add i64 %331, %124, !dbg !2317
  %333 = icmp ult i64 %332, %313, !dbg !2307
  br i1 %333, label %324, label %348, !dbg !2310, !llvm.loop !2318

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2320
  %336 = and i1 %116, %335, !dbg !2324
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1934, metadata !644), !dbg !2325
  br i1 %336, label %337, label %355, !dbg !2324

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2326

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2326
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2327
  %342 = load i8, i8* %341, align 1, !dbg !2327, !tbaa !785
  %343 = sext i8 %342 to i32, !dbg !2327
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2328

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1934, metadata !644), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1934, metadata !644), !dbg !2325
  %346 = icmp ult i64 %345, %320, !dbg !2320
  br i1 %346, label %338, label %354, !dbg !2331, !llvm.loop !2333

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2286

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2286

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2286

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1912, metadata !644), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1909, metadata !644), !dbg !2280
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2336
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2337

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2337, !tbaa !725
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1930, metadata !644), !dbg !2303
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2339
  %358 = icmp eq i32 %357, 0, !dbg !2339
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1912, metadata !644), !dbg !2286
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2340
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1912, metadata !644), !dbg !2286
  %360 = add i64 %320, %315, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1909, metadata !644), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1912, metadata !644), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1909, metadata !644), !dbg !2280
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2336
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1913, metadata !826), !dbg !2302
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2342
  %362 = icmp eq i32 %361, 0, !dbg !2343
  br i1 %362, label %314, label %363, !dbg !2344, !llvm.loop !2293

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2346

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2346
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1912, metadata !644), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1909, metadata !644), !dbg !2280
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2336
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2346
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1912, metadata !644), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1909, metadata !644), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1884, metadata !644), !dbg !1947
  %372 = and i8 %371, 1, !dbg !2347
  %373 = icmp ne i8 %372, 0, !dbg !2347
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1908, metadata !644), !dbg !2042
  %374 = icmp ult i64 %370, 2, !dbg !2348
  %375 = or i1 %373, %113, !dbg !2349
  %376 = and i1 %374, %375, !dbg !2351
  br i1 %376, label %476, label %377, !dbg !2351

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1941, metadata !644), !dbg !2353
  br label %379, !dbg !2354

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1907, metadata !644), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1906, metadata !644), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1901, metadata !644), !dbg !2059
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1890, metadata !644), !dbg !2028
  br i1 %375, label %432, label %386, !dbg !2355

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2360

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1907, metadata !644), !dbg !2041
  %388 = and i8 %382, 1, !dbg !2364
  %389 = icmp eq i8 %388, 0, !dbg !2364
  %390 = and i1 %114, %389, !dbg !2367
  br i1 %390, label %391, label %407, !dbg !2367

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2369
  br i1 %392, label %393, label %395, !dbg !2374

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2376
  store i8 39, i8* %394, align 1, !dbg !2376, !tbaa !785
  br label %395, !dbg !2376

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1891, metadata !644), !dbg !1953
  %397 = icmp ult i64 %396, %131, !dbg !2380
  br i1 %397, label %398, label %400, !dbg !2384

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2386
  store i8 36, i8* %399, align 1, !dbg !2386, !tbaa !785
  br label %400, !dbg !2386

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1891, metadata !644), !dbg !1953
  %402 = icmp ult i64 %401, %131, !dbg !2390
  br i1 %402, label %403, label %405, !dbg !2394

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2396
  store i8 39, i8* %404, align 1, !dbg !2396, !tbaa !785
  br label %405, !dbg !2396

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1898, metadata !644), !dbg !1961
  br label %407, !dbg !2400

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1891, metadata !644), !dbg !1953
  %410 = icmp ult i64 %408, %131, !dbg !2402
  br i1 %410, label %411, label %413, !dbg !2406

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2408
  store i8 92, i8* %412, align 1, !dbg !2408, !tbaa !785
  br label %413, !dbg !2408

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1891, metadata !644), !dbg !1953
  %415 = icmp ult i64 %414, %131, !dbg !2412
  br i1 %415, label %416, label %420, !dbg !2416

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2418
  %418 = or i8 %417, 48, !dbg !2418
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2418
  store i8 %418, i8* %419, align 1, !dbg !2418, !tbaa !785
  br label %420, !dbg !2418

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1891, metadata !644), !dbg !1953
  %422 = icmp ult i64 %421, %131, !dbg !2422
  br i1 %422, label %423, label %428, !dbg !2426

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2428
  %425 = and i8 %424, 7, !dbg !2428
  %426 = or i8 %425, 48, !dbg !2428
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2428
  store i8 %426, i8* %427, align 1, !dbg !2428, !tbaa !785
  br label %428, !dbg !2428

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1891, metadata !644), !dbg !1953
  %430 = and i8 %383, 7, !dbg !2432
  %431 = or i8 %430, 48, !dbg !2433
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1901, metadata !644), !dbg !2059
  br label %441, !dbg !2434

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2435
  %434 = icmp eq i8 %433, 0, !dbg !2435
  br i1 %434, label %441, label %435, !dbg !2437

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2438
  br i1 %436, label %437, label %439, !dbg !2443

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2445
  store i8 92, i8* %438, align 1, !dbg !2445, !tbaa !785
  br label %439, !dbg !2445

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1906, metadata !644), !dbg !2040
  br label %441, !dbg !2449

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1907, metadata !644), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1906, metadata !644), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1901, metadata !644), !dbg !2059
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1891, metadata !644), !dbg !1953
  %447 = add i64 %380, 1, !dbg !2450
  %448 = icmp ugt i64 %378, %447, !dbg !2452
  br i1 %448, label %449, label %541, !dbg !2453

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2454
  %451 = icmp ne i8 %450, 0, !dbg !2454
  %452 = and i8 %446, 1, !dbg !2458
  %453 = icmp eq i8 %452, 0, !dbg !2458
  %454 = and i1 %451, %453, !dbg !2454
  br i1 %454, label %455, label %466, !dbg !2454

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2460
  br i1 %456, label %457, label %459, !dbg !2465

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2467
  store i8 39, i8* %458, align 1, !dbg !2467, !tbaa !785
  br label %459, !dbg !2467

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1891, metadata !644), !dbg !1953
  %461 = icmp ult i64 %460, %131, !dbg !2471
  br i1 %461, label %462, label %464, !dbg !2475

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2477
  store i8 39, i8* %463, align 1, !dbg !2477, !tbaa !785
  br label %464, !dbg !2477

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1898, metadata !644), !dbg !1961
  br label %466, !dbg !2481

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1891, metadata !644), !dbg !1953
  %469 = icmp ult i64 %467, %131, !dbg !2483
  br i1 %469, label %470, label %472, !dbg !2487

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2489
  store i8 %444, i8* %471, align 1, !dbg !2489, !tbaa !785
  br label %472, !dbg !2489

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1890, metadata !644), !dbg !2028
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2493
  %475 = load i8, i8* %474, align 1, !dbg !2493, !tbaa !785
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1901, metadata !644), !dbg !2059
  br label %379, !dbg !2494, !llvm.loop !2496

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1882, metadata !644), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1908, metadata !644), !dbg !2042
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1907, metadata !644), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1906, metadata !644), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1901, metadata !644), !dbg !2059
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1899, metadata !644), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1884, metadata !644), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1892, metadata !644), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1890, metadata !644), !dbg !2028
  br i1 %107, label %488, label %487, !dbg !2499

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2501

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2502

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2503
  %491 = zext i8 %490 to i64, !dbg !2503
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2505
  %493 = load i32, i32* %492, align 4, !dbg !2505, !tbaa !725
  %494 = and i8 %483, 31, !dbg !2506
  %495 = zext i8 %494 to i32, !dbg !2507
  %496 = shl i32 1, %495, !dbg !2508
  %497 = and i32 %493, %496, !dbg !2508
  %498 = icmp eq i32 %497, 0, !dbg !2508
  %499 = icmp eq i8 %157, 0, !dbg !2509
  %500 = and i1 %499, %498, !dbg !2510
  br i1 %500, label %542, label %503, !dbg !2510

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2509
  br i1 %502, label %542, label %503, !dbg !2511

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1882, metadata !644), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1908, metadata !644), !dbg !2042
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1901, metadata !644), !dbg !2059
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1899, metadata !644), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1884, metadata !644), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1892, metadata !644), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1890, metadata !644), !dbg !2028
  br i1 %112, label %513, label %644, !dbg !2513

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1907, metadata !644), !dbg !2041
  %514 = and i8 %508, 1, !dbg !2516
  %515 = icmp eq i8 %514, 0, !dbg !2516
  %516 = and i1 %114, %515, !dbg !2519
  br i1 %516, label %517, label %533, !dbg !2519

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2521
  br i1 %518, label %519, label %521, !dbg !2526

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2528
  store i8 39, i8* %520, align 1, !dbg !2528, !tbaa !785
  br label %521, !dbg !2528

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1891, metadata !644), !dbg !1953
  %523 = icmp ult i64 %522, %512, !dbg !2532
  br i1 %523, label %524, label %526, !dbg !2536

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2538
  store i8 36, i8* %525, align 1, !dbg !2538, !tbaa !785
  br label %526, !dbg !2538

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1891, metadata !644), !dbg !1953
  %528 = icmp ult i64 %527, %512, !dbg !2542
  br i1 %528, label %529, label %531, !dbg !2546

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2548
  store i8 39, i8* %530, align 1, !dbg !2548, !tbaa !785
  br label %531, !dbg !2548

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1898, metadata !644), !dbg !1961
  br label %533, !dbg !2552

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1891, metadata !644), !dbg !1953
  %536 = icmp ult i64 %534, %512, !dbg !2554
  br i1 %536, label %537, label %539, !dbg !2558

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2560
  store i8 92, i8* %538, align 1, !dbg !2560, !tbaa !785
  br label %539, !dbg !2560

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1882, metadata !644), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1908, metadata !644), !dbg !2042
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1907, metadata !644), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1901, metadata !644), !dbg !2059
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1899, metadata !644), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1884, metadata !644), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1892, metadata !644), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1890, metadata !644), !dbg !2028
  br label %569, !dbg !2564

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1945

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1882, metadata !644), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1908, metadata !644), !dbg !2042
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1907, metadata !644), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1901, metadata !644), !dbg !2059
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1899, metadata !644), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1884, metadata !644), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1892, metadata !644), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1890, metadata !644), !dbg !2028
  %553 = and i8 %547, 1, !dbg !2564
  %554 = icmp ne i8 %553, 0, !dbg !2564
  %555 = and i8 %550, 1, !dbg !2568
  %556 = icmp eq i8 %555, 0, !dbg !2568
  %557 = and i1 %554, %556, !dbg !2564
  br i1 %557, label %558, label %569, !dbg !2564

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2570
  br i1 %559, label %560, label %562, !dbg !2575

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2577
  store i8 39, i8* %561, align 1, !dbg !2577, !tbaa !785
  br label %562, !dbg !2577

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1891, metadata !644), !dbg !1953
  %564 = icmp ult i64 %563, %552, !dbg !2581
  br i1 %564, label %565, label %567, !dbg !2585

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2587
  store i8 39, i8* %566, align 1, !dbg !2587, !tbaa !785
  br label %567, !dbg !2587

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1891, metadata !644), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1898, metadata !644), !dbg !1961
  br label %569, !dbg !2591

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1898, metadata !644), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1891, metadata !644), !dbg !1953
  %579 = icmp ult i64 %577, %570, !dbg !2593
  br i1 %579, label %580, label %582, !dbg !2597

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2599
  store i8 %572, i8* %581, align 1, !dbg !2599, !tbaa !785
  br label %582, !dbg !2599

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1891, metadata !644), !dbg !1953
  %584 = and i8 %571, 1, !dbg !2603
  %585 = icmp eq i8 %584, 0, !dbg !2603
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1900, metadata !644), !dbg !1963
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2605
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1900, metadata !644), !dbg !1963
  br label %587, !dbg !2606

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1890, metadata !644), !dbg !2028
  br label %123, !dbg !2609, !llvm.loop !2610

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2613
  %600 = and i1 %114, %599, !dbg !2615
  %601 = xor i1 %600, true, !dbg !2615
  %602 = or i1 %112, %601, !dbg !2615
  br i1 %602, label %603, label %648, !dbg !2615

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2616
  %605 = xor i1 %604, true, !dbg !2616
  %606 = and i8 %129, 1, !dbg !2618
  %607 = icmp eq i8 %606, 0, !dbg !2618
  %608 = or i1 %607, %605, !dbg !2616
  br i1 %608, label %618, label %609, !dbg !2616

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2620
  %611 = icmp eq i8 %610, 0, !dbg !2620
  br i1 %611, label %614, label %612, !dbg !2623

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2624
  br label %659, !dbg !2625

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2626
  %616 = icmp ne i64 %126, 0, !dbg !2628
  %617 = and i1 %616, %615, !dbg !2630
  br i1 %617, label %27, label %618, !dbg !2630

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2631
  %620 = and i1 %619, %112, !dbg !2633
  br i1 %620, label %621, label %638, !dbg !2633

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1893, metadata !644), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1891, metadata !644), !dbg !1953
  %622 = load i8, i8* %100, align 1, !dbg !2634, !tbaa !785
  %623 = icmp eq i8 %622, 0, !dbg !2638
  br i1 %623, label %638, label %624, !dbg !2638

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2640

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2640
  br i1 %629, label %630, label %632, !dbg !2644

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2646
  store i8 %626, i8* %631, align 1, !dbg !2646, !tbaa !785
  br label %632, !dbg !2646

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1891, metadata !644), !dbg !1953
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1893, metadata !644), !dbg !1955
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1893, metadata !644), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1891, metadata !644), !dbg !1953
  %635 = load i8, i8* %634, align 1, !dbg !2634, !tbaa !785
  %636 = icmp eq i8 %635, 0, !dbg !2638
  br i1 %636, label %637, label %625, !dbg !2638, !llvm.loop !2652

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1953

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1891, metadata !644), !dbg !1953
  %640 = icmp ult i64 %639, %131, !dbg !2655
  br i1 %640, label %641, label %659, !dbg !2657

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2658
  store i8 0, i8* %642, align 1, !dbg !2659, !tbaa !785
  br label %659, !dbg !2658

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1945

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1945

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1945

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1882, metadata !644), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1884, metadata !644), !dbg !1947
  %653 = icmp ne i32 %650, 2, !dbg !2660
  %654 = icmp eq i8 %104, 0, !dbg !2662
  %655 = or i1 %653, %654, !dbg !2664
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1885, metadata !644), !dbg !1948
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1885, metadata !644), !dbg !1948
  %657 = and i32 %5, -3, !dbg !2665
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2666
  br label %659, !dbg !2667

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2668
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2669 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2673, metadata !644), !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2674, metadata !644), !dbg !2678
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2679
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2675, metadata !644), !dbg !2680
  %4 = icmp eq i8* %3, %0, !dbg !2681
  br i1 %4, label %5, label %75, !dbg !2683

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2684
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2676, metadata !644), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2686, metadata !644), !dbg !2702
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2700, metadata !644), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2701, metadata !644), !dbg !2706
  %7 = load i8, i8* %6, align 1, !tbaa !785
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2707
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2707

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2710, metadata !644), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2722, metadata !644), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2723, metadata !644), !dbg !2729
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !785
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2730
  %15 = icmp eq i32 %14, 84, !dbg !2730
  br i1 %15, label %16, label %72, !dbg !2730

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2733, metadata !644), !dbg !2746
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !644), !dbg !2750
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2745, metadata !644), !dbg !2751
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !785
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2752
  %21 = icmp eq i32 %20, 70, !dbg !2752
  br i1 %21, label %22, label %72, !dbg !2752

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2755, metadata !644), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2765, metadata !644), !dbg !2771
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2766, metadata !644), !dbg !2772
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !785
  %25 = icmp eq i8 %24, 45, !dbg !2773
  br i1 %25, label %26, label %72, !dbg !2776

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2778, metadata !644), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2787, metadata !644), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2788, metadata !644), !dbg !2794
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !785
  %29 = icmp eq i8 %28, 56, !dbg !2795
  br i1 %29, label %30, label %72, !dbg !2798

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2800, metadata !644), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2808, metadata !644), !dbg !2814
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2809, metadata !644), !dbg !2815
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !785
  %33 = icmp eq i8 %32, 0, !dbg !2816
  br i1 %33, label %34, label %72, !dbg !2819

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2821, !tbaa !785
  %36 = icmp eq i8 %35, 96, !dbg !2822
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !2821
  br label %75, !dbg !2823

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2710, metadata !644), !dbg !2824
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2722, metadata !644), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2723, metadata !644), !dbg !2829
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !785
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2830
  %43 = icmp eq i32 %42, 66, !dbg !2830
  br i1 %43, label %44, label %72, !dbg !2830

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2733, metadata !644), !dbg !2831
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !644), !dbg !2833
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2745, metadata !644), !dbg !2834
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !785
  %47 = icmp eq i8 %46, 49, !dbg !2835
  br i1 %47, label %48, label %72, !dbg !2837

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2755, metadata !644), !dbg !2839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2765, metadata !644), !dbg !2841
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2766, metadata !644), !dbg !2842
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !785
  %51 = icmp eq i8 %50, 56, !dbg !2843
  br i1 %51, label %52, label %72, !dbg !2844

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2778, metadata !644), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2787, metadata !644), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2788, metadata !644), !dbg !2848
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !785
  %55 = icmp eq i8 %54, 48, !dbg !2849
  br i1 %55, label %56, label %72, !dbg !2850

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2800, metadata !644), !dbg !2851
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2808, metadata !644), !dbg !2853
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2809, metadata !644), !dbg !2854
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !785
  %59 = icmp eq i8 %58, 51, !dbg !2855
  br i1 %59, label %60, label %72, !dbg !2856

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2857, metadata !644), !dbg !2866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2864, metadata !644), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2865, metadata !644), !dbg !2871
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !785
  %63 = icmp eq i8 %62, 48, !dbg !2872
  br i1 %63, label %64, label %72, !dbg !2875

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2877, metadata !644), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2883, metadata !644), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2884, metadata !644), !dbg !2890
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !785
  %67 = icmp eq i8 %66, 0, !dbg !2891
  br i1 %67, label %68, label %72, !dbg !2894

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2895, !tbaa !785
  %70 = icmp eq i8 %69, 96, !dbg !2896
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2895
  br label %75, !dbg !2897

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2898
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2899
  br label %75, !dbg !2900

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2901
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2902 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2906, metadata !644), !dbg !2909
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2907, metadata !644), !dbg !2910
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2908, metadata !644), !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2912, metadata !644) #10, !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2917, metadata !644) #10, !dbg !2927
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2918, metadata !644) #10, !dbg !2928
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2919, metadata !644) #10, !dbg !2929
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2930
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2930
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2920, metadata !644) #10, !dbg !2931
  %6 = tail call i32* @__errno_location() #1, !dbg !2932
  %7 = load i32, i32* %6, align 4, !dbg !2932, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2921, metadata !644) #10, !dbg !2933
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2934
  %9 = load i32, i32* %8, align 4, !dbg !2934, !tbaa !1813
  %10 = or i32 %9, 1, !dbg !2935
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2922, metadata !644) #10, !dbg !2936
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2937
  %12 = load i32, i32* %11, align 8, !dbg !2937, !tbaa !1751
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2938
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2939
  %15 = load i8*, i8** %14, align 8, !dbg !2939, !tbaa !1840
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2940
  %17 = load i8*, i8** %16, align 8, !dbg !2940, !tbaa !1843
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2941
  %19 = add i64 %18, 1, !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2923, metadata !644) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2944, metadata !644) #10, !dbg !2949
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2951
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2924, metadata !644) #10, !dbg !2952
  %21 = load i32, i32* %11, align 8, !dbg !2953, !tbaa !1751
  %22 = load i8*, i8** %14, align 8, !dbg !2954, !tbaa !1840
  %23 = load i8*, i8** %16, align 8, !dbg !2955, !tbaa !1843
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2956
  store i32 %7, i32* %6, align 4, !dbg !2957, !tbaa !725
  ret i8* %20, !dbg !2958
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2913 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2912, metadata !644), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2917, metadata !644), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2918, metadata !644), !dbg !2961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2919, metadata !644), !dbg !2962
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2963
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2963
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2920, metadata !644), !dbg !2964
  %7 = tail call i32* @__errno_location() #1, !dbg !2965
  %8 = load i32, i32* %7, align 4, !dbg !2965, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2921, metadata !644), !dbg !2966
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2967
  %10 = load i32, i32* %9, align 4, !dbg !2967, !tbaa !1813
  %11 = icmp ne i64* %2, null, !dbg !2968
  %12 = xor i1 %11, true, !dbg !2968
  %13 = zext i1 %12 to i32, !dbg !2968
  %14 = or i32 %10, %13, !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2922, metadata !644), !dbg !2970
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2971
  %16 = load i32, i32* %15, align 8, !dbg !2971, !tbaa !1751
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2972
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2973
  %19 = load i8*, i8** %18, align 8, !dbg !2973, !tbaa !1840
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2974
  %21 = load i8*, i8** %20, align 8, !dbg !2974, !tbaa !1843
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2975
  %23 = add i64 %22, 1, !dbg !2976
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2923, metadata !644), !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2944, metadata !644) #10, !dbg !2978
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2924, metadata !644), !dbg !2981
  %25 = load i32, i32* %15, align 8, !dbg !2982, !tbaa !1751
  %26 = load i8*, i8** %18, align 8, !dbg !2983, !tbaa !1840
  %27 = load i8*, i8** %20, align 8, !dbg !2984, !tbaa !1843
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2985
  store i32 %8, i32* %7, align 4, !dbg !2986, !tbaa !725
  br i1 %11, label %29, label %30, !dbg !2987

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2988, !tbaa !1102
  br label %30, !dbg !2990

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2991
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2992 {
  %1 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2996, !tbaa !652
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %1, i64 0, metadata !2994, metadata !644), !dbg !2997
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2995, metadata !644), !dbg !2998
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2995, metadata !644), !dbg !2998
  %2 = load i32, i32* @nslots, align 4, !dbg !2999, !tbaa !725
  %3 = icmp sgt i32 %2, 1, !dbg !3003
  br i1 %3, label %4, label %14, !dbg !3004

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3006

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 %6, i32 1, !dbg !3006
  %8 = load i8*, i8** %7, align 8, !dbg !3006, !tbaa !3007
  tail call void @free(i8* %8) #10, !dbg !3009
  %9 = add nuw i64 %6, 1, !dbg !3010
  %10 = load i32, i32* @nslots, align 4, !dbg !2999, !tbaa !725
  %11 = sext i32 %10 to i64, !dbg !3003
  %12 = icmp slt i64 %9, %11, !dbg !3003
  br i1 %12, label %5, label %13, !dbg !3004, !llvm.loop !3012

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3015

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 0, i32 1, !dbg !3015
  %16 = load i8*, i8** %15, align 8, !dbg !3015, !tbaa !3007
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3017
  br i1 %17, label %19, label %18, !dbg !3018

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3019
  store i64 256, i64* getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 0), align 8, !dbg !3021, !tbaa !3022
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 1), align 8, !dbg !3023, !tbaa !3007
  br label %19, !dbg !3024

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.tokenbuffer* %1, @slotvec0, !dbg !3025
  br i1 %20, label %23, label %21, !dbg !3027

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.tokenbuffer* %1 to i8*, !dbg !3028
  tail call void @free(i8* %22) #10, !dbg !3030
  store %struct.tokenbuffer* @slotvec0, %struct.tokenbuffer** @slotvec, align 8, !dbg !3031, !tbaa !652
  br label %23, !dbg !3032

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3033, !tbaa !725
  ret void, !dbg !3034
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3035 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3039, metadata !644), !dbg !3041
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3040, metadata !644), !dbg !3042
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3043
  ret i8* %3, !dbg !3044
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3045 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3049, metadata !644), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3050, metadata !644), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3051, metadata !644), !dbg !3065
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3052, metadata !644), !dbg !3066
  %5 = tail call i32* @__errno_location() #1, !dbg !3067
  %6 = load i32, i32* %5, align 4, !dbg !3067, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3053, metadata !644), !dbg !3068
  %7 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !3069, !tbaa !652
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3054, metadata !644), !dbg !3070
  %8 = icmp slt i32 %0, 0, !dbg !3071
  br i1 %8, label %9, label %10, !dbg !3073

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3074
  unreachable, !dbg !3074

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3075, !tbaa !725
  %12 = icmp sgt i32 %11, %0, !dbg !3076
  br i1 %12, label %34, label %13, !dbg !3077

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.tokenbuffer* %7, @slotvec0, !dbg !3078
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3079
  br i1 %15, label %16, label %17, !dbg !3081

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3082
  unreachable, !dbg !3082

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.tokenbuffer* %7 to i8*, !dbg !3083
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3083
  %20 = add nsw i32 %0, 1, !dbg !3085
  %21 = sext i32 %20 to i64, !dbg !3086
  %22 = shl nsw i64 %21, 4, !dbg !3087
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3088
  %24 = bitcast i8* %23 to %struct.tokenbuffer*, !dbg !3088
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %24, i64 0, metadata !3054, metadata !644), !dbg !3070
  store i8* %23, i8** bitcast (%struct.tokenbuffer** @slotvec to i8**), align 8, !dbg !3089, !tbaa !652
  br i1 %14, label %25, label %26, !dbg !3090

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.tokenbuffer* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3091, !tbaa.struct !3093
  br label %26, !dbg !3094

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3095, !tbaa !725
  %28 = sext i32 %27 to i64, !dbg !3096
  %29 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %24, i64 %28, !dbg !3096
  %30 = bitcast %struct.tokenbuffer* %29 to i8*, !dbg !3097
  %31 = sub nsw i32 %20, %27, !dbg !3098
  %32 = sext i32 %31 to i64, !dbg !3099
  %33 = shl nsw i64 %32, 4, !dbg !3100
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3097
  store i32 %20, i32* @nslots, align 4, !dbg !3101, !tbaa !725
  br label %34, !dbg !3102

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.tokenbuffer* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %35, i64 0, metadata !3054, metadata !644), !dbg !3070
  %36 = sext i32 %0 to i64, !dbg !3103
  %37 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 0, !dbg !3104
  %38 = load i64, i64* %37, align 8, !dbg !3104, !tbaa !3022
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3058, metadata !644), !dbg !3105
  %39 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 1, !dbg !3106
  %40 = load i8*, i8** %39, align 8, !dbg !3106, !tbaa !3007
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3060, metadata !644), !dbg !3107
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3108
  %42 = load i32, i32* %41, align 4, !dbg !3108, !tbaa !1813
  %43 = or i32 %42, 1, !dbg !3109
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3061, metadata !644), !dbg !3110
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3111
  %45 = load i32, i32* %44, align 8, !dbg !3111, !tbaa !1751
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3112
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3113
  %48 = load i8*, i8** %47, align 8, !dbg !3113, !tbaa !1840
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3114
  %50 = load i8*, i8** %49, align 8, !dbg !3114, !tbaa !1843
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3062, metadata !644), !dbg !3116
  %52 = icmp ugt i64 %38, %51, !dbg !3117
  br i1 %52, label %63, label %53, !dbg !3119

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3058, metadata !644), !dbg !3105
  store i64 %54, i64* %37, align 8, !dbg !3122, !tbaa !3022
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3123
  br i1 %55, label %57, label %56, !dbg !3125

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3126
  br label %57, !dbg !3126

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2944, metadata !644) #10, !dbg !3127
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3129
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3060, metadata !644), !dbg !3107
  store i8* %58, i8** %39, align 8, !dbg !3130, !tbaa !3007
  %59 = load i32, i32* %44, align 8, !dbg !3131, !tbaa !1751
  %60 = load i8*, i8** %47, align 8, !dbg !3132, !tbaa !1840
  %61 = load i8*, i8** %49, align 8, !dbg !3133, !tbaa !1843
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3134
  br label %63, !dbg !3135

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3060, metadata !644), !dbg !3107
  store i32 %6, i32* %5, align 4, !dbg !3136, !tbaa !725
  ret i8* %64, !dbg !3137
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3138 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3142, metadata !644), !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3143, metadata !644), !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3144, metadata !644), !dbg !3147
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3148
  ret i8* %4, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3150 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3154, metadata !644), !dbg !3155
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3039, metadata !644) #10, !dbg !3156
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3040, metadata !644) #10, !dbg !3158
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3159
  ret i8* %2, !dbg !3160
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3161 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3165, metadata !644), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3166, metadata !644), !dbg !3168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3142, metadata !644) #10, !dbg !3169
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3143, metadata !644) #10, !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3144, metadata !644) #10, !dbg !3172
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3173
  ret i8* %3, !dbg !3174
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3175 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3183, metadata !3189), !dbg !3190
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3179, metadata !644), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3180, metadata !644), !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3181, metadata !644), !dbg !3194
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3195
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3195
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3182, metadata !826), !dbg !3196
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3188, metadata !644) #10, !dbg !3197
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3198
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3198
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3183, metadata !644) #10, !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3183, metadata !3199) #10, !dbg !3190
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3190
  %8 = icmp eq i32 %1, 10, !dbg !3200
  br i1 %8, label %9, label %10, !dbg !3202

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3203, !noalias !3204
  unreachable, !dbg !3203

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3183, metadata !3199) #10, !dbg !3190
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3207
  store i32 %1, i32* %11, align 8, !dbg !3207, !alias.scope !3204
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3207
  %13 = bitcast i32* %12 to i8*, !dbg !3207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3207
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3208
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3182, metadata !826), !dbg !3196
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3209
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3210
  ret i8* %14, !dbg !3211
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3212 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3183, metadata !3189), !dbg !3221
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3216, metadata !644), !dbg !3223
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3217, metadata !644), !dbg !3224
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3218, metadata !644), !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3219, metadata !644), !dbg !3226
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3227
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3227
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3220, metadata !826), !dbg !3228
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3188, metadata !644) #10, !dbg !3229
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3230
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3230
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3183, metadata !644) #10, !dbg !3221
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3183, metadata !3199) #10, !dbg !3221
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3221
  %9 = icmp eq i32 %1, 10, !dbg !3231
  br i1 %9, label %10, label %11, !dbg !3232

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3233, !noalias !3234
  unreachable, !dbg !3233

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3183, metadata !3199) #10, !dbg !3221
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3237
  store i32 %1, i32* %12, align 8, !dbg !3237, !alias.scope !3234
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3237
  %14 = bitcast i32* %13 to i8*, !dbg !3237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3237
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3238
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3220, metadata !826), !dbg !3228
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3239
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3240
  ret i8* %15, !dbg !3241
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3242 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3183, metadata !3189), !dbg !3248
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3246, metadata !644), !dbg !3251
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3247, metadata !644), !dbg !3252
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3179, metadata !644) #10, !dbg !3253
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3180, metadata !644) #10, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3181, metadata !644) #10, !dbg !3255
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3256
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3256
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3182, metadata !826) #10, !dbg !3257
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3188, metadata !644) #10, !dbg !3258
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3259
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3259
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3183, metadata !644) #10, !dbg !3248
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3183, metadata !3199) #10, !dbg !3248
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3248
  %7 = icmp eq i32 %0, 10, !dbg !3260
  br i1 %7, label %8, label %9, !dbg !3261

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3262, !noalias !3263
  unreachable, !dbg !3262

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3183, metadata !3199) #10, !dbg !3248
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3266
  store i32 %0, i32* %10, align 8, !dbg !3266, !alias.scope !3263
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3266
  %12 = bitcast i32* %11 to i8*, !dbg !3266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3266
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3182, metadata !826) #10, !dbg !3257
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3268
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3269
  ret i8* %13, !dbg !3270
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3271 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3183, metadata !3189), !dbg !3278
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3275, metadata !644), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3276, metadata !644), !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3277, metadata !644), !dbg !3283
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3216, metadata !644) #10, !dbg !3284
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3217, metadata !644) #10, !dbg !3285
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3218, metadata !644) #10, !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3219, metadata !644) #10, !dbg !3287
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3288
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3288
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3220, metadata !826) #10, !dbg !3289
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3188, metadata !644) #10, !dbg !3290
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3291
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3291
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3183, metadata !644) #10, !dbg !3278
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3183, metadata !3199) #10, !dbg !3278
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3278
  %8 = icmp eq i32 %0, 10, !dbg !3292
  br i1 %8, label %9, label %10, !dbg !3293

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3294, !noalias !3295
  unreachable, !dbg !3294

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3183, metadata !3199) #10, !dbg !3278
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3298
  store i32 %0, i32* %11, align 8, !dbg !3298, !alias.scope !3295
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3298
  %13 = bitcast i32* %12 to i8*, !dbg !3298
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3298
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3299
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3220, metadata !826) #10, !dbg !3289
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3300
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3301
  ret i8* %14, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3303 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3307, metadata !644), !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3308, metadata !644), !dbg !3312
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3309, metadata !644), !dbg !3313
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3314
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3315, !tbaa.struct !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3310, metadata !826), !dbg !3317
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1771, metadata !644), !dbg !3318
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1772, metadata !644), !dbg !3320
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1773, metadata !644), !dbg !3321
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1774, metadata !644), !dbg !3322
  %6 = lshr i8 %2, 5, !dbg !3323
  %7 = zext i8 %6 to i64, !dbg !3323
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3324
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1775, metadata !644), !dbg !3325
  %9 = and i8 %2, 31, !dbg !3326
  %10 = zext i8 %9 to i32, !dbg !3327
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1777, metadata !644), !dbg !3328
  %11 = load i32, i32* %8, align 4, !dbg !3329, !tbaa !725
  %12 = lshr i32 %11, %10, !dbg !3330
  %13 = and i32 %12, 1, !dbg !3331
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1778, metadata !644), !dbg !3332
  %14 = xor i32 %13, 1, !dbg !3333
  %15 = shl i32 %14, %10, !dbg !3334
  %16 = xor i32 %15, %11, !dbg !3335
  store i32 %16, i32* %8, align 4, !dbg !3335, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3310, metadata !826), !dbg !3317
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3336
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3337
  ret i8* %17, !dbg !3338
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3339 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3343, metadata !644), !dbg !3345
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3344, metadata !644), !dbg !3346
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3307, metadata !644) #10, !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3308, metadata !644) #10, !dbg !3349
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3309, metadata !644) #10, !dbg !3350
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3351
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3352, !tbaa.struct !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3310, metadata !826) #10, !dbg !3353
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1771, metadata !644) #10, !dbg !3354
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1772, metadata !644) #10, !dbg !3356
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1773, metadata !644) #10, !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1774, metadata !644) #10, !dbg !3358
  %5 = lshr i8 %1, 5, !dbg !3359
  %6 = zext i8 %5 to i64, !dbg !3359
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3360
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1775, metadata !644) #10, !dbg !3361
  %8 = and i8 %1, 31, !dbg !3362
  %9 = zext i8 %8 to i32, !dbg !3363
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1777, metadata !644) #10, !dbg !3364
  %10 = load i32, i32* %7, align 4, !dbg !3365, !tbaa !725
  %11 = lshr i32 %10, %9, !dbg !3366
  %12 = and i32 %11, 1, !dbg !3367
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1778, metadata !644) #10, !dbg !3368
  %13 = xor i32 %12, 1, !dbg !3369
  %14 = shl i32 %13, %9, !dbg !3370
  %15 = xor i32 %14, %10, !dbg !3371
  store i32 %15, i32* %7, align 4, !dbg !3371, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3310, metadata !826) #10, !dbg !3353
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3372
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3373
  ret i8* %16, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3375 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3377, metadata !644), !dbg !3378
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3343, metadata !644) #10, !dbg !3379
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3344, metadata !644) #10, !dbg !3381
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3307, metadata !644) #10, !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3308, metadata !644) #10, !dbg !3384
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3309, metadata !644) #10, !dbg !3385
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3386
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3387, !tbaa.struct !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3310, metadata !826) #10, !dbg !3388
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1771, metadata !644) #10, !dbg !3389
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1772, metadata !644) #10, !dbg !3391
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1773, metadata !644) #10, !dbg !3392
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1774, metadata !644) #10, !dbg !3393
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3394
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1775, metadata !644) #10, !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1777, metadata !644) #10, !dbg !3396
  %5 = load i32, i32* %4, align 4, !dbg !3397, !tbaa !725
  %6 = or i32 %5, 67108864, !dbg !3398
  store i32 %6, i32* %4, align 4, !dbg !3398, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3310, metadata !826) #10, !dbg !3388
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3399
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3400
  ret i8* %7, !dbg !3401
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3402 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3404, metadata !644), !dbg !3406
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3405, metadata !644), !dbg !3407
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3307, metadata !644) #10, !dbg !3408
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3308, metadata !644) #10, !dbg !3410
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3309, metadata !644) #10, !dbg !3411
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3412
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3413, !tbaa.struct !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3310, metadata !826) #10, !dbg !3414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1771, metadata !644) #10, !dbg !3415
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1772, metadata !644) #10, !dbg !3417
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1773, metadata !644) #10, !dbg !3418
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1774, metadata !644) #10, !dbg !3419
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3420
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1775, metadata !644) #10, !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1777, metadata !644) #10, !dbg !3422
  %6 = load i32, i32* %5, align 4, !dbg !3423, !tbaa !725
  %7 = or i32 %6, 67108864, !dbg !3424
  store i32 %7, i32* %5, align 4, !dbg !3424, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3310, metadata !826) #10, !dbg !3414
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3425
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3426
  ret i8* %8, !dbg !3427
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3428 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3183, metadata !3189), !dbg !3434
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3430, metadata !644), !dbg !3436
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3431, metadata !644), !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3432, metadata !644), !dbg !3438
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3439
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3439
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3188, metadata !644) #10, !dbg !3440
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3441
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3441
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3183, metadata !644) #10, !dbg !3434
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3183, metadata !3199) #10, !dbg !3434
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3434
  %9 = icmp eq i32 %1, 10, !dbg !3442
  br i1 %9, label %10, label %11, !dbg !3443

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3444, !noalias !3445
  unreachable, !dbg !3444

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3183, metadata !3199) #10, !dbg !3434
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3448
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3449
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3450
  store i32 %1, i32* %13, align 8, !dbg !3450
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3450
  %15 = bitcast i32* %14 to i8*, !dbg !3450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3450
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3433, metadata !826), !dbg !3451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1771, metadata !644), !dbg !3452
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1772, metadata !644), !dbg !3454
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1773, metadata !644), !dbg !3455
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1774, metadata !644), !dbg !3456
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3457
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1775, metadata !644), !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1777, metadata !644), !dbg !3459
  %17 = load i32, i32* %16, align 4, !dbg !3460, !tbaa !725
  %18 = or i32 %17, 67108864, !dbg !3461
  store i32 %18, i32* %16, align 4, !dbg !3461, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3433, metadata !826), !dbg !3451
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3462
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3463
  ret i8* %19, !dbg !3464
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3465 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3469, metadata !644), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3470, metadata !644), !dbg !3474
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3471, metadata !644), !dbg !3475
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3472, metadata !644), !dbg !3476
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3477, metadata !644) #10, !dbg !3487
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3482, metadata !644) #10, !dbg !3489
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3483, metadata !644) #10, !dbg !3490
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3484, metadata !644) #10, !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3485, metadata !644) #10, !dbg !3492
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3493
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3494, !tbaa.struct !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3486, metadata !826) #10, !dbg !3495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1821, metadata !644) #10, !dbg !3496
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1822, metadata !644) #10, !dbg !3498
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1823, metadata !644) #10, !dbg !3499
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1821, metadata !644) #10, !dbg !3496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1821, metadata !644) #10, !dbg !3496
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3500
  store i32 10, i32* %7, align 8, !dbg !3501, !tbaa !1751
  %8 = icmp ne i8* %1, null, !dbg !3502
  %9 = icmp ne i8* %2, null, !dbg !3503
  %10 = and i1 %8, %9, !dbg !3504
  br i1 %10, label %12, label %11, !dbg !3504

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3505
  unreachable, !dbg !3505

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3506
  store i8* %1, i8** %13, align 8, !dbg !3507, !tbaa !1840
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3508
  store i8* %2, i8** %14, align 8, !dbg !3509, !tbaa !1843
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3486, metadata !826) #10, !dbg !3495
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3510
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3511
  ret i8* %15, !dbg !3512
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3478 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3477, metadata !644), !dbg !3513
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3482, metadata !644), !dbg !3514
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3483, metadata !644), !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3484, metadata !644), !dbg !3516
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3485, metadata !644), !dbg !3517
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3518
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3519, !tbaa.struct !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3486, metadata !826), !dbg !3520
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1821, metadata !644) #10, !dbg !3521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1822, metadata !644) #10, !dbg !3523
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1823, metadata !644) #10, !dbg !3524
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1821, metadata !644) #10, !dbg !3521
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1821, metadata !644) #10, !dbg !3521
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3525
  store i32 10, i32* %8, align 8, !dbg !3526, !tbaa !1751
  %9 = icmp ne i8* %1, null, !dbg !3527
  %10 = icmp ne i8* %2, null, !dbg !3528
  %11 = and i1 %9, %10, !dbg !3529
  br i1 %11, label %13, label %12, !dbg !3529

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3530
  unreachable, !dbg !3530

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3531
  store i8* %1, i8** %14, align 8, !dbg !3532, !tbaa !1840
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3533
  store i8* %2, i8** %15, align 8, !dbg !3534, !tbaa !1843
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3486, metadata !826), !dbg !3520
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3535
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3536
  ret i8* %16, !dbg !3537
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3538 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3542, metadata !644), !dbg !3545
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3543, metadata !644), !dbg !3546
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3544, metadata !644), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3469, metadata !644) #10, !dbg !3548
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !644) #10, !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3471, metadata !644) #10, !dbg !3551
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3472, metadata !644) #10, !dbg !3552
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !644) #10, !dbg !3553
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !644) #10, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3483, metadata !644) #10, !dbg !3556
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3484, metadata !644) #10, !dbg !3557
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3485, metadata !644) #10, !dbg !3558
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3559
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3560, !tbaa.struct !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3486, metadata !826) #10, !dbg !3561
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1821, metadata !644) #10, !dbg !3562
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1822, metadata !644) #10, !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1823, metadata !644) #10, !dbg !3565
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1821, metadata !644) #10, !dbg !3562
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1821, metadata !644) #10, !dbg !3562
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3566
  store i32 10, i32* %6, align 8, !dbg !3567, !tbaa !1751
  %7 = icmp ne i8* %0, null, !dbg !3568
  %8 = icmp ne i8* %1, null, !dbg !3569
  %9 = and i1 %7, %8, !dbg !3570
  br i1 %9, label %11, label %10, !dbg !3570

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3571
  unreachable, !dbg !3571

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3572
  store i8* %0, i8** %12, align 8, !dbg !3573, !tbaa !1840
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3574
  store i8* %1, i8** %13, align 8, !dbg !3575, !tbaa !1843
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3486, metadata !826) #10, !dbg !3561
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3576
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3577
  ret i8* %14, !dbg !3578
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3579 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3583, metadata !644), !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3584, metadata !644), !dbg !3588
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3585, metadata !644), !dbg !3589
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3586, metadata !644), !dbg !3590
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !644) #10, !dbg !3591
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !644) #10, !dbg !3593
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3483, metadata !644) #10, !dbg !3594
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3484, metadata !644) #10, !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3485, metadata !644) #10, !dbg !3596
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3597
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3598, !tbaa.struct !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3486, metadata !826) #10, !dbg !3599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1821, metadata !644) #10, !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1822, metadata !644) #10, !dbg !3602
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1823, metadata !644) #10, !dbg !3603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1821, metadata !644) #10, !dbg !3600
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1821, metadata !644) #10, !dbg !3600
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3604
  store i32 10, i32* %7, align 8, !dbg !3605, !tbaa !1751
  %8 = icmp ne i8* %0, null, !dbg !3606
  %9 = icmp ne i8* %1, null, !dbg !3607
  %10 = and i1 %8, %9, !dbg !3608
  br i1 %10, label %12, label %11, !dbg !3608

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3609
  unreachable, !dbg !3609

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3610
  store i8* %0, i8** %13, align 8, !dbg !3611, !tbaa !1840
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3612
  store i8* %1, i8** %14, align 8, !dbg !3613, !tbaa !1843
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3486, metadata !826) #10, !dbg !3599
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3614
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3615
  ret i8* %15, !dbg !3616
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3617 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3621, metadata !644), !dbg !3624
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3622, metadata !644), !dbg !3625
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3623, metadata !644), !dbg !3626
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3627
  ret i8* %4, !dbg !3628
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3629 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3633, metadata !644), !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3634, metadata !644), !dbg !3636
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3621, metadata !644) #10, !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3622, metadata !644) #10, !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3623, metadata !644) #10, !dbg !3640
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3641
  ret i8* %3, !dbg !3642
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3643 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3647, metadata !644), !dbg !3649
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3648, metadata !644), !dbg !3650
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3621, metadata !644) #10, !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3622, metadata !644) #10, !dbg !3653
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3623, metadata !644) #10, !dbg !3654
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3655
  ret i8* %3, !dbg !3656
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3657 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3661, metadata !644), !dbg !3662
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3647, metadata !644) #10, !dbg !3663
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3648, metadata !644) #10, !dbg !3665
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3621, metadata !644) #10, !dbg !3666
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3622, metadata !644) #10, !dbg !3668
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3623, metadata !644) #10, !dbg !3669
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3670
  ret i8* %2, !dbg !3671
}

; Function Attrs: nounwind sspstrong uwtable
define void @init_tokenbuffer(%struct.tokenbuffer* nocapture) local_unnamed_addr #6 !dbg !3672 {
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %0, i64 0, metadata !3682, metadata !644), !dbg !3683
  %2 = bitcast %struct.tokenbuffer* %0 to i8*, !dbg !3684
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false), !dbg !3685
  ret void, !dbg !3684
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @readtoken(%struct._IO_FILE*, i8* nocapture readonly, i64, %struct.tokenbuffer* nocapture) local_unnamed_addr #6 !dbg !3686 {
  %5 = alloca [4 x i64], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3730, metadata !644), !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3731, metadata !644), !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3732, metadata !644), !dbg !3747
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, i64 0, metadata !3733, metadata !644), !dbg !3748
  %6 = bitcast [4 x i64]* %5 to i8*, !dbg !3749
  call void @llvm.lifetime.start(i64 32, i8* nonnull %6) #10, !dbg !3749
  tail call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !3738, metadata !644), !dbg !3750
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 32, i32 16, i1 false), !dbg !3751
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3736, metadata !644), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3736, metadata !644), !dbg !3752
  %7 = icmp eq i64 %2, 0, !dbg !3753
  br i1 %7, label %27, label %8, !dbg !3755

; <label>:8:                                      ; preds = %4
  %9 = and i64 %2, 1, !dbg !3757
  %10 = icmp eq i64 %9, 0, !dbg !3757
  br i1 %10, label %21, label %11, !dbg !3757

; <label>:11:                                     ; preds = %8
  br label %12, !dbg !3757

; <label>:12:                                     ; preds = %11
  %13 = load i8, i8* %1, align 1, !dbg !3757, !tbaa !785
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !3741, metadata !644), !dbg !3758
  %14 = zext i8 %13 to i64, !dbg !3759
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3760, metadata !644), !dbg !3768
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3767, metadata !644), !dbg !3770
  %15 = and i64 %14, 63, !dbg !3771
  %16 = shl i64 1, %15, !dbg !3772
  %17 = lshr i64 %14, 6, !dbg !3773
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %17, !dbg !3774
  %19 = load i64, i64* %18, align 8, !dbg !3775, !tbaa !1102
  %20 = or i64 %16, %19, !dbg !3775
  store i64 %20, i64* %18, align 8, !dbg !3775, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3736, metadata !644), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3736, metadata !644), !dbg !3752
  br label %21, !dbg !3755

; <label>:21:                                     ; preds = %8, %12
  %22 = phi i64 [ 0, %8 ], [ 1, %12 ]
  %23 = icmp eq i64 %2, 1, !dbg !3757
  br i1 %23, label %26, label %24, !dbg !3757

; <label>:24:                                     ; preds = %21
  br label %30, !dbg !3757

; <label>:25:                                     ; preds = %30
  br label %26

; <label>:26:                                     ; preds = %21, %25
  br label %27

; <label>:27:                                     ; preds = %26, %4
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  br label %53, !dbg !3776

; <label>:30:                                     ; preds = %30, %24
  %31 = phi i64 [ %22, %24 ], [ %51, %30 ]
  %32 = getelementptr inbounds i8, i8* %1, i64 %31, !dbg !3757
  %33 = load i8, i8* %32, align 1, !dbg !3757, !tbaa !785
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !3741, metadata !644), !dbg !3758
  %34 = zext i8 %33 to i64, !dbg !3759
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !3760, metadata !644), !dbg !3768
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3767, metadata !644), !dbg !3770
  %35 = and i64 %34, 63, !dbg !3771
  %36 = shl i64 1, %35, !dbg !3772
  %37 = lshr i64 %34, 6, !dbg !3773
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %37, !dbg !3774
  %39 = load i64, i64* %38, align 8, !dbg !3775, !tbaa !1102
  %40 = or i64 %36, %39, !dbg !3775
  store i64 %40, i64* %38, align 8, !dbg !3775, !tbaa !1102
  %41 = add nuw i64 %31, 1, !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !3736, metadata !644), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !3736, metadata !644), !dbg !3752
  %42 = getelementptr inbounds i8, i8* %1, i64 %41, !dbg !3757
  %43 = load i8, i8* %42, align 1, !dbg !3757, !tbaa !785
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !3741, metadata !644), !dbg !3758
  %44 = zext i8 %43 to i64, !dbg !3759
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !3760, metadata !644), !dbg !3768
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3767, metadata !644), !dbg !3770
  %45 = and i64 %44, 63, !dbg !3771
  %46 = shl i64 1, %45, !dbg !3772
  %47 = lshr i64 %44, 6, !dbg !3773
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %47, !dbg !3774
  %49 = load i64, i64* %48, align 8, !dbg !3775, !tbaa !1102
  %50 = or i64 %46, %49, !dbg !3775
  store i64 %50, i64* %48, align 8, !dbg !3775, !tbaa !1102
  %51 = add i64 %31, 2, !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !3736, metadata !644), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !3736, metadata !644), !dbg !3752
  %52 = icmp eq i64 %51, %2, !dbg !3753
  br i1 %52, label %25, label %30, !dbg !3755, !llvm.loop !3789

; <label>:53:                                     ; preds = %27, %64
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3782, metadata !644) #10, !dbg !3776
  %54 = load i8*, i8** %28, align 8, !dbg !3792, !tbaa !3793
  %55 = load i8*, i8** %29, align 8, !dbg !3792, !tbaa !3795
  %56 = icmp ult i8* %54, %55, !dbg !3792
  br i1 %56, label %57, label %61, !dbg !3792, !prof !3796

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3797
  store i8* %58, i8** %28, align 8, !dbg !3797, !tbaa !3793
  %59 = load i8, i8* %54, align 1, !dbg !3797, !tbaa !785
  %60 = zext i8 %59 to i32, !dbg !3797
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !3735, metadata !644), !dbg !3799
  br label %64, !dbg !3800

; <label>:61:                                     ; preds = %53
  %62 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !3735, metadata !644), !dbg !3799
  %63 = icmp sgt i32 %62, -1, !dbg !3804
  br i1 %63, label %64, label %135, !dbg !3800

; <label>:64:                                     ; preds = %57, %61
  %65 = phi i32 [ %60, %57 ], [ %62, %61 ]
  %66 = sext i32 %65 to i64, !dbg !3805
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !3807, metadata !644), !dbg !3815
  %67 = lshr i64 %66, 6, !dbg !3817
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %67, !dbg !3818
  %69 = load i64, i64* %68, align 8, !dbg !3818, !tbaa !1102
  %70 = and i64 %66, 63, !dbg !3819
  %71 = shl i64 1, %70, !dbg !3818
  %72 = and i64 %71, %69, !dbg !3818
  %73 = icmp eq i64 %72, 0, !dbg !3818
  br i1 %73, label %74, label %53, !dbg !3820, !llvm.loop !3822

; <label>:74:                                     ; preds = %64
  %75 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1, !dbg !3825
  tail call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !3734, metadata !644), !dbg !3826
  %76 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 0, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !3737, metadata !644), !dbg !3828
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3736, metadata !644), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3736, metadata !644), !dbg !3752
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !3735, metadata !644), !dbg !3799
  tail call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !3734, metadata !644), !dbg !3826
  %77 = load i64, i64* %76, align 8, !dbg !3827, !tbaa !3829
  %78 = load i8*, i8** %75, align 8, !dbg !3825, !tbaa !839
  br label %79, !dbg !3828

; <label>:79:                                     ; preds = %125, %74
  %80 = phi i1 [ false, %74 ], [ %126, %125 ]
  %81 = phi i64 [ 0, %74 ], [ %115, %125 ]
  %82 = phi i32 [ %65, %74 ], [ %127, %125 ]
  %83 = phi i8* [ %78, %74 ], [ %103, %125 ]
  %84 = phi i64 [ %77, %74 ], [ %102, %125 ]
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3737, metadata !644), !dbg !3828
  %85 = icmp eq i64 %81, %84, !dbg !3830
  br i1 %85, label %86, label %101, !dbg !3835

; <label>:86:                                     ; preds = %79
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !588, metadata !644) #10, !dbg !3836
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !590, metadata !644) #10, !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !591, metadata !644) #10, !dbg !3839
  %87 = icmp eq i8* %83, null, !dbg !3840
  br i1 %87, label %88, label %91, !dbg !3842

; <label>:88:                                     ; preds = %86
  %89 = icmp eq i64 %81, 0, !dbg !3843
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !591, metadata !644) #10, !dbg !3839
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !591, metadata !644) #10, !dbg !3839
  %90 = select i1 %89, i64 128, i64 %81, !dbg !3846
  br label %98, !dbg !3846

; <label>:91:                                     ; preds = %86
  %92 = icmp ult i64 %81, 6148914691236517204, !dbg !3847
  br i1 %92, label %94, label %93, !dbg !3850

; <label>:93:                                     ; preds = %91
  tail call void @xalloc_die() #14, !dbg !3851
  unreachable, !dbg !3851

; <label>:94:                                     ; preds = %91
  %95 = lshr i64 %81, 1, !dbg !3852
  %96 = add i64 %81, 1, !dbg !3853
  %97 = add i64 %96, %95, !dbg !3854
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !591, metadata !644) #10, !dbg !3839
  br label %98

; <label>:98:                                     ; preds = %88, %94
  %99 = phi i64 [ %97, %94 ], [ %90, %88 ]
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !591, metadata !644) #10, !dbg !3839
  %100 = tail call i8* @xrealloc(i8* %83, i64 %99) #10, !dbg !3855
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3734, metadata !644), !dbg !3826
  br label %101, !dbg !3856

; <label>:101:                                    ; preds = %98, %79
  %102 = phi i64 [ %99, %98 ], [ %84, %79 ]
  %103 = phi i8* [ %100, %98 ], [ %83, %79 ]
  tail call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3734, metadata !644), !dbg !3826
  br i1 %80, label %132, label %104, !dbg !3857

; <label>:104:                                    ; preds = %101
  %105 = sext i32 %82 to i64, !dbg !3858
  tail call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !3807, metadata !644), !dbg !3860
  %106 = lshr i64 %105, 6, !dbg !3862
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %106, !dbg !3863
  %108 = load i64, i64* %107, align 8, !dbg !3863, !tbaa !1102
  %109 = and i64 %105, 63, !dbg !3864
  %110 = shl i64 1, %109, !dbg !3863
  %111 = and i64 %108, %110, !dbg !3863
  %112 = icmp eq i64 %111, 0, !dbg !3863
  br i1 %112, label %113, label %132, !dbg !3865

; <label>:113:                                    ; preds = %104
  %114 = trunc i32 %82 to i8, !dbg !3866
  %115 = add i64 %81, 1, !dbg !3867
  tail call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !3736, metadata !644), !dbg !3752
  %116 = getelementptr inbounds i8, i8* %103, i64 %81, !dbg !3868
  store i8 %114, i8* %116, align 1, !dbg !3869, !tbaa !785
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3782, metadata !644) #10, !dbg !3870
  %117 = load i8*, i8** %28, align 8, !dbg !3872, !tbaa !3793
  %118 = load i8*, i8** %29, align 8, !dbg !3872, !tbaa !3795
  %119 = icmp ult i8* %117, %118, !dbg !3872
  br i1 %119, label %128, label %120, !dbg !3872, !prof !3796

; <label>:120:                                    ; preds = %113
  %121 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #10, !dbg !3873
  tail call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !3736, metadata !644), !dbg !3752
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3735, metadata !644), !dbg !3799
  tail call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3734, metadata !644), !dbg !3826
  %122 = icmp slt i32 %121, 0, !dbg !3874
  %123 = icmp eq i64 %115, 0, !dbg !3876
  %124 = and i1 %122, %123, !dbg !3878
  br i1 %124, label %134, label %125, !dbg !3878

; <label>:125:                                    ; preds = %120, %128
  %126 = phi i1 [ %122, %120 ], [ false, %128 ]
  %127 = phi i32 [ %121, %120 ], [ %131, %128 ]
  br label %79, !dbg !3828, !llvm.loop !3879

; <label>:128:                                    ; preds = %113
  %129 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !3882
  store i8* %129, i8** %28, align 8, !dbg !3882, !tbaa !3793
  %130 = load i8, i8* %117, align 1, !dbg !3882, !tbaa !785
  %131 = zext i8 %130 to i32, !dbg !3882
  tail call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !3736, metadata !644), !dbg !3752
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3735, metadata !644), !dbg !3799
  tail call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3734, metadata !644), !dbg !3826
  br label %125, !dbg !3878

; <label>:132:                                    ; preds = %104, %101
  %133 = getelementptr inbounds i8, i8* %103, i64 %81
  store i8 0, i8* %133, align 1, !tbaa !785
  store i8* %103, i8** %75, align 8, !dbg !3883, !tbaa !839
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !3737, metadata !644), !dbg !3828
  store i64 %102, i64* %76, align 8, !dbg !3884, !tbaa !3829
  br label %136, !dbg !3885

; <label>:134:                                    ; preds = %120
  br label %136, !dbg !3886

; <label>:135:                                    ; preds = %61
  br label %136, !dbg !3886

; <label>:136:                                    ; preds = %135, %134, %132
  %137 = phi i64 [ %81, %132 ], [ -1, %134 ], [ -1, %135 ]
  call void @llvm.lifetime.end(i64 32, i8* nonnull %6) #10, !dbg !3886
  ret i64 %137, !dbg !3886
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @readtokens(%struct._IO_FILE*, i64, i8* nocapture readonly, i64, i8*** nocapture, i64**) local_unnamed_addr #6 !dbg !3887 {
  %7 = alloca %struct.tokenbuffer, align 8
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3893, metadata !644), !dbg !3910
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3894, metadata !644), !dbg !3911
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3895, metadata !644), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3896, metadata !644), !dbg !3913
  tail call void @llvm.dbg.value(metadata i8*** %4, i64 0, metadata !3897, metadata !644), !dbg !3914
  tail call void @llvm.dbg.value(metadata i64** %5, i64 0, metadata !3898, metadata !644), !dbg !3915
  %8 = bitcast %struct.tokenbuffer* %7 to i8*, !dbg !3916
  call void @llvm.lifetime.start(i64 16, i8* nonnull %8) #10, !dbg !3916
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3900, metadata !644), !dbg !3917
  %9 = icmp eq i64 %1, 0, !dbg !3918
  %10 = add i64 %1, 1, !dbg !3920
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !3894, metadata !644), !dbg !3911
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3921
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3894, metadata !644), !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3903, metadata !644), !dbg !3922
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3923, metadata !644) #10, !dbg !3929
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !3928, metadata !644) #10, !dbg !3931
  %12 = icmp ugt i64 %11, 1152921504606846975, !dbg !3932
  br i1 %12, label %13, label %14, !dbg !3934

; <label>:13:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3935
  unreachable, !dbg !3935

; <label>:14:                                     ; preds = %6
  %15 = shl i64 %11, 3, !dbg !3936
  %16 = tail call noalias i8* @xmalloc(i64 %15) #10, !dbg !3937
  %17 = bitcast i8* %16 to i8**, !dbg !3938
  tail call void @llvm.dbg.value(metadata i8** %17, i64 0, metadata !3901, metadata !644), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3903, metadata !644), !dbg !3922
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3923, metadata !644) #10, !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !3928, metadata !644) #10, !dbg !3942
  %18 = tail call noalias i8* @xmalloc(i64 %15) #10, !dbg !3943
  %19 = bitcast i8* %18 to i64*, !dbg !3944
  tail call void @llvm.dbg.value(metadata i64* %19, i64 0, metadata !3902, metadata !644), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3904, metadata !644), !dbg !3946
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3899, metadata !826), !dbg !3947
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3682, metadata !644) #10, !dbg !3948
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 16, i32 8, i1 false) #10, !dbg !3950
  %20 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %7, i64 0, i32 1
  br label %21, !dbg !3951

; <label>:21:                                     ; preds = %69, %14
  %22 = phi i64 [ %11, %14 ], [ %58, %69 ]
  %23 = phi i8* [ %18, %14 ], [ %59, %69 ]
  %24 = phi i8* [ %18, %14 ], [ %60, %69 ]
  %25 = phi i64* [ %19, %14 ], [ %61, %69 ]
  %26 = phi i64 [ 0, %14 ], [ %74, %69 ]
  %27 = phi i8* [ %16, %14 ], [ %62, %69 ]
  %28 = phi i8** [ %17, %14 ], [ %63, %69 ]
  tail call void @llvm.dbg.value(metadata i8** %28, i64 0, metadata !3901, metadata !644), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !3904, metadata !644), !dbg !3946
  tail call void @llvm.dbg.value(metadata i64* %25, i64 0, metadata !3902, metadata !644), !dbg !3945
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3899, metadata !826), !dbg !3947
  %29 = call i64 @readtoken(%struct._IO_FILE* %0, i8* %2, i64 %3, %struct.tokenbuffer* nonnull %7), !dbg !3952
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !3909, metadata !644), !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3903, metadata !644), !dbg !3922
  %30 = icmp ult i64 %26, %22, !dbg !3954
  br i1 %30, label %57, label %31, !dbg !3956

; <label>:31:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !588, metadata !644) #10, !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !590, metadata !644) #10, !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !591, metadata !644) #10, !dbg !3961
  %32 = icmp eq i8* %27, null, !dbg !3962
  br i1 %32, label %33, label %35, !dbg !3963

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i64 %22, 0, !dbg !3964
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !591, metadata !644) #10, !dbg !3961
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !591, metadata !644) #10, !dbg !3961
  br i1 %34, label %42, label %44

; <label>:35:                                     ; preds = %31
  %36 = icmp ult i64 %22, 768614336404564650, !dbg !3965
  br i1 %36, label %38, label %37, !dbg !3966

; <label>:37:                                     ; preds = %35
  tail call void @xalloc_die() #14, !dbg !3967
  unreachable, !dbg !3967

; <label>:38:                                     ; preds = %35
  %39 = lshr i64 %22, 1, !dbg !3968
  %40 = add i64 %22, 1, !dbg !3969
  %41 = add i64 %40, %39, !dbg !3970
  tail call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !591, metadata !644) #10, !dbg !3961
  br label %44

; <label>:42:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !591, metadata !644) #10, !dbg !3961
  %43 = tail call i8* @xrealloc(i8* %27, i64 128) #10, !dbg !3971
  tail call void @llvm.dbg.value(metadata i8** %54, i64 0, metadata !3901, metadata !644), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3903, metadata !644), !dbg !3922
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3972, metadata !644) #10, !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3977, metadata !644) #10, !dbg !3981
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !3978, metadata !644) #10, !dbg !3982
  br label %50, !dbg !3983

; <label>:44:                                     ; preds = %33, %38
  %45 = phi i64 [ %41, %38 ], [ %22, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !591, metadata !644) #10, !dbg !3961
  %46 = shl i64 %45, 3, !dbg !3984
  %47 = tail call i8* @xrealloc(i8* %27, i64 %46) #10, !dbg !3971
  tail call void @llvm.dbg.value(metadata i8** %54, i64 0, metadata !3901, metadata !644), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3903, metadata !644), !dbg !3922
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3972, metadata !644) #10, !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3977, metadata !644) #10, !dbg !3981
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !3978, metadata !644) #10, !dbg !3982
  %48 = icmp ugt i64 %45, 1152921504606846975, !dbg !3985
  br i1 %48, label %49, label %50, !dbg !3983

; <label>:49:                                     ; preds = %44
  tail call void @xalloc_die() #14, !dbg !3987
  unreachable, !dbg !3987

; <label>:50:                                     ; preds = %42, %44
  %51 = phi i8* [ %43, %42 ], [ %47, %44 ]
  %52 = phi i64 [ 128, %42 ], [ %46, %44 ]
  %53 = phi i64 [ 16, %42 ], [ %45, %44 ]
  %54 = bitcast i8* %51 to i8**, !dbg !3988
  %55 = tail call i8* @xrealloc(i8* %24, i64 %52) #10, !dbg !3989
  %56 = bitcast i8* %55 to i64*, !dbg !3990
  tail call void @llvm.dbg.value(metadata i64* %56, i64 0, metadata !3902, metadata !644), !dbg !3945
  br label %57, !dbg !3991

; <label>:57:                                     ; preds = %21, %50
  %58 = phi i64 [ %22, %21 ], [ %53, %50 ]
  %59 = phi i8* [ %23, %21 ], [ %55, %50 ]
  %60 = phi i8* [ %24, %21 ], [ %55, %50 ]
  %61 = phi i64* [ %25, %21 ], [ %56, %50 ]
  %62 = phi i8* [ %27, %21 ], [ %51, %50 ]
  %63 = phi i8** [ %28, %21 ], [ %54, %50 ]
  tail call void @llvm.dbg.value(metadata i8** %63, i64 0, metadata !3901, metadata !644), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64* %61, i64 0, metadata !3902, metadata !644), !dbg !3945
  %64 = icmp eq i64 %29, -1, !dbg !3992
  br i1 %64, label %75, label %65, !dbg !3994

; <label>:65:                                     ; preds = %57
  %66 = add i64 %29, 1, !dbg !3995
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !3923, metadata !644) #10, !dbg !3996
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3928, metadata !644) #10, !dbg !3998
  %67 = icmp slt i64 %66, 0, !dbg !3999
  br i1 %67, label %68, label %69, !dbg !4000

; <label>:68:                                     ; preds = %65
  tail call void @xalloc_die() #14, !dbg !4001
  unreachable, !dbg !4001

; <label>:69:                                     ; preds = %65
  %70 = tail call noalias i8* @xmalloc(i64 %66) #10, !dbg !4002
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !3905, metadata !644), !dbg !4003
  %71 = getelementptr inbounds i64, i64* %61, i64 %26, !dbg !4004
  store i64 %29, i64* %71, align 8, !dbg !4005, !tbaa !1102
  %72 = load i8*, i8** %20, align 8, !dbg !4006, !tbaa !839
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %72, i64 %66, i32 1, i1 false), !dbg !4007
  %73 = getelementptr inbounds i8*, i8** %63, i64 %26, !dbg !4008
  store i8* %70, i8** %73, align 8, !dbg !4009, !tbaa !652
  %74 = add i64 %26, 1, !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3904, metadata !644), !dbg !3946
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !3904, metadata !644), !dbg !3946
  br label %21

; <label>:75:                                     ; preds = %57
  %76 = getelementptr inbounds i8*, i8** %63, i64 %26, !dbg !4011
  store i8* null, i8** %76, align 8, !dbg !4013, !tbaa !652
  %77 = getelementptr inbounds i64, i64* %61, i64 %26, !dbg !4014
  store i64 0, i64* %77, align 8, !dbg !4015, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !3904, metadata !644), !dbg !3946
  %78 = load i8*, i8** %20, align 8, !dbg !4016, !tbaa !839
  tail call void @free(i8* %78) #10, !dbg !4017
  store i8** %63, i8*** %4, align 8, !dbg !4018, !tbaa !652
  %79 = icmp eq i64** %5, null, !dbg !4019
  br i1 %79, label %82, label %80, !dbg !4021

; <label>:80:                                     ; preds = %75
  %81 = bitcast i64** %5 to i8**, !dbg !4022
  store i8* %59, i8** %81, align 8, !dbg !4022, !tbaa !652
  br label %83, !dbg !4023

; <label>:82:                                     ; preds = %75
  tail call void @free(i8* %59) #10, !dbg !4024
  br label %83

; <label>:83:                                     ; preds = %82, %80
  call void @llvm.lifetime.end(i64 16, i8* nonnull %8) #10, !dbg !4025
  ret i64 %26, !dbg !4026
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4027 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4072, metadata !644), !dbg !4078
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4073, metadata !644), !dbg !4079
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4074, metadata !644), !dbg !4080
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4075, metadata !644), !dbg !4081
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4076, metadata !644), !dbg !4082
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4077, metadata !644), !dbg !4083
  %7 = icmp eq i8* %1, null, !dbg !4084
  br i1 %7, label %10, label %8, !dbg !4086

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4087
  br label %12, !dbg !4087

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4088
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #10, !dbg !4089
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !4090
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #10, !dbg !4092
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !4093
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
  ], !dbg !4094

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4095
  unreachable, !dbg !4095

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #10, !dbg !4097
  %20 = load i8*, i8** %4, align 8, !dbg !4097, !tbaa !652
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4098
  br label %146, !dbg !4100

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #10, !dbg !4101
  %24 = load i8*, i8** %4, align 8, !dbg !4101, !tbaa !652
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4101
  %26 = load i8*, i8** %25, align 8, !dbg !4101, !tbaa !652
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4102
  br label %146, !dbg !4103

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #10, !dbg !4104
  %30 = load i8*, i8** %4, align 8, !dbg !4104, !tbaa !652
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4104
  %32 = load i8*, i8** %31, align 8, !dbg !4104, !tbaa !652
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4104
  %34 = load i8*, i8** %33, align 8, !dbg !4104, !tbaa !652
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4105
  br label %146, !dbg !4106

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #10, !dbg !4107
  %38 = load i8*, i8** %4, align 8, !dbg !4107, !tbaa !652
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4107
  %40 = load i8*, i8** %39, align 8, !dbg !4107, !tbaa !652
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4107
  %42 = load i8*, i8** %41, align 8, !dbg !4107, !tbaa !652
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4107
  %44 = load i8*, i8** %43, align 8, !dbg !4107, !tbaa !652
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4108
  br label %146, !dbg !4109

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #10, !dbg !4110
  %48 = load i8*, i8** %4, align 8, !dbg !4110, !tbaa !652
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4110
  %50 = load i8*, i8** %49, align 8, !dbg !4110, !tbaa !652
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4110
  %52 = load i8*, i8** %51, align 8, !dbg !4110, !tbaa !652
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4110
  %54 = load i8*, i8** %53, align 8, !dbg !4110, !tbaa !652
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4110
  %56 = load i8*, i8** %55, align 8, !dbg !4110, !tbaa !652
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4111
  br label %146, !dbg !4112

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #10, !dbg !4113
  %60 = load i8*, i8** %4, align 8, !dbg !4113, !tbaa !652
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4113
  %62 = load i8*, i8** %61, align 8, !dbg !4113, !tbaa !652
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4113
  %64 = load i8*, i8** %63, align 8, !dbg !4113, !tbaa !652
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4113
  %66 = load i8*, i8** %65, align 8, !dbg !4113, !tbaa !652
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4113
  %68 = load i8*, i8** %67, align 8, !dbg !4113, !tbaa !652
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4113
  %70 = load i8*, i8** %69, align 8, !dbg !4113, !tbaa !652
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4114
  br label %146, !dbg !4115

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #10, !dbg !4116
  %74 = load i8*, i8** %4, align 8, !dbg !4116, !tbaa !652
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4116
  %76 = load i8*, i8** %75, align 8, !dbg !4116, !tbaa !652
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4116
  %78 = load i8*, i8** %77, align 8, !dbg !4116, !tbaa !652
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4116
  %80 = load i8*, i8** %79, align 8, !dbg !4116, !tbaa !652
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4116
  %82 = load i8*, i8** %81, align 8, !dbg !4116, !tbaa !652
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4116
  %84 = load i8*, i8** %83, align 8, !dbg !4116, !tbaa !652
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4116
  %86 = load i8*, i8** %85, align 8, !dbg !4116, !tbaa !652
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4117
  br label %146, !dbg !4118

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #10, !dbg !4119
  %90 = load i8*, i8** %4, align 8, !dbg !4119, !tbaa !652
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4119
  %92 = load i8*, i8** %91, align 8, !dbg !4119, !tbaa !652
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4119
  %94 = load i8*, i8** %93, align 8, !dbg !4119, !tbaa !652
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4119
  %96 = load i8*, i8** %95, align 8, !dbg !4119, !tbaa !652
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4119
  %98 = load i8*, i8** %97, align 8, !dbg !4119, !tbaa !652
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4119
  %100 = load i8*, i8** %99, align 8, !dbg !4119, !tbaa !652
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4119
  %102 = load i8*, i8** %101, align 8, !dbg !4119, !tbaa !652
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4119
  %104 = load i8*, i8** %103, align 8, !dbg !4119, !tbaa !652
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4120
  br label %146, !dbg !4121

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #10, !dbg !4122
  %108 = load i8*, i8** %4, align 8, !dbg !4122, !tbaa !652
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4122
  %110 = load i8*, i8** %109, align 8, !dbg !4122, !tbaa !652
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4122
  %112 = load i8*, i8** %111, align 8, !dbg !4122, !tbaa !652
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4122
  %114 = load i8*, i8** %113, align 8, !dbg !4122, !tbaa !652
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4122
  %116 = load i8*, i8** %115, align 8, !dbg !4122, !tbaa !652
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4122
  %118 = load i8*, i8** %117, align 8, !dbg !4122, !tbaa !652
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4122
  %120 = load i8*, i8** %119, align 8, !dbg !4122, !tbaa !652
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4122
  %122 = load i8*, i8** %121, align 8, !dbg !4122, !tbaa !652
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4122
  %124 = load i8*, i8** %123, align 8, !dbg !4122, !tbaa !652
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4123
  br label %146, !dbg !4124

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #10, !dbg !4125
  %128 = load i8*, i8** %4, align 8, !dbg !4125, !tbaa !652
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4125
  %130 = load i8*, i8** %129, align 8, !dbg !4125, !tbaa !652
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4125
  %132 = load i8*, i8** %131, align 8, !dbg !4125, !tbaa !652
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4125
  %134 = load i8*, i8** %133, align 8, !dbg !4125, !tbaa !652
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4125
  %136 = load i8*, i8** %135, align 8, !dbg !4125, !tbaa !652
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4125
  %138 = load i8*, i8** %137, align 8, !dbg !4125, !tbaa !652
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4125
  %140 = load i8*, i8** %139, align 8, !dbg !4125, !tbaa !652
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4125
  %142 = load i8*, i8** %141, align 8, !dbg !4125, !tbaa !652
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4125
  %144 = load i8*, i8** %143, align 8, !dbg !4125, !tbaa !652
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4126
  br label %146, !dbg !4127

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4128
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4129 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4133, metadata !644), !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4134, metadata !644), !dbg !4140
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4135, metadata !644), !dbg !4141
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4136, metadata !644), !dbg !4142
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4137, metadata !644), !dbg !4143
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4138, metadata !644), !dbg !4144
  br label %6, !dbg !4145

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4138, metadata !644), !dbg !4144
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4147
  %9 = load i8*, i8** %8, align 8, !dbg !4147, !tbaa !652
  %10 = icmp eq i8* %9, null, !dbg !4150
  %11 = add i64 %7, 1, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4138, metadata !644), !dbg !4144
  br i1 %10, label %12, label %6, !dbg !4150, !llvm.loop !4154

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4157
  ret void, !dbg !4158
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4159 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4170, metadata !644), !dbg !4178
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4171, metadata !644), !dbg !4179
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4172, metadata !644), !dbg !4180
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4173, metadata !644), !dbg !4181
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4174, metadata !644), !dbg !4182
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4183
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4183
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4176, metadata !644), !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4175, metadata !644), !dbg !4185
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4186
  %12 = icmp ult i32 %11, 41, !dbg !4186
  br i1 %12, label %13, label %18, !dbg !4186

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4190
  %15 = sext i32 %11 to i64, !dbg !4190
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4190
  %17 = add i32 %11, 8, !dbg !4190
  store i32 %17, i32* %8, align 8, !dbg !4190
  br label %21, !dbg !4190

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4192
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4192
  store i8* %20, i8** %10, align 8, !dbg !4192
  br label %21, !dbg !4192

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4186
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4194
  %25 = load i8*, i8** %24, align 8, !dbg !4194
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4196
  store i8* %25, i8** %26, align 16, !dbg !4197, !tbaa !652
  %27 = icmp eq i8* %25, null, !dbg !4198
  br i1 %27, label %30, label %28, !dbg !4199

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %29 = icmp ult i32 %22, 41, !dbg !4186
  br i1 %29, label %35, label %32, !dbg !4186

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4201
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4202
  ret void, !dbg !4202

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4192
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4192
  store i8* %34, i8** %10, align 8, !dbg !4192
  br label %40, !dbg !4192

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4190
  %37 = sext i32 %22 to i64, !dbg !4190
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4190
  %39 = add i32 %22, 8, !dbg !4190
  store i32 %39, i32* %8, align 8, !dbg !4190
  br label %40, !dbg !4190

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4186
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4194
  %44 = load i8*, i8** %43, align 8, !dbg !4194
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4196
  store i8* %44, i8** %45, align 8, !dbg !4197, !tbaa !652
  %46 = icmp eq i8* %44, null, !dbg !4198
  br i1 %46, label %30, label %47, !dbg !4199

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %48 = icmp ult i32 %41, 41, !dbg !4186
  br i1 %48, label %52, label %49, !dbg !4186

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4192
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4192
  store i8* %51, i8** %10, align 8, !dbg !4192
  br label %57, !dbg !4192

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4190
  %54 = sext i32 %41 to i64, !dbg !4190
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4190
  %56 = add i32 %41, 8, !dbg !4190
  store i32 %56, i32* %8, align 8, !dbg !4190
  br label %57, !dbg !4190

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4186
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4194
  %61 = load i8*, i8** %60, align 8, !dbg !4194
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4196
  store i8* %61, i8** %62, align 16, !dbg !4197, !tbaa !652
  %63 = icmp eq i8* %61, null, !dbg !4198
  br i1 %63, label %30, label %64, !dbg !4199

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %65 = icmp ult i32 %58, 41, !dbg !4186
  br i1 %65, label %69, label %66, !dbg !4186

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4192
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4192
  store i8* %68, i8** %10, align 8, !dbg !4192
  br label %74, !dbg !4192

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4190
  %71 = sext i32 %58 to i64, !dbg !4190
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4190
  %73 = add i32 %58, 8, !dbg !4190
  store i32 %73, i32* %8, align 8, !dbg !4190
  br label %74, !dbg !4190

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4186
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4194
  %78 = load i8*, i8** %77, align 8, !dbg !4194
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4196
  store i8* %78, i8** %79, align 8, !dbg !4197, !tbaa !652
  %80 = icmp eq i8* %78, null, !dbg !4198
  br i1 %80, label %30, label %81, !dbg !4199

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %82 = icmp ult i32 %75, 41, !dbg !4186
  br i1 %82, label %86, label %83, !dbg !4186

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4192
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4192
  store i8* %85, i8** %10, align 8, !dbg !4192
  br label %91, !dbg !4192

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4190
  %88 = sext i32 %75 to i64, !dbg !4190
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4190
  %90 = add i32 %75, 8, !dbg !4190
  store i32 %90, i32* %8, align 8, !dbg !4190
  br label %91, !dbg !4190

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4186
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4194
  %95 = load i8*, i8** %94, align 8, !dbg !4194
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4196
  store i8* %95, i8** %96, align 16, !dbg !4197, !tbaa !652
  %97 = icmp eq i8* %95, null, !dbg !4198
  br i1 %97, label %30, label %98, !dbg !4199

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %99 = icmp ult i32 %92, 41, !dbg !4186
  br i1 %99, label %103, label %100, !dbg !4186

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4192
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4192
  store i8* %102, i8** %10, align 8, !dbg !4192
  br label %108, !dbg !4192

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4190
  %105 = sext i32 %92 to i64, !dbg !4190
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4190
  %107 = add i32 %92, 8, !dbg !4190
  store i32 %107, i32* %8, align 8, !dbg !4190
  br label %108, !dbg !4190

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4194
  %111 = load i8*, i8** %110, align 8, !dbg !4194
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4196
  store i8* %111, i8** %112, align 8, !dbg !4197, !tbaa !652
  %113 = icmp eq i8* %111, null, !dbg !4198
  br i1 %113, label %30, label %114, !dbg !4199

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %115 = load i8*, i8** %10, align 8, !dbg !4192
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4192
  store i8* %116, i8** %10, align 8, !dbg !4192
  %117 = bitcast i8* %115 to i8**, !dbg !4194
  %118 = load i8*, i8** %117, align 8, !dbg !4194
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4196
  store i8* %118, i8** %119, align 16, !dbg !4197, !tbaa !652
  %120 = icmp eq i8* %118, null, !dbg !4198
  br i1 %120, label %30, label %121, !dbg !4199

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %122 = load i8*, i8** %10, align 8, !dbg !4192
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4192
  store i8* %123, i8** %10, align 8, !dbg !4192
  %124 = bitcast i8* %122 to i8**, !dbg !4194
  %125 = load i8*, i8** %124, align 8, !dbg !4194
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4196
  store i8* %125, i8** %126, align 8, !dbg !4197, !tbaa !652
  %127 = icmp eq i8* %125, null, !dbg !4198
  br i1 %127, label %30, label %128, !dbg !4199

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %129 = load i8*, i8** %10, align 8, !dbg !4192
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4192
  store i8* %130, i8** %10, align 8, !dbg !4192
  %131 = bitcast i8* %129 to i8**, !dbg !4194
  %132 = load i8*, i8** %131, align 8, !dbg !4194
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4196
  store i8* %132, i8** %133, align 16, !dbg !4197, !tbaa !652
  %134 = icmp eq i8* %132, null, !dbg !4198
  br i1 %134, label %30, label %135, !dbg !4199

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %136 = load i8*, i8** %10, align 8, !dbg !4192
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4192
  store i8* %137, i8** %10, align 8, !dbg !4192
  %138 = bitcast i8* %136 to i8**, !dbg !4194
  %139 = load i8*, i8** %138, align 8, !dbg !4194
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4196
  store i8* %139, i8** %140, align 8, !dbg !4197, !tbaa !652
  %141 = icmp eq i8* %139, null, !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4175, metadata !644), !dbg !4185
  %142 = select i1 %141, i64 9, i64 10, !dbg !4199
  br label %30, !dbg !4199
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4203 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4207, metadata !644), !dbg !4216
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4208, metadata !644), !dbg !4217
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4209, metadata !644), !dbg !4218
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4210, metadata !644), !dbg !4219
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4220
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4220
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4211, metadata !644), !dbg !4221
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4222
  call void @llvm.va_start(i8* nonnull %6), !dbg !4222
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4223
  call void @llvm.va_end(i8* nonnull %6), !dbg !4224
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4225
  ret void, !dbg !4225
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4226 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #10, !dbg !4227
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #10, !dbg !4228
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #10, !dbg !4230
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.96, i64 0, i64 0)) #10, !dbg !4231
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !4232
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4232, !tbaa !652
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4233
  ret void, !dbg !4234
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4235 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4237, metadata !644), !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4238, metadata !644), !dbg !4240
  %3 = udiv i64 9223372036854775807, %1, !dbg !4241
  %4 = icmp ult i64 %3, %0, !dbg !4241
  br i1 %4, label %5, label %6, !dbg !4243

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4244
  unreachable, !dbg !4244

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4246, metadata !644) #10, !dbg !4253
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4255
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4252, metadata !644) #10, !dbg !4256
  %9 = icmp eq i8* %8, null, !dbg !4257
  %10 = icmp ne i64 %7, 0, !dbg !4259
  %11 = and i1 %10, %9, !dbg !4261
  br i1 %11, label %12, label %13, !dbg !4261

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4262
  unreachable, !dbg !4262

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4263
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4247 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4246, metadata !644), !dbg !4264
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4265
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4252, metadata !644), !dbg !4266
  %3 = icmp eq i8* %2, null, !dbg !4267
  %4 = icmp ne i64 %0, 0, !dbg !4268
  %5 = and i1 %4, %3, !dbg !4269
  br i1 %5, label %6, label %7, !dbg !4269

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4270
  unreachable, !dbg !4270

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4271
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4272 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4274, metadata !644), !dbg !4277
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4275, metadata !644), !dbg !4278
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4276, metadata !644), !dbg !4279
  %4 = udiv i64 9223372036854775807, %2, !dbg !4280
  %5 = icmp ult i64 %4, %1, !dbg !4280
  br i1 %5, label %6, label %7, !dbg !4282

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4283
  unreachable, !dbg !4283

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4284
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4285, metadata !644) #10, !dbg !4291
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4290, metadata !644) #10, !dbg !4293
  %9 = icmp eq i64 %8, 0, !dbg !4294
  %10 = icmp ne i8* %0, null, !dbg !4296
  %11 = and i1 %10, %9, !dbg !4298
  br i1 %11, label %12, label %13, !dbg !4298

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4299
  br label %19, !dbg !4301

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4302
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4285, metadata !644) #10, !dbg !4291
  %15 = icmp eq i8* %14, null, !dbg !4303
  %16 = icmp ne i64 %8, 0, !dbg !4305
  %17 = and i1 %16, %15, !dbg !4307
  br i1 %17, label %18, label %19, !dbg !4307

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4308
  unreachable, !dbg !4308

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4309
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4286 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4285, metadata !644), !dbg !4310
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4290, metadata !644), !dbg !4311
  %3 = icmp eq i64 %1, 0, !dbg !4312
  %4 = icmp ne i8* %0, null, !dbg !4313
  %5 = and i1 %4, %3, !dbg !4314
  br i1 %5, label %6, label %7, !dbg !4314

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4315
  br label %13, !dbg !4316

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4317
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4285, metadata !644), !dbg !4310
  %9 = icmp eq i8* %8, null, !dbg !4318
  %10 = icmp ne i64 %1, 0, !dbg !4319
  %11 = and i1 %10, %9, !dbg !4320
  br i1 %11, label %12, label %13, !dbg !4320

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4321
  unreachable, !dbg !4321

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4322
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !607 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !609, metadata !644), !dbg !4323
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !610, metadata !644), !dbg !4324
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !611, metadata !644), !dbg !4325
  %4 = load i64, i64* %1, align 8, !dbg !4326, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !612, metadata !644), !dbg !4327
  %5 = icmp eq i8* %0, null, !dbg !4328
  br i1 %5, label %6, label %13, !dbg !4330

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4331
  br i1 %7, label %8, label %17, !dbg !4334

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4335
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !612, metadata !644), !dbg !4327
  %10 = icmp ugt i64 %2, 128, !dbg !4337
  %11 = zext i1 %10 to i64, !dbg !4337
  %12 = add nuw nsw i64 %9, %11, !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !612, metadata !644), !dbg !4327
  br label %17, !dbg !4339

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4340
  %15 = icmp ugt i64 %14, %4, !dbg !4343
  br i1 %15, label %20, label %16, !dbg !4344

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4345
  unreachable, !dbg !4345

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !612, metadata !644), !dbg !4327
  store i64 %18, i64* %1, align 8, !dbg !4346, !tbaa !1102
  %19 = mul i64 %18, %2, !dbg !4347
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4285, metadata !644) #10, !dbg !4348
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4290, metadata !644) #10, !dbg !4350
  br label %27, !dbg !4351

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4352
  %22 = add i64 %4, 1, !dbg !4353
  %23 = add i64 %22, %21, !dbg !4354
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !612, metadata !644), !dbg !4327
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !612, metadata !644), !dbg !4327
  store i64 %23, i64* %1, align 8, !dbg !4346, !tbaa !1102
  %24 = mul i64 %23, %2, !dbg !4347
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4285, metadata !644) #10, !dbg !4348
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4290, metadata !644) #10, !dbg !4350
  %25 = icmp eq i64 %24, 0, !dbg !4355
  br i1 %25, label %26, label %27, !dbg !4351

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4356
  br label %34, !dbg !4357

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4358
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4285, metadata !644) #10, !dbg !4348
  %30 = icmp eq i8* %29, null, !dbg !4359
  %31 = icmp ne i64 %28, 0, !dbg !4360
  %32 = and i1 %31, %30, !dbg !4361
  br i1 %32, label %33, label %34, !dbg !4361

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4362
  unreachable, !dbg !4362

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4363
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4364 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4366, metadata !644), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4246, metadata !644) #10, !dbg !4368
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4370
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4252, metadata !644) #10, !dbg !4371
  %3 = icmp eq i8* %2, null, !dbg !4372
  %4 = icmp ne i64 %0, 0, !dbg !4373
  %5 = and i1 %4, %3, !dbg !4374
  br i1 %5, label %6, label %7, !dbg !4374

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4375
  unreachable, !dbg !4375

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4376
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4377 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4381, metadata !644), !dbg !4383
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4382, metadata !644), !dbg !4384
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !609, metadata !644) #10, !dbg !4385
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !610, metadata !644) #10, !dbg !4387
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !611, metadata !644) #10, !dbg !4388
  %3 = load i64, i64* %1, align 8, !dbg !4389, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !612, metadata !644) #10, !dbg !4390
  %4 = icmp eq i8* %0, null, !dbg !4391
  br i1 %4, label %5, label %8, !dbg !4392

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4393
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !612, metadata !644) #10, !dbg !4390
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !612, metadata !644) #10, !dbg !4390
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4394
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !612, metadata !644) #10, !dbg !4390
  store i64 %7, i64* %1, align 8, !dbg !4395, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4285, metadata !644) #10, !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4290, metadata !644) #10, !dbg !4398
  br label %17, !dbg !4399

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4400
  br i1 %9, label %11, label %10, !dbg !4401

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4402
  unreachable, !dbg !4402

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4403
  %13 = add i64 %3, 1, !dbg !4404
  %14 = add i64 %13, %12, !dbg !4405
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !612, metadata !644) #10, !dbg !4390
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !612, metadata !644) #10, !dbg !4390
  store i64 %14, i64* %1, align 8, !dbg !4395, !tbaa !1102
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4285, metadata !644) #10, !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4290, metadata !644) #10, !dbg !4398
  %15 = icmp eq i64 %14, 0, !dbg !4406
  br i1 %15, label %16, label %17, !dbg !4399

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4407
  br label %24, !dbg !4408

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4409
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4285, metadata !644) #10, !dbg !4396
  %20 = icmp eq i8* %19, null, !dbg !4410
  %21 = icmp ne i64 %18, 0, !dbg !4411
  %22 = and i1 %21, %20, !dbg !4412
  br i1 %22, label %23, label %24, !dbg !4412

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4413
  unreachable, !dbg !4413

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4414
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4415 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4417, metadata !644), !dbg !4418
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4246, metadata !644) #10, !dbg !4419
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4421
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4252, metadata !644) #10, !dbg !4422
  %3 = icmp eq i8* %2, null, !dbg !4423
  %4 = icmp ne i64 %0, 0, !dbg !4424
  %5 = and i1 %4, %3, !dbg !4425
  br i1 %5, label %6, label %7, !dbg !4425

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4426
  unreachable, !dbg !4426

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4427
  ret i8* %2, !dbg !4428
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4429 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4431, metadata !644), !dbg !4434
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4432, metadata !644), !dbg !4435
  %3 = udiv i64 9223372036854775807, %1, !dbg !4436
  %4 = icmp ult i64 %3, %0, !dbg !4436
  br i1 %4, label %8, label %5, !dbg !4438

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4439
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4433, metadata !644), !dbg !4441
  %7 = icmp eq i8* %6, null, !dbg !4442
  br i1 %7, label %8, label %9, !dbg !4443

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4445
  unreachable, !dbg !4445

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4446
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4447 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4451, metadata !644), !dbg !4453
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4452, metadata !644), !dbg !4454
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4246, metadata !644) #10, !dbg !4455
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4457
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4252, metadata !644) #10, !dbg !4458
  %4 = icmp eq i8* %3, null, !dbg !4459
  %5 = icmp ne i64 %1, 0, !dbg !4460
  %6 = and i1 %5, %4, !dbg !4461
  br i1 %6, label %7, label %8, !dbg !4461

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4462
  unreachable, !dbg !4462

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4463
  ret i8* %3, !dbg !4464
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4465 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4467, metadata !644), !dbg !4468
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4469
  %3 = add i64 %2, 1, !dbg !4470
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4451, metadata !644) #10, !dbg !4471
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4452, metadata !644) #10, !dbg !4474
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4246, metadata !644) #10, !dbg !4475
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4477
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4252, metadata !644) #10, !dbg !4478
  %5 = icmp eq i8* %4, null, !dbg !4479
  %6 = icmp ne i64 %3, 0, !dbg !4480
  %7 = and i1 %6, %5, !dbg !4481
  br i1 %7, label %8, label %9, !dbg !4481

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4482
  unreachable, !dbg !4482

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4483
  ret i8* %4, !dbg !4484
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4485 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4487, !tbaa !725
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.109, i64 0, i64 0), i32 5) #10, !dbg !4488
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* %2) #10, !dbg !4489
  tail call void @abort() #14, !dbg !4491
  unreachable, !dbg !4491
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4492 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4495, metadata !644), !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4496, metadata !644), !dbg !4502
  %3 = icmp eq i64 %0, 0, !dbg !4503
  %4 = icmp eq i64 %1, 0, !dbg !4504
  %5 = or i1 %3, %4, !dbg !4506
  br i1 %5, label %12, label %6, !dbg !4506

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4498, metadata !644), !dbg !4508
  %8 = udiv i64 %7, %1, !dbg !4509
  %9 = icmp eq i64 %8, %0, !dbg !4511
  br i1 %9, label %12, label %10, !dbg !4512

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4513
  store i32 12, i32* %11, align 4, !dbg !4515, !tbaa !725
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4495, metadata !644), !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4496, metadata !644), !dbg !4502
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4516
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4497, metadata !644), !dbg !4517
  br label %16, !dbg !4518

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4519
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4520 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4565, metadata !644), !dbg !4569
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4566, metadata !644), !dbg !4570
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4568, metadata !644), !dbg !4571
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4567, metadata !644), !dbg !4573
  %3 = icmp slt i32 %2, 0, !dbg !4574
  br i1 %3, label %4, label %6, !dbg !4576

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4577
  br label %24, !dbg !4578

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4579
  %8 = icmp eq i32 %7, 0, !dbg !4579
  br i1 %8, label %13, label %9, !dbg !4581

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4582
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4584
  %12 = icmp eq i64 %11, -1, !dbg !4586
  br i1 %12, label %16, label %13, !dbg !4587

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4588
  %15 = icmp eq i32 %14, 0, !dbg !4588
  br i1 %15, label %16, label %18, !dbg !4589

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4566, metadata !644), !dbg !4570
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4568, metadata !644), !dbg !4571
  br label %24, !dbg !4592

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4593
  %20 = load i32, i32* %19, align 4, !dbg !4593, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4566, metadata !644), !dbg !4570
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4566, metadata !644), !dbg !4570
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4568, metadata !644), !dbg !4571
  %22 = icmp eq i32 %20, 0, !dbg !4594
  br i1 %22, label %24, label %23, !dbg !4592

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4596, !tbaa !725
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4568, metadata !644), !dbg !4571
  br label %24, !dbg !4598

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4599
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4600 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4645, metadata !644), !dbg !4646
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4647
  br i1 %2, label %6, label %3, !dbg !4649

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4650
  %5 = icmp eq i32 %4, 0, !dbg !4650
  br i1 %5, label %6, label %8, !dbg !4652

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4654
  br label %17, !dbg !4655

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4656, metadata !644) #10, !dbg !4661
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4663
  %10 = load i32, i32* %9, align 8, !dbg !4663, !tbaa !4665
  %11 = and i32 %10, 256, !dbg !4666
  %12 = icmp eq i32 %11, 0, !dbg !4666
  br i1 %12, label %15, label %13, !dbg !4667

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4668
  br label %15, !dbg !4668

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4669
  br label %17, !dbg !4670

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4671
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @rpl_freopen(i8*, i8* nonnull, %struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4672 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4717, metadata !644), !dbg !4730
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4718, metadata !644), !dbg !4731
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !4719, metadata !644), !dbg !4732
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4733, metadata !644) #10, !dbg !4738
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4736, metadata !644) #10, !dbg !4740
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !4737, metadata !644) #10, !dbg !4741
  %4 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* nonnull %1, %struct._IO_FILE* nonnull %2) #10, !dbg !4742
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !4720, metadata !644), !dbg !4743
  %5 = icmp ne %struct._IO_FILE* %4, null, !dbg !4744
  %6 = icmp ne i8* %0, null, !dbg !4745
  %7 = and i1 %6, %5, !dbg !4746
  br i1 %7, label %8, label %25, !dbg !4746

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @fileno(%struct._IO_FILE* nonnull %4) #10, !dbg !4747
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4722, metadata !644), !dbg !4748
  %10 = tail call i32 @dup2(i32 %9, i32 %9) #10, !dbg !4749
  %11 = icmp slt i32 %10, 0, !dbg !4750
  br i1 %11, label %12, label %25, !dbg !4751

; <label>:12:                                     ; preds = %8
  %13 = tail call i32* @__errno_location() #1, !dbg !4752
  %14 = load i32, i32* %13, align 4, !dbg !4752, !tbaa !725
  %15 = icmp eq i32 %14, 9, !dbg !4754
  br i1 %15, label %16, label %25, !dbg !4755

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i64 0, i64 0), i32 524288) #10, !dbg !4757
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !4726, metadata !644), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4729, metadata !644), !dbg !4759
  %18 = icmp eq i32 %17, %9, !dbg !4760
  br i1 %18, label %23, label %19, !dbg !4762

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @dup2(i32 %17, i32 %9) #10, !dbg !4763
  %21 = icmp slt i32 %20, 0, !dbg !4766
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4729, metadata !644), !dbg !4759
  %22 = tail call i32 @close(i32 %17) #10, !dbg !4767
  br i1 %21, label %25, label %23

; <label>:23:                                     ; preds = %19, %16
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4729, metadata !644), !dbg !4759
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4733, metadata !644) #10, !dbg !4768
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4736, metadata !644) #10, !dbg !4771
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !4737, metadata !644) #10, !dbg !4772
  %24 = tail call %struct._IO_FILE* @freopen(i8* nonnull %0, i8* nonnull %1, %struct._IO_FILE* nonnull %4) #10, !dbg !4773
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %24, i64 0, metadata !4720, metadata !644), !dbg !4743
  br label %25, !dbg !4774

; <label>:25:                                     ; preds = %19, %8, %12, %23, %3
  %26 = phi %struct._IO_FILE* [ %4, %3 ], [ %4, %12 ], [ %4, %8 ], [ %24, %23 ], [ %4, %19 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %26, i64 0, metadata !4720, metadata !644), !dbg !4743
  ret %struct._IO_FILE* %26, !dbg !4775
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4776 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4821, metadata !644), !dbg !4827
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4822, metadata !644), !dbg !4828
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4823, metadata !644), !dbg !4829
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4830
  %5 = load i8*, i8** %4, align 8, !dbg !4830, !tbaa !3795
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4831
  %7 = load i8*, i8** %6, align 8, !dbg !4831, !tbaa !3793
  %8 = icmp eq i8* %5, %7, !dbg !4832
  br i1 %8, label %9, label %28, !dbg !4833

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4834
  %11 = load i8*, i8** %10, align 8, !dbg !4834, !tbaa !4836
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4837
  %13 = load i8*, i8** %12, align 8, !dbg !4837, !tbaa !4838
  %14 = icmp eq i8* %11, %13, !dbg !4839
  br i1 %14, label %15, label %28, !dbg !4840

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4841
  %17 = load i8*, i8** %16, align 8, !dbg !4841, !tbaa !4842
  %18 = icmp eq i8* %17, null, !dbg !4843
  br i1 %18, label %19, label %28, !dbg !4844

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4846
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4847
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4824, metadata !644), !dbg !4849
  %22 = icmp eq i64 %21, -1, !dbg !4850
  br i1 %22, label %30, label %23, !dbg !4852

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4853
  %25 = load i32, i32* %24, align 8, !dbg !4854, !tbaa !4665
  %26 = and i32 %25, -17, !dbg !4854
  store i32 %26, i32* %24, align 8, !dbg !4854, !tbaa !4665
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4855
  store i64 %21, i64* %27, align 8, !dbg !4856, !tbaa !4857
  br label %30, !dbg !4858

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4859
  br label %30, !dbg !4860

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4861
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4862 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4879, metadata !644), !dbg !4888
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4880, metadata !644), !dbg !4889
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4881, metadata !644), !dbg !4890
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4882, metadata !644), !dbg !4891
  %6 = bitcast i32* %5 to i8*, !dbg !4892
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4892
  %7 = icmp eq i32* %0, null, !dbg !4893
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4879, metadata !644), !dbg !4888
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4895
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4879, metadata !644), !dbg !4888
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4896
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4883, metadata !644), !dbg !4897
  %10 = icmp ugt i64 %9, -3, !dbg !4898
  %11 = icmp ne i64 %2, 0, !dbg !4899
  %12 = and i1 %11, %10, !dbg !4901
  br i1 %12, label %13, label %18, !dbg !4901

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4902
  br i1 %14, label %18, label %15, !dbg !4904

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4906, !tbaa !785
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4885, metadata !644), !dbg !4907
  %17 = zext i8 %16 to i32, !dbg !4908
  store i32 %17, i32* %8, align 4, !dbg !4909, !tbaa !725
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4910
  ret i64 %19, !dbg !4910
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4911 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4956, metadata !644), !dbg !4961
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4962
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4963, metadata !644), !dbg !4966
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4968
  %4 = load i32, i32* %3, align 8, !dbg !4968, !tbaa !4665
  %5 = and i32 %4, 32, !dbg !4968
  %6 = icmp eq i32 %5, 0, !dbg !4969
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4970
  %8 = icmp ne i32 %7, 0, !dbg !4971
  br i1 %6, label %9, label %19, !dbg !4972

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4974
  %11 = icmp ne i64 %2, 0, !dbg !4974
  %12 = or i1 %11, %10, !dbg !4974
  %13 = sext i1 %8 to i32, !dbg !4974
  br i1 %12, label %22, label %14, !dbg !4974

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4976
  %16 = load i32, i32* %15, align 4, !dbg !4976, !tbaa !725
  %17 = icmp ne i32 %16, 9, !dbg !4978
  %18 = sext i1 %17 to i32, !dbg !4978
  br label %22, !dbg !4978

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4980

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4982
  store i32 0, i32* %21, align 4, !dbg !4984, !tbaa !725
  br label %22, !dbg !4982

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4985
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4986 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4989, metadata !644), !dbg !5009
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4990, metadata !644), !dbg !5010
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5011
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4991, metadata !644), !dbg !5012
  %3 = icmp eq i8* %2, null, !dbg !5013
  br i1 %3, label %15, label %4, !dbg !5014

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4999, metadata !644), !dbg !5015
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5000, metadata !644), !dbg !5016
  %5 = load i8, i8* %2, align 1, !dbg !5017, !tbaa !785
  %6 = icmp eq i8 %5, 67, !dbg !5019
  br i1 %6, label %7, label %11, !dbg !5022

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5024
  %9 = load i8, i8* %8, align 1, !dbg !5024, !tbaa !785
  %10 = icmp eq i8 %9, 0, !dbg !5027
  br i1 %10, label %14, label %11, !dbg !5029

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5005, metadata !644), !dbg !5031
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0)) #10, !dbg !5032
  %13 = icmp eq i32 %12, 0, !dbg !5034
  br i1 %13, label %14, label %15, !dbg !5036

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4990, metadata !644), !dbg !5010
  br label %15, !dbg !5038

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5039
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5040 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5052, metadata !644), !dbg !5126
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5119, metadata !644), !dbg !5128
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5129
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5044, metadata !644), !dbg !5130
  %4 = icmp eq i8* %3, null, !dbg !5131
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %3, !dbg !5133
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5044, metadata !644), !dbg !5130
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5134, !tbaa !652
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5066, metadata !644) #10, !dbg !5135
  %7 = icmp eq i8* %6, null, !dbg !5136
  br i1 %7, label %8, label %127, !dbg !5137

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.132, i64 0, i64 0)) #10, !dbg !5138
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5067, metadata !644) #10, !dbg !5139
  %10 = icmp eq i8* %9, null, !dbg !5140
  br i1 %10, label %14, label %11, !dbg !5142

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5143, !tbaa !785
  %13 = icmp eq i8 %12, 0, !dbg !5145
  br i1 %13, label %14, label %15, !dbg !5146

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5148

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.133, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5067, metadata !644) #10, !dbg !5139
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5149
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5070, metadata !644) #10, !dbg !5150
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5072, metadata !644) #10, !dbg !5151
  %18 = icmp eq i64 %17, 0, !dbg !5152
  br i1 %18, label %24, label %19, !dbg !5153

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5154
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5154
  %22 = load i8, i8* %21, align 1, !dbg !5154, !tbaa !785
  %23 = icmp ne i8 %22, 47, !dbg !5156
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5157
  %27 = add i64 %17, 14, !dbg !5158
  %28 = add i64 %27, %26, !dbg !5159
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5160
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5069, metadata !644) #10, !dbg !5161
  %30 = icmp eq i8* %29, null, !dbg !5162
  br i1 %30, label %125, label %31, !dbg !5162

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5163
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5166

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5167, !tbaa !785
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5169
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.134, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5170
  br label %37, !dbg !5171

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5169
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.134, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5170
  br label %37, !dbg !5171

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5172
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5074, metadata !644) #10, !dbg !5173
  %39 = icmp slt i32 %38, 0, !dbg !5174
  br i1 %39, label %123, label %40, !dbg !5175

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.135, i64 0, i64 0)) #10, !dbg !5176
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5075, metadata !644) #10, !dbg !5177
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5178
  br i1 %42, label %48, label %43, !dbg !5179

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5180

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !5181
  br label %123, !dbg !5183

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5116, metadata !644) #10, !dbg !5180
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5117, metadata !644) #10, !dbg !5184
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !5185
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !5186
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5187, metadata !644) #10, !dbg !5192
  %53 = load i8*, i8** %46, align 8, !dbg !5194, !tbaa !3793
  %54 = load i8*, i8** %47, align 8, !dbg !5194, !tbaa !3795
  %55 = icmp ult i8* %53, %54, !dbg !5194
  br i1 %55, label %58, label %56, !dbg !5194, !prof !3796

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5195
  br label %62, !dbg !5195

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5197
  store i8* %59, i8** %46, align 8, !dbg !5197, !tbaa !3793
  %60 = load i8, i8* %53, align 1, !dbg !5197, !tbaa !785
  %61 = zext i8 %60 to i32, !dbg !5197
  br label %62, !dbg !5197

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5199
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5118, metadata !644) #10, !dbg !5201
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5202

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5203

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5187, metadata !644) #10, !dbg !5203
  %66 = load i8*, i8** %46, align 8, !dbg !5207, !tbaa !3793
  %67 = load i8*, i8** %47, align 8, !dbg !5207, !tbaa !3795
  %68 = icmp ult i8* %66, %67, !dbg !5207
  br i1 %68, label %71, label %69, !dbg !5207, !prof !3796

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5208
  br label %75, !dbg !5208

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5209
  store i8* %72, i8** %46, align 8, !dbg !5209, !tbaa !3793
  %73 = load i8, i8* %66, align 1, !dbg !5209, !tbaa !785
  %74 = zext i8 %73 to i32, !dbg !5209
  br label %75, !dbg !5209

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5210
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5118, metadata !644) #10, !dbg !5201
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5211, !llvm.loop !5213

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5216
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.136, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5217
  %80 = icmp slt i32 %79, 2, !dbg !5219
  br i1 %80, label %115, label %81, !dbg !5220

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5221
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5123, metadata !644) #10, !dbg !5222
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5223
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5124, metadata !644) #10, !dbg !5224
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5125, metadata !644) #10, !dbg !5225
  %84 = icmp eq i64 %51, 0, !dbg !5226
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5228

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5117, metadata !644) #10, !dbg !5184
  %89 = add i64 %86, 2, !dbg !5229
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5231
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5116, metadata !644) #10, !dbg !5180
  br label %95, !dbg !5232

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5233
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5117, metadata !644) #10, !dbg !5184
  %93 = add i64 %92, 1, !dbg !5235
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5236
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5116, metadata !644) #10, !dbg !5180
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5116, metadata !644) #10, !dbg !5180
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5117, metadata !644) #10, !dbg !5184
  %98 = icmp eq i8* %97, null, !dbg !5237
  br i1 %98, label %99, label %100, !dbg !5239

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5117, metadata !644) #10, !dbg !5184
  call void @free(i8* %52) #10, !dbg !5240
  br label %116, !dbg !5242

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5243
  %102 = xor i64 %83, -1, !dbg !5244
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5244
  %104 = xor i64 %82, -1, !dbg !5245
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5245
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5246, metadata !644) #10, !dbg !5255
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5254, metadata !644) #10, !dbg !5255
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5257
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5258
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5246, metadata !644) #10, !dbg !5259
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5254, metadata !644) #10, !dbg !5259
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5261
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5262
  br label %111, !dbg !5263

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5180

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5116, metadata !644) #10, !dbg !5180
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5117, metadata !644) #10, !dbg !5184
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5263
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5263
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5180

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5180

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5116, metadata !644) #10, !dbg !5180
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5117, metadata !644) #10, !dbg !5184
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5263
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5263
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5264
  %120 = icmp eq i64 %117, 0, !dbg !5265
  br i1 %120, label %123, label %121, !dbg !5267

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5268
  store i8 0, i8* %122, align 1, !dbg !5270, !tbaa !785
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5066, metadata !644) #10, !dbg !5135
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5066, metadata !644) #10, !dbg !5135
  call void @free(i8* %29) #10, !dbg !5271
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5066, metadata !644) #10, !dbg !5135
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5272, !tbaa !652
  br label %127, !dbg !5273

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5045, metadata !644), !dbg !5274
  %129 = load i8, i8* %128, align 1, !dbg !5275, !tbaa !785
  %130 = icmp eq i8 %129, 0, !dbg !5276
  br i1 %130, label %157, label %131, !dbg !5277

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5279

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5279
  %136 = icmp eq i32 %135, 0, !dbg !5280
  br i1 %136, label %143, label %137, !dbg !5281

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5282
  br i1 %138, label %139, label %147, !dbg !5284

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5285
  %141 = load i8, i8* %140, align 1, !dbg !5285, !tbaa !785
  %142 = icmp eq i8 %141, 0, !dbg !5287
  br i1 %142, label %143, label %147, !dbg !5288

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5290
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5292
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5293
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5044, metadata !644), !dbg !5130
  br label %157, !dbg !5294

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5295
  %149 = add i64 %148, 1, !dbg !5296
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5297
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5045, metadata !644), !dbg !5274
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5298
  %152 = add i64 %151, 1, !dbg !5299
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5300
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5045, metadata !644), !dbg !5274
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5045, metadata !644), !dbg !5274
  %154 = load i8, i8* %153, align 1, !dbg !5275, !tbaa !785
  %155 = icmp eq i8 %154, 0, !dbg !5276
  br i1 %155, label %156, label %132, !dbg !5277, !llvm.loop !5301

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5130

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5044, metadata !644), !dbg !5130
  %159 = load i8, i8* %158, align 1, !dbg !5304, !tbaa !785
  %160 = icmp eq i8 %159, 0, !dbg !5306
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0), i8* %158, !dbg !5307
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5044, metadata !644), !dbg !5130
  ret i8* %161, !dbg !5308
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

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
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !96, !102, !111, !569, !572, !118, !136, !144, !574, !595, !214, !603, !614, !616, !618, !620, !622, !624, !626, !629, !631, !223}
!llvm.ident = !{!634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634, !634}
!llvm.module.flags = !{!635, !636, !637, !638}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "n_strings", scope: !2, file: !3, line: 74, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !41)
!3 = !DIFile(filename: "src/tsort.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 45, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!23 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!24 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!25 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!26 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!27 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!28 = !{!29, !32, !33, !36, !38}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 62, baseType: !35)
!34 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42, !0, !73, !90, !92}
!42 = !DIGlobalVariableExpression(var: !43)
!43 = distinct !DIGlobalVariable(name: "infomap", scope: !44, file: !45, line: 632, type: !70, isLocal: true, isDefinition: true)
!44 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !45, file: !45, line: 630, type: !46, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !48)
!45 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!46 = !DISubroutineType(types: !47)
!47 = !{null, !29}
!48 = !{!49, !50, !51, !58, !60, !61, !62, !65, !66, !68}
!49 = !DILocalVariable(name: "program", arg: 1, scope: !44, file: !45, line: 630, type: !29)
!50 = !DILocalVariable(name: "node", scope: !44, file: !45, line: 642, type: !29)
!51 = !DILocalVariable(name: "map_prog", scope: !44, file: !45, line: 643, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !44, file: !45, line: 632, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !54, file: !45, line: 632, baseType: !29, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !54, file: !45, line: 632, baseType: !29, size: 64, offset: 64)
!58 = !DILocalVariable(name: "__s1_len", scope: !59, file: !45, line: 645, type: !33)
!59 = distinct !DILexicalBlock(scope: !44, file: !45, line: 645, column: 33)
!60 = !DILocalVariable(name: "__s2_len", scope: !59, file: !45, line: 645, type: !33)
!61 = !DILocalVariable(name: "lc_messages", scope: !44, file: !45, line: 655, type: !29)
!62 = !DILocalVariable(name: "__s1_len", scope: !63, file: !45, line: 656, type: !33)
!63 = distinct !DILexicalBlock(scope: !64, file: !45, line: 656, column: 22)
!64 = distinct !DILexicalBlock(scope: !44, file: !45, line: 656, column: 7)
!65 = !DILocalVariable(name: "__s2_len", scope: !63, file: !45, line: 656, type: !33)
!66 = !DILocalVariable(name: "__s2", scope: !67, file: !45, line: 656, type: !38)
!67 = distinct !DILexicalBlock(scope: !63, file: !45, line: 656, column: 22)
!68 = !DILocalVariable(name: "__result", scope: !67, file: !45, line: 656, type: !69)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 896, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 7)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !3, line: 65, type: !75, isLocal: true, isDefinition: true)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !3, line: 54, size: 448, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !76, file: !3, line: 56, baseType: !29, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !76, file: !3, line: 57, baseType: !75, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !76, file: !3, line: 57, baseType: !75, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !76, file: !3, line: 58, baseType: !69, size: 32, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !76, file: !3, line: 59, baseType: !33, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "qlink", scope: !76, file: !3, line: 60, baseType: !75, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !76, file: !3, line: 61, baseType: !85, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "successor", file: !3, line: 47, size: 128, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "suc", scope: !86, file: !3, line: 49, baseType: !75, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !3, line: 50, baseType: !85, size: 64, offset: 64)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "zeros", scope: !2, file: !3, line: 68, type: !75, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "loop", scope: !2, file: !3, line: 71, type: !75, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "Version", scope: !96, file: !97, line: 2, type: !29, isLocal: false, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, globals: !99)
!97 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{}
!99 = !{!94}
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "file_name", scope: !102, file: !107, line: 36, type: !29, isLocal: true, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, globals: !104)
!103 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !{!100, !105}
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !102, file: !107, line: 46, type: !108, isLocal: true, isDefinition: true)
!107 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!108 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "exit_failure", scope: !111, file: !114, line: 24, type: !115, isLocal: false, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, globals: !113)
!112 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !{!109}
!114 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!116 = !DIGlobalVariableExpression(var: !117)
!117 = distinct !DIGlobalVariable(name: "long_options", scope: !118, file: !121, line: 33, type: !122, isLocal: true, isDefinition: true)
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, globals: !120)
!119 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !{!116}
!121 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 768, elements: !132)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !125, line: 104, size: 256, elements: !126)
!125 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!127, !128, !129, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !125, line: 106, baseType: !29, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !124, file: !125, line: 109, baseType: !69, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !124, file: !125, line: 110, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !124, file: !125, line: 111, baseType: !69, size: 32, offset: 192)
!132 = !{!133}
!133 = !DISubrange(count: 3)
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "program_name", scope: !136, file: !141, line: 33, type: !29, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !138, globals: !140)
!137 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!138 = !{!32, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!140 = !{!134}
!141 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !DIGlobalVariableExpression(var: !143)
!143 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !144, file: !172, line: 77, type: !208, isLocal: false, isDefinition: true)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !167, globals: !169)
!145 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !{!5, !147, !152}
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!150 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!151 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 46, size: 32, elements: !154)
!153 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!155 = !DIEnumerator(name: "_ISupper", value: 256)
!156 = !DIEnumerator(name: "_ISlower", value: 512)
!157 = !DIEnumerator(name: "_ISalpha", value: 1024)
!158 = !DIEnumerator(name: "_ISdigit", value: 2048)
!159 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!160 = !DIEnumerator(name: "_ISspace", value: 8192)
!161 = !DIEnumerator(name: "_ISprint", value: 16384)
!162 = !DIEnumerator(name: "_ISgraph", value: 32768)
!163 = !DIEnumerator(name: "_ISblank", value: 1)
!164 = !DIEnumerator(name: "_IScntrl", value: 2)
!165 = !DIEnumerator(name: "_ISpunct", value: 4)
!166 = !DIEnumerator(name: "_ISalnum", value: 8)
!167 = !{!69, !168, !33, !139}
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !{!142, !170, !177, !190, !192, !197, !204, !206}
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !144, file: !172, line: 93, type: !173, isLocal: false, isDefinition: true)
!172 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 320, elements: !175)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!175 = !{!176}
!176 = !DISubrange(count: 10)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !144, file: !172, line: 1043, type: !179, isLocal: false, isDefinition: true)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !172, line: 57, size: 448, elements: !180)
!180 = !{!181, !182, !183, !188, !189}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !179, file: !172, line: 60, baseType: !5, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !172, line: 63, baseType: !69, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !179, file: !172, line: 67, baseType: !184, size: 256, offset: 64)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !186)
!185 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!186 = !{!187}
!187 = !DISubrange(count: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !179, file: !172, line: 70, baseType: !29, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !179, file: !172, line: 73, baseType: !29, size: 64, offset: 384)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !144, file: !172, line: 108, type: !179, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "slot0", scope: !144, file: !172, line: 834, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 256)
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "slotvec", scope: !144, file: !172, line: 837, type: !199, isLocal: true, isDefinition: true)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !172, line: 826, size: 128, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !200, file: !172, line: 828, baseType: !33, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !172, line: 829, baseType: !139, size: 64, offset: 64)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "nslots", scope: !144, file: !172, line: 835, type: !69, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "slotvec0", scope: !144, file: !172, line: 836, type: !200, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 704, elements: !210)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!210 = !{!211}
!211 = !DISubrange(count: 11)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !214, file: !217, line: 26, type: !218, isLocal: false, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, globals: !216)
!215 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!216 = !{!212}
!217 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 376, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 47)
!221 = !DIGlobalVariableExpression(var: !222)
!222 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !223, file: !567, line: 120, type: !568, isLocal: true, isDefinition: true)
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !225, retainedTypes: !564, globals: !566)
!224 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!225 = !{!226}
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 41, size: 32, elements: !228)
!227 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!229 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!230 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!231 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!232 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!233 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!234 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!235 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!236 = !DIEnumerator(name: "DAY_1", value: 131079)
!237 = !DIEnumerator(name: "DAY_2", value: 131080)
!238 = !DIEnumerator(name: "DAY_3", value: 131081)
!239 = !DIEnumerator(name: "DAY_4", value: 131082)
!240 = !DIEnumerator(name: "DAY_5", value: 131083)
!241 = !DIEnumerator(name: "DAY_6", value: 131084)
!242 = !DIEnumerator(name: "DAY_7", value: 131085)
!243 = !DIEnumerator(name: "ABMON_1", value: 131086)
!244 = !DIEnumerator(name: "ABMON_2", value: 131087)
!245 = !DIEnumerator(name: "ABMON_3", value: 131088)
!246 = !DIEnumerator(name: "ABMON_4", value: 131089)
!247 = !DIEnumerator(name: "ABMON_5", value: 131090)
!248 = !DIEnumerator(name: "ABMON_6", value: 131091)
!249 = !DIEnumerator(name: "ABMON_7", value: 131092)
!250 = !DIEnumerator(name: "ABMON_8", value: 131093)
!251 = !DIEnumerator(name: "ABMON_9", value: 131094)
!252 = !DIEnumerator(name: "ABMON_10", value: 131095)
!253 = !DIEnumerator(name: "ABMON_11", value: 131096)
!254 = !DIEnumerator(name: "ABMON_12", value: 131097)
!255 = !DIEnumerator(name: "MON_1", value: 131098)
!256 = !DIEnumerator(name: "MON_2", value: 131099)
!257 = !DIEnumerator(name: "MON_3", value: 131100)
!258 = !DIEnumerator(name: "MON_4", value: 131101)
!259 = !DIEnumerator(name: "MON_5", value: 131102)
!260 = !DIEnumerator(name: "MON_6", value: 131103)
!261 = !DIEnumerator(name: "MON_7", value: 131104)
!262 = !DIEnumerator(name: "MON_8", value: 131105)
!263 = !DIEnumerator(name: "MON_9", value: 131106)
!264 = !DIEnumerator(name: "MON_10", value: 131107)
!265 = !DIEnumerator(name: "MON_11", value: 131108)
!266 = !DIEnumerator(name: "MON_12", value: 131109)
!267 = !DIEnumerator(name: "AM_STR", value: 131110)
!268 = !DIEnumerator(name: "PM_STR", value: 131111)
!269 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!270 = !DIEnumerator(name: "D_FMT", value: 131113)
!271 = !DIEnumerator(name: "T_FMT", value: 131114)
!272 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!273 = !DIEnumerator(name: "ERA", value: 131116)
!274 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!275 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!276 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!277 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!278 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!279 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!280 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!281 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!282 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!283 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!284 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!285 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!286 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!287 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!288 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!289 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!290 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!291 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!292 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!293 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!294 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!295 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!296 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!297 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!298 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!299 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!300 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!301 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!302 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!303 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!304 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!305 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!306 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!307 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!308 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!309 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!310 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!311 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!312 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!313 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!314 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!315 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!316 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!317 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!318 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!319 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!320 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!321 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!322 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!323 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!324 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!325 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!326 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!327 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!328 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!329 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!330 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!331 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!332 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!333 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!334 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!335 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!336 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!337 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!338 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!339 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!340 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!341 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!342 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!343 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!344 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!345 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!346 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!347 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!348 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!349 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!350 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!351 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!352 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!353 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!354 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!355 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!356 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!357 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!358 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!359 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!360 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!361 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!362 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!364 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!365 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!366 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!367 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!368 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!369 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!370 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!371 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!372 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!373 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!374 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!375 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!376 = !DIEnumerator(name: "CODESET", value: 14)
!377 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!378 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!379 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!380 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!427 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!428 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!429 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!432 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!433 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!448 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!449 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!450 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!451 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!452 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!453 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!454 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!455 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!456 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!457 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!458 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!459 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!460 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!461 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!462 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!463 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!464 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!465 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!466 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!467 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!468 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!469 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!470 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!487 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!488 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!491 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!492 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!493 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!494 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!495 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!496 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!497 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!498 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!499 = !DIEnumerator(name: "THOUSEP", value: 65537)
!500 = !DIEnumerator(name: "__GROUPING", value: 65538)
!501 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!502 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!503 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!504 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!505 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!506 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!507 = !DIEnumerator(name: "__YESSTR", value: 327682)
!508 = !DIEnumerator(name: "__NOSTR", value: 327683)
!509 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!510 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!511 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!512 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!513 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!514 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!515 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!516 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!517 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!518 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!519 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!520 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!521 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!522 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!523 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!525 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!526 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!527 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!528 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!529 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!530 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!531 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!532 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!533 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!534 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!535 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!536 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!537 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!538 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!539 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!540 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!541 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!542 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!543 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!544 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!545 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!562 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!563 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!564 = !{!32, !139, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!566 = !{!221}
!567 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !571)
!570 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = !{!19}
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98)
!573 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !576, retainedTypes: !594)
!575 = !DIFile(filename: "./lib/readtokens.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = !{!577, !581}
!577 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !578, line: 51, size: 32, elements: !579)
!578 = !DIFile(filename: "lib/readtokens.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = !{!580}
!580 = !DIEnumerator(name: "bits_per_word", value: 64)
!581 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !583, file: !582, line: 192, size: 32, elements: !592)
!582 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = distinct !DISubprogram(name: "x2nrealloc", scope: !582, file: !582, line: 180, type: !584, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !587)
!584 = !DISubroutineType(types: !585)
!585 = !{!32, !32, !586, !33}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!587 = !{!588, !589, !590, !591}
!588 = !DILocalVariable(name: "p", arg: 1, scope: !583, file: !582, line: 180, type: !32)
!589 = !DILocalVariable(name: "pn", arg: 2, scope: !583, file: !582, line: 180, type: !586)
!590 = !DILocalVariable(name: "s", arg: 3, scope: !583, file: !582, line: 180, type: !33)
!591 = !DILocalVariable(name: "n", scope: !583, file: !582, line: 182, type: !33)
!592 = !{!593}
!593 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!594 = !{!33, !32, !565}
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !597, retainedTypes: !602)
!596 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = !{!598}
!598 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !599, line: 41, size: 32, elements: !600)
!599 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = !{!601}
!601 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!602 = !{!32}
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !605, retainedTypes: !613)
!604 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !{!606}
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !607, file: !582, line: 192, size: 32, elements: !592)
!607 = distinct !DISubprogram(name: "x2nrealloc", scope: !582, file: !582, line: 180, type: !584, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !608)
!608 = !{!609, !610, !611, !612}
!609 = !DILocalVariable(name: "p", arg: 1, scope: !607, file: !582, line: 180, type: !32)
!610 = !DILocalVariable(name: "pn", arg: 2, scope: !607, file: !582, line: 180, type: !586)
!611 = !DILocalVariable(name: "s", arg: 3, scope: !607, file: !582, line: 180, type: !33)
!612 = !DILocalVariable(name: "n", scope: !607, file: !582, line: 182, type: !33)
!613 = !{!33, !139, !32}
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98)
!615 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !602)
!617 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98)
!619 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !602)
!621 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98)
!623 = !DIFile(filename: "./lib/freopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !602)
!625 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !628)
!627 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = !{!33}
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98)
!630 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !633)
!632 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!633 = !{!33, !36, !38, !29}
!634 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!635 = !{i32 2, !"Dwarf Version", i32 4}
!636 = !{i32 2, !"Debug Info Version", i32 3}
!637 = !{i32 1, !"PIC Level", i32 2}
!638 = !{i32 1, !"PIE Level", i32 2}
!639 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 77, type: !640, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !69}
!642 = !{!643}
!643 = !DILocalVariable(name: "status", arg: 1, scope: !639, file: !3, line: 77, type: !69)
!644 = !DIExpression()
!645 = !DILocation(line: 77, column: 12, scope: !639)
!646 = !DILocation(line: 79, column: 14, scope: !647)
!647 = distinct !DILexicalBlock(scope: !639, file: !3, line: 79, column: 7)
!648 = !DILocation(line: 79, column: 7, scope: !639)
!649 = !DILocation(line: 80, column: 5, scope: !650)
!650 = !DILexicalBlockFile(scope: !651, file: !3, discriminator: 1)
!651 = distinct !DILexicalBlock(scope: !647, file: !3, line: 80, column: 5)
!652 = !{!653, !653, i64 0}
!653 = !{!"any pointer", !654, i64 0}
!654 = !{!"omnipotent char", !655, i64 0}
!655 = !{!"Simple C/C++ TBAA"}
!656 = !DILocation(line: 80, column: 5, scope: !657)
!657 = !DILexicalBlockFile(scope: !651, file: !3, discriminator: 3)
!658 = !DILocation(line: 80, column: 5, scope: !659)
!659 = !DILexicalBlockFile(scope: !651, file: !3, discriminator: 2)
!660 = !DILocation(line: 83, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !647, file: !3, line: 82, column: 5)
!662 = !DILocation(line: 83, column: 7, scope: !663)
!663 = !DILexicalBlockFile(scope: !661, file: !3, discriminator: 1)
!664 = !DILocation(line: 580, column: 3, scope: !665, inlinedAt: !668)
!665 = distinct !DISubprogram(name: "emit_stdin_note", scope: !45, file: !45, line: 578, type: !666, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !98)
!666 = !DISubroutineType(types: !667)
!667 = !{null}
!668 = distinct !DILocation(line: 88, column: 7, scope: !661)
!669 = !DILocation(line: 580, column: 3, scope: !670, inlinedAt: !668)
!670 = !DILexicalBlockFile(scope: !665, file: !45, discriminator: 1)
!671 = !DILocation(line: 90, column: 7, scope: !661)
!672 = !DILocation(line: 90, column: 7, scope: !663)
!673 = !DILocation(line: 93, column: 7, scope: !661)
!674 = !DILocation(line: 93, column: 7, scope: !663)
!675 = !DILocation(line: 94, column: 7, scope: !661)
!676 = !DILocation(line: 94, column: 7, scope: !663)
!677 = !DILocation(line: 642, column: 15, scope: !44, inlinedAt: !678)
!678 = distinct !DILocation(line: 95, column: 7, scope: !661)
!679 = !DILocation(line: 651, column: 3, scope: !44, inlinedAt: !678)
!680 = !DILocation(line: 651, column: 3, scope: !681, inlinedAt: !678)
!681 = !DILexicalBlockFile(scope: !44, file: !45, discriminator: 1)
!682 = !DILocation(line: 655, column: 29, scope: !44, inlinedAt: !678)
!683 = !DILocation(line: 655, column: 15, scope: !44, inlinedAt: !678)
!684 = !DILocation(line: 656, column: 7, scope: !64, inlinedAt: !678)
!685 = !DILocation(line: 656, column: 19, scope: !64, inlinedAt: !678)
!686 = !DILocation(line: 656, column: 22, scope: !687, inlinedAt: !678)
!687 = !DILexicalBlockFile(scope: !64, file: !45, discriminator: 16)
!688 = !DILocation(line: 656, column: 7, scope: !689, inlinedAt: !678)
!689 = !DILexicalBlockFile(scope: !44, file: !45, discriminator: 16)
!690 = !DILocation(line: 662, column: 7, scope: !691, inlinedAt: !678)
!691 = distinct !DILexicalBlock(scope: !64, file: !45, line: 657, column: 5)
!692 = !DILocation(line: 662, column: 7, scope: !693, inlinedAt: !678)
!693 = !DILexicalBlockFile(scope: !691, file: !45, discriminator: 1)
!694 = !DILocation(line: 664, column: 5, scope: !691, inlinedAt: !678)
!695 = !DILocation(line: 665, column: 3, scope: !44, inlinedAt: !678)
!696 = !DILocation(line: 665, column: 3, scope: !681, inlinedAt: !678)
!697 = !DILocation(line: 667, column: 3, scope: !44, inlinedAt: !678)
!698 = !DILocation(line: 667, column: 3, scope: !681, inlinedAt: !678)
!699 = !DILocation(line: 98, column: 3, scope: !639)
!700 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 542, type: !701, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!69, !69, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!704 = !{!705, !706, !707}
!705 = !DILocalVariable(name: "argc", arg: 1, scope: !700, file: !3, line: 542, type: !69)
!706 = !DILocalVariable(name: "argv", arg: 2, scope: !700, file: !3, line: 542, type: !703)
!707 = !DILocalVariable(name: "ok", scope: !700, file: !3, line: 544, type: !108)
!708 = !DILocation(line: 542, column: 11, scope: !700)
!709 = !DILocation(line: 542, column: 24, scope: !700)
!710 = !DILocation(line: 547, column: 21, scope: !700)
!711 = !DILocation(line: 547, column: 3, scope: !700)
!712 = !DILocation(line: 548, column: 3, scope: !700)
!713 = !DILocation(line: 549, column: 3, scope: !700)
!714 = !DILocation(line: 550, column: 3, scope: !700)
!715 = !DILocation(line: 552, column: 3, scope: !700)
!716 = !DILocation(line: 554, column: 58, scope: !700)
!717 = !DILocation(line: 554, column: 3, scope: !700)
!718 = !DILocation(line: 556, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !700, file: !3, line: 556, column: 7)
!720 = !DILocation(line: 556, column: 48, scope: !719)
!721 = !DILocation(line: 556, column: 7, scope: !700)
!722 = !DILocation(line: 557, column: 5, scope: !719)
!723 = !DILocation(line: 559, column: 18, scope: !724)
!724 = distinct !DILexicalBlock(scope: !700, file: !3, line: 559, column: 7)
!725 = !{!726, !726, i64 0}
!726 = !{!"int", !654, i64 0}
!727 = !DILocation(line: 559, column: 16, scope: !724)
!728 = !DILocation(line: 559, column: 9, scope: !724)
!729 = !DILocation(line: 559, column: 7, scope: !700)
!730 = !DILocation(line: 561, column: 20, scope: !731)
!731 = distinct !DILexicalBlock(scope: !724, file: !3, line: 560, column: 5)
!732 = !DILocation(line: 561, column: 55, scope: !731)
!733 = !DILocation(line: 561, column: 62, scope: !731)
!734 = !DILocation(line: 561, column: 50, scope: !731)
!735 = !DILocation(line: 561, column: 43, scope: !736)
!736 = !DILexicalBlockFile(scope: !731, file: !3, discriminator: 1)
!737 = !DILocation(line: 561, column: 7, scope: !738)
!738 = !DILexicalBlockFile(scope: !731, file: !3, discriminator: 2)
!739 = !DILocation(line: 562, column: 7, scope: !731)
!740 = !DILocation(line: 565, column: 22, scope: !700)
!741 = !DILocation(line: 565, column: 15, scope: !700)
!742 = !DILocation(line: 565, column: 38, scope: !743)
!743 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 2)
!744 = !DILocation(line: 565, column: 15, scope: !743)
!745 = !DILocation(line: 565, column: 15, scope: !746)
!746 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 3)
!747 = !DILocalVariable(name: "file", arg: 1, scope: !748, file: !3, line: 436, type: !29)
!748 = distinct !DISubprogram(name: "tsort", scope: !3, file: !3, line: 436, type: !749, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!108, !29}
!751 = !{!747, !752, !753, !754, !755, !756, !763, !764, !766, !767, !769, !770, !772}
!752 = !DILocalVariable(name: "ok", scope: !748, file: !3, line: 438, type: !108)
!753 = !DILocalVariable(name: "root", scope: !748, file: !3, line: 439, type: !75)
!754 = !DILocalVariable(name: "j", scope: !748, file: !3, line: 440, type: !75)
!755 = !DILocalVariable(name: "k", scope: !748, file: !3, line: 441, type: !75)
!756 = !DILocalVariable(name: "tokenbuffer", scope: !748, file: !3, line: 442, type: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !758, line: 31, baseType: !759)
!758 = !DIFile(filename: "./lib/readtokens.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !758, line: 26, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !759, file: !758, line: 28, baseType: !33, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !759, file: !758, line: 29, baseType: !139, size: 64, offset: 64)
!763 = !DILocalVariable(name: "is_stdin", scope: !748, file: !3, line: 443, type: !108)
!764 = !DILocalVariable(name: "__s1_len", scope: !765, file: !3, line: 443, type: !33)
!765 = distinct !DILexicalBlock(scope: !748, file: !3, line: 443, column: 19)
!766 = !DILocalVariable(name: "__s2_len", scope: !765, file: !3, line: 443, type: !33)
!767 = !DILocalVariable(name: "__s2", scope: !768, file: !3, line: 443, type: !38)
!768 = distinct !DILexicalBlock(scope: !765, file: !3, line: 443, column: 19)
!769 = !DILocalVariable(name: "__result", scope: !768, file: !3, line: 443, type: !69)
!770 = !DILocalVariable(name: "len", scope: !771, file: !3, line: 458, type: !33)
!771 = distinct !DILexicalBlock(scope: !748, file: !3, line: 456, column: 5)
!772 = !DILocalVariable(name: "p", scope: !773, file: !3, line: 489, type: !85)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 488, column: 9)
!774 = distinct !DILexicalBlock(scope: !748, file: !3, line: 483, column: 5)
!775 = !DILocation(line: 436, column: 20, scope: !748, inlinedAt: !776)
!776 = distinct !DILocation(line: 565, column: 8, scope: !746)
!777 = !DILocation(line: 438, column: 8, scope: !748, inlinedAt: !776)
!778 = !DILocation(line: 440, column: 16, scope: !748, inlinedAt: !776)
!779 = !DILocation(line: 441, column: 16, scope: !748, inlinedAt: !776)
!780 = !DILocation(line: 442, column: 3, scope: !748, inlinedAt: !776)
!781 = !DILocation(line: 443, column: 19, scope: !765, inlinedAt: !776)
!782 = !DILocation(line: 443, column: 19, scope: !768, inlinedAt: !776)
!783 = !DILocation(line: 443, column: 19, scope: !784, inlinedAt: !776)
!784 = !DILexicalBlockFile(scope: !768, file: !3, discriminator: 2)
!785 = !{!654, !654, i64 0}
!786 = !DILocation(line: 443, column: 19, scope: !787, inlinedAt: !776)
!787 = !DILexicalBlockFile(scope: !788, file: !3, discriminator: 3)
!788 = distinct !DILexicalBlock(scope: !768, file: !3, line: 443, column: 19)
!789 = !DILocation(line: 443, column: 19, scope: !790, inlinedAt: !776)
!790 = !DILexicalBlockFile(scope: !788, file: !3, discriminator: 2)
!791 = !DILocation(line: 443, column: 19, scope: !792, inlinedAt: !776)
!792 = !DILexicalBlockFile(scope: !793, file: !3, discriminator: 4)
!793 = distinct !DILexicalBlock(scope: !788, file: !3, line: 443, column: 19)
!794 = !DILocation(line: 443, column: 19, scope: !795, inlinedAt: !776)
!795 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 4)
!796 = distinct !DILexicalBlock(scope: !793, file: !3, line: 443, column: 19)
!797 = !DILocation(line: 443, column: 19, scope: !798, inlinedAt: !776)
!798 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 13)
!799 = !DILocalVariable(name: "str", arg: 1, scope: !800, file: !3, line: 103, type: !29)
!800 = distinct !DISubprogram(name: "new_item", scope: !3, file: !3, line: 103, type: !801, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!75, !29}
!803 = !{!799, !804}
!804 = !DILocalVariable(name: "k", scope: !800, file: !3, line: 105, type: !75)
!805 = !DILocation(line: 103, column: 23, scope: !800, inlinedAt: !806)
!806 = distinct !DILocation(line: 446, column: 10, scope: !748, inlinedAt: !776)
!807 = !DILocation(line: 105, column: 20, scope: !800, inlinedAt: !806)
!808 = !DILocation(line: 105, column: 16, scope: !800, inlinedAt: !806)
!809 = !DILocation(line: 112, column: 6, scope: !800, inlinedAt: !806)
!810 = !DILocation(line: 112, column: 12, scope: !800, inlinedAt: !806)
!811 = !DILocation(line: 439, column: 16, scope: !748, inlinedAt: !776)
!812 = !DILocation(line: 108, column: 11, scope: !800, inlinedAt: !806)
!813 = !DILocation(line: 448, column: 17, scope: !814, inlinedAt: !776)
!814 = distinct !DILexicalBlock(scope: !748, file: !3, line: 448, column: 7)
!815 = !DILocation(line: 448, column: 42, scope: !816, inlinedAt: !776)
!816 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 1)
!817 = !DILocation(line: 448, column: 22, scope: !816, inlinedAt: !776)
!818 = !DILocation(line: 448, column: 7, scope: !819, inlinedAt: !776)
!819 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 1)
!820 = !DILocation(line: 449, column: 5, scope: !814, inlinedAt: !776)
!821 = !DILocation(line: 449, column: 5, scope: !816, inlinedAt: !776)
!822 = !DILocation(line: 449, column: 5, scope: !823, inlinedAt: !776)
!823 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 2)
!824 = !DILocation(line: 451, column: 12, scope: !748, inlinedAt: !776)
!825 = !DILocation(line: 451, column: 3, scope: !748, inlinedAt: !776)
!826 = !DIExpression(DW_OP_deref)
!827 = !DILocation(line: 442, column: 16, scope: !748, inlinedAt: !776)
!828 = !DILocation(line: 453, column: 3, scope: !748, inlinedAt: !776)
!829 = !DILocation(line: 455, column: 3, scope: !748, inlinedAt: !776)
!830 = !DILocation(line: 458, column: 31, scope: !771, inlinedAt: !776)
!831 = !DILocation(line: 458, column: 20, scope: !771, inlinedAt: !776)
!832 = !DILocation(line: 458, column: 14, scope: !771, inlinedAt: !776)
!833 = !DILocation(line: 459, column: 11, scope: !771, inlinedAt: !776)
!834 = !DILocation(line: 462, column: 7, scope: !835, inlinedAt: !776)
!835 = !DILexicalBlockFile(scope: !836, file: !3, discriminator: 2)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 462, column: 7)
!837 = distinct !DILexicalBlock(scope: !771, file: !3, line: 462, column: 7)
!838 = !DILocation(line: 464, column: 42, scope: !771, inlinedAt: !776)
!839 = !{!840, !653, i64 8}
!840 = !{!"tokenbuffer", !841, i64 0, !653, i64 8}
!841 = !{!"long", !654, i64 0}
!842 = !DILocalVariable(name: "root", arg: 1, scope: !843, file: !3, line: 128, type: !75)
!843 = distinct !DISubprogram(name: "search_item", scope: !3, file: !3, line: 128, type: !844, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!75, !75, !29}
!846 = !{!842, !847, !848, !849, !850, !851, !852, !853, !854, !857, !858, !864, !865, !868, !869, !874, !875, !878}
!847 = !DILocalVariable(name: "str", arg: 2, scope: !843, file: !3, line: 128, type: !29)
!848 = !DILocalVariable(name: "p", scope: !843, file: !3, line: 130, type: !75)
!849 = !DILocalVariable(name: "q", scope: !843, file: !3, line: 130, type: !75)
!850 = !DILocalVariable(name: "r", scope: !843, file: !3, line: 130, type: !75)
!851 = !DILocalVariable(name: "s", scope: !843, file: !3, line: 130, type: !75)
!852 = !DILocalVariable(name: "t", scope: !843, file: !3, line: 130, type: !75)
!853 = !DILocalVariable(name: "a", scope: !843, file: !3, line: 131, type: !69)
!854 = !DILocalVariable(name: "__s1_len", scope: !855, file: !3, line: 147, type: !33)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 147, column: 11)
!856 = distinct !DILexicalBlock(scope: !843, file: !3, line: 145, column: 5)
!857 = !DILocalVariable(name: "__s2_len", scope: !855, file: !3, line: 147, type: !33)
!858 = !DILocalVariable(name: "__s1_len", scope: !859, file: !3, line: 169, type: !33)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 169, column: 11)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 169, column: 11)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 169, column: 11)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 158, column: 9)
!863 = distinct !DILexicalBlock(scope: !856, file: !3, line: 157, column: 11)
!864 = !DILocalVariable(name: "__s2_len", scope: !859, file: !3, line: 169, type: !33)
!865 = !DILocalVariable(name: "__s1_len", scope: !866, file: !3, line: 170, type: !33)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 170, column: 15)
!867 = distinct !DILexicalBlock(scope: !862, file: !3, line: 170, column: 15)
!868 = !DILocalVariable(name: "__s2_len", scope: !866, file: !3, line: 170, type: !33)
!869 = !DILocalVariable(name: "__s1_len", scope: !870, file: !3, line: 183, type: !33)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 183, column: 15)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 183, column: 15)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 183, column: 15)
!873 = distinct !DILexicalBlock(scope: !862, file: !3, line: 182, column: 13)
!874 = !DILocalVariable(name: "__s2_len", scope: !870, file: !3, line: 183, type: !33)
!875 = !DILocalVariable(name: "__s1_len", scope: !876, file: !3, line: 184, type: !33)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 184, column: 19)
!877 = distinct !DILexicalBlock(scope: !873, file: !3, line: 184, column: 19)
!878 = !DILocalVariable(name: "__s2_len", scope: !876, file: !3, line: 184, type: !33)
!879 = !DILocation(line: 128, column: 27, scope: !843, inlinedAt: !880)
!880 = distinct !DILocation(line: 464, column: 11, scope: !771, inlinedAt: !776)
!881 = !DILocation(line: 128, column: 45, scope: !843, inlinedAt: !880)
!882 = !DILocation(line: 133, column: 3, scope: !883, inlinedAt: !880)
!883 = distinct !DILexicalBlock(scope: !843, file: !3, line: 133, column: 3)
!884 = !DILocation(line: 133, column: 3, scope: !885, inlinedAt: !880)
!885 = !DILexicalBlockFile(scope: !886, file: !3, discriminator: 2)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 133, column: 3)
!887 = !DILocation(line: 137, column: 13, scope: !888, inlinedAt: !880)
!888 = distinct !DILexicalBlock(scope: !843, file: !3, line: 137, column: 7)
!889 = !{!890, !653, i64 16}
!890 = !{!"item", !653, i64 0, !653, i64 8, !653, i64 16, !726, i64 24, !841, i64 32, !653, i64 40, !653, i64 48}
!891 = !DILocation(line: 137, column: 19, scope: !888, inlinedAt: !880)
!892 = !DILocation(line: 137, column: 7, scope: !843, inlinedAt: !880)
!893 = !DILocation(line: 130, column: 16, scope: !843, inlinedAt: !880)
!894 = !DILocation(line: 130, column: 28, scope: !843, inlinedAt: !880)
!895 = !DILocation(line: 130, column: 32, scope: !843, inlinedAt: !880)
!896 = !DILocation(line: 147, column: 11, scope: !855, inlinedAt: !880)
!897 = !{!890, !653, i64 0}
!898 = !DILocation(line: 131, column: 7, scope: !843, inlinedAt: !880)
!899 = !DILocation(line: 148, column: 13, scope: !900, inlinedAt: !880)
!900 = distinct !DILexicalBlock(scope: !856, file: !3, line: 148, column: 11)
!901 = !DILocation(line: 148, column: 11, scope: !856, inlinedAt: !880)
!902 = !DILocation(line: 152, column: 13, scope: !903, inlinedAt: !880)
!903 = distinct !DILexicalBlock(scope: !856, file: !3, line: 152, column: 11)
!904 = !DILocation(line: 103, column: 23, scope: !800, inlinedAt: !905)
!905 = distinct !DILocation(line: 138, column: 27, scope: !888, inlinedAt: !880)
!906 = !DILocation(line: 105, column: 20, scope: !800, inlinedAt: !905)
!907 = !DILocation(line: 105, column: 16, scope: !800, inlinedAt: !905)
!908 = !DILocation(line: 107, column: 13, scope: !800, inlinedAt: !905)
!909 = !DILocation(line: 107, column: 19, scope: !910, inlinedAt: !905)
!910 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 1)
!911 = !DILocation(line: 107, column: 13, scope: !910, inlinedAt: !905)
!912 = !DILocation(line: 107, column: 13, scope: !913, inlinedAt: !905)
!913 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 3)
!914 = !DILocation(line: 107, column: 6, scope: !913, inlinedAt: !905)
!915 = !DILocation(line: 107, column: 10, scope: !913, inlinedAt: !905)
!916 = !DILocation(line: 108, column: 6, scope: !800, inlinedAt: !905)
!917 = !DILocation(line: 112, column: 6, scope: !800, inlinedAt: !905)
!918 = !DILocation(line: 108, column: 11, scope: !800, inlinedAt: !905)
!919 = !DILocation(line: 112, column: 12, scope: !800, inlinedAt: !905)
!920 = !DILocation(line: 138, column: 25, scope: !888, inlinedAt: !880)
!921 = !DILocation(line: 138, column: 5, scope: !888, inlinedAt: !880)
!922 = !DILocation(line: 153, column: 16, scope: !903, inlinedAt: !880)
!923 = !DILocation(line: 155, column: 16, scope: !903, inlinedAt: !880)
!924 = !DILocation(line: 152, column: 11, scope: !856, inlinedAt: !880)
!925 = !DILocation(line: 130, column: 20, scope: !843, inlinedAt: !880)
!926 = !DILocation(line: 157, column: 13, scope: !863, inlinedAt: !880)
!927 = !DILocation(line: 157, column: 11, scope: !856, inlinedAt: !880)
!928 = !DILocation(line: 103, column: 23, scope: !800, inlinedAt: !929)
!929 = distinct !DILocation(line: 160, column: 15, scope: !862, inlinedAt: !880)
!930 = !DILocation(line: 105, column: 20, scope: !800, inlinedAt: !929)
!931 = !DILocation(line: 105, column: 16, scope: !800, inlinedAt: !929)
!932 = !DILocation(line: 107, column: 13, scope: !800, inlinedAt: !929)
!933 = !DILocation(line: 107, column: 19, scope: !910, inlinedAt: !929)
!934 = !DILocation(line: 107, column: 13, scope: !910, inlinedAt: !929)
!935 = !DILocation(line: 107, column: 13, scope: !913, inlinedAt: !929)
!936 = !DILocation(line: 107, column: 6, scope: !913, inlinedAt: !929)
!937 = !DILocation(line: 107, column: 10, scope: !913, inlinedAt: !929)
!938 = !DILocation(line: 108, column: 6, scope: !800, inlinedAt: !929)
!939 = !DILocation(line: 112, column: 6, scope: !800, inlinedAt: !929)
!940 = !DILocation(line: 108, column: 11, scope: !800, inlinedAt: !929)
!941 = !DILocation(line: 112, column: 12, scope: !800, inlinedAt: !929)
!942 = !DILocation(line: 169, column: 11, scope: !859, inlinedAt: !880)
!943 = !DILocation(line: 169, column: 11, scope: !860, inlinedAt: !880)
!944 = !DILocation(line: 169, column: 11, scope: !861, inlinedAt: !880)
!945 = !DILocation(line: 169, column: 11, scope: !946, inlinedAt: !880)
!946 = !DILexicalBlockFile(scope: !860, file: !3, discriminator: 2)
!947 = !DILocation(line: 170, column: 36, scope: !867, inlinedAt: !880)
!948 = !DILocation(line: 177, column: 26, scope: !949, inlinedAt: !880)
!949 = distinct !DILexicalBlock(scope: !867, file: !3, line: 176, column: 13)
!950 = !DILocation(line: 172, column: 26, scope: !951, inlinedAt: !880)
!951 = distinct !DILexicalBlock(scope: !867, file: !3, line: 171, column: 13)
!952 = !DILocation(line: 170, column: 15, scope: !862, inlinedAt: !880)
!953 = !DILocation(line: 130, column: 24, scope: !843, inlinedAt: !880)
!954 = !DILocation(line: 181, column: 20, scope: !955, inlinedAt: !880)
!955 = !DILexicalBlockFile(scope: !862, file: !3, discriminator: 1)
!956 = !DILocation(line: 181, column: 11, scope: !955, inlinedAt: !880)
!957 = !DILocation(line: 183, column: 15, scope: !870, inlinedAt: !880)
!958 = !DILocation(line: 183, column: 15, scope: !871, inlinedAt: !880)
!959 = !DILocation(line: 183, column: 15, scope: !872, inlinedAt: !880)
!960 = !DILocation(line: 183, column: 15, scope: !961, inlinedAt: !880)
!961 = !DILexicalBlockFile(scope: !871, file: !3, discriminator: 2)
!962 = !DILocation(line: 184, column: 40, scope: !877, inlinedAt: !880)
!963 = !DILocation(line: 184, column: 19, scope: !873, inlinedAt: !880)
!964 = !DILocation(line: 186, column: 30, scope: !965, inlinedAt: !880)
!965 = distinct !DILexicalBlock(scope: !877, file: !3, line: 185, column: 17)
!966 = !{!890, !726, i64 24}
!967 = !DILocation(line: 187, column: 26, scope: !965, inlinedAt: !880)
!968 = !DILocation(line: 188, column: 17, scope: !965, inlinedAt: !880)
!969 = !DILocation(line: 191, column: 30, scope: !970, inlinedAt: !880)
!970 = distinct !DILexicalBlock(scope: !877, file: !3, line: 190, column: 17)
!971 = !DILocation(line: 192, column: 26, scope: !970, inlinedAt: !880)
!972 = distinct !{!972, !973, !974}
!973 = !DILocation(line: 181, column: 11, scope: !862)
!974 = !DILocation(line: 194, column: 13, scope: !862)
!975 = !DILocation(line: 197, column: 18, scope: !976, inlinedAt: !880)
!976 = distinct !DILexicalBlock(scope: !862, file: !3, line: 197, column: 15)
!977 = !DILocation(line: 197, column: 26, scope: !976, inlinedAt: !880)
!978 = !DILocation(line: 197, column: 31, scope: !976, inlinedAt: !880)
!979 = !DILocation(line: 197, column: 48, scope: !980, inlinedAt: !880)
!980 = !DILexicalBlockFile(scope: !976, file: !3, discriminator: 1)
!981 = !DILocation(line: 197, column: 45, scope: !980, inlinedAt: !880)
!982 = !DILocation(line: 197, column: 15, scope: !955, inlinedAt: !880)
!983 = !DILocation(line: 199, column: 26, scope: !984, inlinedAt: !880)
!984 = distinct !DILexicalBlock(scope: !976, file: !3, line: 198, column: 13)
!985 = !DILocation(line: 200, column: 15, scope: !984, inlinedAt: !880)
!986 = !DILocation(line: 203, column: 18, scope: !987, inlinedAt: !880)
!987 = distinct !DILexicalBlock(scope: !862, file: !3, line: 203, column: 15)
!988 = !DILocation(line: 203, column: 26, scope: !987, inlinedAt: !880)
!989 = !DILocation(line: 203, column: 15, scope: !862, inlinedAt: !880)
!990 = !DILocation(line: 214, column: 33, scope: !991, inlinedAt: !880)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 213, column: 17)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 207, column: 19)
!993 = distinct !DILexicalBlock(scope: !987, file: !3, line: 204, column: 13)
!994 = !DILocation(line: 209, column: 32, scope: !995, inlinedAt: !880)
!995 = distinct !DILexicalBlock(scope: !992, file: !3, line: 208, column: 17)
!996 = !DILocation(line: 207, column: 19, scope: !993, inlinedAt: !880)
!997 = !DILocation(line: 217, column: 39, scope: !993, inlinedAt: !880)
!998 = !DILocation(line: 218, column: 13, scope: !993, inlinedAt: !880)
!999 = !DILocation(line: 222, column: 19, scope: !1000, inlinedAt: !880)
!1000 = distinct !DILexicalBlock(scope: !987, file: !3, line: 220, column: 13)
!1001 = !DILocation(line: 224, column: 26, scope: !1002, inlinedAt: !880)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 223, column: 17)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 222, column: 19)
!1004 = !DILocation(line: 225, column: 33, scope: !1002, inlinedAt: !880)
!1005 = !{!890, !653, i64 8}
!1006 = !DILocation(line: 225, column: 28, scope: !1002, inlinedAt: !880)
!1007 = !DILocation(line: 226, column: 27, scope: !1002, inlinedAt: !880)
!1008 = !DILocation(line: 227, column: 32, scope: !1002, inlinedAt: !880)
!1009 = !DILocation(line: 229, column: 17, scope: !1002, inlinedAt: !880)
!1010 = !DILocation(line: 232, column: 26, scope: !1011, inlinedAt: !880)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 231, column: 17)
!1012 = !DILocation(line: 233, column: 32, scope: !1011, inlinedAt: !880)
!1013 = !DILocation(line: 233, column: 27, scope: !1011, inlinedAt: !880)
!1014 = !DILocation(line: 234, column: 28, scope: !1011, inlinedAt: !880)
!1015 = !DILocation(line: 235, column: 33, scope: !1011, inlinedAt: !880)
!1016 = !DILocation(line: 239, column: 26, scope: !1000, inlinedAt: !880)
!1017 = !DILocation(line: 240, column: 26, scope: !1000, inlinedAt: !880)
!1018 = !DILocation(line: 241, column: 22, scope: !1019, inlinedAt: !880)
!1019 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 241, column: 19)
!1020 = !DILocation(line: 241, column: 30, scope: !1019, inlinedAt: !880)
!1021 = !DILocation(line: 241, column: 19, scope: !1000, inlinedAt: !880)
!1022 = !DILocation(line: 243, column: 35, scope: !1023, inlinedAt: !880)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 243, column: 24)
!1024 = !DILocation(line: 243, column: 24, scope: !1019, inlinedAt: !880)
!1025 = !DILocation(line: 245, column: 15, scope: !1000, inlinedAt: !880)
!1026 = !DILocation(line: 249, column: 23, scope: !1027, inlinedAt: !880)
!1027 = distinct !DILexicalBlock(scope: !862, file: !3, line: 249, column: 15)
!1028 = !DILocation(line: 249, column: 17, scope: !1027, inlinedAt: !880)
!1029 = !DILocation(line: 252, column: 16, scope: !1027, inlinedAt: !880)
!1030 = !DILocation(line: 249, column: 15, scope: !862, inlinedAt: !880)
!1031 = !DILocation(line: 254, column: 11, scope: !862, inlinedAt: !880)
!1032 = !DILocation(line: 258, column: 14, scope: !1033, inlinedAt: !880)
!1033 = distinct !DILexicalBlock(scope: !856, file: !3, line: 258, column: 11)
!1034 = !DILocation(line: 258, column: 11, scope: !1033, inlinedAt: !880)
!1035 = !DILocation(line: 258, column: 11, scope: !856, inlinedAt: !880)
!1036 = distinct !{!1036, !1037, !1038}
!1037 = !DILocation(line: 144, column: 3, scope: !843)
!1038 = !DILocation(line: 265, column: 5, scope: !843)
!1039 = !DILocation(line: 465, column: 11, scope: !1040, inlinedAt: !776)
!1040 = distinct !DILexicalBlock(scope: !771, file: !3, line: 465, column: 11)
!1041 = !DILocation(line: 465, column: 11, scope: !771, inlinedAt: !776)
!1042 = !DILocalVariable(name: "j", arg: 1, scope: !1043, file: !3, line: 273, type: !75)
!1043 = distinct !DISubprogram(name: "record_relation", scope: !3, file: !3, line: 273, type: !1044, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !75, !75}
!1046 = !{!1042, !1047, !1048, !1049, !1052}
!1047 = !DILocalVariable(name: "k", arg: 2, scope: !1043, file: !3, line: 273, type: !75)
!1048 = !DILocalVariable(name: "p", scope: !1043, file: !3, line: 275, type: !85)
!1049 = !DILocalVariable(name: "__s1_len", scope: !1050, file: !3, line: 277, type: !33)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 277, column: 8)
!1051 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 277, column: 7)
!1052 = !DILocalVariable(name: "__s2_len", scope: !1050, file: !3, line: 277, type: !33)
!1053 = !DILocation(line: 273, column: 31, scope: !1043, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 468, column: 11, scope: !1055, inlinedAt: !776)
!1055 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 466, column: 9)
!1056 = !DILocation(line: 273, column: 47, scope: !1043, inlinedAt: !1054)
!1057 = !DILocation(line: 277, column: 8, scope: !1050, inlinedAt: !1054)
!1058 = !DILocation(line: 277, column: 8, scope: !1051, inlinedAt: !1054)
!1059 = !DILocation(line: 277, column: 7, scope: !1043, inlinedAt: !1054)
!1060 = !DILocation(line: 279, column: 10, scope: !1061, inlinedAt: !1054)
!1061 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 278, column: 5)
!1062 = !DILocation(line: 279, column: 15, scope: !1061, inlinedAt: !1054)
!1063 = !{!890, !841, i64 32}
!1064 = !DILocation(line: 280, column: 11, scope: !1061, inlinedAt: !1054)
!1065 = !DILocation(line: 281, column: 10, scope: !1061, inlinedAt: !1054)
!1066 = !DILocation(line: 281, column: 14, scope: !1061, inlinedAt: !1054)
!1067 = !{!1068, !653, i64 0}
!1068 = !{!"successor", !653, i64 0, !653, i64 8}
!1069 = !DILocation(line: 282, column: 20, scope: !1061, inlinedAt: !1054)
!1070 = !{!890, !653, i64 48}
!1071 = !DILocation(line: 282, column: 10, scope: !1061, inlinedAt: !1054)
!1072 = !DILocation(line: 282, column: 15, scope: !1061, inlinedAt: !1054)
!1073 = !{!1068, !653, i64 8}
!1074 = !DILocation(line: 283, column: 14, scope: !1061, inlinedAt: !1054)
!1075 = !DILocation(line: 284, column: 5, scope: !1061, inlinedAt: !1054)
!1076 = !DILocation(line: 475, column: 9, scope: !1077, inlinedAt: !776)
!1077 = distinct !DILexicalBlock(scope: !748, file: !3, line: 475, column: 7)
!1078 = !DILocation(line: 475, column: 7, scope: !748, inlinedAt: !776)
!1079 = !DILocation(line: 476, column: 5, scope: !1077, inlinedAt: !776)
!1080 = !DILocation(line: 476, column: 5, scope: !1081, inlinedAt: !776)
!1081 = !DILexicalBlockFile(scope: !1077, file: !3, discriminator: 1)
!1082 = !DILocation(line: 476, column: 5, scope: !1083, inlinedAt: !776)
!1083 = !DILexicalBlockFile(scope: !1077, file: !3, discriminator: 2)
!1084 = !DILocalVariable(name: "root", arg: 1, scope: !1085, file: !3, line: 427, type: !75)
!1085 = distinct !DISubprogram(name: "walk_tree", scope: !3, file: !3, line: 427, type: !1086, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1091)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !75, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!108, !75}
!1091 = !{!1084, !1092}
!1092 = !DILocalVariable(name: "action", arg: 2, scope: !1085, file: !3, line: 427, type: !1088)
!1093 = !DILocation(line: 427, column: 25, scope: !1085, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 480, column: 3, scope: !748, inlinedAt: !776)
!1095 = !DILocation(line: 427, column: 38, scope: !1085, inlinedAt: !1094)
!1096 = !DILocation(line: 429, column: 13, scope: !1097, inlinedAt: !1094)
!1097 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 429, column: 7)
!1098 = !DILocation(line: 429, column: 7, scope: !1097, inlinedAt: !1094)
!1099 = !DILocation(line: 429, column: 7, scope: !1085, inlinedAt: !1094)
!1100 = !DILocation(line: 430, column: 5, scope: !1097, inlinedAt: !1094)
!1101 = !DILocation(line: 482, column: 10, scope: !819, inlinedAt: !776)
!1102 = !{!841, !841, i64 0}
!1103 = !DILocation(line: 482, column: 20, scope: !819, inlinedAt: !776)
!1104 = !DILocation(line: 482, column: 3, scope: !819, inlinedAt: !776)
!1105 = !DILocation(line: 427, column: 25, scope: !1085, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 485, column: 7, scope: !774, inlinedAt: !776)
!1107 = !DILocation(line: 427, column: 38, scope: !1085, inlinedAt: !1106)
!1108 = !DILocation(line: 429, column: 7, scope: !1085, inlinedAt: !1106)
!1109 = !DILocation(line: 430, column: 5, scope: !1097, inlinedAt: !1106)
!1110 = !DILocation(line: 487, column: 14, scope: !1111, inlinedAt: !776)
!1111 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 1)
!1112 = !DILocation(line: 487, column: 7, scope: !1111, inlinedAt: !776)
!1113 = !DILocation(line: 489, column: 39, scope: !773, inlinedAt: !776)
!1114 = !DILocation(line: 489, column: 29, scope: !773, inlinedAt: !776)
!1115 = !DILocation(line: 492, column: 23, scope: !773, inlinedAt: !776)
!1116 = !DILocation(line: 492, column: 11, scope: !773, inlinedAt: !776)
!1117 = !DILocation(line: 498, column: 11, scope: !773, inlinedAt: !776)
!1118 = !DILocation(line: 498, column: 17, scope: !773, inlinedAt: !776)
!1119 = !DILocation(line: 498, column: 21, scope: !773, inlinedAt: !776)
!1120 = !DILocation(line: 499, column: 20, scope: !773, inlinedAt: !776)
!1121 = !DILocation(line: 502, column: 11, scope: !1122, inlinedAt: !776)
!1122 = !DILexicalBlockFile(scope: !773, file: !3, discriminator: 1)
!1123 = !DILocation(line: 504, column: 18, scope: !1124, inlinedAt: !776)
!1124 = distinct !DILexicalBlock(scope: !773, file: !3, line: 503, column: 13)
!1125 = !DILocation(line: 504, column: 23, scope: !1124, inlinedAt: !776)
!1126 = !DILocation(line: 504, column: 28, scope: !1124, inlinedAt: !776)
!1127 = !DILocation(line: 505, column: 33, scope: !1128, inlinedAt: !776)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 505, column: 19)
!1129 = !DILocation(line: 505, column: 19, scope: !1124, inlinedAt: !776)
!1130 = !DILocation(line: 507, column: 19, scope: !1131, inlinedAt: !776)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 506, column: 17)
!1132 = !DILocation(line: 507, column: 26, scope: !1131, inlinedAt: !776)
!1133 = !DILocation(line: 507, column: 32, scope: !1131, inlinedAt: !776)
!1134 = !{!890, !653, i64 40}
!1135 = !DILocation(line: 508, column: 25, scope: !1131, inlinedAt: !776)
!1136 = !DILocation(line: 509, column: 17, scope: !1131, inlinedAt: !776)
!1137 = !DILocation(line: 511, column: 22, scope: !1124, inlinedAt: !776)
!1138 = distinct !{!1138, !1139, !1140}
!1139 = !DILocation(line: 502, column: 11, scope: !773)
!1140 = !DILocation(line: 512, column: 13, scope: !773)
!1141 = !DILocation(line: 515, column: 18, scope: !773, inlinedAt: !776)
!1142 = !DILocation(line: 515, column: 24, scope: !773, inlinedAt: !776)
!1143 = !DILocation(line: 515, column: 16, scope: !773, inlinedAt: !776)
!1144 = distinct !{!1144, !1145, !1146}
!1145 = !DILocation(line: 487, column: 7, scope: !774)
!1146 = !DILocation(line: 516, column: 9, scope: !774)
!1147 = !DILocation(line: 519, column: 21, scope: !1148, inlinedAt: !776)
!1148 = distinct !DILexicalBlock(scope: !774, file: !3, line: 519, column: 11)
!1149 = !DILocation(line: 519, column: 11, scope: !1148, inlinedAt: !776)
!1150 = !DILocation(line: 519, column: 11, scope: !774, inlinedAt: !776)
!1151 = distinct !{!1151, !1152, !1153}
!1152 = !DILocation(line: 482, column: 3, scope: !748)
!1153 = !DILocation(line: 530, column: 5, scope: !748)
!1154 = !DILocation(line: 522, column: 24, scope: !1155, inlinedAt: !776)
!1155 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 520, column: 9)
!1156 = !DILocation(line: 522, column: 57, scope: !1157, inlinedAt: !776)
!1157 = !DILexicalBlockFile(scope: !1155, file: !3, discriminator: 1)
!1158 = !DILocation(line: 522, column: 11, scope: !1159, inlinedAt: !776)
!1159 = !DILexicalBlockFile(scope: !1155, file: !3, discriminator: 2)
!1160 = !DILocation(line: 526, column: 11, scope: !1155, inlinedAt: !776)
!1161 = distinct !{!1161, !1162, !1163}
!1162 = !DILocation(line: 526, column: 11, scope: !1155)
!1163 = !DILocation(line: 528, column: 22, scope: !1155)
!1164 = !DILocation(line: 427, column: 25, scope: !1085, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 527, column: 13, scope: !1155, inlinedAt: !776)
!1166 = !DILocation(line: 427, column: 38, scope: !1085, inlinedAt: !1165)
!1167 = !DILocation(line: 429, column: 7, scope: !1085, inlinedAt: !1165)
!1168 = !DILocation(line: 430, column: 5, scope: !1097, inlinedAt: !1165)
!1169 = !DILocation(line: 528, column: 18, scope: !1155, inlinedAt: !776)
!1170 = !DILocation(line: 527, column: 13, scope: !1157, inlinedAt: !776)
!1171 = !DILocation(line: 534, column: 15, scope: !1172, inlinedAt: !776)
!1172 = distinct !DILexicalBlock(scope: !748, file: !3, line: 534, column: 7)
!1173 = !DILocation(line: 534, column: 7, scope: !1172, inlinedAt: !776)
!1174 = !DILocation(line: 534, column: 22, scope: !1172, inlinedAt: !776)
!1175 = !DILocation(line: 534, column: 7, scope: !748, inlinedAt: !776)
!1176 = !DILocation(line: 535, column: 5, scope: !1172, inlinedAt: !776)
!1177 = !DILocation(line: 535, column: 5, scope: !1178, inlinedAt: !776)
!1178 = !DILexicalBlockFile(scope: !1172, file: !3, discriminator: 1)
!1179 = !DILocation(line: 535, column: 5, scope: !1180, inlinedAt: !776)
!1180 = !DILexicalBlockFile(scope: !1172, file: !3, discriminator: 2)
!1181 = !DILocation(line: 535, column: 5, scope: !1182, inlinedAt: !776)
!1182 = !DILexicalBlockFile(scope: !1172, file: !3, discriminator: 3)
!1183 = !DILocation(line: 539, column: 1, scope: !748, inlinedAt: !776)
!1184 = !DILocation(line: 567, column: 3, scope: !700)
!1185 = distinct !DISubprogram(name: "count_items", scope: !3, file: !3, line: 288, type: !1089, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1186)
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "unused", arg: 1, scope: !1185, file: !3, line: 288, type: !75)
!1188 = !DILocation(line: 288, column: 27, scope: !1185)
!1189 = !DILocation(line: 290, column: 12, scope: !1185)
!1190 = !DILocation(line: 291, column: 3, scope: !1185)
!1191 = distinct !DISubprogram(name: "recurse_tree", scope: !3, file: !3, line: 404, type: !1192, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!108, !75, !1088}
!1194 = !{!1195, !1196}
!1195 = !DILocalVariable(name: "root", arg: 1, scope: !1191, file: !3, line: 404, type: !75)
!1196 = !DILocalVariable(name: "action", arg: 2, scope: !1191, file: !3, line: 404, type: !1088)
!1197 = !DILocation(line: 404, column: 28, scope: !1191)
!1198 = !DILocation(line: 404, column: 41, scope: !1191)
!1199 = !DILocation(line: 406, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 406, column: 7)
!1201 = !DILocation(line: 406, column: 18, scope: !1200)
!1202 = !DILocation(line: 406, column: 26, scope: !1200)
!1203 = !DILocation(line: 406, column: 35, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1200, file: !3, discriminator: 1)
!1205 = !DILocation(line: 406, column: 41, scope: !1204)
!1206 = !DILocation(line: 406, column: 7, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1191, file: !3, discriminator: 1)
!1208 = !DILocation(line: 407, column: 12, scope: !1200)
!1209 = !DILocation(line: 407, column: 5, scope: !1200)
!1210 = !DILocation(line: 411, column: 13, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 411, column: 13)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 410, column: 11)
!1213 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 409, column: 5)
!1214 = !DILocation(line: 411, column: 13, scope: !1212)
!1215 = !DILocation(line: 413, column: 11, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 413, column: 11)
!1217 = !DILocation(line: 413, column: 11, scope: !1213)
!1218 = !DILocation(line: 415, column: 17, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 415, column: 11)
!1220 = !DILocation(line: 415, column: 23, scope: !1219)
!1221 = !DILocation(line: 415, column: 11, scope: !1213)
!1222 = !DILocation(line: 416, column: 13, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 416, column: 13)
!1224 = !DILocation(line: 416, column: 13, scope: !1219)
!1225 = !DILocation(line: 420, column: 3, scope: !1191)
!1226 = !DILocation(line: 421, column: 1, scope: !1191)
!1227 = distinct !DISubprogram(name: "scan_zeros", scope: !3, file: !3, line: 295, type: !1089, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1228)
!1228 = !{!1229}
!1229 = !DILocalVariable(name: "k", arg: 1, scope: !1227, file: !3, line: 295, type: !75)
!1230 = !DILocation(line: 295, column: 26, scope: !1227)
!1231 = !DILocation(line: 298, column: 10, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 298, column: 7)
!1233 = !DILocation(line: 298, column: 16, scope: !1232)
!1234 = !DILocation(line: 298, column: 21, scope: !1232)
!1235 = !DILocation(line: 298, column: 27, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1232, file: !3, discriminator: 1)
!1237 = !DILocation(line: 298, column: 24, scope: !1236)
!1238 = !DILocation(line: 298, column: 7, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1227, file: !3, discriminator: 1)
!1240 = !DILocation(line: 300, column: 11, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 300, column: 11)
!1242 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 299, column: 5)
!1243 = !DILocation(line: 300, column: 16, scope: !1241)
!1244 = !DILocation(line: 303, column: 9, scope: !1241)
!1245 = !DILocation(line: 303, column: 16, scope: !1241)
!1246 = !DILocation(line: 300, column: 11, scope: !1242)
!1247 = !DILocation(line: 305, column: 13, scope: !1242)
!1248 = !DILocation(line: 306, column: 5, scope: !1242)
!1249 = !DILocation(line: 308, column: 3, scope: !1227)
!1250 = distinct !DISubprogram(name: "detect_loop", scope: !3, file: !3, line: 330, type: !1089, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1251)
!1251 = !{!1252, !1253, !1259, !1266}
!1252 = !DILocalVariable(name: "k", arg: 1, scope: !1250, file: !3, line: 330, type: !75)
!1253 = !DILocalVariable(name: "p", scope: !1254, file: !3, line: 342, type: !1258)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 341, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 337, column: 11)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 333, column: 5)
!1257 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 332, column: 7)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1259 = !DILocalVariable(name: "tmp", scope: !1260, file: !3, line: 353, type: !75)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 352, column: 25)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 349, column: 21)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 348, column: 23)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 347, column: 17)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 346, column: 19)
!1265 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 345, column: 13)
!1266 = !DILocalVariable(name: "tmp", scope: !1267, file: !3, line: 374, type: !75)
!1267 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 373, column: 25)
!1268 = !DILocation(line: 330, column: 27, scope: !1250)
!1269 = !DILocation(line: 332, column: 10, scope: !1257)
!1270 = !DILocation(line: 332, column: 16, scope: !1257)
!1271 = !DILocation(line: 332, column: 7, scope: !1250)
!1272 = !DILocation(line: 337, column: 11, scope: !1255)
!1273 = !DILocation(line: 337, column: 16, scope: !1255)
!1274 = !DILocation(line: 337, column: 11, scope: !1256)
!1275 = !DILocation(line: 339, column: 14, scope: !1255)
!1276 = !DILocation(line: 339, column: 9, scope: !1255)
!1277 = !DILocation(line: 342, column: 38, scope: !1254)
!1278 = !DILocation(line: 342, column: 30, scope: !1254)
!1279 = !DILocation(line: 344, column: 18, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1254, file: !3, discriminator: 1)
!1281 = !DILocation(line: 344, column: 11, scope: !1280)
!1282 = !DILocation(line: 346, column: 25, scope: !1264)
!1283 = distinct !{!1283, !1284, !1285}
!1284 = !DILocation(line: 344, column: 11, scope: !1254)
!1285 = !DILocation(line: 393, column: 13, scope: !1254)
!1286 = !DILocation(line: 346, column: 29, scope: !1264)
!1287 = !DILocation(line: 392, column: 26, scope: !1265)
!1288 = !DILocation(line: 346, column: 19, scope: !1265)
!1289 = !DILocation(line: 348, column: 26, scope: !1262)
!1290 = !DILocation(line: 348, column: 23, scope: !1262)
!1291 = !DILocation(line: 348, column: 23, scope: !1263)
!1292 = !DILocation(line: 353, column: 52, scope: !1260)
!1293 = !DILocation(line: 353, column: 46, scope: !1260)
!1294 = !DILocation(line: 355, column: 53, scope: !1260)
!1295 = !DILocation(line: 355, column: 27, scope: !1260)
!1296 = !DILocation(line: 358, column: 31, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 358, column: 31)
!1298 = !DILocation(line: 358, column: 36, scope: !1297)
!1299 = !DILocation(line: 358, column: 31, scope: !1260)
!1300 = !DILocation(line: 368, column: 33, scope: !1260)
!1301 = !DILocation(line: 368, column: 39, scope: !1260)
!1302 = !DILocation(line: 369, column: 32, scope: !1260)
!1303 = !DILocation(line: 351, column: 23, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1261, file: !3, discriminator: 1)
!1305 = distinct !{!1305, !1306, !1307}
!1306 = !DILocation(line: 351, column: 23, scope: !1261)
!1307 = !DILocation(line: 370, column: 25, scope: !1261)
!1308 = !DILocation(line: 361, column: 32, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 359, column: 29)
!1310 = !DILocation(line: 361, column: 37, scope: !1309)
!1311 = !DILocation(line: 361, column: 42, scope: !1309)
!1312 = !DILocation(line: 361, column: 47, scope: !1309)
!1313 = !DILocation(line: 362, column: 42, scope: !1309)
!1314 = !DILocation(line: 362, column: 34, scope: !1309)
!1315 = !DILocation(line: 372, column: 23, scope: !1304)
!1316 = !DILocation(line: 374, column: 52, scope: !1267)
!1317 = !DILocation(line: 376, column: 39, scope: !1267)
!1318 = distinct !{!1318, !1319, !1320}
!1319 = !DILocation(line: 372, column: 23, scope: !1261)
!1320 = !DILocation(line: 378, column: 25, scope: !1261)
!1321 = !DILocation(line: 386, column: 32, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 385, column: 21)
!1323 = !DILocation(line: 387, column: 28, scope: !1322)
!1324 = !DILocation(line: 388, column: 23, scope: !1322)
!1325 = !DILocation(line: 377, column: 32, scope: !1267)
!1326 = !DILocation(line: 398, column: 1, scope: !1250)
!1327 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !107, file: !107, line: 41, type: !46, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !102, variables: !1328)
!1328 = !{!1329}
!1329 = !DILocalVariable(name: "file", arg: 1, scope: !1327, file: !107, line: 41, type: !29)
!1330 = !DILocation(line: 41, column: 41, scope: !1327)
!1331 = !DILocation(line: 43, column: 13, scope: !1327)
!1332 = !DILocation(line: 44, column: 1, scope: !1327)
!1333 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !107, file: !107, line: 78, type: !1334, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !102, variables: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !108}
!1336 = !{!1337}
!1337 = !DILocalVariable(name: "ignore", arg: 1, scope: !1333, file: !107, line: 78, type: !108)
!1338 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1339 = !DILocation(line: 78, column: 37, scope: !1333)
!1340 = !DILocation(line: 80, column: 16, scope: !1333)
!1341 = !{!1342, !1342, i64 0}
!1342 = !{!"_Bool", !654, i64 0}
!1343 = !DILocation(line: 81, column: 1, scope: !1333)
!1344 = distinct !DISubprogram(name: "close_stdout", scope: !107, file: !107, line: 107, type: !666, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !102, variables: !1345)
!1345 = !{!1346}
!1346 = !DILocalVariable(name: "write_error", scope: !1347, file: !107, line: 112, type: !29)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !107, line: 111, column: 5)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !107, line: 109, column: 7)
!1349 = !DILocation(line: 109, column: 21, scope: !1348)
!1350 = !DILocation(line: 109, column: 7, scope: !1348)
!1351 = !DILocation(line: 109, column: 29, scope: !1348)
!1352 = !DILocation(line: 110, column: 7, scope: !1348)
!1353 = !DILocation(line: 110, column: 12, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1348, file: !107, discriminator: 1)
!1355 = !{i8 0, i8 2}
!1356 = !DILocation(line: 114, column: 19, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1347, file: !107, line: 113, column: 11)
!1358 = !DILocation(line: 110, column: 25, scope: !1354)
!1359 = !DILocation(line: 110, column: 28, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1348, file: !107, discriminator: 2)
!1361 = !DILocation(line: 110, column: 34, scope: !1360)
!1362 = !DILocation(line: 109, column: 7, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1344, file: !107, discriminator: 1)
!1364 = !DILocation(line: 112, column: 33, scope: !1347)
!1365 = !DILocation(line: 112, column: 19, scope: !1347)
!1366 = !DILocation(line: 113, column: 11, scope: !1357)
!1367 = !DILocation(line: 113, column: 11, scope: !1347)
!1368 = !DILocation(line: 114, column: 36, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1357, file: !107, discriminator: 1)
!1370 = !DILocation(line: 114, column: 9, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1357, file: !107, discriminator: 2)
!1372 = !DILocation(line: 114, column: 9, scope: !1357)
!1373 = !DILocation(line: 117, column: 9, scope: !1369)
!1374 = !DILocation(line: 119, column: 14, scope: !1347)
!1375 = !DILocation(line: 119, column: 7, scope: !1347)
!1376 = !DILocation(line: 122, column: 22, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1344, file: !107, line: 122, column: 8)
!1378 = !DILocation(line: 122, column: 8, scope: !1377)
!1379 = !DILocation(line: 122, column: 30, scope: !1377)
!1380 = !DILocation(line: 122, column: 8, scope: !1344)
!1381 = !DILocation(line: 123, column: 13, scope: !1377)
!1382 = !DILocation(line: 123, column: 6, scope: !1377)
!1383 = !DILocation(line: 124, column: 1, scope: !1344)
!1384 = distinct !DISubprogram(name: "fdadvise", scope: !1385, file: !1385, line: 31, type: !1386, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !1394)
!1385 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !69, !1388, !1388, !1393}
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1389, line: 91, baseType: !1390)
!1389 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1391, line: 140, baseType: !1392)
!1391 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1392 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1394 = !{!1395, !1396, !1397, !1398, !1399}
!1395 = !DILocalVariable(name: "fd", arg: 1, scope: !1384, file: !1385, line: 31, type: !69)
!1396 = !DILocalVariable(name: "offset", arg: 2, scope: !1384, file: !1385, line: 31, type: !1388)
!1397 = !DILocalVariable(name: "len", arg: 3, scope: !1384, file: !1385, line: 31, type: !1388)
!1398 = !DILocalVariable(name: "advice", arg: 4, scope: !1384, file: !1385, line: 31, type: !1393)
!1399 = !DILocalVariable(name: "__x", scope: !1400, file: !1385, line: 34, type: !69)
!1400 = distinct !DILexicalBlock(scope: !1384, file: !1385, line: 34, column: 3)
!1401 = !DILocation(line: 31, column: 15, scope: !1384)
!1402 = !DILocation(line: 31, column: 25, scope: !1384)
!1403 = !DILocation(line: 31, column: 39, scope: !1384)
!1404 = !DILocation(line: 31, column: 54, scope: !1384)
!1405 = !DILocation(line: 34, column: 3, scope: !1400)
!1406 = !DILocation(line: 36, column: 1, scope: !1384)
!1407 = distinct !DISubprogram(name: "fadvise", scope: !1385, file: !1385, line: 39, type: !1408, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !1461)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !1410, !1393}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !1414)
!1413 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1435, !1436, !1437, !1438, !1439, !1440, !1442, !1446, !1449, !1451, !1452, !1453, !1454, !1455, !1456, !1457}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1412, file: !1413, line: 242, baseType: !69, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1412, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1412, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1412, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1412, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1412, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1412, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1412, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1412, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1412, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1412, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1412, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1412, file: !1413, line: 260, baseType: !1428, size: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !1430)
!1430 = !{!1431, !1432, !1434}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1429, file: !1413, line: 157, baseType: !1428, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1429, file: !1413, line: 158, baseType: !1433, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1429, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1412, file: !1413, line: 262, baseType: !1433, size: 64, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1412, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1412, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1412, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1412, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1412, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!1441 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1412, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 1)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1412, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1413, line: 150, baseType: null)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1412, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1391, line: 141, baseType: !1392)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1412, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1412, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1412, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1412, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1412, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1412, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1412, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 20)
!1461 = !{!1462, !1463}
!1462 = !DILocalVariable(name: "fp", arg: 1, scope: !1407, file: !1385, line: 39, type: !1410)
!1463 = !DILocalVariable(name: "advice", arg: 2, scope: !1407, file: !1385, line: 39, type: !1393)
!1464 = !DILocation(line: 39, column: 16, scope: !1407)
!1465 = !DILocation(line: 39, column: 30, scope: !1407)
!1466 = !DILocation(line: 41, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1407, file: !1385, line: 41, column: 7)
!1468 = !DILocation(line: 41, column: 7, scope: !1407)
!1469 = !DILocation(line: 42, column: 15, scope: !1467)
!1470 = !DILocation(line: 31, column: 15, scope: !1384, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 42, column: 5, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1467, file: !1385, discriminator: 1)
!1473 = !DILocation(line: 31, column: 25, scope: !1384, inlinedAt: !1471)
!1474 = !DILocation(line: 31, column: 39, scope: !1384, inlinedAt: !1471)
!1475 = !DILocation(line: 31, column: 54, scope: !1384, inlinedAt: !1471)
!1476 = !DILocation(line: 34, column: 3, scope: !1400, inlinedAt: !1471)
!1477 = !DILocation(line: 42, column: 5, scope: !1467)
!1478 = !DILocation(line: 43, column: 1, scope: !1407)
!1479 = distinct !DISubprogram(name: "freopen_safer", scope: !1480, file: !1480, line: 54, type: !1481, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !1523)
!1480 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1483, !29, !29, !1483}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1485, file: !1413, line: 242, baseType: !69, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1485, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1485, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1485, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1485, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1485, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1485, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1485, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1485, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1485, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1485, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1485, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1485, file: !1413, line: 260, baseType: !1500, size: 64, offset: 768)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !1502)
!1502 = !{!1503, !1504, !1506}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1501, file: !1413, line: 157, baseType: !1500, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1501, file: !1413, line: 158, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1501, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1485, file: !1413, line: 262, baseType: !1505, size: 64, offset: 832)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1485, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1485, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1485, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1485, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1485, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1485, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1485, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1485, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1485, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1485, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1485, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1485, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1485, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1485, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1485, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530}
!1524 = !DILocalVariable(name: "name", arg: 1, scope: !1479, file: !1480, line: 54, type: !29)
!1525 = !DILocalVariable(name: "mode", arg: 2, scope: !1479, file: !1480, line: 54, type: !29)
!1526 = !DILocalVariable(name: "f", arg: 3, scope: !1479, file: !1480, line: 54, type: !1483)
!1527 = !DILocalVariable(name: "protect_in", scope: !1479, file: !1480, line: 62, type: !108)
!1528 = !DILocalVariable(name: "protect_out", scope: !1479, file: !1480, line: 63, type: !108)
!1529 = !DILocalVariable(name: "protect_err", scope: !1479, file: !1480, line: 64, type: !108)
!1530 = !DILocalVariable(name: "saved_errno", scope: !1479, file: !1480, line: 65, type: !69)
!1531 = !DILocation(line: 54, column: 28, scope: !1479)
!1532 = !DILocation(line: 54, column: 46, scope: !1479)
!1533 = !DILocation(line: 54, column: 58, scope: !1479)
!1534 = !DILocation(line: 62, column: 8, scope: !1479)
!1535 = !DILocation(line: 63, column: 8, scope: !1479)
!1536 = !DILocation(line: 64, column: 8, scope: !1479)
!1537 = !DILocation(line: 67, column: 11, scope: !1479)
!1538 = !DILocation(line: 67, column: 3, scope: !1479)
!1539 = !DILocation(line: 70, column: 11, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1480, line: 70, column: 11)
!1541 = distinct !DILexicalBlock(scope: !1479, file: !1480, line: 68, column: 5)
!1542 = !DILocation(line: 70, column: 11, scope: !1541)
!1543 = !DILocation(line: 74, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !1480, line: 74, column: 11)
!1545 = !DILocation(line: 74, column: 11, scope: !1541)
!1546 = !DILocation(line: 78, column: 11, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !1480, line: 78, column: 11)
!1548 = !DILocation(line: 78, column: 11, scope: !1541)
!1549 = !DILocation(line: 85, column: 18, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1479, file: !1480, line: 85, column: 7)
!1551 = !DILocalVariable(name: "fd", arg: 1, scope: !1552, file: !1480, line: 32, type: !69)
!1552 = distinct !DISubprogram(name: "protect_fd", scope: !1480, file: !1480, line: 32, type: !1553, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !1555)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!108, !69}
!1555 = !{!1551, !1556}
!1556 = !DILocalVariable(name: "value", scope: !1552, file: !1480, line: 34, type: !69)
!1557 = !DILocation(line: 32, column: 17, scope: !1552, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 85, column: 22, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1550, file: !1480, discriminator: 1)
!1560 = !DILocation(line: 34, column: 15, scope: !1552, inlinedAt: !1558)
!1561 = !DILocation(line: 34, column: 7, scope: !1552, inlinedAt: !1558)
!1562 = !DILocation(line: 35, column: 13, scope: !1563, inlinedAt: !1558)
!1563 = distinct !DILexicalBlock(scope: !1552, file: !1480, line: 35, column: 7)
!1564 = !DILocation(line: 35, column: 7, scope: !1552, inlinedAt: !1558)
!1565 = !DILocation(line: 37, column: 13, scope: !1566, inlinedAt: !1558)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !1480, line: 37, column: 11)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !1480, line: 36, column: 5)
!1568 = !DILocation(line: 37, column: 11, scope: !1567, inlinedAt: !1558)
!1569 = !DILocation(line: 39, column: 11, scope: !1570, inlinedAt: !1558)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !1480, line: 38, column: 9)
!1571 = !DILocation(line: 40, column: 11, scope: !1570, inlinedAt: !1558)
!1572 = !DILocation(line: 40, column: 17, scope: !1570, inlinedAt: !1558)
!1573 = !DILocation(line: 41, column: 9, scope: !1570, inlinedAt: !1558)
!1574 = !DILocation(line: 87, column: 12, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1550, file: !1480, line: 87, column: 12)
!1576 = !DILocation(line: 87, column: 24, scope: !1575)
!1577 = !DILocation(line: 32, column: 17, scope: !1552, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 87, column: 28, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1575, file: !1480, discriminator: 1)
!1580 = !DILocation(line: 34, column: 15, scope: !1552, inlinedAt: !1578)
!1581 = !DILocation(line: 34, column: 7, scope: !1552, inlinedAt: !1578)
!1582 = !DILocation(line: 35, column: 13, scope: !1563, inlinedAt: !1578)
!1583 = !DILocation(line: 35, column: 7, scope: !1552, inlinedAt: !1578)
!1584 = !DILocation(line: 37, column: 13, scope: !1566, inlinedAt: !1578)
!1585 = !DILocation(line: 37, column: 11, scope: !1567, inlinedAt: !1578)
!1586 = !DILocation(line: 39, column: 11, scope: !1570, inlinedAt: !1578)
!1587 = !DILocation(line: 40, column: 11, scope: !1570, inlinedAt: !1578)
!1588 = !DILocation(line: 40, column: 17, scope: !1570, inlinedAt: !1578)
!1589 = !DILocation(line: 41, column: 9, scope: !1570, inlinedAt: !1578)
!1590 = !DILocation(line: 89, column: 12, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1575, file: !1480, line: 89, column: 12)
!1592 = !DILocation(line: 89, column: 24, scope: !1591)
!1593 = !DILocation(line: 32, column: 17, scope: !1552, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 89, column: 28, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1591, file: !1480, discriminator: 1)
!1596 = !DILocation(line: 34, column: 15, scope: !1552, inlinedAt: !1594)
!1597 = !DILocation(line: 34, column: 7, scope: !1552, inlinedAt: !1594)
!1598 = !DILocation(line: 35, column: 13, scope: !1563, inlinedAt: !1594)
!1599 = !DILocation(line: 35, column: 7, scope: !1552, inlinedAt: !1594)
!1600 = !DILocation(line: 37, column: 13, scope: !1566, inlinedAt: !1594)
!1601 = !DILocation(line: 37, column: 11, scope: !1567, inlinedAt: !1594)
!1602 = !DILocation(line: 39, column: 11, scope: !1570, inlinedAt: !1594)
!1603 = !DILocation(line: 40, column: 11, scope: !1570, inlinedAt: !1594)
!1604 = !DILocation(line: 40, column: 17, scope: !1570, inlinedAt: !1594)
!1605 = !DILocation(line: 41, column: 9, scope: !1570, inlinedAt: !1594)
!1606 = !DILocation(line: 92, column: 9, scope: !1591)
!1607 = !DILocation(line: 93, column: 17, scope: !1479)
!1608 = !DILocation(line: 65, column: 7, scope: !1479)
!1609 = !DILocation(line: 94, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1479, file: !1480, line: 94, column: 7)
!1611 = !DILocation(line: 94, column: 7, scope: !1479)
!1612 = !DILocation(line: 95, column: 5, scope: !1610)
!1613 = !DILocation(line: 96, column: 7, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1479, file: !1480, line: 96, column: 7)
!1615 = !DILocation(line: 96, column: 7, scope: !1479)
!1616 = !DILocation(line: 97, column: 5, scope: !1614)
!1617 = !DILocation(line: 98, column: 7, scope: !1479)
!1618 = !DILocation(line: 99, column: 5, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1479, file: !1480, line: 98, column: 7)
!1620 = !DILocation(line: 100, column: 8, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1479, file: !1480, line: 100, column: 7)
!1622 = !DILocation(line: 100, column: 7, scope: !1479)
!1623 = !DILocation(line: 101, column: 11, scope: !1621)
!1624 = !DILocation(line: 101, column: 5, scope: !1621)
!1625 = !DILocation(line: 102, column: 3, scope: !1479)
!1626 = distinct !DISubprogram(name: "parse_long_options", scope: !121, file: !121, line: 44, type: !1627, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !118, variables: !1630)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !69, !703, !29, !29, !29, !1629, null}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639}
!1631 = !DILocalVariable(name: "argc", arg: 1, scope: !1626, file: !121, line: 44, type: !69)
!1632 = !DILocalVariable(name: "argv", arg: 2, scope: !1626, file: !121, line: 45, type: !703)
!1633 = !DILocalVariable(name: "command_name", arg: 3, scope: !1626, file: !121, line: 46, type: !29)
!1634 = !DILocalVariable(name: "package", arg: 4, scope: !1626, file: !121, line: 47, type: !29)
!1635 = !DILocalVariable(name: "version", arg: 5, scope: !1626, file: !121, line: 48, type: !29)
!1636 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1626, file: !121, line: 49, type: !1629)
!1637 = !DILocalVariable(name: "c", scope: !1626, file: !121, line: 52, type: !69)
!1638 = !DILocalVariable(name: "saved_opterr", scope: !1626, file: !121, line: 53, type: !69)
!1639 = !DILocalVariable(name: "authors", scope: !1640, file: !121, line: 71, type: !1644)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !121, line: 70, column: 11)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !121, line: 64, column: 9)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !121, line: 62, column: 5)
!1643 = distinct !DILexicalBlock(scope: !1626, file: !121, line: 60, column: 7)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1389, line: 80, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1646, line: 50, baseType: !1647)
!1646 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !119, line: 71, baseType: !1648)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1649, size: 192, elements: !1444)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !119, line: 71, size: 192, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1649, file: !119, line: 71, baseType: !185, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1649, file: !119, line: 71, baseType: !185, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1649, file: !119, line: 71, baseType: !32, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1649, file: !119, line: 71, baseType: !32, size: 64, offset: 128)
!1655 = !DILocation(line: 44, column: 25, scope: !1626)
!1656 = !DILocation(line: 45, column: 28, scope: !1626)
!1657 = !DILocation(line: 46, column: 33, scope: !1626)
!1658 = !DILocation(line: 47, column: 33, scope: !1626)
!1659 = !DILocation(line: 48, column: 33, scope: !1626)
!1660 = !DILocation(line: 49, column: 28, scope: !1626)
!1661 = !DILocation(line: 55, column: 18, scope: !1626)
!1662 = !DILocation(line: 53, column: 7, scope: !1626)
!1663 = !DILocation(line: 58, column: 10, scope: !1626)
!1664 = !DILocation(line: 60, column: 12, scope: !1643)
!1665 = !DILocation(line: 61, column: 7, scope: !1643)
!1666 = !DILocation(line: 61, column: 15, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1643, file: !121, discriminator: 1)
!1668 = !DILocation(line: 52, column: 7, scope: !1626)
!1669 = !DILocation(line: 60, column: 7, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1626, file: !121, discriminator: 1)
!1671 = !DILocation(line: 66, column: 11, scope: !1641)
!1672 = !DILocation(line: 67, column: 11, scope: !1641)
!1673 = !DILocation(line: 71, column: 13, scope: !1640)
!1674 = !DILocation(line: 71, column: 21, scope: !1640)
!1675 = !DILocation(line: 72, column: 13, scope: !1640)
!1676 = !DILocation(line: 73, column: 29, scope: !1640)
!1677 = !DILocation(line: 73, column: 13, scope: !1640)
!1678 = !DILocation(line: 74, column: 13, scope: !1640)
!1679 = !DILocation(line: 84, column: 10, scope: !1626)
!1680 = !DILocation(line: 88, column: 10, scope: !1626)
!1681 = !DILocation(line: 89, column: 1, scope: !1626)
!1682 = distinct !DISubprogram(name: "set_program_name", scope: !141, file: !141, line: 39, type: !46, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DILocalVariable(name: "argv0", arg: 1, scope: !1682, file: !141, line: 39, type: !29)
!1685 = !DILocalVariable(name: "slash", scope: !1682, file: !141, line: 46, type: !29)
!1686 = !DILocalVariable(name: "base", scope: !1682, file: !141, line: 47, type: !29)
!1687 = !DILocation(line: 39, column: 31, scope: !1682)
!1688 = !DILocation(line: 51, column: 13, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1682, file: !141, line: 51, column: 7)
!1690 = !DILocation(line: 51, column: 7, scope: !1682)
!1691 = !DILocation(line: 55, column: 14, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !141, line: 52, column: 5)
!1693 = !DILocation(line: 54, column: 7, scope: !1692)
!1694 = !DILocation(line: 56, column: 7, scope: !1692)
!1695 = !DILocation(line: 59, column: 11, scope: !1682)
!1696 = !DILocation(line: 46, column: 15, scope: !1682)
!1697 = !DILocation(line: 60, column: 17, scope: !1682)
!1698 = !DILocation(line: 60, column: 33, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1682, file: !141, discriminator: 1)
!1700 = !DILocation(line: 60, column: 11, scope: !1682)
!1701 = !DILocation(line: 47, column: 15, scope: !1682)
!1702 = !DILocation(line: 61, column: 12, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1682, file: !141, line: 61, column: 7)
!1704 = !DILocation(line: 61, column: 20, scope: !1703)
!1705 = !DILocation(line: 61, column: 25, scope: !1703)
!1706 = !DILocation(line: 61, column: 28, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1703, file: !141, discriminator: 1)
!1708 = !DILocation(line: 61, column: 61, scope: !1707)
!1709 = !DILocation(line: 61, column: 7, scope: !1699)
!1710 = !DILocation(line: 64, column: 11, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !141, line: 64, column: 11)
!1712 = distinct !DILexicalBlock(scope: !1703, file: !141, line: 62, column: 5)
!1713 = !DILocation(line: 64, column: 36, scope: !1711)
!1714 = !DILocation(line: 64, column: 11, scope: !1712)
!1715 = !DILocation(line: 66, column: 24, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !141, line: 65, column: 9)
!1717 = !DILocation(line: 70, column: 41, scope: !1716)
!1718 = !DILocation(line: 72, column: 9, scope: !1716)
!1719 = !DILocation(line: 84, column: 16, scope: !1682)
!1720 = !DILocation(line: 90, column: 27, scope: !1682)
!1721 = !DILocation(line: 92, column: 1, scope: !1682)
!1722 = distinct !DISubprogram(name: "clone_quoting_options", scope: !172, file: !172, line: 114, type: !1723, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1726)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1725, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1726 = !{!1727, !1728, !1729}
!1727 = !DILocalVariable(name: "o", arg: 1, scope: !1722, file: !172, line: 114, type: !1725)
!1728 = !DILocalVariable(name: "e", scope: !1722, file: !172, line: 116, type: !69)
!1729 = !DILocalVariable(name: "p", scope: !1722, file: !172, line: 117, type: !1725)
!1730 = !DILocation(line: 114, column: 48, scope: !1722)
!1731 = !DILocation(line: 116, column: 11, scope: !1722)
!1732 = !DILocation(line: 116, column: 7, scope: !1722)
!1733 = !DILocation(line: 117, column: 40, scope: !1722)
!1734 = !DILocation(line: 117, column: 40, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1722, file: !172, discriminator: 3)
!1736 = !DILocation(line: 117, column: 31, scope: !1735)
!1737 = !DILocation(line: 117, column: 27, scope: !1722)
!1738 = !DILocation(line: 119, column: 9, scope: !1722)
!1739 = !DILocation(line: 120, column: 3, scope: !1722)
!1740 = distinct !DISubprogram(name: "get_quoting_style", scope: !172, file: !172, line: 125, type: !1741, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1745)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!5, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1745 = !{!1746}
!1746 = !DILocalVariable(name: "o", arg: 1, scope: !1740, file: !172, line: 125, type: !1743)
!1747 = !DILocation(line: 125, column: 50, scope: !1740)
!1748 = !DILocation(line: 127, column: 11, scope: !1740)
!1749 = !DILocation(line: 127, column: 46, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1740, file: !172, discriminator: 3)
!1751 = !{!1752, !654, i64 0}
!1752 = !{!"quoting_options", !654, i64 0, !726, i64 4, !654, i64 8, !653, i64 40, !653, i64 48}
!1753 = !DILocation(line: 127, column: 3, scope: !1750)
!1754 = distinct !DISubprogram(name: "set_quoting_style", scope: !172, file: !172, line: 133, type: !1755, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !1725, !5}
!1757 = !{!1758, !1759}
!1758 = !DILocalVariable(name: "o", arg: 1, scope: !1754, file: !172, line: 133, type: !1725)
!1759 = !DILocalVariable(name: "s", arg: 2, scope: !1754, file: !172, line: 133, type: !5)
!1760 = !DILocation(line: 133, column: 44, scope: !1754)
!1761 = !DILocation(line: 133, column: 66, scope: !1754)
!1762 = !DILocation(line: 135, column: 4, scope: !1754)
!1763 = !DILocation(line: 135, column: 39, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1754, file: !172, discriminator: 3)
!1765 = !DILocation(line: 135, column: 45, scope: !1764)
!1766 = !DILocation(line: 136, column: 1, scope: !1754)
!1767 = distinct !DISubprogram(name: "set_char_quoting", scope: !172, file: !172, line: 144, type: !1768, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!69, !1725, !31, !69}
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1777, !1778}
!1771 = !DILocalVariable(name: "o", arg: 1, scope: !1767, file: !172, line: 144, type: !1725)
!1772 = !DILocalVariable(name: "c", arg: 2, scope: !1767, file: !172, line: 144, type: !31)
!1773 = !DILocalVariable(name: "i", arg: 3, scope: !1767, file: !172, line: 144, type: !69)
!1774 = !DILocalVariable(name: "uc", scope: !1767, file: !172, line: 146, type: !40)
!1775 = !DILocalVariable(name: "p", scope: !1767, file: !172, line: 147, type: !1776)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1777 = !DILocalVariable(name: "shift", scope: !1767, file: !172, line: 149, type: !69)
!1778 = !DILocalVariable(name: "r", scope: !1767, file: !172, line: 150, type: !69)
!1779 = !DILocation(line: 144, column: 43, scope: !1767)
!1780 = !DILocation(line: 144, column: 51, scope: !1767)
!1781 = !DILocation(line: 144, column: 58, scope: !1767)
!1782 = !DILocation(line: 146, column: 17, scope: !1767)
!1783 = !DILocation(line: 148, column: 6, scope: !1767)
!1784 = !DILocation(line: 148, column: 62, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1767, file: !172, discriminator: 3)
!1786 = !DILocation(line: 148, column: 57, scope: !1785)
!1787 = !DILocation(line: 147, column: 17, scope: !1767)
!1788 = !DILocation(line: 149, column: 18, scope: !1767)
!1789 = !DILocation(line: 149, column: 15, scope: !1767)
!1790 = !DILocation(line: 149, column: 7, scope: !1767)
!1791 = !DILocation(line: 150, column: 12, scope: !1767)
!1792 = !DILocation(line: 150, column: 15, scope: !1767)
!1793 = !DILocation(line: 150, column: 25, scope: !1767)
!1794 = !DILocation(line: 150, column: 7, scope: !1767)
!1795 = !DILocation(line: 151, column: 13, scope: !1767)
!1796 = !DILocation(line: 151, column: 18, scope: !1767)
!1797 = !DILocation(line: 151, column: 23, scope: !1767)
!1798 = !DILocation(line: 151, column: 6, scope: !1767)
!1799 = !DILocation(line: 152, column: 3, scope: !1767)
!1800 = distinct !DISubprogram(name: "set_quoting_flags", scope: !172, file: !172, line: 160, type: !1801, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1803)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!69, !1725, !69}
!1803 = !{!1804, !1805, !1806}
!1804 = !DILocalVariable(name: "o", arg: 1, scope: !1800, file: !172, line: 160, type: !1725)
!1805 = !DILocalVariable(name: "i", arg: 2, scope: !1800, file: !172, line: 160, type: !69)
!1806 = !DILocalVariable(name: "r", scope: !1800, file: !172, line: 162, type: !69)
!1807 = !DILocation(line: 160, column: 44, scope: !1800)
!1808 = !DILocation(line: 160, column: 51, scope: !1800)
!1809 = !DILocation(line: 163, column: 8, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1800, file: !172, line: 163, column: 7)
!1811 = !DILocation(line: 163, column: 7, scope: !1800)
!1812 = !DILocation(line: 165, column: 10, scope: !1800)
!1813 = !{!1752, !726, i64 4}
!1814 = !DILocation(line: 162, column: 7, scope: !1800)
!1815 = !DILocation(line: 166, column: 12, scope: !1800)
!1816 = !DILocation(line: 167, column: 3, scope: !1800)
!1817 = distinct !DISubprogram(name: "set_custom_quoting", scope: !172, file: !172, line: 171, type: !1818, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1725, !29, !29}
!1820 = !{!1821, !1822, !1823}
!1821 = !DILocalVariable(name: "o", arg: 1, scope: !1817, file: !172, line: 171, type: !1725)
!1822 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1817, file: !172, line: 172, type: !29)
!1823 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1817, file: !172, line: 172, type: !29)
!1824 = !DILocation(line: 171, column: 45, scope: !1817)
!1825 = !DILocation(line: 172, column: 33, scope: !1817)
!1826 = !DILocation(line: 172, column: 57, scope: !1817)
!1827 = !DILocation(line: 174, column: 8, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1817, file: !172, line: 174, column: 7)
!1829 = !DILocation(line: 174, column: 7, scope: !1817)
!1830 = !DILocation(line: 176, column: 6, scope: !1817)
!1831 = !DILocation(line: 176, column: 12, scope: !1817)
!1832 = !DILocation(line: 177, column: 8, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1817, file: !172, line: 177, column: 7)
!1834 = !DILocation(line: 177, column: 23, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1833, file: !172, discriminator: 1)
!1836 = !DILocation(line: 177, column: 19, scope: !1833)
!1837 = !DILocation(line: 178, column: 5, scope: !1833)
!1838 = !DILocation(line: 179, column: 6, scope: !1817)
!1839 = !DILocation(line: 179, column: 17, scope: !1817)
!1840 = !{!1752, !653, i64 40}
!1841 = !DILocation(line: 180, column: 6, scope: !1817)
!1842 = !DILocation(line: 180, column: 18, scope: !1817)
!1843 = !{!1752, !653, i64 48}
!1844 = !DILocation(line: 181, column: 1, scope: !1817)
!1845 = distinct !DISubprogram(name: "quotearg_buffer", scope: !172, file: !172, line: 776, type: !1846, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!33, !139, !33, !29, !33, !1743}
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856}
!1849 = !DILocalVariable(name: "buffer", arg: 1, scope: !1845, file: !172, line: 776, type: !139)
!1850 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1845, file: !172, line: 776, type: !33)
!1851 = !DILocalVariable(name: "arg", arg: 3, scope: !1845, file: !172, line: 777, type: !29)
!1852 = !DILocalVariable(name: "argsize", arg: 4, scope: !1845, file: !172, line: 777, type: !33)
!1853 = !DILocalVariable(name: "o", arg: 5, scope: !1845, file: !172, line: 778, type: !1743)
!1854 = !DILocalVariable(name: "p", scope: !1845, file: !172, line: 780, type: !1743)
!1855 = !DILocalVariable(name: "e", scope: !1845, file: !172, line: 781, type: !69)
!1856 = !DILocalVariable(name: "r", scope: !1845, file: !172, line: 782, type: !33)
!1857 = !DILocation(line: 776, column: 24, scope: !1845)
!1858 = !DILocation(line: 776, column: 39, scope: !1845)
!1859 = !DILocation(line: 777, column: 30, scope: !1845)
!1860 = !DILocation(line: 777, column: 42, scope: !1845)
!1861 = !DILocation(line: 778, column: 48, scope: !1845)
!1862 = !DILocation(line: 780, column: 37, scope: !1845)
!1863 = !DILocation(line: 780, column: 33, scope: !1845)
!1864 = !DILocation(line: 781, column: 11, scope: !1845)
!1865 = !DILocation(line: 781, column: 7, scope: !1845)
!1866 = !DILocation(line: 783, column: 43, scope: !1845)
!1867 = !DILocation(line: 783, column: 53, scope: !1845)
!1868 = !DILocation(line: 783, column: 60, scope: !1845)
!1869 = !DILocation(line: 784, column: 43, scope: !1845)
!1870 = !DILocation(line: 784, column: 58, scope: !1845)
!1871 = !DILocation(line: 782, column: 14, scope: !1845)
!1872 = !DILocation(line: 782, column: 10, scope: !1845)
!1873 = !DILocation(line: 785, column: 9, scope: !1845)
!1874 = !DILocation(line: 786, column: 3, scope: !1845)
!1875 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !172, file: !172, line: 248, type: !1876, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1880)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!33, !139, !33, !29, !33, !5, !69, !1878, !29, !29}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1905, !1906, !1907, !1908, !1909, !1912, !1913, !1930, !1933, !1934, !1941}
!1881 = !DILocalVariable(name: "buffer", arg: 1, scope: !1875, file: !172, line: 248, type: !139)
!1882 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1875, file: !172, line: 248, type: !33)
!1883 = !DILocalVariable(name: "arg", arg: 3, scope: !1875, file: !172, line: 249, type: !29)
!1884 = !DILocalVariable(name: "argsize", arg: 4, scope: !1875, file: !172, line: 249, type: !33)
!1885 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1875, file: !172, line: 250, type: !5)
!1886 = !DILocalVariable(name: "flags", arg: 6, scope: !1875, file: !172, line: 250, type: !69)
!1887 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1875, file: !172, line: 251, type: !1878)
!1888 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1875, file: !172, line: 252, type: !29)
!1889 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1875, file: !172, line: 253, type: !29)
!1890 = !DILocalVariable(name: "i", scope: !1875, file: !172, line: 255, type: !33)
!1891 = !DILocalVariable(name: "len", scope: !1875, file: !172, line: 256, type: !33)
!1892 = !DILocalVariable(name: "orig_buffersize", scope: !1875, file: !172, line: 257, type: !33)
!1893 = !DILocalVariable(name: "quote_string", scope: !1875, file: !172, line: 258, type: !29)
!1894 = !DILocalVariable(name: "quote_string_len", scope: !1875, file: !172, line: 259, type: !33)
!1895 = !DILocalVariable(name: "backslash_escapes", scope: !1875, file: !172, line: 260, type: !108)
!1896 = !DILocalVariable(name: "unibyte_locale", scope: !1875, file: !172, line: 261, type: !108)
!1897 = !DILocalVariable(name: "elide_outer_quotes", scope: !1875, file: !172, line: 262, type: !108)
!1898 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1875, file: !172, line: 263, type: !108)
!1899 = !DILocalVariable(name: "encountered_single_quote", scope: !1875, file: !172, line: 264, type: !108)
!1900 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1875, file: !172, line: 265, type: !108)
!1901 = !DILocalVariable(name: "c", scope: !1902, file: !172, line: 394, type: !40)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 393, column: 5)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !172, line: 392, column: 3)
!1904 = distinct !DILexicalBlock(scope: !1875, file: !172, line: 392, column: 3)
!1905 = !DILocalVariable(name: "esc", scope: !1902, file: !172, line: 395, type: !40)
!1906 = !DILocalVariable(name: "is_right_quote", scope: !1902, file: !172, line: 396, type: !108)
!1907 = !DILocalVariable(name: "escaping", scope: !1902, file: !172, line: 397, type: !108)
!1908 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1902, file: !172, line: 398, type: !108)
!1909 = !DILocalVariable(name: "m", scope: !1910, file: !172, line: 602, type: !33)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 600, column: 11)
!1911 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 418, column: 9)
!1912 = !DILocalVariable(name: "printable", scope: !1910, file: !172, line: 604, type: !108)
!1913 = !DILocalVariable(name: "mbstate", scope: !1914, file: !172, line: 613, type: !1916)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !172, line: 612, column: 15)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !172, line: 606, column: 17)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1917, line: 107, baseType: !1918)
!1917 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1917, line: 95, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1917, line: 83, size: 64, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1919, file: !1917, line: 85, baseType: !69, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1919, file: !1917, line: 94, baseType: !1923, size: 32, offset: 32)
!1923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !1917, line: 86, size: 32, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1923, file: !1917, line: 89, baseType: !185, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1923, file: !1917, line: 93, baseType: !1927, size: 32)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !1928)
!1928 = !{!1929}
!1929 = !DISubrange(count: 4)
!1930 = !DILocalVariable(name: "w", scope: !1931, file: !172, line: 623, type: !1932)
!1931 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 622, column: 19)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !34, line: 90, baseType: !69)
!1933 = !DILocalVariable(name: "bytes", scope: !1931, file: !172, line: 624, type: !33)
!1934 = !DILocalVariable(name: "j", scope: !1935, file: !172, line: 649, type: !33)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !172, line: 648, column: 27)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !172, line: 646, column: 29)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !172, line: 641, column: 23)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !172, line: 633, column: 30)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !172, line: 628, column: 30)
!1940 = distinct !DILexicalBlock(scope: !1931, file: !172, line: 626, column: 25)
!1941 = !DILocalVariable(name: "ilim", scope: !1942, file: !172, line: 676, type: !33)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !172, line: 673, column: 15)
!1943 = distinct !DILexicalBlock(scope: !1910, file: !172, line: 672, column: 17)
!1944 = !DILocation(line: 248, column: 33, scope: !1875)
!1945 = !DILocation(line: 248, column: 48, scope: !1875)
!1946 = !DILocation(line: 249, column: 39, scope: !1875)
!1947 = !DILocation(line: 249, column: 51, scope: !1875)
!1948 = !DILocation(line: 250, column: 46, scope: !1875)
!1949 = !DILocation(line: 250, column: 65, scope: !1875)
!1950 = !DILocation(line: 251, column: 47, scope: !1875)
!1951 = !DILocation(line: 252, column: 39, scope: !1875)
!1952 = !DILocation(line: 253, column: 39, scope: !1875)
!1953 = !DILocation(line: 256, column: 10, scope: !1875)
!1954 = !DILocation(line: 257, column: 10, scope: !1875)
!1955 = !DILocation(line: 258, column: 15, scope: !1875)
!1956 = !DILocation(line: 259, column: 10, scope: !1875)
!1957 = !DILocation(line: 260, column: 8, scope: !1875)
!1958 = !DILocation(line: 261, column: 25, scope: !1875)
!1959 = !DILocation(line: 261, column: 36, scope: !1875)
!1960 = !DILocation(line: 262, column: 8, scope: !1875)
!1961 = !DILocation(line: 263, column: 8, scope: !1875)
!1962 = !DILocation(line: 264, column: 8, scope: !1875)
!1963 = !DILocation(line: 265, column: 8, scope: !1875)
!1964 = !DILocation(line: 265, column: 3, scope: !1875)
!1965 = !DILocation(line: 308, column: 3, scope: !1875)
!1966 = !DILocation(line: 315, column: 11, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1875, file: !172, line: 309, column: 5)
!1968 = !DILocation(line: 315, column: 12, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1967, file: !172, line: 315, column: 11)
!1970 = !DILocation(line: 316, column: 9, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1972, file: !172, discriminator: 1)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !172, line: 316, column: 9)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !172, line: 316, column: 9)
!1974 = !DILocation(line: 316, column: 9, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1973, file: !172, discriminator: 1)
!1976 = !DILocation(line: 316, column: 9, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1972, file: !172, discriminator: 2)
!1978 = !DILocation(line: 354, column: 26, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !172, line: 332, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !172, line: 331, column: 13)
!1981 = distinct !DILexicalBlock(scope: !1967, file: !172, line: 330, column: 7)
!1982 = !DILocation(line: 355, column: 27, scope: !1979)
!1983 = !DILocation(line: 356, column: 11, scope: !1979)
!1984 = !DILocation(line: 357, column: 14, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !172, line: 357, column: 13)
!1986 = !DILocation(line: 357, column: 13, scope: !1981)
!1987 = !DILocation(line: 358, column: 43, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1989, file: !172, discriminator: 1)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !172, line: 358, column: 11)
!1990 = distinct !DILexicalBlock(scope: !1985, file: !172, line: 358, column: 11)
!1991 = !DILocation(line: 358, column: 11, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1990, file: !172, discriminator: 1)
!1993 = !DILocation(line: 359, column: 13, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1995, file: !172, discriminator: 1)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !172, line: 359, column: 13)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !172, line: 359, column: 13)
!1997 = !DILocation(line: 359, column: 13, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1996, file: !172, discriminator: 1)
!1999 = !DILocation(line: 359, column: 13, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1995, file: !172, discriminator: 2)
!2001 = !DILocation(line: 359, column: 13, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1996, file: !172, discriminator: 3)
!2003 = !DILocation(line: 358, column: 70, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1989, file: !172, discriminator: 2)
!2005 = distinct !{!2005, !2006, !2007}
!2006 = !DILocation(line: 358, column: 11, scope: !1990)
!2007 = !DILocation(line: 359, column: 13, scope: !1990)
!2008 = !DILocation(line: 362, column: 28, scope: !1981)
!2009 = !DILocation(line: 364, column: 7, scope: !1967)
!2010 = !DILocation(line: 367, column: 7, scope: !1967)
!2011 = !DILocation(line: 370, column: 7, scope: !1967)
!2012 = !DILocation(line: 373, column: 12, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1967, file: !172, line: 373, column: 11)
!2014 = !DILocation(line: 373, column: 11, scope: !1967)
!2015 = !DILocation(line: 378, column: 12, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1967, file: !172, line: 378, column: 11)
!2017 = !DILocation(line: 378, column: 11, scope: !1967)
!2018 = !DILocation(line: 379, column: 9, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2020, file: !172, discriminator: 1)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !172, line: 379, column: 9)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !172, line: 379, column: 9)
!2022 = !DILocation(line: 379, column: 9, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2021, file: !172, discriminator: 1)
!2024 = !DILocation(line: 379, column: 9, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2020, file: !172, discriminator: 2)
!2026 = !DILocation(line: 386, column: 7, scope: !1967)
!2027 = !DILocation(line: 389, column: 7, scope: !1967)
!2028 = !DILocation(line: 255, column: 10, scope: !1875)
!2029 = !DILocation(line: 392, column: 8, scope: !1904)
!2030 = !DILocation(line: 392, column: 27, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !1903, file: !172, discriminator: 1)
!2032 = !DILocation(line: 392, column: 19, scope: !2031)
!2033 = !DILocation(line: 392, column: 60, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !1903, file: !172, discriminator: 3)
!2035 = !DILocation(line: 392, column: 3, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !1904, file: !172, discriminator: 4)
!2037 = !DILocation(line: 392, column: 41, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !1903, file: !172, discriminator: 2)
!2039 = !DILocation(line: 392, column: 48, scope: !2038)
!2040 = !DILocation(line: 396, column: 12, scope: !1902)
!2041 = !DILocation(line: 397, column: 12, scope: !1902)
!2042 = !DILocation(line: 398, column: 12, scope: !1902)
!2043 = !DILocation(line: 401, column: 11, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 400, column: 11)
!2045 = !DILocation(line: 403, column: 17, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2044, file: !172, discriminator: 1)
!2047 = !DILocation(line: 404, column: 39, scope: !2044)
!2048 = !DILocation(line: 408, column: 32, scope: !2044)
!2049 = !DILocation(line: 404, column: 19, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2044, file: !172, discriminator: 2)
!2051 = !DILocation(line: 404, column: 15, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2044, file: !172, discriminator: 4)
!2053 = !DILocation(line: 409, column: 11, scope: !2044)
!2054 = !DILocation(line: 409, column: 26, scope: !2046)
!2055 = !DILocation(line: 409, column: 14, scope: !2046)
!2056 = !DILocation(line: 400, column: 11, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !1902, file: !172, discriminator: 1)
!2058 = !DILocation(line: 416, column: 11, scope: !1902)
!2059 = !DILocation(line: 394, column: 21, scope: !1902)
!2060 = !DILocation(line: 417, column: 7, scope: !1902)
!2061 = !DILocation(line: 420, column: 15, scope: !1911)
!2062 = !DILocation(line: 422, column: 15, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2064, file: !172, discriminator: 1)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !172, line: 422, column: 15)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !172, line: 421, column: 13)
!2066 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 420, column: 15)
!2067 = !DILocation(line: 422, column: 15, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2069, file: !172, discriminator: 4)
!2069 = distinct !DILexicalBlock(scope: !2064, file: !172, line: 422, column: 15)
!2070 = !DILocation(line: 422, column: 15, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2069, file: !172, discriminator: 3)
!2072 = !DILocation(line: 422, column: 15, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2074, file: !172, discriminator: 6)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !172, line: 422, column: 15)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !172, line: 422, column: 15)
!2076 = distinct !DILexicalBlock(scope: !2069, file: !172, line: 422, column: 15)
!2077 = !DILocation(line: 422, column: 15, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2075, file: !172, discriminator: 6)
!2079 = !DILocation(line: 422, column: 15, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2074, file: !172, discriminator: 7)
!2081 = !DILocation(line: 422, column: 15, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2075, file: !172, discriminator: 8)
!2083 = !DILocation(line: 422, column: 15, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2085, file: !172, discriminator: 11)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !172, line: 422, column: 15)
!2086 = distinct !DILexicalBlock(scope: !2076, file: !172, line: 422, column: 15)
!2087 = !DILocation(line: 422, column: 15, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2086, file: !172, discriminator: 11)
!2089 = !DILocation(line: 422, column: 15, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2085, file: !172, discriminator: 12)
!2091 = !DILocation(line: 422, column: 15, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2086, file: !172, discriminator: 13)
!2093 = !DILocation(line: 422, column: 15, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2095, file: !172, discriminator: 16)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !172, line: 422, column: 15)
!2096 = distinct !DILexicalBlock(scope: !2076, file: !172, line: 422, column: 15)
!2097 = !DILocation(line: 422, column: 15, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2096, file: !172, discriminator: 16)
!2099 = !DILocation(line: 422, column: 15, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2095, file: !172, discriminator: 17)
!2101 = !DILocation(line: 422, column: 15, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2096, file: !172, discriminator: 18)
!2103 = !DILocation(line: 422, column: 15, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2076, file: !172, discriminator: 20)
!2105 = !DILocation(line: 422, column: 15, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2107, file: !172, discriminator: 22)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !172, line: 422, column: 15)
!2108 = distinct !DILexicalBlock(scope: !2064, file: !172, line: 422, column: 15)
!2109 = !DILocation(line: 422, column: 15, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2108, file: !172, discriminator: 22)
!2111 = !DILocation(line: 422, column: 15, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2107, file: !172, discriminator: 23)
!2113 = !DILocation(line: 422, column: 15, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2108, file: !172, discriminator: 24)
!2115 = !DILocation(line: 430, column: 19, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2065, file: !172, line: 429, column: 19)
!2117 = !DILocation(line: 430, column: 24, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2116, file: !172, discriminator: 1)
!2119 = !DILocation(line: 430, column: 28, scope: !2118)
!2120 = !DILocation(line: 430, column: 38, scope: !2118)
!2121 = !DILocation(line: 430, column: 48, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2116, file: !172, discriminator: 2)
!2123 = !DILocation(line: 430, column: 59, scope: !2122)
!2124 = !DILocation(line: 432, column: 19, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !172, discriminator: 1)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !172, line: 432, column: 19)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !172, line: 432, column: 19)
!2128 = distinct !DILexicalBlock(scope: !2116, file: !172, line: 431, column: 17)
!2129 = !DILocation(line: 432, column: 19, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2127, file: !172, discriminator: 1)
!2131 = !DILocation(line: 432, column: 19, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2126, file: !172, discriminator: 2)
!2133 = !DILocation(line: 432, column: 19, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2127, file: !172, discriminator: 3)
!2135 = !DILocation(line: 433, column: 19, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2137, file: !172, discriminator: 1)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !172, line: 433, column: 19)
!2138 = distinct !DILexicalBlock(scope: !2128, file: !172, line: 433, column: 19)
!2139 = !DILocation(line: 433, column: 19, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2138, file: !172, discriminator: 1)
!2141 = !DILocation(line: 433, column: 19, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2137, file: !172, discriminator: 2)
!2143 = !DILocation(line: 433, column: 19, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2138, file: !172, discriminator: 3)
!2145 = !DILocation(line: 434, column: 17, scope: !2128)
!2146 = !DILocation(line: 441, column: 20, scope: !2066)
!2147 = !DILocation(line: 446, column: 11, scope: !1911)
!2148 = !DILocation(line: 449, column: 19, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 447, column: 13)
!2150 = !DILocation(line: 455, column: 19, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2149, file: !172, line: 454, column: 19)
!2152 = !DILocation(line: 455, column: 24, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2151, file: !172, discriminator: 1)
!2154 = !DILocation(line: 455, column: 28, scope: !2153)
!2155 = !DILocation(line: 455, column: 38, scope: !2153)
!2156 = !DILocation(line: 455, column: 47, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2151, file: !172, discriminator: 2)
!2158 = !DILocation(line: 455, column: 41, scope: !2157)
!2159 = !DILocation(line: 455, column: 52, scope: !2157)
!2160 = !DILocation(line: 454, column: 19, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2149, file: !172, discriminator: 1)
!2162 = !DILocation(line: 456, column: 25, scope: !2151)
!2163 = !DILocation(line: 456, column: 17, scope: !2151)
!2164 = !DILocation(line: 463, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2151, file: !172, line: 457, column: 19)
!2166 = !DILocation(line: 467, column: 21, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !172, discriminator: 1)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !172, line: 467, column: 21)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !172, line: 467, column: 21)
!2170 = !DILocation(line: 467, column: 21, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2169, file: !172, discriminator: 1)
!2172 = !DILocation(line: 467, column: 21, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2168, file: !172, discriminator: 2)
!2174 = !DILocation(line: 467, column: 21, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2169, file: !172, discriminator: 3)
!2176 = !DILocation(line: 468, column: 21, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2178, file: !172, discriminator: 1)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !172, line: 468, column: 21)
!2179 = distinct !DILexicalBlock(scope: !2165, file: !172, line: 468, column: 21)
!2180 = !DILocation(line: 468, column: 21, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2179, file: !172, discriminator: 1)
!2182 = !DILocation(line: 468, column: 21, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2178, file: !172, discriminator: 2)
!2184 = !DILocation(line: 468, column: 21, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2179, file: !172, discriminator: 3)
!2186 = !DILocation(line: 469, column: 21, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2188, file: !172, discriminator: 1)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !172, line: 469, column: 21)
!2189 = distinct !DILexicalBlock(scope: !2165, file: !172, line: 469, column: 21)
!2190 = !DILocation(line: 469, column: 21, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2189, file: !172, discriminator: 1)
!2192 = !DILocation(line: 469, column: 21, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2188, file: !172, discriminator: 2)
!2194 = !DILocation(line: 469, column: 21, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2189, file: !172, discriminator: 3)
!2196 = !DILocation(line: 470, column: 21, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !172, discriminator: 1)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !172, line: 470, column: 21)
!2199 = distinct !DILexicalBlock(scope: !2165, file: !172, line: 470, column: 21)
!2200 = !DILocation(line: 470, column: 21, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2199, file: !172, discriminator: 1)
!2202 = !DILocation(line: 470, column: 21, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2198, file: !172, discriminator: 2)
!2204 = !DILocation(line: 470, column: 21, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2199, file: !172, discriminator: 3)
!2206 = !DILocation(line: 471, column: 21, scope: !2165)
!2207 = !DILocation(line: 395, column: 21, scope: !1902)
!2208 = !DILocation(line: 484, column: 31, scope: !1911)
!2209 = !DILocation(line: 485, column: 31, scope: !1911)
!2210 = !DILocation(line: 487, column: 31, scope: !1911)
!2211 = !DILocation(line: 488, column: 31, scope: !1911)
!2212 = !DILocation(line: 489, column: 31, scope: !1911)
!2213 = !DILocation(line: 492, column: 15, scope: !1911)
!2214 = !DILocation(line: 494, column: 19, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !172, line: 493, column: 13)
!2216 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 492, column: 15)
!2217 = !DILocation(line: 501, column: 33, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 501, column: 15)
!2219 = !DILocation(line: 506, column: 15, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 505, column: 15)
!2221 = !DILocation(line: 510, column: 15, scope: !1911)
!2222 = !DILocation(line: 518, column: 26, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 518, column: 15)
!2224 = !DILocation(line: 518, column: 15, scope: !1911)
!2225 = !DILocation(line: 518, column: 40, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2223, file: !172, discriminator: 1)
!2227 = !DILocation(line: 518, column: 47, scope: !2226)
!2228 = !DILocation(line: 522, column: 17, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 522, column: 15)
!2230 = !DILocation(line: 518, column: 18, scope: !2226)
!2231 = !DILocation(line: 518, column: 65, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2223, file: !172, discriminator: 2)
!2233 = !DILocation(line: 518, column: 15, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !1911, file: !172, discriminator: 2)
!2235 = !DILocation(line: 522, column: 15, scope: !1911)
!2236 = !DILocation(line: 526, column: 11, scope: !1911)
!2237 = !DILocation(line: 541, column: 15, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 540, column: 15)
!2239 = !DILocation(line: 548, column: 15, scope: !1911)
!2240 = !DILocation(line: 550, column: 19, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !172, line: 549, column: 13)
!2242 = distinct !DILexicalBlock(scope: !1911, file: !172, line: 548, column: 15)
!2243 = !DILocation(line: 553, column: 19, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !172, line: 553, column: 19)
!2245 = !DILocation(line: 553, column: 35, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2244, file: !172, discriminator: 1)
!2247 = !DILocation(line: 553, column: 30, scope: !2244)
!2248 = !DILocation(line: 562, column: 15, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !172, discriminator: 1)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !172, line: 562, column: 15)
!2251 = distinct !DILexicalBlock(scope: !2241, file: !172, line: 562, column: 15)
!2252 = !DILocation(line: 562, column: 15, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2251, file: !172, discriminator: 1)
!2254 = !DILocation(line: 562, column: 15, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2250, file: !172, discriminator: 2)
!2256 = !DILocation(line: 562, column: 15, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2251, file: !172, discriminator: 3)
!2258 = !DILocation(line: 563, column: 15, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2260, file: !172, discriminator: 1)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !172, line: 563, column: 15)
!2261 = distinct !DILexicalBlock(scope: !2241, file: !172, line: 563, column: 15)
!2262 = !DILocation(line: 563, column: 15, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2261, file: !172, discriminator: 1)
!2264 = !DILocation(line: 563, column: 15, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2260, file: !172, discriminator: 2)
!2266 = !DILocation(line: 563, column: 15, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2261, file: !172, discriminator: 3)
!2268 = !DILocation(line: 564, column: 15, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2270, file: !172, discriminator: 1)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !172, line: 564, column: 15)
!2271 = distinct !DILexicalBlock(scope: !2241, file: !172, line: 564, column: 15)
!2272 = !DILocation(line: 564, column: 15, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2271, file: !172, discriminator: 1)
!2274 = !DILocation(line: 564, column: 15, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2270, file: !172, discriminator: 2)
!2276 = !DILocation(line: 564, column: 15, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2271, file: !172, discriminator: 3)
!2278 = !DILocation(line: 566, column: 13, scope: !2241)
!2279 = !DILocation(line: 606, column: 17, scope: !1910)
!2280 = !DILocation(line: 602, column: 20, scope: !1910)
!2281 = !DILocation(line: 609, column: 29, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1915, file: !172, line: 607, column: 15)
!2283 = !{!2284, !2284, i64 0}
!2284 = !{!"short", !654, i64 0}
!2285 = !DILocation(line: 609, column: 27, scope: !2282)
!2286 = !DILocation(line: 604, column: 18, scope: !1910)
!2287 = !DILocation(line: 610, column: 15, scope: !2282)
!2288 = !DILocation(line: 613, column: 17, scope: !1914)
!2289 = !DILocation(line: 614, column: 17, scope: !1914)
!2290 = !DILocation(line: 618, column: 29, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 618, column: 21)
!2292 = !DILocation(line: 618, column: 21, scope: !1914)
!2293 = distinct !{!2293, !2294, !2295}
!2294 = !DILocation(line: 621, column: 17, scope: !1914)
!2295 = !DILocation(line: 667, column: 44, scope: !1914)
!2296 = !DILocation(line: 619, column: 29, scope: !2291)
!2297 = !DILocation(line: 619, column: 19, scope: !2291)
!2298 = !DILocation(line: 623, column: 21, scope: !1931)
!2299 = !DILocation(line: 624, column: 56, scope: !1931)
!2300 = !DILocation(line: 624, column: 50, scope: !1931)
!2301 = !DILocation(line: 625, column: 53, scope: !1931)
!2302 = !DILocation(line: 613, column: 27, scope: !1914)
!2303 = !DILocation(line: 623, column: 29, scope: !1931)
!2304 = !DILocation(line: 624, column: 36, scope: !1931)
!2305 = !DILocation(line: 624, column: 28, scope: !1931)
!2306 = !DILocation(line: 626, column: 25, scope: !1931)
!2307 = !DILocation(line: 636, column: 38, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2309, file: !172, discriminator: 1)
!2309 = distinct !DILexicalBlock(scope: !1938, file: !172, line: 634, column: 23)
!2310 = !DILocation(line: 636, column: 48, scope: !2308)
!2311 = !DILocation(line: 636, column: 51, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2309, file: !172, discriminator: 2)
!2313 = !DILocation(line: 636, column: 48, scope: !2312)
!2314 = !DILocation(line: 636, column: 25, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2309, file: !172, discriminator: 3)
!2316 = !DILocation(line: 637, column: 28, scope: !2309)
!2317 = !DILocation(line: 636, column: 34, scope: !2308)
!2318 = distinct !{!2318, !2319, !2316}
!2319 = !DILocation(line: 636, column: 25, scope: !2309)
!2320 = !DILocation(line: 650, column: 43, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2322, file: !172, discriminator: 1)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !172, line: 650, column: 29)
!2323 = distinct !DILexicalBlock(scope: !1935, file: !172, line: 650, column: 29)
!2324 = !DILocation(line: 647, column: 29, scope: !1936)
!2325 = !DILocation(line: 649, column: 36, scope: !1935)
!2326 = !DILocation(line: 651, column: 49, scope: !2322)
!2327 = !DILocation(line: 651, column: 39, scope: !2322)
!2328 = !DILocation(line: 651, column: 31, scope: !2322)
!2329 = !DILocation(line: 650, column: 53, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2322, file: !172, discriminator: 2)
!2331 = !DILocation(line: 650, column: 29, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2323, file: !172, discriminator: 1)
!2333 = distinct !{!2333, !2334, !2335}
!2334 = !DILocation(line: 650, column: 29, scope: !2323)
!2335 = !DILocation(line: 659, column: 33, scope: !2323)
!2336 = !DILocation(line: 666, column: 19, scope: !1914)
!2337 = !DILocation(line: 662, column: 41, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !1937, file: !172, line: 662, column: 29)
!2339 = !DILocation(line: 662, column: 31, scope: !2338)
!2340 = !DILocation(line: 662, column: 29, scope: !1937)
!2341 = !DILocation(line: 664, column: 27, scope: !1937)
!2342 = !DILocation(line: 667, column: 26, scope: !1914)
!2343 = !DILocation(line: 667, column: 24, scope: !1914)
!2344 = !DILocation(line: 666, column: 19, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !1931, file: !172, discriminator: 3)
!2346 = !DILocation(line: 668, column: 15, scope: !1915)
!2347 = !DILocation(line: 670, column: 40, scope: !1910)
!2348 = !DILocation(line: 672, column: 19, scope: !1943)
!2349 = !DILocation(line: 672, column: 45, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !1943, file: !172, discriminator: 1)
!2351 = !DILocation(line: 672, column: 23, scope: !1943)
!2352 = !DILocation(line: 676, column: 33, scope: !1942)
!2353 = !DILocation(line: 676, column: 24, scope: !1942)
!2354 = !DILocation(line: 678, column: 17, scope: !1942)
!2355 = !DILocation(line: 680, column: 43, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !172, line: 680, column: 25)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !172, line: 679, column: 19)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !172, line: 678, column: 17)
!2359 = distinct !DILexicalBlock(scope: !1942, file: !172, line: 678, column: 17)
!2360 = !DILocation(line: 682, column: 25, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2362, file: !172, discriminator: 1)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !172, line: 682, column: 25)
!2363 = distinct !DILexicalBlock(scope: !2356, file: !172, line: 681, column: 23)
!2364 = !DILocation(line: 682, column: 25, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2366, file: !172, discriminator: 4)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !172, line: 682, column: 25)
!2367 = !DILocation(line: 682, column: 25, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2366, file: !172, discriminator: 3)
!2369 = !DILocation(line: 682, column: 25, scope: !2370)
!2370 = !DILexicalBlockFile(scope: !2371, file: !172, discriminator: 6)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !172, line: 682, column: 25)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !172, line: 682, column: 25)
!2373 = distinct !DILexicalBlock(scope: !2366, file: !172, line: 682, column: 25)
!2374 = !DILocation(line: 682, column: 25, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2372, file: !172, discriminator: 6)
!2376 = !DILocation(line: 682, column: 25, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2371, file: !172, discriminator: 7)
!2378 = !DILocation(line: 682, column: 25, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2372, file: !172, discriminator: 8)
!2380 = !DILocation(line: 682, column: 25, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2382, file: !172, discriminator: 11)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !172, line: 682, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2373, file: !172, line: 682, column: 25)
!2384 = !DILocation(line: 682, column: 25, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2383, file: !172, discriminator: 11)
!2386 = !DILocation(line: 682, column: 25, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2382, file: !172, discriminator: 12)
!2388 = !DILocation(line: 682, column: 25, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2383, file: !172, discriminator: 13)
!2390 = !DILocation(line: 682, column: 25, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2392, file: !172, discriminator: 16)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !172, line: 682, column: 25)
!2393 = distinct !DILexicalBlock(scope: !2373, file: !172, line: 682, column: 25)
!2394 = !DILocation(line: 682, column: 25, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2393, file: !172, discriminator: 16)
!2396 = !DILocation(line: 682, column: 25, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2392, file: !172, discriminator: 17)
!2398 = !DILocation(line: 682, column: 25, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2393, file: !172, discriminator: 18)
!2400 = !DILocation(line: 682, column: 25, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2373, file: !172, discriminator: 20)
!2402 = !DILocation(line: 682, column: 25, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2404, file: !172, discriminator: 22)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !172, line: 682, column: 25)
!2405 = distinct !DILexicalBlock(scope: !2362, file: !172, line: 682, column: 25)
!2406 = !DILocation(line: 682, column: 25, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2405, file: !172, discriminator: 22)
!2408 = !DILocation(line: 682, column: 25, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2404, file: !172, discriminator: 23)
!2410 = !DILocation(line: 682, column: 25, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2405, file: !172, discriminator: 24)
!2412 = !DILocation(line: 683, column: 25, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2414, file: !172, discriminator: 1)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !172, line: 683, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2363, file: !172, line: 683, column: 25)
!2416 = !DILocation(line: 683, column: 25, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2415, file: !172, discriminator: 1)
!2418 = !DILocation(line: 683, column: 25, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2414, file: !172, discriminator: 2)
!2420 = !DILocation(line: 683, column: 25, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2415, file: !172, discriminator: 3)
!2422 = !DILocation(line: 684, column: 25, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2424, file: !172, discriminator: 1)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !172, line: 684, column: 25)
!2425 = distinct !DILexicalBlock(scope: !2363, file: !172, line: 684, column: 25)
!2426 = !DILocation(line: 684, column: 25, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2425, file: !172, discriminator: 1)
!2428 = !DILocation(line: 684, column: 25, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2424, file: !172, discriminator: 2)
!2430 = !DILocation(line: 684, column: 25, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2425, file: !172, discriminator: 3)
!2432 = !DILocation(line: 685, column: 38, scope: !2363)
!2433 = !DILocation(line: 685, column: 33, scope: !2363)
!2434 = !DILocation(line: 686, column: 23, scope: !2363)
!2435 = !DILocation(line: 687, column: 30, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2356, file: !172, line: 687, column: 30)
!2437 = !DILocation(line: 687, column: 30, scope: !2356)
!2438 = !DILocation(line: 689, column: 25, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2440, file: !172, discriminator: 1)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !172, line: 689, column: 25)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !172, line: 689, column: 25)
!2442 = distinct !DILexicalBlock(scope: !2436, file: !172, line: 688, column: 23)
!2443 = !DILocation(line: 689, column: 25, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2441, file: !172, discriminator: 1)
!2445 = !DILocation(line: 689, column: 25, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2440, file: !172, discriminator: 2)
!2447 = !DILocation(line: 689, column: 25, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2441, file: !172, discriminator: 3)
!2449 = !DILocation(line: 691, column: 23, scope: !2442)
!2450 = !DILocation(line: 692, column: 35, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2357, file: !172, line: 692, column: 25)
!2452 = !DILocation(line: 692, column: 30, scope: !2451)
!2453 = !DILocation(line: 692, column: 25, scope: !2357)
!2454 = !DILocation(line: 694, column: 21, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2456, file: !172, discriminator: 1)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !172, line: 694, column: 21)
!2457 = distinct !DILexicalBlock(scope: !2357, file: !172, line: 694, column: 21)
!2458 = !DILocation(line: 694, column: 21, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2456, file: !172, discriminator: 2)
!2460 = !DILocation(line: 694, column: 21, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2462, file: !172, discriminator: 4)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !172, line: 694, column: 21)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !172, line: 694, column: 21)
!2464 = distinct !DILexicalBlock(scope: !2456, file: !172, line: 694, column: 21)
!2465 = !DILocation(line: 694, column: 21, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2463, file: !172, discriminator: 4)
!2467 = !DILocation(line: 694, column: 21, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2462, file: !172, discriminator: 5)
!2469 = !DILocation(line: 694, column: 21, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2463, file: !172, discriminator: 6)
!2471 = !DILocation(line: 694, column: 21, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2473, file: !172, discriminator: 9)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !172, line: 694, column: 21)
!2474 = distinct !DILexicalBlock(scope: !2464, file: !172, line: 694, column: 21)
!2475 = !DILocation(line: 694, column: 21, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2474, file: !172, discriminator: 9)
!2477 = !DILocation(line: 694, column: 21, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2473, file: !172, discriminator: 10)
!2479 = !DILocation(line: 694, column: 21, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2474, file: !172, discriminator: 11)
!2481 = !DILocation(line: 694, column: 21, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2464, file: !172, discriminator: 13)
!2483 = !DILocation(line: 695, column: 21, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2485, file: !172, discriminator: 1)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !172, line: 695, column: 21)
!2486 = distinct !DILexicalBlock(scope: !2357, file: !172, line: 695, column: 21)
!2487 = !DILocation(line: 695, column: 21, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2486, file: !172, discriminator: 1)
!2489 = !DILocation(line: 695, column: 21, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2485, file: !172, discriminator: 2)
!2491 = !DILocation(line: 695, column: 21, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2486, file: !172, discriminator: 3)
!2493 = !DILocation(line: 696, column: 25, scope: !2357)
!2494 = !DILocation(line: 678, column: 17, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2358, file: !172, discriminator: 1)
!2496 = distinct !{!2496, !2497, !2498}
!2497 = !DILocation(line: 678, column: 17, scope: !2359)
!2498 = !DILocation(line: 697, column: 19, scope: !2359)
!2499 = !DILocation(line: 704, column: 34, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 704, column: 11)
!2501 = !DILocation(line: 706, column: 14, scope: !2500)
!2502 = !DILocation(line: 707, column: 14, scope: !2500)
!2503 = !DILocation(line: 707, column: 35, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2500, file: !172, discriminator: 1)
!2505 = !DILocation(line: 707, column: 17, scope: !2504)
!2506 = !DILocation(line: 707, column: 53, scope: !2504)
!2507 = !DILocation(line: 707, column: 47, scope: !2504)
!2508 = !DILocation(line: 707, column: 65, scope: !2504)
!2509 = !DILocation(line: 708, column: 15, scope: !2504)
!2510 = !DILocation(line: 708, column: 11, scope: !2500)
!2511 = !DILocation(line: 704, column: 11, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !1902, file: !172, discriminator: 2)
!2513 = !DILocation(line: 712, column: 7, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2515, file: !172, discriminator: 1)
!2515 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 712, column: 7)
!2516 = !DILocation(line: 712, column: 7, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2518, file: !172, discriminator: 4)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !172, line: 712, column: 7)
!2519 = !DILocation(line: 712, column: 7, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2518, file: !172, discriminator: 3)
!2521 = !DILocation(line: 712, column: 7, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2523, file: !172, discriminator: 6)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !172, line: 712, column: 7)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !172, line: 712, column: 7)
!2525 = distinct !DILexicalBlock(scope: !2518, file: !172, line: 712, column: 7)
!2526 = !DILocation(line: 712, column: 7, scope: !2527)
!2527 = !DILexicalBlockFile(scope: !2524, file: !172, discriminator: 6)
!2528 = !DILocation(line: 712, column: 7, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2523, file: !172, discriminator: 7)
!2530 = !DILocation(line: 712, column: 7, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2524, file: !172, discriminator: 8)
!2532 = !DILocation(line: 712, column: 7, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2534, file: !172, discriminator: 11)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !172, line: 712, column: 7)
!2535 = distinct !DILexicalBlock(scope: !2525, file: !172, line: 712, column: 7)
!2536 = !DILocation(line: 712, column: 7, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2535, file: !172, discriminator: 11)
!2538 = !DILocation(line: 712, column: 7, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2534, file: !172, discriminator: 12)
!2540 = !DILocation(line: 712, column: 7, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2535, file: !172, discriminator: 13)
!2542 = !DILocation(line: 712, column: 7, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2544, file: !172, discriminator: 16)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !172, line: 712, column: 7)
!2545 = distinct !DILexicalBlock(scope: !2525, file: !172, line: 712, column: 7)
!2546 = !DILocation(line: 712, column: 7, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2545, file: !172, discriminator: 16)
!2548 = !DILocation(line: 712, column: 7, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2544, file: !172, discriminator: 17)
!2550 = !DILocation(line: 712, column: 7, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2545, file: !172, discriminator: 18)
!2552 = !DILocation(line: 712, column: 7, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2525, file: !172, discriminator: 20)
!2554 = !DILocation(line: 712, column: 7, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2556, file: !172, discriminator: 22)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !172, line: 712, column: 7)
!2557 = distinct !DILexicalBlock(scope: !2515, file: !172, line: 712, column: 7)
!2558 = !DILocation(line: 712, column: 7, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2557, file: !172, discriminator: 22)
!2560 = !DILocation(line: 712, column: 7, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2556, file: !172, discriminator: 23)
!2562 = !DILocation(line: 712, column: 7, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2557, file: !172, discriminator: 24)
!2564 = !DILocation(line: 715, column: 7, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2566, file: !172, discriminator: 1)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !172, line: 715, column: 7)
!2567 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 715, column: 7)
!2568 = !DILocation(line: 715, column: 7, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2566, file: !172, discriminator: 2)
!2570 = !DILocation(line: 715, column: 7, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2572, file: !172, discriminator: 4)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !172, line: 715, column: 7)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !172, line: 715, column: 7)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !172, line: 715, column: 7)
!2575 = !DILocation(line: 715, column: 7, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2573, file: !172, discriminator: 4)
!2577 = !DILocation(line: 715, column: 7, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2572, file: !172, discriminator: 5)
!2579 = !DILocation(line: 715, column: 7, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2573, file: !172, discriminator: 6)
!2581 = !DILocation(line: 715, column: 7, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2583, file: !172, discriminator: 9)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !172, line: 715, column: 7)
!2584 = distinct !DILexicalBlock(scope: !2574, file: !172, line: 715, column: 7)
!2585 = !DILocation(line: 715, column: 7, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2584, file: !172, discriminator: 9)
!2587 = !DILocation(line: 715, column: 7, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2583, file: !172, discriminator: 10)
!2589 = !DILocation(line: 715, column: 7, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2584, file: !172, discriminator: 11)
!2591 = !DILocation(line: 715, column: 7, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2574, file: !172, discriminator: 13)
!2593 = !DILocation(line: 716, column: 7, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2595, file: !172, discriminator: 1)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !172, line: 716, column: 7)
!2596 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 716, column: 7)
!2597 = !DILocation(line: 716, column: 7, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2596, file: !172, discriminator: 1)
!2599 = !DILocation(line: 716, column: 7, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2595, file: !172, discriminator: 2)
!2601 = !DILocation(line: 716, column: 7, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2596, file: !172, discriminator: 3)
!2603 = !DILocation(line: 718, column: 13, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 718, column: 11)
!2605 = !DILocation(line: 718, column: 11, scope: !1902)
!2606 = !DILocation(line: 720, column: 5, scope: !1903)
!2607 = !DILocation(line: 392, column: 75, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !1903, file: !172, discriminator: 5)
!2609 = !DILocation(line: 392, column: 3, scope: !2608)
!2610 = distinct !{!2610, !2611, !2612}
!2611 = !DILocation(line: 392, column: 3, scope: !1904)
!2612 = !DILocation(line: 720, column: 5, scope: !1904)
!2613 = !DILocation(line: 722, column: 11, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !1875, file: !172, line: 722, column: 7)
!2615 = !DILocation(line: 722, column: 16, scope: !2614)
!2616 = !DILocation(line: 730, column: 51, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !1875, file: !172, line: 730, column: 7)
!2618 = !DILocation(line: 731, column: 10, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2617, file: !172, discriminator: 1)
!2620 = !DILocation(line: 733, column: 11, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !172, line: 733, column: 11)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !172, line: 732, column: 5)
!2623 = !DILocation(line: 733, column: 11, scope: !2622)
!2624 = !DILocation(line: 734, column: 16, scope: !2621)
!2625 = !DILocation(line: 734, column: 9, scope: !2621)
!2626 = !DILocation(line: 738, column: 18, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2621, file: !172, line: 738, column: 16)
!2628 = !DILocation(line: 738, column: 32, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2627, file: !172, discriminator: 1)
!2630 = !DILocation(line: 738, column: 29, scope: !2627)
!2631 = !DILocation(line: 747, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !1875, file: !172, line: 747, column: 7)
!2633 = !DILocation(line: 747, column: 20, scope: !2632)
!2634 = !DILocation(line: 748, column: 12, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2636, file: !172, discriminator: 1)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !172, line: 748, column: 5)
!2637 = distinct !DILexicalBlock(scope: !2632, file: !172, line: 748, column: 5)
!2638 = !DILocation(line: 748, column: 5, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2637, file: !172, discriminator: 1)
!2640 = !DILocation(line: 749, column: 7, scope: !2641)
!2641 = !DILexicalBlockFile(scope: !2642, file: !172, discriminator: 1)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !172, line: 749, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2636, file: !172, line: 749, column: 7)
!2644 = !DILocation(line: 749, column: 7, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2643, file: !172, discriminator: 1)
!2646 = !DILocation(line: 749, column: 7, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2642, file: !172, discriminator: 2)
!2648 = !DILocation(line: 749, column: 7, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2643, file: !172, discriminator: 3)
!2650 = !DILocation(line: 748, column: 39, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2636, file: !172, discriminator: 2)
!2652 = distinct !{!2652, !2653, !2654}
!2653 = !DILocation(line: 748, column: 5, scope: !2637)
!2654 = !DILocation(line: 749, column: 7, scope: !2637)
!2655 = !DILocation(line: 751, column: 11, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !1875, file: !172, line: 751, column: 7)
!2657 = !DILocation(line: 751, column: 7, scope: !1875)
!2658 = !DILocation(line: 752, column: 5, scope: !2656)
!2659 = !DILocation(line: 752, column: 17, scope: !2656)
!2660 = !DILocation(line: 758, column: 21, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !1875, file: !172, line: 758, column: 7)
!2662 = !DILocation(line: 758, column: 54, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2661, file: !172, discriminator: 1)
!2664 = !DILocation(line: 758, column: 51, scope: !2661)
!2665 = !DILocation(line: 762, column: 42, scope: !1875)
!2666 = !DILocation(line: 760, column: 10, scope: !1875)
!2667 = !DILocation(line: 760, column: 3, scope: !1875)
!2668 = !DILocation(line: 764, column: 1, scope: !1875)
!2669 = distinct !DISubprogram(name: "gettext_quote", scope: !172, file: !172, line: 199, type: !2670, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!29, !29, !5}
!2672 = !{!2673, !2674, !2675, !2676}
!2673 = !DILocalVariable(name: "msgid", arg: 1, scope: !2669, file: !172, line: 199, type: !29)
!2674 = !DILocalVariable(name: "s", arg: 2, scope: !2669, file: !172, line: 199, type: !5)
!2675 = !DILocalVariable(name: "translation", scope: !2669, file: !172, line: 201, type: !29)
!2676 = !DILocalVariable(name: "locale_code", scope: !2669, file: !172, line: 202, type: !29)
!2677 = !DILocation(line: 199, column: 28, scope: !2669)
!2678 = !DILocation(line: 199, column: 54, scope: !2669)
!2679 = !DILocation(line: 201, column: 29, scope: !2669)
!2680 = !DILocation(line: 201, column: 15, scope: !2669)
!2681 = !DILocation(line: 204, column: 19, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2669, file: !172, line: 204, column: 7)
!2683 = !DILocation(line: 204, column: 7, scope: !2669)
!2684 = !DILocation(line: 225, column: 17, scope: !2669)
!2685 = !DILocation(line: 202, column: 15, scope: !2669)
!2686 = !DILocalVariable(name: "s2", arg: 2, scope: !2687, file: !2688, line: 160, type: !29)
!2687 = distinct !DISubprogram(name: "strcaseeq0", scope: !2688, file: !2688, line: 160, type: !2689, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2691)
!2688 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!69, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2691 = !{!2692, !2686, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701}
!2692 = !DILocalVariable(name: "s1", arg: 1, scope: !2687, file: !2688, line: 160, type: !29)
!2693 = !DILocalVariable(name: "s20", arg: 3, scope: !2687, file: !2688, line: 160, type: !31)
!2694 = !DILocalVariable(name: "s21", arg: 4, scope: !2687, file: !2688, line: 160, type: !31)
!2695 = !DILocalVariable(name: "s22", arg: 5, scope: !2687, file: !2688, line: 160, type: !31)
!2696 = !DILocalVariable(name: "s23", arg: 6, scope: !2687, file: !2688, line: 160, type: !31)
!2697 = !DILocalVariable(name: "s24", arg: 7, scope: !2687, file: !2688, line: 160, type: !31)
!2698 = !DILocalVariable(name: "s25", arg: 8, scope: !2687, file: !2688, line: 160, type: !31)
!2699 = !DILocalVariable(name: "s26", arg: 9, scope: !2687, file: !2688, line: 160, type: !31)
!2700 = !DILocalVariable(name: "s27", arg: 10, scope: !2687, file: !2688, line: 160, type: !31)
!2701 = !DILocalVariable(name: "s28", arg: 11, scope: !2687, file: !2688, line: 160, type: !31)
!2702 = !DILocation(line: 160, column: 41, scope: !2687, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 226, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2669, file: !172, line: 226, column: 7)
!2705 = !DILocation(line: 160, column: 120, scope: !2687, inlinedAt: !2703)
!2706 = !DILocation(line: 160, column: 130, scope: !2687, inlinedAt: !2703)
!2707 = !DILocation(line: 162, column: 7, scope: !2708, inlinedAt: !2703)
!2708 = !DILexicalBlockFile(scope: !2709, file: !2688, discriminator: 1)
!2709 = distinct !DILexicalBlock(scope: !2687, file: !2688, line: 162, column: 7)
!2710 = !DILocalVariable(name: "s2", arg: 2, scope: !2711, file: !2688, line: 146, type: !29)
!2711 = distinct !DISubprogram(name: "strcaseeq1", scope: !2688, file: !2688, line: 146, type: !2712, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!69, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31}
!2714 = !{!2715, !2710, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2715 = !DILocalVariable(name: "s1", arg: 1, scope: !2711, file: !2688, line: 146, type: !29)
!2716 = !DILocalVariable(name: "s21", arg: 3, scope: !2711, file: !2688, line: 146, type: !31)
!2717 = !DILocalVariable(name: "s22", arg: 4, scope: !2711, file: !2688, line: 146, type: !31)
!2718 = !DILocalVariable(name: "s23", arg: 5, scope: !2711, file: !2688, line: 146, type: !31)
!2719 = !DILocalVariable(name: "s24", arg: 6, scope: !2711, file: !2688, line: 146, type: !31)
!2720 = !DILocalVariable(name: "s25", arg: 7, scope: !2711, file: !2688, line: 146, type: !31)
!2721 = !DILocalVariable(name: "s26", arg: 8, scope: !2711, file: !2688, line: 146, type: !31)
!2722 = !DILocalVariable(name: "s27", arg: 9, scope: !2711, file: !2688, line: 146, type: !31)
!2723 = !DILocalVariable(name: "s28", arg: 10, scope: !2711, file: !2688, line: 146, type: !31)
!2724 = !DILocation(line: 146, column: 41, scope: !2711, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 167, column: 16, scope: !2726, inlinedAt: !2703)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !2688, line: 164, column: 11)
!2727 = distinct !DILexicalBlock(scope: !2709, file: !2688, line: 163, column: 5)
!2728 = !DILocation(line: 146, column: 110, scope: !2711, inlinedAt: !2725)
!2729 = !DILocation(line: 146, column: 120, scope: !2711, inlinedAt: !2725)
!2730 = !DILocation(line: 148, column: 7, scope: !2731, inlinedAt: !2725)
!2731 = !DILexicalBlockFile(scope: !2732, file: !2688, discriminator: 1)
!2732 = distinct !DILexicalBlock(scope: !2711, file: !2688, line: 148, column: 7)
!2733 = !DILocalVariable(name: "s2", arg: 2, scope: !2734, file: !2688, line: 132, type: !29)
!2734 = distinct !DISubprogram(name: "strcaseeq2", scope: !2688, file: !2688, line: 132, type: !2735, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!69, !29, !29, !31, !31, !31, !31, !31, !31, !31}
!2737 = !{!2738, !2733, !2739, !2740, !2741, !2742, !2743, !2744, !2745}
!2738 = !DILocalVariable(name: "s1", arg: 1, scope: !2734, file: !2688, line: 132, type: !29)
!2739 = !DILocalVariable(name: "s22", arg: 3, scope: !2734, file: !2688, line: 132, type: !31)
!2740 = !DILocalVariable(name: "s23", arg: 4, scope: !2734, file: !2688, line: 132, type: !31)
!2741 = !DILocalVariable(name: "s24", arg: 5, scope: !2734, file: !2688, line: 132, type: !31)
!2742 = !DILocalVariable(name: "s25", arg: 6, scope: !2734, file: !2688, line: 132, type: !31)
!2743 = !DILocalVariable(name: "s26", arg: 7, scope: !2734, file: !2688, line: 132, type: !31)
!2744 = !DILocalVariable(name: "s27", arg: 8, scope: !2734, file: !2688, line: 132, type: !31)
!2745 = !DILocalVariable(name: "s28", arg: 9, scope: !2734, file: !2688, line: 132, type: !31)
!2746 = !DILocation(line: 132, column: 41, scope: !2734, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 153, column: 16, scope: !2748, inlinedAt: !2725)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !2688, line: 150, column: 11)
!2749 = distinct !DILexicalBlock(scope: !2732, file: !2688, line: 149, column: 5)
!2750 = !DILocation(line: 132, column: 100, scope: !2734, inlinedAt: !2747)
!2751 = !DILocation(line: 132, column: 110, scope: !2734, inlinedAt: !2747)
!2752 = !DILocation(line: 134, column: 7, scope: !2753, inlinedAt: !2747)
!2753 = !DILexicalBlockFile(scope: !2754, file: !2688, discriminator: 1)
!2754 = distinct !DILexicalBlock(scope: !2734, file: !2688, line: 134, column: 7)
!2755 = !DILocalVariable(name: "s2", arg: 2, scope: !2756, file: !2688, line: 118, type: !29)
!2756 = distinct !DISubprogram(name: "strcaseeq3", scope: !2688, file: !2688, line: 118, type: !2757, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!69, !29, !29, !31, !31, !31, !31, !31, !31}
!2759 = !{!2760, !2755, !2761, !2762, !2763, !2764, !2765, !2766}
!2760 = !DILocalVariable(name: "s1", arg: 1, scope: !2756, file: !2688, line: 118, type: !29)
!2761 = !DILocalVariable(name: "s23", arg: 3, scope: !2756, file: !2688, line: 118, type: !31)
!2762 = !DILocalVariable(name: "s24", arg: 4, scope: !2756, file: !2688, line: 118, type: !31)
!2763 = !DILocalVariable(name: "s25", arg: 5, scope: !2756, file: !2688, line: 118, type: !31)
!2764 = !DILocalVariable(name: "s26", arg: 6, scope: !2756, file: !2688, line: 118, type: !31)
!2765 = !DILocalVariable(name: "s27", arg: 7, scope: !2756, file: !2688, line: 118, type: !31)
!2766 = !DILocalVariable(name: "s28", arg: 8, scope: !2756, file: !2688, line: 118, type: !31)
!2767 = !DILocation(line: 118, column: 41, scope: !2756, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 139, column: 16, scope: !2769, inlinedAt: !2747)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !2688, line: 136, column: 11)
!2770 = distinct !DILexicalBlock(scope: !2754, file: !2688, line: 135, column: 5)
!2771 = !DILocation(line: 118, column: 90, scope: !2756, inlinedAt: !2768)
!2772 = !DILocation(line: 118, column: 100, scope: !2756, inlinedAt: !2768)
!2773 = !DILocation(line: 120, column: 7, scope: !2774, inlinedAt: !2768)
!2774 = !DILexicalBlockFile(scope: !2775, file: !2688, discriminator: 2)
!2775 = distinct !DILexicalBlock(scope: !2756, file: !2688, line: 120, column: 7)
!2776 = !DILocation(line: 120, column: 7, scope: !2777, inlinedAt: !2768)
!2777 = !DILexicalBlockFile(scope: !2756, file: !2688, discriminator: 2)
!2778 = !DILocalVariable(name: "s2", arg: 2, scope: !2779, file: !2688, line: 104, type: !29)
!2779 = distinct !DISubprogram(name: "strcaseeq4", scope: !2688, file: !2688, line: 104, type: !2780, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!69, !29, !29, !31, !31, !31, !31, !31}
!2782 = !{!2783, !2778, !2784, !2785, !2786, !2787, !2788}
!2783 = !DILocalVariable(name: "s1", arg: 1, scope: !2779, file: !2688, line: 104, type: !29)
!2784 = !DILocalVariable(name: "s24", arg: 3, scope: !2779, file: !2688, line: 104, type: !31)
!2785 = !DILocalVariable(name: "s25", arg: 4, scope: !2779, file: !2688, line: 104, type: !31)
!2786 = !DILocalVariable(name: "s26", arg: 5, scope: !2779, file: !2688, line: 104, type: !31)
!2787 = !DILocalVariable(name: "s27", arg: 6, scope: !2779, file: !2688, line: 104, type: !31)
!2788 = !DILocalVariable(name: "s28", arg: 7, scope: !2779, file: !2688, line: 104, type: !31)
!2789 = !DILocation(line: 104, column: 41, scope: !2779, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 125, column: 16, scope: !2791, inlinedAt: !2768)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !2688, line: 122, column: 11)
!2792 = distinct !DILexicalBlock(scope: !2775, file: !2688, line: 121, column: 5)
!2793 = !DILocation(line: 104, column: 80, scope: !2779, inlinedAt: !2790)
!2794 = !DILocation(line: 104, column: 90, scope: !2779, inlinedAt: !2790)
!2795 = !DILocation(line: 106, column: 7, scope: !2796, inlinedAt: !2790)
!2796 = !DILexicalBlockFile(scope: !2797, file: !2688, discriminator: 2)
!2797 = distinct !DILexicalBlock(scope: !2779, file: !2688, line: 106, column: 7)
!2798 = !DILocation(line: 106, column: 7, scope: !2799, inlinedAt: !2790)
!2799 = !DILexicalBlockFile(scope: !2779, file: !2688, discriminator: 2)
!2800 = !DILocalVariable(name: "s2", arg: 2, scope: !2801, file: !2688, line: 90, type: !29)
!2801 = distinct !DISubprogram(name: "strcaseeq5", scope: !2688, file: !2688, line: 90, type: !2802, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!69, !29, !29, !31, !31, !31, !31}
!2804 = !{!2805, !2800, !2806, !2807, !2808, !2809}
!2805 = !DILocalVariable(name: "s1", arg: 1, scope: !2801, file: !2688, line: 90, type: !29)
!2806 = !DILocalVariable(name: "s25", arg: 3, scope: !2801, file: !2688, line: 90, type: !31)
!2807 = !DILocalVariable(name: "s26", arg: 4, scope: !2801, file: !2688, line: 90, type: !31)
!2808 = !DILocalVariable(name: "s27", arg: 5, scope: !2801, file: !2688, line: 90, type: !31)
!2809 = !DILocalVariable(name: "s28", arg: 6, scope: !2801, file: !2688, line: 90, type: !31)
!2810 = !DILocation(line: 90, column: 41, scope: !2801, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 111, column: 16, scope: !2812, inlinedAt: !2790)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !2688, line: 108, column: 11)
!2813 = distinct !DILexicalBlock(scope: !2797, file: !2688, line: 107, column: 5)
!2814 = !DILocation(line: 90, column: 70, scope: !2801, inlinedAt: !2811)
!2815 = !DILocation(line: 90, column: 80, scope: !2801, inlinedAt: !2811)
!2816 = !DILocation(line: 92, column: 7, scope: !2817, inlinedAt: !2811)
!2817 = !DILexicalBlockFile(scope: !2818, file: !2688, discriminator: 2)
!2818 = distinct !DILexicalBlock(scope: !2801, file: !2688, line: 92, column: 7)
!2819 = !DILocation(line: 92, column: 7, scope: !2820, inlinedAt: !2811)
!2820 = !DILexicalBlockFile(scope: !2801, file: !2688, discriminator: 2)
!2821 = !DILocation(line: 227, column: 12, scope: !2704)
!2822 = !DILocation(line: 227, column: 21, scope: !2704)
!2823 = !DILocation(line: 227, column: 5, scope: !2704)
!2824 = !DILocation(line: 146, column: 41, scope: !2711, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 167, column: 16, scope: !2726, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 228, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2669, file: !172, line: 228, column: 7)
!2828 = !DILocation(line: 146, column: 110, scope: !2711, inlinedAt: !2825)
!2829 = !DILocation(line: 146, column: 120, scope: !2711, inlinedAt: !2825)
!2830 = !DILocation(line: 148, column: 7, scope: !2731, inlinedAt: !2825)
!2831 = !DILocation(line: 132, column: 41, scope: !2734, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 153, column: 16, scope: !2748, inlinedAt: !2825)
!2833 = !DILocation(line: 132, column: 100, scope: !2734, inlinedAt: !2832)
!2834 = !DILocation(line: 132, column: 110, scope: !2734, inlinedAt: !2832)
!2835 = !DILocation(line: 134, column: 7, scope: !2836, inlinedAt: !2832)
!2836 = !DILexicalBlockFile(scope: !2754, file: !2688, discriminator: 2)
!2837 = !DILocation(line: 134, column: 7, scope: !2838, inlinedAt: !2832)
!2838 = !DILexicalBlockFile(scope: !2734, file: !2688, discriminator: 2)
!2839 = !DILocation(line: 118, column: 41, scope: !2756, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 139, column: 16, scope: !2769, inlinedAt: !2832)
!2841 = !DILocation(line: 118, column: 90, scope: !2756, inlinedAt: !2840)
!2842 = !DILocation(line: 118, column: 100, scope: !2756, inlinedAt: !2840)
!2843 = !DILocation(line: 120, column: 7, scope: !2774, inlinedAt: !2840)
!2844 = !DILocation(line: 120, column: 7, scope: !2777, inlinedAt: !2840)
!2845 = !DILocation(line: 104, column: 41, scope: !2779, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 125, column: 16, scope: !2791, inlinedAt: !2840)
!2847 = !DILocation(line: 104, column: 80, scope: !2779, inlinedAt: !2846)
!2848 = !DILocation(line: 104, column: 90, scope: !2779, inlinedAt: !2846)
!2849 = !DILocation(line: 106, column: 7, scope: !2796, inlinedAt: !2846)
!2850 = !DILocation(line: 106, column: 7, scope: !2799, inlinedAt: !2846)
!2851 = !DILocation(line: 90, column: 41, scope: !2801, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 111, column: 16, scope: !2812, inlinedAt: !2846)
!2853 = !DILocation(line: 90, column: 70, scope: !2801, inlinedAt: !2852)
!2854 = !DILocation(line: 90, column: 80, scope: !2801, inlinedAt: !2852)
!2855 = !DILocation(line: 92, column: 7, scope: !2817, inlinedAt: !2852)
!2856 = !DILocation(line: 92, column: 7, scope: !2820, inlinedAt: !2852)
!2857 = !DILocalVariable(name: "s2", arg: 2, scope: !2858, file: !2688, line: 76, type: !29)
!2858 = distinct !DISubprogram(name: "strcaseeq6", scope: !2688, file: !2688, line: 76, type: !2859, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!69, !29, !29, !31, !31, !31}
!2861 = !{!2862, !2857, !2863, !2864, !2865}
!2862 = !DILocalVariable(name: "s1", arg: 1, scope: !2858, file: !2688, line: 76, type: !29)
!2863 = !DILocalVariable(name: "s26", arg: 3, scope: !2858, file: !2688, line: 76, type: !31)
!2864 = !DILocalVariable(name: "s27", arg: 4, scope: !2858, file: !2688, line: 76, type: !31)
!2865 = !DILocalVariable(name: "s28", arg: 5, scope: !2858, file: !2688, line: 76, type: !31)
!2866 = !DILocation(line: 76, column: 41, scope: !2858, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 97, column: 16, scope: !2868, inlinedAt: !2852)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !2688, line: 94, column: 11)
!2869 = distinct !DILexicalBlock(scope: !2818, file: !2688, line: 93, column: 5)
!2870 = !DILocation(line: 76, column: 60, scope: !2858, inlinedAt: !2867)
!2871 = !DILocation(line: 76, column: 70, scope: !2858, inlinedAt: !2867)
!2872 = !DILocation(line: 78, column: 7, scope: !2873, inlinedAt: !2867)
!2873 = !DILexicalBlockFile(scope: !2874, file: !2688, discriminator: 2)
!2874 = distinct !DILexicalBlock(scope: !2858, file: !2688, line: 78, column: 7)
!2875 = !DILocation(line: 78, column: 7, scope: !2876, inlinedAt: !2867)
!2876 = !DILexicalBlockFile(scope: !2858, file: !2688, discriminator: 2)
!2877 = !DILocalVariable(name: "s2", arg: 2, scope: !2878, file: !2688, line: 62, type: !29)
!2878 = distinct !DISubprogram(name: "strcaseeq7", scope: !2688, file: !2688, line: 62, type: !2879, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!69, !29, !29, !31, !31}
!2881 = !{!2882, !2877, !2883, !2884}
!2882 = !DILocalVariable(name: "s1", arg: 1, scope: !2878, file: !2688, line: 62, type: !29)
!2883 = !DILocalVariable(name: "s27", arg: 3, scope: !2878, file: !2688, line: 62, type: !31)
!2884 = !DILocalVariable(name: "s28", arg: 4, scope: !2878, file: !2688, line: 62, type: !31)
!2885 = !DILocation(line: 62, column: 41, scope: !2878, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 83, column: 16, scope: !2887, inlinedAt: !2867)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !2688, line: 80, column: 11)
!2888 = distinct !DILexicalBlock(scope: !2874, file: !2688, line: 79, column: 5)
!2889 = !DILocation(line: 62, column: 50, scope: !2878, inlinedAt: !2886)
!2890 = !DILocation(line: 62, column: 60, scope: !2878, inlinedAt: !2886)
!2891 = !DILocation(line: 64, column: 7, scope: !2892, inlinedAt: !2886)
!2892 = !DILexicalBlockFile(scope: !2893, file: !2688, discriminator: 2)
!2893 = distinct !DILexicalBlock(scope: !2878, file: !2688, line: 64, column: 7)
!2894 = !DILocation(line: 228, column: 7, scope: !2669)
!2895 = !DILocation(line: 229, column: 12, scope: !2827)
!2896 = !DILocation(line: 229, column: 21, scope: !2827)
!2897 = !DILocation(line: 229, column: 5, scope: !2827)
!2898 = !DILocation(line: 231, column: 13, scope: !2669)
!2899 = !DILocation(line: 231, column: 11, scope: !2669)
!2900 = !DILocation(line: 231, column: 3, scope: !2669)
!2901 = !DILocation(line: 232, column: 1, scope: !2669)
!2902 = distinct !DISubprogram(name: "quotearg_alloc", scope: !172, file: !172, line: 791, type: !2903, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!139, !29, !33, !1743}
!2905 = !{!2906, !2907, !2908}
!2906 = !DILocalVariable(name: "arg", arg: 1, scope: !2902, file: !172, line: 791, type: !29)
!2907 = !DILocalVariable(name: "argsize", arg: 2, scope: !2902, file: !172, line: 791, type: !33)
!2908 = !DILocalVariable(name: "o", arg: 3, scope: !2902, file: !172, line: 792, type: !1743)
!2909 = !DILocation(line: 791, column: 29, scope: !2902)
!2910 = !DILocation(line: 791, column: 41, scope: !2902)
!2911 = !DILocation(line: 792, column: 47, scope: !2902)
!2912 = !DILocalVariable(name: "arg", arg: 1, scope: !2913, file: !172, line: 804, type: !29)
!2913 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !172, file: !172, line: 804, type: !2914, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!139, !29, !33, !586, !1743}
!2916 = !{!2912, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924}
!2917 = !DILocalVariable(name: "argsize", arg: 2, scope: !2913, file: !172, line: 804, type: !33)
!2918 = !DILocalVariable(name: "size", arg: 3, scope: !2913, file: !172, line: 804, type: !586)
!2919 = !DILocalVariable(name: "o", arg: 4, scope: !2913, file: !172, line: 805, type: !1743)
!2920 = !DILocalVariable(name: "p", scope: !2913, file: !172, line: 807, type: !1743)
!2921 = !DILocalVariable(name: "e", scope: !2913, file: !172, line: 808, type: !69)
!2922 = !DILocalVariable(name: "flags", scope: !2913, file: !172, line: 810, type: !69)
!2923 = !DILocalVariable(name: "bufsize", scope: !2913, file: !172, line: 811, type: !33)
!2924 = !DILocalVariable(name: "buf", scope: !2913, file: !172, line: 815, type: !139)
!2925 = !DILocation(line: 804, column: 33, scope: !2913, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 794, column: 10, scope: !2902)
!2927 = !DILocation(line: 804, column: 45, scope: !2913, inlinedAt: !2926)
!2928 = !DILocation(line: 804, column: 62, scope: !2913, inlinedAt: !2926)
!2929 = !DILocation(line: 805, column: 51, scope: !2913, inlinedAt: !2926)
!2930 = !DILocation(line: 807, column: 37, scope: !2913, inlinedAt: !2926)
!2931 = !DILocation(line: 807, column: 33, scope: !2913, inlinedAt: !2926)
!2932 = !DILocation(line: 808, column: 11, scope: !2913, inlinedAt: !2926)
!2933 = !DILocation(line: 808, column: 7, scope: !2913, inlinedAt: !2926)
!2934 = !DILocation(line: 810, column: 18, scope: !2913, inlinedAt: !2926)
!2935 = !DILocation(line: 810, column: 24, scope: !2913, inlinedAt: !2926)
!2936 = !DILocation(line: 810, column: 7, scope: !2913, inlinedAt: !2926)
!2937 = !DILocation(line: 811, column: 69, scope: !2913, inlinedAt: !2926)
!2938 = !DILocation(line: 812, column: 53, scope: !2913, inlinedAt: !2926)
!2939 = !DILocation(line: 813, column: 49, scope: !2913, inlinedAt: !2926)
!2940 = !DILocation(line: 814, column: 49, scope: !2913, inlinedAt: !2926)
!2941 = !DILocation(line: 811, column: 20, scope: !2913, inlinedAt: !2926)
!2942 = !DILocation(line: 814, column: 62, scope: !2913, inlinedAt: !2926)
!2943 = !DILocation(line: 811, column: 10, scope: !2913, inlinedAt: !2926)
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2945, file: !582, line: 220, type: !33)
!2945 = distinct !DISubprogram(name: "xcharalloc", scope: !582, file: !582, line: 220, type: !2946, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!139, !33}
!2948 = !{!2944}
!2949 = !DILocation(line: 220, column: 20, scope: !2945, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 815, column: 15, scope: !2913, inlinedAt: !2926)
!2951 = !DILocation(line: 222, column: 10, scope: !2945, inlinedAt: !2950)
!2952 = !DILocation(line: 815, column: 9, scope: !2913, inlinedAt: !2926)
!2953 = !DILocation(line: 816, column: 60, scope: !2913, inlinedAt: !2926)
!2954 = !DILocation(line: 818, column: 32, scope: !2913, inlinedAt: !2926)
!2955 = !DILocation(line: 818, column: 47, scope: !2913, inlinedAt: !2926)
!2956 = !DILocation(line: 816, column: 3, scope: !2913, inlinedAt: !2926)
!2957 = !DILocation(line: 819, column: 9, scope: !2913, inlinedAt: !2926)
!2958 = !DILocation(line: 794, column: 3, scope: !2902)
!2959 = !DILocation(line: 804, column: 33, scope: !2913)
!2960 = !DILocation(line: 804, column: 45, scope: !2913)
!2961 = !DILocation(line: 804, column: 62, scope: !2913)
!2962 = !DILocation(line: 805, column: 51, scope: !2913)
!2963 = !DILocation(line: 807, column: 37, scope: !2913)
!2964 = !DILocation(line: 807, column: 33, scope: !2913)
!2965 = !DILocation(line: 808, column: 11, scope: !2913)
!2966 = !DILocation(line: 808, column: 7, scope: !2913)
!2967 = !DILocation(line: 810, column: 18, scope: !2913)
!2968 = !DILocation(line: 810, column: 27, scope: !2913)
!2969 = !DILocation(line: 810, column: 24, scope: !2913)
!2970 = !DILocation(line: 810, column: 7, scope: !2913)
!2971 = !DILocation(line: 811, column: 69, scope: !2913)
!2972 = !DILocation(line: 812, column: 53, scope: !2913)
!2973 = !DILocation(line: 813, column: 49, scope: !2913)
!2974 = !DILocation(line: 814, column: 49, scope: !2913)
!2975 = !DILocation(line: 811, column: 20, scope: !2913)
!2976 = !DILocation(line: 814, column: 62, scope: !2913)
!2977 = !DILocation(line: 811, column: 10, scope: !2913)
!2978 = !DILocation(line: 220, column: 20, scope: !2945, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 815, column: 15, scope: !2913)
!2980 = !DILocation(line: 222, column: 10, scope: !2945, inlinedAt: !2979)
!2981 = !DILocation(line: 815, column: 9, scope: !2913)
!2982 = !DILocation(line: 816, column: 60, scope: !2913)
!2983 = !DILocation(line: 818, column: 32, scope: !2913)
!2984 = !DILocation(line: 818, column: 47, scope: !2913)
!2985 = !DILocation(line: 816, column: 3, scope: !2913)
!2986 = !DILocation(line: 819, column: 9, scope: !2913)
!2987 = !DILocation(line: 820, column: 7, scope: !2913)
!2988 = !DILocation(line: 821, column: 11, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2913, file: !172, line: 820, column: 7)
!2990 = !DILocation(line: 821, column: 5, scope: !2989)
!2991 = !DILocation(line: 822, column: 3, scope: !2913)
!2992 = distinct !DISubprogram(name: "quotearg_free", scope: !172, file: !172, line: 840, type: !666, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2993)
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "sv", scope: !2992, file: !172, line: 842, type: !199)
!2995 = !DILocalVariable(name: "i", scope: !2992, file: !172, line: 843, type: !69)
!2996 = !DILocation(line: 842, column: 24, scope: !2992)
!2997 = !DILocation(line: 842, column: 19, scope: !2992)
!2998 = !DILocation(line: 843, column: 7, scope: !2992)
!2999 = !DILocation(line: 844, column: 19, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !3001, file: !172, discriminator: 1)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !172, line: 844, column: 3)
!3002 = distinct !DILexicalBlock(scope: !2992, file: !172, line: 844, column: 3)
!3003 = !DILocation(line: 844, column: 17, scope: !3000)
!3004 = !DILocation(line: 844, column: 3, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3002, file: !172, discriminator: 1)
!3006 = !DILocation(line: 845, column: 17, scope: !3001)
!3007 = !{!3008, !653, i64 8}
!3008 = !{!"slotvec", !841, i64 0, !653, i64 8}
!3009 = !DILocation(line: 845, column: 5, scope: !3001)
!3010 = !DILocation(line: 844, column: 28, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !3001, file: !172, discriminator: 2)
!3012 = distinct !{!3012, !3013, !3014}
!3013 = !DILocation(line: 844, column: 3, scope: !3002)
!3014 = !DILocation(line: 845, column: 20, scope: !3002)
!3015 = !DILocation(line: 846, column: 13, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2992, file: !172, line: 846, column: 7)
!3017 = !DILocation(line: 846, column: 17, scope: !3016)
!3018 = !DILocation(line: 846, column: 7, scope: !2992)
!3019 = !DILocation(line: 848, column: 7, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3016, file: !172, line: 847, column: 5)
!3021 = !DILocation(line: 849, column: 21, scope: !3020)
!3022 = !{!3008, !841, i64 0}
!3023 = !DILocation(line: 850, column: 20, scope: !3020)
!3024 = !DILocation(line: 851, column: 5, scope: !3020)
!3025 = !DILocation(line: 852, column: 10, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2992, file: !172, line: 852, column: 7)
!3027 = !DILocation(line: 852, column: 7, scope: !2992)
!3028 = !DILocation(line: 854, column: 13, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3026, file: !172, line: 853, column: 5)
!3030 = !DILocation(line: 854, column: 7, scope: !3029)
!3031 = !DILocation(line: 855, column: 15, scope: !3029)
!3032 = !DILocation(line: 856, column: 5, scope: !3029)
!3033 = !DILocation(line: 857, column: 10, scope: !2992)
!3034 = !DILocation(line: 858, column: 1, scope: !2992)
!3035 = distinct !DISubprogram(name: "quotearg_n", scope: !172, file: !172, line: 922, type: !3036, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!139, !69, !29}
!3038 = !{!3039, !3040}
!3039 = !DILocalVariable(name: "n", arg: 1, scope: !3035, file: !172, line: 922, type: !69)
!3040 = !DILocalVariable(name: "arg", arg: 2, scope: !3035, file: !172, line: 922, type: !29)
!3041 = !DILocation(line: 922, column: 17, scope: !3035)
!3042 = !DILocation(line: 922, column: 32, scope: !3035)
!3043 = !DILocation(line: 924, column: 10, scope: !3035)
!3044 = !DILocation(line: 924, column: 3, scope: !3035)
!3045 = distinct !DISubprogram(name: "quotearg_n_options", scope: !172, file: !172, line: 869, type: !3046, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!139, !69, !29, !33, !1743}
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3055, !3058, !3060, !3061, !3062}
!3049 = !DILocalVariable(name: "n", arg: 1, scope: !3045, file: !172, line: 869, type: !69)
!3050 = !DILocalVariable(name: "arg", arg: 2, scope: !3045, file: !172, line: 869, type: !29)
!3051 = !DILocalVariable(name: "argsize", arg: 3, scope: !3045, file: !172, line: 869, type: !33)
!3052 = !DILocalVariable(name: "options", arg: 4, scope: !3045, file: !172, line: 870, type: !1743)
!3053 = !DILocalVariable(name: "e", scope: !3045, file: !172, line: 872, type: !69)
!3054 = !DILocalVariable(name: "sv", scope: !3045, file: !172, line: 874, type: !199)
!3055 = !DILocalVariable(name: "preallocated", scope: !3056, file: !172, line: 881, type: !108)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !172, line: 880, column: 5)
!3057 = distinct !DILexicalBlock(scope: !3045, file: !172, line: 879, column: 7)
!3058 = !DILocalVariable(name: "size", scope: !3059, file: !172, line: 894, type: !33)
!3059 = distinct !DILexicalBlock(scope: !3045, file: !172, line: 893, column: 3)
!3060 = !DILocalVariable(name: "val", scope: !3059, file: !172, line: 895, type: !139)
!3061 = !DILocalVariable(name: "flags", scope: !3059, file: !172, line: 897, type: !69)
!3062 = !DILocalVariable(name: "qsize", scope: !3059, file: !172, line: 898, type: !33)
!3063 = !DILocation(line: 869, column: 25, scope: !3045)
!3064 = !DILocation(line: 869, column: 40, scope: !3045)
!3065 = !DILocation(line: 869, column: 52, scope: !3045)
!3066 = !DILocation(line: 870, column: 51, scope: !3045)
!3067 = !DILocation(line: 872, column: 11, scope: !3045)
!3068 = !DILocation(line: 872, column: 7, scope: !3045)
!3069 = !DILocation(line: 874, column: 24, scope: !3045)
!3070 = !DILocation(line: 874, column: 19, scope: !3045)
!3071 = !DILocation(line: 876, column: 9, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3045, file: !172, line: 876, column: 7)
!3073 = !DILocation(line: 876, column: 7, scope: !3045)
!3074 = !DILocation(line: 877, column: 5, scope: !3072)
!3075 = !DILocation(line: 879, column: 7, scope: !3057)
!3076 = !DILocation(line: 879, column: 14, scope: !3057)
!3077 = !DILocation(line: 879, column: 7, scope: !3045)
!3078 = !DILocation(line: 881, column: 31, scope: !3056)
!3079 = !DILocation(line: 883, column: 67, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3056, file: !172, line: 883, column: 11)
!3081 = !DILocation(line: 883, column: 11, scope: !3056)
!3082 = !DILocation(line: 884, column: 9, scope: !3080)
!3083 = !DILocation(line: 886, column: 32, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3056, file: !172, discriminator: 3)
!3085 = !DILocation(line: 886, column: 61, scope: !3084)
!3086 = !DILocation(line: 886, column: 58, scope: !3084)
!3087 = !DILocation(line: 886, column: 66, scope: !3084)
!3088 = !DILocation(line: 886, column: 22, scope: !3084)
!3089 = !DILocation(line: 886, column: 15, scope: !3084)
!3090 = !DILocation(line: 887, column: 11, scope: !3056)
!3091 = !DILocation(line: 888, column: 15, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3056, file: !172, line: 887, column: 11)
!3093 = !{i64 0, i64 8, !1102, i64 8, i64 8, !652}
!3094 = !DILocation(line: 888, column: 9, scope: !3092)
!3095 = !DILocation(line: 889, column: 20, scope: !3056)
!3096 = !DILocation(line: 889, column: 18, scope: !3056)
!3097 = !DILocation(line: 889, column: 7, scope: !3056)
!3098 = !DILocation(line: 889, column: 38, scope: !3056)
!3099 = !DILocation(line: 889, column: 31, scope: !3056)
!3100 = !DILocation(line: 889, column: 48, scope: !3056)
!3101 = !DILocation(line: 890, column: 14, scope: !3056)
!3102 = !DILocation(line: 891, column: 5, scope: !3056)
!3103 = !DILocation(line: 894, column: 19, scope: !3059)
!3104 = !DILocation(line: 894, column: 25, scope: !3059)
!3105 = !DILocation(line: 894, column: 12, scope: !3059)
!3106 = !DILocation(line: 895, column: 23, scope: !3059)
!3107 = !DILocation(line: 895, column: 11, scope: !3059)
!3108 = !DILocation(line: 897, column: 26, scope: !3059)
!3109 = !DILocation(line: 897, column: 32, scope: !3059)
!3110 = !DILocation(line: 897, column: 9, scope: !3059)
!3111 = !DILocation(line: 899, column: 55, scope: !3059)
!3112 = !DILocation(line: 900, column: 46, scope: !3059)
!3113 = !DILocation(line: 901, column: 55, scope: !3059)
!3114 = !DILocation(line: 902, column: 55, scope: !3059)
!3115 = !DILocation(line: 898, column: 20, scope: !3059)
!3116 = !DILocation(line: 898, column: 12, scope: !3059)
!3117 = !DILocation(line: 904, column: 14, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3059, file: !172, line: 904, column: 9)
!3119 = !DILocation(line: 904, column: 9, scope: !3059)
!3120 = !DILocation(line: 906, column: 35, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3118, file: !172, line: 905, column: 7)
!3122 = !DILocation(line: 906, column: 20, scope: !3121)
!3123 = !DILocation(line: 907, column: 17, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !172, line: 907, column: 13)
!3125 = !DILocation(line: 907, column: 13, scope: !3121)
!3126 = !DILocation(line: 908, column: 11, scope: !3124)
!3127 = !DILocation(line: 220, column: 20, scope: !2945, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 909, column: 27, scope: !3121)
!3129 = !DILocation(line: 222, column: 10, scope: !2945, inlinedAt: !3128)
!3130 = !DILocation(line: 909, column: 19, scope: !3121)
!3131 = !DILocation(line: 910, column: 69, scope: !3121)
!3132 = !DILocation(line: 912, column: 44, scope: !3121)
!3133 = !DILocation(line: 913, column: 44, scope: !3121)
!3134 = !DILocation(line: 910, column: 9, scope: !3121)
!3135 = !DILocation(line: 914, column: 7, scope: !3121)
!3136 = !DILocation(line: 916, column: 11, scope: !3059)
!3137 = !DILocation(line: 917, column: 5, scope: !3059)
!3138 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !172, file: !172, line: 928, type: !3139, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!139, !69, !29, !33}
!3141 = !{!3142, !3143, !3144}
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3138, file: !172, line: 928, type: !69)
!3143 = !DILocalVariable(name: "arg", arg: 2, scope: !3138, file: !172, line: 928, type: !29)
!3144 = !DILocalVariable(name: "argsize", arg: 3, scope: !3138, file: !172, line: 928, type: !33)
!3145 = !DILocation(line: 928, column: 21, scope: !3138)
!3146 = !DILocation(line: 928, column: 36, scope: !3138)
!3147 = !DILocation(line: 928, column: 48, scope: !3138)
!3148 = !DILocation(line: 930, column: 10, scope: !3138)
!3149 = !DILocation(line: 930, column: 3, scope: !3138)
!3150 = distinct !DISubprogram(name: "quotearg", scope: !172, file: !172, line: 934, type: !3151, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!139, !29}
!3153 = !{!3154}
!3154 = !DILocalVariable(name: "arg", arg: 1, scope: !3150, file: !172, line: 934, type: !29)
!3155 = !DILocation(line: 934, column: 23, scope: !3150)
!3156 = !DILocation(line: 922, column: 17, scope: !3035, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 936, column: 10, scope: !3150)
!3158 = !DILocation(line: 922, column: 32, scope: !3035, inlinedAt: !3157)
!3159 = !DILocation(line: 924, column: 10, scope: !3035, inlinedAt: !3157)
!3160 = !DILocation(line: 936, column: 3, scope: !3150)
!3161 = distinct !DISubprogram(name: "quotearg_mem", scope: !172, file: !172, line: 940, type: !3162, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!139, !29, !33}
!3164 = !{!3165, !3166}
!3165 = !DILocalVariable(name: "arg", arg: 1, scope: !3161, file: !172, line: 940, type: !29)
!3166 = !DILocalVariable(name: "argsize", arg: 2, scope: !3161, file: !172, line: 940, type: !33)
!3167 = !DILocation(line: 940, column: 27, scope: !3161)
!3168 = !DILocation(line: 940, column: 39, scope: !3161)
!3169 = !DILocation(line: 928, column: 21, scope: !3138, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 942, column: 10, scope: !3161)
!3171 = !DILocation(line: 928, column: 36, scope: !3138, inlinedAt: !3170)
!3172 = !DILocation(line: 928, column: 48, scope: !3138, inlinedAt: !3170)
!3173 = !DILocation(line: 930, column: 10, scope: !3138, inlinedAt: !3170)
!3174 = !DILocation(line: 942, column: 3, scope: !3161)
!3175 = distinct !DISubprogram(name: "quotearg_n_style", scope: !172, file: !172, line: 946, type: !3176, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!139, !69, !5, !29}
!3178 = !{!3179, !3180, !3181, !3182}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !172, line: 946, type: !69)
!3180 = !DILocalVariable(name: "s", arg: 2, scope: !3175, file: !172, line: 946, type: !5)
!3181 = !DILocalVariable(name: "arg", arg: 3, scope: !3175, file: !172, line: 946, type: !29)
!3182 = !DILocalVariable(name: "o", scope: !3175, file: !172, line: 948, type: !1744)
!3183 = !DILocalVariable(name: "o", scope: !3184, file: !172, line: 187, type: !179)
!3184 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !172, file: !172, line: 185, type: !3185, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3187)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!179, !5}
!3187 = !{!3188, !3183}
!3188 = !DILocalVariable(name: "style", arg: 1, scope: !3184, file: !172, line: 185, type: !5)
!3189 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3190 = !DILocation(line: 187, column: 26, scope: !3184, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 948, column: 36, scope: !3175)
!3192 = !DILocation(line: 946, column: 23, scope: !3175)
!3193 = !DILocation(line: 946, column: 45, scope: !3175)
!3194 = !DILocation(line: 946, column: 60, scope: !3175)
!3195 = !DILocation(line: 948, column: 3, scope: !3175)
!3196 = !DILocation(line: 948, column: 32, scope: !3175)
!3197 = !DILocation(line: 185, column: 48, scope: !3184, inlinedAt: !3191)
!3198 = !DILocation(line: 187, column: 3, scope: !3184, inlinedAt: !3191)
!3199 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3200 = !DILocation(line: 188, column: 13, scope: !3201, inlinedAt: !3191)
!3201 = distinct !DILexicalBlock(scope: !3184, file: !172, line: 188, column: 7)
!3202 = !DILocation(line: 188, column: 7, scope: !3184, inlinedAt: !3191)
!3203 = !DILocation(line: 189, column: 5, scope: !3201, inlinedAt: !3191)
!3204 = !{!3205}
!3205 = distinct !{!3205, !3206, !"quoting_options_from_style: argument 0"}
!3206 = distinct !{!3206, !"quoting_options_from_style"}
!3207 = !DILocation(line: 191, column: 10, scope: !3184, inlinedAt: !3191)
!3208 = !DILocation(line: 192, column: 1, scope: !3184, inlinedAt: !3191)
!3209 = !DILocation(line: 949, column: 10, scope: !3175)
!3210 = !DILocation(line: 950, column: 1, scope: !3175)
!3211 = !DILocation(line: 949, column: 3, scope: !3175)
!3212 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !172, file: !172, line: 953, type: !3213, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!139, !69, !5, !29, !33}
!3215 = !{!3216, !3217, !3218, !3219, !3220}
!3216 = !DILocalVariable(name: "n", arg: 1, scope: !3212, file: !172, line: 953, type: !69)
!3217 = !DILocalVariable(name: "s", arg: 2, scope: !3212, file: !172, line: 953, type: !5)
!3218 = !DILocalVariable(name: "arg", arg: 3, scope: !3212, file: !172, line: 954, type: !29)
!3219 = !DILocalVariable(name: "argsize", arg: 4, scope: !3212, file: !172, line: 954, type: !33)
!3220 = !DILocalVariable(name: "o", scope: !3212, file: !172, line: 956, type: !1744)
!3221 = !DILocation(line: 187, column: 26, scope: !3184, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 956, column: 36, scope: !3212)
!3223 = !DILocation(line: 953, column: 27, scope: !3212)
!3224 = !DILocation(line: 953, column: 49, scope: !3212)
!3225 = !DILocation(line: 954, column: 35, scope: !3212)
!3226 = !DILocation(line: 954, column: 47, scope: !3212)
!3227 = !DILocation(line: 956, column: 3, scope: !3212)
!3228 = !DILocation(line: 956, column: 32, scope: !3212)
!3229 = !DILocation(line: 185, column: 48, scope: !3184, inlinedAt: !3222)
!3230 = !DILocation(line: 187, column: 3, scope: !3184, inlinedAt: !3222)
!3231 = !DILocation(line: 188, column: 13, scope: !3201, inlinedAt: !3222)
!3232 = !DILocation(line: 188, column: 7, scope: !3184, inlinedAt: !3222)
!3233 = !DILocation(line: 189, column: 5, scope: !3201, inlinedAt: !3222)
!3234 = !{!3235}
!3235 = distinct !{!3235, !3236, !"quoting_options_from_style: argument 0"}
!3236 = distinct !{!3236, !"quoting_options_from_style"}
!3237 = !DILocation(line: 191, column: 10, scope: !3184, inlinedAt: !3222)
!3238 = !DILocation(line: 192, column: 1, scope: !3184, inlinedAt: !3222)
!3239 = !DILocation(line: 957, column: 10, scope: !3212)
!3240 = !DILocation(line: 958, column: 1, scope: !3212)
!3241 = !DILocation(line: 957, column: 3, scope: !3212)
!3242 = distinct !DISubprogram(name: "quotearg_style", scope: !172, file: !172, line: 961, type: !3243, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!139, !5, !29}
!3245 = !{!3246, !3247}
!3246 = !DILocalVariable(name: "s", arg: 1, scope: !3242, file: !172, line: 961, type: !5)
!3247 = !DILocalVariable(name: "arg", arg: 2, scope: !3242, file: !172, line: 961, type: !29)
!3248 = !DILocation(line: 187, column: 26, scope: !3184, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 948, column: 36, scope: !3175, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 963, column: 10, scope: !3242)
!3251 = !DILocation(line: 961, column: 36, scope: !3242)
!3252 = !DILocation(line: 961, column: 51, scope: !3242)
!3253 = !DILocation(line: 946, column: 23, scope: !3175, inlinedAt: !3250)
!3254 = !DILocation(line: 946, column: 45, scope: !3175, inlinedAt: !3250)
!3255 = !DILocation(line: 946, column: 60, scope: !3175, inlinedAt: !3250)
!3256 = !DILocation(line: 948, column: 3, scope: !3175, inlinedAt: !3250)
!3257 = !DILocation(line: 948, column: 32, scope: !3175, inlinedAt: !3250)
!3258 = !DILocation(line: 185, column: 48, scope: !3184, inlinedAt: !3249)
!3259 = !DILocation(line: 187, column: 3, scope: !3184, inlinedAt: !3249)
!3260 = !DILocation(line: 188, column: 13, scope: !3201, inlinedAt: !3249)
!3261 = !DILocation(line: 188, column: 7, scope: !3184, inlinedAt: !3249)
!3262 = !DILocation(line: 189, column: 5, scope: !3201, inlinedAt: !3249)
!3263 = !{!3264}
!3264 = distinct !{!3264, !3265, !"quoting_options_from_style: argument 0"}
!3265 = distinct !{!3265, !"quoting_options_from_style"}
!3266 = !DILocation(line: 191, column: 10, scope: !3184, inlinedAt: !3249)
!3267 = !DILocation(line: 192, column: 1, scope: !3184, inlinedAt: !3249)
!3268 = !DILocation(line: 949, column: 10, scope: !3175, inlinedAt: !3250)
!3269 = !DILocation(line: 950, column: 1, scope: !3175, inlinedAt: !3250)
!3270 = !DILocation(line: 963, column: 3, scope: !3242)
!3271 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !172, file: !172, line: 967, type: !3272, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!139, !5, !29, !33}
!3274 = !{!3275, !3276, !3277}
!3275 = !DILocalVariable(name: "s", arg: 1, scope: !3271, file: !172, line: 967, type: !5)
!3276 = !DILocalVariable(name: "arg", arg: 2, scope: !3271, file: !172, line: 967, type: !29)
!3277 = !DILocalVariable(name: "argsize", arg: 3, scope: !3271, file: !172, line: 967, type: !33)
!3278 = !DILocation(line: 187, column: 26, scope: !3184, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 956, column: 36, scope: !3212, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 969, column: 10, scope: !3271)
!3281 = !DILocation(line: 967, column: 40, scope: !3271)
!3282 = !DILocation(line: 967, column: 55, scope: !3271)
!3283 = !DILocation(line: 967, column: 67, scope: !3271)
!3284 = !DILocation(line: 953, column: 27, scope: !3212, inlinedAt: !3280)
!3285 = !DILocation(line: 953, column: 49, scope: !3212, inlinedAt: !3280)
!3286 = !DILocation(line: 954, column: 35, scope: !3212, inlinedAt: !3280)
!3287 = !DILocation(line: 954, column: 47, scope: !3212, inlinedAt: !3280)
!3288 = !DILocation(line: 956, column: 3, scope: !3212, inlinedAt: !3280)
!3289 = !DILocation(line: 956, column: 32, scope: !3212, inlinedAt: !3280)
!3290 = !DILocation(line: 185, column: 48, scope: !3184, inlinedAt: !3279)
!3291 = !DILocation(line: 187, column: 3, scope: !3184, inlinedAt: !3279)
!3292 = !DILocation(line: 188, column: 13, scope: !3201, inlinedAt: !3279)
!3293 = !DILocation(line: 188, column: 7, scope: !3184, inlinedAt: !3279)
!3294 = !DILocation(line: 189, column: 5, scope: !3201, inlinedAt: !3279)
!3295 = !{!3296}
!3296 = distinct !{!3296, !3297, !"quoting_options_from_style: argument 0"}
!3297 = distinct !{!3297, !"quoting_options_from_style"}
!3298 = !DILocation(line: 191, column: 10, scope: !3184, inlinedAt: !3279)
!3299 = !DILocation(line: 192, column: 1, scope: !3184, inlinedAt: !3279)
!3300 = !DILocation(line: 957, column: 10, scope: !3212, inlinedAt: !3280)
!3301 = !DILocation(line: 958, column: 1, scope: !3212, inlinedAt: !3280)
!3302 = !DILocation(line: 969, column: 3, scope: !3271)
!3303 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !172, file: !172, line: 973, type: !3304, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!139, !29, !33, !31}
!3306 = !{!3307, !3308, !3309, !3310}
!3307 = !DILocalVariable(name: "arg", arg: 1, scope: !3303, file: !172, line: 973, type: !29)
!3308 = !DILocalVariable(name: "argsize", arg: 2, scope: !3303, file: !172, line: 973, type: !33)
!3309 = !DILocalVariable(name: "ch", arg: 3, scope: !3303, file: !172, line: 973, type: !31)
!3310 = !DILocalVariable(name: "options", scope: !3303, file: !172, line: 975, type: !179)
!3311 = !DILocation(line: 973, column: 32, scope: !3303)
!3312 = !DILocation(line: 973, column: 44, scope: !3303)
!3313 = !DILocation(line: 973, column: 58, scope: !3303)
!3314 = !DILocation(line: 975, column: 3, scope: !3303)
!3315 = !DILocation(line: 976, column: 13, scope: !3303)
!3316 = !{i64 0, i64 4, !785, i64 4, i64 4, !725, i64 8, i64 32, !785, i64 40, i64 8, !652, i64 48, i64 8, !652}
!3317 = !DILocation(line: 975, column: 26, scope: !3303)
!3318 = !DILocation(line: 144, column: 43, scope: !1767, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 977, column: 3, scope: !3303)
!3320 = !DILocation(line: 144, column: 51, scope: !1767, inlinedAt: !3319)
!3321 = !DILocation(line: 144, column: 58, scope: !1767, inlinedAt: !3319)
!3322 = !DILocation(line: 146, column: 17, scope: !1767, inlinedAt: !3319)
!3323 = !DILocation(line: 148, column: 62, scope: !1785, inlinedAt: !3319)
!3324 = !DILocation(line: 148, column: 57, scope: !1785, inlinedAt: !3319)
!3325 = !DILocation(line: 147, column: 17, scope: !1767, inlinedAt: !3319)
!3326 = !DILocation(line: 149, column: 18, scope: !1767, inlinedAt: !3319)
!3327 = !DILocation(line: 149, column: 15, scope: !1767, inlinedAt: !3319)
!3328 = !DILocation(line: 149, column: 7, scope: !1767, inlinedAt: !3319)
!3329 = !DILocation(line: 150, column: 12, scope: !1767, inlinedAt: !3319)
!3330 = !DILocation(line: 150, column: 15, scope: !1767, inlinedAt: !3319)
!3331 = !DILocation(line: 150, column: 25, scope: !1767, inlinedAt: !3319)
!3332 = !DILocation(line: 150, column: 7, scope: !1767, inlinedAt: !3319)
!3333 = !DILocation(line: 151, column: 18, scope: !1767, inlinedAt: !3319)
!3334 = !DILocation(line: 151, column: 23, scope: !1767, inlinedAt: !3319)
!3335 = !DILocation(line: 151, column: 6, scope: !1767, inlinedAt: !3319)
!3336 = !DILocation(line: 978, column: 10, scope: !3303)
!3337 = !DILocation(line: 979, column: 1, scope: !3303)
!3338 = !DILocation(line: 978, column: 3, scope: !3303)
!3339 = distinct !DISubprogram(name: "quotearg_char", scope: !172, file: !172, line: 982, type: !3340, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!139, !29, !31}
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "arg", arg: 1, scope: !3339, file: !172, line: 982, type: !29)
!3344 = !DILocalVariable(name: "ch", arg: 2, scope: !3339, file: !172, line: 982, type: !31)
!3345 = !DILocation(line: 982, column: 28, scope: !3339)
!3346 = !DILocation(line: 982, column: 38, scope: !3339)
!3347 = !DILocation(line: 973, column: 32, scope: !3303, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 984, column: 10, scope: !3339)
!3349 = !DILocation(line: 973, column: 44, scope: !3303, inlinedAt: !3348)
!3350 = !DILocation(line: 973, column: 58, scope: !3303, inlinedAt: !3348)
!3351 = !DILocation(line: 975, column: 3, scope: !3303, inlinedAt: !3348)
!3352 = !DILocation(line: 976, column: 13, scope: !3303, inlinedAt: !3348)
!3353 = !DILocation(line: 975, column: 26, scope: !3303, inlinedAt: !3348)
!3354 = !DILocation(line: 144, column: 43, scope: !1767, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 977, column: 3, scope: !3303, inlinedAt: !3348)
!3356 = !DILocation(line: 144, column: 51, scope: !1767, inlinedAt: !3355)
!3357 = !DILocation(line: 144, column: 58, scope: !1767, inlinedAt: !3355)
!3358 = !DILocation(line: 146, column: 17, scope: !1767, inlinedAt: !3355)
!3359 = !DILocation(line: 148, column: 62, scope: !1785, inlinedAt: !3355)
!3360 = !DILocation(line: 148, column: 57, scope: !1785, inlinedAt: !3355)
!3361 = !DILocation(line: 147, column: 17, scope: !1767, inlinedAt: !3355)
!3362 = !DILocation(line: 149, column: 18, scope: !1767, inlinedAt: !3355)
!3363 = !DILocation(line: 149, column: 15, scope: !1767, inlinedAt: !3355)
!3364 = !DILocation(line: 149, column: 7, scope: !1767, inlinedAt: !3355)
!3365 = !DILocation(line: 150, column: 12, scope: !1767, inlinedAt: !3355)
!3366 = !DILocation(line: 150, column: 15, scope: !1767, inlinedAt: !3355)
!3367 = !DILocation(line: 150, column: 25, scope: !1767, inlinedAt: !3355)
!3368 = !DILocation(line: 150, column: 7, scope: !1767, inlinedAt: !3355)
!3369 = !DILocation(line: 151, column: 18, scope: !1767, inlinedAt: !3355)
!3370 = !DILocation(line: 151, column: 23, scope: !1767, inlinedAt: !3355)
!3371 = !DILocation(line: 151, column: 6, scope: !1767, inlinedAt: !3355)
!3372 = !DILocation(line: 978, column: 10, scope: !3303, inlinedAt: !3348)
!3373 = !DILocation(line: 979, column: 1, scope: !3303, inlinedAt: !3348)
!3374 = !DILocation(line: 984, column: 3, scope: !3339)
!3375 = distinct !DISubprogram(name: "quotearg_colon", scope: !172, file: !172, line: 988, type: !3151, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3376)
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "arg", arg: 1, scope: !3375, file: !172, line: 988, type: !29)
!3378 = !DILocation(line: 988, column: 29, scope: !3375)
!3379 = !DILocation(line: 982, column: 28, scope: !3339, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 990, column: 10, scope: !3375)
!3381 = !DILocation(line: 982, column: 38, scope: !3339, inlinedAt: !3380)
!3382 = !DILocation(line: 973, column: 32, scope: !3303, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 984, column: 10, scope: !3339, inlinedAt: !3380)
!3384 = !DILocation(line: 973, column: 44, scope: !3303, inlinedAt: !3383)
!3385 = !DILocation(line: 973, column: 58, scope: !3303, inlinedAt: !3383)
!3386 = !DILocation(line: 975, column: 3, scope: !3303, inlinedAt: !3383)
!3387 = !DILocation(line: 976, column: 13, scope: !3303, inlinedAt: !3383)
!3388 = !DILocation(line: 975, column: 26, scope: !3303, inlinedAt: !3383)
!3389 = !DILocation(line: 144, column: 43, scope: !1767, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 977, column: 3, scope: !3303, inlinedAt: !3383)
!3391 = !DILocation(line: 144, column: 51, scope: !1767, inlinedAt: !3390)
!3392 = !DILocation(line: 144, column: 58, scope: !1767, inlinedAt: !3390)
!3393 = !DILocation(line: 146, column: 17, scope: !1767, inlinedAt: !3390)
!3394 = !DILocation(line: 148, column: 57, scope: !1785, inlinedAt: !3390)
!3395 = !DILocation(line: 147, column: 17, scope: !1767, inlinedAt: !3390)
!3396 = !DILocation(line: 149, column: 7, scope: !1767, inlinedAt: !3390)
!3397 = !DILocation(line: 150, column: 12, scope: !1767, inlinedAt: !3390)
!3398 = !DILocation(line: 151, column: 6, scope: !1767, inlinedAt: !3390)
!3399 = !DILocation(line: 978, column: 10, scope: !3303, inlinedAt: !3383)
!3400 = !DILocation(line: 979, column: 1, scope: !3303, inlinedAt: !3383)
!3401 = !DILocation(line: 990, column: 3, scope: !3375)
!3402 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !172, file: !172, line: 994, type: !3162, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3403)
!3403 = !{!3404, !3405}
!3404 = !DILocalVariable(name: "arg", arg: 1, scope: !3402, file: !172, line: 994, type: !29)
!3405 = !DILocalVariable(name: "argsize", arg: 2, scope: !3402, file: !172, line: 994, type: !33)
!3406 = !DILocation(line: 994, column: 33, scope: !3402)
!3407 = !DILocation(line: 994, column: 45, scope: !3402)
!3408 = !DILocation(line: 973, column: 32, scope: !3303, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 996, column: 10, scope: !3402)
!3410 = !DILocation(line: 973, column: 44, scope: !3303, inlinedAt: !3409)
!3411 = !DILocation(line: 973, column: 58, scope: !3303, inlinedAt: !3409)
!3412 = !DILocation(line: 975, column: 3, scope: !3303, inlinedAt: !3409)
!3413 = !DILocation(line: 976, column: 13, scope: !3303, inlinedAt: !3409)
!3414 = !DILocation(line: 975, column: 26, scope: !3303, inlinedAt: !3409)
!3415 = !DILocation(line: 144, column: 43, scope: !1767, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 977, column: 3, scope: !3303, inlinedAt: !3409)
!3417 = !DILocation(line: 144, column: 51, scope: !1767, inlinedAt: !3416)
!3418 = !DILocation(line: 144, column: 58, scope: !1767, inlinedAt: !3416)
!3419 = !DILocation(line: 146, column: 17, scope: !1767, inlinedAt: !3416)
!3420 = !DILocation(line: 148, column: 57, scope: !1785, inlinedAt: !3416)
!3421 = !DILocation(line: 147, column: 17, scope: !1767, inlinedAt: !3416)
!3422 = !DILocation(line: 149, column: 7, scope: !1767, inlinedAt: !3416)
!3423 = !DILocation(line: 150, column: 12, scope: !1767, inlinedAt: !3416)
!3424 = !DILocation(line: 151, column: 6, scope: !1767, inlinedAt: !3416)
!3425 = !DILocation(line: 978, column: 10, scope: !3303, inlinedAt: !3409)
!3426 = !DILocation(line: 979, column: 1, scope: !3303, inlinedAt: !3409)
!3427 = !DILocation(line: 996, column: 3, scope: !3402)
!3428 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !172, file: !172, line: 1000, type: !3176, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DILocalVariable(name: "n", arg: 1, scope: !3428, file: !172, line: 1000, type: !69)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !172, line: 1000, type: !5)
!3432 = !DILocalVariable(name: "arg", arg: 3, scope: !3428, file: !172, line: 1000, type: !29)
!3433 = !DILocalVariable(name: "options", scope: !3428, file: !172, line: 1002, type: !179)
!3434 = !DILocation(line: 187, column: 26, scope: !3184, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 1003, column: 13, scope: !3428)
!3436 = !DILocation(line: 1000, column: 29, scope: !3428)
!3437 = !DILocation(line: 1000, column: 51, scope: !3428)
!3438 = !DILocation(line: 1000, column: 66, scope: !3428)
!3439 = !DILocation(line: 1002, column: 3, scope: !3428)
!3440 = !DILocation(line: 185, column: 48, scope: !3184, inlinedAt: !3435)
!3441 = !DILocation(line: 187, column: 3, scope: !3184, inlinedAt: !3435)
!3442 = !DILocation(line: 188, column: 13, scope: !3201, inlinedAt: !3435)
!3443 = !DILocation(line: 188, column: 7, scope: !3184, inlinedAt: !3435)
!3444 = !DILocation(line: 189, column: 5, scope: !3201, inlinedAt: !3435)
!3445 = !{!3446}
!3446 = distinct !{!3446, !3447, !"quoting_options_from_style: argument 0"}
!3447 = distinct !{!3447, !"quoting_options_from_style"}
!3448 = !DILocation(line: 191, column: 10, scope: !3184, inlinedAt: !3435)
!3449 = !DILocation(line: 192, column: 1, scope: !3184, inlinedAt: !3435)
!3450 = !DILocation(line: 1003, column: 13, scope: !3428)
!3451 = !DILocation(line: 1002, column: 26, scope: !3428)
!3452 = !DILocation(line: 144, column: 43, scope: !1767, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 1004, column: 3, scope: !3428)
!3454 = !DILocation(line: 144, column: 51, scope: !1767, inlinedAt: !3453)
!3455 = !DILocation(line: 144, column: 58, scope: !1767, inlinedAt: !3453)
!3456 = !DILocation(line: 146, column: 17, scope: !1767, inlinedAt: !3453)
!3457 = !DILocation(line: 148, column: 57, scope: !1785, inlinedAt: !3453)
!3458 = !DILocation(line: 147, column: 17, scope: !1767, inlinedAt: !3453)
!3459 = !DILocation(line: 149, column: 7, scope: !1767, inlinedAt: !3453)
!3460 = !DILocation(line: 150, column: 12, scope: !1767, inlinedAt: !3453)
!3461 = !DILocation(line: 151, column: 6, scope: !1767, inlinedAt: !3453)
!3462 = !DILocation(line: 1005, column: 10, scope: !3428)
!3463 = !DILocation(line: 1006, column: 1, scope: !3428)
!3464 = !DILocation(line: 1005, column: 3, scope: !3428)
!3465 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !172, file: !172, line: 1009, type: !3466, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!139, !69, !29, !29, !29}
!3468 = !{!3469, !3470, !3471, !3472}
!3469 = !DILocalVariable(name: "n", arg: 1, scope: !3465, file: !172, line: 1009, type: !69)
!3470 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3465, file: !172, line: 1009, type: !29)
!3471 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3465, file: !172, line: 1010, type: !29)
!3472 = !DILocalVariable(name: "arg", arg: 4, scope: !3465, file: !172, line: 1010, type: !29)
!3473 = !DILocation(line: 1009, column: 24, scope: !3465)
!3474 = !DILocation(line: 1009, column: 39, scope: !3465)
!3475 = !DILocation(line: 1010, column: 32, scope: !3465)
!3476 = !DILocation(line: 1010, column: 57, scope: !3465)
!3477 = !DILocalVariable(name: "n", arg: 1, scope: !3478, file: !172, line: 1017, type: !69)
!3478 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !172, file: !172, line: 1017, type: !3479, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!139, !69, !29, !29, !29, !33}
!3481 = !{!3477, !3482, !3483, !3484, !3485, !3486}
!3482 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3478, file: !172, line: 1017, type: !29)
!3483 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3478, file: !172, line: 1018, type: !29)
!3484 = !DILocalVariable(name: "arg", arg: 4, scope: !3478, file: !172, line: 1019, type: !29)
!3485 = !DILocalVariable(name: "argsize", arg: 5, scope: !3478, file: !172, line: 1019, type: !33)
!3486 = !DILocalVariable(name: "o", scope: !3478, file: !172, line: 1021, type: !179)
!3487 = !DILocation(line: 1017, column: 28, scope: !3478, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 1012, column: 10, scope: !3465)
!3489 = !DILocation(line: 1017, column: 43, scope: !3478, inlinedAt: !3488)
!3490 = !DILocation(line: 1018, column: 36, scope: !3478, inlinedAt: !3488)
!3491 = !DILocation(line: 1019, column: 36, scope: !3478, inlinedAt: !3488)
!3492 = !DILocation(line: 1019, column: 48, scope: !3478, inlinedAt: !3488)
!3493 = !DILocation(line: 1021, column: 3, scope: !3478, inlinedAt: !3488)
!3494 = !DILocation(line: 1021, column: 30, scope: !3478, inlinedAt: !3488)
!3495 = !DILocation(line: 1021, column: 26, scope: !3478, inlinedAt: !3488)
!3496 = !DILocation(line: 171, column: 45, scope: !1817, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 1022, column: 3, scope: !3478, inlinedAt: !3488)
!3498 = !DILocation(line: 172, column: 33, scope: !1817, inlinedAt: !3497)
!3499 = !DILocation(line: 172, column: 57, scope: !1817, inlinedAt: !3497)
!3500 = !DILocation(line: 176, column: 6, scope: !1817, inlinedAt: !3497)
!3501 = !DILocation(line: 176, column: 12, scope: !1817, inlinedAt: !3497)
!3502 = !DILocation(line: 177, column: 8, scope: !1833, inlinedAt: !3497)
!3503 = !DILocation(line: 177, column: 23, scope: !1835, inlinedAt: !3497)
!3504 = !DILocation(line: 177, column: 19, scope: !1833, inlinedAt: !3497)
!3505 = !DILocation(line: 178, column: 5, scope: !1833, inlinedAt: !3497)
!3506 = !DILocation(line: 179, column: 6, scope: !1817, inlinedAt: !3497)
!3507 = !DILocation(line: 179, column: 17, scope: !1817, inlinedAt: !3497)
!3508 = !DILocation(line: 180, column: 6, scope: !1817, inlinedAt: !3497)
!3509 = !DILocation(line: 180, column: 18, scope: !1817, inlinedAt: !3497)
!3510 = !DILocation(line: 1023, column: 10, scope: !3478, inlinedAt: !3488)
!3511 = !DILocation(line: 1024, column: 1, scope: !3478, inlinedAt: !3488)
!3512 = !DILocation(line: 1012, column: 3, scope: !3465)
!3513 = !DILocation(line: 1017, column: 28, scope: !3478)
!3514 = !DILocation(line: 1017, column: 43, scope: !3478)
!3515 = !DILocation(line: 1018, column: 36, scope: !3478)
!3516 = !DILocation(line: 1019, column: 36, scope: !3478)
!3517 = !DILocation(line: 1019, column: 48, scope: !3478)
!3518 = !DILocation(line: 1021, column: 3, scope: !3478)
!3519 = !DILocation(line: 1021, column: 30, scope: !3478)
!3520 = !DILocation(line: 1021, column: 26, scope: !3478)
!3521 = !DILocation(line: 171, column: 45, scope: !1817, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 1022, column: 3, scope: !3478)
!3523 = !DILocation(line: 172, column: 33, scope: !1817, inlinedAt: !3522)
!3524 = !DILocation(line: 172, column: 57, scope: !1817, inlinedAt: !3522)
!3525 = !DILocation(line: 176, column: 6, scope: !1817, inlinedAt: !3522)
!3526 = !DILocation(line: 176, column: 12, scope: !1817, inlinedAt: !3522)
!3527 = !DILocation(line: 177, column: 8, scope: !1833, inlinedAt: !3522)
!3528 = !DILocation(line: 177, column: 23, scope: !1835, inlinedAt: !3522)
!3529 = !DILocation(line: 177, column: 19, scope: !1833, inlinedAt: !3522)
!3530 = !DILocation(line: 178, column: 5, scope: !1833, inlinedAt: !3522)
!3531 = !DILocation(line: 179, column: 6, scope: !1817, inlinedAt: !3522)
!3532 = !DILocation(line: 179, column: 17, scope: !1817, inlinedAt: !3522)
!3533 = !DILocation(line: 180, column: 6, scope: !1817, inlinedAt: !3522)
!3534 = !DILocation(line: 180, column: 18, scope: !1817, inlinedAt: !3522)
!3535 = !DILocation(line: 1023, column: 10, scope: !3478)
!3536 = !DILocation(line: 1024, column: 1, scope: !3478)
!3537 = !DILocation(line: 1023, column: 3, scope: !3478)
!3538 = distinct !DISubprogram(name: "quotearg_custom", scope: !172, file: !172, line: 1027, type: !3539, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!139, !29, !29, !29}
!3541 = !{!3542, !3543, !3544}
!3542 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3538, file: !172, line: 1027, type: !29)
!3543 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3538, file: !172, line: 1027, type: !29)
!3544 = !DILocalVariable(name: "arg", arg: 3, scope: !3538, file: !172, line: 1028, type: !29)
!3545 = !DILocation(line: 1027, column: 30, scope: !3538)
!3546 = !DILocation(line: 1027, column: 54, scope: !3538)
!3547 = !DILocation(line: 1028, column: 30, scope: !3538)
!3548 = !DILocation(line: 1009, column: 24, scope: !3465, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 1030, column: 10, scope: !3538)
!3550 = !DILocation(line: 1009, column: 39, scope: !3465, inlinedAt: !3549)
!3551 = !DILocation(line: 1010, column: 32, scope: !3465, inlinedAt: !3549)
!3552 = !DILocation(line: 1010, column: 57, scope: !3465, inlinedAt: !3549)
!3553 = !DILocation(line: 1017, column: 28, scope: !3478, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 1012, column: 10, scope: !3465, inlinedAt: !3549)
!3555 = !DILocation(line: 1017, column: 43, scope: !3478, inlinedAt: !3554)
!3556 = !DILocation(line: 1018, column: 36, scope: !3478, inlinedAt: !3554)
!3557 = !DILocation(line: 1019, column: 36, scope: !3478, inlinedAt: !3554)
!3558 = !DILocation(line: 1019, column: 48, scope: !3478, inlinedAt: !3554)
!3559 = !DILocation(line: 1021, column: 3, scope: !3478, inlinedAt: !3554)
!3560 = !DILocation(line: 1021, column: 30, scope: !3478, inlinedAt: !3554)
!3561 = !DILocation(line: 1021, column: 26, scope: !3478, inlinedAt: !3554)
!3562 = !DILocation(line: 171, column: 45, scope: !1817, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 1022, column: 3, scope: !3478, inlinedAt: !3554)
!3564 = !DILocation(line: 172, column: 33, scope: !1817, inlinedAt: !3563)
!3565 = !DILocation(line: 172, column: 57, scope: !1817, inlinedAt: !3563)
!3566 = !DILocation(line: 176, column: 6, scope: !1817, inlinedAt: !3563)
!3567 = !DILocation(line: 176, column: 12, scope: !1817, inlinedAt: !3563)
!3568 = !DILocation(line: 177, column: 8, scope: !1833, inlinedAt: !3563)
!3569 = !DILocation(line: 177, column: 23, scope: !1835, inlinedAt: !3563)
!3570 = !DILocation(line: 177, column: 19, scope: !1833, inlinedAt: !3563)
!3571 = !DILocation(line: 178, column: 5, scope: !1833, inlinedAt: !3563)
!3572 = !DILocation(line: 179, column: 6, scope: !1817, inlinedAt: !3563)
!3573 = !DILocation(line: 179, column: 17, scope: !1817, inlinedAt: !3563)
!3574 = !DILocation(line: 180, column: 6, scope: !1817, inlinedAt: !3563)
!3575 = !DILocation(line: 180, column: 18, scope: !1817, inlinedAt: !3563)
!3576 = !DILocation(line: 1023, column: 10, scope: !3478, inlinedAt: !3554)
!3577 = !DILocation(line: 1024, column: 1, scope: !3478, inlinedAt: !3554)
!3578 = !DILocation(line: 1030, column: 3, scope: !3538)
!3579 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !172, file: !172, line: 1034, type: !3580, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!139, !29, !29, !29, !33}
!3582 = !{!3583, !3584, !3585, !3586}
!3583 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3579, file: !172, line: 1034, type: !29)
!3584 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3579, file: !172, line: 1034, type: !29)
!3585 = !DILocalVariable(name: "arg", arg: 3, scope: !3579, file: !172, line: 1035, type: !29)
!3586 = !DILocalVariable(name: "argsize", arg: 4, scope: !3579, file: !172, line: 1035, type: !33)
!3587 = !DILocation(line: 1034, column: 34, scope: !3579)
!3588 = !DILocation(line: 1034, column: 58, scope: !3579)
!3589 = !DILocation(line: 1035, column: 34, scope: !3579)
!3590 = !DILocation(line: 1035, column: 46, scope: !3579)
!3591 = !DILocation(line: 1017, column: 28, scope: !3478, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1037, column: 10, scope: !3579)
!3593 = !DILocation(line: 1017, column: 43, scope: !3478, inlinedAt: !3592)
!3594 = !DILocation(line: 1018, column: 36, scope: !3478, inlinedAt: !3592)
!3595 = !DILocation(line: 1019, column: 36, scope: !3478, inlinedAt: !3592)
!3596 = !DILocation(line: 1019, column: 48, scope: !3478, inlinedAt: !3592)
!3597 = !DILocation(line: 1021, column: 3, scope: !3478, inlinedAt: !3592)
!3598 = !DILocation(line: 1021, column: 30, scope: !3478, inlinedAt: !3592)
!3599 = !DILocation(line: 1021, column: 26, scope: !3478, inlinedAt: !3592)
!3600 = !DILocation(line: 171, column: 45, scope: !1817, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 1022, column: 3, scope: !3478, inlinedAt: !3592)
!3602 = !DILocation(line: 172, column: 33, scope: !1817, inlinedAt: !3601)
!3603 = !DILocation(line: 172, column: 57, scope: !1817, inlinedAt: !3601)
!3604 = !DILocation(line: 176, column: 6, scope: !1817, inlinedAt: !3601)
!3605 = !DILocation(line: 176, column: 12, scope: !1817, inlinedAt: !3601)
!3606 = !DILocation(line: 177, column: 8, scope: !1833, inlinedAt: !3601)
!3607 = !DILocation(line: 177, column: 23, scope: !1835, inlinedAt: !3601)
!3608 = !DILocation(line: 177, column: 19, scope: !1833, inlinedAt: !3601)
!3609 = !DILocation(line: 178, column: 5, scope: !1833, inlinedAt: !3601)
!3610 = !DILocation(line: 179, column: 6, scope: !1817, inlinedAt: !3601)
!3611 = !DILocation(line: 179, column: 17, scope: !1817, inlinedAt: !3601)
!3612 = !DILocation(line: 180, column: 6, scope: !1817, inlinedAt: !3601)
!3613 = !DILocation(line: 180, column: 18, scope: !1817, inlinedAt: !3601)
!3614 = !DILocation(line: 1023, column: 10, scope: !3478, inlinedAt: !3592)
!3615 = !DILocation(line: 1024, column: 1, scope: !3478, inlinedAt: !3592)
!3616 = !DILocation(line: 1037, column: 3, scope: !3579)
!3617 = distinct !DISubprogram(name: "quote_n_mem", scope: !172, file: !172, line: 1052, type: !3618, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!29, !69, !29, !33}
!3620 = !{!3621, !3622, !3623}
!3621 = !DILocalVariable(name: "n", arg: 1, scope: !3617, file: !172, line: 1052, type: !69)
!3622 = !DILocalVariable(name: "arg", arg: 2, scope: !3617, file: !172, line: 1052, type: !29)
!3623 = !DILocalVariable(name: "argsize", arg: 3, scope: !3617, file: !172, line: 1052, type: !33)
!3624 = !DILocation(line: 1052, column: 18, scope: !3617)
!3625 = !DILocation(line: 1052, column: 33, scope: !3617)
!3626 = !DILocation(line: 1052, column: 45, scope: !3617)
!3627 = !DILocation(line: 1054, column: 10, scope: !3617)
!3628 = !DILocation(line: 1054, column: 3, scope: !3617)
!3629 = distinct !DISubprogram(name: "quote_mem", scope: !172, file: !172, line: 1058, type: !3630, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!29, !29, !33}
!3632 = !{!3633, !3634}
!3633 = !DILocalVariable(name: "arg", arg: 1, scope: !3629, file: !172, line: 1058, type: !29)
!3634 = !DILocalVariable(name: "argsize", arg: 2, scope: !3629, file: !172, line: 1058, type: !33)
!3635 = !DILocation(line: 1058, column: 24, scope: !3629)
!3636 = !DILocation(line: 1058, column: 36, scope: !3629)
!3637 = !DILocation(line: 1052, column: 18, scope: !3617, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 1060, column: 10, scope: !3629)
!3639 = !DILocation(line: 1052, column: 33, scope: !3617, inlinedAt: !3638)
!3640 = !DILocation(line: 1052, column: 45, scope: !3617, inlinedAt: !3638)
!3641 = !DILocation(line: 1054, column: 10, scope: !3617, inlinedAt: !3638)
!3642 = !DILocation(line: 1060, column: 3, scope: !3629)
!3643 = distinct !DISubprogram(name: "quote_n", scope: !172, file: !172, line: 1064, type: !3644, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!29, !69, !29}
!3646 = !{!3647, !3648}
!3647 = !DILocalVariable(name: "n", arg: 1, scope: !3643, file: !172, line: 1064, type: !69)
!3648 = !DILocalVariable(name: "arg", arg: 2, scope: !3643, file: !172, line: 1064, type: !29)
!3649 = !DILocation(line: 1064, column: 14, scope: !3643)
!3650 = !DILocation(line: 1064, column: 29, scope: !3643)
!3651 = !DILocation(line: 1052, column: 18, scope: !3617, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 1066, column: 10, scope: !3643)
!3653 = !DILocation(line: 1052, column: 33, scope: !3617, inlinedAt: !3652)
!3654 = !DILocation(line: 1052, column: 45, scope: !3617, inlinedAt: !3652)
!3655 = !DILocation(line: 1054, column: 10, scope: !3617, inlinedAt: !3652)
!3656 = !DILocation(line: 1066, column: 3, scope: !3643)
!3657 = distinct !DISubprogram(name: "quote", scope: !172, file: !172, line: 1070, type: !3658, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!29, !29}
!3660 = !{!3661}
!3661 = !DILocalVariable(name: "arg", arg: 1, scope: !3657, file: !172, line: 1070, type: !29)
!3662 = !DILocation(line: 1070, column: 20, scope: !3657)
!3663 = !DILocation(line: 1064, column: 14, scope: !3643, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 1072, column: 10, scope: !3657)
!3665 = !DILocation(line: 1064, column: 29, scope: !3643, inlinedAt: !3664)
!3666 = !DILocation(line: 1052, column: 18, scope: !3617, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 1066, column: 10, scope: !3643, inlinedAt: !3664)
!3668 = !DILocation(line: 1052, column: 33, scope: !3617, inlinedAt: !3667)
!3669 = !DILocation(line: 1052, column: 45, scope: !3617, inlinedAt: !3667)
!3670 = !DILocation(line: 1054, column: 10, scope: !3617, inlinedAt: !3667)
!3671 = !DILocation(line: 1072, column: 3, scope: !3657)
!3672 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !578, file: !578, line: 44, type: !3673, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3681)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{null, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !758, line: 31, baseType: !3677)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !758, line: 26, size: 128, elements: !3678)
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3677, file: !758, line: 28, baseType: !33, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3677, file: !758, line: 29, baseType: !139, size: 64, offset: 64)
!3681 = !{!3682}
!3682 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3672, file: !578, line: 44, type: !3675)
!3683 = !DILocation(line: 44, column: 33, scope: !3672)
!3684 = !DILocation(line: 48, column: 1, scope: !3672)
!3685 = !DILocation(line: 47, column: 23, scope: !3672)
!3686 = distinct !DISubprogram(name: "readtoken", scope: !578, file: !578, line: 80, type: !3687, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3729)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!33, !3689, !29, !33, !3675}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !3691)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3691, file: !1413, line: 242, baseType: !69, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3691, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3691, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3691, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3691, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3691, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3691, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3691, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3691, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3691, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3691, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3691, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3691, file: !1413, line: 260, baseType: !3706, size: 64, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !3708)
!3708 = !{!3709, !3710, !3712}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3707, file: !1413, line: 157, baseType: !3706, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3707, file: !1413, line: 158, baseType: !3711, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3707, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3691, file: !1413, line: 262, baseType: !3711, size: 64, offset: 832)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3691, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3691, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3691, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3691, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3691, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3691, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3691, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3691, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3691, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3691, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3691, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3691, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3691, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3691, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3691, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3741}
!3730 = !DILocalVariable(name: "stream", arg: 1, scope: !3686, file: !578, line: 80, type: !3689)
!3731 = !DILocalVariable(name: "delim", arg: 2, scope: !3686, file: !578, line: 81, type: !29)
!3732 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3686, file: !578, line: 82, type: !33)
!3733 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3686, file: !578, line: 83, type: !3675)
!3734 = !DILocalVariable(name: "p", scope: !3686, file: !578, line: 85, type: !139)
!3735 = !DILocalVariable(name: "c", scope: !3686, file: !578, line: 86, type: !69)
!3736 = !DILocalVariable(name: "i", scope: !3686, file: !578, line: 87, type: !33)
!3737 = !DILocalVariable(name: "n", scope: !3686, file: !578, line: 87, type: !33)
!3738 = !DILocalVariable(name: "isdelim", scope: !3686, file: !578, line: 88, type: !3739)
!3739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3740, size: 256, elements: !1928)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !578, line: 50, baseType: !33)
!3741 = !DILocalVariable(name: "ch", scope: !3742, file: !578, line: 93, type: !40)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !578, line: 92, column: 5)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !578, line: 91, column: 3)
!3744 = distinct !DILexicalBlock(scope: !3686, file: !578, line: 91, column: 3)
!3745 = !DILocation(line: 80, column: 18, scope: !3686)
!3746 = !DILocation(line: 81, column: 24, scope: !3686)
!3747 = !DILocation(line: 82, column: 19, scope: !3686)
!3748 = !DILocation(line: 83, column: 26, scope: !3686)
!3749 = !DILocation(line: 88, column: 3, scope: !3686)
!3750 = !DILocation(line: 88, column: 8, scope: !3686)
!3751 = !DILocation(line: 90, column: 3, scope: !3686)
!3752 = !DILocation(line: 87, column: 10, scope: !3686)
!3753 = !DILocation(line: 91, column: 17, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !3743, file: !578, discriminator: 1)
!3755 = !DILocation(line: 91, column: 3, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3744, file: !578, discriminator: 1)
!3757 = !DILocation(line: 93, column: 26, scope: !3742)
!3758 = !DILocation(line: 93, column: 21, scope: !3742)
!3759 = !DILocation(line: 94, column: 20, scope: !3742)
!3760 = !DILocalVariable(name: "n", arg: 1, scope: !3761, file: !578, line: 60, type: !33)
!3761 = distinct !DISubprogram(name: "set_nth_bit", scope: !578, file: !578, line: 60, type: !3762, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3765)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !33, !3764}
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3765 = !{!3760, !3766, !3767}
!3766 = !DILocalVariable(name: "bitset", arg: 2, scope: !3761, file: !578, line: 60, type: !3764)
!3767 = !DILocalVariable(name: "one", scope: !3761, file: !578, line: 62, type: !33)
!3768 = !DILocation(line: 60, column: 21, scope: !3761, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 94, column: 7, scope: !3742)
!3770 = !DILocation(line: 62, column: 10, scope: !3761, inlinedAt: !3769)
!3771 = !DILocation(line: 63, column: 41, scope: !3761, inlinedAt: !3769)
!3772 = !DILocation(line: 63, column: 36, scope: !3761, inlinedAt: !3769)
!3773 = !DILocation(line: 63, column: 12, scope: !3761, inlinedAt: !3769)
!3774 = !DILocation(line: 63, column: 3, scope: !3761, inlinedAt: !3769)
!3775 = !DILocation(line: 63, column: 29, scope: !3761, inlinedAt: !3769)
!3776 = !DILocation(line: 63, column: 22, scope: !3777, inlinedAt: !3783)
!3777 = distinct !DISubprogram(name: "getc_unlocked", scope: !3778, file: !3778, line: 63, type: !3779, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3781)
!3778 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!69, !3689}
!3781 = !{!3782}
!3782 = !DILocalVariable(name: "__fp", arg: 1, scope: !3777, file: !3778, line: 63, type: !3689)
!3783 = distinct !DILocation(line: 98, column: 67, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !3785, file: !578, discriminator: 4)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !578, line: 98, column: 3)
!3786 = distinct !DILexicalBlock(scope: !3686, file: !578, line: 98, column: 3)
!3787 = !DILocation(line: 91, column: 29, scope: !3788)
!3788 = !DILexicalBlockFile(scope: !3743, file: !578, discriminator: 2)
!3789 = distinct !{!3789, !3790, !3791}
!3790 = !DILocation(line: 91, column: 3, scope: !3744)
!3791 = !DILocation(line: 95, column: 5, scope: !3744)
!3792 = !DILocation(line: 65, column: 10, scope: !3777, inlinedAt: !3783)
!3793 = !{!3794, !653, i64 8}
!3794 = !{!"_IO_FILE", !726, i64 0, !653, i64 8, !653, i64 16, !653, i64 24, !653, i64 32, !653, i64 40, !653, i64 48, !653, i64 56, !653, i64 64, !653, i64 72, !653, i64 80, !653, i64 88, !653, i64 96, !653, i64 104, !726, i64 112, !726, i64 116, !841, i64 120, !2284, i64 128, !654, i64 130, !654, i64 131, !653, i64 136, !841, i64 144, !653, i64 152, !653, i64 160, !653, i64 168, !653, i64 176, !841, i64 184, !726, i64 192, !654, i64 196}
!3795 = !{!3794, !653, i64 16}
!3796 = !{!"branch_weights", i32 2000, i32 1}
!3797 = !DILocation(line: 65, column: 10, scope: !3798, inlinedAt: !3783)
!3798 = !DILexicalBlockFile(scope: !3777, file: !3778, discriminator: 2)
!3799 = !DILocation(line: 86, column: 7, scope: !3686)
!3800 = !DILocation(line: 98, column: 34, scope: !3801)
!3801 = !DILexicalBlockFile(scope: !3785, file: !578, discriminator: 1)
!3802 = !DILocation(line: 65, column: 10, scope: !3803, inlinedAt: !3783)
!3803 = !DILexicalBlockFile(scope: !3777, file: !3778, discriminator: 1)
!3804 = !DILocation(line: 98, column: 29, scope: !3801)
!3805 = !DILocation(line: 98, column: 50, scope: !3806)
!3806 = !DILexicalBlockFile(scope: !3785, file: !578, discriminator: 2)
!3807 = !DILocalVariable(name: "n", arg: 1, scope: !3808, file: !578, line: 54, type: !33)
!3808 = distinct !DISubprogram(name: "get_nth_bit", scope: !578, file: !578, line: 54, type: !3809, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3813)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!108, !33, !3811}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3813 = !{!3807, !3814}
!3814 = !DILocalVariable(name: "bitset", arg: 2, scope: !3808, file: !578, line: 54, type: !3811)
!3815 = !DILocation(line: 54, column: 21, scope: !3808, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 98, column: 37, scope: !3806)
!3817 = !DILocation(line: 56, column: 19, scope: !3808, inlinedAt: !3816)
!3818 = !DILocation(line: 56, column: 10, scope: !3808, inlinedAt: !3816)
!3819 = !DILocation(line: 56, column: 41, scope: !3808, inlinedAt: !3816)
!3820 = !DILocation(line: 98, column: 3, scope: !3821)
!3821 = !DILexicalBlockFile(scope: !3786, file: !578, discriminator: 3)
!3822 = distinct !{!3822, !3823, !3824}
!3823 = !DILocation(line: 98, column: 3, scope: !3786)
!3824 = !DILocation(line: 101, column: 5, scope: !3786)
!3825 = !DILocation(line: 103, column: 20, scope: !3686)
!3826 = !DILocation(line: 85, column: 9, scope: !3686)
!3827 = !DILocation(line: 104, column: 20, scope: !3686)
!3828 = !DILocation(line: 87, column: 13, scope: !3686)
!3829 = !{!840, !841, i64 0}
!3830 = !DILocation(line: 111, column: 13, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !578, line: 111, column: 11)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !578, line: 107, column: 5)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !578, line: 106, column: 3)
!3834 = distinct !DILexicalBlock(scope: !3686, file: !578, line: 106, column: 3)
!3835 = !DILocation(line: 111, column: 11, scope: !3832)
!3836 = !DILocation(line: 180, column: 19, scope: !583, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 112, column: 13, scope: !3831)
!3838 = !DILocation(line: 180, column: 41, scope: !583, inlinedAt: !3837)
!3839 = !DILocation(line: 182, column: 10, scope: !583, inlinedAt: !3837)
!3840 = !DILocation(line: 184, column: 9, scope: !3841, inlinedAt: !3837)
!3841 = distinct !DILexicalBlock(scope: !583, file: !582, line: 184, column: 7)
!3842 = !DILocation(line: 184, column: 7, scope: !583, inlinedAt: !3837)
!3843 = !DILocation(line: 186, column: 13, scope: !3844, inlinedAt: !3837)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !582, line: 186, column: 11)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !582, line: 185, column: 5)
!3846 = !DILocation(line: 186, column: 11, scope: !3845, inlinedAt: !3837)
!3847 = !DILocation(line: 205, column: 11, scope: !3848, inlinedAt: !3837)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !582, line: 204, column: 11)
!3849 = distinct !DILexicalBlock(scope: !3841, file: !582, line: 199, column: 5)
!3850 = !DILocation(line: 204, column: 11, scope: !3849, inlinedAt: !3837)
!3851 = !DILocation(line: 206, column: 9, scope: !3848, inlinedAt: !3837)
!3852 = !DILocation(line: 207, column: 14, scope: !3849, inlinedAt: !3837)
!3853 = !DILocation(line: 207, column: 18, scope: !3849, inlinedAt: !3837)
!3854 = !DILocation(line: 207, column: 9, scope: !3849, inlinedAt: !3837)
!3855 = !DILocation(line: 211, column: 10, scope: !583, inlinedAt: !3837)
!3856 = !DILocation(line: 112, column: 9, scope: !3831)
!3857 = !DILocation(line: 114, column: 11, scope: !3832)
!3858 = !DILocation(line: 119, column: 24, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3832, file: !578, line: 119, column: 11)
!3860 = !DILocation(line: 54, column: 21, scope: !3808, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 119, column: 11, scope: !3859)
!3862 = !DILocation(line: 56, column: 19, scope: !3808, inlinedAt: !3861)
!3863 = !DILocation(line: 56, column: 10, scope: !3808, inlinedAt: !3861)
!3864 = !DILocation(line: 56, column: 41, scope: !3808, inlinedAt: !3861)
!3865 = !DILocation(line: 119, column: 11, scope: !3832)
!3866 = !DILocation(line: 124, column: 16, scope: !3832)
!3867 = !DILocation(line: 124, column: 10, scope: !3832)
!3868 = !DILocation(line: 124, column: 7, scope: !3832)
!3869 = !DILocation(line: 124, column: 14, scope: !3832)
!3870 = !DILocation(line: 63, column: 22, scope: !3777, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 125, column: 11, scope: !3832)
!3872 = !DILocation(line: 65, column: 10, scope: !3777, inlinedAt: !3871)
!3873 = !DILocation(line: 65, column: 10, scope: !3803, inlinedAt: !3871)
!3874 = !DILocation(line: 108, column: 13, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3832, file: !578, line: 108, column: 11)
!3876 = !DILocation(line: 108, column: 22, scope: !3877)
!3877 = !DILexicalBlockFile(scope: !3875, file: !578, discriminator: 1)
!3878 = !DILocation(line: 108, column: 17, scope: !3875)
!3879 = distinct !{!3879, !3880, !3881}
!3880 = !DILocation(line: 106, column: 3, scope: !3834)
!3881 = !DILocation(line: 126, column: 5, scope: !3834)
!3882 = !DILocation(line: 65, column: 10, scope: !3798, inlinedAt: !3871)
!3883 = !DILocation(line: 128, column: 23, scope: !3686)
!3884 = !DILocation(line: 129, column: 21, scope: !3686)
!3885 = !DILocation(line: 130, column: 3, scope: !3686)
!3886 = !DILocation(line: 131, column: 1, scope: !3686)
!3887 = distinct !DISubprogram(name: "readtokens", scope: !578, file: !578, line: 141, type: !3888, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3892)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!33, !3689, !33, !29, !33, !3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3909}
!3893 = !DILocalVariable(name: "stream", arg: 1, scope: !3887, file: !578, line: 141, type: !3689)
!3894 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3887, file: !578, line: 142, type: !33)
!3895 = !DILocalVariable(name: "delim", arg: 3, scope: !3887, file: !578, line: 143, type: !29)
!3896 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3887, file: !578, line: 144, type: !33)
!3897 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3887, file: !578, line: 145, type: !3890)
!3898 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3887, file: !578, line: 146, type: !3891)
!3899 = !DILocalVariable(name: "tb", scope: !3887, file: !578, line: 148, type: !3676)
!3900 = !DILocalVariable(name: "token", scope: !3887, file: !578, line: 148, type: !3675)
!3901 = !DILocalVariable(name: "tokens", scope: !3887, file: !578, line: 149, type: !703)
!3902 = !DILocalVariable(name: "lengths", scope: !3887, file: !578, line: 150, type: !586)
!3903 = !DILocalVariable(name: "sz", scope: !3887, file: !578, line: 151, type: !33)
!3904 = !DILocalVariable(name: "n_tokens", scope: !3887, file: !578, line: 152, type: !33)
!3905 = !DILocalVariable(name: "tmp", scope: !3906, file: !578, line: 167, type: !139)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !578, line: 166, column: 5)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !578, line: 165, column: 3)
!3908 = distinct !DILexicalBlock(scope: !3887, file: !578, line: 165, column: 3)
!3909 = !DILocalVariable(name: "token_length", scope: !3906, file: !578, line: 168, type: !33)
!3910 = !DILocation(line: 141, column: 19, scope: !3887)
!3911 = !DILocation(line: 142, column: 20, scope: !3887)
!3912 = !DILocation(line: 143, column: 25, scope: !3887)
!3913 = !DILocation(line: 144, column: 20, scope: !3887)
!3914 = !DILocation(line: 145, column: 21, scope: !3887)
!3915 = !DILocation(line: 146, column: 22, scope: !3887)
!3916 = !DILocation(line: 148, column: 3, scope: !3887)
!3917 = !DILocation(line: 148, column: 21, scope: !3887)
!3918 = !DILocation(line: 154, column: 26, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3887, file: !578, line: 154, column: 7)
!3920 = !DILocation(line: 157, column: 23, scope: !3919)
!3921 = !DILocation(line: 154, column: 7, scope: !3887)
!3922 = !DILocation(line: 151, column: 10, scope: !3887)
!3923 = !DILocalVariable(name: "n", arg: 1, scope: !3924, file: !582, line: 105, type: !33)
!3924 = distinct !DISubprogram(name: "xnmalloc", scope: !582, file: !582, line: 105, type: !3925, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!32, !33, !33}
!3927 = !{!3923, !3928}
!3928 = !DILocalVariable(name: "s", arg: 2, scope: !3924, file: !582, line: 105, type: !33)
!3929 = !DILocation(line: 105, column: 18, scope: !3924, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 160, column: 12, scope: !3887)
!3931 = !DILocation(line: 105, column: 28, scope: !3924, inlinedAt: !3930)
!3932 = !DILocation(line: 107, column: 7, scope: !3933, inlinedAt: !3930)
!3933 = distinct !DILexicalBlock(scope: !3924, file: !582, line: 107, column: 7)
!3934 = !DILocation(line: 107, column: 7, scope: !3924, inlinedAt: !3930)
!3935 = !DILocation(line: 108, column: 5, scope: !3933, inlinedAt: !3930)
!3936 = !DILocation(line: 109, column: 21, scope: !3924, inlinedAt: !3930)
!3937 = !DILocation(line: 109, column: 10, scope: !3924, inlinedAt: !3930)
!3938 = !DILocation(line: 160, column: 12, scope: !3887)
!3939 = !DILocation(line: 149, column: 10, scope: !3887)
!3940 = !DILocation(line: 105, column: 18, scope: !3924, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 161, column: 13, scope: !3887)
!3942 = !DILocation(line: 105, column: 28, scope: !3924, inlinedAt: !3941)
!3943 = !DILocation(line: 109, column: 10, scope: !3924, inlinedAt: !3941)
!3944 = !DILocation(line: 161, column: 13, scope: !3887)
!3945 = !DILocation(line: 150, column: 11, scope: !3887)
!3946 = !DILocation(line: 152, column: 10, scope: !3887)
!3947 = !DILocation(line: 148, column: 16, scope: !3887)
!3948 = !DILocation(line: 44, column: 33, scope: !3672, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 164, column: 3, scope: !3887)
!3950 = !DILocation(line: 47, column: 23, scope: !3672, inlinedAt: !3949)
!3951 = !DILocation(line: 165, column: 3, scope: !3887)
!3952 = !DILocation(line: 168, column: 29, scope: !3906)
!3953 = !DILocation(line: 168, column: 14, scope: !3906)
!3954 = !DILocation(line: 169, column: 20, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3906, file: !578, line: 169, column: 11)
!3956 = !DILocation(line: 169, column: 11, scope: !3906)
!3957 = !DILocation(line: 180, column: 19, scope: !583, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 171, column: 20, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3955, file: !578, line: 170, column: 9)
!3960 = !DILocation(line: 180, column: 41, scope: !583, inlinedAt: !3958)
!3961 = !DILocation(line: 182, column: 10, scope: !583, inlinedAt: !3958)
!3962 = !DILocation(line: 184, column: 9, scope: !3841, inlinedAt: !3958)
!3963 = !DILocation(line: 184, column: 7, scope: !583, inlinedAt: !3958)
!3964 = !DILocation(line: 186, column: 13, scope: !3844, inlinedAt: !3958)
!3965 = !DILocation(line: 205, column: 11, scope: !3848, inlinedAt: !3958)
!3966 = !DILocation(line: 204, column: 11, scope: !3849, inlinedAt: !3958)
!3967 = !DILocation(line: 206, column: 9, scope: !3848, inlinedAt: !3958)
!3968 = !DILocation(line: 207, column: 14, scope: !3849, inlinedAt: !3958)
!3969 = !DILocation(line: 207, column: 18, scope: !3849, inlinedAt: !3958)
!3970 = !DILocation(line: 207, column: 9, scope: !3849, inlinedAt: !3958)
!3971 = !DILocation(line: 211, column: 10, scope: !583, inlinedAt: !3958)
!3972 = !DILocalVariable(name: "p", arg: 1, scope: !3973, file: !582, line: 118, type: !32)
!3973 = distinct !DISubprogram(name: "xnrealloc", scope: !582, file: !582, line: 118, type: !3974, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !3976)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!32, !32, !33, !33}
!3976 = !{!3972, !3977, !3978}
!3977 = !DILocalVariable(name: "n", arg: 2, scope: !3973, file: !582, line: 118, type: !33)
!3978 = !DILocalVariable(name: "s", arg: 3, scope: !3973, file: !582, line: 118, type: !33)
!3979 = !DILocation(line: 118, column: 18, scope: !3973, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 172, column: 21, scope: !3959)
!3981 = !DILocation(line: 118, column: 28, scope: !3973, inlinedAt: !3980)
!3982 = !DILocation(line: 118, column: 38, scope: !3973, inlinedAt: !3980)
!3983 = !DILocation(line: 120, column: 7, scope: !3973, inlinedAt: !3980)
!3984 = !DILocation(line: 211, column: 25, scope: !583, inlinedAt: !3958)
!3985 = !DILocation(line: 120, column: 7, scope: !3986, inlinedAt: !3980)
!3986 = distinct !DILexicalBlock(scope: !3973, file: !582, line: 120, column: 7)
!3987 = !DILocation(line: 121, column: 5, scope: !3986, inlinedAt: !3980)
!3988 = !DILocation(line: 171, column: 20, scope: !3959)
!3989 = !DILocation(line: 122, column: 10, scope: !3973, inlinedAt: !3980)
!3990 = !DILocation(line: 172, column: 21, scope: !3959)
!3991 = !DILocation(line: 173, column: 9, scope: !3959)
!3992 = !DILocation(line: 175, column: 24, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3906, file: !578, line: 175, column: 11)
!3994 = !DILocation(line: 175, column: 11, scope: !3906)
!3995 = !DILocation(line: 182, column: 36, scope: !3906)
!3996 = !DILocation(line: 105, column: 18, scope: !3924, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 182, column: 13, scope: !3906)
!3998 = !DILocation(line: 105, column: 28, scope: !3924, inlinedAt: !3997)
!3999 = !DILocation(line: 107, column: 7, scope: !3933, inlinedAt: !3997)
!4000 = !DILocation(line: 107, column: 7, scope: !3924, inlinedAt: !3997)
!4001 = !DILocation(line: 108, column: 5, scope: !3933, inlinedAt: !3997)
!4002 = !DILocation(line: 109, column: 10, scope: !3924, inlinedAt: !3997)
!4003 = !DILocation(line: 167, column: 13, scope: !3906)
!4004 = !DILocation(line: 183, column: 7, scope: !3906)
!4005 = !DILocation(line: 183, column: 25, scope: !3906)
!4006 = !DILocation(line: 184, column: 46, scope: !3906)
!4007 = !DILocation(line: 184, column: 26, scope: !3906)
!4008 = !DILocation(line: 184, column: 7, scope: !3906)
!4009 = !DILocation(line: 184, column: 24, scope: !3906)
!4010 = !DILocation(line: 185, column: 15, scope: !3906)
!4011 = !DILocation(line: 178, column: 11, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3993, file: !578, line: 176, column: 9)
!4013 = !DILocation(line: 178, column: 28, scope: !4012)
!4014 = !DILocation(line: 179, column: 11, scope: !4012)
!4015 = !DILocation(line: 179, column: 29, scope: !4012)
!4016 = !DILocation(line: 188, column: 16, scope: !3887)
!4017 = !DILocation(line: 188, column: 3, scope: !3887)
!4018 = !DILocation(line: 189, column: 15, scope: !3887)
!4019 = !DILocation(line: 190, column: 21, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3887, file: !578, line: 190, column: 7)
!4021 = !DILocation(line: 190, column: 7, scope: !3887)
!4022 = !DILocation(line: 191, column: 20, scope: !4020)
!4023 = !DILocation(line: 191, column: 5, scope: !4020)
!4024 = !DILocation(line: 193, column: 5, scope: !4020)
!4025 = !DILocation(line: 195, column: 1, scope: !3887)
!4026 = !DILocation(line: 194, column: 3, scope: !3887)
!4027 = distinct !DISubprogram(name: "version_etc_arn", scope: !599, file: !599, line: 62, type: !4028, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4071)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{null, !4030, !29, !29, !29, !4070, !33}
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !4032)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4032, file: !1413, line: 242, baseType: !69, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4032, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4032, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4032, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4032, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4032, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4032, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4032, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4032, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4032, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4032, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4032, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4032, file: !1413, line: 260, baseType: !4047, size: 64, offset: 768)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !4049)
!4049 = !{!4050, !4051, !4053}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4048, file: !1413, line: 157, baseType: !4047, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4048, file: !1413, line: 158, baseType: !4052, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4048, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4032, file: !1413, line: 262, baseType: !4052, size: 64, offset: 832)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4032, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4032, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4032, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4032, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4032, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4032, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4032, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4032, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4032, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4032, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4032, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4032, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4032, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4032, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4032, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077}
!4072 = !DILocalVariable(name: "stream", arg: 1, scope: !4027, file: !599, line: 62, type: !4030)
!4073 = !DILocalVariable(name: "command_name", arg: 2, scope: !4027, file: !599, line: 63, type: !29)
!4074 = !DILocalVariable(name: "package", arg: 3, scope: !4027, file: !599, line: 63, type: !29)
!4075 = !DILocalVariable(name: "version", arg: 4, scope: !4027, file: !599, line: 64, type: !29)
!4076 = !DILocalVariable(name: "authors", arg: 5, scope: !4027, file: !599, line: 65, type: !4070)
!4077 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4027, file: !599, line: 65, type: !33)
!4078 = !DILocation(line: 62, column: 24, scope: !4027)
!4079 = !DILocation(line: 63, column: 30, scope: !4027)
!4080 = !DILocation(line: 63, column: 56, scope: !4027)
!4081 = !DILocation(line: 64, column: 30, scope: !4027)
!4082 = !DILocation(line: 65, column: 39, scope: !4027)
!4083 = !DILocation(line: 65, column: 55, scope: !4027)
!4084 = !DILocation(line: 67, column: 7, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4027, file: !599, line: 67, column: 7)
!4086 = !DILocation(line: 67, column: 7, scope: !4027)
!4087 = !DILocation(line: 68, column: 5, scope: !4085)
!4088 = !DILocation(line: 70, column: 5, scope: !4085)
!4089 = !DILocation(line: 84, column: 3, scope: !4027)
!4090 = !DILocation(line: 84, column: 3, scope: !4091)
!4091 = !DILexicalBlockFile(scope: !4027, file: !599, discriminator: 1)
!4092 = !DILocation(line: 86, column: 3, scope: !4027)
!4093 = !DILocation(line: 86, column: 3, scope: !4091)
!4094 = !DILocation(line: 95, column: 3, scope: !4027)
!4095 = !DILocation(line: 99, column: 7, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4027, file: !599, line: 96, column: 5)
!4097 = !DILocation(line: 102, column: 7, scope: !4096)
!4098 = !DILocation(line: 102, column: 7, scope: !4099)
!4099 = !DILexicalBlockFile(scope: !4096, file: !599, discriminator: 1)
!4100 = !DILocation(line: 103, column: 7, scope: !4096)
!4101 = !DILocation(line: 106, column: 7, scope: !4096)
!4102 = !DILocation(line: 106, column: 7, scope: !4099)
!4103 = !DILocation(line: 107, column: 7, scope: !4096)
!4104 = !DILocation(line: 110, column: 7, scope: !4096)
!4105 = !DILocation(line: 110, column: 7, scope: !4099)
!4106 = !DILocation(line: 112, column: 7, scope: !4096)
!4107 = !DILocation(line: 117, column: 7, scope: !4096)
!4108 = !DILocation(line: 117, column: 7, scope: !4099)
!4109 = !DILocation(line: 119, column: 7, scope: !4096)
!4110 = !DILocation(line: 124, column: 7, scope: !4096)
!4111 = !DILocation(line: 124, column: 7, scope: !4099)
!4112 = !DILocation(line: 126, column: 7, scope: !4096)
!4113 = !DILocation(line: 131, column: 7, scope: !4096)
!4114 = !DILocation(line: 131, column: 7, scope: !4099)
!4115 = !DILocation(line: 134, column: 7, scope: !4096)
!4116 = !DILocation(line: 139, column: 7, scope: !4096)
!4117 = !DILocation(line: 139, column: 7, scope: !4099)
!4118 = !DILocation(line: 142, column: 7, scope: !4096)
!4119 = !DILocation(line: 147, column: 7, scope: !4096)
!4120 = !DILocation(line: 147, column: 7, scope: !4099)
!4121 = !DILocation(line: 151, column: 7, scope: !4096)
!4122 = !DILocation(line: 156, column: 7, scope: !4096)
!4123 = !DILocation(line: 156, column: 7, scope: !4099)
!4124 = !DILocation(line: 160, column: 7, scope: !4096)
!4125 = !DILocation(line: 167, column: 7, scope: !4096)
!4126 = !DILocation(line: 167, column: 7, scope: !4099)
!4127 = !DILocation(line: 171, column: 7, scope: !4096)
!4128 = !DILocation(line: 173, column: 1, scope: !4027)
!4129 = distinct !DISubprogram(name: "version_etc_ar", scope: !599, file: !599, line: 180, type: !4130, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4132)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4030, !29, !29, !29, !4070}
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4138}
!4133 = !DILocalVariable(name: "stream", arg: 1, scope: !4129, file: !599, line: 180, type: !4030)
!4134 = !DILocalVariable(name: "command_name", arg: 2, scope: !4129, file: !599, line: 181, type: !29)
!4135 = !DILocalVariable(name: "package", arg: 3, scope: !4129, file: !599, line: 181, type: !29)
!4136 = !DILocalVariable(name: "version", arg: 4, scope: !4129, file: !599, line: 182, type: !29)
!4137 = !DILocalVariable(name: "authors", arg: 5, scope: !4129, file: !599, line: 182, type: !4070)
!4138 = !DILocalVariable(name: "n_authors", scope: !4129, file: !599, line: 184, type: !33)
!4139 = !DILocation(line: 180, column: 23, scope: !4129)
!4140 = !DILocation(line: 181, column: 29, scope: !4129)
!4141 = !DILocation(line: 181, column: 55, scope: !4129)
!4142 = !DILocation(line: 182, column: 29, scope: !4129)
!4143 = !DILocation(line: 182, column: 59, scope: !4129)
!4144 = !DILocation(line: 184, column: 10, scope: !4129)
!4145 = !DILocation(line: 186, column: 8, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4129, file: !599, line: 186, column: 3)
!4147 = !DILocation(line: 186, column: 23, scope: !4148)
!4148 = !DILexicalBlockFile(scope: !4149, file: !599, discriminator: 1)
!4149 = distinct !DILexicalBlock(scope: !4146, file: !599, line: 186, column: 3)
!4150 = !DILocation(line: 186, column: 3, scope: !4151)
!4151 = !DILexicalBlockFile(scope: !4146, file: !599, discriminator: 1)
!4152 = !DILocation(line: 186, column: 52, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !4149, file: !599, discriminator: 3)
!4154 = distinct !{!4154, !4155, !4156}
!4155 = !DILocation(line: 186, column: 3, scope: !4146)
!4156 = !DILocation(line: 187, column: 5, scope: !4146)
!4157 = !DILocation(line: 188, column: 3, scope: !4129)
!4158 = !DILocation(line: 189, column: 1, scope: !4129)
!4159 = distinct !DISubprogram(name: "version_etc_va", scope: !599, file: !599, line: 196, type: !4160, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4169)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !4030, !29, !29, !29, !4162}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !596, line: 189, size: 192, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4163, file: !596, line: 189, baseType: !185, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4163, file: !596, line: 189, baseType: !185, size: 32, offset: 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4163, file: !596, line: 189, baseType: !32, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4163, file: !596, line: 189, baseType: !32, size: 64, offset: 128)
!4169 = !{!4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4170 = !DILocalVariable(name: "stream", arg: 1, scope: !4159, file: !599, line: 196, type: !4030)
!4171 = !DILocalVariable(name: "command_name", arg: 2, scope: !4159, file: !599, line: 197, type: !29)
!4172 = !DILocalVariable(name: "package", arg: 3, scope: !4159, file: !599, line: 197, type: !29)
!4173 = !DILocalVariable(name: "version", arg: 4, scope: !4159, file: !599, line: 198, type: !29)
!4174 = !DILocalVariable(name: "authors", arg: 5, scope: !4159, file: !599, line: 198, type: !4162)
!4175 = !DILocalVariable(name: "n_authors", scope: !4159, file: !599, line: 200, type: !33)
!4176 = !DILocalVariable(name: "authtab", scope: !4159, file: !599, line: 201, type: !4177)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 640, elements: !175)
!4178 = !DILocation(line: 196, column: 23, scope: !4159)
!4179 = !DILocation(line: 197, column: 29, scope: !4159)
!4180 = !DILocation(line: 197, column: 55, scope: !4159)
!4181 = !DILocation(line: 198, column: 29, scope: !4159)
!4182 = !DILocation(line: 198, column: 46, scope: !4159)
!4183 = !DILocation(line: 201, column: 3, scope: !4159)
!4184 = !DILocation(line: 201, column: 15, scope: !4159)
!4185 = !DILocation(line: 200, column: 10, scope: !4159)
!4186 = !DILocation(line: 205, column: 35, scope: !4187)
!4187 = !DILexicalBlockFile(scope: !4188, file: !599, discriminator: 1)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !599, line: 203, column: 3)
!4189 = distinct !DILexicalBlock(scope: !4159, file: !599, line: 203, column: 3)
!4190 = !DILocation(line: 205, column: 35, scope: !4191)
!4191 = !DILexicalBlockFile(scope: !4188, file: !599, discriminator: 2)
!4192 = !DILocation(line: 205, column: 35, scope: !4193)
!4193 = !DILexicalBlockFile(scope: !4188, file: !599, discriminator: 3)
!4194 = !DILocation(line: 205, column: 35, scope: !4195)
!4195 = !DILexicalBlockFile(scope: !4188, file: !599, discriminator: 4)
!4196 = !DILocation(line: 205, column: 14, scope: !4195)
!4197 = !DILocation(line: 205, column: 33, scope: !4195)
!4198 = !DILocation(line: 205, column: 67, scope: !4195)
!4199 = !DILocation(line: 203, column: 3, scope: !4200)
!4200 = !DILexicalBlockFile(scope: !4189, file: !599, discriminator: 1)
!4201 = !DILocation(line: 208, column: 3, scope: !4159)
!4202 = !DILocation(line: 210, column: 1, scope: !4159)
!4203 = distinct !DISubprogram(name: "version_etc", scope: !599, file: !599, line: 227, type: !4204, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !4030, !29, !29, !29, null}
!4206 = !{!4207, !4208, !4209, !4210, !4211}
!4207 = !DILocalVariable(name: "stream", arg: 1, scope: !4203, file: !599, line: 227, type: !4030)
!4208 = !DILocalVariable(name: "command_name", arg: 2, scope: !4203, file: !599, line: 228, type: !29)
!4209 = !DILocalVariable(name: "package", arg: 3, scope: !4203, file: !599, line: 228, type: !29)
!4210 = !DILocalVariable(name: "version", arg: 4, scope: !4203, file: !599, line: 229, type: !29)
!4211 = !DILocalVariable(name: "authors", scope: !4203, file: !599, line: 231, type: !4212)
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1389, line: 80, baseType: !4213)
!4213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1646, line: 50, baseType: !4214)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !596, line: 231, baseType: !4215)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4163, size: 192, elements: !1444)
!4216 = !DILocation(line: 227, column: 20, scope: !4203)
!4217 = !DILocation(line: 228, column: 26, scope: !4203)
!4218 = !DILocation(line: 228, column: 52, scope: !4203)
!4219 = !DILocation(line: 229, column: 26, scope: !4203)
!4220 = !DILocation(line: 231, column: 3, scope: !4203)
!4221 = !DILocation(line: 231, column: 11, scope: !4203)
!4222 = !DILocation(line: 233, column: 3, scope: !4203)
!4223 = !DILocation(line: 234, column: 3, scope: !4203)
!4224 = !DILocation(line: 235, column: 3, scope: !4203)
!4225 = !DILocation(line: 236, column: 1, scope: !4203)
!4226 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !599, file: !599, line: 239, type: !666, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !98)
!4227 = !DILocation(line: 245, column: 3, scope: !4226)
!4228 = !DILocation(line: 245, column: 3, scope: !4229)
!4229 = !DILexicalBlockFile(scope: !4226, file: !599, discriminator: 1)
!4230 = !DILocation(line: 251, column: 3, scope: !4226)
!4231 = !DILocation(line: 251, column: 3, scope: !4229)
!4232 = !DILocation(line: 256, column: 3, scope: !4226)
!4233 = !DILocation(line: 256, column: 3, scope: !4229)
!4234 = !DILocation(line: 258, column: 1, scope: !4226)
!4235 = distinct !DISubprogram(name: "xnmalloc", scope: !582, file: !582, line: 105, type: !3925, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4236)
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "n", arg: 1, scope: !4235, file: !582, line: 105, type: !33)
!4238 = !DILocalVariable(name: "s", arg: 2, scope: !4235, file: !582, line: 105, type: !33)
!4239 = !DILocation(line: 105, column: 18, scope: !4235)
!4240 = !DILocation(line: 105, column: 28, scope: !4235)
!4241 = !DILocation(line: 107, column: 7, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4235, file: !582, line: 107, column: 7)
!4243 = !DILocation(line: 107, column: 7, scope: !4235)
!4244 = !DILocation(line: 108, column: 5, scope: !4242)
!4245 = !DILocation(line: 109, column: 21, scope: !4235)
!4246 = !DILocalVariable(name: "n", arg: 1, scope: !4247, file: !4248, line: 39, type: !33)
!4247 = distinct !DISubprogram(name: "xmalloc", scope: !4248, file: !4248, line: 39, type: !4249, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4251)
!4248 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!32, !33}
!4251 = !{!4246, !4252}
!4252 = !DILocalVariable(name: "p", scope: !4247, file: !4248, line: 41, type: !32)
!4253 = !DILocation(line: 39, column: 17, scope: !4247, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 109, column: 10, scope: !4235)
!4255 = !DILocation(line: 41, column: 13, scope: !4247, inlinedAt: !4254)
!4256 = !DILocation(line: 41, column: 9, scope: !4247, inlinedAt: !4254)
!4257 = !DILocation(line: 42, column: 8, scope: !4258, inlinedAt: !4254)
!4258 = distinct !DILexicalBlock(scope: !4247, file: !4248, line: 42, column: 7)
!4259 = !DILocation(line: 42, column: 15, scope: !4260, inlinedAt: !4254)
!4260 = !DILexicalBlockFile(scope: !4258, file: !4248, discriminator: 1)
!4261 = !DILocation(line: 42, column: 10, scope: !4258, inlinedAt: !4254)
!4262 = !DILocation(line: 43, column: 5, scope: !4258, inlinedAt: !4254)
!4263 = !DILocation(line: 109, column: 3, scope: !4235)
!4264 = !DILocation(line: 39, column: 17, scope: !4247)
!4265 = !DILocation(line: 41, column: 13, scope: !4247)
!4266 = !DILocation(line: 41, column: 9, scope: !4247)
!4267 = !DILocation(line: 42, column: 8, scope: !4258)
!4268 = !DILocation(line: 42, column: 15, scope: !4260)
!4269 = !DILocation(line: 42, column: 10, scope: !4258)
!4270 = !DILocation(line: 43, column: 5, scope: !4258)
!4271 = !DILocation(line: 44, column: 3, scope: !4247)
!4272 = distinct !DISubprogram(name: "xnrealloc", scope: !582, file: !582, line: 118, type: !3974, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4273)
!4273 = !{!4274, !4275, !4276}
!4274 = !DILocalVariable(name: "p", arg: 1, scope: !4272, file: !582, line: 118, type: !32)
!4275 = !DILocalVariable(name: "n", arg: 2, scope: !4272, file: !582, line: 118, type: !33)
!4276 = !DILocalVariable(name: "s", arg: 3, scope: !4272, file: !582, line: 118, type: !33)
!4277 = !DILocation(line: 118, column: 18, scope: !4272)
!4278 = !DILocation(line: 118, column: 28, scope: !4272)
!4279 = !DILocation(line: 118, column: 38, scope: !4272)
!4280 = !DILocation(line: 120, column: 7, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4272, file: !582, line: 120, column: 7)
!4282 = !DILocation(line: 120, column: 7, scope: !4272)
!4283 = !DILocation(line: 121, column: 5, scope: !4281)
!4284 = !DILocation(line: 122, column: 25, scope: !4272)
!4285 = !DILocalVariable(name: "p", arg: 1, scope: !4286, file: !4248, line: 51, type: !32)
!4286 = distinct !DISubprogram(name: "xrealloc", scope: !4248, file: !4248, line: 51, type: !4287, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4289)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!32, !32, !33}
!4289 = !{!4285, !4290}
!4290 = !DILocalVariable(name: "n", arg: 2, scope: !4286, file: !4248, line: 51, type: !33)
!4291 = !DILocation(line: 51, column: 17, scope: !4286, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 122, column: 10, scope: !4272)
!4293 = !DILocation(line: 51, column: 27, scope: !4286, inlinedAt: !4292)
!4294 = !DILocation(line: 53, column: 8, scope: !4295, inlinedAt: !4292)
!4295 = distinct !DILexicalBlock(scope: !4286, file: !4248, line: 53, column: 7)
!4296 = !DILocation(line: 53, column: 13, scope: !4297, inlinedAt: !4292)
!4297 = !DILexicalBlockFile(scope: !4295, file: !4248, discriminator: 1)
!4298 = !DILocation(line: 53, column: 10, scope: !4295, inlinedAt: !4292)
!4299 = !DILocation(line: 57, column: 7, scope: !4300, inlinedAt: !4292)
!4300 = distinct !DILexicalBlock(scope: !4295, file: !4248, line: 54, column: 5)
!4301 = !DILocation(line: 58, column: 7, scope: !4300, inlinedAt: !4292)
!4302 = !DILocation(line: 61, column: 7, scope: !4286, inlinedAt: !4292)
!4303 = !DILocation(line: 62, column: 8, scope: !4304, inlinedAt: !4292)
!4304 = distinct !DILexicalBlock(scope: !4286, file: !4248, line: 62, column: 7)
!4305 = !DILocation(line: 62, column: 13, scope: !4306, inlinedAt: !4292)
!4306 = !DILexicalBlockFile(scope: !4304, file: !4248, discriminator: 1)
!4307 = !DILocation(line: 62, column: 10, scope: !4304, inlinedAt: !4292)
!4308 = !DILocation(line: 63, column: 5, scope: !4304, inlinedAt: !4292)
!4309 = !DILocation(line: 122, column: 3, scope: !4272)
!4310 = !DILocation(line: 51, column: 17, scope: !4286)
!4311 = !DILocation(line: 51, column: 27, scope: !4286)
!4312 = !DILocation(line: 53, column: 8, scope: !4295)
!4313 = !DILocation(line: 53, column: 13, scope: !4297)
!4314 = !DILocation(line: 53, column: 10, scope: !4295)
!4315 = !DILocation(line: 57, column: 7, scope: !4300)
!4316 = !DILocation(line: 58, column: 7, scope: !4300)
!4317 = !DILocation(line: 61, column: 7, scope: !4286)
!4318 = !DILocation(line: 62, column: 8, scope: !4304)
!4319 = !DILocation(line: 62, column: 13, scope: !4306)
!4320 = !DILocation(line: 62, column: 10, scope: !4304)
!4321 = !DILocation(line: 63, column: 5, scope: !4304)
!4322 = !DILocation(line: 65, column: 1, scope: !4286)
!4323 = !DILocation(line: 180, column: 19, scope: !607)
!4324 = !DILocation(line: 180, column: 30, scope: !607)
!4325 = !DILocation(line: 180, column: 41, scope: !607)
!4326 = !DILocation(line: 182, column: 14, scope: !607)
!4327 = !DILocation(line: 182, column: 10, scope: !607)
!4328 = !DILocation(line: 184, column: 9, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !607, file: !582, line: 184, column: 7)
!4330 = !DILocation(line: 184, column: 7, scope: !607)
!4331 = !DILocation(line: 186, column: 13, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4333, file: !582, line: 186, column: 11)
!4333 = distinct !DILexicalBlock(scope: !4329, file: !582, line: 185, column: 5)
!4334 = !DILocation(line: 186, column: 11, scope: !4333)
!4335 = !DILocation(line: 194, column: 30, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4332, file: !582, line: 187, column: 9)
!4337 = !DILocation(line: 195, column: 16, scope: !4336)
!4338 = !DILocation(line: 195, column: 13, scope: !4336)
!4339 = !DILocation(line: 196, column: 9, scope: !4336)
!4340 = !DILocation(line: 204, column: 69, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !582, line: 204, column: 11)
!4342 = distinct !DILexicalBlock(scope: !4329, file: !582, line: 199, column: 5)
!4343 = !DILocation(line: 205, column: 11, scope: !4341)
!4344 = !DILocation(line: 204, column: 11, scope: !4342)
!4345 = !DILocation(line: 206, column: 9, scope: !4341)
!4346 = !DILocation(line: 210, column: 7, scope: !607)
!4347 = !DILocation(line: 211, column: 25, scope: !607)
!4348 = !DILocation(line: 51, column: 17, scope: !4286, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 211, column: 10, scope: !607)
!4350 = !DILocation(line: 51, column: 27, scope: !4286, inlinedAt: !4349)
!4351 = !DILocation(line: 53, column: 10, scope: !4295, inlinedAt: !4349)
!4352 = !DILocation(line: 207, column: 14, scope: !4342)
!4353 = !DILocation(line: 207, column: 18, scope: !4342)
!4354 = !DILocation(line: 207, column: 9, scope: !4342)
!4355 = !DILocation(line: 53, column: 8, scope: !4295, inlinedAt: !4349)
!4356 = !DILocation(line: 57, column: 7, scope: !4300, inlinedAt: !4349)
!4357 = !DILocation(line: 58, column: 7, scope: !4300, inlinedAt: !4349)
!4358 = !DILocation(line: 61, column: 7, scope: !4286, inlinedAt: !4349)
!4359 = !DILocation(line: 62, column: 8, scope: !4304, inlinedAt: !4349)
!4360 = !DILocation(line: 62, column: 13, scope: !4306, inlinedAt: !4349)
!4361 = !DILocation(line: 62, column: 10, scope: !4304, inlinedAt: !4349)
!4362 = !DILocation(line: 63, column: 5, scope: !4304, inlinedAt: !4349)
!4363 = !DILocation(line: 211, column: 3, scope: !607)
!4364 = distinct !DISubprogram(name: "xcharalloc", scope: !582, file: !582, line: 220, type: !2946, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4365)
!4365 = !{!4366}
!4366 = !DILocalVariable(name: "n", arg: 1, scope: !4364, file: !582, line: 220, type: !33)
!4367 = !DILocation(line: 220, column: 20, scope: !4364)
!4368 = !DILocation(line: 39, column: 17, scope: !4247, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 222, column: 10, scope: !4364)
!4370 = !DILocation(line: 41, column: 13, scope: !4247, inlinedAt: !4369)
!4371 = !DILocation(line: 41, column: 9, scope: !4247, inlinedAt: !4369)
!4372 = !DILocation(line: 42, column: 8, scope: !4258, inlinedAt: !4369)
!4373 = !DILocation(line: 42, column: 15, scope: !4260, inlinedAt: !4369)
!4374 = !DILocation(line: 42, column: 10, scope: !4258, inlinedAt: !4369)
!4375 = !DILocation(line: 43, column: 5, scope: !4258, inlinedAt: !4369)
!4376 = !DILocation(line: 222, column: 3, scope: !4364)
!4377 = distinct !DISubprogram(name: "x2realloc", scope: !4248, file: !4248, line: 74, type: !4378, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!32, !32, !586}
!4380 = !{!4381, !4382}
!4381 = !DILocalVariable(name: "p", arg: 1, scope: !4377, file: !4248, line: 74, type: !32)
!4382 = !DILocalVariable(name: "pn", arg: 2, scope: !4377, file: !4248, line: 74, type: !586)
!4383 = !DILocation(line: 74, column: 18, scope: !4377)
!4384 = !DILocation(line: 74, column: 29, scope: !4377)
!4385 = !DILocation(line: 180, column: 19, scope: !607, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 76, column: 10, scope: !4377)
!4387 = !DILocation(line: 180, column: 30, scope: !607, inlinedAt: !4386)
!4388 = !DILocation(line: 180, column: 41, scope: !607, inlinedAt: !4386)
!4389 = !DILocation(line: 182, column: 14, scope: !607, inlinedAt: !4386)
!4390 = !DILocation(line: 182, column: 10, scope: !607, inlinedAt: !4386)
!4391 = !DILocation(line: 184, column: 9, scope: !4329, inlinedAt: !4386)
!4392 = !DILocation(line: 184, column: 7, scope: !607, inlinedAt: !4386)
!4393 = !DILocation(line: 186, column: 13, scope: !4332, inlinedAt: !4386)
!4394 = !DILocation(line: 186, column: 11, scope: !4333, inlinedAt: !4386)
!4395 = !DILocation(line: 210, column: 7, scope: !607, inlinedAt: !4386)
!4396 = !DILocation(line: 51, column: 17, scope: !4286, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 211, column: 10, scope: !607, inlinedAt: !4386)
!4398 = !DILocation(line: 51, column: 27, scope: !4286, inlinedAt: !4397)
!4399 = !DILocation(line: 53, column: 10, scope: !4295, inlinedAt: !4397)
!4400 = !DILocation(line: 205, column: 11, scope: !4341, inlinedAt: !4386)
!4401 = !DILocation(line: 204, column: 11, scope: !4342, inlinedAt: !4386)
!4402 = !DILocation(line: 206, column: 9, scope: !4341, inlinedAt: !4386)
!4403 = !DILocation(line: 207, column: 14, scope: !4342, inlinedAt: !4386)
!4404 = !DILocation(line: 207, column: 18, scope: !4342, inlinedAt: !4386)
!4405 = !DILocation(line: 207, column: 9, scope: !4342, inlinedAt: !4386)
!4406 = !DILocation(line: 53, column: 8, scope: !4295, inlinedAt: !4397)
!4407 = !DILocation(line: 57, column: 7, scope: !4300, inlinedAt: !4397)
!4408 = !DILocation(line: 58, column: 7, scope: !4300, inlinedAt: !4397)
!4409 = !DILocation(line: 61, column: 7, scope: !4286, inlinedAt: !4397)
!4410 = !DILocation(line: 62, column: 8, scope: !4304, inlinedAt: !4397)
!4411 = !DILocation(line: 62, column: 13, scope: !4306, inlinedAt: !4397)
!4412 = !DILocation(line: 62, column: 10, scope: !4304, inlinedAt: !4397)
!4413 = !DILocation(line: 63, column: 5, scope: !4304, inlinedAt: !4397)
!4414 = !DILocation(line: 76, column: 3, scope: !4377)
!4415 = distinct !DISubprogram(name: "xzalloc", scope: !4248, file: !4248, line: 84, type: !4249, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4416)
!4416 = !{!4417}
!4417 = !DILocalVariable(name: "s", arg: 1, scope: !4415, file: !4248, line: 84, type: !33)
!4418 = !DILocation(line: 84, column: 17, scope: !4415)
!4419 = !DILocation(line: 39, column: 17, scope: !4247, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 86, column: 18, scope: !4415)
!4421 = !DILocation(line: 41, column: 13, scope: !4247, inlinedAt: !4420)
!4422 = !DILocation(line: 41, column: 9, scope: !4247, inlinedAt: !4420)
!4423 = !DILocation(line: 42, column: 8, scope: !4258, inlinedAt: !4420)
!4424 = !DILocation(line: 42, column: 15, scope: !4260, inlinedAt: !4420)
!4425 = !DILocation(line: 42, column: 10, scope: !4258, inlinedAt: !4420)
!4426 = !DILocation(line: 43, column: 5, scope: !4258, inlinedAt: !4420)
!4427 = !DILocation(line: 86, column: 10, scope: !4415)
!4428 = !DILocation(line: 86, column: 3, scope: !4415)
!4429 = distinct !DISubprogram(name: "xcalloc", scope: !4248, file: !4248, line: 93, type: !3925, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4430)
!4430 = !{!4431, !4432, !4433}
!4431 = !DILocalVariable(name: "n", arg: 1, scope: !4429, file: !4248, line: 93, type: !33)
!4432 = !DILocalVariable(name: "s", arg: 2, scope: !4429, file: !4248, line: 93, type: !33)
!4433 = !DILocalVariable(name: "p", scope: !4429, file: !4248, line: 95, type: !32)
!4434 = !DILocation(line: 93, column: 17, scope: !4429)
!4435 = !DILocation(line: 93, column: 27, scope: !4429)
!4436 = !DILocation(line: 100, column: 7, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4429, file: !4248, line: 100, column: 7)
!4438 = !DILocation(line: 101, column: 7, scope: !4437)
!4439 = !DILocation(line: 101, column: 18, scope: !4440)
!4440 = !DILexicalBlockFile(scope: !4437, file: !4248, discriminator: 1)
!4441 = !DILocation(line: 95, column: 9, scope: !4429)
!4442 = !DILocation(line: 101, column: 16, scope: !4440)
!4443 = !DILocation(line: 100, column: 7, scope: !4444)
!4444 = !DILexicalBlockFile(scope: !4429, file: !4248, discriminator: 1)
!4445 = !DILocation(line: 102, column: 5, scope: !4437)
!4446 = !DILocation(line: 103, column: 3, scope: !4429)
!4447 = distinct !DISubprogram(name: "xmemdup", scope: !4248, file: !4248, line: 111, type: !4448, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4450)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!32, !36, !33}
!4450 = !{!4451, !4452}
!4451 = !DILocalVariable(name: "p", arg: 1, scope: !4447, file: !4248, line: 111, type: !36)
!4452 = !DILocalVariable(name: "s", arg: 2, scope: !4447, file: !4248, line: 111, type: !33)
!4453 = !DILocation(line: 111, column: 22, scope: !4447)
!4454 = !DILocation(line: 111, column: 32, scope: !4447)
!4455 = !DILocation(line: 39, column: 17, scope: !4247, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 113, column: 18, scope: !4447)
!4457 = !DILocation(line: 41, column: 13, scope: !4247, inlinedAt: !4456)
!4458 = !DILocation(line: 41, column: 9, scope: !4247, inlinedAt: !4456)
!4459 = !DILocation(line: 42, column: 8, scope: !4258, inlinedAt: !4456)
!4460 = !DILocation(line: 42, column: 15, scope: !4260, inlinedAt: !4456)
!4461 = !DILocation(line: 42, column: 10, scope: !4258, inlinedAt: !4456)
!4462 = !DILocation(line: 43, column: 5, scope: !4258, inlinedAt: !4456)
!4463 = !DILocation(line: 113, column: 10, scope: !4447)
!4464 = !DILocation(line: 113, column: 3, scope: !4447)
!4465 = distinct !DISubprogram(name: "xstrdup", scope: !4248, file: !4248, line: 119, type: !3151, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4466)
!4466 = !{!4467}
!4467 = !DILocalVariable(name: "string", arg: 1, scope: !4465, file: !4248, line: 119, type: !29)
!4468 = !DILocation(line: 119, column: 22, scope: !4465)
!4469 = !DILocation(line: 121, column: 27, scope: !4465)
!4470 = !DILocation(line: 121, column: 43, scope: !4465)
!4471 = !DILocation(line: 111, column: 22, scope: !4447, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 121, column: 10, scope: !4473)
!4473 = !DILexicalBlockFile(scope: !4465, file: !4248, discriminator: 1)
!4474 = !DILocation(line: 111, column: 32, scope: !4447, inlinedAt: !4472)
!4475 = !DILocation(line: 39, column: 17, scope: !4247, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 113, column: 18, scope: !4447, inlinedAt: !4472)
!4477 = !DILocation(line: 41, column: 13, scope: !4247, inlinedAt: !4476)
!4478 = !DILocation(line: 41, column: 9, scope: !4247, inlinedAt: !4476)
!4479 = !DILocation(line: 42, column: 8, scope: !4258, inlinedAt: !4476)
!4480 = !DILocation(line: 42, column: 15, scope: !4260, inlinedAt: !4476)
!4481 = !DILocation(line: 42, column: 10, scope: !4258, inlinedAt: !4476)
!4482 = !DILocation(line: 43, column: 5, scope: !4258, inlinedAt: !4476)
!4483 = !DILocation(line: 113, column: 10, scope: !4447, inlinedAt: !4472)
!4484 = !DILocation(line: 121, column: 3, scope: !4465)
!4485 = distinct !DISubprogram(name: "xalloc_die", scope: !4486, file: !4486, line: 32, type: !666, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !614, variables: !98)
!4486 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4487 = !DILocation(line: 34, column: 10, scope: !4485)
!4488 = !DILocation(line: 34, column: 33, scope: !4485)
!4489 = !DILocation(line: 34, column: 3, scope: !4490)
!4490 = !DILexicalBlockFile(scope: !4485, file: !4486, discriminator: 1)
!4491 = !DILocation(line: 40, column: 3, scope: !4485)
!4492 = distinct !DISubprogram(name: "rpl_calloc", scope: !4493, file: !4493, line: 42, type: !3925, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !4494)
!4493 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4494 = !{!4495, !4496, !4497, !4498}
!4495 = !DILocalVariable(name: "n", arg: 1, scope: !4492, file: !4493, line: 42, type: !33)
!4496 = !DILocalVariable(name: "s", arg: 2, scope: !4492, file: !4493, line: 42, type: !33)
!4497 = !DILocalVariable(name: "result", scope: !4492, file: !4493, line: 44, type: !32)
!4498 = !DILocalVariable(name: "bytes", scope: !4499, file: !4493, line: 56, type: !33)
!4499 = distinct !DILexicalBlock(scope: !4500, file: !4493, line: 53, column: 5)
!4500 = distinct !DILexicalBlock(scope: !4492, file: !4493, line: 47, column: 7)
!4501 = !DILocation(line: 42, column: 20, scope: !4492)
!4502 = !DILocation(line: 42, column: 30, scope: !4492)
!4503 = !DILocation(line: 47, column: 9, scope: !4500)
!4504 = !DILocation(line: 47, column: 19, scope: !4505)
!4505 = !DILexicalBlockFile(scope: !4500, file: !4493, discriminator: 1)
!4506 = !DILocation(line: 47, column: 14, scope: !4500)
!4507 = !DILocation(line: 56, column: 24, scope: !4499)
!4508 = !DILocation(line: 56, column: 14, scope: !4499)
!4509 = !DILocation(line: 57, column: 17, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4499, file: !4493, line: 57, column: 11)
!4511 = !DILocation(line: 57, column: 21, scope: !4510)
!4512 = !DILocation(line: 57, column: 11, scope: !4499)
!4513 = !DILocation(line: 59, column: 11, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4510, file: !4493, line: 58, column: 9)
!4515 = !DILocation(line: 59, column: 17, scope: !4514)
!4516 = !DILocation(line: 65, column: 12, scope: !4492)
!4517 = !DILocation(line: 44, column: 9, scope: !4492)
!4518 = !DILocation(line: 72, column: 3, scope: !4492)
!4519 = !DILocation(line: 73, column: 1, scope: !4492)
!4520 = distinct !DISubprogram(name: "rpl_fclose", scope: !4521, file: !4521, line: 56, type: !4522, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !618, variables: !4564)
!4521 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!69, !4524}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !4526)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4526, file: !1413, line: 242, baseType: !69, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4526, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4526, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4526, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4526, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4526, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4526, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4526, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4526, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4526, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4526, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4526, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4526, file: !1413, line: 260, baseType: !4541, size: 64, offset: 768)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !4543)
!4543 = !{!4544, !4545, !4547}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4542, file: !1413, line: 157, baseType: !4541, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4542, file: !1413, line: 158, baseType: !4546, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4542, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4526, file: !1413, line: 262, baseType: !4546, size: 64, offset: 832)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4526, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4526, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4526, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4526, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4526, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4526, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4526, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4526, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4526, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4526, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4526, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4526, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4526, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4526, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4526, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!4564 = !{!4565, !4566, !4567, !4568}
!4565 = !DILocalVariable(name: "fp", arg: 1, scope: !4520, file: !4521, line: 56, type: !4524)
!4566 = !DILocalVariable(name: "saved_errno", scope: !4520, file: !4521, line: 58, type: !69)
!4567 = !DILocalVariable(name: "fd", scope: !4520, file: !4521, line: 59, type: !69)
!4568 = !DILocalVariable(name: "result", scope: !4520, file: !4521, line: 60, type: !69)
!4569 = !DILocation(line: 56, column: 19, scope: !4520)
!4570 = !DILocation(line: 58, column: 7, scope: !4520)
!4571 = !DILocation(line: 60, column: 7, scope: !4520)
!4572 = !DILocation(line: 63, column: 8, scope: !4520)
!4573 = !DILocation(line: 59, column: 7, scope: !4520)
!4574 = !DILocation(line: 64, column: 10, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 64, column: 7)
!4576 = !DILocation(line: 64, column: 7, scope: !4520)
!4577 = !DILocation(line: 65, column: 12, scope: !4575)
!4578 = !DILocation(line: 65, column: 5, scope: !4575)
!4579 = !DILocation(line: 70, column: 9, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 70, column: 7)
!4581 = !DILocation(line: 70, column: 23, scope: !4580)
!4582 = !DILocation(line: 70, column: 33, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !4580, file: !4521, discriminator: 1)
!4584 = !DILocation(line: 70, column: 26, scope: !4585)
!4585 = !DILexicalBlockFile(scope: !4580, file: !4521, discriminator: 3)
!4586 = !DILocation(line: 70, column: 59, scope: !4583)
!4587 = !DILocation(line: 71, column: 7, scope: !4580)
!4588 = !DILocation(line: 71, column: 10, scope: !4583)
!4589 = !DILocation(line: 70, column: 7, scope: !4590)
!4590 = !DILexicalBlockFile(scope: !4520, file: !4521, discriminator: 2)
!4591 = !DILocation(line: 98, column: 12, scope: !4520)
!4592 = !DILocation(line: 103, column: 7, scope: !4520)
!4593 = !DILocation(line: 72, column: 19, scope: !4580)
!4594 = !DILocation(line: 103, column: 19, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 103, column: 7)
!4596 = !DILocation(line: 105, column: 13, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4595, file: !4521, line: 104, column: 5)
!4598 = !DILocation(line: 107, column: 5, scope: !4597)
!4599 = !DILocation(line: 110, column: 1, scope: !4520)
!4600 = distinct !DISubprogram(name: "rpl_fflush", scope: !4601, file: !4601, line: 127, type: !4602, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4644)
!4601 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!69, !4604}
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !4606)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !4607)
!4607 = !{!4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4606, file: !1413, line: 242, baseType: !69, size: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4606, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4606, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4606, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4606, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4606, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4606, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4606, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4606, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4606, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4606, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4606, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4606, file: !1413, line: 260, baseType: !4621, size: 64, offset: 768)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !4623)
!4623 = !{!4624, !4625, !4627}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4622, file: !1413, line: 157, baseType: !4621, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4622, file: !1413, line: 158, baseType: !4626, size: 64, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4622, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4606, file: !1413, line: 262, baseType: !4626, size: 64, offset: 832)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4606, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4606, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4606, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4606, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4606, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4606, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4606, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4606, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4606, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4606, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4606, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4606, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4606, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4606, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4606, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!4644 = !{!4645}
!4645 = !DILocalVariable(name: "stream", arg: 1, scope: !4600, file: !4601, line: 127, type: !4604)
!4646 = !DILocation(line: 127, column: 19, scope: !4600)
!4647 = !DILocation(line: 148, column: 14, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4600, file: !4601, line: 148, column: 7)
!4649 = !DILocation(line: 148, column: 22, scope: !4648)
!4650 = !DILocation(line: 148, column: 27, scope: !4651)
!4651 = !DILexicalBlockFile(scope: !4648, file: !4601, discriminator: 1)
!4652 = !DILocation(line: 148, column: 7, scope: !4653)
!4653 = !DILexicalBlockFile(scope: !4600, file: !4601, discriminator: 1)
!4654 = !DILocation(line: 149, column: 12, scope: !4648)
!4655 = !DILocation(line: 149, column: 5, scope: !4648)
!4656 = !DILocalVariable(name: "fp", arg: 1, scope: !4657, file: !4601, line: 40, type: !4604)
!4657 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4601, file: !4601, line: 40, type: !4658, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4660)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !4604}
!4660 = !{!4656}
!4661 = !DILocation(line: 40, column: 48, scope: !4657, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 153, column: 3, scope: !4600)
!4663 = !DILocation(line: 42, column: 11, scope: !4664, inlinedAt: !4662)
!4664 = distinct !DILexicalBlock(scope: !4657, file: !4601, line: 42, column: 7)
!4665 = !{!3794, !726, i64 0}
!4666 = !DILocation(line: 42, column: 18, scope: !4664, inlinedAt: !4662)
!4667 = !DILocation(line: 42, column: 7, scope: !4657, inlinedAt: !4662)
!4668 = !DILocation(line: 44, column: 5, scope: !4664, inlinedAt: !4662)
!4669 = !DILocation(line: 155, column: 10, scope: !4600)
!4670 = !DILocation(line: 155, column: 3, scope: !4600)
!4671 = !DILocation(line: 229, column: 1, scope: !4600)
!4672 = distinct !DISubprogram(name: "rpl_freopen", scope: !4673, file: !4673, line: 47, type: !4674, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !4716)
!4673 = !DIFile(filename: "lib/freopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!4676, !29, !29, !4676}
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !4678)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !4679)
!4679 = !{!4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4678, file: !1413, line: 242, baseType: !69, size: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4678, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4678, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4678, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4678, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4678, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4678, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4678, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4678, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4678, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4678, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4678, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4678, file: !1413, line: 260, baseType: !4693, size: 64, offset: 768)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !4695)
!4695 = !{!4696, !4697, !4699}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4694, file: !1413, line: 157, baseType: !4693, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4694, file: !1413, line: 158, baseType: !4698, size: 64, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4694, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4678, file: !1413, line: 262, baseType: !4698, size: 64, offset: 832)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4678, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4678, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4678, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4678, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4678, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4678, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4678, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4678, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4678, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4678, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4678, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4678, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4678, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4678, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4678, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!4716 = !{!4717, !4718, !4719, !4720, !4721, !4722, !4726, !4729}
!4717 = !DILocalVariable(name: "filename", arg: 1, scope: !4672, file: !4673, line: 47, type: !29)
!4718 = !DILocalVariable(name: "mode", arg: 2, scope: !4672, file: !4673, line: 47, type: !29)
!4719 = !DILocalVariable(name: "stream", arg: 3, scope: !4672, file: !4673, line: 47, type: !4676)
!4720 = !DILocalVariable(name: "result", scope: !4672, file: !4673, line: 49, type: !4676)
!4721 = !DILocalVariable(name: "null_device", scope: !4672, file: !4673, line: 55, type: !29)
!4722 = !DILocalVariable(name: "fd", scope: !4723, file: !4673, line: 75, type: !69)
!4723 = distinct !DILexicalBlock(scope: !4724, file: !4673, line: 74, column: 5)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !4673, line: 73, column: 12)
!4725 = distinct !DILexicalBlock(scope: !4672, file: !4673, line: 64, column: 7)
!4726 = !DILocalVariable(name: "nullfd", scope: !4727, file: !4673, line: 78, type: !69)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !4673, line: 77, column: 9)
!4728 = distinct !DILexicalBlock(scope: !4723, file: !4673, line: 76, column: 11)
!4729 = !DILocalVariable(name: "err", scope: !4727, file: !4673, line: 79, type: !69)
!4730 = !DILocation(line: 47, column: 26, scope: !4672)
!4731 = !DILocation(line: 47, column: 48, scope: !4672)
!4732 = !DILocation(line: 47, column: 60, scope: !4672)
!4733 = !DILocalVariable(name: "filename", arg: 1, scope: !4734, file: !4673, line: 32, type: !29)
!4734 = distinct !DISubprogram(name: "orig_freopen", scope: !4673, file: !4673, line: 32, type: !4674, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !4735)
!4735 = !{!4733, !4736, !4737}
!4736 = !DILocalVariable(name: "mode", arg: 2, scope: !4734, file: !4673, line: 32, type: !29)
!4737 = !DILocalVariable(name: "stream", arg: 3, scope: !4734, file: !4673, line: 32, type: !4676)
!4738 = !DILocation(line: 32, column: 27, scope: !4734, inlinedAt: !4739)
!4739 = distinct !DILocation(line: 62, column: 12, scope: !4672)
!4740 = !DILocation(line: 32, column: 49, scope: !4734, inlinedAt: !4739)
!4741 = !DILocation(line: 32, column: 61, scope: !4734, inlinedAt: !4739)
!4742 = !DILocation(line: 34, column: 10, scope: !4734, inlinedAt: !4739)
!4743 = !DILocation(line: 49, column: 9, scope: !4672)
!4744 = !DILocation(line: 64, column: 8, scope: !4725)
!4745 = !DILocation(line: 73, column: 12, scope: !4724)
!4746 = !DILocation(line: 64, column: 7, scope: !4672)
!4747 = !DILocation(line: 75, column: 16, scope: !4723)
!4748 = !DILocation(line: 75, column: 11, scope: !4723)
!4749 = !DILocation(line: 76, column: 11, scope: !4728)
!4750 = !DILocation(line: 76, column: 25, scope: !4728)
!4751 = !DILocation(line: 76, column: 29, scope: !4728)
!4752 = !DILocation(line: 76, column: 32, scope: !4753)
!4753 = !DILexicalBlockFile(scope: !4728, file: !4673, discriminator: 1)
!4754 = !DILocation(line: 76, column: 38, scope: !4753)
!4755 = !DILocation(line: 76, column: 11, scope: !4756)
!4756 = !DILexicalBlockFile(scope: !4723, file: !4673, discriminator: 1)
!4757 = !DILocation(line: 78, column: 24, scope: !4727)
!4758 = !DILocation(line: 78, column: 15, scope: !4727)
!4759 = !DILocation(line: 79, column: 15, scope: !4727)
!4760 = !DILocation(line: 80, column: 22, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4727, file: !4673, line: 80, column: 15)
!4762 = !DILocation(line: 80, column: 15, scope: !4727)
!4763 = !DILocation(line: 82, column: 19, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !4673, line: 82, column: 19)
!4765 = distinct !DILexicalBlock(scope: !4761, file: !4673, line: 81, column: 13)
!4766 = !DILocation(line: 82, column: 37, scope: !4764)
!4767 = !DILocation(line: 84, column: 15, scope: !4765)
!4768 = !DILocation(line: 32, column: 27, scope: !4734, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 87, column: 22, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4727, file: !4673, line: 86, column: 15)
!4771 = !DILocation(line: 32, column: 49, scope: !4734, inlinedAt: !4769)
!4772 = !DILocation(line: 32, column: 61, scope: !4734, inlinedAt: !4769)
!4773 = !DILocation(line: 34, column: 10, scope: !4734, inlinedAt: !4769)
!4774 = !DILocation(line: 87, column: 13, scope: !4770)
!4775 = !DILocation(line: 91, column: 3, scope: !4672)
!4776 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4777, file: !4777, line: 28, type: !4778, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !4820)
!4777 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!69, !4780, !1388, !69}
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !4782)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !4783)
!4783 = !{!4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4782, file: !1413, line: 242, baseType: !69, size: 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4782, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4782, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4782, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4782, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4782, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4782, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4782, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4782, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4782, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4782, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4782, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4782, file: !1413, line: 260, baseType: !4797, size: 64, offset: 768)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !4799)
!4799 = !{!4800, !4801, !4803}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4798, file: !1413, line: 157, baseType: !4797, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4798, file: !1413, line: 158, baseType: !4802, size: 64, offset: 64)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4798, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4782, file: !1413, line: 262, baseType: !4802, size: 64, offset: 832)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4782, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4782, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4782, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4782, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4782, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4782, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4782, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4782, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4782, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4782, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4782, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4782, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4782, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4782, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4782, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!4820 = !{!4821, !4822, !4823, !4824}
!4821 = !DILocalVariable(name: "fp", arg: 1, scope: !4776, file: !4777, line: 28, type: !4780)
!4822 = !DILocalVariable(name: "offset", arg: 2, scope: !4776, file: !4777, line: 28, type: !1388)
!4823 = !DILocalVariable(name: "whence", arg: 3, scope: !4776, file: !4777, line: 28, type: !69)
!4824 = !DILocalVariable(name: "pos", scope: !4825, file: !4777, line: 116, type: !1388)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !4777, line: 112, column: 5)
!4826 = distinct !DILexicalBlock(scope: !4776, file: !4777, line: 51, column: 7)
!4827 = !DILocation(line: 28, column: 15, scope: !4776)
!4828 = !DILocation(line: 28, column: 25, scope: !4776)
!4829 = !DILocation(line: 28, column: 37, scope: !4776)
!4830 = !DILocation(line: 51, column: 11, scope: !4826)
!4831 = !DILocation(line: 51, column: 31, scope: !4826)
!4832 = !DILocation(line: 51, column: 24, scope: !4826)
!4833 = !DILocation(line: 52, column: 7, scope: !4826)
!4834 = !DILocation(line: 52, column: 14, scope: !4835)
!4835 = !DILexicalBlockFile(scope: !4826, file: !4777, discriminator: 1)
!4836 = !{!3794, !653, i64 40}
!4837 = !DILocation(line: 52, column: 35, scope: !4835)
!4838 = !{!3794, !653, i64 32}
!4839 = !DILocation(line: 52, column: 28, scope: !4835)
!4840 = !DILocation(line: 53, column: 7, scope: !4826)
!4841 = !DILocation(line: 53, column: 14, scope: !4835)
!4842 = !{!3794, !653, i64 72}
!4843 = !DILocation(line: 53, column: 28, scope: !4835)
!4844 = !DILocation(line: 51, column: 7, scope: !4845)
!4845 = !DILexicalBlockFile(scope: !4776, file: !4777, discriminator: 1)
!4846 = !DILocation(line: 116, column: 26, scope: !4825)
!4847 = !DILocation(line: 116, column: 19, scope: !4848)
!4848 = !DILexicalBlockFile(scope: !4825, file: !4777, discriminator: 1)
!4849 = !DILocation(line: 116, column: 13, scope: !4825)
!4850 = !DILocation(line: 117, column: 15, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4825, file: !4777, line: 117, column: 11)
!4852 = !DILocation(line: 117, column: 11, scope: !4825)
!4853 = !DILocation(line: 127, column: 11, scope: !4825)
!4854 = !DILocation(line: 127, column: 18, scope: !4825)
!4855 = !DILocation(line: 128, column: 11, scope: !4825)
!4856 = !DILocation(line: 128, column: 19, scope: !4825)
!4857 = !{!3794, !841, i64 144}
!4858 = !DILocation(line: 159, column: 7, scope: !4825)
!4859 = !DILocation(line: 161, column: 10, scope: !4776)
!4860 = !DILocation(line: 161, column: 3, scope: !4776)
!4861 = !DILocation(line: 162, column: 1, scope: !4776)
!4862 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4863, file: !4863, line: 334, type: !4864, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4878)
!4863 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!33, !4866, !29, !33, !4867}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1917, line: 107, baseType: !4869)
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1917, line: 95, baseType: !4870)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1917, line: 83, size: 64, elements: !4871)
!4871 = !{!4872, !4873}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4870, file: !1917, line: 85, baseType: !69, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4870, file: !1917, line: 94, baseType: !4874, size: 32, offset: 32)
!4874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4870, file: !1917, line: 86, size: 32, elements: !4875)
!4875 = !{!4876, !4877}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4874, file: !1917, line: 89, baseType: !185, size: 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4874, file: !1917, line: 93, baseType: !1927, size: 32)
!4878 = !{!4879, !4880, !4881, !4882, !4883, !4884, !4885}
!4879 = !DILocalVariable(name: "pwc", arg: 1, scope: !4862, file: !4863, line: 334, type: !4866)
!4880 = !DILocalVariable(name: "s", arg: 2, scope: !4862, file: !4863, line: 334, type: !29)
!4881 = !DILocalVariable(name: "n", arg: 3, scope: !4862, file: !4863, line: 334, type: !33)
!4882 = !DILocalVariable(name: "ps", arg: 4, scope: !4862, file: !4863, line: 334, type: !4867)
!4883 = !DILocalVariable(name: "ret", scope: !4862, file: !4863, line: 336, type: !33)
!4884 = !DILocalVariable(name: "wc", scope: !4862, file: !4863, line: 337, type: !1932)
!4885 = !DILocalVariable(name: "uc", scope: !4886, file: !4863, line: 398, type: !40)
!4886 = distinct !DILexicalBlock(scope: !4887, file: !4863, line: 397, column: 5)
!4887 = distinct !DILexicalBlock(scope: !4862, file: !4863, line: 396, column: 7)
!4888 = !DILocation(line: 334, column: 23, scope: !4862)
!4889 = !DILocation(line: 334, column: 40, scope: !4862)
!4890 = !DILocation(line: 334, column: 50, scope: !4862)
!4891 = !DILocation(line: 334, column: 64, scope: !4862)
!4892 = !DILocation(line: 337, column: 3, scope: !4862)
!4893 = !DILocation(line: 353, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4862, file: !4863, line: 353, column: 7)
!4895 = !DILocation(line: 353, column: 7, scope: !4862)
!4896 = !DILocation(line: 388, column: 9, scope: !4862)
!4897 = !DILocation(line: 336, column: 10, scope: !4862)
!4898 = !DILocation(line: 396, column: 19, scope: !4887)
!4899 = !DILocation(line: 396, column: 31, scope: !4900)
!4900 = !DILexicalBlockFile(scope: !4887, file: !4863, discriminator: 1)
!4901 = !DILocation(line: 396, column: 26, scope: !4887)
!4902 = !DILocation(line: 396, column: 41, scope: !4903)
!4903 = !DILexicalBlockFile(scope: !4887, file: !4863, discriminator: 2)
!4904 = !DILocation(line: 396, column: 7, scope: !4905)
!4905 = !DILexicalBlockFile(scope: !4862, file: !4863, discriminator: 2)
!4906 = !DILocation(line: 398, column: 26, scope: !4886)
!4907 = !DILocation(line: 398, column: 21, scope: !4886)
!4908 = !DILocation(line: 399, column: 14, scope: !4886)
!4909 = !DILocation(line: 399, column: 12, scope: !4886)
!4910 = !DILocation(line: 405, column: 1, scope: !4862)
!4911 = distinct !DISubprogram(name: "close_stream", scope: !4912, file: !4912, line: 56, type: !4913, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !4955)
!4912 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!69, !4915}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !4917)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !4918)
!4918 = !{!4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4917, file: !1413, line: 242, baseType: !69, size: 32)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4917, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4917, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4917, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4917, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4917, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4917, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4917, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4917, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4917, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4917, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4917, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4917, file: !1413, line: 260, baseType: !4932, size: 64, offset: 768)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !4934)
!4934 = !{!4935, !4936, !4938}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4933, file: !1413, line: 157, baseType: !4932, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4933, file: !1413, line: 158, baseType: !4937, size: 64, offset: 64)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4933, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4917, file: !1413, line: 262, baseType: !4937, size: 64, offset: 832)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4917, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4917, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4917, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4917, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4917, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4917, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4917, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4917, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4917, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4917, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4917, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4917, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4917, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4917, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4917, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!4955 = !{!4956, !4957, !4959, !4960}
!4956 = !DILocalVariable(name: "stream", arg: 1, scope: !4911, file: !4912, line: 56, type: !4915)
!4957 = !DILocalVariable(name: "some_pending", scope: !4911, file: !4912, line: 58, type: !4958)
!4958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!4959 = !DILocalVariable(name: "prev_fail", scope: !4911, file: !4912, line: 59, type: !4958)
!4960 = !DILocalVariable(name: "fclose_fail", scope: !4911, file: !4912, line: 60, type: !4958)
!4961 = !DILocation(line: 56, column: 21, scope: !4911)
!4962 = !DILocation(line: 58, column: 30, scope: !4911)
!4963 = !DILocalVariable(name: "__stream", arg: 1, scope: !4964, file: !3778, line: 132, type: !4915)
!4964 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3778, file: !3778, line: 132, type: !4913, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !4965)
!4965 = !{!4963}
!4966 = !DILocation(line: 132, column: 1, scope: !4964, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 59, column: 27, scope: !4911)
!4968 = !DILocation(line: 134, column: 10, scope: !4964, inlinedAt: !4967)
!4969 = !DILocation(line: 59, column: 43, scope: !4911)
!4970 = !DILocation(line: 60, column: 29, scope: !4911)
!4971 = !DILocation(line: 60, column: 45, scope: !4911)
!4972 = !DILocation(line: 70, column: 17, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4911, file: !4912, line: 70, column: 7)
!4974 = !DILocation(line: 70, column: 33, scope: !4975)
!4975 = !DILexicalBlockFile(scope: !4973, file: !4912, discriminator: 1)
!4976 = !DILocation(line: 70, column: 53, scope: !4977)
!4977 = !DILexicalBlockFile(scope: !4973, file: !4912, discriminator: 3)
!4978 = !DILocation(line: 70, column: 7, scope: !4979)
!4979 = !DILexicalBlockFile(scope: !4911, file: !4912, discriminator: 3)
!4980 = !DILocation(line: 72, column: 11, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4973, file: !4912, line: 71, column: 5)
!4982 = !DILocation(line: 73, column: 9, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4981, file: !4912, line: 72, column: 11)
!4984 = !DILocation(line: 73, column: 15, scope: !4983)
!4985 = !DILocation(line: 78, column: 1, scope: !4911)
!4986 = distinct !DISubprogram(name: "hard_locale", scope: !4987, file: !4987, line: 38, type: !1553, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !631, variables: !4988)
!4987 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4988 = !{!4989, !4990, !4991, !4992, !4999, !5000, !5002, !5003, !5005, !5006, !5008}
!4989 = !DILocalVariable(name: "category", arg: 1, scope: !4986, file: !4987, line: 38, type: !69)
!4990 = !DILocalVariable(name: "hard", scope: !4986, file: !4987, line: 40, type: !108)
!4991 = !DILocalVariable(name: "p", scope: !4986, file: !4987, line: 41, type: !29)
!4992 = !DILocalVariable(name: "__s1_len", scope: !4993, file: !4987, line: 47, type: !33)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !4987, line: 47, column: 15)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !4987, line: 47, column: 15)
!4995 = distinct !DILexicalBlock(scope: !4996, file: !4987, line: 46, column: 9)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !4987, line: 45, column: 11)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !4987, line: 44, column: 5)
!4998 = distinct !DILexicalBlock(scope: !4986, file: !4987, line: 43, column: 7)
!4999 = !DILocalVariable(name: "__s2_len", scope: !4993, file: !4987, line: 47, type: !33)
!5000 = !DILocalVariable(name: "__s2", scope: !5001, file: !4987, line: 47, type: !38)
!5001 = distinct !DILexicalBlock(scope: !4993, file: !4987, line: 47, column: 15)
!5002 = !DILocalVariable(name: "__result", scope: !5001, file: !4987, line: 47, type: !69)
!5003 = !DILocalVariable(name: "__s1_len", scope: !5004, file: !4987, line: 47, type: !33)
!5004 = distinct !DILexicalBlock(scope: !4994, file: !4987, line: 47, column: 39)
!5005 = !DILocalVariable(name: "__s2_len", scope: !5004, file: !4987, line: 47, type: !33)
!5006 = !DILocalVariable(name: "__s2", scope: !5007, file: !4987, line: 47, type: !38)
!5007 = distinct !DILexicalBlock(scope: !5004, file: !4987, line: 47, column: 39)
!5008 = !DILocalVariable(name: "__result", scope: !5007, file: !4987, line: 47, type: !69)
!5009 = !DILocation(line: 38, column: 18, scope: !4986)
!5010 = !DILocation(line: 40, column: 8, scope: !4986)
!5011 = !DILocation(line: 41, column: 19, scope: !4986)
!5012 = !DILocation(line: 41, column: 15, scope: !4986)
!5013 = !DILocation(line: 43, column: 7, scope: !4998)
!5014 = !DILocation(line: 43, column: 7, scope: !4986)
!5015 = !DILocation(line: 47, column: 15, scope: !4993)
!5016 = !DILocation(line: 47, column: 15, scope: !5001)
!5017 = !DILocation(line: 47, column: 15, scope: !5018)
!5018 = !DILexicalBlockFile(scope: !5001, file: !4987, discriminator: 2)
!5019 = !DILocation(line: 47, column: 15, scope: !5020)
!5020 = !DILexicalBlockFile(scope: !5021, file: !4987, discriminator: 3)
!5021 = distinct !DILexicalBlock(scope: !5001, file: !4987, line: 47, column: 15)
!5022 = !DILocation(line: 47, column: 15, scope: !5023)
!5023 = !DILexicalBlockFile(scope: !5021, file: !4987, discriminator: 2)
!5024 = !DILocation(line: 47, column: 15, scope: !5025)
!5025 = !DILexicalBlockFile(scope: !5026, file: !4987, discriminator: 4)
!5026 = distinct !DILexicalBlock(scope: !5021, file: !4987, line: 47, column: 15)
!5027 = !DILocation(line: 47, column: 15, scope: !5028)
!5028 = !DILexicalBlockFile(scope: !4993, file: !4987, discriminator: 11)
!5029 = !DILocation(line: 47, column: 36, scope: !5030)
!5030 = !DILexicalBlockFile(scope: !4994, file: !4987, discriminator: 13)
!5031 = !DILocation(line: 47, column: 39, scope: !5004)
!5032 = !DILocation(line: 47, column: 39, scope: !5033)
!5033 = !DILexicalBlockFile(scope: !5004, file: !4987, discriminator: 26)
!5034 = !DILocation(line: 47, column: 59, scope: !5035)
!5035 = !DILexicalBlockFile(scope: !4994, file: !4987, discriminator: 27)
!5036 = !DILocation(line: 47, column: 15, scope: !5037)
!5037 = !DILexicalBlockFile(scope: !4995, file: !4987, discriminator: 27)
!5038 = !DILocation(line: 48, column: 13, scope: !4994)
!5039 = !DILocation(line: 71, column: 3, scope: !4986)
!5040 = distinct !DISubprogram(name: "locale_charset", scope: !567, file: !567, line: 393, type: !5041, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!29}
!5043 = !{!5044, !5045, !5046, !5051}
!5044 = !DILocalVariable(name: "codeset", scope: !5040, file: !567, line: 395, type: !29)
!5045 = !DILocalVariable(name: "aliases", scope: !5040, file: !567, line: 396, type: !29)
!5046 = !DILocalVariable(name: "__s1_len", scope: !5047, file: !567, line: 592, type: !33)
!5047 = distinct !DILexicalBlock(scope: !5048, file: !567, line: 592, column: 9)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !567, line: 592, column: 9)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !567, line: 589, column: 3)
!5050 = distinct !DILexicalBlock(scope: !5040, file: !567, line: 589, column: 3)
!5051 = !DILocalVariable(name: "__s2_len", scope: !5047, file: !567, line: 592, type: !33)
!5052 = !DILocalVariable(name: "buf1", scope: !5053, file: !567, line: 196, type: !5120)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !567, line: 194, column: 21)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !567, line: 193, column: 19)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !567, line: 193, column: 19)
!5056 = distinct !DILexicalBlock(scope: !5057, file: !567, line: 188, column: 17)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !567, line: 181, column: 19)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !567, line: 177, column: 13)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !567, line: 173, column: 15)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !567, line: 161, column: 9)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !567, line: 157, column: 11)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !567, line: 130, column: 5)
!5063 = distinct !DILexicalBlock(scope: !5064, file: !567, line: 129, column: 7)
!5064 = distinct !DISubprogram(name: "get_charset_aliases", scope: !567, file: !567, line: 124, type: !5041, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !5065)
!5065 = !{!5066, !5067, !5068, !5069, !5070, !5072, !5073, !5074, !5075, !5116, !5117, !5118, !5052, !5119, !5123, !5124, !5125}
!5066 = !DILocalVariable(name: "cp", scope: !5064, file: !567, line: 126, type: !29)
!5067 = !DILocalVariable(name: "dir", scope: !5062, file: !567, line: 132, type: !29)
!5068 = !DILocalVariable(name: "base", scope: !5062, file: !567, line: 133, type: !29)
!5069 = !DILocalVariable(name: "file_name", scope: !5062, file: !567, line: 134, type: !139)
!5070 = !DILocalVariable(name: "dir_len", scope: !5071, file: !567, line: 144, type: !33)
!5071 = distinct !DILexicalBlock(scope: !5062, file: !567, line: 143, column: 7)
!5072 = !DILocalVariable(name: "base_len", scope: !5071, file: !567, line: 145, type: !33)
!5073 = !DILocalVariable(name: "add_slash", scope: !5071, file: !567, line: 146, type: !69)
!5074 = !DILocalVariable(name: "fd", scope: !5060, file: !567, line: 162, type: !69)
!5075 = !DILocalVariable(name: "fp", scope: !5058, file: !567, line: 178, type: !5076)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1389, line: 49, baseType: !5078)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1413, line: 241, size: 1728, elements: !5079)
!5079 = !{!5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5078, file: !1413, line: 242, baseType: !69, size: 32)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5078, file: !1413, line: 247, baseType: !139, size: 64, offset: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5078, file: !1413, line: 248, baseType: !139, size: 64, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5078, file: !1413, line: 249, baseType: !139, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5078, file: !1413, line: 250, baseType: !139, size: 64, offset: 256)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5078, file: !1413, line: 251, baseType: !139, size: 64, offset: 320)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5078, file: !1413, line: 252, baseType: !139, size: 64, offset: 384)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5078, file: !1413, line: 253, baseType: !139, size: 64, offset: 448)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5078, file: !1413, line: 254, baseType: !139, size: 64, offset: 512)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5078, file: !1413, line: 256, baseType: !139, size: 64, offset: 576)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5078, file: !1413, line: 257, baseType: !139, size: 64, offset: 640)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5078, file: !1413, line: 258, baseType: !139, size: 64, offset: 704)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5078, file: !1413, line: 260, baseType: !5093, size: 64, offset: 768)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1413, line: 156, size: 192, elements: !5095)
!5095 = !{!5096, !5097, !5099}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5094, file: !1413, line: 157, baseType: !5093, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5094, file: !1413, line: 158, baseType: !5098, size: 64, offset: 64)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5094, file: !1413, line: 162, baseType: !69, size: 32, offset: 128)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5078, file: !1413, line: 262, baseType: !5098, size: 64, offset: 832)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5078, file: !1413, line: 264, baseType: !69, size: 32, offset: 896)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5078, file: !1413, line: 268, baseType: !69, size: 32, offset: 928)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5078, file: !1413, line: 270, baseType: !1390, size: 64, offset: 960)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5078, file: !1413, line: 274, baseType: !168, size: 16, offset: 1024)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5078, file: !1413, line: 275, baseType: !1441, size: 8, offset: 1040)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5078, file: !1413, line: 276, baseType: !1443, size: 8, offset: 1048)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5078, file: !1413, line: 280, baseType: !1447, size: 64, offset: 1088)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5078, file: !1413, line: 289, baseType: !1450, size: 64, offset: 1152)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5078, file: !1413, line: 297, baseType: !32, size: 64, offset: 1216)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5078, file: !1413, line: 298, baseType: !32, size: 64, offset: 1280)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5078, file: !1413, line: 299, baseType: !32, size: 64, offset: 1344)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5078, file: !1413, line: 300, baseType: !32, size: 64, offset: 1408)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5078, file: !1413, line: 302, baseType: !33, size: 64, offset: 1472)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5078, file: !1413, line: 303, baseType: !69, size: 32, offset: 1536)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5078, file: !1413, line: 305, baseType: !1458, size: 160, offset: 1568)
!5116 = !DILocalVariable(name: "res_ptr", scope: !5056, file: !567, line: 190, type: !139)
!5117 = !DILocalVariable(name: "res_size", scope: !5056, file: !567, line: 191, type: !33)
!5118 = !DILocalVariable(name: "c", scope: !5053, file: !567, line: 195, type: !69)
!5119 = !DILocalVariable(name: "buf2", scope: !5053, file: !567, line: 197, type: !5120)
!5120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 408, elements: !5121)
!5121 = !{!5122}
!5122 = !DISubrange(count: 51)
!5123 = !DILocalVariable(name: "l1", scope: !5053, file: !567, line: 198, type: !33)
!5124 = !DILocalVariable(name: "l2", scope: !5053, file: !567, line: 198, type: !33)
!5125 = !DILocalVariable(name: "old_res_ptr", scope: !5053, file: !567, line: 199, type: !139)
!5126 = !DILocation(line: 196, column: 28, scope: !5053, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 589, column: 18, scope: !5050)
!5128 = !DILocation(line: 197, column: 28, scope: !5053, inlinedAt: !5127)
!5129 = !DILocation(line: 403, column: 13, scope: !5040)
!5130 = !DILocation(line: 395, column: 15, scope: !5040)
!5131 = !DILocation(line: 584, column: 15, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5040, file: !567, line: 584, column: 7)
!5133 = !DILocation(line: 584, column: 7, scope: !5040)
!5134 = !DILocation(line: 128, column: 8, scope: !5064, inlinedAt: !5127)
!5135 = !DILocation(line: 126, column: 15, scope: !5064, inlinedAt: !5127)
!5136 = !DILocation(line: 129, column: 10, scope: !5063, inlinedAt: !5127)
!5137 = !DILocation(line: 129, column: 7, scope: !5064, inlinedAt: !5127)
!5138 = !DILocation(line: 138, column: 13, scope: !5062, inlinedAt: !5127)
!5139 = !DILocation(line: 132, column: 19, scope: !5062, inlinedAt: !5127)
!5140 = !DILocation(line: 139, column: 15, scope: !5141, inlinedAt: !5127)
!5141 = distinct !DILexicalBlock(scope: !5062, file: !567, line: 139, column: 11)
!5142 = !DILocation(line: 139, column: 23, scope: !5141, inlinedAt: !5127)
!5143 = !DILocation(line: 139, column: 26, scope: !5144, inlinedAt: !5127)
!5144 = !DILexicalBlockFile(scope: !5141, file: !567, discriminator: 1)
!5145 = !DILocation(line: 139, column: 33, scope: !5144, inlinedAt: !5127)
!5146 = !DILocation(line: 139, column: 11, scope: !5147, inlinedAt: !5127)
!5147 = !DILexicalBlockFile(scope: !5062, file: !567, discriminator: 1)
!5148 = !DILocation(line: 140, column: 9, scope: !5141, inlinedAt: !5127)
!5149 = !DILocation(line: 144, column: 26, scope: !5071, inlinedAt: !5127)
!5150 = !DILocation(line: 144, column: 16, scope: !5071, inlinedAt: !5127)
!5151 = !DILocation(line: 145, column: 16, scope: !5071, inlinedAt: !5127)
!5152 = !DILocation(line: 146, column: 34, scope: !5071, inlinedAt: !5127)
!5153 = !DILocation(line: 146, column: 38, scope: !5071, inlinedAt: !5127)
!5154 = !DILocation(line: 146, column: 42, scope: !5155, inlinedAt: !5127)
!5155 = !DILexicalBlockFile(scope: !5071, file: !567, discriminator: 1)
!5156 = !DILocation(line: 146, column: 41, scope: !5155, inlinedAt: !5127)
!5157 = !DILocation(line: 147, column: 48, scope: !5071, inlinedAt: !5127)
!5158 = !DILocation(line: 147, column: 46, scope: !5071, inlinedAt: !5127)
!5159 = !DILocation(line: 147, column: 69, scope: !5071, inlinedAt: !5127)
!5160 = !DILocation(line: 147, column: 30, scope: !5071, inlinedAt: !5127)
!5161 = !DILocation(line: 134, column: 13, scope: !5062, inlinedAt: !5127)
!5162 = !DILocation(line: 148, column: 13, scope: !5071, inlinedAt: !5127)
!5163 = !DILocation(line: 150, column: 13, scope: !5164, inlinedAt: !5127)
!5164 = distinct !DILexicalBlock(scope: !5165, file: !567, line: 149, column: 11)
!5165 = distinct !DILexicalBlock(scope: !5071, file: !567, line: 148, column: 13)
!5166 = !DILocation(line: 151, column: 17, scope: !5164, inlinedAt: !5127)
!5167 = !DILocation(line: 152, column: 34, scope: !5168, inlinedAt: !5127)
!5168 = distinct !DILexicalBlock(scope: !5164, file: !567, line: 151, column: 17)
!5169 = !DILocation(line: 153, column: 41, scope: !5164, inlinedAt: !5127)
!5170 = !DILocation(line: 153, column: 13, scope: !5164, inlinedAt: !5127)
!5171 = !DILocation(line: 157, column: 11, scope: !5062, inlinedAt: !5127)
!5172 = !DILocation(line: 171, column: 16, scope: !5060, inlinedAt: !5127)
!5173 = !DILocation(line: 162, column: 15, scope: !5060, inlinedAt: !5127)
!5174 = !DILocation(line: 173, column: 18, scope: !5059, inlinedAt: !5127)
!5175 = !DILocation(line: 173, column: 15, scope: !5060, inlinedAt: !5127)
!5176 = !DILocation(line: 180, column: 20, scope: !5058, inlinedAt: !5127)
!5177 = !DILocation(line: 178, column: 21, scope: !5058, inlinedAt: !5127)
!5178 = !DILocation(line: 181, column: 22, scope: !5057, inlinedAt: !5127)
!5179 = !DILocation(line: 181, column: 19, scope: !5058, inlinedAt: !5127)
!5180 = !DILocation(line: 190, column: 25, scope: !5056, inlinedAt: !5127)
!5181 = !DILocation(line: 184, column: 19, scope: !5182, inlinedAt: !5127)
!5182 = distinct !DILexicalBlock(scope: !5057, file: !567, line: 182, column: 17)
!5183 = !DILocation(line: 186, column: 17, scope: !5182, inlinedAt: !5127)
!5184 = !DILocation(line: 191, column: 26, scope: !5056, inlinedAt: !5127)
!5185 = !DILocation(line: 196, column: 23, scope: !5053, inlinedAt: !5127)
!5186 = !DILocation(line: 197, column: 23, scope: !5053, inlinedAt: !5127)
!5187 = !DILocalVariable(name: "__fp", arg: 1, scope: !5188, file: !3778, line: 63, type: !5076)
!5188 = distinct !DISubprogram(name: "getc_unlocked", scope: !3778, file: !3778, line: 63, type: !5189, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !5191)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!69, !5076}
!5191 = !{!5187}
!5192 = !DILocation(line: 63, column: 22, scope: !5188, inlinedAt: !5193)
!5193 = distinct !DILocation(line: 201, column: 27, scope: !5053, inlinedAt: !5127)
!5194 = !DILocation(line: 65, column: 10, scope: !5188, inlinedAt: !5193)
!5195 = !DILocation(line: 65, column: 10, scope: !5196, inlinedAt: !5193)
!5196 = !DILexicalBlockFile(scope: !5188, file: !3778, discriminator: 1)
!5197 = !DILocation(line: 65, column: 10, scope: !5198, inlinedAt: !5193)
!5198 = !DILexicalBlockFile(scope: !5188, file: !3778, discriminator: 2)
!5199 = !DILocation(line: 65, column: 10, scope: !5200, inlinedAt: !5193)
!5200 = !DILexicalBlockFile(scope: !5188, file: !3778, discriminator: 3)
!5201 = !DILocation(line: 195, column: 27, scope: !5053, inlinedAt: !5127)
!5202 = !DILocation(line: 202, column: 27, scope: !5053, inlinedAt: !5127)
!5203 = !DILocation(line: 63, column: 22, scope: !5188, inlinedAt: !5204)
!5204 = distinct !DILocation(line: 210, column: 33, scope: !5205, inlinedAt: !5127)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !567, line: 207, column: 25)
!5206 = distinct !DILexicalBlock(scope: !5053, file: !567, line: 206, column: 27)
!5207 = !DILocation(line: 65, column: 10, scope: !5188, inlinedAt: !5204)
!5208 = !DILocation(line: 65, column: 10, scope: !5196, inlinedAt: !5204)
!5209 = !DILocation(line: 65, column: 10, scope: !5198, inlinedAt: !5204)
!5210 = !DILocation(line: 65, column: 10, scope: !5200, inlinedAt: !5204)
!5211 = !DILocation(line: 210, column: 29, scope: !5212, inlinedAt: !5127)
!5212 = !DILexicalBlockFile(scope: !5205, file: !567, discriminator: 1)
!5213 = distinct !{!5213, !5214, !5215}
!5214 = !DILocation(line: 193, column: 19, scope: !5055)
!5215 = !DILocation(line: 241, column: 21, scope: !5055)
!5216 = !DILocation(line: 216, column: 23, scope: !5053, inlinedAt: !5127)
!5217 = !DILocation(line: 217, column: 27, scope: !5218, inlinedAt: !5127)
!5218 = distinct !DILexicalBlock(scope: !5053, file: !567, line: 217, column: 27)
!5219 = !DILocation(line: 217, column: 64, scope: !5218, inlinedAt: !5127)
!5220 = !DILocation(line: 217, column: 27, scope: !5053, inlinedAt: !5127)
!5221 = !DILocation(line: 219, column: 28, scope: !5053, inlinedAt: !5127)
!5222 = !DILocation(line: 198, column: 30, scope: !5053, inlinedAt: !5127)
!5223 = !DILocation(line: 220, column: 28, scope: !5053, inlinedAt: !5127)
!5224 = !DILocation(line: 198, column: 34, scope: !5053, inlinedAt: !5127)
!5225 = !DILocation(line: 199, column: 29, scope: !5053, inlinedAt: !5127)
!5226 = !DILocation(line: 222, column: 36, scope: !5227, inlinedAt: !5127)
!5227 = distinct !DILexicalBlock(scope: !5053, file: !567, line: 222, column: 27)
!5228 = !DILocation(line: 222, column: 27, scope: !5053, inlinedAt: !5127)
!5229 = !DILocation(line: 225, column: 63, scope: !5230, inlinedAt: !5127)
!5230 = distinct !DILexicalBlock(scope: !5227, file: !567, line: 223, column: 25)
!5231 = !DILocation(line: 225, column: 46, scope: !5230, inlinedAt: !5127)
!5232 = !DILocation(line: 226, column: 25, scope: !5230, inlinedAt: !5127)
!5233 = !DILocation(line: 229, column: 36, scope: !5234, inlinedAt: !5127)
!5234 = distinct !DILexicalBlock(scope: !5227, file: !567, line: 228, column: 25)
!5235 = !DILocation(line: 230, column: 73, scope: !5234, inlinedAt: !5127)
!5236 = !DILocation(line: 230, column: 46, scope: !5234, inlinedAt: !5127)
!5237 = !DILocation(line: 232, column: 35, scope: !5238, inlinedAt: !5127)
!5238 = distinct !DILexicalBlock(scope: !5053, file: !567, line: 232, column: 27)
!5239 = !DILocation(line: 232, column: 27, scope: !5053, inlinedAt: !5127)
!5240 = !DILocation(line: 236, column: 27, scope: !5241, inlinedAt: !5127)
!5241 = distinct !DILexicalBlock(scope: !5238, file: !567, line: 233, column: 25)
!5242 = !DILocation(line: 237, column: 27, scope: !5241, inlinedAt: !5127)
!5243 = !DILocation(line: 239, column: 39, scope: !5053, inlinedAt: !5127)
!5244 = !DILocation(line: 239, column: 50, scope: !5053, inlinedAt: !5127)
!5245 = !DILocation(line: 239, column: 61, scope: !5053, inlinedAt: !5127)
!5246 = !DILocalVariable(name: "__dest", arg: 1, scope: !5247, file: !5248, line: 107, type: !5251)
!5247 = distinct !DISubprogram(name: "strcpy", scope: !5248, file: !5248, line: 107, type: !5249, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !5253)
!5248 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!139, !5251, !5252}
!5251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!5252 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!5253 = !{!5246, !5254}
!5254 = !DILocalVariable(name: "__src", arg: 2, scope: !5247, file: !5248, line: 107, type: !5252)
!5255 = !DILocation(line: 107, column: 1, scope: !5247, inlinedAt: !5256)
!5256 = distinct !DILocation(line: 239, column: 23, scope: !5053, inlinedAt: !5127)
!5257 = !DILocation(line: 109, column: 49, scope: !5247, inlinedAt: !5256)
!5258 = !DILocation(line: 109, column: 10, scope: !5247, inlinedAt: !5256)
!5259 = !DILocation(line: 107, column: 1, scope: !5247, inlinedAt: !5260)
!5260 = distinct !DILocation(line: 240, column: 23, scope: !5053, inlinedAt: !5127)
!5261 = !DILocation(line: 109, column: 49, scope: !5247, inlinedAt: !5260)
!5262 = !DILocation(line: 109, column: 10, scope: !5247, inlinedAt: !5260)
!5263 = !DILocation(line: 241, column: 21, scope: !5054, inlinedAt: !5127)
!5264 = !DILocation(line: 242, column: 19, scope: !5056, inlinedAt: !5127)
!5265 = !DILocation(line: 243, column: 32, scope: !5266, inlinedAt: !5127)
!5266 = distinct !DILexicalBlock(scope: !5056, file: !567, line: 243, column: 23)
!5267 = !DILocation(line: 243, column: 23, scope: !5056, inlinedAt: !5127)
!5268 = !DILocation(line: 247, column: 33, scope: !5269, inlinedAt: !5127)
!5269 = distinct !DILexicalBlock(scope: !5266, file: !567, line: 246, column: 21)
!5270 = !DILocation(line: 247, column: 45, scope: !5269, inlinedAt: !5127)
!5271 = !DILocation(line: 253, column: 11, scope: !5060, inlinedAt: !5127)
!5272 = !DILocation(line: 377, column: 23, scope: !5062, inlinedAt: !5127)
!5273 = !DILocation(line: 378, column: 5, scope: !5062, inlinedAt: !5127)
!5274 = !DILocation(line: 396, column: 15, scope: !5040)
!5275 = !DILocation(line: 590, column: 8, scope: !5049)
!5276 = !DILocation(line: 590, column: 17, scope: !5049)
!5277 = !DILocation(line: 589, column: 3, scope: !5278)
!5278 = !DILexicalBlockFile(scope: !5050, file: !567, discriminator: 1)
!5279 = !DILocation(line: 592, column: 9, scope: !5047)
!5280 = !DILocation(line: 592, column: 35, scope: !5048)
!5281 = !DILocation(line: 593, column: 9, scope: !5048)
!5282 = !DILocation(line: 593, column: 24, scope: !5283)
!5283 = !DILexicalBlockFile(scope: !5048, file: !567, discriminator: 1)
!5284 = !DILocation(line: 593, column: 31, scope: !5283)
!5285 = !DILocation(line: 593, column: 34, scope: !5286)
!5286 = !DILexicalBlockFile(scope: !5048, file: !567, discriminator: 2)
!5287 = !DILocation(line: 593, column: 45, scope: !5286)
!5288 = !DILocation(line: 592, column: 9, scope: !5289)
!5289 = !DILexicalBlockFile(scope: !5049, file: !567, discriminator: 1)
!5290 = !DILocation(line: 595, column: 29, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5048, file: !567, line: 594, column: 7)
!5292 = !DILocation(line: 595, column: 27, scope: !5291)
!5293 = !DILocation(line: 595, column: 46, scope: !5291)
!5294 = !DILocation(line: 596, column: 9, scope: !5291)
!5295 = !DILocation(line: 591, column: 19, scope: !5049)
!5296 = !DILocation(line: 591, column: 36, scope: !5049)
!5297 = !DILocation(line: 591, column: 16, scope: !5049)
!5298 = !DILocation(line: 591, column: 52, scope: !5289)
!5299 = !DILocation(line: 591, column: 69, scope: !5049)
!5300 = !DILocation(line: 591, column: 49, scope: !5049)
!5301 = distinct !{!5301, !5302, !5303}
!5302 = !DILocation(line: 589, column: 3, scope: !5050)
!5303 = !DILocation(line: 597, column: 7, scope: !5050)
!5304 = !DILocation(line: 602, column: 7, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5040, file: !567, line: 602, column: 7)
!5306 = !DILocation(line: 602, column: 18, scope: !5305)
!5307 = !DILocation(line: 602, column: 7, scope: !5040)
!5308 = !DILocation(line: 612, column: 3, scope: !5040)
