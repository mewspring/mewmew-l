; ModuleID = 'coreutils-8.27/src/users.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"Output who is currently logged in according to FILE.\0AIf FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !0
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.32, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.33, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.38 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.40 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.44, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.50, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.41 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.42 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.43 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.44 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.45 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.46 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.47 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.48 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.49 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.50 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.51 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.52 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.53 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.54 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.55 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.56 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.63 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.66 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.67 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.68 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.69 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.70 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.71 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.72 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.73 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.74 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.75 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.76 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.79 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.80 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.81 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.82 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.93 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.111 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.112 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.113 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.114 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.115 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !602 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !606, metadata !607), !dbg !608
  %2 = icmp eq i32 %0, 0, !dbg !609
  br i1 %2, label %8, label %3, !dbg !611

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !612, !tbaa !615
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !612
  %6 = load i8*, i8** @program_name, align 8, !dbg !612, !tbaa !615
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !619
  br label %35, !dbg !621

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !623
  %10 = load i8*, i8** @program_name, align 8, !dbg !623, !tbaa !615
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !625
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !627
  %13 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !628
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !629
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !615
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15) #11, !dbg !630
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !631
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !615
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18) #11, !dbg !632
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !521, metadata !607) #11, !dbg !633
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !521, metadata !607) #11, !dbg !633
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !635
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !636
  %22 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !638
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !532, metadata !607) #11, !dbg !639
  %23 = icmp eq i8* %22, null, !dbg !640
  br i1 %23, label %30, label %24, !dbg !641

; <label>:24:                                     ; preds = %8
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #13, !dbg !642
  %26 = icmp eq i32 %25, 0, !dbg !642
  br i1 %26, label %30, label %27, !dbg !644

; <label>:27:                                     ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !646
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !648
  br label %30, !dbg !650

; <label>:30:                                     ; preds = %8, %24, %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !651
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !652
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !653
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !654
  br label %35

; <label>:35:                                     ; preds = %30, %3
  tail call void @exit(i32 %0) #14, !dbg !655
  unreachable, !dbg !655
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !656 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !660, metadata !607), !dbg !662
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !661, metadata !607), !dbg !663
  %3 = load i8*, i8** %1, align 8, !dbg !664, !tbaa !615
  tail call void @set_program_name(i8* %3) #11, !dbg !665
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !666
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !667
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !668
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !669
  %8 = load i8*, i8** @Version, align 8, !dbg !670, !tbaa !615
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !671
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.option* null, i32* null) #11, !dbg !672
  %10 = icmp eq i32 %9, -1, !dbg !674
  br i1 %10, label %12, label %11, !dbg !675

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !676
  unreachable, !dbg !676

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !677, !tbaa !678
  %14 = sub nsw i32 %0, %13, !dbg !680
  switch i32 %14, label %20 [
    i32 0, label %15
    i32 1, label %16
  ], !dbg !681

; <label>:15:                                     ; preds = %12
  tail call fastcc void @users(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 1), !dbg !682
  br label %28, !dbg !684

; <label>:16:                                     ; preds = %12
  %17 = sext i32 %13 to i64, !dbg !685
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17, !dbg !685
  %19 = load i8*, i8** %18, align 8, !dbg !685, !tbaa !615
  tail call fastcc void @users(i8* %19, i32 0), !dbg !686
  br label %28, !dbg !687

; <label>:20:                                     ; preds = %12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !688
  %22 = load i32, i32* @optind, align 4, !dbg !689, !tbaa !678
  %23 = add nsw i32 %22, 1, !dbg !690
  %24 = sext i32 %23 to i64, !dbg !691
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !691
  %26 = load i8*, i8** %25, align 8, !dbg !691, !tbaa !615
  %27 = tail call i8* @quote(i8* %26) #11, !dbg !692
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %27) #11, !dbg !694
  tail call void @usage(i32 1) #15, !dbg !696
  unreachable, !dbg !696

; <label>:28:                                     ; preds = %16, %15
  ret i32 0, !dbg !697
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @users(i8*, i32) unnamed_addr #6 !dbg !698 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.utmpx*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !702, metadata !607), !dbg !744
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !703, metadata !607), !dbg !745
  %5 = bitcast i64* %3 to i8*, !dbg !746
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #11, !dbg !746
  %6 = bitcast %struct.utmpx** %4 to i8*, !dbg !747
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #11, !dbg !747
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !704, metadata !748), !dbg !749
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %4, i64 0, metadata !705, metadata !748), !dbg !750
  %7 = call i32 @read_utmp(i8* %0, i64* nonnull %3, %struct.utmpx** nonnull %4, i32 %1) #11, !dbg !751
  %8 = icmp eq i32 %7, 0, !dbg !753
  br i1 %8, label %13, label %9, !dbg !754

; <label>:9:                                      ; preds = %2
  %10 = tail call i32* @__errno_location() #1, !dbg !755
  %11 = load i32, i32* %10, align 4, !dbg !755, !tbaa !678
  %12 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !756
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %12) #11, !dbg !758
  unreachable, !dbg !755

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* %3, align 8, !dbg !760, !tbaa !761
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !704, metadata !607), !dbg !749
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, i64 0, metadata !705, metadata !607), !dbg !750
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !763, metadata !607) #11, !dbg !782
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, i64 0, metadata !770, metadata !607) #11, !dbg !784
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !785, metadata !607) #11, !dbg !791
  call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !790, metadata !607) #11, !dbg !793
  %15 = icmp ugt i64 %14, 1152921504606846975, !dbg !794
  br i1 %15, label %16, label %17, !dbg !796

; <label>:16:                                     ; preds = %13
  call void @xalloc_die() #14, !dbg !797
  unreachable, !dbg !797

; <label>:17:                                     ; preds = %13
  %18 = load %struct.utmpx*, %struct.utmpx** %4, align 8, !dbg !798, !tbaa !615
  %19 = shl i64 %14, 3, !dbg !799
  %20 = call noalias i8* @xmalloc(i64 %19) #11, !dbg !800
  %21 = bitcast i8* %20 to i8**, !dbg !801
  call void @llvm.dbg.value(metadata i8** %21, i64 0, metadata !771, metadata !607) #11, !dbg !802
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !773, metadata !607) #11, !dbg !803
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !763, metadata !607) #11, !dbg !782
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, i64 0, metadata !770, metadata !607) #11, !dbg !784
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !773, metadata !607) #11, !dbg !803
  %22 = icmp eq i64 %14, 0, !dbg !804
  br i1 %22, label %24, label %23, !dbg !804

; <label>:23:                                     ; preds = %17
  br label %25, !dbg !806

; <label>:24:                                     ; preds = %17
  call void @qsort(i8* %20, i64 0, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #11, !dbg !807
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !772, metadata !607) #11, !dbg !808
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !772, metadata !607) #11, !dbg !808
  br label %79, !dbg !809

; <label>:25:                                     ; preds = %23, %41
  %26 = phi i64 [ %29, %41 ], [ %14, %23 ]
  %27 = phi %struct.utmpx* [ %43, %41 ], [ %18, %23 ]
  %28 = phi i64 [ %42, %41 ], [ 0, %23 ]
  %29 = add i64 %26, -1, !dbg !806
  %30 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i64 0, i32 4, i64 0, !dbg !811
  %31 = load i8, i8* %30, align 4, !dbg !811, !tbaa !812
  %32 = icmp eq i8 %31, 0, !dbg !811
  br i1 %32, label %41, label %33, !dbg !811

; <label>:33:                                     ; preds = %25
  %34 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i64 0, i32 0, !dbg !813
  %35 = load i16, i16* %34, align 4, !dbg !813, !tbaa !815
  %36 = icmp eq i16 %35, 7, !dbg !813
  br i1 %36, label %37, label %41, !dbg !820

; <label>:37:                                     ; preds = %33
  %38 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %27) #11, !dbg !822
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !774, metadata !607) #11, !dbg !823
  %39 = getelementptr inbounds i8*, i8** %21, i64 %28, !dbg !824
  store i8* %38, i8** %39, align 8, !dbg !825, !tbaa !615
  %40 = add i64 %28, 1, !dbg !826
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !773, metadata !607) #11, !dbg !803
  br label %41, !dbg !827

; <label>:41:                                     ; preds = %37, %33, %25
  %42 = phi i64 [ %40, %37 ], [ %28, %33 ], [ %28, %25 ]
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !773, metadata !607) #11, !dbg !803
  %43 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i64 1, !dbg !828
  call void @llvm.dbg.value(metadata %struct.utmpx* %43, i64 0, metadata !770, metadata !607) #11, !dbg !784
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !763, metadata !607) #11, !dbg !782
  call void @llvm.dbg.value(metadata %struct.utmpx* %43, i64 0, metadata !770, metadata !607) #11, !dbg !784
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !773, metadata !607) #11, !dbg !803
  %44 = icmp eq i64 %29, 0, !dbg !804
  br i1 %44, label %45, label %25, !dbg !804, !llvm.loop !829

; <label>:45:                                     ; preds = %41
  call void @qsort(i8* %20, i64 %42, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #11, !dbg !807
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !772, metadata !607) #11, !dbg !808
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !772, metadata !607) #11, !dbg !808
  %46 = icmp eq i64 %42, 0, !dbg !832
  br i1 %46, label %79, label %47, !dbg !809

; <label>:47:                                     ; preds = %45
  %48 = add i64 %42, -1
  br label %49, !dbg !809

; <label>:49:                                     ; preds = %68, %47
  %50 = phi i64 [ 0, %47 ], [ %69, %68 ]
  %51 = icmp ult i64 %50, %48, !dbg !834
  %52 = getelementptr inbounds i8*, i8** %21, i64 %50, !dbg !835
  %53 = load i8*, i8** %52, align 8, !dbg !835, !tbaa !615
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !835, !tbaa !615
  %55 = call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #11, !dbg !835
  %56 = select i1 %51, i32 32, i32 10, !dbg !836
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !837, metadata !607) #11, !dbg !843
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !845, !tbaa !615
  %58 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %57, i64 0, i32 5, !dbg !845
  %59 = load i8*, i8** %58, align 8, !dbg !845, !tbaa !846
  %60 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %57, i64 0, i32 6, !dbg !845
  %61 = load i8*, i8** %60, align 8, !dbg !845, !tbaa !848
  %62 = icmp ult i8* %59, %61, !dbg !845
  br i1 %62, label %65, label %63, !dbg !845, !prof !849

; <label>:63:                                     ; preds = %49
  %64 = call i32 @__overflow(%struct._IO_FILE* %57, i32 %56) #11, !dbg !850
  br label %68, !dbg !850

; <label>:65:                                     ; preds = %49
  %66 = trunc i32 %56 to i8, !dbg !852
  %67 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !852
  store i8* %67, i8** %58, align 8, !dbg !852, !tbaa !846
  store i8 %66, i8* %59, align 1, !dbg !852, !tbaa !812
  br label %68, !dbg !852

; <label>:68:                                     ; preds = %65, %63
  %69 = add nuw i64 %50, 1, !dbg !854
  call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !772, metadata !607) #11, !dbg !808
  call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !772, metadata !607) #11, !dbg !808
  %70 = icmp eq i64 %69, %42, !dbg !832
  br i1 %70, label %71, label %49, !dbg !809, !llvm.loop !856

; <label>:71:                                     ; preds = %68
  br label %72, !dbg !859

; <label>:72:                                     ; preds = %71, %72
  %73 = phi i64 [ %76, %72 ], [ 0, %71 ]
  %74 = getelementptr inbounds i8*, i8** %21, i64 %73, !dbg !859
  %75 = load i8*, i8** %74, align 8, !dbg !859, !tbaa !615
  call void @free(i8* %75) #11, !dbg !862
  %76 = add nuw i64 %73, 1, !dbg !863
  call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !772, metadata !607) #11, !dbg !808
  call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !772, metadata !607) #11, !dbg !808
  %77 = icmp eq i64 %76, %42, !dbg !865
  br i1 %77, label %78, label %72, !dbg !867, !llvm.loop !869

; <label>:78:                                     ; preds = %72
  br label %79, !dbg !872

; <label>:79:                                     ; preds = %78, %24, %45
  call void @free(i8* %20) #11, !dbg !872
  %80 = bitcast %struct.utmpx** %4 to i8**, !dbg !873
  %81 = load i8*, i8** %80, align 8, !dbg !873, !tbaa !615
  call void @free(i8* %81) #11, !dbg !874
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #11, !dbg !875
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #11, !dbg !875
  ret void, !dbg !875
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @userid_compare(i8* nocapture readonly, i8* nocapture readonly) #9 !dbg !876 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !880, metadata !607), !dbg !887
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !881, metadata !607), !dbg !888
  %3 = bitcast i8* %0 to i8**, !dbg !889
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !882, metadata !607), !dbg !890
  %4 = bitcast i8* %1 to i8**, !dbg !891
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !883, metadata !607), !dbg !892
  %5 = load i8*, i8** %3, align 8, !dbg !893, !tbaa !615
  %6 = load i8*, i8** %4, align 8, !dbg !893, !tbaa !615
  %7 = tail call i32 @strcmp(i8* %5, i8* %6) #11, !dbg !893
  ret i32 %7, !dbg !894
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !895 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !897, metadata !607), !dbg !898
  store i8* %0, i8** @file_name, align 8, !dbg !899, !tbaa !615
  ret void, !dbg !900
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !901 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !905, metadata !906), !dbg !907
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !908, !tbaa !909
  ret void, !dbg !911
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !912 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !919, !tbaa !615
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !920
  %3 = icmp eq i32 %2, 0, !dbg !921
  br i1 %3, label %21, label %4, !dbg !922

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !923, !tbaa !909, !range !925
  %6 = icmp eq i8 %5, 0, !dbg !923
  %7 = tail call i32* @__errno_location() #1, !dbg !926
  br i1 %6, label %11, label %8, !dbg !928

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !929, !tbaa !678
  %10 = icmp eq i32 %9, 32, !dbg !931
  br i1 %10, label %21, label %11, !dbg !932

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !934
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !916, metadata !607), !dbg !935
  %13 = load i8*, i8** @file_name, align 8, !dbg !936, !tbaa !615
  %14 = icmp eq i8* %13, null, !dbg !936
  %15 = load i32, i32* %7, align 4, !tbaa !678
  br i1 %14, label %18, label %16, !dbg !937

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !938
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !940
  br label %19, !dbg !942

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #11, !dbg !943
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !944, !tbaa !678
  tail call void @_exit(i32 %20) #14, !dbg !945
  unreachable, !dbg !945

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !946, !tbaa !615
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !948
  %24 = icmp eq i32 %23, 0, !dbg !949
  br i1 %24, label %27, label %25, !dbg !950

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !951, !tbaa !678
  tail call void @_exit(i32 %26) #14, !dbg !952
  unreachable, !dbg !952

; <label>:27:                                     ; preds = %21
  ret void, !dbg !953
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !954 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !959, metadata !607), !dbg !986
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !960, metadata !607), !dbg !987
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !961, metadata !607), !dbg !988
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !962, metadata !607), !dbg !989
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !963, metadata !607), !dbg !990
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !964, metadata !607), !dbg !991
  %8 = load i32, i32* @opterr, align 4, !dbg !992, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !966, metadata !607), !dbg !993
  store i32 0, i32* @opterr, align 4, !dbg !994, !tbaa !678
  %9 = icmp eq i32 %0, 2, !dbg !995
  br i1 %9, label %10, label %17, !dbg !996

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !997
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !965, metadata !607), !dbg !999
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1000

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !1002
  br label %17, !dbg !1003

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1004
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #11, !dbg !1004
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !967, metadata !607), !dbg !1005
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1006
  call void @llvm.va_start(i8* nonnull %14), !dbg !1006
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1007, !tbaa !615
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !1008
  call void @exit(i32 0) #14, !dbg !1009
  unreachable, !dbg !1009

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1010, !tbaa !678
  store i32 0, i32* @optind, align 4, !dbg !1011, !tbaa !678
  ret void, !dbg !1012
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1013 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1015, metadata !607), !dbg !1018
  %2 = icmp eq i8* %0, null, !dbg !1019
  br i1 %2, label %3, label %6, !dbg !1021

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1022, !tbaa !615
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1024
  tail call void @abort() #14, !dbg !1025
  unreachable, !dbg !1025

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1026
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1016, metadata !607), !dbg !1027
  %8 = icmp ne i8* %7, null, !dbg !1028
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1029
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1031
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1017, metadata !607), !dbg !1032
  %11 = ptrtoint i8* %10 to i64, !dbg !1033
  %12 = ptrtoint i8* %0 to i64, !dbg !1033
  %13 = sub i64 %11, %12, !dbg !1033
  %14 = icmp sgt i64 %13, 6, !dbg !1035
  br i1 %14, label %15, label %24, !dbg !1036

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1037
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.39, i64 0, i64 0), i64 7) #13, !dbg !1037
  %18 = icmp eq i32 %17, 0, !dbg !1039
  br i1 %18, label %19, label %24, !dbg !1040

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1015, metadata !607), !dbg !1018
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.40, i64 0, i64 0), i64 3) #13, !dbg !1041
  %21 = icmp eq i32 %20, 0, !dbg !1044
  br i1 %21, label %22, label %24, !dbg !1045

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1046
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1015, metadata !607), !dbg !1018
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1048, !tbaa !615
  br label %24, !dbg !1049

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1015, metadata !607), !dbg !1018
  store i8* %25, i8** @program_name, align 8, !dbg !1050, !tbaa !615
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1051, !tbaa !615
  ret void, !dbg !1052
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1053 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1058, metadata !607), !dbg !1061
  %2 = tail call i32* @__errno_location() #1, !dbg !1062
  %3 = load i32, i32* %2, align 4, !dbg !1062, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1059, metadata !607), !dbg !1063
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1064
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1065
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1065
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1067
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1060, metadata !607), !dbg !1068
  store i32 %3, i32* %2, align 4, !dbg !1069, !tbaa !678
  ret %struct.quoting_options* %8, !dbg !1070
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1071 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1077, metadata !607), !dbg !1078
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1079
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1079
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1080
  %5 = load i32, i32* %4, align 8, !dbg !1080, !tbaa !1082
  ret i32 %5, !dbg !1084
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1085 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1089, metadata !607), !dbg !1091
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1090, metadata !607), !dbg !1092
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1093
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1093
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1094
  store i32 %1, i32* %5, align 8, !dbg !1096, !tbaa !1082
  ret void, !dbg !1097
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1098 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1102, metadata !607), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1103, metadata !607), !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1104, metadata !607), !dbg !1112
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1105, metadata !607), !dbg !1113
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1114
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1114
  %6 = lshr i8 %1, 5, !dbg !1115
  %7 = zext i8 %6 to i64, !dbg !1115
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1117
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1106, metadata !607), !dbg !1118
  %9 = and i8 %1, 31, !dbg !1119
  %10 = zext i8 %9 to i32, !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1108, metadata !607), !dbg !1121
  %11 = load i32, i32* %8, align 4, !dbg !1122, !tbaa !678
  %12 = lshr i32 %11, %10, !dbg !1123
  %13 = and i32 %12, 1, !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1109, metadata !607), !dbg !1125
  %14 = and i32 %2, 1, !dbg !1126
  %15 = xor i32 %13, %14, !dbg !1127
  %16 = shl i32 %15, %10, !dbg !1128
  %17 = xor i32 %16, %11, !dbg !1129
  store i32 %17, i32* %8, align 4, !dbg !1129, !tbaa !678
  ret i32 %13, !dbg !1130
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1131 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1135, metadata !607), !dbg !1138
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1136, metadata !607), !dbg !1139
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1140
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1135, metadata !607), !dbg !1138
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1142
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1135, metadata !607), !dbg !1138
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1143
  %6 = load i32, i32* %5, align 4, !dbg !1143, !tbaa !1144
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1137, metadata !607), !dbg !1145
  store i32 %1, i32* %5, align 4, !dbg !1146, !tbaa !1144
  ret i32 %6, !dbg !1147
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1148 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1152, metadata !607), !dbg !1155
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1153, metadata !607), !dbg !1156
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1154, metadata !607), !dbg !1157
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1158
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1152, metadata !607), !dbg !1155
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1160
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1152, metadata !607), !dbg !1155
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1161
  store i32 10, i32* %6, align 8, !dbg !1162, !tbaa !1082
  %7 = icmp ne i8* %1, null, !dbg !1163
  %8 = icmp ne i8* %2, null, !dbg !1165
  %9 = and i1 %7, %8, !dbg !1167
  br i1 %9, label %11, label %10, !dbg !1167

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1168
  unreachable, !dbg !1168

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1169
  store i8* %1, i8** %12, align 8, !dbg !1170, !tbaa !1171
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1172
  store i8* %2, i8** %13, align 8, !dbg !1173, !tbaa !1174
  ret void, !dbg !1175
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1176 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1180, metadata !607), !dbg !1188
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1181, metadata !607), !dbg !1189
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1182, metadata !607), !dbg !1190
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1183, metadata !607), !dbg !1191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1184, metadata !607), !dbg !1192
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1193
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1193
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1185, metadata !607), !dbg !1194
  %8 = tail call i32* @__errno_location() #1, !dbg !1195
  %9 = load i32, i32* %8, align 4, !dbg !1195, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1186, metadata !607), !dbg !1196
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1197
  %11 = load i32, i32* %10, align 8, !dbg !1197, !tbaa !1082
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1198
  %13 = load i32, i32* %12, align 4, !dbg !1198, !tbaa !1144
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1199
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1200
  %16 = load i8*, i8** %15, align 8, !dbg !1200, !tbaa !1171
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1201
  %18 = load i8*, i8** %17, align 8, !dbg !1201, !tbaa !1174
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1202
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1187, metadata !607), !dbg !1203
  store i32 %9, i32* %8, align 4, !dbg !1204, !tbaa !678
  ret i64 %19, !dbg !1205
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1206 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1212, metadata !607), !dbg !1272
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1213, metadata !607), !dbg !1273
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1214, metadata !607), !dbg !1274
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1215, metadata !607), !dbg !1275
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1216, metadata !607), !dbg !1276
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1217, metadata !607), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1218, metadata !607), !dbg !1278
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1219, metadata !607), !dbg !1279
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1220, metadata !607), !dbg !1280
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1222, metadata !607), !dbg !1281
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1223, metadata !607), !dbg !1282
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1224, metadata !607), !dbg !1283
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1225, metadata !607), !dbg !1284
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1226, metadata !607), !dbg !1285
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1286
  %14 = icmp eq i64 %13, 1, !dbg !1287
  %15 = lshr i32 %5, 1, !dbg !1288
  %16 = trunc i32 %15 to i8, !dbg !1288
  %17 = and i8 %16, 1, !dbg !1288
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1228, metadata !607), !dbg !1288
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1229, metadata !607), !dbg !1289
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1230, metadata !607), !dbg !1290
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1231, metadata !607), !dbg !1291
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1292

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1213, metadata !607), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1231, metadata !607), !dbg !1291
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1230, metadata !607), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1228, metadata !607), !dbg !1288
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1215, metadata !607), !dbg !1275
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1226, metadata !607), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1225, metadata !607), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1224, metadata !607), !dbg !1283
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1223, metadata !607), !dbg !1282
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1220, metadata !607), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1219, metadata !607), !dbg !1279
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1216, metadata !607), !dbg !1276
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
  ], !dbg !1293

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1216, metadata !607), !dbg !1276
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1228, metadata !607), !dbg !1288
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1228, metadata !607), !dbg !1288
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1216, metadata !607), !dbg !1276
  br label %95, !dbg !1294

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1228, metadata !607), !dbg !1288
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1216, metadata !607), !dbg !1276
  %43 = and i8 %36, 1, !dbg !1296
  %44 = icmp eq i8 %43, 0, !dbg !1296
  br i1 %44, label %45, label %95, !dbg !1294

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1298
  br i1 %46, label %95, label %47, !dbg !1302

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1304, !tbaa !812
  br label %95, !dbg !1304

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.51, i64 0, i64 0), i32 %28), !dbg !1306
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1219, metadata !607), !dbg !1279
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), i32 %28), !dbg !1310
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1220, metadata !607), !dbg !1280
  br label %51, !dbg !1311

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1220, metadata !607), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1219, metadata !607), !dbg !1279
  %54 = and i8 %36, 1, !dbg !1312
  %55 = icmp eq i8 %54, 0, !dbg !1312
  br i1 %55, label %56, label %73, !dbg !1314

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1224, metadata !607), !dbg !1283
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1222, metadata !607), !dbg !1281
  %57 = load i8, i8* %52, align 1, !dbg !1315, !tbaa !812
  %58 = icmp eq i8 %57, 0, !dbg !1319
  br i1 %58, label %73, label %59, !dbg !1319

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1321

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1321
  br i1 %64, label %65, label %67, !dbg !1325

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1327
  store i8 %61, i8* %66, align 1, !dbg !1327, !tbaa !812
  br label %67, !dbg !1327

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1222, metadata !607), !dbg !1281
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1224, metadata !607), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1224, metadata !607), !dbg !1283
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1222, metadata !607), !dbg !1281
  %70 = load i8, i8* %69, align 1, !dbg !1315, !tbaa !812
  %71 = icmp eq i8 %70, 0, !dbg !1319
  br i1 %71, label %72, label %60, !dbg !1319, !llvm.loop !1333

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1281

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1226, metadata !607), !dbg !1285
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1224, metadata !607), !dbg !1283
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1225, metadata !607), !dbg !1284
  br label %95, !dbg !1337

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1226, metadata !607), !dbg !1285
  br label %77, !dbg !1338

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1226, metadata !607), !dbg !1285
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1228, metadata !607), !dbg !1288
  br label %79, !dbg !1339

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1228, metadata !607), !dbg !1288
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1226, metadata !607), !dbg !1285
  %82 = and i8 %81, 1, !dbg !1340
  %83 = icmp eq i8 %82, 0, !dbg !1340
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1226, metadata !607), !dbg !1285
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1342
  br label %85, !dbg !1342

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1228, metadata !607), !dbg !1288
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1226, metadata !607), !dbg !1285
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1216, metadata !607), !dbg !1276
  %88 = and i8 %87, 1, !dbg !1343
  %89 = icmp eq i8 %88, 0, !dbg !1343
  br i1 %89, label %90, label %95, !dbg !1345

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1346
  br i1 %91, label %95, label %92, !dbg !1350

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1352, !tbaa !812
  br label %95, !dbg !1352

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1228, metadata !607), !dbg !1288
  br label %95, !dbg !1354

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1355
  unreachable, !dbg !1355

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1228, metadata !607), !dbg !1288
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1226, metadata !607), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1225, metadata !607), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1224, metadata !607), !dbg !1283
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1220, metadata !607), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1219, metadata !607), !dbg !1279
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1216, metadata !607), !dbg !1276
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1221, metadata !607), !dbg !1356
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
  br label %123, !dbg !1357

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1213, metadata !607), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1231, metadata !607), !dbg !1291
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1230, metadata !607), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1215, metadata !607), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1223, metadata !607), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1221, metadata !607), !dbg !1356
  %132 = icmp eq i64 %127, -1, !dbg !1358
  br i1 %132, label %135, label %133, !dbg !1360

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1361
  br i1 %134, label %597, label %139, !dbg !1363

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1365
  %137 = load i8, i8* %136, align 1, !dbg !1365, !tbaa !812
  %138 = icmp eq i8 %137, 0, !dbg !1367
  br i1 %138, label %597, label %139, !dbg !1363

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1237, metadata !607), !dbg !1368
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1238, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1239, metadata !607), !dbg !1370
  br i1 %109, label %140, label %155, !dbg !1371

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1373
  %142 = and i1 %110, %132, !dbg !1375
  br i1 %142, label %143, label %145, !dbg !1375

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1215, metadata !607), !dbg !1275
  br label %145, !dbg !1377

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1215, metadata !607), !dbg !1275
  %147 = icmp ugt i64 %141, %146, !dbg !1379
  br i1 %147, label %155, label %148, !dbg !1381

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1382
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1383
  %151 = icmp ne i32 %150, 0, !dbg !1384
  %152 = or i1 %151, %112, !dbg !1384
  %153 = xor i1 %151, true, !dbg !1384
  %154 = zext i1 %153 to i8, !dbg !1384
  br i1 %152, label %155, label %644, !dbg !1384

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1237, metadata !607), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1215, metadata !607), !dbg !1275
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1386
  %159 = load i8, i8* %158, align 1, !dbg !1386, !tbaa !812
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1232, metadata !607), !dbg !1387
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
  ], !dbg !1388

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1389

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1390

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1238, metadata !607), !dbg !1369
  %163 = and i8 %128, 1, !dbg !1395
  %164 = icmp eq i8 %163, 0, !dbg !1395
  %165 = and i1 %114, %164, !dbg !1398
  br i1 %165, label %166, label %182, !dbg !1398

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1400
  br i1 %167, label %168, label %170, !dbg !1405

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1407
  store i8 39, i8* %169, align 1, !dbg !1407, !tbaa !812
  br label %170, !dbg !1407

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1222, metadata !607), !dbg !1281
  %172 = icmp ult i64 %171, %131, !dbg !1411
  br i1 %172, label %173, label %175, !dbg !1415

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1417
  store i8 36, i8* %174, align 1, !dbg !1417, !tbaa !812
  br label %175, !dbg !1417

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1222, metadata !607), !dbg !1281
  %177 = icmp ult i64 %176, %131, !dbg !1421
  br i1 %177, label %178, label %180, !dbg !1425

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1427
  store i8 39, i8* %179, align 1, !dbg !1427, !tbaa !812
  br label %180, !dbg !1427

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1229, metadata !607), !dbg !1289
  br label %182, !dbg !1431

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1222, metadata !607), !dbg !1281
  %185 = icmp ult i64 %183, %131, !dbg !1433
  br i1 %185, label %186, label %188, !dbg !1437

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1439
  store i8 92, i8* %187, align 1, !dbg !1439, !tbaa !812
  br label %188, !dbg !1439

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1222, metadata !607), !dbg !1281
  br i1 %106, label %190, label %476, !dbg !1443

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1445
  %192 = icmp ult i64 %191, %156, !dbg !1447
  br i1 %192, label %193, label %476, !dbg !1448

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1449
  %195 = load i8, i8* %194, align 1, !dbg !1449, !tbaa !812
  %196 = add i8 %195, -48, !dbg !1451
  %197 = icmp ult i8 %196, 10, !dbg !1451
  br i1 %197, label %198, label %476, !dbg !1451

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1452
  br i1 %199, label %200, label %202, !dbg !1457

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1459
  store i8 48, i8* %201, align 1, !dbg !1459, !tbaa !812
  br label %202, !dbg !1459

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1222, metadata !607), !dbg !1281
  %204 = icmp ult i64 %203, %131, !dbg !1463
  br i1 %204, label %205, label %207, !dbg !1467

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1469
  store i8 48, i8* %206, align 1, !dbg !1469, !tbaa !812
  br label %207, !dbg !1469

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1222, metadata !607), !dbg !1281
  br label %476, !dbg !1473

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1474

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1475

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1476

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1478

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1480
  %215 = icmp ult i64 %214, %156, !dbg !1482
  br i1 %215, label %216, label %476, !dbg !1483

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1484
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1486
  %219 = load i8, i8* %218, align 1, !dbg !1486, !tbaa !812
  %220 = icmp eq i8 %219, 63, !dbg !1487
  br i1 %220, label %221, label %476, !dbg !1488

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1490
  %223 = load i8, i8* %222, align 1, !dbg !1490, !tbaa !812
  %224 = sext i8 %223 to i32, !dbg !1490
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
  ], !dbg !1491

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1492

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1232, metadata !607), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1221, metadata !607), !dbg !1356
  %227 = icmp ult i64 %125, %131, !dbg !1494
  br i1 %227, label %228, label %230, !dbg !1498

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1500
  store i8 63, i8* %229, align 1, !dbg !1500, !tbaa !812
  br label %230, !dbg !1500

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1222, metadata !607), !dbg !1281
  %232 = icmp ult i64 %231, %131, !dbg !1504
  br i1 %232, label %233, label %235, !dbg !1508

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1510
  store i8 34, i8* %234, align 1, !dbg !1510, !tbaa !812
  br label %235, !dbg !1510

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1222, metadata !607), !dbg !1281
  %237 = icmp ult i64 %236, %131, !dbg !1514
  br i1 %237, label %238, label %240, !dbg !1518

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1520
  store i8 34, i8* %239, align 1, !dbg !1520, !tbaa !812
  br label %240, !dbg !1520

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1222, metadata !607), !dbg !1281
  %242 = icmp ult i64 %241, %131, !dbg !1524
  br i1 %242, label %243, label %245, !dbg !1528

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1530
  store i8 63, i8* %244, align 1, !dbg !1530, !tbaa !812
  br label %245, !dbg !1530

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1222, metadata !607), !dbg !1281
  br label %476, !dbg !1534

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1236, metadata !607), !dbg !1535
  br label %257, !dbg !1536

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1236, metadata !607), !dbg !1535
  br label %257, !dbg !1537

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1236, metadata !607), !dbg !1535
  br label %255, !dbg !1538

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1236, metadata !607), !dbg !1535
  br label %255, !dbg !1539

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1236, metadata !607), !dbg !1535
  br label %257, !dbg !1540

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1236, metadata !607), !dbg !1535
  br i1 %114, label %253, label %254, !dbg !1541

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1542

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1545

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1236, metadata !607), !dbg !1535
  br i1 %118, label %257, label %644, !dbg !1547

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1236, metadata !607), !dbg !1535
  br i1 %105, label %503, label %476, !dbg !1549

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1550
  br i1 %260, label %261, label %266, !dbg !1552

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1553, !tbaa !812
  %263 = icmp ne i8 %262, 0, !dbg !1555
  %264 = icmp ne i64 %124, 0, !dbg !1556
  %265 = or i1 %264, %263, !dbg !1558
  br i1 %265, label %476, label %272, !dbg !1558

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1559
  %268 = icmp ne i64 %124, 0, !dbg !1556
  %269 = or i1 %268, %267, !dbg !1561
  br i1 %269, label %476, label %272, !dbg !1561

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1556
  br i1 %271, label %272, label %476, !dbg !1563

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1239, metadata !607), !dbg !1370
  br label %273, !dbg !1564

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1239, metadata !607), !dbg !1370
  br i1 %118, label %476, label %644, !dbg !1565

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1230, metadata !607), !dbg !1290
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1239, metadata !607), !dbg !1370
  br i1 %114, label %276, label %476, !dbg !1567

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1568

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1571
  %279 = icmp ne i64 %126, 0, !dbg !1573
  %280 = or i1 %279, %278, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1223, metadata !607), !dbg !1282
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1213, metadata !607), !dbg !1273
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1575
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1213, metadata !607), !dbg !1273
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1223, metadata !607), !dbg !1282
  %283 = icmp ult i64 %125, %282, !dbg !1576
  br i1 %283, label %284, label %286, !dbg !1580

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1582
  store i8 39, i8* %285, align 1, !dbg !1582, !tbaa !812
  br label %286, !dbg !1582

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1222, metadata !607), !dbg !1281
  %288 = icmp ult i64 %287, %282, !dbg !1586
  br i1 %288, label %289, label %291, !dbg !1590

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1592
  store i8 92, i8* %290, align 1, !dbg !1592, !tbaa !812
  br label %291, !dbg !1592

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1222, metadata !607), !dbg !1281
  %293 = icmp ult i64 %292, %282, !dbg !1596
  br i1 %293, label %294, label %296, !dbg !1600

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1602
  store i8 39, i8* %295, align 1, !dbg !1602, !tbaa !812
  br label %296, !dbg !1602

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1229, metadata !607), !dbg !1289
  br label %476, !dbg !1606

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1607

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1240, metadata !607), !dbg !1608
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1609
  %301 = load i16*, i16** %300, align 8, !dbg !1609, !tbaa !615
  %302 = zext i8 %159 to i64, !dbg !1609
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1609
  %304 = load i16, i16* %303, align 2, !dbg !1609, !tbaa !1611
  %305 = lshr i16 %304, 14, !dbg !1612
  %306 = trunc i16 %305 to i8, !dbg !1612
  %307 = and i8 %306, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1243, metadata !607), !dbg !1613
  br label %368, !dbg !1614

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !1615
  store i64 0, i64* %10, align 8, !dbg !1616
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1240, metadata !607), !dbg !1608
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1243, metadata !607), !dbg !1613
  %309 = icmp eq i64 %156, -1, !dbg !1617
  br i1 %309, label %310, label %312, !dbg !1619, !llvm.loop !1620

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1215, metadata !607), !dbg !1275
  br label %312, !dbg !1624, !llvm.loop !1620

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1613

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1243, metadata !607), !dbg !1613
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1240, metadata !607), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1215, metadata !607), !dbg !1275
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !1625
  %317 = add i64 %315, %124, !dbg !1626
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1627
  %319 = sub i64 %313, %317, !dbg !1628
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1244, metadata !748), !dbg !1629
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1258, metadata !748), !dbg !1630
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1261, metadata !607), !dbg !1632
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1633

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1240, metadata !607), !dbg !1608
  %322 = icmp ugt i64 %313, %317, !dbg !1634
  br i1 %322, label %323, label %351, !dbg !1637

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1638

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1638
  %328 = load i8, i8* %327, align 1, !dbg !1638, !tbaa !812
  %329 = icmp eq i8 %328, 0, !dbg !1640
  br i1 %329, label %348, label %330, !dbg !1641

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1240, metadata !607), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1240, metadata !607), !dbg !1608
  %332 = add i64 %331, %124, !dbg !1644
  %333 = icmp ult i64 %332, %313, !dbg !1634
  br i1 %333, label %324, label %348, !dbg !1637, !llvm.loop !1645

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1647
  %336 = and i1 %116, %335, !dbg !1651
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1262, metadata !607), !dbg !1652
  br i1 %336, label %337, label %355, !dbg !1651

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1653

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1653
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1654
  %342 = load i8, i8* %341, align 1, !dbg !1654, !tbaa !812
  %343 = sext i8 %342 to i32, !dbg !1654
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1655

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1262, metadata !607), !dbg !1652
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1262, metadata !607), !dbg !1652
  %346 = icmp ult i64 %345, %320, !dbg !1647
  br i1 %346, label %338, label %354, !dbg !1658, !llvm.loop !1660

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1613

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1613

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1613

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1243, metadata !607), !dbg !1613
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1240, metadata !607), !dbg !1608
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1663
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1664

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1664, !tbaa !678
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1258, metadata !607), !dbg !1630
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !1666
  %358 = icmp eq i32 %357, 0, !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1243, metadata !607), !dbg !1613
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1667
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1243, metadata !607), !dbg !1613
  %360 = add i64 %320, %315, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1240, metadata !607), !dbg !1608
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1243, metadata !607), !dbg !1613
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1240, metadata !607), !dbg !1608
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1663
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1244, metadata !748), !dbg !1629
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1669
  %362 = icmp eq i32 %361, 0, !dbg !1670
  br i1 %362, label %314, label %363, !dbg !1671, !llvm.loop !1620

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1673

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !1673
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1243, metadata !607), !dbg !1613
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1240, metadata !607), !dbg !1608
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1663
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !1673
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1243, metadata !607), !dbg !1613
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1240, metadata !607), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1215, metadata !607), !dbg !1275
  %372 = and i8 %371, 1, !dbg !1674
  %373 = icmp ne i8 %372, 0, !dbg !1674
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1239, metadata !607), !dbg !1370
  %374 = icmp ult i64 %370, 2, !dbg !1675
  %375 = or i1 %373, %113, !dbg !1676
  %376 = and i1 %374, %375, !dbg !1678
  br i1 %376, label %476, label %377, !dbg !1678

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1269, metadata !607), !dbg !1680
  br label %379, !dbg !1681

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1238, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1237, metadata !607), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1232, metadata !607), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1221, metadata !607), !dbg !1356
  br i1 %375, label %432, label %386, !dbg !1682

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1687

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1238, metadata !607), !dbg !1369
  %388 = and i8 %382, 1, !dbg !1691
  %389 = icmp eq i8 %388, 0, !dbg !1691
  %390 = and i1 %114, %389, !dbg !1694
  br i1 %390, label %391, label %407, !dbg !1694

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1696
  br i1 %392, label %393, label %395, !dbg !1701

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1703
  store i8 39, i8* %394, align 1, !dbg !1703, !tbaa !812
  br label %395, !dbg !1703

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1222, metadata !607), !dbg !1281
  %397 = icmp ult i64 %396, %131, !dbg !1707
  br i1 %397, label %398, label %400, !dbg !1711

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1713
  store i8 36, i8* %399, align 1, !dbg !1713, !tbaa !812
  br label %400, !dbg !1713

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1222, metadata !607), !dbg !1281
  %402 = icmp ult i64 %401, %131, !dbg !1717
  br i1 %402, label %403, label %405, !dbg !1721

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1723
  store i8 39, i8* %404, align 1, !dbg !1723, !tbaa !812
  br label %405, !dbg !1723

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1229, metadata !607), !dbg !1289
  br label %407, !dbg !1727

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1222, metadata !607), !dbg !1281
  %410 = icmp ult i64 %408, %131, !dbg !1729
  br i1 %410, label %411, label %413, !dbg !1733

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1735
  store i8 92, i8* %412, align 1, !dbg !1735, !tbaa !812
  br label %413, !dbg !1735

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1222, metadata !607), !dbg !1281
  %415 = icmp ult i64 %414, %131, !dbg !1739
  br i1 %415, label %416, label %420, !dbg !1743

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1745
  %418 = or i8 %417, 48, !dbg !1745
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1745
  store i8 %418, i8* %419, align 1, !dbg !1745, !tbaa !812
  br label %420, !dbg !1745

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1222, metadata !607), !dbg !1281
  %422 = icmp ult i64 %421, %131, !dbg !1749
  br i1 %422, label %423, label %428, !dbg !1753

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1755
  %425 = and i8 %424, 7, !dbg !1755
  %426 = or i8 %425, 48, !dbg !1755
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1755
  store i8 %426, i8* %427, align 1, !dbg !1755, !tbaa !812
  br label %428, !dbg !1755

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1222, metadata !607), !dbg !1281
  %430 = and i8 %383, 7, !dbg !1759
  %431 = or i8 %430, 48, !dbg !1760
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1232, metadata !607), !dbg !1387
  br label %441, !dbg !1761

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1762
  %434 = icmp eq i8 %433, 0, !dbg !1762
  br i1 %434, label %441, label %435, !dbg !1764

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1765
  br i1 %436, label %437, label %439, !dbg !1770

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1772
  store i8 92, i8* %438, align 1, !dbg !1772, !tbaa !812
  br label %439, !dbg !1772

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1237, metadata !607), !dbg !1368
  br label %441, !dbg !1776

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1238, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1237, metadata !607), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1232, metadata !607), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1222, metadata !607), !dbg !1281
  %447 = add i64 %380, 1, !dbg !1777
  %448 = icmp ugt i64 %378, %447, !dbg !1779
  br i1 %448, label %449, label %541, !dbg !1780

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1781
  %451 = icmp ne i8 %450, 0, !dbg !1781
  %452 = and i8 %446, 1, !dbg !1785
  %453 = icmp eq i8 %452, 0, !dbg !1785
  %454 = and i1 %451, %453, !dbg !1781
  br i1 %454, label %455, label %466, !dbg !1781

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1787
  br i1 %456, label %457, label %459, !dbg !1792

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1794
  store i8 39, i8* %458, align 1, !dbg !1794, !tbaa !812
  br label %459, !dbg !1794

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1222, metadata !607), !dbg !1281
  %461 = icmp ult i64 %460, %131, !dbg !1798
  br i1 %461, label %462, label %464, !dbg !1802

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1804
  store i8 39, i8* %463, align 1, !dbg !1804, !tbaa !812
  br label %464, !dbg !1804

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1229, metadata !607), !dbg !1289
  br label %466, !dbg !1808

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1222, metadata !607), !dbg !1281
  %469 = icmp ult i64 %467, %131, !dbg !1810
  br i1 %469, label %470, label %472, !dbg !1814

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1816
  store i8 %444, i8* %471, align 1, !dbg !1816, !tbaa !812
  br label %472, !dbg !1816

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1221, metadata !607), !dbg !1356
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1820
  %475 = load i8, i8* %474, align 1, !dbg !1820, !tbaa !812
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1232, metadata !607), !dbg !1387
  br label %379, !dbg !1821, !llvm.loop !1823

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1213, metadata !607), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1239, metadata !607), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1238, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1237, metadata !607), !dbg !1368
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1232, metadata !607), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1230, metadata !607), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1215, metadata !607), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1223, metadata !607), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1221, metadata !607), !dbg !1356
  br i1 %107, label %488, label %487, !dbg !1826

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1828

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1829

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1830
  %491 = zext i8 %490 to i64, !dbg !1830
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1832
  %493 = load i32, i32* %492, align 4, !dbg !1832, !tbaa !678
  %494 = and i8 %483, 31, !dbg !1833
  %495 = zext i8 %494 to i32, !dbg !1834
  %496 = shl i32 1, %495, !dbg !1835
  %497 = and i32 %493, %496, !dbg !1835
  %498 = icmp eq i32 %497, 0, !dbg !1835
  %499 = icmp eq i8 %157, 0, !dbg !1836
  %500 = and i1 %499, %498, !dbg !1837
  br i1 %500, label %542, label %503, !dbg !1837

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1836
  br i1 %502, label %542, label %503, !dbg !1838

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1213, metadata !607), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1239, metadata !607), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1232, metadata !607), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1230, metadata !607), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1215, metadata !607), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1223, metadata !607), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1221, metadata !607), !dbg !1356
  br i1 %112, label %513, label %644, !dbg !1840

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1238, metadata !607), !dbg !1369
  %514 = and i8 %508, 1, !dbg !1843
  %515 = icmp eq i8 %514, 0, !dbg !1843
  %516 = and i1 %114, %515, !dbg !1846
  br i1 %516, label %517, label %533, !dbg !1846

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1848
  br i1 %518, label %519, label %521, !dbg !1853

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1855
  store i8 39, i8* %520, align 1, !dbg !1855, !tbaa !812
  br label %521, !dbg !1855

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1222, metadata !607), !dbg !1281
  %523 = icmp ult i64 %522, %512, !dbg !1859
  br i1 %523, label %524, label %526, !dbg !1863

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1865
  store i8 36, i8* %525, align 1, !dbg !1865, !tbaa !812
  br label %526, !dbg !1865

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1222, metadata !607), !dbg !1281
  %528 = icmp ult i64 %527, %512, !dbg !1869
  br i1 %528, label %529, label %531, !dbg !1873

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1875
  store i8 39, i8* %530, align 1, !dbg !1875, !tbaa !812
  br label %531, !dbg !1875

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1229, metadata !607), !dbg !1289
  br label %533, !dbg !1879

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1222, metadata !607), !dbg !1281
  %536 = icmp ult i64 %534, %512, !dbg !1881
  br i1 %536, label %537, label %539, !dbg !1885

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1887
  store i8 92, i8* %538, align 1, !dbg !1887, !tbaa !812
  br label %539, !dbg !1887

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1213, metadata !607), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1239, metadata !607), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1238, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1232, metadata !607), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1230, metadata !607), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1215, metadata !607), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1223, metadata !607), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1221, metadata !607), !dbg !1356
  br label %569, !dbg !1891

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1273

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1213, metadata !607), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1239, metadata !607), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1238, metadata !607), !dbg !1369
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1232, metadata !607), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1230, metadata !607), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1215, metadata !607), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1223, metadata !607), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1221, metadata !607), !dbg !1356
  %553 = and i8 %547, 1, !dbg !1891
  %554 = icmp ne i8 %553, 0, !dbg !1891
  %555 = and i8 %550, 1, !dbg !1895
  %556 = icmp eq i8 %555, 0, !dbg !1895
  %557 = and i1 %554, %556, !dbg !1891
  br i1 %557, label %558, label %569, !dbg !1891

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1897
  br i1 %559, label %560, label %562, !dbg !1902

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1904
  store i8 39, i8* %561, align 1, !dbg !1904, !tbaa !812
  br label %562, !dbg !1904

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1222, metadata !607), !dbg !1281
  %564 = icmp ult i64 %563, %552, !dbg !1908
  br i1 %564, label %565, label %567, !dbg !1912

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1914
  store i8 39, i8* %566, align 1, !dbg !1914, !tbaa !812
  br label %567, !dbg !1914

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1222, metadata !607), !dbg !1281
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1229, metadata !607), !dbg !1289
  br label %569, !dbg !1918

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1229, metadata !607), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1222, metadata !607), !dbg !1281
  %579 = icmp ult i64 %577, %570, !dbg !1920
  br i1 %579, label %580, label %582, !dbg !1924

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1926
  store i8 %572, i8* %581, align 1, !dbg !1926, !tbaa !812
  br label %582, !dbg !1926

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1222, metadata !607), !dbg !1281
  %584 = and i8 %571, 1, !dbg !1930
  %585 = icmp eq i8 %584, 0, !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1231, metadata !607), !dbg !1291
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1932
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1231, metadata !607), !dbg !1291
  br label %587, !dbg !1933

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1221, metadata !607), !dbg !1356
  br label %123, !dbg !1936, !llvm.loop !1937

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1940
  %600 = and i1 %114, %599, !dbg !1942
  %601 = xor i1 %600, true, !dbg !1942
  %602 = or i1 %112, %601, !dbg !1942
  br i1 %602, label %603, label %648, !dbg !1942

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1943
  %605 = xor i1 %604, true, !dbg !1943
  %606 = and i8 %129, 1, !dbg !1945
  %607 = icmp eq i8 %606, 0, !dbg !1945
  %608 = or i1 %607, %605, !dbg !1943
  br i1 %608, label %618, label %609, !dbg !1943

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1947
  %611 = icmp eq i8 %610, 0, !dbg !1947
  br i1 %611, label %614, label %612, !dbg !1950

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1951
  br label %659, !dbg !1952

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1953
  %616 = icmp ne i64 %126, 0, !dbg !1955
  %617 = and i1 %616, %615, !dbg !1957
  br i1 %617, label %27, label %618, !dbg !1957

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1958
  %620 = and i1 %619, %112, !dbg !1960
  br i1 %620, label %621, label %638, !dbg !1960

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1224, metadata !607), !dbg !1283
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1222, metadata !607), !dbg !1281
  %622 = load i8, i8* %100, align 1, !dbg !1961, !tbaa !812
  %623 = icmp eq i8 %622, 0, !dbg !1965
  br i1 %623, label %638, label %624, !dbg !1965

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1967

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1967
  br i1 %629, label %630, label %632, !dbg !1971

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1973
  store i8 %626, i8* %631, align 1, !dbg !1973, !tbaa !812
  br label %632, !dbg !1973

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1222, metadata !607), !dbg !1281
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1977
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1224, metadata !607), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1224, metadata !607), !dbg !1283
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1222, metadata !607), !dbg !1281
  %635 = load i8, i8* %634, align 1, !dbg !1961, !tbaa !812
  %636 = icmp eq i8 %635, 0, !dbg !1965
  br i1 %636, label %637, label %625, !dbg !1965, !llvm.loop !1979

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1281

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1222, metadata !607), !dbg !1281
  %640 = icmp ult i64 %639, %131, !dbg !1982
  br i1 %640, label %641, label %659, !dbg !1984

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1985
  store i8 0, i8* %642, align 1, !dbg !1986, !tbaa !812
  br label %659, !dbg !1985

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1273

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1273

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1273

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1213, metadata !607), !dbg !1273
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1215, metadata !607), !dbg !1275
  %653 = icmp ne i32 %650, 2, !dbg !1987
  %654 = icmp eq i8 %104, 0, !dbg !1989
  %655 = or i1 %653, %654, !dbg !1991
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1216, metadata !607), !dbg !1276
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1216, metadata !607), !dbg !1276
  %657 = and i32 %5, -3, !dbg !1992
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1993
  br label %659, !dbg !1994

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1995
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1996 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2000, metadata !607), !dbg !2004
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2001, metadata !607), !dbg !2005
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2006
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2002, metadata !607), !dbg !2007
  %4 = icmp eq i8* %3, %0, !dbg !2008
  br i1 %4, label %5, label %75, !dbg !2010

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2011
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2003, metadata !607), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2013, metadata !607), !dbg !2029
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2027, metadata !607), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2028, metadata !607), !dbg !2033
  %7 = load i8, i8* %6, align 1, !tbaa !812
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2034
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2034

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2037, metadata !607), !dbg !2051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2049, metadata !607), !dbg !2055
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2050, metadata !607), !dbg !2056
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !812
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2057
  %15 = icmp eq i32 %14, 84, !dbg !2057
  br i1 %15, label %16, label %72, !dbg !2057

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2060, metadata !607), !dbg !2073
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2071, metadata !607), !dbg !2077
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2072, metadata !607), !dbg !2078
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !812
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2079
  %21 = icmp eq i32 %20, 70, !dbg !2079
  br i1 %21, label %22, label %72, !dbg !2079

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2082, metadata !607), !dbg !2094
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2092, metadata !607), !dbg !2098
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2093, metadata !607), !dbg !2099
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !812
  %25 = icmp eq i8 %24, 45, !dbg !2100
  br i1 %25, label %26, label %72, !dbg !2103

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2105, metadata !607), !dbg !2116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2114, metadata !607), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2115, metadata !607), !dbg !2121
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !812
  %29 = icmp eq i8 %28, 56, !dbg !2122
  br i1 %29, label %30, label %72, !dbg !2125

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2127, metadata !607), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2135, metadata !607), !dbg !2141
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2136, metadata !607), !dbg !2142
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !812
  %33 = icmp eq i8 %32, 0, !dbg !2143
  br i1 %33, label %34, label %72, !dbg !2146

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2148, !tbaa !812
  %36 = icmp eq i8 %35, 96, !dbg !2149
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.55, i64 0, i64 0), !dbg !2148
  br label %75, !dbg !2150

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2037, metadata !607), !dbg !2151
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2049, metadata !607), !dbg !2155
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2050, metadata !607), !dbg !2156
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !812
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2157
  %43 = icmp eq i32 %42, 66, !dbg !2157
  br i1 %43, label %44, label %72, !dbg !2157

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2060, metadata !607), !dbg !2158
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2071, metadata !607), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2072, metadata !607), !dbg !2161
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !812
  %47 = icmp eq i8 %46, 49, !dbg !2162
  br i1 %47, label %48, label %72, !dbg !2164

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2082, metadata !607), !dbg !2166
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2092, metadata !607), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2093, metadata !607), !dbg !2169
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !812
  %51 = icmp eq i8 %50, 56, !dbg !2170
  br i1 %51, label %52, label %72, !dbg !2171

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2105, metadata !607), !dbg !2172
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2114, metadata !607), !dbg !2174
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2115, metadata !607), !dbg !2175
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !812
  %55 = icmp eq i8 %54, 48, !dbg !2176
  br i1 %55, label %56, label %72, !dbg !2177

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2127, metadata !607), !dbg !2178
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2135, metadata !607), !dbg !2180
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2136, metadata !607), !dbg !2181
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !812
  %59 = icmp eq i8 %58, 51, !dbg !2182
  br i1 %59, label %60, label %72, !dbg !2183

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2184, metadata !607), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2191, metadata !607), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2192, metadata !607), !dbg !2198
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !812
  %63 = icmp eq i8 %62, 48, !dbg !2199
  br i1 %63, label %64, label %72, !dbg !2202

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2204, metadata !607), !dbg !2212
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2210, metadata !607), !dbg !2216
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2211, metadata !607), !dbg !2217
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !812
  %67 = icmp eq i8 %66, 0, !dbg !2218
  br i1 %67, label %68, label %72, !dbg !2221

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2222, !tbaa !812
  %70 = icmp eq i8 %69, 96, !dbg !2223
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.56, i64 0, i64 0), !dbg !2222
  br label %75, !dbg !2224

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2225
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), !dbg !2226
  br label %75, !dbg !2227

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2228
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2229 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2233, metadata !607), !dbg !2236
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2234, metadata !607), !dbg !2237
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2235, metadata !607), !dbg !2238
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2239, metadata !607) #11, !dbg !2252
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2244, metadata !607) #11, !dbg !2254
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2245, metadata !607) #11, !dbg !2255
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2246, metadata !607) #11, !dbg !2256
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2257
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2257
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2247, metadata !607) #11, !dbg !2258
  %6 = tail call i32* @__errno_location() #1, !dbg !2259
  %7 = load i32, i32* %6, align 4, !dbg !2259, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2248, metadata !607) #11, !dbg !2260
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2261
  %9 = load i32, i32* %8, align 4, !dbg !2261, !tbaa !1144
  %10 = or i32 %9, 1, !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2249, metadata !607) #11, !dbg !2263
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2264
  %12 = load i32, i32* %11, align 8, !dbg !2264, !tbaa !1082
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2265
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2266
  %15 = load i8*, i8** %14, align 8, !dbg !2266, !tbaa !1171
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2267
  %17 = load i8*, i8** %16, align 8, !dbg !2267, !tbaa !1174
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2268
  %19 = add i64 %18, 1, !dbg !2269
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2250, metadata !607) #11, !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2271, metadata !607) #11, !dbg !2276
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2278
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2251, metadata !607) #11, !dbg !2279
  %21 = load i32, i32* %11, align 8, !dbg !2280, !tbaa !1082
  %22 = load i8*, i8** %14, align 8, !dbg !2281, !tbaa !1171
  %23 = load i8*, i8** %16, align 8, !dbg !2282, !tbaa !1174
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2283
  store i32 %7, i32* %6, align 4, !dbg !2284, !tbaa !678
  ret i8* %20, !dbg !2285
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2240 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2239, metadata !607), !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2244, metadata !607), !dbg !2287
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2245, metadata !607), !dbg !2288
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2246, metadata !607), !dbg !2289
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2290
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2290
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2247, metadata !607), !dbg !2291
  %7 = tail call i32* @__errno_location() #1, !dbg !2292
  %8 = load i32, i32* %7, align 4, !dbg !2292, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2248, metadata !607), !dbg !2293
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2294
  %10 = load i32, i32* %9, align 4, !dbg !2294, !tbaa !1144
  %11 = icmp ne i64* %2, null, !dbg !2295
  %12 = xor i1 %11, true, !dbg !2295
  %13 = zext i1 %12 to i32, !dbg !2295
  %14 = or i32 %10, %13, !dbg !2296
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2249, metadata !607), !dbg !2297
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2298
  %16 = load i32, i32* %15, align 8, !dbg !2298, !tbaa !1082
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2299
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2300
  %19 = load i8*, i8** %18, align 8, !dbg !2300, !tbaa !1171
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2301
  %21 = load i8*, i8** %20, align 8, !dbg !2301, !tbaa !1174
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2302
  %23 = add i64 %22, 1, !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2250, metadata !607), !dbg !2304
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2271, metadata !607) #11, !dbg !2305
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2307
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2251, metadata !607), !dbg !2308
  %25 = load i32, i32* %15, align 8, !dbg !2309, !tbaa !1082
  %26 = load i8*, i8** %18, align 8, !dbg !2310, !tbaa !1171
  %27 = load i8*, i8** %20, align 8, !dbg !2311, !tbaa !1174
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2312
  store i32 %8, i32* %7, align 4, !dbg !2313, !tbaa !678
  br i1 %11, label %29, label %30, !dbg !2314

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2315, !tbaa !761
  br label %30, !dbg !2317

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2318
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2319 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2323, !tbaa !615
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2321, metadata !607), !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2322, metadata !607), !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2322, metadata !607), !dbg !2325
  %2 = load i32, i32* @nslots, align 4, !dbg !2326, !tbaa !678
  %3 = icmp sgt i32 %2, 1, !dbg !2330
  br i1 %3, label %4, label %14, !dbg !2331

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2333

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2333
  %8 = load i8*, i8** %7, align 8, !dbg !2333, !tbaa !2334
  tail call void @free(i8* %8) #11, !dbg !2336
  %9 = add nuw i64 %6, 1, !dbg !2337
  %10 = load i32, i32* @nslots, align 4, !dbg !2326, !tbaa !678
  %11 = sext i32 %10 to i64, !dbg !2330
  %12 = icmp slt i64 %9, %11, !dbg !2330
  br i1 %12, label %5, label %13, !dbg !2331, !llvm.loop !2339

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2342

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2342
  %16 = load i8*, i8** %15, align 8, !dbg !2342, !tbaa !2334
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2344
  br i1 %17, label %19, label %18, !dbg !2345

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !2346
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2348, !tbaa !2349
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2350, !tbaa !2334
  br label %19, !dbg !2351

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2352
  br i1 %20, label %23, label %21, !dbg !2354

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2355
  tail call void @free(i8* %22) #11, !dbg !2357
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2358, !tbaa !615
  br label %23, !dbg !2359

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2360, !tbaa !678
  ret void, !dbg !2361
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2362 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2366, metadata !607), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2367, metadata !607), !dbg !2369
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2370
  ret i8* %3, !dbg !2371
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2372 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2376, metadata !607), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2377, metadata !607), !dbg !2391
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2378, metadata !607), !dbg !2392
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2379, metadata !607), !dbg !2393
  %5 = tail call i32* @__errno_location() #1, !dbg !2394
  %6 = load i32, i32* %5, align 4, !dbg !2394, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2380, metadata !607), !dbg !2395
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2396, !tbaa !615
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2381, metadata !607), !dbg !2397
  %8 = icmp slt i32 %0, 0, !dbg !2398
  br i1 %8, label %9, label %10, !dbg !2400

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2401
  unreachable, !dbg !2401

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2402, !tbaa !678
  %12 = icmp sgt i32 %11, %0, !dbg !2403
  br i1 %12, label %34, label %13, !dbg !2404

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2405
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2406
  br i1 %15, label %16, label %17, !dbg !2408

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2409
  unreachable, !dbg !2409

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2410
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2410
  %20 = add nsw i32 %0, 1, !dbg !2412
  %21 = sext i32 %20 to i64, !dbg !2413
  %22 = shl nsw i64 %21, 4, !dbg !2414
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2415
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2415
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2381, metadata !607), !dbg !2397
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2416, !tbaa !615
  br i1 %14, label %25, label %26, !dbg !2417

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2418, !tbaa.struct !2420
  br label %26, !dbg !2421

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2422, !tbaa !678
  %28 = sext i32 %27 to i64, !dbg !2423
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2423
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2424
  %31 = sub nsw i32 %20, %27, !dbg !2425
  %32 = sext i32 %31 to i64, !dbg !2426
  %33 = shl nsw i64 %32, 4, !dbg !2427
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2424
  store i32 %20, i32* @nslots, align 4, !dbg !2428, !tbaa !678
  br label %34, !dbg !2429

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2381, metadata !607), !dbg !2397
  %36 = sext i32 %0 to i64, !dbg !2430
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2431
  %38 = load i64, i64* %37, align 8, !dbg !2431, !tbaa !2349
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2385, metadata !607), !dbg !2432
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2433
  %40 = load i8*, i8** %39, align 8, !dbg !2433, !tbaa !2334
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2387, metadata !607), !dbg !2434
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2435
  %42 = load i32, i32* %41, align 4, !dbg !2435, !tbaa !1144
  %43 = or i32 %42, 1, !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2388, metadata !607), !dbg !2437
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2438
  %45 = load i32, i32* %44, align 8, !dbg !2438, !tbaa !1082
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2439
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2440
  %48 = load i8*, i8** %47, align 8, !dbg !2440, !tbaa !1171
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2441
  %50 = load i8*, i8** %49, align 8, !dbg !2441, !tbaa !1174
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2442
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2389, metadata !607), !dbg !2443
  %52 = icmp ugt i64 %38, %51, !dbg !2444
  br i1 %52, label %63, label %53, !dbg !2446

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2447
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2385, metadata !607), !dbg !2432
  store i64 %54, i64* %37, align 8, !dbg !2449, !tbaa !2349
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2450
  br i1 %55, label %57, label %56, !dbg !2452

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2453
  br label %57, !dbg !2453

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2271, metadata !607) #11, !dbg !2454
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2456
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2387, metadata !607), !dbg !2434
  store i8* %58, i8** %39, align 8, !dbg !2457, !tbaa !2334
  %59 = load i32, i32* %44, align 8, !dbg !2458, !tbaa !1082
  %60 = load i8*, i8** %47, align 8, !dbg !2459, !tbaa !1171
  %61 = load i8*, i8** %49, align 8, !dbg !2460, !tbaa !1174
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2461
  br label %63, !dbg !2462

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2387, metadata !607), !dbg !2434
  store i32 %6, i32* %5, align 4, !dbg !2463, !tbaa !678
  ret i8* %64, !dbg !2464
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2465 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2469, metadata !607), !dbg !2472
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2470, metadata !607), !dbg !2473
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2471, metadata !607), !dbg !2474
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2475
  ret i8* %4, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2477 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2481, metadata !607), !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2366, metadata !607) #11, !dbg !2483
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2367, metadata !607) #11, !dbg !2485
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2486
  ret i8* %2, !dbg !2487
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2488 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2492, metadata !607), !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2493, metadata !607), !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2469, metadata !607) #11, !dbg !2496
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2470, metadata !607) #11, !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2471, metadata !607) #11, !dbg !2499
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2500
  ret i8* %3, !dbg !2501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2502 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2510, metadata !2516), !dbg !2517
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2506, metadata !607), !dbg !2519
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2507, metadata !607), !dbg !2520
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2508, metadata !607), !dbg !2521
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2522
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2522
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2509, metadata !748), !dbg !2523
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2515, metadata !607) #11, !dbg !2524
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2525
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2525
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2510, metadata !607) #11, !dbg !2517
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2510, metadata !2526) #11, !dbg !2517
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2517
  %8 = icmp eq i32 %1, 10, !dbg !2527
  br i1 %8, label %9, label %10, !dbg !2529

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2530, !noalias !2531
  unreachable, !dbg !2530

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2510, metadata !2526) #11, !dbg !2517
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2534
  store i32 %1, i32* %11, align 8, !dbg !2534, !alias.scope !2531
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2534
  %13 = bitcast i32* %12 to i8*, !dbg !2534
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2534
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2535
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2509, metadata !748), !dbg !2523
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2536
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2537
  ret i8* %14, !dbg !2538
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2539 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2510, metadata !2516), !dbg !2548
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2543, metadata !607), !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2544, metadata !607), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2545, metadata !607), !dbg !2552
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2546, metadata !607), !dbg !2553
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2554
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2547, metadata !748), !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2515, metadata !607) #11, !dbg !2556
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2557
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2557
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2510, metadata !607) #11, !dbg !2548
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2510, metadata !2526) #11, !dbg !2548
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2548
  %9 = icmp eq i32 %1, 10, !dbg !2558
  br i1 %9, label %10, label %11, !dbg !2559

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2560, !noalias !2561
  unreachable, !dbg !2560

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2510, metadata !2526) #11, !dbg !2548
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2564
  store i32 %1, i32* %12, align 8, !dbg !2564, !alias.scope !2561
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2564
  %14 = bitcast i32* %13 to i8*, !dbg !2564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2564
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2565
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2547, metadata !748), !dbg !2555
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2566
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2567
  ret i8* %15, !dbg !2568
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2569 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2510, metadata !2516), !dbg !2575
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2573, metadata !607), !dbg !2578
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2574, metadata !607), !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2506, metadata !607) #11, !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2507, metadata !607) #11, !dbg !2581
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2508, metadata !607) #11, !dbg !2582
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2583
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !2583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2509, metadata !748) #11, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2515, metadata !607) #11, !dbg !2585
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2586
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2586
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2510, metadata !607) #11, !dbg !2575
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2510, metadata !2526) #11, !dbg !2575
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2575
  %7 = icmp eq i32 %0, 10, !dbg !2587
  br i1 %7, label %8, label %9, !dbg !2588

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2589, !noalias !2590
  unreachable, !dbg !2589

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2510, metadata !2526) #11, !dbg !2575
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2593
  store i32 %0, i32* %10, align 8, !dbg !2593, !alias.scope !2590
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2593
  %12 = bitcast i32* %11 to i8*, !dbg !2593
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2593
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2594
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2509, metadata !748) #11, !dbg !2584
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2595
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !2596
  ret i8* %13, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2598 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2510, metadata !2516), !dbg !2605
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2602, metadata !607), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2603, metadata !607), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2604, metadata !607), !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2543, metadata !607) #11, !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2544, metadata !607) #11, !dbg !2612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2545, metadata !607) #11, !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2546, metadata !607) #11, !dbg !2614
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2615
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2547, metadata !748) #11, !dbg !2616
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2515, metadata !607) #11, !dbg !2617
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2618
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2618
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2510, metadata !607) #11, !dbg !2605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2510, metadata !2526) #11, !dbg !2605
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2605
  %8 = icmp eq i32 %0, 10, !dbg !2619
  br i1 %8, label %9, label %10, !dbg !2620

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2621, !noalias !2622
  unreachable, !dbg !2621

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2510, metadata !2526) #11, !dbg !2605
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2625
  store i32 %0, i32* %11, align 8, !dbg !2625, !alias.scope !2622
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2625
  %13 = bitcast i32* %12 to i8*, !dbg !2625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2625
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2547, metadata !748) #11, !dbg !2616
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2627
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2628
  ret i8* %14, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2630 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2634, metadata !607), !dbg !2638
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2635, metadata !607), !dbg !2639
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2636, metadata !607), !dbg !2640
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2641
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !2641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2642, !tbaa.struct !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2637, metadata !748), !dbg !2644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1102, metadata !607), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1103, metadata !607), !dbg !2647
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1104, metadata !607), !dbg !2648
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1105, metadata !607), !dbg !2649
  %6 = lshr i8 %2, 5, !dbg !2650
  %7 = zext i8 %6 to i64, !dbg !2650
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2651
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1106, metadata !607), !dbg !2652
  %9 = and i8 %2, 31, !dbg !2653
  %10 = zext i8 %9 to i32, !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1108, metadata !607), !dbg !2655
  %11 = load i32, i32* %8, align 4, !dbg !2656, !tbaa !678
  %12 = lshr i32 %11, %10, !dbg !2657
  %13 = and i32 %12, 1, !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1109, metadata !607), !dbg !2659
  %14 = xor i32 %13, 1, !dbg !2660
  %15 = shl i32 %14, %10, !dbg !2661
  %16 = xor i32 %15, %11, !dbg !2662
  store i32 %16, i32* %8, align 4, !dbg !2662, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2637, metadata !748), !dbg !2644
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2663
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !2664
  ret i8* %17, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2666 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !607), !dbg !2672
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2671, metadata !607), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2634, metadata !607) #11, !dbg !2674
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2635, metadata !607) #11, !dbg !2676
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2636, metadata !607) #11, !dbg !2677
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2678
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !2678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2679, !tbaa.struct !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2637, metadata !748) #11, !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1102, metadata !607) #11, !dbg !2681
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1103, metadata !607) #11, !dbg !2683
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1104, metadata !607) #11, !dbg !2684
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1105, metadata !607) #11, !dbg !2685
  %5 = lshr i8 %1, 5, !dbg !2686
  %6 = zext i8 %5 to i64, !dbg !2686
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2687
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1106, metadata !607) #11, !dbg !2688
  %8 = and i8 %1, 31, !dbg !2689
  %9 = zext i8 %8 to i32, !dbg !2690
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1108, metadata !607) #11, !dbg !2691
  %10 = load i32, i32* %7, align 4, !dbg !2692, !tbaa !678
  %11 = lshr i32 %10, %9, !dbg !2693
  %12 = and i32 %11, 1, !dbg !2694
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1109, metadata !607) #11, !dbg !2695
  %13 = xor i32 %12, 1, !dbg !2696
  %14 = shl i32 %13, %9, !dbg !2697
  %15 = xor i32 %14, %10, !dbg !2698
  store i32 %15, i32* %7, align 4, !dbg !2698, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2637, metadata !748) #11, !dbg !2680
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2699
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !2700
  ret i8* %16, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2702 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2704, metadata !607), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !607) #11, !dbg !2706
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2671, metadata !607) #11, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2634, metadata !607) #11, !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2635, metadata !607) #11, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2636, metadata !607) #11, !dbg !2712
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2713
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !2713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2714, !tbaa.struct !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2637, metadata !748) #11, !dbg !2715
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1102, metadata !607) #11, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1103, metadata !607) #11, !dbg !2718
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1104, metadata !607) #11, !dbg !2719
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1105, metadata !607) #11, !dbg !2720
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2721
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1106, metadata !607) #11, !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1108, metadata !607) #11, !dbg !2723
  %5 = load i32, i32* %4, align 4, !dbg !2724, !tbaa !678
  %6 = or i32 %5, 67108864, !dbg !2725
  store i32 %6, i32* %4, align 4, !dbg !2725, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2637, metadata !748) #11, !dbg !2715
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2726
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !2727
  ret i8* %7, !dbg !2728
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2729 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2731, metadata !607), !dbg !2733
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2732, metadata !607), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2634, metadata !607) #11, !dbg !2735
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2635, metadata !607) #11, !dbg !2737
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2636, metadata !607) #11, !dbg !2738
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2739
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !2739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2740, !tbaa.struct !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2637, metadata !748) #11, !dbg !2741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1102, metadata !607) #11, !dbg !2742
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1103, metadata !607) #11, !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1104, metadata !607) #11, !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1105, metadata !607) #11, !dbg !2746
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2747
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1106, metadata !607) #11, !dbg !2748
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1108, metadata !607) #11, !dbg !2749
  %6 = load i32, i32* %5, align 4, !dbg !2750, !tbaa !678
  %7 = or i32 %6, 67108864, !dbg !2751
  store i32 %7, i32* %5, align 4, !dbg !2751, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2637, metadata !748) #11, !dbg !2741
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2752
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !2753
  ret i8* %8, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2755 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2510, metadata !2516), !dbg !2761
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2757, metadata !607), !dbg !2763
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2758, metadata !607), !dbg !2764
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2759, metadata !607), !dbg !2765
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2766
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2515, metadata !607) #11, !dbg !2767
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2768
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2768
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2510, metadata !607) #11, !dbg !2761
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2510, metadata !2526) #11, !dbg !2761
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2761
  %9 = icmp eq i32 %1, 10, !dbg !2769
  br i1 %9, label %10, label %11, !dbg !2770

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2771, !noalias !2772
  unreachable, !dbg !2771

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2510, metadata !2526) #11, !dbg !2761
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2775
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2775
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2776
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2777
  store i32 %1, i32* %13, align 8, !dbg !2777
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2777
  %15 = bitcast i32* %14 to i8*, !dbg !2777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2777
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2760, metadata !748), !dbg !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1102, metadata !607), !dbg !2779
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1103, metadata !607), !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1104, metadata !607), !dbg !2782
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1105, metadata !607), !dbg !2783
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2784
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1106, metadata !607), !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1108, metadata !607), !dbg !2786
  %17 = load i32, i32* %16, align 4, !dbg !2787, !tbaa !678
  %18 = or i32 %17, 67108864, !dbg !2788
  store i32 %18, i32* %16, align 4, !dbg !2788, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2760, metadata !748), !dbg !2778
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2789
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2790
  ret i8* %19, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2792 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2796, metadata !607), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2797, metadata !607), !dbg !2801
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2798, metadata !607), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2799, metadata !607), !dbg !2803
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2804, metadata !607) #11, !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2809, metadata !607) #11, !dbg !2816
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2810, metadata !607) #11, !dbg !2817
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2811, metadata !607) #11, !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2812, metadata !607) #11, !dbg !2819
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2820
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2821, !tbaa.struct !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2813, metadata !748) #11, !dbg !2822
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1152, metadata !607) #11, !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1153, metadata !607) #11, !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1154, metadata !607) #11, !dbg !2826
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1152, metadata !607) #11, !dbg !2823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1152, metadata !607) #11, !dbg !2823
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2827
  store i32 10, i32* %7, align 8, !dbg !2828, !tbaa !1082
  %8 = icmp ne i8* %1, null, !dbg !2829
  %9 = icmp ne i8* %2, null, !dbg !2830
  %10 = and i1 %8, %9, !dbg !2831
  br i1 %10, label %12, label %11, !dbg !2831

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2832
  unreachable, !dbg !2832

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2833
  store i8* %1, i8** %13, align 8, !dbg !2834, !tbaa !1171
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2835
  store i8* %2, i8** %14, align 8, !dbg !2836, !tbaa !1174
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2813, metadata !748) #11, !dbg !2822
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2837
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2838
  ret i8* %15, !dbg !2839
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2805 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2804, metadata !607), !dbg !2840
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2809, metadata !607), !dbg !2841
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2810, metadata !607), !dbg !2842
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2811, metadata !607), !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2812, metadata !607), !dbg !2844
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2845
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2846, !tbaa.struct !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2813, metadata !748), !dbg !2847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1152, metadata !607) #11, !dbg !2848
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1153, metadata !607) #11, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1154, metadata !607) #11, !dbg !2851
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1152, metadata !607) #11, !dbg !2848
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1152, metadata !607) #11, !dbg !2848
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2852
  store i32 10, i32* %8, align 8, !dbg !2853, !tbaa !1082
  %9 = icmp ne i8* %1, null, !dbg !2854
  %10 = icmp ne i8* %2, null, !dbg !2855
  %11 = and i1 %9, %10, !dbg !2856
  br i1 %11, label %13, label %12, !dbg !2856

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2857
  unreachable, !dbg !2857

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2858
  store i8* %1, i8** %14, align 8, !dbg !2859, !tbaa !1171
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2860
  store i8* %2, i8** %15, align 8, !dbg !2861, !tbaa !1174
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2813, metadata !748), !dbg !2847
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2862
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2863
  ret i8* %16, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2865 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !607), !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2870, metadata !607), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2871, metadata !607), !dbg !2874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2796, metadata !607) #11, !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2797, metadata !607) #11, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2798, metadata !607) #11, !dbg !2878
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2799, metadata !607) #11, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2804, metadata !607) #11, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2809, metadata !607) #11, !dbg !2882
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2810, metadata !607) #11, !dbg !2883
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2811, metadata !607) #11, !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2812, metadata !607) #11, !dbg !2885
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !2886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2887, !tbaa.struct !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2813, metadata !748) #11, !dbg !2888
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1152, metadata !607) #11, !dbg !2889
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1153, metadata !607) #11, !dbg !2891
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1154, metadata !607) #11, !dbg !2892
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1152, metadata !607) #11, !dbg !2889
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1152, metadata !607) #11, !dbg !2889
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2893
  store i32 10, i32* %6, align 8, !dbg !2894, !tbaa !1082
  %7 = icmp ne i8* %0, null, !dbg !2895
  %8 = icmp ne i8* %1, null, !dbg !2896
  %9 = and i1 %7, %8, !dbg !2897
  br i1 %9, label %11, label %10, !dbg !2897

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2898
  unreachable, !dbg !2898

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2899
  store i8* %0, i8** %12, align 8, !dbg !2900, !tbaa !1171
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2901
  store i8* %1, i8** %13, align 8, !dbg !2902, !tbaa !1174
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2813, metadata !748) #11, !dbg !2888
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2903
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !2904
  ret i8* %14, !dbg !2905
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2906 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2910, metadata !607), !dbg !2914
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2911, metadata !607), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2912, metadata !607), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2913, metadata !607), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2804, metadata !607) #11, !dbg !2918
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2809, metadata !607) #11, !dbg !2920
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2810, metadata !607) #11, !dbg !2921
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2811, metadata !607) #11, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2812, metadata !607) #11, !dbg !2923
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2924
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2924
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2925, !tbaa.struct !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2813, metadata !748) #11, !dbg !2926
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1152, metadata !607) #11, !dbg !2927
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1153, metadata !607) #11, !dbg !2929
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1154, metadata !607) #11, !dbg !2930
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1152, metadata !607) #11, !dbg !2927
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1152, metadata !607) #11, !dbg !2927
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2931
  store i32 10, i32* %7, align 8, !dbg !2932, !tbaa !1082
  %8 = icmp ne i8* %0, null, !dbg !2933
  %9 = icmp ne i8* %1, null, !dbg !2934
  %10 = and i1 %8, %9, !dbg !2935
  br i1 %10, label %12, label %11, !dbg !2935

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2936
  unreachable, !dbg !2936

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2937
  store i8* %0, i8** %13, align 8, !dbg !2938, !tbaa !1171
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2939
  store i8* %1, i8** %14, align 8, !dbg !2940, !tbaa !1174
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2813, metadata !748) #11, !dbg !2926
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2941
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2942
  ret i8* %15, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2944 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2948, metadata !607), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2949, metadata !607), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2950, metadata !607), !dbg !2953
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2954
  ret i8* %4, !dbg !2955
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2956 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2960, metadata !607), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2961, metadata !607), !dbg !2963
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2948, metadata !607) #11, !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2949, metadata !607) #11, !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2950, metadata !607) #11, !dbg !2967
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2968
  ret i8* %3, !dbg !2969
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2970 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2974, metadata !607), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2975, metadata !607), !dbg !2977
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2948, metadata !607) #11, !dbg !2978
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2949, metadata !607) #11, !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2950, metadata !607) #11, !dbg !2981
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2982
  ret i8* %3, !dbg !2983
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2984 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2988, metadata !607), !dbg !2989
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2974, metadata !607) #11, !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2975, metadata !607) #11, !dbg !2992
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2948, metadata !607) #11, !dbg !2993
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2949, metadata !607) #11, !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2950, metadata !607) #11, !dbg !2996
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2997
  ret i8* %2, !dbg !2998
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2999 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3052, metadata !607), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3053, metadata !607), !dbg !3059
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3054, metadata !607), !dbg !3060
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3055, metadata !607), !dbg !3061
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3056, metadata !607), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3057, metadata !607), !dbg !3063
  %7 = icmp eq i8* %1, null, !dbg !3064
  br i1 %7, label %10, label %8, !dbg !3066

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3067
  br label %12, !dbg !3067

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3068
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #11, !dbg !3069
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3070
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #11, !dbg !3072
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3073
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
  ], !dbg !3074

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3075
  unreachable, !dbg !3075

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #11, !dbg !3077
  %20 = load i8*, i8** %4, align 8, !dbg !3077, !tbaa !615
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3078
  br label %146, !dbg !3080

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #11, !dbg !3081
  %24 = load i8*, i8** %4, align 8, !dbg !3081, !tbaa !615
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3081
  %26 = load i8*, i8** %25, align 8, !dbg !3081, !tbaa !615
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3082
  br label %146, !dbg !3083

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #11, !dbg !3084
  %30 = load i8*, i8** %4, align 8, !dbg !3084, !tbaa !615
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3084
  %32 = load i8*, i8** %31, align 8, !dbg !3084, !tbaa !615
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3084
  %34 = load i8*, i8** %33, align 8, !dbg !3084, !tbaa !615
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3085
  br label %146, !dbg !3086

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #11, !dbg !3087
  %38 = load i8*, i8** %4, align 8, !dbg !3087, !tbaa !615
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3087
  %40 = load i8*, i8** %39, align 8, !dbg !3087, !tbaa !615
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3087
  %42 = load i8*, i8** %41, align 8, !dbg !3087, !tbaa !615
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3087
  %44 = load i8*, i8** %43, align 8, !dbg !3087, !tbaa !615
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3088
  br label %146, !dbg !3089

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #11, !dbg !3090
  %48 = load i8*, i8** %4, align 8, !dbg !3090, !tbaa !615
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3090
  %50 = load i8*, i8** %49, align 8, !dbg !3090, !tbaa !615
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3090
  %52 = load i8*, i8** %51, align 8, !dbg !3090, !tbaa !615
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3090
  %54 = load i8*, i8** %53, align 8, !dbg !3090, !tbaa !615
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3090
  %56 = load i8*, i8** %55, align 8, !dbg !3090, !tbaa !615
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3091
  br label %146, !dbg !3092

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #11, !dbg !3093
  %60 = load i8*, i8** %4, align 8, !dbg !3093, !tbaa !615
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3093
  %62 = load i8*, i8** %61, align 8, !dbg !3093, !tbaa !615
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3093
  %64 = load i8*, i8** %63, align 8, !dbg !3093, !tbaa !615
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3093
  %66 = load i8*, i8** %65, align 8, !dbg !3093, !tbaa !615
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3093
  %68 = load i8*, i8** %67, align 8, !dbg !3093, !tbaa !615
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3093
  %70 = load i8*, i8** %69, align 8, !dbg !3093, !tbaa !615
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3094
  br label %146, !dbg !3095

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #11, !dbg !3096
  %74 = load i8*, i8** %4, align 8, !dbg !3096, !tbaa !615
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3096
  %76 = load i8*, i8** %75, align 8, !dbg !3096, !tbaa !615
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3096
  %78 = load i8*, i8** %77, align 8, !dbg !3096, !tbaa !615
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3096
  %80 = load i8*, i8** %79, align 8, !dbg !3096, !tbaa !615
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3096
  %82 = load i8*, i8** %81, align 8, !dbg !3096, !tbaa !615
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3096
  %84 = load i8*, i8** %83, align 8, !dbg !3096, !tbaa !615
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3096
  %86 = load i8*, i8** %85, align 8, !dbg !3096, !tbaa !615
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3097
  br label %146, !dbg !3098

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #11, !dbg !3099
  %90 = load i8*, i8** %4, align 8, !dbg !3099, !tbaa !615
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3099
  %92 = load i8*, i8** %91, align 8, !dbg !3099, !tbaa !615
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3099
  %94 = load i8*, i8** %93, align 8, !dbg !3099, !tbaa !615
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3099
  %96 = load i8*, i8** %95, align 8, !dbg !3099, !tbaa !615
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3099
  %98 = load i8*, i8** %97, align 8, !dbg !3099, !tbaa !615
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3099
  %100 = load i8*, i8** %99, align 8, !dbg !3099, !tbaa !615
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3099
  %102 = load i8*, i8** %101, align 8, !dbg !3099, !tbaa !615
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3099
  %104 = load i8*, i8** %103, align 8, !dbg !3099, !tbaa !615
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3100
  br label %146, !dbg !3101

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #11, !dbg !3102
  %108 = load i8*, i8** %4, align 8, !dbg !3102, !tbaa !615
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3102
  %110 = load i8*, i8** %109, align 8, !dbg !3102, !tbaa !615
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3102
  %112 = load i8*, i8** %111, align 8, !dbg !3102, !tbaa !615
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3102
  %114 = load i8*, i8** %113, align 8, !dbg !3102, !tbaa !615
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3102
  %116 = load i8*, i8** %115, align 8, !dbg !3102, !tbaa !615
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3102
  %118 = load i8*, i8** %117, align 8, !dbg !3102, !tbaa !615
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3102
  %120 = load i8*, i8** %119, align 8, !dbg !3102, !tbaa !615
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3102
  %122 = load i8*, i8** %121, align 8, !dbg !3102, !tbaa !615
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3102
  %124 = load i8*, i8** %123, align 8, !dbg !3102, !tbaa !615
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3103
  br label %146, !dbg !3104

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #11, !dbg !3105
  %128 = load i8*, i8** %4, align 8, !dbg !3105, !tbaa !615
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3105
  %130 = load i8*, i8** %129, align 8, !dbg !3105, !tbaa !615
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3105
  %132 = load i8*, i8** %131, align 8, !dbg !3105, !tbaa !615
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3105
  %134 = load i8*, i8** %133, align 8, !dbg !3105, !tbaa !615
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3105
  %136 = load i8*, i8** %135, align 8, !dbg !3105, !tbaa !615
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3105
  %138 = load i8*, i8** %137, align 8, !dbg !3105, !tbaa !615
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3105
  %140 = load i8*, i8** %139, align 8, !dbg !3105, !tbaa !615
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3105
  %142 = load i8*, i8** %141, align 8, !dbg !3105, !tbaa !615
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3105
  %144 = load i8*, i8** %143, align 8, !dbg !3105, !tbaa !615
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3106
  br label %146, !dbg !3107

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3109 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3113, metadata !607), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3114, metadata !607), !dbg !3120
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3115, metadata !607), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3116, metadata !607), !dbg !3122
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3117, metadata !607), !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3118, metadata !607), !dbg !3124
  br label %6, !dbg !3125

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3118, metadata !607), !dbg !3124
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3127
  %9 = load i8*, i8** %8, align 8, !dbg !3127, !tbaa !615
  %10 = icmp eq i8* %9, null, !dbg !3130
  %11 = add i64 %7, 1, !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3118, metadata !607), !dbg !3124
  br i1 %10, label %12, label %6, !dbg !3130, !llvm.loop !3134

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3137
  ret void, !dbg !3138
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3139 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3150, metadata !607), !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3151, metadata !607), !dbg !3159
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3152, metadata !607), !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3153, metadata !607), !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3154, metadata !607), !dbg !3162
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3163
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3163
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3156, metadata !607), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3155, metadata !607), !dbg !3165
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3166
  %12 = icmp ult i32 %11, 41, !dbg !3166
  br i1 %12, label %13, label %18, !dbg !3166

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3170
  %15 = sext i32 %11 to i64, !dbg !3170
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3170
  %17 = add i32 %11, 8, !dbg !3170
  store i32 %17, i32* %8, align 8, !dbg !3170
  br label %21, !dbg !3170

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3172
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3172
  store i8* %20, i8** %10, align 8, !dbg !3172
  br label %21, !dbg !3172

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3166
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3174
  %25 = load i8*, i8** %24, align 8, !dbg !3174
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3176
  store i8* %25, i8** %26, align 16, !dbg !3177, !tbaa !615
  %27 = icmp eq i8* %25, null, !dbg !3178
  br i1 %27, label %30, label %28, !dbg !3179

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %29 = icmp ult i32 %22, 41, !dbg !3166
  br i1 %29, label %35, label %32, !dbg !3166

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3181
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !3182
  ret void, !dbg !3182

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3172
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3172
  store i8* %34, i8** %10, align 8, !dbg !3172
  br label %40, !dbg !3172

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3170
  %37 = sext i32 %22 to i64, !dbg !3170
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3170
  %39 = add i32 %22, 8, !dbg !3170
  store i32 %39, i32* %8, align 8, !dbg !3170
  br label %40, !dbg !3170

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3166
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3174
  %44 = load i8*, i8** %43, align 8, !dbg !3174
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3176
  store i8* %44, i8** %45, align 8, !dbg !3177, !tbaa !615
  %46 = icmp eq i8* %44, null, !dbg !3178
  br i1 %46, label %30, label %47, !dbg !3179

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %48 = icmp ult i32 %41, 41, !dbg !3166
  br i1 %48, label %52, label %49, !dbg !3166

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3172
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3172
  store i8* %51, i8** %10, align 8, !dbg !3172
  br label %57, !dbg !3172

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3170
  %54 = sext i32 %41 to i64, !dbg !3170
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3170
  %56 = add i32 %41, 8, !dbg !3170
  store i32 %56, i32* %8, align 8, !dbg !3170
  br label %57, !dbg !3170

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3166
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3174
  %61 = load i8*, i8** %60, align 8, !dbg !3174
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3176
  store i8* %61, i8** %62, align 16, !dbg !3177, !tbaa !615
  %63 = icmp eq i8* %61, null, !dbg !3178
  br i1 %63, label %30, label %64, !dbg !3179

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %65 = icmp ult i32 %58, 41, !dbg !3166
  br i1 %65, label %69, label %66, !dbg !3166

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3172
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3172
  store i8* %68, i8** %10, align 8, !dbg !3172
  br label %74, !dbg !3172

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3170
  %71 = sext i32 %58 to i64, !dbg !3170
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3170
  %73 = add i32 %58, 8, !dbg !3170
  store i32 %73, i32* %8, align 8, !dbg !3170
  br label %74, !dbg !3170

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3166
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3174
  %78 = load i8*, i8** %77, align 8, !dbg !3174
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3176
  store i8* %78, i8** %79, align 8, !dbg !3177, !tbaa !615
  %80 = icmp eq i8* %78, null, !dbg !3178
  br i1 %80, label %30, label %81, !dbg !3179

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %82 = icmp ult i32 %75, 41, !dbg !3166
  br i1 %82, label %86, label %83, !dbg !3166

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3172
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3172
  store i8* %85, i8** %10, align 8, !dbg !3172
  br label %91, !dbg !3172

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3170
  %88 = sext i32 %75 to i64, !dbg !3170
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3170
  %90 = add i32 %75, 8, !dbg !3170
  store i32 %90, i32* %8, align 8, !dbg !3170
  br label %91, !dbg !3170

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3166
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3174
  %95 = load i8*, i8** %94, align 8, !dbg !3174
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3176
  store i8* %95, i8** %96, align 16, !dbg !3177, !tbaa !615
  %97 = icmp eq i8* %95, null, !dbg !3178
  br i1 %97, label %30, label %98, !dbg !3179

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %99 = icmp ult i32 %92, 41, !dbg !3166
  br i1 %99, label %103, label %100, !dbg !3166

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3172
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3172
  store i8* %102, i8** %10, align 8, !dbg !3172
  br label %108, !dbg !3172

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3170
  %105 = sext i32 %92 to i64, !dbg !3170
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3170
  %107 = add i32 %92, 8, !dbg !3170
  store i32 %107, i32* %8, align 8, !dbg !3170
  br label %108, !dbg !3170

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3174
  %111 = load i8*, i8** %110, align 8, !dbg !3174
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3176
  store i8* %111, i8** %112, align 8, !dbg !3177, !tbaa !615
  %113 = icmp eq i8* %111, null, !dbg !3178
  br i1 %113, label %30, label %114, !dbg !3179

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %115 = load i8*, i8** %10, align 8, !dbg !3172
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3172
  store i8* %116, i8** %10, align 8, !dbg !3172
  %117 = bitcast i8* %115 to i8**, !dbg !3174
  %118 = load i8*, i8** %117, align 8, !dbg !3174
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3176
  store i8* %118, i8** %119, align 16, !dbg !3177, !tbaa !615
  %120 = icmp eq i8* %118, null, !dbg !3178
  br i1 %120, label %30, label %121, !dbg !3179

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %122 = load i8*, i8** %10, align 8, !dbg !3172
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3172
  store i8* %123, i8** %10, align 8, !dbg !3172
  %124 = bitcast i8* %122 to i8**, !dbg !3174
  %125 = load i8*, i8** %124, align 8, !dbg !3174
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3176
  store i8* %125, i8** %126, align 8, !dbg !3177, !tbaa !615
  %127 = icmp eq i8* %125, null, !dbg !3178
  br i1 %127, label %30, label %128, !dbg !3179

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %129 = load i8*, i8** %10, align 8, !dbg !3172
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3172
  store i8* %130, i8** %10, align 8, !dbg !3172
  %131 = bitcast i8* %129 to i8**, !dbg !3174
  %132 = load i8*, i8** %131, align 8, !dbg !3174
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3176
  store i8* %132, i8** %133, align 16, !dbg !3177, !tbaa !615
  %134 = icmp eq i8* %132, null, !dbg !3178
  br i1 %134, label %30, label %135, !dbg !3179

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %136 = load i8*, i8** %10, align 8, !dbg !3172
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3172
  store i8* %137, i8** %10, align 8, !dbg !3172
  %138 = bitcast i8* %136 to i8**, !dbg !3174
  %139 = load i8*, i8** %138, align 8, !dbg !3174
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3176
  store i8* %139, i8** %140, align 8, !dbg !3177, !tbaa !615
  %141 = icmp eq i8* %139, null, !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3155, metadata !607), !dbg !3165
  %142 = select i1 %141, i64 9, i64 10, !dbg !3179
  br label %30, !dbg !3179
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3183 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3187, metadata !607), !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3188, metadata !607), !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3189, metadata !607), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3190, metadata !607), !dbg !3199
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3200
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !3200
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3191, metadata !607), !dbg !3201
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3202
  call void @llvm.va_start(i8* nonnull %6), !dbg !3202
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3203
  call void @llvm.va_end(i8* nonnull %6), !dbg !3204
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !3205
  ret void, !dbg !3205
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3206 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #11, !dbg !3207
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #11, !dbg !3208
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !3210
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.82, i64 0, i64 0)) #11, !dbg !3211
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !3212
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3212, !tbaa !615
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3213
  ret void, !dbg !3214
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3215 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3217, metadata !607), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3218, metadata !607), !dbg !3220
  %3 = udiv i64 9223372036854775807, %1, !dbg !3221
  %4 = icmp ult i64 %3, %0, !dbg !3221
  br i1 %4, label %5, label %6, !dbg !3223

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3224
  unreachable, !dbg !3224

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3226, metadata !607) #11, !dbg !3233
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3235
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3232, metadata !607) #11, !dbg !3236
  %9 = icmp eq i8* %8, null, !dbg !3237
  %10 = icmp ne i64 %7, 0, !dbg !3239
  %11 = and i1 %10, %9, !dbg !3241
  br i1 %11, label %12, label %13, !dbg !3241

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3242
  unreachable, !dbg !3242

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3243
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3227 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3226, metadata !607), !dbg !3244
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3245
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3232, metadata !607), !dbg !3246
  %3 = icmp eq i8* %2, null, !dbg !3247
  %4 = icmp ne i64 %0, 0, !dbg !3248
  %5 = and i1 %4, %3, !dbg !3249
  br i1 %5, label %6, label %7, !dbg !3249

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3250
  unreachable, !dbg !3250

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3251
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3252 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3256, metadata !607), !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3257, metadata !607), !dbg !3260
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3258, metadata !607), !dbg !3261
  %4 = udiv i64 9223372036854775807, %2, !dbg !3262
  %5 = icmp ult i64 %4, %1, !dbg !3262
  br i1 %5, label %6, label %7, !dbg !3264

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3265
  unreachable, !dbg !3265

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3266
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3267, metadata !607) #11, !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3272, metadata !607) #11, !dbg !3275
  %9 = icmp eq i64 %8, 0, !dbg !3276
  %10 = icmp ne i8* %0, null, !dbg !3278
  %11 = and i1 %10, %9, !dbg !3280
  br i1 %11, label %12, label %13, !dbg !3280

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3281
  br label %19, !dbg !3283

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3284
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3267, metadata !607) #11, !dbg !3273
  %15 = icmp eq i8* %14, null, !dbg !3285
  %16 = icmp ne i64 %8, 0, !dbg !3287
  %17 = and i1 %16, %15, !dbg !3289
  br i1 %17, label %18, label %19, !dbg !3289

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3290
  unreachable, !dbg !3290

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3291
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3268 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3267, metadata !607), !dbg !3292
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3272, metadata !607), !dbg !3293
  %3 = icmp eq i64 %1, 0, !dbg !3294
  %4 = icmp ne i8* %0, null, !dbg !3295
  %5 = and i1 %4, %3, !dbg !3296
  br i1 %5, label %6, label %7, !dbg !3296

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3297
  br label %13, !dbg !3298

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3299
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3267, metadata !607), !dbg !3292
  %9 = icmp eq i8* %8, null, !dbg !3300
  %10 = icmp ne i64 %1, 0, !dbg !3301
  %11 = and i1 %10, %9, !dbg !3302
  br i1 %11, label %12, label %13, !dbg !3302

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3303
  unreachable, !dbg !3303

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3304
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !556 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !561, metadata !607), !dbg !3305
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !562, metadata !607), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !563, metadata !607), !dbg !3307
  %4 = load i64, i64* %1, align 8, !dbg !3308, !tbaa !761
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !564, metadata !607), !dbg !3309
  %5 = icmp eq i8* %0, null, !dbg !3310
  br i1 %5, label %6, label %13, !dbg !3312

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3313
  br i1 %7, label %8, label %17, !dbg !3316

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !564, metadata !607), !dbg !3309
  %10 = icmp ugt i64 %2, 128, !dbg !3319
  %11 = zext i1 %10 to i64, !dbg !3319
  %12 = add nuw nsw i64 %9, %11, !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !564, metadata !607), !dbg !3309
  br label %17, !dbg !3321

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3322
  %15 = icmp ugt i64 %14, %4, !dbg !3325
  br i1 %15, label %20, label %16, !dbg !3326

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3327
  unreachable, !dbg !3327

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !564, metadata !607), !dbg !3309
  store i64 %18, i64* %1, align 8, !dbg !3328, !tbaa !761
  %19 = mul i64 %18, %2, !dbg !3329
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3267, metadata !607) #11, !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3272, metadata !607) #11, !dbg !3332
  br label %27, !dbg !3333

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3334
  %22 = add i64 %4, 1, !dbg !3335
  %23 = add i64 %22, %21, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !564, metadata !607), !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !564, metadata !607), !dbg !3309
  store i64 %23, i64* %1, align 8, !dbg !3328, !tbaa !761
  %24 = mul i64 %23, %2, !dbg !3329
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3267, metadata !607) #11, !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3272, metadata !607) #11, !dbg !3332
  %25 = icmp eq i64 %24, 0, !dbg !3337
  br i1 %25, label %26, label %27, !dbg !3333

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3338
  br label %34, !dbg !3339

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3340
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3267, metadata !607) #11, !dbg !3330
  %30 = icmp eq i8* %29, null, !dbg !3341
  %31 = icmp ne i64 %28, 0, !dbg !3342
  %32 = and i1 %31, %30, !dbg !3343
  br i1 %32, label %33, label %34, !dbg !3343

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3344
  unreachable, !dbg !3344

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3345
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3346 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3348, metadata !607), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3226, metadata !607) #11, !dbg !3350
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3352
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3232, metadata !607) #11, !dbg !3353
  %3 = icmp eq i8* %2, null, !dbg !3354
  %4 = icmp ne i64 %0, 0, !dbg !3355
  %5 = and i1 %4, %3, !dbg !3356
  br i1 %5, label %6, label %7, !dbg !3356

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3357
  unreachable, !dbg !3357

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3358
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3359 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3363, metadata !607), !dbg !3365
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3364, metadata !607), !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !561, metadata !607) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !562, metadata !607) #11, !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !563, metadata !607) #11, !dbg !3370
  %3 = load i64, i64* %1, align 8, !dbg !3371, !tbaa !761
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !564, metadata !607) #11, !dbg !3372
  %4 = icmp eq i8* %0, null, !dbg !3373
  br i1 %4, label %5, label %8, !dbg !3374

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !564, metadata !607) #11, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !564, metadata !607) #11, !dbg !3372
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !564, metadata !607) #11, !dbg !3372
  store i64 %7, i64* %1, align 8, !dbg !3377, !tbaa !761
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3267, metadata !607) #11, !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3272, metadata !607) #11, !dbg !3380
  br label %17, !dbg !3381

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3382
  br i1 %9, label %11, label %10, !dbg !3383

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3384
  unreachable, !dbg !3384

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3385
  %13 = add i64 %3, 1, !dbg !3386
  %14 = add i64 %13, %12, !dbg !3387
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !564, metadata !607) #11, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !564, metadata !607) #11, !dbg !3372
  store i64 %14, i64* %1, align 8, !dbg !3377, !tbaa !761
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3267, metadata !607) #11, !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3272, metadata !607) #11, !dbg !3380
  %15 = icmp eq i64 %14, 0, !dbg !3388
  br i1 %15, label %16, label %17, !dbg !3381

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3389
  br label %24, !dbg !3390

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3267, metadata !607) #11, !dbg !3378
  %20 = icmp eq i8* %19, null, !dbg !3392
  %21 = icmp ne i64 %18, 0, !dbg !3393
  %22 = and i1 %21, %20, !dbg !3394
  br i1 %22, label %23, label %24, !dbg !3394

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3395
  unreachable, !dbg !3395

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3396
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3397 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3399, metadata !607), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3226, metadata !607) #11, !dbg !3401
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3403
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3232, metadata !607) #11, !dbg !3404
  %3 = icmp eq i8* %2, null, !dbg !3405
  %4 = icmp ne i64 %0, 0, !dbg !3406
  %5 = and i1 %4, %3, !dbg !3407
  br i1 %5, label %6, label %7, !dbg !3407

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3408
  unreachable, !dbg !3408

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3409
  ret i8* %2, !dbg !3410
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3411 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3413, metadata !607), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3414, metadata !607), !dbg !3417
  %3 = udiv i64 9223372036854775807, %1, !dbg !3418
  %4 = icmp ult i64 %3, %0, !dbg !3418
  br i1 %4, label %8, label %5, !dbg !3420

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3421
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3415, metadata !607), !dbg !3423
  %7 = icmp eq i8* %6, null, !dbg !3424
  br i1 %7, label %8, label %9, !dbg !3425

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3427
  unreachable, !dbg !3427

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3428
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3429 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !607), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3434, metadata !607), !dbg !3436
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3226, metadata !607) #11, !dbg !3437
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3439
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3232, metadata !607) #11, !dbg !3440
  %4 = icmp eq i8* %3, null, !dbg !3441
  %5 = icmp ne i64 %1, 0, !dbg !3442
  %6 = and i1 %5, %4, !dbg !3443
  br i1 %6, label %7, label %8, !dbg !3443

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3444
  unreachable, !dbg !3444

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3445
  ret i8* %3, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3447 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3449, metadata !607), !dbg !3450
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3451
  %3 = add i64 %2, 1, !dbg !3452
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3433, metadata !607) #11, !dbg !3453
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3434, metadata !607) #11, !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3226, metadata !607) #11, !dbg !3457
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3459
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3232, metadata !607) #11, !dbg !3460
  %5 = icmp eq i8* %4, null, !dbg !3461
  %6 = icmp ne i64 %3, 0, !dbg !3462
  %7 = and i1 %6, %5, !dbg !3463
  br i1 %7, label %8, label %9, !dbg !3463

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3464
  unreachable, !dbg !3464

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3465
  ret i8* %4, !dbg !3466
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3467 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3469, !tbaa !678
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.93, i64 0, i64 0), i32 5) #11, !dbg !3470
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), i8* %2) #11, !dbg !3471
  tail call void @abort() #14, !dbg !3473
  unreachable, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3474 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3477, metadata !607), !dbg !3483
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3478, metadata !607), !dbg !3484
  %3 = icmp eq i64 %0, 0, !dbg !3485
  %4 = icmp eq i64 %1, 0, !dbg !3486
  %5 = or i1 %3, %4, !dbg !3488
  br i1 %5, label %12, label %6, !dbg !3488

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3480, metadata !607), !dbg !3490
  %8 = udiv i64 %7, %1, !dbg !3491
  %9 = icmp eq i64 %8, %0, !dbg !3493
  br i1 %9, label %12, label %10, !dbg !3494

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3495
  store i32 12, i32* %11, align 4, !dbg !3497, !tbaa !678
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3477, metadata !607), !dbg !3483
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3478, metadata !607), !dbg !3484
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3498
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3479, metadata !607), !dbg !3499
  br label %16, !dbg !3500

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3501
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3502 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3519, metadata !607), !dbg !3528
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3520, metadata !607), !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3521, metadata !607), !dbg !3530
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3522, metadata !607), !dbg !3531
  %6 = bitcast i32* %5 to i8*, !dbg !3532
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !3532
  %7 = icmp eq i32* %0, null, !dbg !3533
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3519, metadata !607), !dbg !3528
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3535
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3519, metadata !607), !dbg !3528
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3523, metadata !607), !dbg !3537
  %10 = icmp ugt i64 %9, -3, !dbg !3538
  %11 = icmp ne i64 %2, 0, !dbg !3539
  %12 = and i1 %11, %10, !dbg !3541
  br i1 %12, label %13, label %18, !dbg !3541

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3542
  br i1 %14, label %18, label %15, !dbg !3544

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3546, !tbaa !812
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3525, metadata !607), !dbg !3547
  %17 = zext i8 %16 to i32, !dbg !3548
  store i32 %17, i32* %8, align 4, !dbg !3549, !tbaa !678
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !3550
  ret i64 %19, !dbg !3550
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #6 !dbg !3551 {
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !3580, metadata !607), !dbg !3583
  %2 = tail call noalias i8* @xmalloc(i64 33) #11, !dbg !3584
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3582, metadata !607), !dbg !3585
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !3586
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3587, metadata !607) #11, !dbg !3597
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3595, metadata !607) #11, !dbg !3597
  tail call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !3596, metadata !607) #11, !dbg !3597
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false) #11, !dbg !3599
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #11, !dbg !3600
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3601
  store i8 0, i8* %6, align 1, !dbg !3602, !tbaa !812
  %7 = tail call i64 @strlen(i8* %2) #13, !dbg !3603
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3581, metadata !607), !dbg !3605
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3581, metadata !607), !dbg !3605
  %8 = icmp sgt i64 %7, 0, !dbg !3606
  br i1 %8, label %9, label %19, !dbg !3608

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !3609
  br label %11, !dbg !3610

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %13, %16 ], [ %10, %9 ]
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !3610
  %14 = load i8, i8* %13, align 1, !dbg !3610, !tbaa !812
  %15 = icmp eq i8 %14, 32, !dbg !3612
  br i1 %15, label %16, label %18, !dbg !3613

; <label>:16:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3581, metadata !607), !dbg !3605
  store i8 0, i8* %13, align 1, !dbg !3615, !tbaa !812
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3581, metadata !607), !dbg !3605
  %17 = icmp ult i8* %2, %13, !dbg !3606
  br i1 %17, label %11, label %18, !dbg !3608, !llvm.loop !3616

; <label>:18:                                     ; preds = %16, %11
  br label %19, !dbg !3619

; <label>:19:                                     ; preds = %18, %1
  ret i8* %2, !dbg !3619
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #6 !dbg !3620 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3626, metadata !607), !dbg !3634
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3627, metadata !607), !dbg !3635
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %2, i64 0, metadata !3628, metadata !607), !dbg !3636
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3629, metadata !607), !dbg !3637
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3630, metadata !607), !dbg !3638
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3631, metadata !607), !dbg !3639
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !3632, metadata !607), !dbg !3640
  %5 = tail call i32 @utmpxname(i8* %0) #11, !dbg !3641
  tail call void @setutxent() #11, !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3630, metadata !607), !dbg !3638
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !3632, metadata !607), !dbg !3640
  %6 = tail call %struct.utmpx* @getutxent() #11, !dbg !3643
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %6, i64 0, metadata !3633, metadata !607), !dbg !3645
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !3646
  br i1 %7, label %79, label %8, !dbg !3647

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !3647

; <label>:13:                                     ; preds = %8, %67
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %67 ]
  %15 = phi i64 [ 0, %8 ], [ %71, %67 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %70, %67 ]
  %17 = phi i8* [ null, %8 ], [ %69, %67 ]
  %18 = phi i64 [ 0, %8 ], [ %68, %67 ]
  br label %19, !dbg !3647

; <label>:19:                                     ; preds = %13, %31
  %20 = phi %struct.utmpx* [ %14, %13 ], [ %32, %31 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %20, i64 0, metadata !3648, metadata !607) #11, !dbg !3655
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3653, metadata !607) #11, !dbg !3658
  %21 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 4, i64 0, !dbg !3659
  %22 = load i8, i8* %21, align 4, !dbg !3659, !tbaa !812
  %23 = icmp eq i8 %22, 0, !dbg !3659
  br i1 %23, label %28, label %24, !dbg !3659

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 0, !dbg !3660
  %26 = load i16, i16* %25, align 4, !dbg !3660, !tbaa !815
  %27 = icmp eq i16 %26, 7, !dbg !3660
  br label %28

; <label>:28:                                     ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  %30 = or i1 %10, %29, !dbg !3662
  br i1 %30, label %34, label %31, !dbg !3662

; <label>:31:                                     ; preds = %28, %44
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !3630, metadata !607), !dbg !3638
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %16, i64 0, metadata !3632, metadata !607), !dbg !3640
  %32 = tail call %struct.utmpx* @getutxent() #11, !dbg !3643
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %32, i64 0, metadata !3633, metadata !607), !dbg !3645
  %33 = icmp eq %struct.utmpx* %32, null, !dbg !3646
  br i1 %33, label %77, label %19, !dbg !3647

; <label>:34:                                     ; preds = %28
  %35 = xor i1 %29, true, !dbg !3664
  %36 = or i1 %12, %35, !dbg !3664
  br i1 %36, label %48, label %37, !dbg !3664

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 1, !dbg !3666
  %39 = load i32, i32* %38, align 4, !dbg !3666, !tbaa !3668
  %40 = icmp sgt i32 %39, 0, !dbg !3669
  br i1 %40, label %41, label %48, !dbg !3670

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @kill(i32 %39, i32 0) #11, !dbg !3671
  %43 = icmp slt i32 %42, 0, !dbg !3672
  br i1 %43, label %44, label %48, !dbg !3673

; <label>:44:                                     ; preds = %41
  %45 = tail call i32* @__errno_location() #1, !dbg !3674
  %46 = load i32, i32* %45, align 4, !dbg !3674, !tbaa !678
  %47 = icmp eq i32 %46, 3, !dbg !3676
  br i1 %47, label %31, label %48, !dbg !3677

; <label>:48:                                     ; preds = %44, %41, %37, %34
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !3631, metadata !607), !dbg !3639
  %49 = icmp eq i64 %15, %18, !dbg !3678
  br i1 %49, label %50, label %67, !dbg !3681

; <label>:50:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !581, metadata !607) #11, !dbg !3682
  tail call void @llvm.dbg.value(metadata i64 384, i64 0, metadata !583, metadata !607) #11, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !584, metadata !607) #11, !dbg !3685
  %51 = icmp eq i8* %17, null, !dbg !3686
  br i1 %51, label %52, label %55, !dbg !3688

; <label>:52:                                     ; preds = %50
  %53 = icmp eq i64 %15, 0, !dbg !3689
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !584, metadata !607) #11, !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !584, metadata !607) #11, !dbg !3685
  %54 = select i1 %53, i64 1, i64 %15, !dbg !3692
  br label %62, !dbg !3692

; <label>:55:                                     ; preds = %50
  %56 = icmp ult i64 %15, 16012798675095096, !dbg !3693
  br i1 %56, label %58, label %57, !dbg !3696

; <label>:57:                                     ; preds = %55
  tail call void @xalloc_die() #14, !dbg !3697
  unreachable, !dbg !3697

; <label>:58:                                     ; preds = %55
  %59 = lshr i64 %15, 1, !dbg !3698
  %60 = add i64 %15, 1, !dbg !3699
  %61 = add i64 %60, %59, !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !584, metadata !607) #11, !dbg !3685
  br label %62

; <label>:62:                                     ; preds = %52, %58
  %63 = phi i64 [ %61, %58 ], [ %54, %52 ]
  tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !584, metadata !607) #11, !dbg !3685
  %64 = mul i64 %63, 384, !dbg !3701
  %65 = tail call i8* @xrealloc(i8* %17, i64 %64) #11, !dbg !3702
  %66 = bitcast i8* %65 to %struct.utmpx*, !dbg !3703
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %66, i64 0, metadata !3632, metadata !607), !dbg !3640
  br label %67, !dbg !3704

; <label>:67:                                     ; preds = %62, %48
  %68 = phi i64 [ %63, %62 ], [ %18, %48 ]
  %69 = phi i8* [ %65, %62 ], [ %17, %48 ]
  %70 = phi %struct.utmpx* [ %66, %62 ], [ %16, %48 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %70, i64 0, metadata !3632, metadata !607), !dbg !3640
  %71 = add i64 %15, 1, !dbg !3705
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !3630, metadata !607), !dbg !3638
  %72 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %70, i64 %15, !dbg !3706
  %73 = bitcast %struct.utmpx* %72 to i8*, !dbg !3707
  %74 = bitcast %struct.utmpx* %20 to i8*, !dbg !3707
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 384, i32 4, i1 false), !dbg !3707, !tbaa.struct !3708
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !3630, metadata !607), !dbg !3638
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %70, i64 0, metadata !3632, metadata !607), !dbg !3640
  %75 = tail call %struct.utmpx* @getutxent() #11, !dbg !3643
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %75, i64 0, metadata !3633, metadata !607), !dbg !3645
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !3646
  br i1 %76, label %78, label %13, !dbg !3647, !llvm.loop !3709

; <label>:77:                                     ; preds = %31
  br label %79, !dbg !3712

; <label>:78:                                     ; preds = %67
  br label %79, !dbg !3712

; <label>:79:                                     ; preds = %78, %77, %4
  %80 = phi i8* [ null, %4 ], [ %17, %77 ], [ %69, %78 ]
  %81 = phi i64 [ 0, %4 ], [ %15, %77 ], [ %71, %78 ]
  tail call void @endutxent() #11, !dbg !3712
  store i64 %81, i64* %1, align 8, !dbg !3713, !tbaa !761
  %82 = bitcast %struct.utmpx** %2 to i8**, !dbg !3714
  store i8* %80, i8** %82, align 8, !dbg !3714, !tbaa !615
  ret i32 0, !dbg !3715
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3716 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3761, metadata !607), !dbg !3766
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3767
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3768, metadata !607), !dbg !3771
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3773
  %4 = load i32, i32* %3, align 8, !dbg !3773, !tbaa !3774
  %5 = and i32 %4, 32, !dbg !3773
  %6 = icmp eq i32 %5, 0, !dbg !3775
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3776
  %8 = icmp ne i32 %7, 0, !dbg !3777
  br i1 %6, label %9, label %19, !dbg !3778

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3780
  %11 = icmp ne i64 %2, 0, !dbg !3780
  %12 = or i1 %11, %10, !dbg !3780
  %13 = sext i1 %8 to i32, !dbg !3780
  br i1 %12, label %22, label %14, !dbg !3780

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3782
  %16 = load i32, i32* %15, align 4, !dbg !3782, !tbaa !678
  %17 = icmp ne i32 %16, 9, !dbg !3784
  %18 = sext i1 %17 to i32, !dbg !3784
  br label %22, !dbg !3784

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3786

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3788
  store i32 0, i32* %21, align 4, !dbg !3790, !tbaa !678
  br label %22, !dbg !3788

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3791
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3792 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3797, metadata !607), !dbg !3817
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3798, metadata !607), !dbg !3818
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3819
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3799, metadata !607), !dbg !3820
  %3 = icmp eq i8* %2, null, !dbg !3821
  br i1 %3, label %15, label %4, !dbg !3822

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3807, metadata !607), !dbg !3823
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3808, metadata !607), !dbg !3824
  %5 = load i8, i8* %2, align 1, !dbg !3825, !tbaa !812
  %6 = icmp eq i8 %5, 67, !dbg !3827
  br i1 %6, label %7, label %11, !dbg !3830

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3832
  %9 = load i8, i8* %8, align 1, !dbg !3832, !tbaa !812
  %10 = icmp eq i8 %9, 0, !dbg !3835
  br i1 %10, label %14, label %11, !dbg !3837

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3813, metadata !607), !dbg !3839
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0)) #11, !dbg !3840
  %13 = icmp eq i32 %12, 0, !dbg !3842
  br i1 %13, label %14, label %15, !dbg !3844

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3798, metadata !607), !dbg !3818
  br label %15, !dbg !3846

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3847
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3848 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3860, metadata !607), !dbg !3934
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3927, metadata !607), !dbg !3936
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3937
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3852, metadata !607), !dbg !3938
  %4 = icmp eq i8* %3, null, !dbg !3939
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i8* %3, !dbg !3941
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3852, metadata !607), !dbg !3938
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3942, !tbaa !615
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3874, metadata !607) #11, !dbg !3943
  %7 = icmp eq i8* %6, null, !dbg !3944
  br i1 %7, label %8, label %127, !dbg !3945

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.111, i64 0, i64 0)) #11, !dbg !3946
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3875, metadata !607) #11, !dbg !3947
  %10 = icmp eq i8* %9, null, !dbg !3948
  br i1 %10, label %14, label %11, !dbg !3950

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3951, !tbaa !812
  %13 = icmp eq i8 %12, 0, !dbg !3953
  br i1 %13, label %14, label %15, !dbg !3954

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3956

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.112, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3875, metadata !607) #11, !dbg !3947
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3878, metadata !607) #11, !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3880, metadata !607) #11, !dbg !3959
  %18 = icmp eq i64 %17, 0, !dbg !3960
  br i1 %18, label %24, label %19, !dbg !3961

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3962
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3962
  %22 = load i8, i8* %21, align 1, !dbg !3962, !tbaa !812
  %23 = icmp ne i8 %22, 47, !dbg !3964
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3965
  %27 = add i64 %17, 14, !dbg !3966
  %28 = add i64 %27, %26, !dbg !3967
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3877, metadata !607) #11, !dbg !3969
  %30 = icmp eq i8* %29, null, !dbg !3970
  br i1 %30, label %125, label %31, !dbg !3970

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !3971
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3974

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3975, !tbaa !812
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3977
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3978
  br label %37, !dbg !3979

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3977
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3978
  br label %37, !dbg !3979

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !3980
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3882, metadata !607) #11, !dbg !3981
  %39 = icmp slt i32 %38, 0, !dbg !3982
  br i1 %39, label %123, label %40, !dbg !3983

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.114, i64 0, i64 0)) #11, !dbg !3984
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3883, metadata !607) #11, !dbg !3985
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3986
  br i1 %42, label %48, label %43, !dbg !3987

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3988

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !3989
  br label %123, !dbg !3991

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3924, metadata !607) #11, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3925, metadata !607) #11, !dbg !3992
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !3993
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !3994
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3995, metadata !607) #11, !dbg !4000
  %53 = load i8*, i8** %46, align 8, !dbg !4002, !tbaa !4003
  %54 = load i8*, i8** %47, align 8, !dbg !4002, !tbaa !4004
  %55 = icmp ult i8* %53, %54, !dbg !4002
  br i1 %55, label %58, label %56, !dbg !4002, !prof !849

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4005
  br label %62, !dbg !4005

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4007
  store i8* %59, i8** %46, align 8, !dbg !4007, !tbaa !4003
  %60 = load i8, i8* %53, align 1, !dbg !4007, !tbaa !812
  %61 = zext i8 %60 to i32, !dbg !4007
  br label %62, !dbg !4007

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4009
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3926, metadata !607) #11, !dbg !4011
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4012

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4013

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3995, metadata !607) #11, !dbg !4013
  %66 = load i8*, i8** %46, align 8, !dbg !4017, !tbaa !4003
  %67 = load i8*, i8** %47, align 8, !dbg !4017, !tbaa !4004
  %68 = icmp ult i8* %66, %67, !dbg !4017
  br i1 %68, label %71, label %69, !dbg !4017, !prof !849

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4018
  br label %75, !dbg !4018

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4019
  store i8* %72, i8** %46, align 8, !dbg !4019, !tbaa !4003
  %73 = load i8, i8* %66, align 1, !dbg !4019, !tbaa !812
  %74 = zext i8 %73 to i32, !dbg !4019
  br label %75, !dbg !4019

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4020
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3926, metadata !607) #11, !dbg !4011
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4021, !llvm.loop !4023

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !4026
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.115, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !4027
  %80 = icmp slt i32 %79, 2, !dbg !4029
  br i1 %80, label %115, label %81, !dbg !4030

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4031
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3931, metadata !607) #11, !dbg !4032
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3932, metadata !607) #11, !dbg !4034
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3933, metadata !607) #11, !dbg !4035
  %84 = icmp eq i64 %51, 0, !dbg !4036
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4038

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3925, metadata !607) #11, !dbg !3992
  %89 = add i64 %86, 2, !dbg !4039
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !4041
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3924, metadata !607) #11, !dbg !3988
  br label %95, !dbg !4042

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3925, metadata !607) #11, !dbg !3992
  %93 = add i64 %92, 1, !dbg !4045
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !4046
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3924, metadata !607) #11, !dbg !3988
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3924, metadata !607) #11, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3925, metadata !607) #11, !dbg !3992
  %98 = icmp eq i8* %97, null, !dbg !4047
  br i1 %98, label %99, label %100, !dbg !4049

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3925, metadata !607) #11, !dbg !3992
  call void @free(i8* %52) #11, !dbg !4050
  br label %116, !dbg !4052

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4053
  %102 = xor i64 %83, -1, !dbg !4054
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4054
  %104 = xor i64 %82, -1, !dbg !4055
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4055
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4056, metadata !607) #11, !dbg !4062
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4061, metadata !607) #11, !dbg !4062
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !4064
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !4065
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4056, metadata !607) #11, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4061, metadata !607) #11, !dbg !4066
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !4068
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !4069
  br label %111, !dbg !4070

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3988

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3924, metadata !607) #11, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3925, metadata !607) #11, !dbg !3992
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4070
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4070
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3988

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3988

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3924, metadata !607) #11, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3925, metadata !607) #11, !dbg !3992
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4070
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4070
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4071
  %120 = icmp eq i64 %117, 0, !dbg !4072
  br i1 %120, label %123, label %121, !dbg !4074

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4075
  store i8 0, i8* %122, align 1, !dbg !4077, !tbaa !812
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3874, metadata !607) #11, !dbg !3943
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3874, metadata !607) #11, !dbg !3943
  call void @free(i8* %29) #11, !dbg !4078
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3874, metadata !607) #11, !dbg !3943
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4079, !tbaa !615
  br label %127, !dbg !4080

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3853, metadata !607), !dbg !4081
  %129 = load i8, i8* %128, align 1, !dbg !4082, !tbaa !812
  %130 = icmp eq i8 %129, 0, !dbg !4083
  br i1 %130, label %157, label %131, !dbg !4084

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4086

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !4086
  %136 = icmp eq i32 %135, 0, !dbg !4087
  br i1 %136, label %143, label %137, !dbg !4088

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4089
  br i1 %138, label %139, label %147, !dbg !4091

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4092
  %141 = load i8, i8* %140, align 1, !dbg !4092, !tbaa !812
  %142 = icmp eq i8 %141, 0, !dbg !4094
  br i1 %142, label %143, label %147, !dbg !4095

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4097
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4099
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4100
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3852, metadata !607), !dbg !3938
  br label %157, !dbg !4101

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4102
  %149 = add i64 %148, 1, !dbg !4103
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4104
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3853, metadata !607), !dbg !4081
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4105
  %152 = add i64 %151, 1, !dbg !4106
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4107
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3853, metadata !607), !dbg !4081
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3853, metadata !607), !dbg !4081
  %154 = load i8, i8* %153, align 1, !dbg !4082, !tbaa !812
  %155 = icmp eq i8 %154, 0, !dbg !4083
  br i1 %155, label %156, label %132, !dbg !4084, !llvm.loop !4108

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3938

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3852, metadata !607), !dbg !3938
  %159 = load i8, i8* %158, align 1, !dbg !4111, !tbaa !812
  %160 = icmp eq i8 %159, 0, !dbg !4113
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %158, !dbg !4114
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3852, metadata !607), !dbg !3938
  ret i8* %161, !dbg !4115
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4116 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4161, metadata !607), !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4162, metadata !607), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4164, metadata !607), !dbg !4167
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4163, metadata !607), !dbg !4169
  %3 = icmp slt i32 %2, 0, !dbg !4170
  br i1 %3, label %4, label %6, !dbg !4172

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4173
  br label %24, !dbg !4174

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4175
  %8 = icmp eq i32 %7, 0, !dbg !4175
  br i1 %8, label %13, label %9, !dbg !4177

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4178
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4180
  %12 = icmp eq i64 %11, -1, !dbg !4182
  br i1 %12, label %16, label %13, !dbg !4183

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4184
  %15 = icmp eq i32 %14, 0, !dbg !4184
  br i1 %15, label %16, label %18, !dbg !4185

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4162, metadata !607), !dbg !4166
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4187
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4164, metadata !607), !dbg !4167
  br label %24, !dbg !4188

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4189
  %20 = load i32, i32* %19, align 4, !dbg !4189, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4162, metadata !607), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4162, metadata !607), !dbg !4166
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4187
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4164, metadata !607), !dbg !4167
  %22 = icmp eq i32 %20, 0, !dbg !4190
  br i1 %22, label %24, label %23, !dbg !4188

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4192, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4164, metadata !607), !dbg !4167
  br label %24, !dbg !4194

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4195
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4196 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4241, metadata !607), !dbg !4242
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4243
  br i1 %2, label %6, label %3, !dbg !4245

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4246
  %5 = icmp eq i32 %4, 0, !dbg !4246
  br i1 %5, label %6, label %8, !dbg !4248

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4250
  br label %17, !dbg !4251

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4252, metadata !607) #11, !dbg !4257
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4259
  %10 = load i32, i32* %9, align 8, !dbg !4259, !tbaa !3774
  %11 = and i32 %10, 256, !dbg !4261
  %12 = icmp eq i32 %11, 0, !dbg !4261
  br i1 %12, label %15, label %13, !dbg !4262

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4263
  br label %15, !dbg !4263

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4264
  br label %17, !dbg !4265

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4266
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4267 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4313, metadata !607), !dbg !4319
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4314, metadata !607), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4315, metadata !607), !dbg !4321
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4322
  %5 = load i8*, i8** %4, align 8, !dbg !4322, !tbaa !4004
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4323
  %7 = load i8*, i8** %6, align 8, !dbg !4323, !tbaa !4003
  %8 = icmp eq i8* %5, %7, !dbg !4324
  br i1 %8, label %9, label %28, !dbg !4325

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4326
  %11 = load i8*, i8** %10, align 8, !dbg !4326, !tbaa !846
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4328
  %13 = load i8*, i8** %12, align 8, !dbg !4328, !tbaa !4329
  %14 = icmp eq i8* %11, %13, !dbg !4330
  br i1 %14, label %15, label %28, !dbg !4331

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4332
  %17 = load i8*, i8** %16, align 8, !dbg !4332, !tbaa !4333
  %18 = icmp eq i8* %17, null, !dbg !4334
  br i1 %18, label %19, label %28, !dbg !4335

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4337
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4316, metadata !607), !dbg !4340
  %22 = icmp eq i64 %21, -1, !dbg !4341
  br i1 %22, label %30, label %23, !dbg !4343

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4344
  %25 = load i32, i32* %24, align 8, !dbg !4345, !tbaa !3774
  %26 = and i32 %25, -17, !dbg !4345
  store i32 %26, i32* %24, align 8, !dbg !4345, !tbaa !3774
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4346
  store i64 %21, i64* %27, align 8, !dbg !4347, !tbaa !4348
  br label %30, !dbg !4349

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4350
  br label %30, !dbg !4351

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4352
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
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!498, !2, !11, !20, !28, !46, !55, !543, !142, !551, !568, !570, !572, !575, !586, !588, !151, !591, !593, !595}
!llvm.ident = !{!597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597}
!llvm.module.flags = !{!598, !599, !600, !601}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10)
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !16, line: 36, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13)
!12 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!9, !14}
!14 = !DIGlobalVariableExpression(var: !15)
!15 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !16, line: 46, type: !17, isLocal: true, isDefinition: true)
!16 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIGlobalVariableExpression(var: !19)
!19 = distinct !DIGlobalVariable(name: "exit_failure", scope: !20, file: !23, line: 24, type: !24, isLocal: false, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !22)
!21 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!22 = !{!18}
!23 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIGlobalVariableExpression(var: !27)
!27 = distinct !DIGlobalVariable(name: "long_options", scope: !28, file: !31, line: 33, type: !32, isLocal: true, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !30)
!29 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!26}
!31 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 768, elements: !42)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !35, line: 104, size: 256, elements: !36)
!35 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !{!37, !38, !39, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 106, baseType: !6, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !34, file: !35, line: 109, baseType: !25, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !34, file: !35, line: 110, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !35, line: 111, baseType: !25, size: 32, offset: 192)
!42 = !{!43}
!43 = !DISubrange(count: 3)
!44 = !DIGlobalVariableExpression(var: !45)
!45 = distinct !DIGlobalVariable(name: "program_name", scope: !46, file: !52, line: 33, type: !6, isLocal: false, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !48, globals: !51)
!47 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!51 = !{!44}
!52 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!53 = !DIGlobalVariableExpression(var: !54)
!54 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !55, file: !100, line: 77, type: !136, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !92, globals: !97)
!56 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!57 = !{!58, !72, !77}
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !59, line: 32, size: 32, elements: !60)
!59 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!61 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!62 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!63 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!64 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!65 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!66 = !DIEnumerator(name: "c_quoting_style", value: 5)
!67 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!68 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!69 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!70 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!71 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !59, line: 242, size: 32, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!75 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!76 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 46, size: 32, elements: !79)
!78 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!80 = !DIEnumerator(name: "_ISupper", value: 256)
!81 = !DIEnumerator(name: "_ISlower", value: 512)
!82 = !DIEnumerator(name: "_ISalpha", value: 1024)
!83 = !DIEnumerator(name: "_ISdigit", value: 2048)
!84 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!85 = !DIEnumerator(name: "_ISspace", value: 8192)
!86 = !DIEnumerator(name: "_ISprint", value: 16384)
!87 = !DIEnumerator(name: "_ISgraph", value: 32768)
!88 = !DIEnumerator(name: "_ISblank", value: 1)
!89 = !DIEnumerator(name: "_IScntrl", value: 2)
!90 = !DIEnumerator(name: "_ISpunct", value: 4)
!91 = !DIEnumerator(name: "_ISalnum", value: 8)
!92 = !{!25, !93, !94, !50}
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !{!53, !98, !105, !118, !120, !125, !132, !134}
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !55, file: !100, line: 93, type: !101, isLocal: false, isDefinition: true)
!100 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 320, elements: !103)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!103 = !{!104}
!104 = !DISubrange(count: 10)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !55, file: !100, line: 1043, type: !107, isLocal: false, isDefinition: true)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !100, line: 57, size: 448, elements: !108)
!108 = !{!109, !110, !111, !116, !117}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !107, file: !100, line: 60, baseType: !58, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !100, line: 63, baseType: !25, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !107, file: !100, line: 67, baseType: !112, size: 256, offset: 64)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !114)
!113 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !107, file: !100, line: 70, baseType: !6, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !107, file: !100, line: 73, baseType: !6, size: 64, offset: 384)
!118 = !DIGlobalVariableExpression(var: !119)
!119 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !55, file: !100, line: 108, type: !107, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "slot0", scope: !55, file: !100, line: 834, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "slotvec", scope: !55, file: !100, line: 837, type: !127, isLocal: true, isDefinition: true)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !100, line: 826, size: 128, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !128, file: !100, line: 828, baseType: !94, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !128, file: !100, line: 829, baseType: !50, size: 64, offset: 64)
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "nslots", scope: !55, file: !100, line: 835, type: !25, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "slotvec0", scope: !55, file: !100, line: 836, type: !128, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 704, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!138 = !{!139}
!139 = !DISubrange(count: 11)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !142, file: !145, line: 26, type: !146, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !144)
!143 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !{!140}
!145 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 47)
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !151, file: !496, line: 120, type: !497, isLocal: true, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !153, retainedTypes: !492, globals: !495)
!152 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !{!154}
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 41, size: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!157 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!158 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!159 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!160 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!161 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!162 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!163 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!164 = !DIEnumerator(name: "DAY_1", value: 131079)
!165 = !DIEnumerator(name: "DAY_2", value: 131080)
!166 = !DIEnumerator(name: "DAY_3", value: 131081)
!167 = !DIEnumerator(name: "DAY_4", value: 131082)
!168 = !DIEnumerator(name: "DAY_5", value: 131083)
!169 = !DIEnumerator(name: "DAY_6", value: 131084)
!170 = !DIEnumerator(name: "DAY_7", value: 131085)
!171 = !DIEnumerator(name: "ABMON_1", value: 131086)
!172 = !DIEnumerator(name: "ABMON_2", value: 131087)
!173 = !DIEnumerator(name: "ABMON_3", value: 131088)
!174 = !DIEnumerator(name: "ABMON_4", value: 131089)
!175 = !DIEnumerator(name: "ABMON_5", value: 131090)
!176 = !DIEnumerator(name: "ABMON_6", value: 131091)
!177 = !DIEnumerator(name: "ABMON_7", value: 131092)
!178 = !DIEnumerator(name: "ABMON_8", value: 131093)
!179 = !DIEnumerator(name: "ABMON_9", value: 131094)
!180 = !DIEnumerator(name: "ABMON_10", value: 131095)
!181 = !DIEnumerator(name: "ABMON_11", value: 131096)
!182 = !DIEnumerator(name: "ABMON_12", value: 131097)
!183 = !DIEnumerator(name: "MON_1", value: 131098)
!184 = !DIEnumerator(name: "MON_2", value: 131099)
!185 = !DIEnumerator(name: "MON_3", value: 131100)
!186 = !DIEnumerator(name: "MON_4", value: 131101)
!187 = !DIEnumerator(name: "MON_5", value: 131102)
!188 = !DIEnumerator(name: "MON_6", value: 131103)
!189 = !DIEnumerator(name: "MON_7", value: 131104)
!190 = !DIEnumerator(name: "MON_8", value: 131105)
!191 = !DIEnumerator(name: "MON_9", value: 131106)
!192 = !DIEnumerator(name: "MON_10", value: 131107)
!193 = !DIEnumerator(name: "MON_11", value: 131108)
!194 = !DIEnumerator(name: "MON_12", value: 131109)
!195 = !DIEnumerator(name: "AM_STR", value: 131110)
!196 = !DIEnumerator(name: "PM_STR", value: 131111)
!197 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!198 = !DIEnumerator(name: "D_FMT", value: 131113)
!199 = !DIEnumerator(name: "T_FMT", value: 131114)
!200 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!201 = !DIEnumerator(name: "ERA", value: 131116)
!202 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!203 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!204 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!205 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!206 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!207 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!208 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!209 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!210 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!211 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!212 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!213 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!214 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!215 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!216 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!217 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!218 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!219 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!220 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!221 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!222 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!223 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!224 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!225 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!226 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!227 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!228 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!229 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!230 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!231 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!232 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!233 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!234 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!235 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!236 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!237 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!238 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!239 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!240 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!241 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!242 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!243 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!244 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!245 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!246 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!247 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!248 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!249 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!250 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!251 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!252 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!253 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!254 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!255 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!256 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!257 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!258 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!259 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!260 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!261 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!262 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!263 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!264 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!265 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!266 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!267 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!268 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!269 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!270 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!271 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!272 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!273 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!274 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!275 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!276 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!277 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!278 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!279 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!280 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!281 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!282 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!283 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!284 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!285 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!286 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!287 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!288 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!289 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!290 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!291 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!292 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!293 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!294 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!295 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!296 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!297 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!298 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!299 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!300 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!301 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!302 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!303 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!304 = !DIEnumerator(name: "CODESET", value: 14)
!305 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!306 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!307 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!308 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!309 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!310 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!311 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!312 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!313 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!314 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!315 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!316 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!317 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!318 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!319 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!320 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!321 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!322 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!323 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!324 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!325 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!326 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!327 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!328 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!331 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!332 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!333 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!334 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!335 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!336 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!337 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!338 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!339 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!340 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!341 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!342 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!343 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!344 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!345 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!346 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!347 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!348 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!349 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!350 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!351 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!352 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!353 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!354 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!355 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!356 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!357 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!358 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!359 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!360 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!361 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!362 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!363 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!364 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!365 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!366 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!367 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!368 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!369 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!370 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!371 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!372 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!373 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!374 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!375 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!376 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!377 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!378 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!379 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!380 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!381 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!382 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!383 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!384 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!385 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!386 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!387 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!388 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!389 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!390 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!391 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!392 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!393 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!394 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!395 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!396 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!397 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!398 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!399 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!400 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!401 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!402 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!403 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!404 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!405 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!406 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!407 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!408 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!409 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!410 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!411 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!412 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!413 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!414 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!415 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!416 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!417 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!418 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!419 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!420 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!421 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!422 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!423 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!424 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!425 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!426 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!427 = !DIEnumerator(name: "THOUSEP", value: 65537)
!428 = !DIEnumerator(name: "__GROUPING", value: 65538)
!429 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!430 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!431 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!432 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!433 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!434 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!435 = !DIEnumerator(name: "__YESSTR", value: 327682)
!436 = !DIEnumerator(name: "__NOSTR", value: 327683)
!437 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!438 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!439 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!440 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!441 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!442 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!443 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!444 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!445 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!446 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!447 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!448 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!449 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!450 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!451 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!452 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!453 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!454 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!455 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!456 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!457 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!458 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!459 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!460 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!461 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!462 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!463 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!464 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!465 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!466 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!467 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!468 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!469 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!470 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!471 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!472 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!473 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!474 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!475 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!476 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!477 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!478 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!479 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!480 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!481 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!482 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!483 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!484 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!485 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!486 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!487 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!488 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!489 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!490 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!491 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!492 = !{!49, !50, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!495 = !{!149}
!496 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!497 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !500, retainedTypes: !506, globals: !512)
!499 = !DIFile(filename: "src/users.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!501, !58}
!501 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !502, line: 208, size: 32, elements: !503)
!502 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!503 = !{!504, !505}
!504 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!505 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!506 = !{!6, !49, !94, !507, !509, !511, !494}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!512 = !{!513}
!513 = !DIGlobalVariableExpression(var: !514)
!514 = distinct !DIGlobalVariable(name: "infomap", scope: !515, file: !516, line: 632, type: !540, isLocal: true, isDefinition: true)
!515 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !516, file: !516, line: 630, type: !517, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !519)
!516 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!517 = !DISubroutineType(types: !518)
!518 = !{null, !6}
!519 = !{!520, !521, !522, !529, !531, !532, !533, !536, !537, !539}
!520 = !DILocalVariable(name: "program", arg: 1, scope: !515, file: !516, line: 630, type: !6)
!521 = !DILocalVariable(name: "node", scope: !515, file: !516, line: 642, type: !6)
!522 = !DILocalVariable(name: "map_prog", scope: !515, file: !516, line: 643, type: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !515, file: !516, line: 632, size: 128, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !525, file: !516, line: 632, baseType: !6, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !525, file: !516, line: 632, baseType: !6, size: 64, offset: 64)
!529 = !DILocalVariable(name: "__s1_len", scope: !530, file: !516, line: 645, type: !94)
!530 = distinct !DILexicalBlock(scope: !515, file: !516, line: 645, column: 33)
!531 = !DILocalVariable(name: "__s2_len", scope: !530, file: !516, line: 645, type: !94)
!532 = !DILocalVariable(name: "lc_messages", scope: !515, file: !516, line: 655, type: !6)
!533 = !DILocalVariable(name: "__s1_len", scope: !534, file: !516, line: 656, type: !94)
!534 = distinct !DILexicalBlock(scope: !535, file: !516, line: 656, column: 22)
!535 = distinct !DILexicalBlock(scope: !515, file: !516, line: 656, column: 7)
!536 = !DILocalVariable(name: "__s2_len", scope: !534, file: !516, line: 656, type: !94)
!537 = !DILocalVariable(name: "__s2", scope: !538, file: !516, line: 656, type: !509)
!538 = distinct !DILexicalBlock(scope: !534, file: !516, line: 656, column: 22)
!539 = !DILocalVariable(name: "__result", scope: !538, file: !516, line: 656, type: !25)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 896, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 7)
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !545, retainedTypes: !550)
!544 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = !{!546}
!546 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !547, line: 41, size: 32, elements: !548)
!547 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!548 = !{!549}
!549 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!550 = !{!49}
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !553, retainedTypes: !567)
!552 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !{!554}
!554 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !556, file: !555, line: 192, size: 32, elements: !565)
!555 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = distinct !DISubprogram(name: "x2nrealloc", scope: !555, file: !555, line: 180, type: !557, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !560)
!557 = !DISubroutineType(types: !558)
!558 = !{!49, !49, !559, !94}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!560 = !{!561, !562, !563, !564}
!561 = !DILocalVariable(name: "p", arg: 1, scope: !556, file: !555, line: 180, type: !49)
!562 = !DILocalVariable(name: "pn", arg: 2, scope: !556, file: !555, line: 180, type: !559)
!563 = !DILocalVariable(name: "s", arg: 3, scope: !556, file: !555, line: 180, type: !94)
!564 = !DILocalVariable(name: "n", scope: !556, file: !555, line: 182, type: !94)
!565 = !{!566}
!566 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!567 = !{!94, !50, !49}
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!569 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !550)
!571 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !574)
!573 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = !{!94}
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !577, retainedTypes: !585)
!576 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = !{!501, !578}
!578 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !579, file: !555, line: 192, size: 32, elements: !565)
!579 = distinct !DISubprogram(name: "x2nrealloc", scope: !555, file: !555, line: 180, type: !557, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !580)
!580 = !{!581, !582, !583, !584}
!581 = !DILocalVariable(name: "p", arg: 1, scope: !579, file: !555, line: 180, type: !49)
!582 = !DILocalVariable(name: "pn", arg: 2, scope: !579, file: !555, line: 180, type: !559)
!583 = !DILocalVariable(name: "s", arg: 3, scope: !579, file: !555, line: 180, type: !94)
!584 = !DILocalVariable(name: "n", scope: !579, file: !555, line: 182, type: !94)
!585 = !{!50, !49}
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!587 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !590)
!589 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !{!94, !507, !509, !6}
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!592 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !550)
!594 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !550)
!596 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!598 = !{i32 2, !"Dwarf Version", i32 4}
!599 = !{i32 2, !"Debug Info Version", i32 3}
!600 = !{i32 1, !"PIC Level", i32 2}
!601 = !{i32 1, !"PIE Level", i32 2}
!602 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 100, type: !603, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !25}
!605 = !{!606}
!606 = !DILocalVariable(name: "status", arg: 1, scope: !602, file: !499, line: 100, type: !25)
!607 = !DIExpression()
!608 = !DILocation(line: 100, column: 12, scope: !602)
!609 = !DILocation(line: 102, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !499, line: 102, column: 7)
!611 = !DILocation(line: 102, column: 7, scope: !602)
!612 = !DILocation(line: 103, column: 5, scope: !613)
!613 = !DILexicalBlockFile(scope: !614, file: !499, discriminator: 1)
!614 = distinct !DILexicalBlock(scope: !610, file: !499, line: 103, column: 5)
!615 = !{!616, !616, i64 0}
!616 = !{!"any pointer", !617, i64 0}
!617 = !{!"omnipotent char", !618, i64 0}
!618 = !{!"Simple C/C++ TBAA"}
!619 = !DILocation(line: 103, column: 5, scope: !620)
!620 = !DILexicalBlockFile(scope: !614, file: !499, discriminator: 3)
!621 = !DILocation(line: 103, column: 5, scope: !622)
!622 = !DILexicalBlockFile(scope: !614, file: !499, discriminator: 2)
!623 = !DILocation(line: 106, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !610, file: !499, line: 105, column: 5)
!625 = !DILocation(line: 106, column: 7, scope: !626)
!626 = !DILexicalBlockFile(scope: !624, file: !499, discriminator: 1)
!627 = !DILocation(line: 107, column: 7, scope: !624)
!628 = !DILocation(line: 107, column: 7, scope: !626)
!629 = !DILocation(line: 113, column: 7, scope: !624)
!630 = !DILocation(line: 113, column: 7, scope: !626)
!631 = !DILocation(line: 114, column: 7, scope: !624)
!632 = !DILocation(line: 114, column: 7, scope: !626)
!633 = !DILocation(line: 642, column: 15, scope: !515, inlinedAt: !634)
!634 = distinct !DILocation(line: 115, column: 7, scope: !624)
!635 = !DILocation(line: 651, column: 3, scope: !515, inlinedAt: !634)
!636 = !DILocation(line: 651, column: 3, scope: !637, inlinedAt: !634)
!637 = !DILexicalBlockFile(scope: !515, file: !516, discriminator: 1)
!638 = !DILocation(line: 655, column: 29, scope: !515, inlinedAt: !634)
!639 = !DILocation(line: 655, column: 15, scope: !515, inlinedAt: !634)
!640 = !DILocation(line: 656, column: 7, scope: !535, inlinedAt: !634)
!641 = !DILocation(line: 656, column: 19, scope: !535, inlinedAt: !634)
!642 = !DILocation(line: 656, column: 22, scope: !643, inlinedAt: !634)
!643 = !DILexicalBlockFile(scope: !535, file: !516, discriminator: 16)
!644 = !DILocation(line: 656, column: 7, scope: !645, inlinedAt: !634)
!645 = !DILexicalBlockFile(scope: !515, file: !516, discriminator: 16)
!646 = !DILocation(line: 662, column: 7, scope: !647, inlinedAt: !634)
!647 = distinct !DILexicalBlock(scope: !535, file: !516, line: 657, column: 5)
!648 = !DILocation(line: 662, column: 7, scope: !649, inlinedAt: !634)
!649 = !DILexicalBlockFile(scope: !647, file: !516, discriminator: 1)
!650 = !DILocation(line: 664, column: 5, scope: !647, inlinedAt: !634)
!651 = !DILocation(line: 665, column: 3, scope: !515, inlinedAt: !634)
!652 = !DILocation(line: 665, column: 3, scope: !637, inlinedAt: !634)
!653 = !DILocation(line: 667, column: 3, scope: !515, inlinedAt: !634)
!654 = !DILocation(line: 667, column: 3, scope: !637, inlinedAt: !634)
!655 = !DILocation(line: 117, column: 3, scope: !602)
!656 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 121, type: !657, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!25, !25, !511}
!659 = !{!660, !661}
!660 = !DILocalVariable(name: "argc", arg: 1, scope: !656, file: !499, line: 121, type: !25)
!661 = !DILocalVariable(name: "argv", arg: 2, scope: !656, file: !499, line: 121, type: !511)
!662 = !DILocation(line: 121, column: 11, scope: !656)
!663 = !DILocation(line: 121, column: 24, scope: !656)
!664 = !DILocation(line: 124, column: 21, scope: !656)
!665 = !DILocation(line: 124, column: 3, scope: !656)
!666 = !DILocation(line: 125, column: 3, scope: !656)
!667 = !DILocation(line: 126, column: 3, scope: !656)
!668 = !DILocation(line: 127, column: 3, scope: !656)
!669 = !DILocation(line: 129, column: 3, scope: !656)
!670 = !DILocation(line: 131, column: 63, scope: !656)
!671 = !DILocation(line: 131, column: 3, scope: !656)
!672 = !DILocation(line: 133, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !656, file: !499, line: 133, column: 7)
!674 = !DILocation(line: 133, column: 48, scope: !673)
!675 = !DILocation(line: 133, column: 7, scope: !656)
!676 = !DILocation(line: 134, column: 5, scope: !673)
!677 = !DILocation(line: 136, column: 18, scope: !656)
!678 = !{!679, !679, i64 0}
!679 = !{!"int", !617, i64 0}
!680 = !DILocation(line: 136, column: 16, scope: !656)
!681 = !DILocation(line: 136, column: 3, scope: !656)
!682 = !DILocation(line: 139, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !656, file: !499, line: 137, column: 5)
!684 = !DILocation(line: 140, column: 7, scope: !683)
!685 = !DILocation(line: 143, column: 14, scope: !683)
!686 = !DILocation(line: 143, column: 7, scope: !683)
!687 = !DILocation(line: 144, column: 7, scope: !683)
!688 = !DILocation(line: 147, column: 20, scope: !683)
!689 = !DILocation(line: 147, column: 55, scope: !683)
!690 = !DILocation(line: 147, column: 62, scope: !683)
!691 = !DILocation(line: 147, column: 50, scope: !683)
!692 = !DILocation(line: 147, column: 43, scope: !693)
!693 = !DILexicalBlockFile(scope: !683, file: !499, discriminator: 1)
!694 = !DILocation(line: 147, column: 7, scope: !695)
!695 = !DILexicalBlockFile(scope: !683, file: !499, discriminator: 2)
!696 = !DILocation(line: 148, column: 7, scope: !683)
!697 = !DILocation(line: 151, column: 3, scope: !656)
!698 = distinct !DISubprogram(name: "users", scope: !499, file: !499, line: 86, type: !699, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !6, !25}
!701 = !{!702, !703, !704, !705}
!702 = !DILocalVariable(name: "filename", arg: 1, scope: !698, file: !499, line: 86, type: !6)
!703 = !DILocalVariable(name: "options", arg: 2, scope: !698, file: !499, line: 86, type: !25)
!704 = !DILocalVariable(name: "n_users", scope: !698, file: !499, line: 88, type: !94)
!705 = !DILocalVariable(name: "utmp_buf", scope: !698, file: !499, line: 89, type: !706)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !502, line: 146, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !709, line: 55, size: 3072, elements: !710)
!709 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!710 = !{!711, !713, !716, !720, !724, !725, !726, !731, !733, !738, !740}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !708, file: !709, line: 57, baseType: !712, size: 16)
!712 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !708, file: !709, line: 58, baseType: !714, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !715, line: 142, baseType: !25)
!715 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !708, file: !709, line: 59, baseType: !717, size: 256, offset: 64)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !708, file: !709, line: 60, baseType: !721, size: 32, offset: 320)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 4)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !708, file: !709, line: 61, baseType: !717, size: 256, offset: 352)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !708, file: !709, line: 62, baseType: !122, size: 2048, offset: 608)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !708, file: !709, line: 63, baseType: !727, size: 32, offset: 2656)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !709, line: 42, size: 32, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !727, file: !709, line: 45, baseType: !712, size: 16)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !727, file: !709, line: 46, baseType: !712, size: 16, offset: 16)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !708, file: !709, line: 70, baseType: !732, size: 32, offset: 2688)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !715, line: 40, baseType: !25)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !708, file: !709, line: 75, baseType: !734, size: 64, offset: 2720)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !709, line: 71, size: 64, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !734, file: !709, line: 73, baseType: !732, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !734, file: !709, line: 74, baseType: !732, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !708, file: !709, line: 80, baseType: !739, size: 128, offset: 2784)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 128, elements: !722)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !708, file: !709, line: 81, baseType: !741, size: 160, offset: 2912)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 20)
!744 = !DILocation(line: 86, column: 20, scope: !698)
!745 = !DILocation(line: 86, column: 34, scope: !698)
!746 = !DILocation(line: 88, column: 3, scope: !698)
!747 = !DILocation(line: 89, column: 3, scope: !698)
!748 = !DIExpression(DW_OP_deref)
!749 = !DILocation(line: 88, column: 10, scope: !698)
!750 = !DILocation(line: 89, column: 16, scope: !698)
!751 = !DILocation(line: 91, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !698, file: !499, line: 91, column: 7)
!753 = !DILocation(line: 91, column: 58, scope: !752)
!754 = !DILocation(line: 91, column: 7, scope: !698)
!755 = !DILocation(line: 92, column: 5, scope: !752)
!756 = !DILocation(line: 92, column: 5, scope: !757)
!757 = !DILexicalBlockFile(scope: !752, file: !499, discriminator: 1)
!758 = !DILocation(line: 92, column: 5, scope: !759)
!759 = !DILexicalBlockFile(scope: !752, file: !499, discriminator: 2)
!760 = !DILocation(line: 94, column: 23, scope: !698)
!761 = !{!762, !762, i64 0}
!762 = !{!"long", !617, i64 0}
!763 = !DILocalVariable(name: "n", arg: 1, scope: !764, file: !499, line: 48, type: !94)
!764 = distinct !DISubprogram(name: "list_entries_users", scope: !499, file: !499, line: 48, type: !765, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !769)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !94, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!769 = !{!763, !770, !771, !772, !773, !774, !778}
!770 = !DILocalVariable(name: "this", arg: 2, scope: !764, file: !499, line: 48, type: !767)
!771 = !DILocalVariable(name: "u", scope: !764, file: !499, line: 50, type: !511)
!772 = !DILocalVariable(name: "i", scope: !764, file: !499, line: 51, type: !94)
!773 = !DILocalVariable(name: "n_entries", scope: !764, file: !499, line: 52, type: !94)
!774 = !DILocalVariable(name: "trimmed_name", scope: !775, file: !499, line: 58, type: !50)
!775 = distinct !DILexicalBlock(scope: !776, file: !499, line: 57, column: 9)
!776 = distinct !DILexicalBlock(scope: !777, file: !499, line: 56, column: 11)
!777 = distinct !DILexicalBlock(scope: !764, file: !499, line: 55, column: 5)
!778 = !DILocalVariable(name: "c", scope: !779, file: !499, line: 72, type: !8)
!779 = distinct !DILexicalBlock(scope: !780, file: !499, line: 71, column: 5)
!780 = distinct !DILexicalBlock(scope: !781, file: !499, line: 70, column: 3)
!781 = distinct !DILexicalBlock(scope: !764, file: !499, line: 70, column: 3)
!782 = !DILocation(line: 48, column: 28, scope: !764, inlinedAt: !783)
!783 = distinct !DILocation(line: 94, column: 3, scope: !698)
!784 = !DILocation(line: 48, column: 50, scope: !764, inlinedAt: !783)
!785 = !DILocalVariable(name: "n", arg: 1, scope: !786, file: !555, line: 105, type: !94)
!786 = distinct !DISubprogram(name: "xnmalloc", scope: !555, file: !555, line: 105, type: !787, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{!49, !94, !94}
!789 = !{!785, !790}
!790 = !DILocalVariable(name: "s", arg: 2, scope: !786, file: !555, line: 105, type: !94)
!791 = !DILocation(line: 105, column: 18, scope: !786, inlinedAt: !792)
!792 = distinct !DILocation(line: 50, column: 14, scope: !764, inlinedAt: !783)
!793 = !DILocation(line: 105, column: 28, scope: !786, inlinedAt: !792)
!794 = !DILocation(line: 107, column: 7, scope: !795, inlinedAt: !792)
!795 = distinct !DILexicalBlock(scope: !786, file: !555, line: 107, column: 7)
!796 = !DILocation(line: 107, column: 7, scope: !786, inlinedAt: !792)
!797 = !DILocation(line: 108, column: 5, scope: !795, inlinedAt: !792)
!798 = !DILocation(line: 94, column: 32, scope: !698)
!799 = !DILocation(line: 109, column: 21, scope: !786, inlinedAt: !792)
!800 = !DILocation(line: 109, column: 10, scope: !786, inlinedAt: !792)
!801 = !DILocation(line: 50, column: 14, scope: !764, inlinedAt: !783)
!802 = !DILocation(line: 50, column: 10, scope: !764, inlinedAt: !783)
!803 = !DILocation(line: 52, column: 10, scope: !764, inlinedAt: !783)
!804 = !DILocation(line: 54, column: 3, scope: !805, inlinedAt: !783)
!805 = !DILexicalBlockFile(scope: !764, file: !499, discriminator: 1)
!806 = !DILocation(line: 54, column: 11, scope: !805, inlinedAt: !783)
!807 = !DILocation(line: 68, column: 3, scope: !764, inlinedAt: !783)
!808 = !DILocation(line: 51, column: 10, scope: !764, inlinedAt: !783)
!809 = !DILocation(line: 70, column: 3, scope: !810, inlinedAt: !783)
!810 = !DILexicalBlockFile(scope: !781, file: !499, discriminator: 1)
!811 = !DILocation(line: 56, column: 11, scope: !776, inlinedAt: !783)
!812 = !{!617, !617, i64 0}
!813 = !DILocation(line: 56, column: 11, scope: !814, inlinedAt: !783)
!814 = !DILexicalBlockFile(scope: !776, file: !499, discriminator: 1)
!815 = !{!816, !817, i64 0}
!816 = !{!"utmpx", !817, i64 0, !679, i64 4, !617, i64 8, !617, i64 40, !617, i64 44, !617, i64 76, !818, i64 332, !679, i64 336, !819, i64 340, !617, i64 348, !617, i64 364}
!817 = !{!"short", !617, i64 0}
!818 = !{!"__exit_status", !817, i64 0, !817, i64 2}
!819 = !{!"", !679, i64 0, !679, i64 4}
!820 = !DILocation(line: 56, column: 11, scope: !821, inlinedAt: !783)
!821 = !DILexicalBlockFile(scope: !777, file: !499, discriminator: 1)
!822 = !DILocation(line: 60, column: 26, scope: !775, inlinedAt: !783)
!823 = !DILocation(line: 58, column: 17, scope: !775, inlinedAt: !783)
!824 = !DILocation(line: 62, column: 11, scope: !775, inlinedAt: !783)
!825 = !DILocation(line: 62, column: 24, scope: !775, inlinedAt: !783)
!826 = !DILocation(line: 63, column: 11, scope: !775, inlinedAt: !783)
!827 = !DILocation(line: 64, column: 9, scope: !775, inlinedAt: !783)
!828 = !DILocation(line: 65, column: 11, scope: !777, inlinedAt: !783)
!829 = distinct !{!829, !830, !831}
!830 = !DILocation(line: 54, column: 3, scope: !764)
!831 = !DILocation(line: 66, column: 5, scope: !764)
!832 = !DILocation(line: 70, column: 17, scope: !833, inlinedAt: !783)
!833 = !DILexicalBlockFile(scope: !780, file: !499, discriminator: 1)
!834 = !DILocation(line: 72, column: 19, scope: !779, inlinedAt: !783)
!835 = !DILocation(line: 73, column: 7, scope: !779, inlinedAt: !783)
!836 = !DILocation(line: 74, column: 7, scope: !779, inlinedAt: !783)
!837 = !DILocalVariable(name: "__c", arg: 1, scope: !838, file: !839, line: 105, type: !25)
!838 = distinct !DISubprogram(name: "putchar_unlocked", scope: !839, file: !839, line: 105, type: !840, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !842)
!839 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!840 = !DISubroutineType(types: !841)
!841 = !{!25, !25}
!842 = !{!837}
!843 = !DILocation(line: 105, column: 23, scope: !838, inlinedAt: !844)
!844 = distinct !DILocation(line: 74, column: 7, scope: !779, inlinedAt: !783)
!845 = !DILocation(line: 107, column: 10, scope: !838, inlinedAt: !844)
!846 = !{!847, !616, i64 40}
!847 = !{!"_IO_FILE", !679, i64 0, !616, i64 8, !616, i64 16, !616, i64 24, !616, i64 32, !616, i64 40, !616, i64 48, !616, i64 56, !616, i64 64, !616, i64 72, !616, i64 80, !616, i64 88, !616, i64 96, !616, i64 104, !679, i64 112, !679, i64 116, !762, i64 120, !817, i64 128, !617, i64 130, !617, i64 131, !616, i64 136, !762, i64 144, !616, i64 152, !616, i64 160, !616, i64 168, !616, i64 176, !762, i64 184, !679, i64 192, !617, i64 196}
!848 = !{!847, !616, i64 48}
!849 = !{!"branch_weights", i32 2000, i32 1}
!850 = !DILocation(line: 107, column: 10, scope: !851, inlinedAt: !844)
!851 = !DILexicalBlockFile(scope: !838, file: !839, discriminator: 1)
!852 = !DILocation(line: 107, column: 10, scope: !853, inlinedAt: !844)
!853 = !DILexicalBlockFile(scope: !838, file: !839, discriminator: 2)
!854 = !DILocation(line: 70, column: 31, scope: !855, inlinedAt: !783)
!855 = !DILexicalBlockFile(scope: !780, file: !499, discriminator: 2)
!856 = distinct !{!856, !857, !858}
!857 = !DILocation(line: 70, column: 3, scope: !781)
!858 = !DILocation(line: 75, column: 5, scope: !781)
!859 = !DILocation(line: 78, column: 11, scope: !860, inlinedAt: !783)
!860 = distinct !DILexicalBlock(scope: !861, file: !499, line: 77, column: 3)
!861 = distinct !DILexicalBlock(scope: !764, file: !499, line: 77, column: 3)
!862 = !DILocation(line: 78, column: 5, scope: !860, inlinedAt: !783)
!863 = !DILocation(line: 77, column: 31, scope: !864, inlinedAt: !783)
!864 = !DILexicalBlockFile(scope: !860, file: !499, discriminator: 2)
!865 = !DILocation(line: 77, column: 17, scope: !866, inlinedAt: !783)
!866 = !DILexicalBlockFile(scope: !860, file: !499, discriminator: 1)
!867 = !DILocation(line: 77, column: 3, scope: !868, inlinedAt: !783)
!868 = !DILexicalBlockFile(scope: !861, file: !499, discriminator: 1)
!869 = distinct !{!869, !870, !871}
!870 = !DILocation(line: 77, column: 3, scope: !861)
!871 = !DILocation(line: 78, column: 15, scope: !861)
!872 = !DILocation(line: 79, column: 3, scope: !764, inlinedAt: !783)
!873 = !DILocation(line: 96, column: 9, scope: !698)
!874 = !DILocation(line: 96, column: 3, scope: !698)
!875 = !DILocation(line: 97, column: 1, scope: !698)
!876 = distinct !DISubprogram(name: "userid_compare", scope: !499, file: !499, line: 40, type: !877, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{!25, !507, !507}
!879 = !{!880, !881, !882, !883, !884, !886}
!880 = !DILocalVariable(name: "v_a", arg: 1, scope: !876, file: !499, line: 40, type: !507)
!881 = !DILocalVariable(name: "v_b", arg: 2, scope: !876, file: !499, line: 40, type: !507)
!882 = !DILocalVariable(name: "a", scope: !876, file: !499, line: 42, type: !511)
!883 = !DILocalVariable(name: "b", scope: !876, file: !499, line: 43, type: !511)
!884 = !DILocalVariable(name: "__s1_len", scope: !885, file: !499, line: 44, type: !94)
!885 = distinct !DILexicalBlock(scope: !876, file: !499, line: 44, column: 10)
!886 = !DILocalVariable(name: "__s2_len", scope: !885, file: !499, line: 44, type: !94)
!887 = !DILocation(line: 40, column: 29, scope: !876)
!888 = !DILocation(line: 40, column: 46, scope: !876)
!889 = !DILocation(line: 42, column: 14, scope: !876)
!890 = !DILocation(line: 42, column: 10, scope: !876)
!891 = !DILocation(line: 43, column: 14, scope: !876)
!892 = !DILocation(line: 43, column: 10, scope: !876)
!893 = !DILocation(line: 44, column: 10, scope: !885)
!894 = !DILocation(line: 44, column: 3, scope: !876)
!895 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !517, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !896)
!896 = !{!897}
!897 = !DILocalVariable(name: "file", arg: 1, scope: !895, file: !16, line: 41, type: !6)
!898 = !DILocation(line: 41, column: 41, scope: !895)
!899 = !DILocation(line: 43, column: 13, scope: !895)
!900 = !DILocation(line: 44, column: 1, scope: !895)
!901 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !902, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !17}
!904 = !{!905}
!905 = !DILocalVariable(name: "ignore", arg: 1, scope: !901, file: !16, line: 78, type: !17)
!906 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!907 = !DILocation(line: 78, column: 37, scope: !901)
!908 = !DILocation(line: 80, column: 16, scope: !901)
!909 = !{!910, !910, i64 0}
!910 = !{!"_Bool", !617, i64 0}
!911 = !DILocation(line: 81, column: 1, scope: !901)
!912 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !913, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{null}
!915 = !{!916}
!916 = !DILocalVariable(name: "write_error", scope: !917, file: !16, line: 112, type: !6)
!917 = distinct !DILexicalBlock(scope: !918, file: !16, line: 111, column: 5)
!918 = distinct !DILexicalBlock(scope: !912, file: !16, line: 109, column: 7)
!919 = !DILocation(line: 109, column: 21, scope: !918)
!920 = !DILocation(line: 109, column: 7, scope: !918)
!921 = !DILocation(line: 109, column: 29, scope: !918)
!922 = !DILocation(line: 110, column: 7, scope: !918)
!923 = !DILocation(line: 110, column: 12, scope: !924)
!924 = !DILexicalBlockFile(scope: !918, file: !16, discriminator: 1)
!925 = !{i8 0, i8 2}
!926 = !DILocation(line: 114, column: 19, scope: !927)
!927 = distinct !DILexicalBlock(scope: !917, file: !16, line: 113, column: 11)
!928 = !DILocation(line: 110, column: 25, scope: !924)
!929 = !DILocation(line: 110, column: 28, scope: !930)
!930 = !DILexicalBlockFile(scope: !918, file: !16, discriminator: 2)
!931 = !DILocation(line: 110, column: 34, scope: !930)
!932 = !DILocation(line: 109, column: 7, scope: !933)
!933 = !DILexicalBlockFile(scope: !912, file: !16, discriminator: 1)
!934 = !DILocation(line: 112, column: 33, scope: !917)
!935 = !DILocation(line: 112, column: 19, scope: !917)
!936 = !DILocation(line: 113, column: 11, scope: !927)
!937 = !DILocation(line: 113, column: 11, scope: !917)
!938 = !DILocation(line: 114, column: 36, scope: !939)
!939 = !DILexicalBlockFile(scope: !927, file: !16, discriminator: 1)
!940 = !DILocation(line: 114, column: 9, scope: !941)
!941 = !DILexicalBlockFile(scope: !927, file: !16, discriminator: 2)
!942 = !DILocation(line: 114, column: 9, scope: !927)
!943 = !DILocation(line: 117, column: 9, scope: !939)
!944 = !DILocation(line: 119, column: 14, scope: !917)
!945 = !DILocation(line: 119, column: 7, scope: !917)
!946 = !DILocation(line: 122, column: 22, scope: !947)
!947 = distinct !DILexicalBlock(scope: !912, file: !16, line: 122, column: 8)
!948 = !DILocation(line: 122, column: 8, scope: !947)
!949 = !DILocation(line: 122, column: 30, scope: !947)
!950 = !DILocation(line: 122, column: 8, scope: !912)
!951 = !DILocation(line: 123, column: 13, scope: !947)
!952 = !DILocation(line: 123, column: 6, scope: !947)
!953 = !DILocation(line: 124, column: 1, scope: !912)
!954 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !955, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !958)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !25, !511, !6, !6, !6, !957, null}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !967}
!959 = !DILocalVariable(name: "argc", arg: 1, scope: !954, file: !31, line: 44, type: !25)
!960 = !DILocalVariable(name: "argv", arg: 2, scope: !954, file: !31, line: 45, type: !511)
!961 = !DILocalVariable(name: "command_name", arg: 3, scope: !954, file: !31, line: 46, type: !6)
!962 = !DILocalVariable(name: "package", arg: 4, scope: !954, file: !31, line: 47, type: !6)
!963 = !DILocalVariable(name: "version", arg: 5, scope: !954, file: !31, line: 48, type: !6)
!964 = !DILocalVariable(name: "usage_func", arg: 6, scope: !954, file: !31, line: 49, type: !957)
!965 = !DILocalVariable(name: "c", scope: !954, file: !31, line: 52, type: !25)
!966 = !DILocalVariable(name: "saved_opterr", scope: !954, file: !31, line: 53, type: !25)
!967 = !DILocalVariable(name: "authors", scope: !968, file: !31, line: 71, type: !972)
!968 = distinct !DILexicalBlock(scope: !969, file: !31, line: 70, column: 11)
!969 = distinct !DILexicalBlock(scope: !970, file: !31, line: 64, column: 9)
!970 = distinct !DILexicalBlock(scope: !971, file: !31, line: 62, column: 5)
!971 = distinct !DILexicalBlock(scope: !954, file: !31, line: 60, column: 7)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !973, line: 80, baseType: !974)
!973 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !975, line: 50, baseType: !976)
!975 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !977)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 192, elements: !984)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !979)
!979 = !{!980, !981, !982, !983}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !978, file: !29, line: 71, baseType: !113, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !978, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !978, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !978, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!984 = !{!985}
!985 = !DISubrange(count: 1)
!986 = !DILocation(line: 44, column: 25, scope: !954)
!987 = !DILocation(line: 45, column: 28, scope: !954)
!988 = !DILocation(line: 46, column: 33, scope: !954)
!989 = !DILocation(line: 47, column: 33, scope: !954)
!990 = !DILocation(line: 48, column: 33, scope: !954)
!991 = !DILocation(line: 49, column: 28, scope: !954)
!992 = !DILocation(line: 55, column: 18, scope: !954)
!993 = !DILocation(line: 53, column: 7, scope: !954)
!994 = !DILocation(line: 58, column: 10, scope: !954)
!995 = !DILocation(line: 60, column: 12, scope: !971)
!996 = !DILocation(line: 61, column: 7, scope: !971)
!997 = !DILocation(line: 61, column: 15, scope: !998)
!998 = !DILexicalBlockFile(scope: !971, file: !31, discriminator: 1)
!999 = !DILocation(line: 52, column: 7, scope: !954)
!1000 = !DILocation(line: 60, column: 7, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !954, file: !31, discriminator: 1)
!1002 = !DILocation(line: 66, column: 11, scope: !969)
!1003 = !DILocation(line: 67, column: 11, scope: !969)
!1004 = !DILocation(line: 71, column: 13, scope: !968)
!1005 = !DILocation(line: 71, column: 21, scope: !968)
!1006 = !DILocation(line: 72, column: 13, scope: !968)
!1007 = !DILocation(line: 73, column: 29, scope: !968)
!1008 = !DILocation(line: 73, column: 13, scope: !968)
!1009 = !DILocation(line: 74, column: 13, scope: !968)
!1010 = !DILocation(line: 84, column: 10, scope: !954)
!1011 = !DILocation(line: 88, column: 10, scope: !954)
!1012 = !DILocation(line: 89, column: 1, scope: !954)
!1013 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !517, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DILocalVariable(name: "argv0", arg: 1, scope: !1013, file: !52, line: 39, type: !6)
!1016 = !DILocalVariable(name: "slash", scope: !1013, file: !52, line: 46, type: !6)
!1017 = !DILocalVariable(name: "base", scope: !1013, file: !52, line: 47, type: !6)
!1018 = !DILocation(line: 39, column: 31, scope: !1013)
!1019 = !DILocation(line: 51, column: 13, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !52, line: 51, column: 7)
!1021 = !DILocation(line: 51, column: 7, scope: !1013)
!1022 = !DILocation(line: 55, column: 14, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !52, line: 52, column: 5)
!1024 = !DILocation(line: 54, column: 7, scope: !1023)
!1025 = !DILocation(line: 56, column: 7, scope: !1023)
!1026 = !DILocation(line: 59, column: 11, scope: !1013)
!1027 = !DILocation(line: 46, column: 15, scope: !1013)
!1028 = !DILocation(line: 60, column: 17, scope: !1013)
!1029 = !DILocation(line: 60, column: 33, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1013, file: !52, discriminator: 1)
!1031 = !DILocation(line: 60, column: 11, scope: !1013)
!1032 = !DILocation(line: 47, column: 15, scope: !1013)
!1033 = !DILocation(line: 61, column: 12, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1013, file: !52, line: 61, column: 7)
!1035 = !DILocation(line: 61, column: 20, scope: !1034)
!1036 = !DILocation(line: 61, column: 25, scope: !1034)
!1037 = !DILocation(line: 61, column: 28, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1034, file: !52, discriminator: 1)
!1039 = !DILocation(line: 61, column: 61, scope: !1038)
!1040 = !DILocation(line: 61, column: 7, scope: !1030)
!1041 = !DILocation(line: 64, column: 11, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !52, line: 64, column: 11)
!1043 = distinct !DILexicalBlock(scope: !1034, file: !52, line: 62, column: 5)
!1044 = !DILocation(line: 64, column: 36, scope: !1042)
!1045 = !DILocation(line: 64, column: 11, scope: !1043)
!1046 = !DILocation(line: 66, column: 24, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !52, line: 65, column: 9)
!1048 = !DILocation(line: 70, column: 41, scope: !1047)
!1049 = !DILocation(line: 72, column: 9, scope: !1047)
!1050 = !DILocation(line: 84, column: 16, scope: !1013)
!1051 = !DILocation(line: 90, column: 27, scope: !1013)
!1052 = !DILocation(line: 92, column: 1, scope: !1013)
!1053 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !1054, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1057)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1057 = !{!1058, !1059, !1060}
!1058 = !DILocalVariable(name: "o", arg: 1, scope: !1053, file: !100, line: 114, type: !1056)
!1059 = !DILocalVariable(name: "e", scope: !1053, file: !100, line: 116, type: !25)
!1060 = !DILocalVariable(name: "p", scope: !1053, file: !100, line: 117, type: !1056)
!1061 = !DILocation(line: 114, column: 48, scope: !1053)
!1062 = !DILocation(line: 116, column: 11, scope: !1053)
!1063 = !DILocation(line: 116, column: 7, scope: !1053)
!1064 = !DILocation(line: 117, column: 40, scope: !1053)
!1065 = !DILocation(line: 117, column: 40, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1053, file: !100, discriminator: 3)
!1067 = !DILocation(line: 117, column: 31, scope: !1066)
!1068 = !DILocation(line: 117, column: 27, scope: !1053)
!1069 = !DILocation(line: 119, column: 9, scope: !1053)
!1070 = !DILocation(line: 120, column: 3, scope: !1053)
!1071 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !1072, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1076)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!58, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1076 = !{!1077}
!1077 = !DILocalVariable(name: "o", arg: 1, scope: !1071, file: !100, line: 125, type: !1074)
!1078 = !DILocation(line: 125, column: 50, scope: !1071)
!1079 = !DILocation(line: 127, column: 11, scope: !1071)
!1080 = !DILocation(line: 127, column: 46, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1071, file: !100, discriminator: 3)
!1082 = !{!1083, !617, i64 0}
!1083 = !{!"quoting_options", !617, i64 0, !679, i64 4, !617, i64 8, !616, i64 40, !616, i64 48}
!1084 = !DILocation(line: 127, column: 3, scope: !1081)
!1085 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !1086, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !1056, !58}
!1088 = !{!1089, !1090}
!1089 = !DILocalVariable(name: "o", arg: 1, scope: !1085, file: !100, line: 133, type: !1056)
!1090 = !DILocalVariable(name: "s", arg: 2, scope: !1085, file: !100, line: 133, type: !58)
!1091 = !DILocation(line: 133, column: 44, scope: !1085)
!1092 = !DILocation(line: 133, column: 66, scope: !1085)
!1093 = !DILocation(line: 135, column: 4, scope: !1085)
!1094 = !DILocation(line: 135, column: 39, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1085, file: !100, discriminator: 3)
!1096 = !DILocation(line: 135, column: 45, scope: !1095)
!1097 = !DILocation(line: 136, column: 1, scope: !1085)
!1098 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !1099, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!25, !1056, !8, !25}
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1108, !1109}
!1102 = !DILocalVariable(name: "o", arg: 1, scope: !1098, file: !100, line: 144, type: !1056)
!1103 = !DILocalVariable(name: "c", arg: 2, scope: !1098, file: !100, line: 144, type: !8)
!1104 = !DILocalVariable(name: "i", arg: 3, scope: !1098, file: !100, line: 144, type: !25)
!1105 = !DILocalVariable(name: "uc", scope: !1098, file: !100, line: 146, type: !494)
!1106 = !DILocalVariable(name: "p", scope: !1098, file: !100, line: 147, type: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1108 = !DILocalVariable(name: "shift", scope: !1098, file: !100, line: 149, type: !25)
!1109 = !DILocalVariable(name: "r", scope: !1098, file: !100, line: 150, type: !25)
!1110 = !DILocation(line: 144, column: 43, scope: !1098)
!1111 = !DILocation(line: 144, column: 51, scope: !1098)
!1112 = !DILocation(line: 144, column: 58, scope: !1098)
!1113 = !DILocation(line: 146, column: 17, scope: !1098)
!1114 = !DILocation(line: 148, column: 6, scope: !1098)
!1115 = !DILocation(line: 148, column: 62, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1098, file: !100, discriminator: 3)
!1117 = !DILocation(line: 148, column: 57, scope: !1116)
!1118 = !DILocation(line: 147, column: 17, scope: !1098)
!1119 = !DILocation(line: 149, column: 18, scope: !1098)
!1120 = !DILocation(line: 149, column: 15, scope: !1098)
!1121 = !DILocation(line: 149, column: 7, scope: !1098)
!1122 = !DILocation(line: 150, column: 12, scope: !1098)
!1123 = !DILocation(line: 150, column: 15, scope: !1098)
!1124 = !DILocation(line: 150, column: 25, scope: !1098)
!1125 = !DILocation(line: 150, column: 7, scope: !1098)
!1126 = !DILocation(line: 151, column: 13, scope: !1098)
!1127 = !DILocation(line: 151, column: 18, scope: !1098)
!1128 = !DILocation(line: 151, column: 23, scope: !1098)
!1129 = !DILocation(line: 151, column: 6, scope: !1098)
!1130 = !DILocation(line: 152, column: 3, scope: !1098)
!1131 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !1132, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1134)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!25, !1056, !25}
!1134 = !{!1135, !1136, !1137}
!1135 = !DILocalVariable(name: "o", arg: 1, scope: !1131, file: !100, line: 160, type: !1056)
!1136 = !DILocalVariable(name: "i", arg: 2, scope: !1131, file: !100, line: 160, type: !25)
!1137 = !DILocalVariable(name: "r", scope: !1131, file: !100, line: 162, type: !25)
!1138 = !DILocation(line: 160, column: 44, scope: !1131)
!1139 = !DILocation(line: 160, column: 51, scope: !1131)
!1140 = !DILocation(line: 163, column: 8, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1131, file: !100, line: 163, column: 7)
!1142 = !DILocation(line: 163, column: 7, scope: !1131)
!1143 = !DILocation(line: 165, column: 10, scope: !1131)
!1144 = !{!1083, !679, i64 4}
!1145 = !DILocation(line: 162, column: 7, scope: !1131)
!1146 = !DILocation(line: 166, column: 12, scope: !1131)
!1147 = !DILocation(line: 167, column: 3, scope: !1131)
!1148 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !1149, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !1056, !6, !6}
!1151 = !{!1152, !1153, !1154}
!1152 = !DILocalVariable(name: "o", arg: 1, scope: !1148, file: !100, line: 171, type: !1056)
!1153 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1148, file: !100, line: 172, type: !6)
!1154 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1148, file: !100, line: 172, type: !6)
!1155 = !DILocation(line: 171, column: 45, scope: !1148)
!1156 = !DILocation(line: 172, column: 33, scope: !1148)
!1157 = !DILocation(line: 172, column: 57, scope: !1148)
!1158 = !DILocation(line: 174, column: 8, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1148, file: !100, line: 174, column: 7)
!1160 = !DILocation(line: 174, column: 7, scope: !1148)
!1161 = !DILocation(line: 176, column: 6, scope: !1148)
!1162 = !DILocation(line: 176, column: 12, scope: !1148)
!1163 = !DILocation(line: 177, column: 8, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1148, file: !100, line: 177, column: 7)
!1165 = !DILocation(line: 177, column: 23, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1164, file: !100, discriminator: 1)
!1167 = !DILocation(line: 177, column: 19, scope: !1164)
!1168 = !DILocation(line: 178, column: 5, scope: !1164)
!1169 = !DILocation(line: 179, column: 6, scope: !1148)
!1170 = !DILocation(line: 179, column: 17, scope: !1148)
!1171 = !{!1083, !616, i64 40}
!1172 = !DILocation(line: 180, column: 6, scope: !1148)
!1173 = !DILocation(line: 180, column: 18, scope: !1148)
!1174 = !{!1083, !616, i64 48}
!1175 = !DILocation(line: 181, column: 1, scope: !1148)
!1176 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !1177, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!94, !50, !94, !6, !94, !1074}
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187}
!1180 = !DILocalVariable(name: "buffer", arg: 1, scope: !1176, file: !100, line: 776, type: !50)
!1181 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1176, file: !100, line: 776, type: !94)
!1182 = !DILocalVariable(name: "arg", arg: 3, scope: !1176, file: !100, line: 777, type: !6)
!1183 = !DILocalVariable(name: "argsize", arg: 4, scope: !1176, file: !100, line: 777, type: !94)
!1184 = !DILocalVariable(name: "o", arg: 5, scope: !1176, file: !100, line: 778, type: !1074)
!1185 = !DILocalVariable(name: "p", scope: !1176, file: !100, line: 780, type: !1074)
!1186 = !DILocalVariable(name: "e", scope: !1176, file: !100, line: 781, type: !25)
!1187 = !DILocalVariable(name: "r", scope: !1176, file: !100, line: 782, type: !94)
!1188 = !DILocation(line: 776, column: 24, scope: !1176)
!1189 = !DILocation(line: 776, column: 39, scope: !1176)
!1190 = !DILocation(line: 777, column: 30, scope: !1176)
!1191 = !DILocation(line: 777, column: 42, scope: !1176)
!1192 = !DILocation(line: 778, column: 48, scope: !1176)
!1193 = !DILocation(line: 780, column: 37, scope: !1176)
!1194 = !DILocation(line: 780, column: 33, scope: !1176)
!1195 = !DILocation(line: 781, column: 11, scope: !1176)
!1196 = !DILocation(line: 781, column: 7, scope: !1176)
!1197 = !DILocation(line: 783, column: 43, scope: !1176)
!1198 = !DILocation(line: 783, column: 53, scope: !1176)
!1199 = !DILocation(line: 783, column: 60, scope: !1176)
!1200 = !DILocation(line: 784, column: 43, scope: !1176)
!1201 = !DILocation(line: 784, column: 58, scope: !1176)
!1202 = !DILocation(line: 782, column: 14, scope: !1176)
!1203 = !DILocation(line: 782, column: 10, scope: !1176)
!1204 = !DILocation(line: 785, column: 9, scope: !1176)
!1205 = !DILocation(line: 786, column: 3, scope: !1176)
!1206 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1207, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1211)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!94, !50, !94, !6, !94, !58, !25, !1209, !6, !6}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1236, !1237, !1238, !1239, !1240, !1243, !1244, !1258, !1261, !1262, !1269}
!1212 = !DILocalVariable(name: "buffer", arg: 1, scope: !1206, file: !100, line: 248, type: !50)
!1213 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1206, file: !100, line: 248, type: !94)
!1214 = !DILocalVariable(name: "arg", arg: 3, scope: !1206, file: !100, line: 249, type: !6)
!1215 = !DILocalVariable(name: "argsize", arg: 4, scope: !1206, file: !100, line: 249, type: !94)
!1216 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1206, file: !100, line: 250, type: !58)
!1217 = !DILocalVariable(name: "flags", arg: 6, scope: !1206, file: !100, line: 250, type: !25)
!1218 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1206, file: !100, line: 251, type: !1209)
!1219 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1206, file: !100, line: 252, type: !6)
!1220 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1206, file: !100, line: 253, type: !6)
!1221 = !DILocalVariable(name: "i", scope: !1206, file: !100, line: 255, type: !94)
!1222 = !DILocalVariable(name: "len", scope: !1206, file: !100, line: 256, type: !94)
!1223 = !DILocalVariable(name: "orig_buffersize", scope: !1206, file: !100, line: 257, type: !94)
!1224 = !DILocalVariable(name: "quote_string", scope: !1206, file: !100, line: 258, type: !6)
!1225 = !DILocalVariable(name: "quote_string_len", scope: !1206, file: !100, line: 259, type: !94)
!1226 = !DILocalVariable(name: "backslash_escapes", scope: !1206, file: !100, line: 260, type: !17)
!1227 = !DILocalVariable(name: "unibyte_locale", scope: !1206, file: !100, line: 261, type: !17)
!1228 = !DILocalVariable(name: "elide_outer_quotes", scope: !1206, file: !100, line: 262, type: !17)
!1229 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1206, file: !100, line: 263, type: !17)
!1230 = !DILocalVariable(name: "encountered_single_quote", scope: !1206, file: !100, line: 264, type: !17)
!1231 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1206, file: !100, line: 265, type: !17)
!1232 = !DILocalVariable(name: "c", scope: !1233, file: !100, line: 394, type: !494)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !100, line: 393, column: 5)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !100, line: 392, column: 3)
!1235 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 392, column: 3)
!1236 = !DILocalVariable(name: "esc", scope: !1233, file: !100, line: 395, type: !494)
!1237 = !DILocalVariable(name: "is_right_quote", scope: !1233, file: !100, line: 396, type: !17)
!1238 = !DILocalVariable(name: "escaping", scope: !1233, file: !100, line: 397, type: !17)
!1239 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1233, file: !100, line: 398, type: !17)
!1240 = !DILocalVariable(name: "m", scope: !1241, file: !100, line: 602, type: !94)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 600, column: 11)
!1242 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 418, column: 9)
!1243 = !DILocalVariable(name: "printable", scope: !1241, file: !100, line: 604, type: !17)
!1244 = !DILocalVariable(name: "mbstate", scope: !1245, file: !100, line: 613, type: !1247)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !100, line: 612, column: 15)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !100, line: 606, column: 17)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1248, line: 107, baseType: !1249)
!1248 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1248, line: 95, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1248, line: 83, size: 64, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1250, file: !1248, line: 85, baseType: !25, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1250, file: !1248, line: 94, baseType: !1254, size: 32, offset: 32)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1250, file: !1248, line: 86, size: 32, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1254, file: !1248, line: 89, baseType: !113, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1254, file: !1248, line: 93, baseType: !721, size: 32)
!1258 = !DILocalVariable(name: "w", scope: !1259, file: !100, line: 623, type: !1260)
!1259 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 622, column: 19)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1261 = !DILocalVariable(name: "bytes", scope: !1259, file: !100, line: 624, type: !94)
!1262 = !DILocalVariable(name: "j", scope: !1263, file: !100, line: 649, type: !94)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !100, line: 648, column: 27)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !100, line: 646, column: 29)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !100, line: 641, column: 23)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !100, line: 633, column: 30)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !100, line: 628, column: 30)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !100, line: 626, column: 25)
!1269 = !DILocalVariable(name: "ilim", scope: !1270, file: !100, line: 676, type: !94)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !100, line: 673, column: 15)
!1271 = distinct !DILexicalBlock(scope: !1241, file: !100, line: 672, column: 17)
!1272 = !DILocation(line: 248, column: 33, scope: !1206)
!1273 = !DILocation(line: 248, column: 48, scope: !1206)
!1274 = !DILocation(line: 249, column: 39, scope: !1206)
!1275 = !DILocation(line: 249, column: 51, scope: !1206)
!1276 = !DILocation(line: 250, column: 46, scope: !1206)
!1277 = !DILocation(line: 250, column: 65, scope: !1206)
!1278 = !DILocation(line: 251, column: 47, scope: !1206)
!1279 = !DILocation(line: 252, column: 39, scope: !1206)
!1280 = !DILocation(line: 253, column: 39, scope: !1206)
!1281 = !DILocation(line: 256, column: 10, scope: !1206)
!1282 = !DILocation(line: 257, column: 10, scope: !1206)
!1283 = !DILocation(line: 258, column: 15, scope: !1206)
!1284 = !DILocation(line: 259, column: 10, scope: !1206)
!1285 = !DILocation(line: 260, column: 8, scope: !1206)
!1286 = !DILocation(line: 261, column: 25, scope: !1206)
!1287 = !DILocation(line: 261, column: 36, scope: !1206)
!1288 = !DILocation(line: 262, column: 8, scope: !1206)
!1289 = !DILocation(line: 263, column: 8, scope: !1206)
!1290 = !DILocation(line: 264, column: 8, scope: !1206)
!1291 = !DILocation(line: 265, column: 8, scope: !1206)
!1292 = !DILocation(line: 265, column: 3, scope: !1206)
!1293 = !DILocation(line: 308, column: 3, scope: !1206)
!1294 = !DILocation(line: 315, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 309, column: 5)
!1296 = !DILocation(line: 315, column: 12, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 315, column: 11)
!1298 = !DILocation(line: 316, column: 9, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !100, discriminator: 1)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 316, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !100, line: 316, column: 9)
!1302 = !DILocation(line: 316, column: 9, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1301, file: !100, discriminator: 1)
!1304 = !DILocation(line: 316, column: 9, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1300, file: !100, discriminator: 2)
!1306 = !DILocation(line: 354, column: 26, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !100, line: 332, column: 11)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 331, column: 13)
!1309 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 330, column: 7)
!1310 = !DILocation(line: 355, column: 27, scope: !1307)
!1311 = !DILocation(line: 356, column: 11, scope: !1307)
!1312 = !DILocation(line: 357, column: 14, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 357, column: 13)
!1314 = !DILocation(line: 357, column: 13, scope: !1309)
!1315 = !DILocation(line: 358, column: 43, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1317, file: !100, discriminator: 1)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !100, line: 358, column: 11)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !100, line: 358, column: 11)
!1319 = !DILocation(line: 358, column: 11, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1318, file: !100, discriminator: 1)
!1321 = !DILocation(line: 359, column: 13, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !100, discriminator: 1)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !100, line: 359, column: 13)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !100, line: 359, column: 13)
!1325 = !DILocation(line: 359, column: 13, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1324, file: !100, discriminator: 1)
!1327 = !DILocation(line: 359, column: 13, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1323, file: !100, discriminator: 2)
!1329 = !DILocation(line: 359, column: 13, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1324, file: !100, discriminator: 3)
!1331 = !DILocation(line: 358, column: 70, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1317, file: !100, discriminator: 2)
!1333 = distinct !{!1333, !1334, !1335}
!1334 = !DILocation(line: 358, column: 11, scope: !1318)
!1335 = !DILocation(line: 359, column: 13, scope: !1318)
!1336 = !DILocation(line: 362, column: 28, scope: !1309)
!1337 = !DILocation(line: 364, column: 7, scope: !1295)
!1338 = !DILocation(line: 367, column: 7, scope: !1295)
!1339 = !DILocation(line: 370, column: 7, scope: !1295)
!1340 = !DILocation(line: 373, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 373, column: 11)
!1342 = !DILocation(line: 373, column: 11, scope: !1295)
!1343 = !DILocation(line: 378, column: 12, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 378, column: 11)
!1345 = !DILocation(line: 378, column: 11, scope: !1295)
!1346 = !DILocation(line: 379, column: 9, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1348, file: !100, discriminator: 1)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !100, line: 379, column: 9)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !100, line: 379, column: 9)
!1350 = !DILocation(line: 379, column: 9, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1349, file: !100, discriminator: 1)
!1352 = !DILocation(line: 379, column: 9, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1348, file: !100, discriminator: 2)
!1354 = !DILocation(line: 386, column: 7, scope: !1295)
!1355 = !DILocation(line: 389, column: 7, scope: !1295)
!1356 = !DILocation(line: 255, column: 10, scope: !1206)
!1357 = !DILocation(line: 392, column: 8, scope: !1235)
!1358 = !DILocation(line: 392, column: 27, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1234, file: !100, discriminator: 1)
!1360 = !DILocation(line: 392, column: 19, scope: !1359)
!1361 = !DILocation(line: 392, column: 60, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1234, file: !100, discriminator: 3)
!1363 = !DILocation(line: 392, column: 3, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1235, file: !100, discriminator: 4)
!1365 = !DILocation(line: 392, column: 41, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1234, file: !100, discriminator: 2)
!1367 = !DILocation(line: 392, column: 48, scope: !1366)
!1368 = !DILocation(line: 396, column: 12, scope: !1233)
!1369 = !DILocation(line: 397, column: 12, scope: !1233)
!1370 = !DILocation(line: 398, column: 12, scope: !1233)
!1371 = !DILocation(line: 401, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 400, column: 11)
!1373 = !DILocation(line: 403, column: 17, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1372, file: !100, discriminator: 1)
!1375 = !DILocation(line: 404, column: 39, scope: !1372)
!1376 = !DILocation(line: 408, column: 32, scope: !1372)
!1377 = !DILocation(line: 404, column: 19, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1372, file: !100, discriminator: 2)
!1379 = !DILocation(line: 404, column: 15, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1372, file: !100, discriminator: 4)
!1381 = !DILocation(line: 409, column: 11, scope: !1372)
!1382 = !DILocation(line: 409, column: 26, scope: !1374)
!1383 = !DILocation(line: 409, column: 14, scope: !1374)
!1384 = !DILocation(line: 400, column: 11, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1233, file: !100, discriminator: 1)
!1386 = !DILocation(line: 416, column: 11, scope: !1233)
!1387 = !DILocation(line: 394, column: 21, scope: !1233)
!1388 = !DILocation(line: 417, column: 7, scope: !1233)
!1389 = !DILocation(line: 420, column: 15, scope: !1242)
!1390 = !DILocation(line: 422, column: 15, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !100, discriminator: 1)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !100, line: 422, column: 15)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !100, line: 421, column: 13)
!1394 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 420, column: 15)
!1395 = !DILocation(line: 422, column: 15, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1397, file: !100, discriminator: 4)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !100, line: 422, column: 15)
!1398 = !DILocation(line: 422, column: 15, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1397, file: !100, discriminator: 3)
!1400 = !DILocation(line: 422, column: 15, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1402, file: !100, discriminator: 6)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !100, line: 422, column: 15)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 422, column: 15)
!1404 = distinct !DILexicalBlock(scope: !1397, file: !100, line: 422, column: 15)
!1405 = !DILocation(line: 422, column: 15, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1403, file: !100, discriminator: 6)
!1407 = !DILocation(line: 422, column: 15, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1402, file: !100, discriminator: 7)
!1409 = !DILocation(line: 422, column: 15, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1403, file: !100, discriminator: 8)
!1411 = !DILocation(line: 422, column: 15, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1413, file: !100, discriminator: 11)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !100, line: 422, column: 15)
!1414 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 422, column: 15)
!1415 = !DILocation(line: 422, column: 15, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1414, file: !100, discriminator: 11)
!1417 = !DILocation(line: 422, column: 15, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1413, file: !100, discriminator: 12)
!1419 = !DILocation(line: 422, column: 15, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1414, file: !100, discriminator: 13)
!1421 = !DILocation(line: 422, column: 15, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1423, file: !100, discriminator: 16)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !100, line: 422, column: 15)
!1424 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 422, column: 15)
!1425 = !DILocation(line: 422, column: 15, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1424, file: !100, discriminator: 16)
!1427 = !DILocation(line: 422, column: 15, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1423, file: !100, discriminator: 17)
!1429 = !DILocation(line: 422, column: 15, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1424, file: !100, discriminator: 18)
!1431 = !DILocation(line: 422, column: 15, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1404, file: !100, discriminator: 20)
!1433 = !DILocation(line: 422, column: 15, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !100, discriminator: 22)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !100, line: 422, column: 15)
!1436 = distinct !DILexicalBlock(scope: !1392, file: !100, line: 422, column: 15)
!1437 = !DILocation(line: 422, column: 15, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1436, file: !100, discriminator: 22)
!1439 = !DILocation(line: 422, column: 15, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1435, file: !100, discriminator: 23)
!1441 = !DILocation(line: 422, column: 15, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1436, file: !100, discriminator: 24)
!1443 = !DILocation(line: 430, column: 19, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1393, file: !100, line: 429, column: 19)
!1445 = !DILocation(line: 430, column: 24, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1444, file: !100, discriminator: 1)
!1447 = !DILocation(line: 430, column: 28, scope: !1446)
!1448 = !DILocation(line: 430, column: 38, scope: !1446)
!1449 = !DILocation(line: 430, column: 48, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1444, file: !100, discriminator: 2)
!1451 = !DILocation(line: 430, column: 59, scope: !1450)
!1452 = !DILocation(line: 432, column: 19, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1454, file: !100, discriminator: 1)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !100, line: 432, column: 19)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !100, line: 432, column: 19)
!1456 = distinct !DILexicalBlock(scope: !1444, file: !100, line: 431, column: 17)
!1457 = !DILocation(line: 432, column: 19, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1455, file: !100, discriminator: 1)
!1459 = !DILocation(line: 432, column: 19, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1454, file: !100, discriminator: 2)
!1461 = !DILocation(line: 432, column: 19, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1455, file: !100, discriminator: 3)
!1463 = !DILocation(line: 433, column: 19, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1465, file: !100, discriminator: 1)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !100, line: 433, column: 19)
!1466 = distinct !DILexicalBlock(scope: !1456, file: !100, line: 433, column: 19)
!1467 = !DILocation(line: 433, column: 19, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1466, file: !100, discriminator: 1)
!1469 = !DILocation(line: 433, column: 19, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1465, file: !100, discriminator: 2)
!1471 = !DILocation(line: 433, column: 19, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1466, file: !100, discriminator: 3)
!1473 = !DILocation(line: 434, column: 17, scope: !1456)
!1474 = !DILocation(line: 441, column: 20, scope: !1394)
!1475 = !DILocation(line: 446, column: 11, scope: !1242)
!1476 = !DILocation(line: 449, column: 19, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 447, column: 13)
!1478 = !DILocation(line: 455, column: 19, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1477, file: !100, line: 454, column: 19)
!1480 = !DILocation(line: 455, column: 24, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1479, file: !100, discriminator: 1)
!1482 = !DILocation(line: 455, column: 28, scope: !1481)
!1483 = !DILocation(line: 455, column: 38, scope: !1481)
!1484 = !DILocation(line: 455, column: 47, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1479, file: !100, discriminator: 2)
!1486 = !DILocation(line: 455, column: 41, scope: !1485)
!1487 = !DILocation(line: 455, column: 52, scope: !1485)
!1488 = !DILocation(line: 454, column: 19, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1477, file: !100, discriminator: 1)
!1490 = !DILocation(line: 456, column: 25, scope: !1479)
!1491 = !DILocation(line: 456, column: 17, scope: !1479)
!1492 = !DILocation(line: 463, column: 25, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1479, file: !100, line: 457, column: 19)
!1494 = !DILocation(line: 467, column: 21, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1496, file: !100, discriminator: 1)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !100, line: 467, column: 21)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 467, column: 21)
!1498 = !DILocation(line: 467, column: 21, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1497, file: !100, discriminator: 1)
!1500 = !DILocation(line: 467, column: 21, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1496, file: !100, discriminator: 2)
!1502 = !DILocation(line: 467, column: 21, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1497, file: !100, discriminator: 3)
!1504 = !DILocation(line: 468, column: 21, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !100, discriminator: 1)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 468, column: 21)
!1507 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 468, column: 21)
!1508 = !DILocation(line: 468, column: 21, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1507, file: !100, discriminator: 1)
!1510 = !DILocation(line: 468, column: 21, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1506, file: !100, discriminator: 2)
!1512 = !DILocation(line: 468, column: 21, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1507, file: !100, discriminator: 3)
!1514 = !DILocation(line: 469, column: 21, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !100, discriminator: 1)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !100, line: 469, column: 21)
!1517 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 469, column: 21)
!1518 = !DILocation(line: 469, column: 21, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1517, file: !100, discriminator: 1)
!1520 = !DILocation(line: 469, column: 21, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1516, file: !100, discriminator: 2)
!1522 = !DILocation(line: 469, column: 21, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1517, file: !100, discriminator: 3)
!1524 = !DILocation(line: 470, column: 21, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1526, file: !100, discriminator: 1)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !100, line: 470, column: 21)
!1527 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 470, column: 21)
!1528 = !DILocation(line: 470, column: 21, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1527, file: !100, discriminator: 1)
!1530 = !DILocation(line: 470, column: 21, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1526, file: !100, discriminator: 2)
!1532 = !DILocation(line: 470, column: 21, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1527, file: !100, discriminator: 3)
!1534 = !DILocation(line: 471, column: 21, scope: !1493)
!1535 = !DILocation(line: 395, column: 21, scope: !1233)
!1536 = !DILocation(line: 484, column: 31, scope: !1242)
!1537 = !DILocation(line: 485, column: 31, scope: !1242)
!1538 = !DILocation(line: 487, column: 31, scope: !1242)
!1539 = !DILocation(line: 488, column: 31, scope: !1242)
!1540 = !DILocation(line: 489, column: 31, scope: !1242)
!1541 = !DILocation(line: 492, column: 15, scope: !1242)
!1542 = !DILocation(line: 494, column: 19, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !100, line: 493, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 492, column: 15)
!1545 = !DILocation(line: 501, column: 33, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 501, column: 15)
!1547 = !DILocation(line: 506, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 505, column: 15)
!1549 = !DILocation(line: 510, column: 15, scope: !1242)
!1550 = !DILocation(line: 518, column: 26, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 518, column: 15)
!1552 = !DILocation(line: 518, column: 15, scope: !1242)
!1553 = !DILocation(line: 518, column: 40, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1551, file: !100, discriminator: 1)
!1555 = !DILocation(line: 518, column: 47, scope: !1554)
!1556 = !DILocation(line: 522, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 522, column: 15)
!1558 = !DILocation(line: 518, column: 18, scope: !1554)
!1559 = !DILocation(line: 518, column: 65, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1551, file: !100, discriminator: 2)
!1561 = !DILocation(line: 518, column: 15, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1242, file: !100, discriminator: 2)
!1563 = !DILocation(line: 522, column: 15, scope: !1242)
!1564 = !DILocation(line: 526, column: 11, scope: !1242)
!1565 = !DILocation(line: 541, column: 15, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 540, column: 15)
!1567 = !DILocation(line: 548, column: 15, scope: !1242)
!1568 = !DILocation(line: 550, column: 19, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !100, line: 549, column: 13)
!1570 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 548, column: 15)
!1571 = !DILocation(line: 553, column: 19, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !100, line: 553, column: 19)
!1573 = !DILocation(line: 553, column: 35, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1572, file: !100, discriminator: 1)
!1575 = !DILocation(line: 553, column: 30, scope: !1572)
!1576 = !DILocation(line: 562, column: 15, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1578, file: !100, discriminator: 1)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !100, line: 562, column: 15)
!1579 = distinct !DILexicalBlock(scope: !1569, file: !100, line: 562, column: 15)
!1580 = !DILocation(line: 562, column: 15, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1579, file: !100, discriminator: 1)
!1582 = !DILocation(line: 562, column: 15, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1578, file: !100, discriminator: 2)
!1584 = !DILocation(line: 562, column: 15, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1579, file: !100, discriminator: 3)
!1586 = !DILocation(line: 563, column: 15, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1588, file: !100, discriminator: 1)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !100, line: 563, column: 15)
!1589 = distinct !DILexicalBlock(scope: !1569, file: !100, line: 563, column: 15)
!1590 = !DILocation(line: 563, column: 15, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1589, file: !100, discriminator: 1)
!1592 = !DILocation(line: 563, column: 15, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1588, file: !100, discriminator: 2)
!1594 = !DILocation(line: 563, column: 15, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1589, file: !100, discriminator: 3)
!1596 = !DILocation(line: 564, column: 15, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1598, file: !100, discriminator: 1)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !100, line: 564, column: 15)
!1599 = distinct !DILexicalBlock(scope: !1569, file: !100, line: 564, column: 15)
!1600 = !DILocation(line: 564, column: 15, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1599, file: !100, discriminator: 1)
!1602 = !DILocation(line: 564, column: 15, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1598, file: !100, discriminator: 2)
!1604 = !DILocation(line: 564, column: 15, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1599, file: !100, discriminator: 3)
!1606 = !DILocation(line: 566, column: 13, scope: !1569)
!1607 = !DILocation(line: 606, column: 17, scope: !1241)
!1608 = !DILocation(line: 602, column: 20, scope: !1241)
!1609 = !DILocation(line: 609, column: 29, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1246, file: !100, line: 607, column: 15)
!1611 = !{!817, !817, i64 0}
!1612 = !DILocation(line: 609, column: 27, scope: !1610)
!1613 = !DILocation(line: 604, column: 18, scope: !1241)
!1614 = !DILocation(line: 610, column: 15, scope: !1610)
!1615 = !DILocation(line: 613, column: 17, scope: !1245)
!1616 = !DILocation(line: 614, column: 17, scope: !1245)
!1617 = !DILocation(line: 618, column: 29, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 618, column: 21)
!1619 = !DILocation(line: 618, column: 21, scope: !1245)
!1620 = distinct !{!1620, !1621, !1622}
!1621 = !DILocation(line: 621, column: 17, scope: !1245)
!1622 = !DILocation(line: 667, column: 44, scope: !1245)
!1623 = !DILocation(line: 619, column: 29, scope: !1618)
!1624 = !DILocation(line: 619, column: 19, scope: !1618)
!1625 = !DILocation(line: 623, column: 21, scope: !1259)
!1626 = !DILocation(line: 624, column: 56, scope: !1259)
!1627 = !DILocation(line: 624, column: 50, scope: !1259)
!1628 = !DILocation(line: 625, column: 53, scope: !1259)
!1629 = !DILocation(line: 613, column: 27, scope: !1245)
!1630 = !DILocation(line: 623, column: 29, scope: !1259)
!1631 = !DILocation(line: 624, column: 36, scope: !1259)
!1632 = !DILocation(line: 624, column: 28, scope: !1259)
!1633 = !DILocation(line: 626, column: 25, scope: !1259)
!1634 = !DILocation(line: 636, column: 38, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1636, file: !100, discriminator: 1)
!1636 = distinct !DILexicalBlock(scope: !1266, file: !100, line: 634, column: 23)
!1637 = !DILocation(line: 636, column: 48, scope: !1635)
!1638 = !DILocation(line: 636, column: 51, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1636, file: !100, discriminator: 2)
!1640 = !DILocation(line: 636, column: 48, scope: !1639)
!1641 = !DILocation(line: 636, column: 25, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1636, file: !100, discriminator: 3)
!1643 = !DILocation(line: 637, column: 28, scope: !1636)
!1644 = !DILocation(line: 636, column: 34, scope: !1635)
!1645 = distinct !{!1645, !1646, !1643}
!1646 = !DILocation(line: 636, column: 25, scope: !1636)
!1647 = !DILocation(line: 650, column: 43, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1649, file: !100, discriminator: 1)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !100, line: 650, column: 29)
!1650 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 650, column: 29)
!1651 = !DILocation(line: 647, column: 29, scope: !1264)
!1652 = !DILocation(line: 649, column: 36, scope: !1263)
!1653 = !DILocation(line: 651, column: 49, scope: !1649)
!1654 = !DILocation(line: 651, column: 39, scope: !1649)
!1655 = !DILocation(line: 651, column: 31, scope: !1649)
!1656 = !DILocation(line: 650, column: 53, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1649, file: !100, discriminator: 2)
!1658 = !DILocation(line: 650, column: 29, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1650, file: !100, discriminator: 1)
!1660 = distinct !{!1660, !1661, !1662}
!1661 = !DILocation(line: 650, column: 29, scope: !1650)
!1662 = !DILocation(line: 659, column: 33, scope: !1650)
!1663 = !DILocation(line: 666, column: 19, scope: !1245)
!1664 = !DILocation(line: 662, column: 41, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1265, file: !100, line: 662, column: 29)
!1666 = !DILocation(line: 662, column: 31, scope: !1665)
!1667 = !DILocation(line: 662, column: 29, scope: !1265)
!1668 = !DILocation(line: 664, column: 27, scope: !1265)
!1669 = !DILocation(line: 667, column: 26, scope: !1245)
!1670 = !DILocation(line: 667, column: 24, scope: !1245)
!1671 = !DILocation(line: 666, column: 19, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1259, file: !100, discriminator: 3)
!1673 = !DILocation(line: 668, column: 15, scope: !1246)
!1674 = !DILocation(line: 670, column: 40, scope: !1241)
!1675 = !DILocation(line: 672, column: 19, scope: !1271)
!1676 = !DILocation(line: 672, column: 45, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1271, file: !100, discriminator: 1)
!1678 = !DILocation(line: 672, column: 23, scope: !1271)
!1679 = !DILocation(line: 676, column: 33, scope: !1270)
!1680 = !DILocation(line: 676, column: 24, scope: !1270)
!1681 = !DILocation(line: 678, column: 17, scope: !1270)
!1682 = !DILocation(line: 680, column: 43, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !100, line: 680, column: 25)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !100, line: 679, column: 19)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !100, line: 678, column: 17)
!1686 = distinct !DILexicalBlock(scope: !1270, file: !100, line: 678, column: 17)
!1687 = !DILocation(line: 682, column: 25, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1689, file: !100, discriminator: 1)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !100, line: 682, column: 25)
!1690 = distinct !DILexicalBlock(scope: !1683, file: !100, line: 681, column: 23)
!1691 = !DILocation(line: 682, column: 25, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1693, file: !100, discriminator: 4)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !100, line: 682, column: 25)
!1694 = !DILocation(line: 682, column: 25, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1693, file: !100, discriminator: 3)
!1696 = !DILocation(line: 682, column: 25, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1698, file: !100, discriminator: 6)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !100, line: 682, column: 25)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !100, line: 682, column: 25)
!1700 = distinct !DILexicalBlock(scope: !1693, file: !100, line: 682, column: 25)
!1701 = !DILocation(line: 682, column: 25, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1699, file: !100, discriminator: 6)
!1703 = !DILocation(line: 682, column: 25, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1698, file: !100, discriminator: 7)
!1705 = !DILocation(line: 682, column: 25, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1699, file: !100, discriminator: 8)
!1707 = !DILocation(line: 682, column: 25, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1709, file: !100, discriminator: 11)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !100, line: 682, column: 25)
!1710 = distinct !DILexicalBlock(scope: !1700, file: !100, line: 682, column: 25)
!1711 = !DILocation(line: 682, column: 25, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1710, file: !100, discriminator: 11)
!1713 = !DILocation(line: 682, column: 25, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1709, file: !100, discriminator: 12)
!1715 = !DILocation(line: 682, column: 25, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1710, file: !100, discriminator: 13)
!1717 = !DILocation(line: 682, column: 25, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !100, discriminator: 16)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !100, line: 682, column: 25)
!1720 = distinct !DILexicalBlock(scope: !1700, file: !100, line: 682, column: 25)
!1721 = !DILocation(line: 682, column: 25, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1720, file: !100, discriminator: 16)
!1723 = !DILocation(line: 682, column: 25, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1719, file: !100, discriminator: 17)
!1725 = !DILocation(line: 682, column: 25, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1720, file: !100, discriminator: 18)
!1727 = !DILocation(line: 682, column: 25, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1700, file: !100, discriminator: 20)
!1729 = !DILocation(line: 682, column: 25, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1731, file: !100, discriminator: 22)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !100, line: 682, column: 25)
!1732 = distinct !DILexicalBlock(scope: !1689, file: !100, line: 682, column: 25)
!1733 = !DILocation(line: 682, column: 25, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1732, file: !100, discriminator: 22)
!1735 = !DILocation(line: 682, column: 25, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1731, file: !100, discriminator: 23)
!1737 = !DILocation(line: 682, column: 25, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1732, file: !100, discriminator: 24)
!1739 = !DILocation(line: 683, column: 25, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1741, file: !100, discriminator: 1)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !100, line: 683, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1690, file: !100, line: 683, column: 25)
!1743 = !DILocation(line: 683, column: 25, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1742, file: !100, discriminator: 1)
!1745 = !DILocation(line: 683, column: 25, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1741, file: !100, discriminator: 2)
!1747 = !DILocation(line: 683, column: 25, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1742, file: !100, discriminator: 3)
!1749 = !DILocation(line: 684, column: 25, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1751, file: !100, discriminator: 1)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !100, line: 684, column: 25)
!1752 = distinct !DILexicalBlock(scope: !1690, file: !100, line: 684, column: 25)
!1753 = !DILocation(line: 684, column: 25, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1752, file: !100, discriminator: 1)
!1755 = !DILocation(line: 684, column: 25, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1751, file: !100, discriminator: 2)
!1757 = !DILocation(line: 684, column: 25, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1752, file: !100, discriminator: 3)
!1759 = !DILocation(line: 685, column: 38, scope: !1690)
!1760 = !DILocation(line: 685, column: 33, scope: !1690)
!1761 = !DILocation(line: 686, column: 23, scope: !1690)
!1762 = !DILocation(line: 687, column: 30, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1683, file: !100, line: 687, column: 30)
!1764 = !DILocation(line: 687, column: 30, scope: !1683)
!1765 = !DILocation(line: 689, column: 25, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1767, file: !100, discriminator: 1)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !100, line: 689, column: 25)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !100, line: 689, column: 25)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !100, line: 688, column: 23)
!1770 = !DILocation(line: 689, column: 25, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1768, file: !100, discriminator: 1)
!1772 = !DILocation(line: 689, column: 25, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1767, file: !100, discriminator: 2)
!1774 = !DILocation(line: 689, column: 25, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1768, file: !100, discriminator: 3)
!1776 = !DILocation(line: 691, column: 23, scope: !1769)
!1777 = !DILocation(line: 692, column: 35, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1684, file: !100, line: 692, column: 25)
!1779 = !DILocation(line: 692, column: 30, scope: !1778)
!1780 = !DILocation(line: 692, column: 25, scope: !1684)
!1781 = !DILocation(line: 694, column: 21, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !100, discriminator: 1)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !100, line: 694, column: 21)
!1784 = distinct !DILexicalBlock(scope: !1684, file: !100, line: 694, column: 21)
!1785 = !DILocation(line: 694, column: 21, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1783, file: !100, discriminator: 2)
!1787 = !DILocation(line: 694, column: 21, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1789, file: !100, discriminator: 4)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !100, line: 694, column: 21)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !100, line: 694, column: 21)
!1791 = distinct !DILexicalBlock(scope: !1783, file: !100, line: 694, column: 21)
!1792 = !DILocation(line: 694, column: 21, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1790, file: !100, discriminator: 4)
!1794 = !DILocation(line: 694, column: 21, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1789, file: !100, discriminator: 5)
!1796 = !DILocation(line: 694, column: 21, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1790, file: !100, discriminator: 6)
!1798 = !DILocation(line: 694, column: 21, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !100, discriminator: 9)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !100, line: 694, column: 21)
!1801 = distinct !DILexicalBlock(scope: !1791, file: !100, line: 694, column: 21)
!1802 = !DILocation(line: 694, column: 21, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1801, file: !100, discriminator: 9)
!1804 = !DILocation(line: 694, column: 21, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1800, file: !100, discriminator: 10)
!1806 = !DILocation(line: 694, column: 21, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1801, file: !100, discriminator: 11)
!1808 = !DILocation(line: 694, column: 21, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1791, file: !100, discriminator: 13)
!1810 = !DILocation(line: 695, column: 21, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1812, file: !100, discriminator: 1)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !100, line: 695, column: 21)
!1813 = distinct !DILexicalBlock(scope: !1684, file: !100, line: 695, column: 21)
!1814 = !DILocation(line: 695, column: 21, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1813, file: !100, discriminator: 1)
!1816 = !DILocation(line: 695, column: 21, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1812, file: !100, discriminator: 2)
!1818 = !DILocation(line: 695, column: 21, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1813, file: !100, discriminator: 3)
!1820 = !DILocation(line: 696, column: 25, scope: !1684)
!1821 = !DILocation(line: 678, column: 17, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1685, file: !100, discriminator: 1)
!1823 = distinct !{!1823, !1824, !1825}
!1824 = !DILocation(line: 678, column: 17, scope: !1686)
!1825 = !DILocation(line: 697, column: 19, scope: !1686)
!1826 = !DILocation(line: 704, column: 34, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 704, column: 11)
!1828 = !DILocation(line: 706, column: 14, scope: !1827)
!1829 = !DILocation(line: 707, column: 14, scope: !1827)
!1830 = !DILocation(line: 707, column: 35, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1827, file: !100, discriminator: 1)
!1832 = !DILocation(line: 707, column: 17, scope: !1831)
!1833 = !DILocation(line: 707, column: 53, scope: !1831)
!1834 = !DILocation(line: 707, column: 47, scope: !1831)
!1835 = !DILocation(line: 707, column: 65, scope: !1831)
!1836 = !DILocation(line: 708, column: 15, scope: !1831)
!1837 = !DILocation(line: 708, column: 11, scope: !1827)
!1838 = !DILocation(line: 704, column: 11, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1233, file: !100, discriminator: 2)
!1840 = !DILocation(line: 712, column: 7, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1842, file: !100, discriminator: 1)
!1842 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 712, column: 7)
!1843 = !DILocation(line: 712, column: 7, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1845, file: !100, discriminator: 4)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !100, line: 712, column: 7)
!1846 = !DILocation(line: 712, column: 7, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1845, file: !100, discriminator: 3)
!1848 = !DILocation(line: 712, column: 7, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1850, file: !100, discriminator: 6)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !100, line: 712, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !100, line: 712, column: 7)
!1852 = distinct !DILexicalBlock(scope: !1845, file: !100, line: 712, column: 7)
!1853 = !DILocation(line: 712, column: 7, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1851, file: !100, discriminator: 6)
!1855 = !DILocation(line: 712, column: 7, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1850, file: !100, discriminator: 7)
!1857 = !DILocation(line: 712, column: 7, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1851, file: !100, discriminator: 8)
!1859 = !DILocation(line: 712, column: 7, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1861, file: !100, discriminator: 11)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !100, line: 712, column: 7)
!1862 = distinct !DILexicalBlock(scope: !1852, file: !100, line: 712, column: 7)
!1863 = !DILocation(line: 712, column: 7, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1862, file: !100, discriminator: 11)
!1865 = !DILocation(line: 712, column: 7, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1861, file: !100, discriminator: 12)
!1867 = !DILocation(line: 712, column: 7, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1862, file: !100, discriminator: 13)
!1869 = !DILocation(line: 712, column: 7, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !100, discriminator: 16)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !100, line: 712, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1852, file: !100, line: 712, column: 7)
!1873 = !DILocation(line: 712, column: 7, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1872, file: !100, discriminator: 16)
!1875 = !DILocation(line: 712, column: 7, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1871, file: !100, discriminator: 17)
!1877 = !DILocation(line: 712, column: 7, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1872, file: !100, discriminator: 18)
!1879 = !DILocation(line: 712, column: 7, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1852, file: !100, discriminator: 20)
!1881 = !DILocation(line: 712, column: 7, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1883, file: !100, discriminator: 22)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !100, line: 712, column: 7)
!1884 = distinct !DILexicalBlock(scope: !1842, file: !100, line: 712, column: 7)
!1885 = !DILocation(line: 712, column: 7, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1884, file: !100, discriminator: 22)
!1887 = !DILocation(line: 712, column: 7, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1883, file: !100, discriminator: 23)
!1889 = !DILocation(line: 712, column: 7, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1884, file: !100, discriminator: 24)
!1891 = !DILocation(line: 715, column: 7, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1893, file: !100, discriminator: 1)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !100, line: 715, column: 7)
!1894 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 715, column: 7)
!1895 = !DILocation(line: 715, column: 7, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1893, file: !100, discriminator: 2)
!1897 = !DILocation(line: 715, column: 7, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1899, file: !100, discriminator: 4)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !100, line: 715, column: 7)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !100, line: 715, column: 7)
!1901 = distinct !DILexicalBlock(scope: !1893, file: !100, line: 715, column: 7)
!1902 = !DILocation(line: 715, column: 7, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1900, file: !100, discriminator: 4)
!1904 = !DILocation(line: 715, column: 7, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1899, file: !100, discriminator: 5)
!1906 = !DILocation(line: 715, column: 7, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1900, file: !100, discriminator: 6)
!1908 = !DILocation(line: 715, column: 7, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !100, discriminator: 9)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !100, line: 715, column: 7)
!1911 = distinct !DILexicalBlock(scope: !1901, file: !100, line: 715, column: 7)
!1912 = !DILocation(line: 715, column: 7, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1911, file: !100, discriminator: 9)
!1914 = !DILocation(line: 715, column: 7, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1910, file: !100, discriminator: 10)
!1916 = !DILocation(line: 715, column: 7, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1911, file: !100, discriminator: 11)
!1918 = !DILocation(line: 715, column: 7, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1901, file: !100, discriminator: 13)
!1920 = !DILocation(line: 716, column: 7, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1922, file: !100, discriminator: 1)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !100, line: 716, column: 7)
!1923 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 716, column: 7)
!1924 = !DILocation(line: 716, column: 7, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1923, file: !100, discriminator: 1)
!1926 = !DILocation(line: 716, column: 7, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1922, file: !100, discriminator: 2)
!1928 = !DILocation(line: 716, column: 7, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1923, file: !100, discriminator: 3)
!1930 = !DILocation(line: 718, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 718, column: 11)
!1932 = !DILocation(line: 718, column: 11, scope: !1233)
!1933 = !DILocation(line: 720, column: 5, scope: !1234)
!1934 = !DILocation(line: 392, column: 75, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1234, file: !100, discriminator: 5)
!1936 = !DILocation(line: 392, column: 3, scope: !1935)
!1937 = distinct !{!1937, !1938, !1939}
!1938 = !DILocation(line: 392, column: 3, scope: !1235)
!1939 = !DILocation(line: 720, column: 5, scope: !1235)
!1940 = !DILocation(line: 722, column: 11, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 722, column: 7)
!1942 = !DILocation(line: 722, column: 16, scope: !1941)
!1943 = !DILocation(line: 730, column: 51, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 730, column: 7)
!1945 = !DILocation(line: 731, column: 10, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1944, file: !100, discriminator: 1)
!1947 = !DILocation(line: 733, column: 11, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !100, line: 733, column: 11)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !100, line: 732, column: 5)
!1950 = !DILocation(line: 733, column: 11, scope: !1949)
!1951 = !DILocation(line: 734, column: 16, scope: !1948)
!1952 = !DILocation(line: 734, column: 9, scope: !1948)
!1953 = !DILocation(line: 738, column: 18, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !100, line: 738, column: 16)
!1955 = !DILocation(line: 738, column: 32, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1954, file: !100, discriminator: 1)
!1957 = !DILocation(line: 738, column: 29, scope: !1954)
!1958 = !DILocation(line: 747, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 747, column: 7)
!1960 = !DILocation(line: 747, column: 20, scope: !1959)
!1961 = !DILocation(line: 748, column: 12, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1963, file: !100, discriminator: 1)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !100, line: 748, column: 5)
!1964 = distinct !DILexicalBlock(scope: !1959, file: !100, line: 748, column: 5)
!1965 = !DILocation(line: 748, column: 5, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1964, file: !100, discriminator: 1)
!1967 = !DILocation(line: 749, column: 7, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1969, file: !100, discriminator: 1)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !100, line: 749, column: 7)
!1970 = distinct !DILexicalBlock(scope: !1963, file: !100, line: 749, column: 7)
!1971 = !DILocation(line: 749, column: 7, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1970, file: !100, discriminator: 1)
!1973 = !DILocation(line: 749, column: 7, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1969, file: !100, discriminator: 2)
!1975 = !DILocation(line: 749, column: 7, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1970, file: !100, discriminator: 3)
!1977 = !DILocation(line: 748, column: 39, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1963, file: !100, discriminator: 2)
!1979 = distinct !{!1979, !1980, !1981}
!1980 = !DILocation(line: 748, column: 5, scope: !1964)
!1981 = !DILocation(line: 749, column: 7, scope: !1964)
!1982 = !DILocation(line: 751, column: 11, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 751, column: 7)
!1984 = !DILocation(line: 751, column: 7, scope: !1206)
!1985 = !DILocation(line: 752, column: 5, scope: !1983)
!1986 = !DILocation(line: 752, column: 17, scope: !1983)
!1987 = !DILocation(line: 758, column: 21, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 758, column: 7)
!1989 = !DILocation(line: 758, column: 54, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1988, file: !100, discriminator: 1)
!1991 = !DILocation(line: 758, column: 51, scope: !1988)
!1992 = !DILocation(line: 762, column: 42, scope: !1206)
!1993 = !DILocation(line: 760, column: 10, scope: !1206)
!1994 = !DILocation(line: 760, column: 3, scope: !1206)
!1995 = !DILocation(line: 764, column: 1, scope: !1206)
!1996 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1997, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!6, !6, !58}
!1999 = !{!2000, !2001, !2002, !2003}
!2000 = !DILocalVariable(name: "msgid", arg: 1, scope: !1996, file: !100, line: 199, type: !6)
!2001 = !DILocalVariable(name: "s", arg: 2, scope: !1996, file: !100, line: 199, type: !58)
!2002 = !DILocalVariable(name: "translation", scope: !1996, file: !100, line: 201, type: !6)
!2003 = !DILocalVariable(name: "locale_code", scope: !1996, file: !100, line: 202, type: !6)
!2004 = !DILocation(line: 199, column: 28, scope: !1996)
!2005 = !DILocation(line: 199, column: 54, scope: !1996)
!2006 = !DILocation(line: 201, column: 29, scope: !1996)
!2007 = !DILocation(line: 201, column: 15, scope: !1996)
!2008 = !DILocation(line: 204, column: 19, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1996, file: !100, line: 204, column: 7)
!2010 = !DILocation(line: 204, column: 7, scope: !1996)
!2011 = !DILocation(line: 225, column: 17, scope: !1996)
!2012 = !DILocation(line: 202, column: 15, scope: !1996)
!2013 = !DILocalVariable(name: "s2", arg: 2, scope: !2014, file: !2015, line: 160, type: !6)
!2014 = distinct !DISubprogram(name: "strcaseeq0", scope: !2015, file: !2015, line: 160, type: !2016, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2018)
!2015 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2018 = !{!2019, !2013, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2019 = !DILocalVariable(name: "s1", arg: 1, scope: !2014, file: !2015, line: 160, type: !6)
!2020 = !DILocalVariable(name: "s20", arg: 3, scope: !2014, file: !2015, line: 160, type: !8)
!2021 = !DILocalVariable(name: "s21", arg: 4, scope: !2014, file: !2015, line: 160, type: !8)
!2022 = !DILocalVariable(name: "s22", arg: 5, scope: !2014, file: !2015, line: 160, type: !8)
!2023 = !DILocalVariable(name: "s23", arg: 6, scope: !2014, file: !2015, line: 160, type: !8)
!2024 = !DILocalVariable(name: "s24", arg: 7, scope: !2014, file: !2015, line: 160, type: !8)
!2025 = !DILocalVariable(name: "s25", arg: 8, scope: !2014, file: !2015, line: 160, type: !8)
!2026 = !DILocalVariable(name: "s26", arg: 9, scope: !2014, file: !2015, line: 160, type: !8)
!2027 = !DILocalVariable(name: "s27", arg: 10, scope: !2014, file: !2015, line: 160, type: !8)
!2028 = !DILocalVariable(name: "s28", arg: 11, scope: !2014, file: !2015, line: 160, type: !8)
!2029 = !DILocation(line: 160, column: 41, scope: !2014, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 226, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1996, file: !100, line: 226, column: 7)
!2032 = !DILocation(line: 160, column: 120, scope: !2014, inlinedAt: !2030)
!2033 = !DILocation(line: 160, column: 130, scope: !2014, inlinedAt: !2030)
!2034 = !DILocation(line: 162, column: 7, scope: !2035, inlinedAt: !2030)
!2035 = !DILexicalBlockFile(scope: !2036, file: !2015, discriminator: 1)
!2036 = distinct !DILexicalBlock(scope: !2014, file: !2015, line: 162, column: 7)
!2037 = !DILocalVariable(name: "s2", arg: 2, scope: !2038, file: !2015, line: 146, type: !6)
!2038 = distinct !DISubprogram(name: "strcaseeq1", scope: !2015, file: !2015, line: 146, type: !2039, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2041 = !{!2042, !2037, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050}
!2042 = !DILocalVariable(name: "s1", arg: 1, scope: !2038, file: !2015, line: 146, type: !6)
!2043 = !DILocalVariable(name: "s21", arg: 3, scope: !2038, file: !2015, line: 146, type: !8)
!2044 = !DILocalVariable(name: "s22", arg: 4, scope: !2038, file: !2015, line: 146, type: !8)
!2045 = !DILocalVariable(name: "s23", arg: 5, scope: !2038, file: !2015, line: 146, type: !8)
!2046 = !DILocalVariable(name: "s24", arg: 6, scope: !2038, file: !2015, line: 146, type: !8)
!2047 = !DILocalVariable(name: "s25", arg: 7, scope: !2038, file: !2015, line: 146, type: !8)
!2048 = !DILocalVariable(name: "s26", arg: 8, scope: !2038, file: !2015, line: 146, type: !8)
!2049 = !DILocalVariable(name: "s27", arg: 9, scope: !2038, file: !2015, line: 146, type: !8)
!2050 = !DILocalVariable(name: "s28", arg: 10, scope: !2038, file: !2015, line: 146, type: !8)
!2051 = !DILocation(line: 146, column: 41, scope: !2038, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 167, column: 16, scope: !2053, inlinedAt: !2030)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !2015, line: 164, column: 11)
!2054 = distinct !DILexicalBlock(scope: !2036, file: !2015, line: 163, column: 5)
!2055 = !DILocation(line: 146, column: 110, scope: !2038, inlinedAt: !2052)
!2056 = !DILocation(line: 146, column: 120, scope: !2038, inlinedAt: !2052)
!2057 = !DILocation(line: 148, column: 7, scope: !2058, inlinedAt: !2052)
!2058 = !DILexicalBlockFile(scope: !2059, file: !2015, discriminator: 1)
!2059 = distinct !DILexicalBlock(scope: !2038, file: !2015, line: 148, column: 7)
!2060 = !DILocalVariable(name: "s2", arg: 2, scope: !2061, file: !2015, line: 132, type: !6)
!2061 = distinct !DISubprogram(name: "strcaseeq2", scope: !2015, file: !2015, line: 132, type: !2062, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2064 = !{!2065, !2060, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2065 = !DILocalVariable(name: "s1", arg: 1, scope: !2061, file: !2015, line: 132, type: !6)
!2066 = !DILocalVariable(name: "s22", arg: 3, scope: !2061, file: !2015, line: 132, type: !8)
!2067 = !DILocalVariable(name: "s23", arg: 4, scope: !2061, file: !2015, line: 132, type: !8)
!2068 = !DILocalVariable(name: "s24", arg: 5, scope: !2061, file: !2015, line: 132, type: !8)
!2069 = !DILocalVariable(name: "s25", arg: 6, scope: !2061, file: !2015, line: 132, type: !8)
!2070 = !DILocalVariable(name: "s26", arg: 7, scope: !2061, file: !2015, line: 132, type: !8)
!2071 = !DILocalVariable(name: "s27", arg: 8, scope: !2061, file: !2015, line: 132, type: !8)
!2072 = !DILocalVariable(name: "s28", arg: 9, scope: !2061, file: !2015, line: 132, type: !8)
!2073 = !DILocation(line: 132, column: 41, scope: !2061, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 153, column: 16, scope: !2075, inlinedAt: !2052)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !2015, line: 150, column: 11)
!2076 = distinct !DILexicalBlock(scope: !2059, file: !2015, line: 149, column: 5)
!2077 = !DILocation(line: 132, column: 100, scope: !2061, inlinedAt: !2074)
!2078 = !DILocation(line: 132, column: 110, scope: !2061, inlinedAt: !2074)
!2079 = !DILocation(line: 134, column: 7, scope: !2080, inlinedAt: !2074)
!2080 = !DILexicalBlockFile(scope: !2081, file: !2015, discriminator: 1)
!2081 = distinct !DILexicalBlock(scope: !2061, file: !2015, line: 134, column: 7)
!2082 = !DILocalVariable(name: "s2", arg: 2, scope: !2083, file: !2015, line: 118, type: !6)
!2083 = distinct !DISubprogram(name: "strcaseeq3", scope: !2015, file: !2015, line: 118, type: !2084, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!2086 = !{!2087, !2082, !2088, !2089, !2090, !2091, !2092, !2093}
!2087 = !DILocalVariable(name: "s1", arg: 1, scope: !2083, file: !2015, line: 118, type: !6)
!2088 = !DILocalVariable(name: "s23", arg: 3, scope: !2083, file: !2015, line: 118, type: !8)
!2089 = !DILocalVariable(name: "s24", arg: 4, scope: !2083, file: !2015, line: 118, type: !8)
!2090 = !DILocalVariable(name: "s25", arg: 5, scope: !2083, file: !2015, line: 118, type: !8)
!2091 = !DILocalVariable(name: "s26", arg: 6, scope: !2083, file: !2015, line: 118, type: !8)
!2092 = !DILocalVariable(name: "s27", arg: 7, scope: !2083, file: !2015, line: 118, type: !8)
!2093 = !DILocalVariable(name: "s28", arg: 8, scope: !2083, file: !2015, line: 118, type: !8)
!2094 = !DILocation(line: 118, column: 41, scope: !2083, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 139, column: 16, scope: !2096, inlinedAt: !2074)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !2015, line: 136, column: 11)
!2097 = distinct !DILexicalBlock(scope: !2081, file: !2015, line: 135, column: 5)
!2098 = !DILocation(line: 118, column: 90, scope: !2083, inlinedAt: !2095)
!2099 = !DILocation(line: 118, column: 100, scope: !2083, inlinedAt: !2095)
!2100 = !DILocation(line: 120, column: 7, scope: !2101, inlinedAt: !2095)
!2101 = !DILexicalBlockFile(scope: !2102, file: !2015, discriminator: 2)
!2102 = distinct !DILexicalBlock(scope: !2083, file: !2015, line: 120, column: 7)
!2103 = !DILocation(line: 120, column: 7, scope: !2104, inlinedAt: !2095)
!2104 = !DILexicalBlockFile(scope: !2083, file: !2015, discriminator: 2)
!2105 = !DILocalVariable(name: "s2", arg: 2, scope: !2106, file: !2015, line: 104, type: !6)
!2106 = distinct !DISubprogram(name: "strcaseeq4", scope: !2015, file: !2015, line: 104, type: !2107, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!2109 = !{!2110, !2105, !2111, !2112, !2113, !2114, !2115}
!2110 = !DILocalVariable(name: "s1", arg: 1, scope: !2106, file: !2015, line: 104, type: !6)
!2111 = !DILocalVariable(name: "s24", arg: 3, scope: !2106, file: !2015, line: 104, type: !8)
!2112 = !DILocalVariable(name: "s25", arg: 4, scope: !2106, file: !2015, line: 104, type: !8)
!2113 = !DILocalVariable(name: "s26", arg: 5, scope: !2106, file: !2015, line: 104, type: !8)
!2114 = !DILocalVariable(name: "s27", arg: 6, scope: !2106, file: !2015, line: 104, type: !8)
!2115 = !DILocalVariable(name: "s28", arg: 7, scope: !2106, file: !2015, line: 104, type: !8)
!2116 = !DILocation(line: 104, column: 41, scope: !2106, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 125, column: 16, scope: !2118, inlinedAt: !2095)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !2015, line: 122, column: 11)
!2119 = distinct !DILexicalBlock(scope: !2102, file: !2015, line: 121, column: 5)
!2120 = !DILocation(line: 104, column: 80, scope: !2106, inlinedAt: !2117)
!2121 = !DILocation(line: 104, column: 90, scope: !2106, inlinedAt: !2117)
!2122 = !DILocation(line: 106, column: 7, scope: !2123, inlinedAt: !2117)
!2123 = !DILexicalBlockFile(scope: !2124, file: !2015, discriminator: 2)
!2124 = distinct !DILexicalBlock(scope: !2106, file: !2015, line: 106, column: 7)
!2125 = !DILocation(line: 106, column: 7, scope: !2126, inlinedAt: !2117)
!2126 = !DILexicalBlockFile(scope: !2106, file: !2015, discriminator: 2)
!2127 = !DILocalVariable(name: "s2", arg: 2, scope: !2128, file: !2015, line: 90, type: !6)
!2128 = distinct !DISubprogram(name: "strcaseeq5", scope: !2015, file: !2015, line: 90, type: !2129, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!25, !6, !6, !8, !8, !8, !8}
!2131 = !{!2132, !2127, !2133, !2134, !2135, !2136}
!2132 = !DILocalVariable(name: "s1", arg: 1, scope: !2128, file: !2015, line: 90, type: !6)
!2133 = !DILocalVariable(name: "s25", arg: 3, scope: !2128, file: !2015, line: 90, type: !8)
!2134 = !DILocalVariable(name: "s26", arg: 4, scope: !2128, file: !2015, line: 90, type: !8)
!2135 = !DILocalVariable(name: "s27", arg: 5, scope: !2128, file: !2015, line: 90, type: !8)
!2136 = !DILocalVariable(name: "s28", arg: 6, scope: !2128, file: !2015, line: 90, type: !8)
!2137 = !DILocation(line: 90, column: 41, scope: !2128, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 111, column: 16, scope: !2139, inlinedAt: !2117)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !2015, line: 108, column: 11)
!2140 = distinct !DILexicalBlock(scope: !2124, file: !2015, line: 107, column: 5)
!2141 = !DILocation(line: 90, column: 70, scope: !2128, inlinedAt: !2138)
!2142 = !DILocation(line: 90, column: 80, scope: !2128, inlinedAt: !2138)
!2143 = !DILocation(line: 92, column: 7, scope: !2144, inlinedAt: !2138)
!2144 = !DILexicalBlockFile(scope: !2145, file: !2015, discriminator: 2)
!2145 = distinct !DILexicalBlock(scope: !2128, file: !2015, line: 92, column: 7)
!2146 = !DILocation(line: 92, column: 7, scope: !2147, inlinedAt: !2138)
!2147 = !DILexicalBlockFile(scope: !2128, file: !2015, discriminator: 2)
!2148 = !DILocation(line: 227, column: 12, scope: !2031)
!2149 = !DILocation(line: 227, column: 21, scope: !2031)
!2150 = !DILocation(line: 227, column: 5, scope: !2031)
!2151 = !DILocation(line: 146, column: 41, scope: !2038, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 167, column: 16, scope: !2053, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 228, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1996, file: !100, line: 228, column: 7)
!2155 = !DILocation(line: 146, column: 110, scope: !2038, inlinedAt: !2152)
!2156 = !DILocation(line: 146, column: 120, scope: !2038, inlinedAt: !2152)
!2157 = !DILocation(line: 148, column: 7, scope: !2058, inlinedAt: !2152)
!2158 = !DILocation(line: 132, column: 41, scope: !2061, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 153, column: 16, scope: !2075, inlinedAt: !2152)
!2160 = !DILocation(line: 132, column: 100, scope: !2061, inlinedAt: !2159)
!2161 = !DILocation(line: 132, column: 110, scope: !2061, inlinedAt: !2159)
!2162 = !DILocation(line: 134, column: 7, scope: !2163, inlinedAt: !2159)
!2163 = !DILexicalBlockFile(scope: !2081, file: !2015, discriminator: 2)
!2164 = !DILocation(line: 134, column: 7, scope: !2165, inlinedAt: !2159)
!2165 = !DILexicalBlockFile(scope: !2061, file: !2015, discriminator: 2)
!2166 = !DILocation(line: 118, column: 41, scope: !2083, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 139, column: 16, scope: !2096, inlinedAt: !2159)
!2168 = !DILocation(line: 118, column: 90, scope: !2083, inlinedAt: !2167)
!2169 = !DILocation(line: 118, column: 100, scope: !2083, inlinedAt: !2167)
!2170 = !DILocation(line: 120, column: 7, scope: !2101, inlinedAt: !2167)
!2171 = !DILocation(line: 120, column: 7, scope: !2104, inlinedAt: !2167)
!2172 = !DILocation(line: 104, column: 41, scope: !2106, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 125, column: 16, scope: !2118, inlinedAt: !2167)
!2174 = !DILocation(line: 104, column: 80, scope: !2106, inlinedAt: !2173)
!2175 = !DILocation(line: 104, column: 90, scope: !2106, inlinedAt: !2173)
!2176 = !DILocation(line: 106, column: 7, scope: !2123, inlinedAt: !2173)
!2177 = !DILocation(line: 106, column: 7, scope: !2126, inlinedAt: !2173)
!2178 = !DILocation(line: 90, column: 41, scope: !2128, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 111, column: 16, scope: !2139, inlinedAt: !2173)
!2180 = !DILocation(line: 90, column: 70, scope: !2128, inlinedAt: !2179)
!2181 = !DILocation(line: 90, column: 80, scope: !2128, inlinedAt: !2179)
!2182 = !DILocation(line: 92, column: 7, scope: !2144, inlinedAt: !2179)
!2183 = !DILocation(line: 92, column: 7, scope: !2147, inlinedAt: !2179)
!2184 = !DILocalVariable(name: "s2", arg: 2, scope: !2185, file: !2015, line: 76, type: !6)
!2185 = distinct !DISubprogram(name: "strcaseeq6", scope: !2015, file: !2015, line: 76, type: !2186, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!25, !6, !6, !8, !8, !8}
!2188 = !{!2189, !2184, !2190, !2191, !2192}
!2189 = !DILocalVariable(name: "s1", arg: 1, scope: !2185, file: !2015, line: 76, type: !6)
!2190 = !DILocalVariable(name: "s26", arg: 3, scope: !2185, file: !2015, line: 76, type: !8)
!2191 = !DILocalVariable(name: "s27", arg: 4, scope: !2185, file: !2015, line: 76, type: !8)
!2192 = !DILocalVariable(name: "s28", arg: 5, scope: !2185, file: !2015, line: 76, type: !8)
!2193 = !DILocation(line: 76, column: 41, scope: !2185, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 97, column: 16, scope: !2195, inlinedAt: !2179)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !2015, line: 94, column: 11)
!2196 = distinct !DILexicalBlock(scope: !2145, file: !2015, line: 93, column: 5)
!2197 = !DILocation(line: 76, column: 60, scope: !2185, inlinedAt: !2194)
!2198 = !DILocation(line: 76, column: 70, scope: !2185, inlinedAt: !2194)
!2199 = !DILocation(line: 78, column: 7, scope: !2200, inlinedAt: !2194)
!2200 = !DILexicalBlockFile(scope: !2201, file: !2015, discriminator: 2)
!2201 = distinct !DILexicalBlock(scope: !2185, file: !2015, line: 78, column: 7)
!2202 = !DILocation(line: 78, column: 7, scope: !2203, inlinedAt: !2194)
!2203 = !DILexicalBlockFile(scope: !2185, file: !2015, discriminator: 2)
!2204 = !DILocalVariable(name: "s2", arg: 2, scope: !2205, file: !2015, line: 62, type: !6)
!2205 = distinct !DISubprogram(name: "strcaseeq7", scope: !2015, file: !2015, line: 62, type: !2206, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!25, !6, !6, !8, !8}
!2208 = !{!2209, !2204, !2210, !2211}
!2209 = !DILocalVariable(name: "s1", arg: 1, scope: !2205, file: !2015, line: 62, type: !6)
!2210 = !DILocalVariable(name: "s27", arg: 3, scope: !2205, file: !2015, line: 62, type: !8)
!2211 = !DILocalVariable(name: "s28", arg: 4, scope: !2205, file: !2015, line: 62, type: !8)
!2212 = !DILocation(line: 62, column: 41, scope: !2205, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 83, column: 16, scope: !2214, inlinedAt: !2194)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !2015, line: 80, column: 11)
!2215 = distinct !DILexicalBlock(scope: !2201, file: !2015, line: 79, column: 5)
!2216 = !DILocation(line: 62, column: 50, scope: !2205, inlinedAt: !2213)
!2217 = !DILocation(line: 62, column: 60, scope: !2205, inlinedAt: !2213)
!2218 = !DILocation(line: 64, column: 7, scope: !2219, inlinedAt: !2213)
!2219 = !DILexicalBlockFile(scope: !2220, file: !2015, discriminator: 2)
!2220 = distinct !DILexicalBlock(scope: !2205, file: !2015, line: 64, column: 7)
!2221 = !DILocation(line: 228, column: 7, scope: !1996)
!2222 = !DILocation(line: 229, column: 12, scope: !2154)
!2223 = !DILocation(line: 229, column: 21, scope: !2154)
!2224 = !DILocation(line: 229, column: 5, scope: !2154)
!2225 = !DILocation(line: 231, column: 13, scope: !1996)
!2226 = !DILocation(line: 231, column: 11, scope: !1996)
!2227 = !DILocation(line: 231, column: 3, scope: !1996)
!2228 = !DILocation(line: 232, column: 1, scope: !1996)
!2229 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2230, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!50, !6, !94, !1074}
!2232 = !{!2233, !2234, !2235}
!2233 = !DILocalVariable(name: "arg", arg: 1, scope: !2229, file: !100, line: 791, type: !6)
!2234 = !DILocalVariable(name: "argsize", arg: 2, scope: !2229, file: !100, line: 791, type: !94)
!2235 = !DILocalVariable(name: "o", arg: 3, scope: !2229, file: !100, line: 792, type: !1074)
!2236 = !DILocation(line: 791, column: 29, scope: !2229)
!2237 = !DILocation(line: 791, column: 41, scope: !2229)
!2238 = !DILocation(line: 792, column: 47, scope: !2229)
!2239 = !DILocalVariable(name: "arg", arg: 1, scope: !2240, file: !100, line: 804, type: !6)
!2240 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2241, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!50, !6, !94, !559, !1074}
!2243 = !{!2239, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251}
!2244 = !DILocalVariable(name: "argsize", arg: 2, scope: !2240, file: !100, line: 804, type: !94)
!2245 = !DILocalVariable(name: "size", arg: 3, scope: !2240, file: !100, line: 804, type: !559)
!2246 = !DILocalVariable(name: "o", arg: 4, scope: !2240, file: !100, line: 805, type: !1074)
!2247 = !DILocalVariable(name: "p", scope: !2240, file: !100, line: 807, type: !1074)
!2248 = !DILocalVariable(name: "e", scope: !2240, file: !100, line: 808, type: !25)
!2249 = !DILocalVariable(name: "flags", scope: !2240, file: !100, line: 810, type: !25)
!2250 = !DILocalVariable(name: "bufsize", scope: !2240, file: !100, line: 811, type: !94)
!2251 = !DILocalVariable(name: "buf", scope: !2240, file: !100, line: 815, type: !50)
!2252 = !DILocation(line: 804, column: 33, scope: !2240, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 794, column: 10, scope: !2229)
!2254 = !DILocation(line: 804, column: 45, scope: !2240, inlinedAt: !2253)
!2255 = !DILocation(line: 804, column: 62, scope: !2240, inlinedAt: !2253)
!2256 = !DILocation(line: 805, column: 51, scope: !2240, inlinedAt: !2253)
!2257 = !DILocation(line: 807, column: 37, scope: !2240, inlinedAt: !2253)
!2258 = !DILocation(line: 807, column: 33, scope: !2240, inlinedAt: !2253)
!2259 = !DILocation(line: 808, column: 11, scope: !2240, inlinedAt: !2253)
!2260 = !DILocation(line: 808, column: 7, scope: !2240, inlinedAt: !2253)
!2261 = !DILocation(line: 810, column: 18, scope: !2240, inlinedAt: !2253)
!2262 = !DILocation(line: 810, column: 24, scope: !2240, inlinedAt: !2253)
!2263 = !DILocation(line: 810, column: 7, scope: !2240, inlinedAt: !2253)
!2264 = !DILocation(line: 811, column: 69, scope: !2240, inlinedAt: !2253)
!2265 = !DILocation(line: 812, column: 53, scope: !2240, inlinedAt: !2253)
!2266 = !DILocation(line: 813, column: 49, scope: !2240, inlinedAt: !2253)
!2267 = !DILocation(line: 814, column: 49, scope: !2240, inlinedAt: !2253)
!2268 = !DILocation(line: 811, column: 20, scope: !2240, inlinedAt: !2253)
!2269 = !DILocation(line: 814, column: 62, scope: !2240, inlinedAt: !2253)
!2270 = !DILocation(line: 811, column: 10, scope: !2240, inlinedAt: !2253)
!2271 = !DILocalVariable(name: "n", arg: 1, scope: !2272, file: !555, line: 220, type: !94)
!2272 = distinct !DISubprogram(name: "xcharalloc", scope: !555, file: !555, line: 220, type: !2273, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!50, !94}
!2275 = !{!2271}
!2276 = !DILocation(line: 220, column: 20, scope: !2272, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 815, column: 15, scope: !2240, inlinedAt: !2253)
!2278 = !DILocation(line: 222, column: 10, scope: !2272, inlinedAt: !2277)
!2279 = !DILocation(line: 815, column: 9, scope: !2240, inlinedAt: !2253)
!2280 = !DILocation(line: 816, column: 60, scope: !2240, inlinedAt: !2253)
!2281 = !DILocation(line: 818, column: 32, scope: !2240, inlinedAt: !2253)
!2282 = !DILocation(line: 818, column: 47, scope: !2240, inlinedAt: !2253)
!2283 = !DILocation(line: 816, column: 3, scope: !2240, inlinedAt: !2253)
!2284 = !DILocation(line: 819, column: 9, scope: !2240, inlinedAt: !2253)
!2285 = !DILocation(line: 794, column: 3, scope: !2229)
!2286 = !DILocation(line: 804, column: 33, scope: !2240)
!2287 = !DILocation(line: 804, column: 45, scope: !2240)
!2288 = !DILocation(line: 804, column: 62, scope: !2240)
!2289 = !DILocation(line: 805, column: 51, scope: !2240)
!2290 = !DILocation(line: 807, column: 37, scope: !2240)
!2291 = !DILocation(line: 807, column: 33, scope: !2240)
!2292 = !DILocation(line: 808, column: 11, scope: !2240)
!2293 = !DILocation(line: 808, column: 7, scope: !2240)
!2294 = !DILocation(line: 810, column: 18, scope: !2240)
!2295 = !DILocation(line: 810, column: 27, scope: !2240)
!2296 = !DILocation(line: 810, column: 24, scope: !2240)
!2297 = !DILocation(line: 810, column: 7, scope: !2240)
!2298 = !DILocation(line: 811, column: 69, scope: !2240)
!2299 = !DILocation(line: 812, column: 53, scope: !2240)
!2300 = !DILocation(line: 813, column: 49, scope: !2240)
!2301 = !DILocation(line: 814, column: 49, scope: !2240)
!2302 = !DILocation(line: 811, column: 20, scope: !2240)
!2303 = !DILocation(line: 814, column: 62, scope: !2240)
!2304 = !DILocation(line: 811, column: 10, scope: !2240)
!2305 = !DILocation(line: 220, column: 20, scope: !2272, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 815, column: 15, scope: !2240)
!2307 = !DILocation(line: 222, column: 10, scope: !2272, inlinedAt: !2306)
!2308 = !DILocation(line: 815, column: 9, scope: !2240)
!2309 = !DILocation(line: 816, column: 60, scope: !2240)
!2310 = !DILocation(line: 818, column: 32, scope: !2240)
!2311 = !DILocation(line: 818, column: 47, scope: !2240)
!2312 = !DILocation(line: 816, column: 3, scope: !2240)
!2313 = !DILocation(line: 819, column: 9, scope: !2240)
!2314 = !DILocation(line: 820, column: 7, scope: !2240)
!2315 = !DILocation(line: 821, column: 11, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2240, file: !100, line: 820, column: 7)
!2317 = !DILocation(line: 821, column: 5, scope: !2316)
!2318 = !DILocation(line: 822, column: 3, scope: !2240)
!2319 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !913, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2320)
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "sv", scope: !2319, file: !100, line: 842, type: !127)
!2322 = !DILocalVariable(name: "i", scope: !2319, file: !100, line: 843, type: !25)
!2323 = !DILocation(line: 842, column: 24, scope: !2319)
!2324 = !DILocation(line: 842, column: 19, scope: !2319)
!2325 = !DILocation(line: 843, column: 7, scope: !2319)
!2326 = !DILocation(line: 844, column: 19, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !100, discriminator: 1)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !100, line: 844, column: 3)
!2329 = distinct !DILexicalBlock(scope: !2319, file: !100, line: 844, column: 3)
!2330 = !DILocation(line: 844, column: 17, scope: !2327)
!2331 = !DILocation(line: 844, column: 3, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2329, file: !100, discriminator: 1)
!2333 = !DILocation(line: 845, column: 17, scope: !2328)
!2334 = !{!2335, !616, i64 8}
!2335 = !{!"slotvec", !762, i64 0, !616, i64 8}
!2336 = !DILocation(line: 845, column: 5, scope: !2328)
!2337 = !DILocation(line: 844, column: 28, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2328, file: !100, discriminator: 2)
!2339 = distinct !{!2339, !2340, !2341}
!2340 = !DILocation(line: 844, column: 3, scope: !2329)
!2341 = !DILocation(line: 845, column: 20, scope: !2329)
!2342 = !DILocation(line: 846, column: 13, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2319, file: !100, line: 846, column: 7)
!2344 = !DILocation(line: 846, column: 17, scope: !2343)
!2345 = !DILocation(line: 846, column: 7, scope: !2319)
!2346 = !DILocation(line: 848, column: 7, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !100, line: 847, column: 5)
!2348 = !DILocation(line: 849, column: 21, scope: !2347)
!2349 = !{!2335, !762, i64 0}
!2350 = !DILocation(line: 850, column: 20, scope: !2347)
!2351 = !DILocation(line: 851, column: 5, scope: !2347)
!2352 = !DILocation(line: 852, column: 10, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2319, file: !100, line: 852, column: 7)
!2354 = !DILocation(line: 852, column: 7, scope: !2319)
!2355 = !DILocation(line: 854, column: 13, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !100, line: 853, column: 5)
!2357 = !DILocation(line: 854, column: 7, scope: !2356)
!2358 = !DILocation(line: 855, column: 15, scope: !2356)
!2359 = !DILocation(line: 856, column: 5, scope: !2356)
!2360 = !DILocation(line: 857, column: 10, scope: !2319)
!2361 = !DILocation(line: 858, column: 1, scope: !2319)
!2362 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2363, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!50, !25, !6}
!2365 = !{!2366, !2367}
!2366 = !DILocalVariable(name: "n", arg: 1, scope: !2362, file: !100, line: 922, type: !25)
!2367 = !DILocalVariable(name: "arg", arg: 2, scope: !2362, file: !100, line: 922, type: !6)
!2368 = !DILocation(line: 922, column: 17, scope: !2362)
!2369 = !DILocation(line: 922, column: 32, scope: !2362)
!2370 = !DILocation(line: 924, column: 10, scope: !2362)
!2371 = !DILocation(line: 924, column: 3, scope: !2362)
!2372 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2373, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!50, !25, !6, !94, !1074}
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382, !2385, !2387, !2388, !2389}
!2376 = !DILocalVariable(name: "n", arg: 1, scope: !2372, file: !100, line: 869, type: !25)
!2377 = !DILocalVariable(name: "arg", arg: 2, scope: !2372, file: !100, line: 869, type: !6)
!2378 = !DILocalVariable(name: "argsize", arg: 3, scope: !2372, file: !100, line: 869, type: !94)
!2379 = !DILocalVariable(name: "options", arg: 4, scope: !2372, file: !100, line: 870, type: !1074)
!2380 = !DILocalVariable(name: "e", scope: !2372, file: !100, line: 872, type: !25)
!2381 = !DILocalVariable(name: "sv", scope: !2372, file: !100, line: 874, type: !127)
!2382 = !DILocalVariable(name: "preallocated", scope: !2383, file: !100, line: 881, type: !17)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !100, line: 880, column: 5)
!2384 = distinct !DILexicalBlock(scope: !2372, file: !100, line: 879, column: 7)
!2385 = !DILocalVariable(name: "size", scope: !2386, file: !100, line: 894, type: !94)
!2386 = distinct !DILexicalBlock(scope: !2372, file: !100, line: 893, column: 3)
!2387 = !DILocalVariable(name: "val", scope: !2386, file: !100, line: 895, type: !50)
!2388 = !DILocalVariable(name: "flags", scope: !2386, file: !100, line: 897, type: !25)
!2389 = !DILocalVariable(name: "qsize", scope: !2386, file: !100, line: 898, type: !94)
!2390 = !DILocation(line: 869, column: 25, scope: !2372)
!2391 = !DILocation(line: 869, column: 40, scope: !2372)
!2392 = !DILocation(line: 869, column: 52, scope: !2372)
!2393 = !DILocation(line: 870, column: 51, scope: !2372)
!2394 = !DILocation(line: 872, column: 11, scope: !2372)
!2395 = !DILocation(line: 872, column: 7, scope: !2372)
!2396 = !DILocation(line: 874, column: 24, scope: !2372)
!2397 = !DILocation(line: 874, column: 19, scope: !2372)
!2398 = !DILocation(line: 876, column: 9, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2372, file: !100, line: 876, column: 7)
!2400 = !DILocation(line: 876, column: 7, scope: !2372)
!2401 = !DILocation(line: 877, column: 5, scope: !2399)
!2402 = !DILocation(line: 879, column: 7, scope: !2384)
!2403 = !DILocation(line: 879, column: 14, scope: !2384)
!2404 = !DILocation(line: 879, column: 7, scope: !2372)
!2405 = !DILocation(line: 881, column: 31, scope: !2383)
!2406 = !DILocation(line: 883, column: 67, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2383, file: !100, line: 883, column: 11)
!2408 = !DILocation(line: 883, column: 11, scope: !2383)
!2409 = !DILocation(line: 884, column: 9, scope: !2407)
!2410 = !DILocation(line: 886, column: 32, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2383, file: !100, discriminator: 3)
!2412 = !DILocation(line: 886, column: 61, scope: !2411)
!2413 = !DILocation(line: 886, column: 58, scope: !2411)
!2414 = !DILocation(line: 886, column: 66, scope: !2411)
!2415 = !DILocation(line: 886, column: 22, scope: !2411)
!2416 = !DILocation(line: 886, column: 15, scope: !2411)
!2417 = !DILocation(line: 887, column: 11, scope: !2383)
!2418 = !DILocation(line: 888, column: 15, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2383, file: !100, line: 887, column: 11)
!2420 = !{i64 0, i64 8, !761, i64 8, i64 8, !615}
!2421 = !DILocation(line: 888, column: 9, scope: !2419)
!2422 = !DILocation(line: 889, column: 20, scope: !2383)
!2423 = !DILocation(line: 889, column: 18, scope: !2383)
!2424 = !DILocation(line: 889, column: 7, scope: !2383)
!2425 = !DILocation(line: 889, column: 38, scope: !2383)
!2426 = !DILocation(line: 889, column: 31, scope: !2383)
!2427 = !DILocation(line: 889, column: 48, scope: !2383)
!2428 = !DILocation(line: 890, column: 14, scope: !2383)
!2429 = !DILocation(line: 891, column: 5, scope: !2383)
!2430 = !DILocation(line: 894, column: 19, scope: !2386)
!2431 = !DILocation(line: 894, column: 25, scope: !2386)
!2432 = !DILocation(line: 894, column: 12, scope: !2386)
!2433 = !DILocation(line: 895, column: 23, scope: !2386)
!2434 = !DILocation(line: 895, column: 11, scope: !2386)
!2435 = !DILocation(line: 897, column: 26, scope: !2386)
!2436 = !DILocation(line: 897, column: 32, scope: !2386)
!2437 = !DILocation(line: 897, column: 9, scope: !2386)
!2438 = !DILocation(line: 899, column: 55, scope: !2386)
!2439 = !DILocation(line: 900, column: 46, scope: !2386)
!2440 = !DILocation(line: 901, column: 55, scope: !2386)
!2441 = !DILocation(line: 902, column: 55, scope: !2386)
!2442 = !DILocation(line: 898, column: 20, scope: !2386)
!2443 = !DILocation(line: 898, column: 12, scope: !2386)
!2444 = !DILocation(line: 904, column: 14, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2386, file: !100, line: 904, column: 9)
!2446 = !DILocation(line: 904, column: 9, scope: !2386)
!2447 = !DILocation(line: 906, column: 35, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !100, line: 905, column: 7)
!2449 = !DILocation(line: 906, column: 20, scope: !2448)
!2450 = !DILocation(line: 907, column: 17, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !100, line: 907, column: 13)
!2452 = !DILocation(line: 907, column: 13, scope: !2448)
!2453 = !DILocation(line: 908, column: 11, scope: !2451)
!2454 = !DILocation(line: 220, column: 20, scope: !2272, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 909, column: 27, scope: !2448)
!2456 = !DILocation(line: 222, column: 10, scope: !2272, inlinedAt: !2455)
!2457 = !DILocation(line: 909, column: 19, scope: !2448)
!2458 = !DILocation(line: 910, column: 69, scope: !2448)
!2459 = !DILocation(line: 912, column: 44, scope: !2448)
!2460 = !DILocation(line: 913, column: 44, scope: !2448)
!2461 = !DILocation(line: 910, column: 9, scope: !2448)
!2462 = !DILocation(line: 914, column: 7, scope: !2448)
!2463 = !DILocation(line: 916, column: 11, scope: !2386)
!2464 = !DILocation(line: 917, column: 5, scope: !2386)
!2465 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2466, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!50, !25, !6, !94}
!2468 = !{!2469, !2470, !2471}
!2469 = !DILocalVariable(name: "n", arg: 1, scope: !2465, file: !100, line: 928, type: !25)
!2470 = !DILocalVariable(name: "arg", arg: 2, scope: !2465, file: !100, line: 928, type: !6)
!2471 = !DILocalVariable(name: "argsize", arg: 3, scope: !2465, file: !100, line: 928, type: !94)
!2472 = !DILocation(line: 928, column: 21, scope: !2465)
!2473 = !DILocation(line: 928, column: 36, scope: !2465)
!2474 = !DILocation(line: 928, column: 48, scope: !2465)
!2475 = !DILocation(line: 930, column: 10, scope: !2465)
!2476 = !DILocation(line: 930, column: 3, scope: !2465)
!2477 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2478, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!50, !6}
!2480 = !{!2481}
!2481 = !DILocalVariable(name: "arg", arg: 1, scope: !2477, file: !100, line: 934, type: !6)
!2482 = !DILocation(line: 934, column: 23, scope: !2477)
!2483 = !DILocation(line: 922, column: 17, scope: !2362, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 936, column: 10, scope: !2477)
!2485 = !DILocation(line: 922, column: 32, scope: !2362, inlinedAt: !2484)
!2486 = !DILocation(line: 924, column: 10, scope: !2362, inlinedAt: !2484)
!2487 = !DILocation(line: 936, column: 3, scope: !2477)
!2488 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2489, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!50, !6, !94}
!2491 = !{!2492, !2493}
!2492 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !100, line: 940, type: !6)
!2493 = !DILocalVariable(name: "argsize", arg: 2, scope: !2488, file: !100, line: 940, type: !94)
!2494 = !DILocation(line: 940, column: 27, scope: !2488)
!2495 = !DILocation(line: 940, column: 39, scope: !2488)
!2496 = !DILocation(line: 928, column: 21, scope: !2465, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 942, column: 10, scope: !2488)
!2498 = !DILocation(line: 928, column: 36, scope: !2465, inlinedAt: !2497)
!2499 = !DILocation(line: 928, column: 48, scope: !2465, inlinedAt: !2497)
!2500 = !DILocation(line: 930, column: 10, scope: !2465, inlinedAt: !2497)
!2501 = !DILocation(line: 942, column: 3, scope: !2488)
!2502 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2503, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!50, !25, !58, !6}
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DILocalVariable(name: "n", arg: 1, scope: !2502, file: !100, line: 946, type: !25)
!2507 = !DILocalVariable(name: "s", arg: 2, scope: !2502, file: !100, line: 946, type: !58)
!2508 = !DILocalVariable(name: "arg", arg: 3, scope: !2502, file: !100, line: 946, type: !6)
!2509 = !DILocalVariable(name: "o", scope: !2502, file: !100, line: 948, type: !1075)
!2510 = !DILocalVariable(name: "o", scope: !2511, file: !100, line: 187, type: !107)
!2511 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2512, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!107, !58}
!2514 = !{!2515, !2510}
!2515 = !DILocalVariable(name: "style", arg: 1, scope: !2511, file: !100, line: 185, type: !58)
!2516 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2517 = !DILocation(line: 187, column: 26, scope: !2511, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 948, column: 36, scope: !2502)
!2519 = !DILocation(line: 946, column: 23, scope: !2502)
!2520 = !DILocation(line: 946, column: 45, scope: !2502)
!2521 = !DILocation(line: 946, column: 60, scope: !2502)
!2522 = !DILocation(line: 948, column: 3, scope: !2502)
!2523 = !DILocation(line: 948, column: 32, scope: !2502)
!2524 = !DILocation(line: 185, column: 48, scope: !2511, inlinedAt: !2518)
!2525 = !DILocation(line: 187, column: 3, scope: !2511, inlinedAt: !2518)
!2526 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2527 = !DILocation(line: 188, column: 13, scope: !2528, inlinedAt: !2518)
!2528 = distinct !DILexicalBlock(scope: !2511, file: !100, line: 188, column: 7)
!2529 = !DILocation(line: 188, column: 7, scope: !2511, inlinedAt: !2518)
!2530 = !DILocation(line: 189, column: 5, scope: !2528, inlinedAt: !2518)
!2531 = !{!2532}
!2532 = distinct !{!2532, !2533, !"quoting_options_from_style: argument 0"}
!2533 = distinct !{!2533, !"quoting_options_from_style"}
!2534 = !DILocation(line: 191, column: 10, scope: !2511, inlinedAt: !2518)
!2535 = !DILocation(line: 192, column: 1, scope: !2511, inlinedAt: !2518)
!2536 = !DILocation(line: 949, column: 10, scope: !2502)
!2537 = !DILocation(line: 950, column: 1, scope: !2502)
!2538 = !DILocation(line: 949, column: 3, scope: !2502)
!2539 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2540, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!50, !25, !58, !6, !94}
!2542 = !{!2543, !2544, !2545, !2546, !2547}
!2543 = !DILocalVariable(name: "n", arg: 1, scope: !2539, file: !100, line: 953, type: !25)
!2544 = !DILocalVariable(name: "s", arg: 2, scope: !2539, file: !100, line: 953, type: !58)
!2545 = !DILocalVariable(name: "arg", arg: 3, scope: !2539, file: !100, line: 954, type: !6)
!2546 = !DILocalVariable(name: "argsize", arg: 4, scope: !2539, file: !100, line: 954, type: !94)
!2547 = !DILocalVariable(name: "o", scope: !2539, file: !100, line: 956, type: !1075)
!2548 = !DILocation(line: 187, column: 26, scope: !2511, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 956, column: 36, scope: !2539)
!2550 = !DILocation(line: 953, column: 27, scope: !2539)
!2551 = !DILocation(line: 953, column: 49, scope: !2539)
!2552 = !DILocation(line: 954, column: 35, scope: !2539)
!2553 = !DILocation(line: 954, column: 47, scope: !2539)
!2554 = !DILocation(line: 956, column: 3, scope: !2539)
!2555 = !DILocation(line: 956, column: 32, scope: !2539)
!2556 = !DILocation(line: 185, column: 48, scope: !2511, inlinedAt: !2549)
!2557 = !DILocation(line: 187, column: 3, scope: !2511, inlinedAt: !2549)
!2558 = !DILocation(line: 188, column: 13, scope: !2528, inlinedAt: !2549)
!2559 = !DILocation(line: 188, column: 7, scope: !2511, inlinedAt: !2549)
!2560 = !DILocation(line: 189, column: 5, scope: !2528, inlinedAt: !2549)
!2561 = !{!2562}
!2562 = distinct !{!2562, !2563, !"quoting_options_from_style: argument 0"}
!2563 = distinct !{!2563, !"quoting_options_from_style"}
!2564 = !DILocation(line: 191, column: 10, scope: !2511, inlinedAt: !2549)
!2565 = !DILocation(line: 192, column: 1, scope: !2511, inlinedAt: !2549)
!2566 = !DILocation(line: 957, column: 10, scope: !2539)
!2567 = !DILocation(line: 958, column: 1, scope: !2539)
!2568 = !DILocation(line: 957, column: 3, scope: !2539)
!2569 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2570, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!50, !58, !6}
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "s", arg: 1, scope: !2569, file: !100, line: 961, type: !58)
!2574 = !DILocalVariable(name: "arg", arg: 2, scope: !2569, file: !100, line: 961, type: !6)
!2575 = !DILocation(line: 187, column: 26, scope: !2511, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 948, column: 36, scope: !2502, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 963, column: 10, scope: !2569)
!2578 = !DILocation(line: 961, column: 36, scope: !2569)
!2579 = !DILocation(line: 961, column: 51, scope: !2569)
!2580 = !DILocation(line: 946, column: 23, scope: !2502, inlinedAt: !2577)
!2581 = !DILocation(line: 946, column: 45, scope: !2502, inlinedAt: !2577)
!2582 = !DILocation(line: 946, column: 60, scope: !2502, inlinedAt: !2577)
!2583 = !DILocation(line: 948, column: 3, scope: !2502, inlinedAt: !2577)
!2584 = !DILocation(line: 948, column: 32, scope: !2502, inlinedAt: !2577)
!2585 = !DILocation(line: 185, column: 48, scope: !2511, inlinedAt: !2576)
!2586 = !DILocation(line: 187, column: 3, scope: !2511, inlinedAt: !2576)
!2587 = !DILocation(line: 188, column: 13, scope: !2528, inlinedAt: !2576)
!2588 = !DILocation(line: 188, column: 7, scope: !2511, inlinedAt: !2576)
!2589 = !DILocation(line: 189, column: 5, scope: !2528, inlinedAt: !2576)
!2590 = !{!2591}
!2591 = distinct !{!2591, !2592, !"quoting_options_from_style: argument 0"}
!2592 = distinct !{!2592, !"quoting_options_from_style"}
!2593 = !DILocation(line: 191, column: 10, scope: !2511, inlinedAt: !2576)
!2594 = !DILocation(line: 192, column: 1, scope: !2511, inlinedAt: !2576)
!2595 = !DILocation(line: 949, column: 10, scope: !2502, inlinedAt: !2577)
!2596 = !DILocation(line: 950, column: 1, scope: !2502, inlinedAt: !2577)
!2597 = !DILocation(line: 963, column: 3, scope: !2569)
!2598 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2599, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!50, !58, !6, !94}
!2601 = !{!2602, !2603, !2604}
!2602 = !DILocalVariable(name: "s", arg: 1, scope: !2598, file: !100, line: 967, type: !58)
!2603 = !DILocalVariable(name: "arg", arg: 2, scope: !2598, file: !100, line: 967, type: !6)
!2604 = !DILocalVariable(name: "argsize", arg: 3, scope: !2598, file: !100, line: 967, type: !94)
!2605 = !DILocation(line: 187, column: 26, scope: !2511, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 956, column: 36, scope: !2539, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 969, column: 10, scope: !2598)
!2608 = !DILocation(line: 967, column: 40, scope: !2598)
!2609 = !DILocation(line: 967, column: 55, scope: !2598)
!2610 = !DILocation(line: 967, column: 67, scope: !2598)
!2611 = !DILocation(line: 953, column: 27, scope: !2539, inlinedAt: !2607)
!2612 = !DILocation(line: 953, column: 49, scope: !2539, inlinedAt: !2607)
!2613 = !DILocation(line: 954, column: 35, scope: !2539, inlinedAt: !2607)
!2614 = !DILocation(line: 954, column: 47, scope: !2539, inlinedAt: !2607)
!2615 = !DILocation(line: 956, column: 3, scope: !2539, inlinedAt: !2607)
!2616 = !DILocation(line: 956, column: 32, scope: !2539, inlinedAt: !2607)
!2617 = !DILocation(line: 185, column: 48, scope: !2511, inlinedAt: !2606)
!2618 = !DILocation(line: 187, column: 3, scope: !2511, inlinedAt: !2606)
!2619 = !DILocation(line: 188, column: 13, scope: !2528, inlinedAt: !2606)
!2620 = !DILocation(line: 188, column: 7, scope: !2511, inlinedAt: !2606)
!2621 = !DILocation(line: 189, column: 5, scope: !2528, inlinedAt: !2606)
!2622 = !{!2623}
!2623 = distinct !{!2623, !2624, !"quoting_options_from_style: argument 0"}
!2624 = distinct !{!2624, !"quoting_options_from_style"}
!2625 = !DILocation(line: 191, column: 10, scope: !2511, inlinedAt: !2606)
!2626 = !DILocation(line: 192, column: 1, scope: !2511, inlinedAt: !2606)
!2627 = !DILocation(line: 957, column: 10, scope: !2539, inlinedAt: !2607)
!2628 = !DILocation(line: 958, column: 1, scope: !2539, inlinedAt: !2607)
!2629 = !DILocation(line: 969, column: 3, scope: !2598)
!2630 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2631, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!50, !6, !94, !8}
!2633 = !{!2634, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "arg", arg: 1, scope: !2630, file: !100, line: 973, type: !6)
!2635 = !DILocalVariable(name: "argsize", arg: 2, scope: !2630, file: !100, line: 973, type: !94)
!2636 = !DILocalVariable(name: "ch", arg: 3, scope: !2630, file: !100, line: 973, type: !8)
!2637 = !DILocalVariable(name: "options", scope: !2630, file: !100, line: 975, type: !107)
!2638 = !DILocation(line: 973, column: 32, scope: !2630)
!2639 = !DILocation(line: 973, column: 44, scope: !2630)
!2640 = !DILocation(line: 973, column: 58, scope: !2630)
!2641 = !DILocation(line: 975, column: 3, scope: !2630)
!2642 = !DILocation(line: 976, column: 13, scope: !2630)
!2643 = !{i64 0, i64 4, !812, i64 4, i64 4, !678, i64 8, i64 32, !812, i64 40, i64 8, !615, i64 48, i64 8, !615}
!2644 = !DILocation(line: 975, column: 26, scope: !2630)
!2645 = !DILocation(line: 144, column: 43, scope: !1098, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 977, column: 3, scope: !2630)
!2647 = !DILocation(line: 144, column: 51, scope: !1098, inlinedAt: !2646)
!2648 = !DILocation(line: 144, column: 58, scope: !1098, inlinedAt: !2646)
!2649 = !DILocation(line: 146, column: 17, scope: !1098, inlinedAt: !2646)
!2650 = !DILocation(line: 148, column: 62, scope: !1116, inlinedAt: !2646)
!2651 = !DILocation(line: 148, column: 57, scope: !1116, inlinedAt: !2646)
!2652 = !DILocation(line: 147, column: 17, scope: !1098, inlinedAt: !2646)
!2653 = !DILocation(line: 149, column: 18, scope: !1098, inlinedAt: !2646)
!2654 = !DILocation(line: 149, column: 15, scope: !1098, inlinedAt: !2646)
!2655 = !DILocation(line: 149, column: 7, scope: !1098, inlinedAt: !2646)
!2656 = !DILocation(line: 150, column: 12, scope: !1098, inlinedAt: !2646)
!2657 = !DILocation(line: 150, column: 15, scope: !1098, inlinedAt: !2646)
!2658 = !DILocation(line: 150, column: 25, scope: !1098, inlinedAt: !2646)
!2659 = !DILocation(line: 150, column: 7, scope: !1098, inlinedAt: !2646)
!2660 = !DILocation(line: 151, column: 18, scope: !1098, inlinedAt: !2646)
!2661 = !DILocation(line: 151, column: 23, scope: !1098, inlinedAt: !2646)
!2662 = !DILocation(line: 151, column: 6, scope: !1098, inlinedAt: !2646)
!2663 = !DILocation(line: 978, column: 10, scope: !2630)
!2664 = !DILocation(line: 979, column: 1, scope: !2630)
!2665 = !DILocation(line: 978, column: 3, scope: !2630)
!2666 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2667, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!50, !6, !8}
!2669 = !{!2670, !2671}
!2670 = !DILocalVariable(name: "arg", arg: 1, scope: !2666, file: !100, line: 982, type: !6)
!2671 = !DILocalVariable(name: "ch", arg: 2, scope: !2666, file: !100, line: 982, type: !8)
!2672 = !DILocation(line: 982, column: 28, scope: !2666)
!2673 = !DILocation(line: 982, column: 38, scope: !2666)
!2674 = !DILocation(line: 973, column: 32, scope: !2630, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 984, column: 10, scope: !2666)
!2676 = !DILocation(line: 973, column: 44, scope: !2630, inlinedAt: !2675)
!2677 = !DILocation(line: 973, column: 58, scope: !2630, inlinedAt: !2675)
!2678 = !DILocation(line: 975, column: 3, scope: !2630, inlinedAt: !2675)
!2679 = !DILocation(line: 976, column: 13, scope: !2630, inlinedAt: !2675)
!2680 = !DILocation(line: 975, column: 26, scope: !2630, inlinedAt: !2675)
!2681 = !DILocation(line: 144, column: 43, scope: !1098, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 977, column: 3, scope: !2630, inlinedAt: !2675)
!2683 = !DILocation(line: 144, column: 51, scope: !1098, inlinedAt: !2682)
!2684 = !DILocation(line: 144, column: 58, scope: !1098, inlinedAt: !2682)
!2685 = !DILocation(line: 146, column: 17, scope: !1098, inlinedAt: !2682)
!2686 = !DILocation(line: 148, column: 62, scope: !1116, inlinedAt: !2682)
!2687 = !DILocation(line: 148, column: 57, scope: !1116, inlinedAt: !2682)
!2688 = !DILocation(line: 147, column: 17, scope: !1098, inlinedAt: !2682)
!2689 = !DILocation(line: 149, column: 18, scope: !1098, inlinedAt: !2682)
!2690 = !DILocation(line: 149, column: 15, scope: !1098, inlinedAt: !2682)
!2691 = !DILocation(line: 149, column: 7, scope: !1098, inlinedAt: !2682)
!2692 = !DILocation(line: 150, column: 12, scope: !1098, inlinedAt: !2682)
!2693 = !DILocation(line: 150, column: 15, scope: !1098, inlinedAt: !2682)
!2694 = !DILocation(line: 150, column: 25, scope: !1098, inlinedAt: !2682)
!2695 = !DILocation(line: 150, column: 7, scope: !1098, inlinedAt: !2682)
!2696 = !DILocation(line: 151, column: 18, scope: !1098, inlinedAt: !2682)
!2697 = !DILocation(line: 151, column: 23, scope: !1098, inlinedAt: !2682)
!2698 = !DILocation(line: 151, column: 6, scope: !1098, inlinedAt: !2682)
!2699 = !DILocation(line: 978, column: 10, scope: !2630, inlinedAt: !2675)
!2700 = !DILocation(line: 979, column: 1, scope: !2630, inlinedAt: !2675)
!2701 = !DILocation(line: 984, column: 3, scope: !2666)
!2702 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2478, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2703)
!2703 = !{!2704}
!2704 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !100, line: 988, type: !6)
!2705 = !DILocation(line: 988, column: 29, scope: !2702)
!2706 = !DILocation(line: 982, column: 28, scope: !2666, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 990, column: 10, scope: !2702)
!2708 = !DILocation(line: 982, column: 38, scope: !2666, inlinedAt: !2707)
!2709 = !DILocation(line: 973, column: 32, scope: !2630, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 984, column: 10, scope: !2666, inlinedAt: !2707)
!2711 = !DILocation(line: 973, column: 44, scope: !2630, inlinedAt: !2710)
!2712 = !DILocation(line: 973, column: 58, scope: !2630, inlinedAt: !2710)
!2713 = !DILocation(line: 975, column: 3, scope: !2630, inlinedAt: !2710)
!2714 = !DILocation(line: 976, column: 13, scope: !2630, inlinedAt: !2710)
!2715 = !DILocation(line: 975, column: 26, scope: !2630, inlinedAt: !2710)
!2716 = !DILocation(line: 144, column: 43, scope: !1098, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 977, column: 3, scope: !2630, inlinedAt: !2710)
!2718 = !DILocation(line: 144, column: 51, scope: !1098, inlinedAt: !2717)
!2719 = !DILocation(line: 144, column: 58, scope: !1098, inlinedAt: !2717)
!2720 = !DILocation(line: 146, column: 17, scope: !1098, inlinedAt: !2717)
!2721 = !DILocation(line: 148, column: 57, scope: !1116, inlinedAt: !2717)
!2722 = !DILocation(line: 147, column: 17, scope: !1098, inlinedAt: !2717)
!2723 = !DILocation(line: 149, column: 7, scope: !1098, inlinedAt: !2717)
!2724 = !DILocation(line: 150, column: 12, scope: !1098, inlinedAt: !2717)
!2725 = !DILocation(line: 151, column: 6, scope: !1098, inlinedAt: !2717)
!2726 = !DILocation(line: 978, column: 10, scope: !2630, inlinedAt: !2710)
!2727 = !DILocation(line: 979, column: 1, scope: !2630, inlinedAt: !2710)
!2728 = !DILocation(line: 990, column: 3, scope: !2702)
!2729 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2489, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2730)
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "arg", arg: 1, scope: !2729, file: !100, line: 994, type: !6)
!2732 = !DILocalVariable(name: "argsize", arg: 2, scope: !2729, file: !100, line: 994, type: !94)
!2733 = !DILocation(line: 994, column: 33, scope: !2729)
!2734 = !DILocation(line: 994, column: 45, scope: !2729)
!2735 = !DILocation(line: 973, column: 32, scope: !2630, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 996, column: 10, scope: !2729)
!2737 = !DILocation(line: 973, column: 44, scope: !2630, inlinedAt: !2736)
!2738 = !DILocation(line: 973, column: 58, scope: !2630, inlinedAt: !2736)
!2739 = !DILocation(line: 975, column: 3, scope: !2630, inlinedAt: !2736)
!2740 = !DILocation(line: 976, column: 13, scope: !2630, inlinedAt: !2736)
!2741 = !DILocation(line: 975, column: 26, scope: !2630, inlinedAt: !2736)
!2742 = !DILocation(line: 144, column: 43, scope: !1098, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 977, column: 3, scope: !2630, inlinedAt: !2736)
!2744 = !DILocation(line: 144, column: 51, scope: !1098, inlinedAt: !2743)
!2745 = !DILocation(line: 144, column: 58, scope: !1098, inlinedAt: !2743)
!2746 = !DILocation(line: 146, column: 17, scope: !1098, inlinedAt: !2743)
!2747 = !DILocation(line: 148, column: 57, scope: !1116, inlinedAt: !2743)
!2748 = !DILocation(line: 147, column: 17, scope: !1098, inlinedAt: !2743)
!2749 = !DILocation(line: 149, column: 7, scope: !1098, inlinedAt: !2743)
!2750 = !DILocation(line: 150, column: 12, scope: !1098, inlinedAt: !2743)
!2751 = !DILocation(line: 151, column: 6, scope: !1098, inlinedAt: !2743)
!2752 = !DILocation(line: 978, column: 10, scope: !2630, inlinedAt: !2736)
!2753 = !DILocation(line: 979, column: 1, scope: !2630, inlinedAt: !2736)
!2754 = !DILocation(line: 996, column: 3, scope: !2729)
!2755 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2503, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DILocalVariable(name: "n", arg: 1, scope: !2755, file: !100, line: 1000, type: !25)
!2758 = !DILocalVariable(name: "s", arg: 2, scope: !2755, file: !100, line: 1000, type: !58)
!2759 = !DILocalVariable(name: "arg", arg: 3, scope: !2755, file: !100, line: 1000, type: !6)
!2760 = !DILocalVariable(name: "options", scope: !2755, file: !100, line: 1002, type: !107)
!2761 = !DILocation(line: 187, column: 26, scope: !2511, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 1003, column: 13, scope: !2755)
!2763 = !DILocation(line: 1000, column: 29, scope: !2755)
!2764 = !DILocation(line: 1000, column: 51, scope: !2755)
!2765 = !DILocation(line: 1000, column: 66, scope: !2755)
!2766 = !DILocation(line: 1002, column: 3, scope: !2755)
!2767 = !DILocation(line: 185, column: 48, scope: !2511, inlinedAt: !2762)
!2768 = !DILocation(line: 187, column: 3, scope: !2511, inlinedAt: !2762)
!2769 = !DILocation(line: 188, column: 13, scope: !2528, inlinedAt: !2762)
!2770 = !DILocation(line: 188, column: 7, scope: !2511, inlinedAt: !2762)
!2771 = !DILocation(line: 189, column: 5, scope: !2528, inlinedAt: !2762)
!2772 = !{!2773}
!2773 = distinct !{!2773, !2774, !"quoting_options_from_style: argument 0"}
!2774 = distinct !{!2774, !"quoting_options_from_style"}
!2775 = !DILocation(line: 191, column: 10, scope: !2511, inlinedAt: !2762)
!2776 = !DILocation(line: 192, column: 1, scope: !2511, inlinedAt: !2762)
!2777 = !DILocation(line: 1003, column: 13, scope: !2755)
!2778 = !DILocation(line: 1002, column: 26, scope: !2755)
!2779 = !DILocation(line: 144, column: 43, scope: !1098, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1004, column: 3, scope: !2755)
!2781 = !DILocation(line: 144, column: 51, scope: !1098, inlinedAt: !2780)
!2782 = !DILocation(line: 144, column: 58, scope: !1098, inlinedAt: !2780)
!2783 = !DILocation(line: 146, column: 17, scope: !1098, inlinedAt: !2780)
!2784 = !DILocation(line: 148, column: 57, scope: !1116, inlinedAt: !2780)
!2785 = !DILocation(line: 147, column: 17, scope: !1098, inlinedAt: !2780)
!2786 = !DILocation(line: 149, column: 7, scope: !1098, inlinedAt: !2780)
!2787 = !DILocation(line: 150, column: 12, scope: !1098, inlinedAt: !2780)
!2788 = !DILocation(line: 151, column: 6, scope: !1098, inlinedAt: !2780)
!2789 = !DILocation(line: 1005, column: 10, scope: !2755)
!2790 = !DILocation(line: 1006, column: 1, scope: !2755)
!2791 = !DILocation(line: 1005, column: 3, scope: !2755)
!2792 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2793, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!50, !25, !6, !6, !6}
!2795 = !{!2796, !2797, !2798, !2799}
!2796 = !DILocalVariable(name: "n", arg: 1, scope: !2792, file: !100, line: 1009, type: !25)
!2797 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2792, file: !100, line: 1009, type: !6)
!2798 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2792, file: !100, line: 1010, type: !6)
!2799 = !DILocalVariable(name: "arg", arg: 4, scope: !2792, file: !100, line: 1010, type: !6)
!2800 = !DILocation(line: 1009, column: 24, scope: !2792)
!2801 = !DILocation(line: 1009, column: 39, scope: !2792)
!2802 = !DILocation(line: 1010, column: 32, scope: !2792)
!2803 = !DILocation(line: 1010, column: 57, scope: !2792)
!2804 = !DILocalVariable(name: "n", arg: 1, scope: !2805, file: !100, line: 1017, type: !25)
!2805 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2806, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!50, !25, !6, !6, !6, !94}
!2808 = !{!2804, !2809, !2810, !2811, !2812, !2813}
!2809 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2805, file: !100, line: 1017, type: !6)
!2810 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2805, file: !100, line: 1018, type: !6)
!2811 = !DILocalVariable(name: "arg", arg: 4, scope: !2805, file: !100, line: 1019, type: !6)
!2812 = !DILocalVariable(name: "argsize", arg: 5, scope: !2805, file: !100, line: 1019, type: !94)
!2813 = !DILocalVariable(name: "o", scope: !2805, file: !100, line: 1021, type: !107)
!2814 = !DILocation(line: 1017, column: 28, scope: !2805, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 1012, column: 10, scope: !2792)
!2816 = !DILocation(line: 1017, column: 43, scope: !2805, inlinedAt: !2815)
!2817 = !DILocation(line: 1018, column: 36, scope: !2805, inlinedAt: !2815)
!2818 = !DILocation(line: 1019, column: 36, scope: !2805, inlinedAt: !2815)
!2819 = !DILocation(line: 1019, column: 48, scope: !2805, inlinedAt: !2815)
!2820 = !DILocation(line: 1021, column: 3, scope: !2805, inlinedAt: !2815)
!2821 = !DILocation(line: 1021, column: 30, scope: !2805, inlinedAt: !2815)
!2822 = !DILocation(line: 1021, column: 26, scope: !2805, inlinedAt: !2815)
!2823 = !DILocation(line: 171, column: 45, scope: !1148, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 1022, column: 3, scope: !2805, inlinedAt: !2815)
!2825 = !DILocation(line: 172, column: 33, scope: !1148, inlinedAt: !2824)
!2826 = !DILocation(line: 172, column: 57, scope: !1148, inlinedAt: !2824)
!2827 = !DILocation(line: 176, column: 6, scope: !1148, inlinedAt: !2824)
!2828 = !DILocation(line: 176, column: 12, scope: !1148, inlinedAt: !2824)
!2829 = !DILocation(line: 177, column: 8, scope: !1164, inlinedAt: !2824)
!2830 = !DILocation(line: 177, column: 23, scope: !1166, inlinedAt: !2824)
!2831 = !DILocation(line: 177, column: 19, scope: !1164, inlinedAt: !2824)
!2832 = !DILocation(line: 178, column: 5, scope: !1164, inlinedAt: !2824)
!2833 = !DILocation(line: 179, column: 6, scope: !1148, inlinedAt: !2824)
!2834 = !DILocation(line: 179, column: 17, scope: !1148, inlinedAt: !2824)
!2835 = !DILocation(line: 180, column: 6, scope: !1148, inlinedAt: !2824)
!2836 = !DILocation(line: 180, column: 18, scope: !1148, inlinedAt: !2824)
!2837 = !DILocation(line: 1023, column: 10, scope: !2805, inlinedAt: !2815)
!2838 = !DILocation(line: 1024, column: 1, scope: !2805, inlinedAt: !2815)
!2839 = !DILocation(line: 1012, column: 3, scope: !2792)
!2840 = !DILocation(line: 1017, column: 28, scope: !2805)
!2841 = !DILocation(line: 1017, column: 43, scope: !2805)
!2842 = !DILocation(line: 1018, column: 36, scope: !2805)
!2843 = !DILocation(line: 1019, column: 36, scope: !2805)
!2844 = !DILocation(line: 1019, column: 48, scope: !2805)
!2845 = !DILocation(line: 1021, column: 3, scope: !2805)
!2846 = !DILocation(line: 1021, column: 30, scope: !2805)
!2847 = !DILocation(line: 1021, column: 26, scope: !2805)
!2848 = !DILocation(line: 171, column: 45, scope: !1148, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 1022, column: 3, scope: !2805)
!2850 = !DILocation(line: 172, column: 33, scope: !1148, inlinedAt: !2849)
!2851 = !DILocation(line: 172, column: 57, scope: !1148, inlinedAt: !2849)
!2852 = !DILocation(line: 176, column: 6, scope: !1148, inlinedAt: !2849)
!2853 = !DILocation(line: 176, column: 12, scope: !1148, inlinedAt: !2849)
!2854 = !DILocation(line: 177, column: 8, scope: !1164, inlinedAt: !2849)
!2855 = !DILocation(line: 177, column: 23, scope: !1166, inlinedAt: !2849)
!2856 = !DILocation(line: 177, column: 19, scope: !1164, inlinedAt: !2849)
!2857 = !DILocation(line: 178, column: 5, scope: !1164, inlinedAt: !2849)
!2858 = !DILocation(line: 179, column: 6, scope: !1148, inlinedAt: !2849)
!2859 = !DILocation(line: 179, column: 17, scope: !1148, inlinedAt: !2849)
!2860 = !DILocation(line: 180, column: 6, scope: !1148, inlinedAt: !2849)
!2861 = !DILocation(line: 180, column: 18, scope: !1148, inlinedAt: !2849)
!2862 = !DILocation(line: 1023, column: 10, scope: !2805)
!2863 = !DILocation(line: 1024, column: 1, scope: !2805)
!2864 = !DILocation(line: 1023, column: 3, scope: !2805)
!2865 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2866, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!50, !6, !6, !6}
!2868 = !{!2869, !2870, !2871}
!2869 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2865, file: !100, line: 1027, type: !6)
!2870 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2865, file: !100, line: 1027, type: !6)
!2871 = !DILocalVariable(name: "arg", arg: 3, scope: !2865, file: !100, line: 1028, type: !6)
!2872 = !DILocation(line: 1027, column: 30, scope: !2865)
!2873 = !DILocation(line: 1027, column: 54, scope: !2865)
!2874 = !DILocation(line: 1028, column: 30, scope: !2865)
!2875 = !DILocation(line: 1009, column: 24, scope: !2792, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 1030, column: 10, scope: !2865)
!2877 = !DILocation(line: 1009, column: 39, scope: !2792, inlinedAt: !2876)
!2878 = !DILocation(line: 1010, column: 32, scope: !2792, inlinedAt: !2876)
!2879 = !DILocation(line: 1010, column: 57, scope: !2792, inlinedAt: !2876)
!2880 = !DILocation(line: 1017, column: 28, scope: !2805, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 1012, column: 10, scope: !2792, inlinedAt: !2876)
!2882 = !DILocation(line: 1017, column: 43, scope: !2805, inlinedAt: !2881)
!2883 = !DILocation(line: 1018, column: 36, scope: !2805, inlinedAt: !2881)
!2884 = !DILocation(line: 1019, column: 36, scope: !2805, inlinedAt: !2881)
!2885 = !DILocation(line: 1019, column: 48, scope: !2805, inlinedAt: !2881)
!2886 = !DILocation(line: 1021, column: 3, scope: !2805, inlinedAt: !2881)
!2887 = !DILocation(line: 1021, column: 30, scope: !2805, inlinedAt: !2881)
!2888 = !DILocation(line: 1021, column: 26, scope: !2805, inlinedAt: !2881)
!2889 = !DILocation(line: 171, column: 45, scope: !1148, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 1022, column: 3, scope: !2805, inlinedAt: !2881)
!2891 = !DILocation(line: 172, column: 33, scope: !1148, inlinedAt: !2890)
!2892 = !DILocation(line: 172, column: 57, scope: !1148, inlinedAt: !2890)
!2893 = !DILocation(line: 176, column: 6, scope: !1148, inlinedAt: !2890)
!2894 = !DILocation(line: 176, column: 12, scope: !1148, inlinedAt: !2890)
!2895 = !DILocation(line: 177, column: 8, scope: !1164, inlinedAt: !2890)
!2896 = !DILocation(line: 177, column: 23, scope: !1166, inlinedAt: !2890)
!2897 = !DILocation(line: 177, column: 19, scope: !1164, inlinedAt: !2890)
!2898 = !DILocation(line: 178, column: 5, scope: !1164, inlinedAt: !2890)
!2899 = !DILocation(line: 179, column: 6, scope: !1148, inlinedAt: !2890)
!2900 = !DILocation(line: 179, column: 17, scope: !1148, inlinedAt: !2890)
!2901 = !DILocation(line: 180, column: 6, scope: !1148, inlinedAt: !2890)
!2902 = !DILocation(line: 180, column: 18, scope: !1148, inlinedAt: !2890)
!2903 = !DILocation(line: 1023, column: 10, scope: !2805, inlinedAt: !2881)
!2904 = !DILocation(line: 1024, column: 1, scope: !2805, inlinedAt: !2881)
!2905 = !DILocation(line: 1030, column: 3, scope: !2865)
!2906 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2907, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!50, !6, !6, !6, !94}
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2906, file: !100, line: 1034, type: !6)
!2911 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2906, file: !100, line: 1034, type: !6)
!2912 = !DILocalVariable(name: "arg", arg: 3, scope: !2906, file: !100, line: 1035, type: !6)
!2913 = !DILocalVariable(name: "argsize", arg: 4, scope: !2906, file: !100, line: 1035, type: !94)
!2914 = !DILocation(line: 1034, column: 34, scope: !2906)
!2915 = !DILocation(line: 1034, column: 58, scope: !2906)
!2916 = !DILocation(line: 1035, column: 34, scope: !2906)
!2917 = !DILocation(line: 1035, column: 46, scope: !2906)
!2918 = !DILocation(line: 1017, column: 28, scope: !2805, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 1037, column: 10, scope: !2906)
!2920 = !DILocation(line: 1017, column: 43, scope: !2805, inlinedAt: !2919)
!2921 = !DILocation(line: 1018, column: 36, scope: !2805, inlinedAt: !2919)
!2922 = !DILocation(line: 1019, column: 36, scope: !2805, inlinedAt: !2919)
!2923 = !DILocation(line: 1019, column: 48, scope: !2805, inlinedAt: !2919)
!2924 = !DILocation(line: 1021, column: 3, scope: !2805, inlinedAt: !2919)
!2925 = !DILocation(line: 1021, column: 30, scope: !2805, inlinedAt: !2919)
!2926 = !DILocation(line: 1021, column: 26, scope: !2805, inlinedAt: !2919)
!2927 = !DILocation(line: 171, column: 45, scope: !1148, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 1022, column: 3, scope: !2805, inlinedAt: !2919)
!2929 = !DILocation(line: 172, column: 33, scope: !1148, inlinedAt: !2928)
!2930 = !DILocation(line: 172, column: 57, scope: !1148, inlinedAt: !2928)
!2931 = !DILocation(line: 176, column: 6, scope: !1148, inlinedAt: !2928)
!2932 = !DILocation(line: 176, column: 12, scope: !1148, inlinedAt: !2928)
!2933 = !DILocation(line: 177, column: 8, scope: !1164, inlinedAt: !2928)
!2934 = !DILocation(line: 177, column: 23, scope: !1166, inlinedAt: !2928)
!2935 = !DILocation(line: 177, column: 19, scope: !1164, inlinedAt: !2928)
!2936 = !DILocation(line: 178, column: 5, scope: !1164, inlinedAt: !2928)
!2937 = !DILocation(line: 179, column: 6, scope: !1148, inlinedAt: !2928)
!2938 = !DILocation(line: 179, column: 17, scope: !1148, inlinedAt: !2928)
!2939 = !DILocation(line: 180, column: 6, scope: !1148, inlinedAt: !2928)
!2940 = !DILocation(line: 180, column: 18, scope: !1148, inlinedAt: !2928)
!2941 = !DILocation(line: 1023, column: 10, scope: !2805, inlinedAt: !2919)
!2942 = !DILocation(line: 1024, column: 1, scope: !2805, inlinedAt: !2919)
!2943 = !DILocation(line: 1037, column: 3, scope: !2906)
!2944 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2945, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!6, !25, !6, !94}
!2947 = !{!2948, !2949, !2950}
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2944, file: !100, line: 1052, type: !25)
!2949 = !DILocalVariable(name: "arg", arg: 2, scope: !2944, file: !100, line: 1052, type: !6)
!2950 = !DILocalVariable(name: "argsize", arg: 3, scope: !2944, file: !100, line: 1052, type: !94)
!2951 = !DILocation(line: 1052, column: 18, scope: !2944)
!2952 = !DILocation(line: 1052, column: 33, scope: !2944)
!2953 = !DILocation(line: 1052, column: 45, scope: !2944)
!2954 = !DILocation(line: 1054, column: 10, scope: !2944)
!2955 = !DILocation(line: 1054, column: 3, scope: !2944)
!2956 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2957, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!6, !6, !94}
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "arg", arg: 1, scope: !2956, file: !100, line: 1058, type: !6)
!2961 = !DILocalVariable(name: "argsize", arg: 2, scope: !2956, file: !100, line: 1058, type: !94)
!2962 = !DILocation(line: 1058, column: 24, scope: !2956)
!2963 = !DILocation(line: 1058, column: 36, scope: !2956)
!2964 = !DILocation(line: 1052, column: 18, scope: !2944, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 1060, column: 10, scope: !2956)
!2966 = !DILocation(line: 1052, column: 33, scope: !2944, inlinedAt: !2965)
!2967 = !DILocation(line: 1052, column: 45, scope: !2944, inlinedAt: !2965)
!2968 = !DILocation(line: 1054, column: 10, scope: !2944, inlinedAt: !2965)
!2969 = !DILocation(line: 1060, column: 3, scope: !2956)
!2970 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2971, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!6, !25, !6}
!2973 = !{!2974, !2975}
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2970, file: !100, line: 1064, type: !25)
!2975 = !DILocalVariable(name: "arg", arg: 2, scope: !2970, file: !100, line: 1064, type: !6)
!2976 = !DILocation(line: 1064, column: 14, scope: !2970)
!2977 = !DILocation(line: 1064, column: 29, scope: !2970)
!2978 = !DILocation(line: 1052, column: 18, scope: !2944, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 1066, column: 10, scope: !2970)
!2980 = !DILocation(line: 1052, column: 33, scope: !2944, inlinedAt: !2979)
!2981 = !DILocation(line: 1052, column: 45, scope: !2944, inlinedAt: !2979)
!2982 = !DILocation(line: 1054, column: 10, scope: !2944, inlinedAt: !2979)
!2983 = !DILocation(line: 1066, column: 3, scope: !2970)
!2984 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2985, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!6, !6}
!2987 = !{!2988}
!2988 = !DILocalVariable(name: "arg", arg: 1, scope: !2984, file: !100, line: 1070, type: !6)
!2989 = !DILocation(line: 1070, column: 20, scope: !2984)
!2990 = !DILocation(line: 1064, column: 14, scope: !2970, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 1072, column: 10, scope: !2984)
!2992 = !DILocation(line: 1064, column: 29, scope: !2970, inlinedAt: !2991)
!2993 = !DILocation(line: 1052, column: 18, scope: !2944, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1066, column: 10, scope: !2970, inlinedAt: !2991)
!2995 = !DILocation(line: 1052, column: 33, scope: !2944, inlinedAt: !2994)
!2996 = !DILocation(line: 1052, column: 45, scope: !2944, inlinedAt: !2994)
!2997 = !DILocation(line: 1054, column: 10, scope: !2944, inlinedAt: !2994)
!2998 = !DILocation(line: 1072, column: 3, scope: !2984)
!2999 = distinct !DISubprogram(name: "version_etc_arn", scope: !547, file: !547, line: 62, type: !3000, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !3051)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{null, !3002, !6, !6, !6, !3050, !94}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !973, line: 49, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3005, line: 241, size: 1728, elements: !3006)
!3005 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3027, !3028, !3029, !3030, !3033, !3034, !3036, !3038, !3041, !3043, !3044, !3045, !3046, !3047, !3048, !3049}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3004, file: !3005, line: 242, baseType: !25, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3004, file: !3005, line: 247, baseType: !50, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3004, file: !3005, line: 248, baseType: !50, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3004, file: !3005, line: 249, baseType: !50, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3004, file: !3005, line: 250, baseType: !50, size: 64, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3004, file: !3005, line: 251, baseType: !50, size: 64, offset: 320)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3004, file: !3005, line: 252, baseType: !50, size: 64, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3004, file: !3005, line: 253, baseType: !50, size: 64, offset: 448)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3004, file: !3005, line: 254, baseType: !50, size: 64, offset: 512)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3004, file: !3005, line: 256, baseType: !50, size: 64, offset: 576)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3004, file: !3005, line: 257, baseType: !50, size: 64, offset: 640)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3004, file: !3005, line: 258, baseType: !50, size: 64, offset: 704)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3004, file: !3005, line: 260, baseType: !3020, size: 64, offset: 768)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3005, line: 156, size: 192, elements: !3022)
!3022 = !{!3023, !3024, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3021, file: !3005, line: 157, baseType: !3020, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3021, file: !3005, line: 158, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3021, file: !3005, line: 162, baseType: !25, size: 32, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3004, file: !3005, line: 262, baseType: !3025, size: 64, offset: 832)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3004, file: !3005, line: 264, baseType: !25, size: 32, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3004, file: !3005, line: 268, baseType: !25, size: 32, offset: 928)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3004, file: !3005, line: 270, baseType: !3031, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !715, line: 140, baseType: !3032)
!3032 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3004, file: !3005, line: 274, baseType: !93, size: 16, offset: 1024)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3004, file: !3005, line: 275, baseType: !3035, size: 8, offset: 1040)
!3035 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3004, file: !3005, line: 276, baseType: !3037, size: 8, offset: 1048)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !984)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3004, file: !3005, line: 280, baseType: !3039, size: 64, offset: 1088)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3005, line: 150, baseType: null)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3004, file: !3005, line: 289, baseType: !3042, size: 64, offset: 1152)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !715, line: 141, baseType: !3032)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3004, file: !3005, line: 297, baseType: !49, size: 64, offset: 1216)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3004, file: !3005, line: 298, baseType: !49, size: 64, offset: 1280)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3004, file: !3005, line: 299, baseType: !49, size: 64, offset: 1344)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3004, file: !3005, line: 300, baseType: !49, size: 64, offset: 1408)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3004, file: !3005, line: 302, baseType: !94, size: 64, offset: 1472)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3004, file: !3005, line: 303, baseType: !25, size: 32, offset: 1536)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3004, file: !3005, line: 305, baseType: !741, size: 160, offset: 1568)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3051 = !{!3052, !3053, !3054, !3055, !3056, !3057}
!3052 = !DILocalVariable(name: "stream", arg: 1, scope: !2999, file: !547, line: 62, type: !3002)
!3053 = !DILocalVariable(name: "command_name", arg: 2, scope: !2999, file: !547, line: 63, type: !6)
!3054 = !DILocalVariable(name: "package", arg: 3, scope: !2999, file: !547, line: 63, type: !6)
!3055 = !DILocalVariable(name: "version", arg: 4, scope: !2999, file: !547, line: 64, type: !6)
!3056 = !DILocalVariable(name: "authors", arg: 5, scope: !2999, file: !547, line: 65, type: !3050)
!3057 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2999, file: !547, line: 65, type: !94)
!3058 = !DILocation(line: 62, column: 24, scope: !2999)
!3059 = !DILocation(line: 63, column: 30, scope: !2999)
!3060 = !DILocation(line: 63, column: 56, scope: !2999)
!3061 = !DILocation(line: 64, column: 30, scope: !2999)
!3062 = !DILocation(line: 65, column: 39, scope: !2999)
!3063 = !DILocation(line: 65, column: 55, scope: !2999)
!3064 = !DILocation(line: 67, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2999, file: !547, line: 67, column: 7)
!3066 = !DILocation(line: 67, column: 7, scope: !2999)
!3067 = !DILocation(line: 68, column: 5, scope: !3065)
!3068 = !DILocation(line: 70, column: 5, scope: !3065)
!3069 = !DILocation(line: 84, column: 3, scope: !2999)
!3070 = !DILocation(line: 84, column: 3, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !2999, file: !547, discriminator: 1)
!3072 = !DILocation(line: 86, column: 3, scope: !2999)
!3073 = !DILocation(line: 86, column: 3, scope: !3071)
!3074 = !DILocation(line: 95, column: 3, scope: !2999)
!3075 = !DILocation(line: 99, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !2999, file: !547, line: 96, column: 5)
!3077 = !DILocation(line: 102, column: 7, scope: !3076)
!3078 = !DILocation(line: 102, column: 7, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !3076, file: !547, discriminator: 1)
!3080 = !DILocation(line: 103, column: 7, scope: !3076)
!3081 = !DILocation(line: 106, column: 7, scope: !3076)
!3082 = !DILocation(line: 106, column: 7, scope: !3079)
!3083 = !DILocation(line: 107, column: 7, scope: !3076)
!3084 = !DILocation(line: 110, column: 7, scope: !3076)
!3085 = !DILocation(line: 110, column: 7, scope: !3079)
!3086 = !DILocation(line: 112, column: 7, scope: !3076)
!3087 = !DILocation(line: 117, column: 7, scope: !3076)
!3088 = !DILocation(line: 117, column: 7, scope: !3079)
!3089 = !DILocation(line: 119, column: 7, scope: !3076)
!3090 = !DILocation(line: 124, column: 7, scope: !3076)
!3091 = !DILocation(line: 124, column: 7, scope: !3079)
!3092 = !DILocation(line: 126, column: 7, scope: !3076)
!3093 = !DILocation(line: 131, column: 7, scope: !3076)
!3094 = !DILocation(line: 131, column: 7, scope: !3079)
!3095 = !DILocation(line: 134, column: 7, scope: !3076)
!3096 = !DILocation(line: 139, column: 7, scope: !3076)
!3097 = !DILocation(line: 139, column: 7, scope: !3079)
!3098 = !DILocation(line: 142, column: 7, scope: !3076)
!3099 = !DILocation(line: 147, column: 7, scope: !3076)
!3100 = !DILocation(line: 147, column: 7, scope: !3079)
!3101 = !DILocation(line: 151, column: 7, scope: !3076)
!3102 = !DILocation(line: 156, column: 7, scope: !3076)
!3103 = !DILocation(line: 156, column: 7, scope: !3079)
!3104 = !DILocation(line: 160, column: 7, scope: !3076)
!3105 = !DILocation(line: 167, column: 7, scope: !3076)
!3106 = !DILocation(line: 167, column: 7, scope: !3079)
!3107 = !DILocation(line: 171, column: 7, scope: !3076)
!3108 = !DILocation(line: 173, column: 1, scope: !2999)
!3109 = distinct !DISubprogram(name: "version_etc_ar", scope: !547, file: !547, line: 180, type: !3110, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !3002, !6, !6, !6, !3050}
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118}
!3113 = !DILocalVariable(name: "stream", arg: 1, scope: !3109, file: !547, line: 180, type: !3002)
!3114 = !DILocalVariable(name: "command_name", arg: 2, scope: !3109, file: !547, line: 181, type: !6)
!3115 = !DILocalVariable(name: "package", arg: 3, scope: !3109, file: !547, line: 181, type: !6)
!3116 = !DILocalVariable(name: "version", arg: 4, scope: !3109, file: !547, line: 182, type: !6)
!3117 = !DILocalVariable(name: "authors", arg: 5, scope: !3109, file: !547, line: 182, type: !3050)
!3118 = !DILocalVariable(name: "n_authors", scope: !3109, file: !547, line: 184, type: !94)
!3119 = !DILocation(line: 180, column: 23, scope: !3109)
!3120 = !DILocation(line: 181, column: 29, scope: !3109)
!3121 = !DILocation(line: 181, column: 55, scope: !3109)
!3122 = !DILocation(line: 182, column: 29, scope: !3109)
!3123 = !DILocation(line: 182, column: 59, scope: !3109)
!3124 = !DILocation(line: 184, column: 10, scope: !3109)
!3125 = !DILocation(line: 186, column: 8, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3109, file: !547, line: 186, column: 3)
!3127 = !DILocation(line: 186, column: 23, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3129, file: !547, discriminator: 1)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !547, line: 186, column: 3)
!3130 = !DILocation(line: 186, column: 3, scope: !3131)
!3131 = !DILexicalBlockFile(scope: !3126, file: !547, discriminator: 1)
!3132 = !DILocation(line: 186, column: 52, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3129, file: !547, discriminator: 3)
!3134 = distinct !{!3134, !3135, !3136}
!3135 = !DILocation(line: 186, column: 3, scope: !3126)
!3136 = !DILocation(line: 187, column: 5, scope: !3126)
!3137 = !DILocation(line: 188, column: 3, scope: !3109)
!3138 = !DILocation(line: 189, column: 1, scope: !3109)
!3139 = distinct !DISubprogram(name: "version_etc_va", scope: !547, file: !547, line: 196, type: !3140, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !3149)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !3002, !6, !6, !6, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !544, line: 189, size: 192, elements: !3144)
!3144 = !{!3145, !3146, !3147, !3148}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3143, file: !544, line: 189, baseType: !113, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3143, file: !544, line: 189, baseType: !113, size: 32, offset: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3143, file: !544, line: 189, baseType: !49, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3143, file: !544, line: 189, baseType: !49, size: 64, offset: 128)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156}
!3150 = !DILocalVariable(name: "stream", arg: 1, scope: !3139, file: !547, line: 196, type: !3002)
!3151 = !DILocalVariable(name: "command_name", arg: 2, scope: !3139, file: !547, line: 197, type: !6)
!3152 = !DILocalVariable(name: "package", arg: 3, scope: !3139, file: !547, line: 197, type: !6)
!3153 = !DILocalVariable(name: "version", arg: 4, scope: !3139, file: !547, line: 198, type: !6)
!3154 = !DILocalVariable(name: "authors", arg: 5, scope: !3139, file: !547, line: 198, type: !3142)
!3155 = !DILocalVariable(name: "n_authors", scope: !3139, file: !547, line: 200, type: !94)
!3156 = !DILocalVariable(name: "authtab", scope: !3139, file: !547, line: 201, type: !3157)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!3158 = !DILocation(line: 196, column: 23, scope: !3139)
!3159 = !DILocation(line: 197, column: 29, scope: !3139)
!3160 = !DILocation(line: 197, column: 55, scope: !3139)
!3161 = !DILocation(line: 198, column: 29, scope: !3139)
!3162 = !DILocation(line: 198, column: 46, scope: !3139)
!3163 = !DILocation(line: 201, column: 3, scope: !3139)
!3164 = !DILocation(line: 201, column: 15, scope: !3139)
!3165 = !DILocation(line: 200, column: 10, scope: !3139)
!3166 = !DILocation(line: 205, column: 35, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3168, file: !547, discriminator: 1)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !547, line: 203, column: 3)
!3169 = distinct !DILexicalBlock(scope: !3139, file: !547, line: 203, column: 3)
!3170 = !DILocation(line: 205, column: 35, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3168, file: !547, discriminator: 2)
!3172 = !DILocation(line: 205, column: 35, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3168, file: !547, discriminator: 3)
!3174 = !DILocation(line: 205, column: 35, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3168, file: !547, discriminator: 4)
!3176 = !DILocation(line: 205, column: 14, scope: !3175)
!3177 = !DILocation(line: 205, column: 33, scope: !3175)
!3178 = !DILocation(line: 205, column: 67, scope: !3175)
!3179 = !DILocation(line: 203, column: 3, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !3169, file: !547, discriminator: 1)
!3181 = !DILocation(line: 208, column: 3, scope: !3139)
!3182 = !DILocation(line: 210, column: 1, scope: !3139)
!3183 = distinct !DISubprogram(name: "version_etc", scope: !547, file: !547, line: 227, type: !3184, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{null, !3002, !6, !6, !6, null}
!3186 = !{!3187, !3188, !3189, !3190, !3191}
!3187 = !DILocalVariable(name: "stream", arg: 1, scope: !3183, file: !547, line: 227, type: !3002)
!3188 = !DILocalVariable(name: "command_name", arg: 2, scope: !3183, file: !547, line: 228, type: !6)
!3189 = !DILocalVariable(name: "package", arg: 3, scope: !3183, file: !547, line: 228, type: !6)
!3190 = !DILocalVariable(name: "version", arg: 4, scope: !3183, file: !547, line: 229, type: !6)
!3191 = !DILocalVariable(name: "authors", scope: !3183, file: !547, line: 231, type: !3192)
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !973, line: 80, baseType: !3193)
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !975, line: 50, baseType: !3194)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !544, line: 231, baseType: !3195)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3143, size: 192, elements: !984)
!3196 = !DILocation(line: 227, column: 20, scope: !3183)
!3197 = !DILocation(line: 228, column: 26, scope: !3183)
!3198 = !DILocation(line: 228, column: 52, scope: !3183)
!3199 = !DILocation(line: 229, column: 26, scope: !3183)
!3200 = !DILocation(line: 231, column: 3, scope: !3183)
!3201 = !DILocation(line: 231, column: 11, scope: !3183)
!3202 = !DILocation(line: 233, column: 3, scope: !3183)
!3203 = !DILocation(line: 234, column: 3, scope: !3183)
!3204 = !DILocation(line: 235, column: 3, scope: !3183)
!3205 = !DILocation(line: 236, column: 1, scope: !3183)
!3206 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !547, file: !547, line: 239, type: !913, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !4)
!3207 = !DILocation(line: 245, column: 3, scope: !3206)
!3208 = !DILocation(line: 245, column: 3, scope: !3209)
!3209 = !DILexicalBlockFile(scope: !3206, file: !547, discriminator: 1)
!3210 = !DILocation(line: 251, column: 3, scope: !3206)
!3211 = !DILocation(line: 251, column: 3, scope: !3209)
!3212 = !DILocation(line: 256, column: 3, scope: !3206)
!3213 = !DILocation(line: 256, column: 3, scope: !3209)
!3214 = !DILocation(line: 258, column: 1, scope: !3206)
!3215 = distinct !DISubprogram(name: "xnmalloc", scope: !555, file: !555, line: 105, type: !787, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3216)
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "n", arg: 1, scope: !3215, file: !555, line: 105, type: !94)
!3218 = !DILocalVariable(name: "s", arg: 2, scope: !3215, file: !555, line: 105, type: !94)
!3219 = !DILocation(line: 105, column: 18, scope: !3215)
!3220 = !DILocation(line: 105, column: 28, scope: !3215)
!3221 = !DILocation(line: 107, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3215, file: !555, line: 107, column: 7)
!3223 = !DILocation(line: 107, column: 7, scope: !3215)
!3224 = !DILocation(line: 108, column: 5, scope: !3222)
!3225 = !DILocation(line: 109, column: 21, scope: !3215)
!3226 = !DILocalVariable(name: "n", arg: 1, scope: !3227, file: !3228, line: 39, type: !94)
!3227 = distinct !DISubprogram(name: "xmalloc", scope: !3228, file: !3228, line: 39, type: !3229, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3231)
!3228 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!49, !94}
!3231 = !{!3226, !3232}
!3232 = !DILocalVariable(name: "p", scope: !3227, file: !3228, line: 41, type: !49)
!3233 = !DILocation(line: 39, column: 17, scope: !3227, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 109, column: 10, scope: !3215)
!3235 = !DILocation(line: 41, column: 13, scope: !3227, inlinedAt: !3234)
!3236 = !DILocation(line: 41, column: 9, scope: !3227, inlinedAt: !3234)
!3237 = !DILocation(line: 42, column: 8, scope: !3238, inlinedAt: !3234)
!3238 = distinct !DILexicalBlock(scope: !3227, file: !3228, line: 42, column: 7)
!3239 = !DILocation(line: 42, column: 15, scope: !3240, inlinedAt: !3234)
!3240 = !DILexicalBlockFile(scope: !3238, file: !3228, discriminator: 1)
!3241 = !DILocation(line: 42, column: 10, scope: !3238, inlinedAt: !3234)
!3242 = !DILocation(line: 43, column: 5, scope: !3238, inlinedAt: !3234)
!3243 = !DILocation(line: 109, column: 3, scope: !3215)
!3244 = !DILocation(line: 39, column: 17, scope: !3227)
!3245 = !DILocation(line: 41, column: 13, scope: !3227)
!3246 = !DILocation(line: 41, column: 9, scope: !3227)
!3247 = !DILocation(line: 42, column: 8, scope: !3238)
!3248 = !DILocation(line: 42, column: 15, scope: !3240)
!3249 = !DILocation(line: 42, column: 10, scope: !3238)
!3250 = !DILocation(line: 43, column: 5, scope: !3238)
!3251 = !DILocation(line: 44, column: 3, scope: !3227)
!3252 = distinct !DISubprogram(name: "xnrealloc", scope: !555, file: !555, line: 118, type: !3253, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!49, !49, !94, !94}
!3255 = !{!3256, !3257, !3258}
!3256 = !DILocalVariable(name: "p", arg: 1, scope: !3252, file: !555, line: 118, type: !49)
!3257 = !DILocalVariable(name: "n", arg: 2, scope: !3252, file: !555, line: 118, type: !94)
!3258 = !DILocalVariable(name: "s", arg: 3, scope: !3252, file: !555, line: 118, type: !94)
!3259 = !DILocation(line: 118, column: 18, scope: !3252)
!3260 = !DILocation(line: 118, column: 28, scope: !3252)
!3261 = !DILocation(line: 118, column: 38, scope: !3252)
!3262 = !DILocation(line: 120, column: 7, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3252, file: !555, line: 120, column: 7)
!3264 = !DILocation(line: 120, column: 7, scope: !3252)
!3265 = !DILocation(line: 121, column: 5, scope: !3263)
!3266 = !DILocation(line: 122, column: 25, scope: !3252)
!3267 = !DILocalVariable(name: "p", arg: 1, scope: !3268, file: !3228, line: 51, type: !49)
!3268 = distinct !DISubprogram(name: "xrealloc", scope: !3228, file: !3228, line: 51, type: !3269, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!49, !49, !94}
!3271 = !{!3267, !3272}
!3272 = !DILocalVariable(name: "n", arg: 2, scope: !3268, file: !3228, line: 51, type: !94)
!3273 = !DILocation(line: 51, column: 17, scope: !3268, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 122, column: 10, scope: !3252)
!3275 = !DILocation(line: 51, column: 27, scope: !3268, inlinedAt: !3274)
!3276 = !DILocation(line: 53, column: 8, scope: !3277, inlinedAt: !3274)
!3277 = distinct !DILexicalBlock(scope: !3268, file: !3228, line: 53, column: 7)
!3278 = !DILocation(line: 53, column: 13, scope: !3279, inlinedAt: !3274)
!3279 = !DILexicalBlockFile(scope: !3277, file: !3228, discriminator: 1)
!3280 = !DILocation(line: 53, column: 10, scope: !3277, inlinedAt: !3274)
!3281 = !DILocation(line: 57, column: 7, scope: !3282, inlinedAt: !3274)
!3282 = distinct !DILexicalBlock(scope: !3277, file: !3228, line: 54, column: 5)
!3283 = !DILocation(line: 58, column: 7, scope: !3282, inlinedAt: !3274)
!3284 = !DILocation(line: 61, column: 7, scope: !3268, inlinedAt: !3274)
!3285 = !DILocation(line: 62, column: 8, scope: !3286, inlinedAt: !3274)
!3286 = distinct !DILexicalBlock(scope: !3268, file: !3228, line: 62, column: 7)
!3287 = !DILocation(line: 62, column: 13, scope: !3288, inlinedAt: !3274)
!3288 = !DILexicalBlockFile(scope: !3286, file: !3228, discriminator: 1)
!3289 = !DILocation(line: 62, column: 10, scope: !3286, inlinedAt: !3274)
!3290 = !DILocation(line: 63, column: 5, scope: !3286, inlinedAt: !3274)
!3291 = !DILocation(line: 122, column: 3, scope: !3252)
!3292 = !DILocation(line: 51, column: 17, scope: !3268)
!3293 = !DILocation(line: 51, column: 27, scope: !3268)
!3294 = !DILocation(line: 53, column: 8, scope: !3277)
!3295 = !DILocation(line: 53, column: 13, scope: !3279)
!3296 = !DILocation(line: 53, column: 10, scope: !3277)
!3297 = !DILocation(line: 57, column: 7, scope: !3282)
!3298 = !DILocation(line: 58, column: 7, scope: !3282)
!3299 = !DILocation(line: 61, column: 7, scope: !3268)
!3300 = !DILocation(line: 62, column: 8, scope: !3286)
!3301 = !DILocation(line: 62, column: 13, scope: !3288)
!3302 = !DILocation(line: 62, column: 10, scope: !3286)
!3303 = !DILocation(line: 63, column: 5, scope: !3286)
!3304 = !DILocation(line: 65, column: 1, scope: !3268)
!3305 = !DILocation(line: 180, column: 19, scope: !556)
!3306 = !DILocation(line: 180, column: 30, scope: !556)
!3307 = !DILocation(line: 180, column: 41, scope: !556)
!3308 = !DILocation(line: 182, column: 14, scope: !556)
!3309 = !DILocation(line: 182, column: 10, scope: !556)
!3310 = !DILocation(line: 184, column: 9, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !556, file: !555, line: 184, column: 7)
!3312 = !DILocation(line: 184, column: 7, scope: !556)
!3313 = !DILocation(line: 186, column: 13, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !555, line: 186, column: 11)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !555, line: 185, column: 5)
!3316 = !DILocation(line: 186, column: 11, scope: !3315)
!3317 = !DILocation(line: 194, column: 30, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3314, file: !555, line: 187, column: 9)
!3319 = !DILocation(line: 195, column: 16, scope: !3318)
!3320 = !DILocation(line: 195, column: 13, scope: !3318)
!3321 = !DILocation(line: 196, column: 9, scope: !3318)
!3322 = !DILocation(line: 204, column: 69, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !555, line: 204, column: 11)
!3324 = distinct !DILexicalBlock(scope: !3311, file: !555, line: 199, column: 5)
!3325 = !DILocation(line: 205, column: 11, scope: !3323)
!3326 = !DILocation(line: 204, column: 11, scope: !3324)
!3327 = !DILocation(line: 206, column: 9, scope: !3323)
!3328 = !DILocation(line: 210, column: 7, scope: !556)
!3329 = !DILocation(line: 211, column: 25, scope: !556)
!3330 = !DILocation(line: 51, column: 17, scope: !3268, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 211, column: 10, scope: !556)
!3332 = !DILocation(line: 51, column: 27, scope: !3268, inlinedAt: !3331)
!3333 = !DILocation(line: 53, column: 10, scope: !3277, inlinedAt: !3331)
!3334 = !DILocation(line: 207, column: 14, scope: !3324)
!3335 = !DILocation(line: 207, column: 18, scope: !3324)
!3336 = !DILocation(line: 207, column: 9, scope: !3324)
!3337 = !DILocation(line: 53, column: 8, scope: !3277, inlinedAt: !3331)
!3338 = !DILocation(line: 57, column: 7, scope: !3282, inlinedAt: !3331)
!3339 = !DILocation(line: 58, column: 7, scope: !3282, inlinedAt: !3331)
!3340 = !DILocation(line: 61, column: 7, scope: !3268, inlinedAt: !3331)
!3341 = !DILocation(line: 62, column: 8, scope: !3286, inlinedAt: !3331)
!3342 = !DILocation(line: 62, column: 13, scope: !3288, inlinedAt: !3331)
!3343 = !DILocation(line: 62, column: 10, scope: !3286, inlinedAt: !3331)
!3344 = !DILocation(line: 63, column: 5, scope: !3286, inlinedAt: !3331)
!3345 = !DILocation(line: 211, column: 3, scope: !556)
!3346 = distinct !DISubprogram(name: "xcharalloc", scope: !555, file: !555, line: 220, type: !2273, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3347)
!3347 = !{!3348}
!3348 = !DILocalVariable(name: "n", arg: 1, scope: !3346, file: !555, line: 220, type: !94)
!3349 = !DILocation(line: 220, column: 20, scope: !3346)
!3350 = !DILocation(line: 39, column: 17, scope: !3227, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 222, column: 10, scope: !3346)
!3352 = !DILocation(line: 41, column: 13, scope: !3227, inlinedAt: !3351)
!3353 = !DILocation(line: 41, column: 9, scope: !3227, inlinedAt: !3351)
!3354 = !DILocation(line: 42, column: 8, scope: !3238, inlinedAt: !3351)
!3355 = !DILocation(line: 42, column: 15, scope: !3240, inlinedAt: !3351)
!3356 = !DILocation(line: 42, column: 10, scope: !3238, inlinedAt: !3351)
!3357 = !DILocation(line: 43, column: 5, scope: !3238, inlinedAt: !3351)
!3358 = !DILocation(line: 222, column: 3, scope: !3346)
!3359 = distinct !DISubprogram(name: "x2realloc", scope: !3228, file: !3228, line: 74, type: !3360, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!49, !49, !559}
!3362 = !{!3363, !3364}
!3363 = !DILocalVariable(name: "p", arg: 1, scope: !3359, file: !3228, line: 74, type: !49)
!3364 = !DILocalVariable(name: "pn", arg: 2, scope: !3359, file: !3228, line: 74, type: !559)
!3365 = !DILocation(line: 74, column: 18, scope: !3359)
!3366 = !DILocation(line: 74, column: 29, scope: !3359)
!3367 = !DILocation(line: 180, column: 19, scope: !556, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 76, column: 10, scope: !3359)
!3369 = !DILocation(line: 180, column: 30, scope: !556, inlinedAt: !3368)
!3370 = !DILocation(line: 180, column: 41, scope: !556, inlinedAt: !3368)
!3371 = !DILocation(line: 182, column: 14, scope: !556, inlinedAt: !3368)
!3372 = !DILocation(line: 182, column: 10, scope: !556, inlinedAt: !3368)
!3373 = !DILocation(line: 184, column: 9, scope: !3311, inlinedAt: !3368)
!3374 = !DILocation(line: 184, column: 7, scope: !556, inlinedAt: !3368)
!3375 = !DILocation(line: 186, column: 13, scope: !3314, inlinedAt: !3368)
!3376 = !DILocation(line: 186, column: 11, scope: !3315, inlinedAt: !3368)
!3377 = !DILocation(line: 210, column: 7, scope: !556, inlinedAt: !3368)
!3378 = !DILocation(line: 51, column: 17, scope: !3268, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 211, column: 10, scope: !556, inlinedAt: !3368)
!3380 = !DILocation(line: 51, column: 27, scope: !3268, inlinedAt: !3379)
!3381 = !DILocation(line: 53, column: 10, scope: !3277, inlinedAt: !3379)
!3382 = !DILocation(line: 205, column: 11, scope: !3323, inlinedAt: !3368)
!3383 = !DILocation(line: 204, column: 11, scope: !3324, inlinedAt: !3368)
!3384 = !DILocation(line: 206, column: 9, scope: !3323, inlinedAt: !3368)
!3385 = !DILocation(line: 207, column: 14, scope: !3324, inlinedAt: !3368)
!3386 = !DILocation(line: 207, column: 18, scope: !3324, inlinedAt: !3368)
!3387 = !DILocation(line: 207, column: 9, scope: !3324, inlinedAt: !3368)
!3388 = !DILocation(line: 53, column: 8, scope: !3277, inlinedAt: !3379)
!3389 = !DILocation(line: 57, column: 7, scope: !3282, inlinedAt: !3379)
!3390 = !DILocation(line: 58, column: 7, scope: !3282, inlinedAt: !3379)
!3391 = !DILocation(line: 61, column: 7, scope: !3268, inlinedAt: !3379)
!3392 = !DILocation(line: 62, column: 8, scope: !3286, inlinedAt: !3379)
!3393 = !DILocation(line: 62, column: 13, scope: !3288, inlinedAt: !3379)
!3394 = !DILocation(line: 62, column: 10, scope: !3286, inlinedAt: !3379)
!3395 = !DILocation(line: 63, column: 5, scope: !3286, inlinedAt: !3379)
!3396 = !DILocation(line: 76, column: 3, scope: !3359)
!3397 = distinct !DISubprogram(name: "xzalloc", scope: !3228, file: !3228, line: 84, type: !3229, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3398)
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "s", arg: 1, scope: !3397, file: !3228, line: 84, type: !94)
!3400 = !DILocation(line: 84, column: 17, scope: !3397)
!3401 = !DILocation(line: 39, column: 17, scope: !3227, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 86, column: 18, scope: !3397)
!3403 = !DILocation(line: 41, column: 13, scope: !3227, inlinedAt: !3402)
!3404 = !DILocation(line: 41, column: 9, scope: !3227, inlinedAt: !3402)
!3405 = !DILocation(line: 42, column: 8, scope: !3238, inlinedAt: !3402)
!3406 = !DILocation(line: 42, column: 15, scope: !3240, inlinedAt: !3402)
!3407 = !DILocation(line: 42, column: 10, scope: !3238, inlinedAt: !3402)
!3408 = !DILocation(line: 43, column: 5, scope: !3238, inlinedAt: !3402)
!3409 = !DILocation(line: 86, column: 10, scope: !3397)
!3410 = !DILocation(line: 86, column: 3, scope: !3397)
!3411 = distinct !DISubprogram(name: "xcalloc", scope: !3228, file: !3228, line: 93, type: !787, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3412)
!3412 = !{!3413, !3414, !3415}
!3413 = !DILocalVariable(name: "n", arg: 1, scope: !3411, file: !3228, line: 93, type: !94)
!3414 = !DILocalVariable(name: "s", arg: 2, scope: !3411, file: !3228, line: 93, type: !94)
!3415 = !DILocalVariable(name: "p", scope: !3411, file: !3228, line: 95, type: !49)
!3416 = !DILocation(line: 93, column: 17, scope: !3411)
!3417 = !DILocation(line: 93, column: 27, scope: !3411)
!3418 = !DILocation(line: 100, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3411, file: !3228, line: 100, column: 7)
!3420 = !DILocation(line: 101, column: 7, scope: !3419)
!3421 = !DILocation(line: 101, column: 18, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3419, file: !3228, discriminator: 1)
!3423 = !DILocation(line: 95, column: 9, scope: !3411)
!3424 = !DILocation(line: 101, column: 16, scope: !3422)
!3425 = !DILocation(line: 100, column: 7, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3411, file: !3228, discriminator: 1)
!3427 = !DILocation(line: 102, column: 5, scope: !3419)
!3428 = !DILocation(line: 103, column: 3, scope: !3411)
!3429 = distinct !DISubprogram(name: "xmemdup", scope: !3228, file: !3228, line: 111, type: !3430, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!49, !507, !94}
!3432 = !{!3433, !3434}
!3433 = !DILocalVariable(name: "p", arg: 1, scope: !3429, file: !3228, line: 111, type: !507)
!3434 = !DILocalVariable(name: "s", arg: 2, scope: !3429, file: !3228, line: 111, type: !94)
!3435 = !DILocation(line: 111, column: 22, scope: !3429)
!3436 = !DILocation(line: 111, column: 32, scope: !3429)
!3437 = !DILocation(line: 39, column: 17, scope: !3227, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 113, column: 18, scope: !3429)
!3439 = !DILocation(line: 41, column: 13, scope: !3227, inlinedAt: !3438)
!3440 = !DILocation(line: 41, column: 9, scope: !3227, inlinedAt: !3438)
!3441 = !DILocation(line: 42, column: 8, scope: !3238, inlinedAt: !3438)
!3442 = !DILocation(line: 42, column: 15, scope: !3240, inlinedAt: !3438)
!3443 = !DILocation(line: 42, column: 10, scope: !3238, inlinedAt: !3438)
!3444 = !DILocation(line: 43, column: 5, scope: !3238, inlinedAt: !3438)
!3445 = !DILocation(line: 113, column: 10, scope: !3429)
!3446 = !DILocation(line: 113, column: 3, scope: !3429)
!3447 = distinct !DISubprogram(name: "xstrdup", scope: !3228, file: !3228, line: 119, type: !2478, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3448)
!3448 = !{!3449}
!3449 = !DILocalVariable(name: "string", arg: 1, scope: !3447, file: !3228, line: 119, type: !6)
!3450 = !DILocation(line: 119, column: 22, scope: !3447)
!3451 = !DILocation(line: 121, column: 27, scope: !3447)
!3452 = !DILocation(line: 121, column: 43, scope: !3447)
!3453 = !DILocation(line: 111, column: 22, scope: !3429, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 121, column: 10, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !3447, file: !3228, discriminator: 1)
!3456 = !DILocation(line: 111, column: 32, scope: !3429, inlinedAt: !3454)
!3457 = !DILocation(line: 39, column: 17, scope: !3227, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 113, column: 18, scope: !3429, inlinedAt: !3454)
!3459 = !DILocation(line: 41, column: 13, scope: !3227, inlinedAt: !3458)
!3460 = !DILocation(line: 41, column: 9, scope: !3227, inlinedAt: !3458)
!3461 = !DILocation(line: 42, column: 8, scope: !3238, inlinedAt: !3458)
!3462 = !DILocation(line: 42, column: 15, scope: !3240, inlinedAt: !3458)
!3463 = !DILocation(line: 42, column: 10, scope: !3238, inlinedAt: !3458)
!3464 = !DILocation(line: 43, column: 5, scope: !3238, inlinedAt: !3458)
!3465 = !DILocation(line: 113, column: 10, scope: !3429, inlinedAt: !3454)
!3466 = !DILocation(line: 121, column: 3, scope: !3447)
!3467 = distinct !DISubprogram(name: "xalloc_die", scope: !3468, file: !3468, line: 32, type: !913, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !568, variables: !4)
!3468 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3469 = !DILocation(line: 34, column: 10, scope: !3467)
!3470 = !DILocation(line: 34, column: 33, scope: !3467)
!3471 = !DILocation(line: 34, column: 3, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3467, file: !3468, discriminator: 1)
!3473 = !DILocation(line: 40, column: 3, scope: !3467)
!3474 = distinct !DISubprogram(name: "rpl_calloc", scope: !3475, file: !3475, line: 42, type: !787, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3476)
!3475 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3476 = !{!3477, !3478, !3479, !3480}
!3477 = !DILocalVariable(name: "n", arg: 1, scope: !3474, file: !3475, line: 42, type: !94)
!3478 = !DILocalVariable(name: "s", arg: 2, scope: !3474, file: !3475, line: 42, type: !94)
!3479 = !DILocalVariable(name: "result", scope: !3474, file: !3475, line: 44, type: !49)
!3480 = !DILocalVariable(name: "bytes", scope: !3481, file: !3475, line: 56, type: !94)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !3475, line: 53, column: 5)
!3482 = distinct !DILexicalBlock(scope: !3474, file: !3475, line: 47, column: 7)
!3483 = !DILocation(line: 42, column: 20, scope: !3474)
!3484 = !DILocation(line: 42, column: 30, scope: !3474)
!3485 = !DILocation(line: 47, column: 9, scope: !3482)
!3486 = !DILocation(line: 47, column: 19, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3482, file: !3475, discriminator: 1)
!3488 = !DILocation(line: 47, column: 14, scope: !3482)
!3489 = !DILocation(line: 56, column: 24, scope: !3481)
!3490 = !DILocation(line: 56, column: 14, scope: !3481)
!3491 = !DILocation(line: 57, column: 17, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3481, file: !3475, line: 57, column: 11)
!3493 = !DILocation(line: 57, column: 21, scope: !3492)
!3494 = !DILocation(line: 57, column: 11, scope: !3481)
!3495 = !DILocation(line: 59, column: 11, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !3475, line: 58, column: 9)
!3497 = !DILocation(line: 59, column: 17, scope: !3496)
!3498 = !DILocation(line: 65, column: 12, scope: !3474)
!3499 = !DILocation(line: 44, column: 9, scope: !3474)
!3500 = !DILocation(line: 72, column: 3, scope: !3474)
!3501 = !DILocation(line: 73, column: 1, scope: !3474)
!3502 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3503, file: !3503, line: 334, type: !3504, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !3518)
!3503 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!94, !3506, !6, !94, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1248, line: 107, baseType: !3509)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1248, line: 95, baseType: !3510)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1248, line: 83, size: 64, elements: !3511)
!3511 = !{!3512, !3513}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3510, file: !1248, line: 85, baseType: !25, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3510, file: !1248, line: 94, baseType: !3514, size: 32, offset: 32)
!3514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3510, file: !1248, line: 86, size: 32, elements: !3515)
!3515 = !{!3516, !3517}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3514, file: !1248, line: 89, baseType: !113, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3514, file: !1248, line: 93, baseType: !721, size: 32)
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3519 = !DILocalVariable(name: "pwc", arg: 1, scope: !3502, file: !3503, line: 334, type: !3506)
!3520 = !DILocalVariable(name: "s", arg: 2, scope: !3502, file: !3503, line: 334, type: !6)
!3521 = !DILocalVariable(name: "n", arg: 3, scope: !3502, file: !3503, line: 334, type: !94)
!3522 = !DILocalVariable(name: "ps", arg: 4, scope: !3502, file: !3503, line: 334, type: !3507)
!3523 = !DILocalVariable(name: "ret", scope: !3502, file: !3503, line: 336, type: !94)
!3524 = !DILocalVariable(name: "wc", scope: !3502, file: !3503, line: 337, type: !1260)
!3525 = !DILocalVariable(name: "uc", scope: !3526, file: !3503, line: 398, type: !494)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3503, line: 397, column: 5)
!3527 = distinct !DILexicalBlock(scope: !3502, file: !3503, line: 396, column: 7)
!3528 = !DILocation(line: 334, column: 23, scope: !3502)
!3529 = !DILocation(line: 334, column: 40, scope: !3502)
!3530 = !DILocation(line: 334, column: 50, scope: !3502)
!3531 = !DILocation(line: 334, column: 64, scope: !3502)
!3532 = !DILocation(line: 337, column: 3, scope: !3502)
!3533 = !DILocation(line: 353, column: 9, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3502, file: !3503, line: 353, column: 7)
!3535 = !DILocation(line: 353, column: 7, scope: !3502)
!3536 = !DILocation(line: 388, column: 9, scope: !3502)
!3537 = !DILocation(line: 336, column: 10, scope: !3502)
!3538 = !DILocation(line: 396, column: 19, scope: !3527)
!3539 = !DILocation(line: 396, column: 31, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3527, file: !3503, discriminator: 1)
!3541 = !DILocation(line: 396, column: 26, scope: !3527)
!3542 = !DILocation(line: 396, column: 41, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3527, file: !3503, discriminator: 2)
!3544 = !DILocation(line: 396, column: 7, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3502, file: !3503, discriminator: 2)
!3546 = !DILocation(line: 398, column: 26, scope: !3526)
!3547 = !DILocation(line: 398, column: 21, scope: !3526)
!3548 = !DILocation(line: 399, column: 14, scope: !3526)
!3549 = !DILocation(line: 399, column: 12, scope: !3526)
!3550 = !DILocation(line: 405, column: 1, scope: !3502)
!3551 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !3552, file: !3552, line: 45, type: !3553, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3579)
!3552 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!50, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !502, line: 146, baseType: !3558)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !709, line: 55, size: 3072, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3565, !3566, !3571, !3572, !3577, !3578}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !3558, file: !709, line: 57, baseType: !712, size: 16)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !3558, file: !709, line: 58, baseType: !714, size: 32, offset: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !3558, file: !709, line: 59, baseType: !717, size: 256, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !3558, file: !709, line: 60, baseType: !721, size: 32, offset: 320)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !3558, file: !709, line: 61, baseType: !717, size: 256, offset: 352)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !3558, file: !709, line: 62, baseType: !122, size: 2048, offset: 608)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !3558, file: !709, line: 63, baseType: !3567, size: 32, offset: 2656)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !709, line: 42, size: 32, elements: !3568)
!3568 = !{!3569, !3570}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !3567, file: !709, line: 45, baseType: !712, size: 16)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !3567, file: !709, line: 46, baseType: !712, size: 16, offset: 16)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !3558, file: !709, line: 70, baseType: !732, size: 32, offset: 2688)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !3558, file: !709, line: 75, baseType: !3573, size: 64, offset: 2720)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !709, line: 71, size: 64, elements: !3574)
!3574 = !{!3575, !3576}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3573, file: !709, line: 73, baseType: !732, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !3573, file: !709, line: 74, baseType: !732, size: 32, offset: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !3558, file: !709, line: 80, baseType: !739, size: 128, offset: 2784)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3558, file: !709, line: 81, baseType: !741, size: 160, offset: 2912)
!3579 = !{!3580, !3581, !3582}
!3580 = !DILocalVariable(name: "ut", arg: 1, scope: !3551, file: !3552, line: 45, type: !3555)
!3581 = !DILocalVariable(name: "p", scope: !3551, file: !3552, line: 47, type: !50)
!3582 = !DILocalVariable(name: "trimmed_name", scope: !3551, file: !3552, line: 47, type: !50)
!3583 = !DILocation(line: 45, column: 42, scope: !3551)
!3584 = !DILocation(line: 49, column: 18, scope: !3551)
!3585 = !DILocation(line: 47, column: 13, scope: !3551)
!3586 = !DILocation(line: 50, column: 26, scope: !3551)
!3587 = !DILocalVariable(name: "__dest", arg: 1, scope: !3588, file: !3589, line: 122, type: !3592)
!3588 = distinct !DISubprogram(name: "strncpy", scope: !3589, file: !3589, line: 122, type: !3590, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3594)
!3589 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!50, !3592, !3593, !94}
!3592 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3593 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3594 = !{!3587, !3595, !3596}
!3595 = !DILocalVariable(name: "__src", arg: 2, scope: !3588, file: !3589, line: 122, type: !3593)
!3596 = !DILocalVariable(name: "__len", arg: 3, scope: !3588, file: !3589, line: 122, type: !94)
!3597 = !DILocation(line: 122, column: 1, scope: !3588, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 50, column: 3, scope: !3551)
!3599 = !DILocation(line: 125, column: 57, scope: !3588, inlinedAt: !3598)
!3600 = !DILocation(line: 125, column: 10, scope: !3588, inlinedAt: !3598)
!3601 = !DILocation(line: 54, column: 3, scope: !3551)
!3602 = !DILocation(line: 54, column: 39, scope: !3551)
!3603 = !DILocation(line: 55, column: 27, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3551, file: !3552, line: 55, column: 3)
!3605 = !DILocation(line: 47, column: 9, scope: !3551)
!3606 = !DILocation(line: 56, column: 21, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !3552, line: 55, column: 3)
!3608 = !DILocation(line: 56, column: 25, scope: !3607)
!3609 = !DILocation(line: 55, column: 25, scope: !3604)
!3610 = !DILocation(line: 56, column: 28, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3607, file: !3552, discriminator: 1)
!3612 = !DILocation(line: 56, column: 34, scope: !3611)
!3613 = !DILocation(line: 55, column: 3, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3604, file: !3552, discriminator: 1)
!3615 = !DILocation(line: 57, column: 13, scope: !3607)
!3616 = distinct !{!3616, !3617, !3618}
!3617 = !DILocation(line: 55, column: 3, scope: !3604)
!3618 = !DILocation(line: 58, column: 5, scope: !3604)
!3619 = !DILocation(line: 59, column: 3, scope: !3551)
!3620 = distinct !DISubprogram(name: "read_utmp", scope: !3552, file: !3552, line: 88, type: !3621, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3625)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!25, !6, !559, !3623, !25}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633}
!3626 = !DILocalVariable(name: "file", arg: 1, scope: !3620, file: !3552, line: 88, type: !6)
!3627 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3620, file: !3552, line: 88, type: !559)
!3628 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3620, file: !3552, line: 88, type: !3623)
!3629 = !DILocalVariable(name: "options", arg: 4, scope: !3620, file: !3552, line: 89, type: !25)
!3630 = !DILocalVariable(name: "n_read", scope: !3620, file: !3552, line: 91, type: !94)
!3631 = !DILocalVariable(name: "n_alloc", scope: !3620, file: !3552, line: 92, type: !94)
!3632 = !DILocalVariable(name: "utmp", scope: !3620, file: !3552, line: 93, type: !3624)
!3633 = !DILocalVariable(name: "u", scope: !3620, file: !3552, line: 94, type: !3624)
!3634 = !DILocation(line: 88, column: 24, scope: !3620)
!3635 = !DILocation(line: 88, column: 38, scope: !3620)
!3636 = !DILocation(line: 88, column: 63, scope: !3620)
!3637 = !DILocation(line: 89, column: 16, scope: !3620)
!3638 = !DILocation(line: 91, column: 10, scope: !3620)
!3639 = !DILocation(line: 92, column: 10, scope: !3620)
!3640 = !DILocation(line: 93, column: 16, scope: !3620)
!3641 = !DILocation(line: 100, column: 3, scope: !3620)
!3642 = !DILocation(line: 102, column: 3, scope: !3620)
!3643 = !DILocation(line: 104, column: 15, scope: !3644)
!3644 = !DILexicalBlockFile(scope: !3620, file: !3552, discriminator: 1)
!3645 = !DILocation(line: 94, column: 16, scope: !3620)
!3646 = !DILocation(line: 104, column: 32, scope: !3644)
!3647 = !DILocation(line: 104, column: 3, scope: !3644)
!3648 = !DILocalVariable(name: "u", arg: 1, scope: !3649, file: !3552, line: 65, type: !3555)
!3649 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !3552, file: !3552, line: 65, type: !3650, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!17, !3555, !25}
!3652 = !{!3648, !3653, !3654}
!3653 = !DILocalVariable(name: "options", arg: 2, scope: !3649, file: !3552, line: 65, type: !25)
!3654 = !DILocalVariable(name: "user_proc", scope: !3649, file: !3552, line: 67, type: !17)
!3655 = !DILocation(line: 65, column: 42, scope: !3649, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 105, column: 9, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3620, file: !3552, line: 105, column: 9)
!3658 = !DILocation(line: 65, column: 49, scope: !3649, inlinedAt: !3656)
!3659 = !DILocation(line: 67, column: 20, scope: !3649, inlinedAt: !3656)
!3660 = !DILocation(line: 67, column: 20, scope: !3661, inlinedAt: !3656)
!3661 = !DILexicalBlockFile(scope: !3649, file: !3552, discriminator: 1)
!3662 = !DILocation(line: 68, column: 42, scope: !3663, inlinedAt: !3656)
!3663 = distinct !DILexicalBlock(scope: !3649, file: !3552, line: 68, column: 7)
!3664 = !DILocation(line: 71, column: 7, scope: !3665, inlinedAt: !3656)
!3665 = distinct !DILexicalBlock(scope: !3649, file: !3552, line: 70, column: 7)
!3666 = !DILocation(line: 72, column: 14, scope: !3667, inlinedAt: !3656)
!3667 = !DILexicalBlockFile(scope: !3665, file: !3552, discriminator: 1)
!3668 = !{!816, !679, i64 4}
!3669 = !DILocation(line: 72, column: 12, scope: !3667, inlinedAt: !3656)
!3670 = !DILocation(line: 73, column: 7, scope: !3665, inlinedAt: !3656)
!3671 = !DILocation(line: 73, column: 11, scope: !3667, inlinedAt: !3656)
!3672 = !DILocation(line: 73, column: 32, scope: !3667, inlinedAt: !3656)
!3673 = !DILocation(line: 73, column: 36, scope: !3667, inlinedAt: !3656)
!3674 = !DILocation(line: 73, column: 39, scope: !3675, inlinedAt: !3656)
!3675 = !DILexicalBlockFile(scope: !3665, file: !3552, discriminator: 2)
!3676 = !DILocation(line: 73, column: 45, scope: !3675, inlinedAt: !3656)
!3677 = !DILocation(line: 70, column: 7, scope: !3661, inlinedAt: !3656)
!3678 = !DILocation(line: 107, column: 20, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3552, line: 107, column: 13)
!3680 = distinct !DILexicalBlock(scope: !3657, file: !3552, line: 106, column: 7)
!3681 = !DILocation(line: 107, column: 13, scope: !3680)
!3682 = !DILocation(line: 180, column: 19, scope: !579, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 108, column: 18, scope: !3679)
!3684 = !DILocation(line: 180, column: 41, scope: !579, inlinedAt: !3683)
!3685 = !DILocation(line: 182, column: 10, scope: !579, inlinedAt: !3683)
!3686 = !DILocation(line: 184, column: 9, scope: !3687, inlinedAt: !3683)
!3687 = distinct !DILexicalBlock(scope: !579, file: !555, line: 184, column: 7)
!3688 = !DILocation(line: 184, column: 7, scope: !579, inlinedAt: !3683)
!3689 = !DILocation(line: 186, column: 13, scope: !3690, inlinedAt: !3683)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !555, line: 186, column: 11)
!3691 = distinct !DILexicalBlock(scope: !3687, file: !555, line: 185, column: 5)
!3692 = !DILocation(line: 186, column: 11, scope: !3691, inlinedAt: !3683)
!3693 = !DILocation(line: 205, column: 11, scope: !3694, inlinedAt: !3683)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !555, line: 204, column: 11)
!3695 = distinct !DILexicalBlock(scope: !3687, file: !555, line: 199, column: 5)
!3696 = !DILocation(line: 204, column: 11, scope: !3695, inlinedAt: !3683)
!3697 = !DILocation(line: 206, column: 9, scope: !3694, inlinedAt: !3683)
!3698 = !DILocation(line: 207, column: 14, scope: !3695, inlinedAt: !3683)
!3699 = !DILocation(line: 207, column: 18, scope: !3695, inlinedAt: !3683)
!3700 = !DILocation(line: 207, column: 9, scope: !3695, inlinedAt: !3683)
!3701 = !DILocation(line: 211, column: 25, scope: !579, inlinedAt: !3683)
!3702 = !DILocation(line: 211, column: 10, scope: !579, inlinedAt: !3683)
!3703 = !DILocation(line: 108, column: 18, scope: !3679)
!3704 = !DILocation(line: 108, column: 11, scope: !3679)
!3705 = !DILocation(line: 110, column: 20, scope: !3680)
!3706 = !DILocation(line: 110, column: 9, scope: !3680)
!3707 = !DILocation(line: 110, column: 26, scope: !3680)
!3708 = !{i64 0, i64 2, !1611, i64 4, i64 4, !678, i64 8, i64 32, !812, i64 40, i64 4, !812, i64 44, i64 32, !812, i64 76, i64 256, !812, i64 332, i64 2, !1611, i64 334, i64 2, !1611, i64 336, i64 4, !678, i64 340, i64 4, !678, i64 344, i64 4, !678, i64 348, i64 16, !812, i64 364, i64 20, !812}
!3709 = distinct !{!3709, !3710, !3711}
!3710 = !DILocation(line: 104, column: 3, scope: !3620)
!3711 = !DILocation(line: 111, column: 7, scope: !3620)
!3712 = !DILocation(line: 113, column: 3, scope: !3620)
!3713 = !DILocation(line: 115, column: 14, scope: !3620)
!3714 = !DILocation(line: 116, column: 13, scope: !3620)
!3715 = !DILocation(line: 118, column: 3, scope: !3620)
!3716 = distinct !DISubprogram(name: "close_stream", scope: !3717, file: !3717, line: 56, type: !3718, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !3760)
!3717 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!25, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !973, line: 49, baseType: !3722)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3005, line: 241, size: 1728, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3722, file: !3005, line: 242, baseType: !25, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3722, file: !3005, line: 247, baseType: !50, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3722, file: !3005, line: 248, baseType: !50, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3722, file: !3005, line: 249, baseType: !50, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3722, file: !3005, line: 250, baseType: !50, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3722, file: !3005, line: 251, baseType: !50, size: 64, offset: 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3722, file: !3005, line: 252, baseType: !50, size: 64, offset: 384)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3722, file: !3005, line: 253, baseType: !50, size: 64, offset: 448)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3722, file: !3005, line: 254, baseType: !50, size: 64, offset: 512)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3722, file: !3005, line: 256, baseType: !50, size: 64, offset: 576)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3722, file: !3005, line: 257, baseType: !50, size: 64, offset: 640)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3722, file: !3005, line: 258, baseType: !50, size: 64, offset: 704)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3722, file: !3005, line: 260, baseType: !3737, size: 64, offset: 768)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3005, line: 156, size: 192, elements: !3739)
!3739 = !{!3740, !3741, !3743}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3738, file: !3005, line: 157, baseType: !3737, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3738, file: !3005, line: 158, baseType: !3742, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3738, file: !3005, line: 162, baseType: !25, size: 32, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3722, file: !3005, line: 262, baseType: !3742, size: 64, offset: 832)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3722, file: !3005, line: 264, baseType: !25, size: 32, offset: 896)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3722, file: !3005, line: 268, baseType: !25, size: 32, offset: 928)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3722, file: !3005, line: 270, baseType: !3031, size: 64, offset: 960)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3722, file: !3005, line: 274, baseType: !93, size: 16, offset: 1024)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3722, file: !3005, line: 275, baseType: !3035, size: 8, offset: 1040)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3722, file: !3005, line: 276, baseType: !3037, size: 8, offset: 1048)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3722, file: !3005, line: 280, baseType: !3039, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3722, file: !3005, line: 289, baseType: !3042, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3722, file: !3005, line: 297, baseType: !49, size: 64, offset: 1216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3722, file: !3005, line: 298, baseType: !49, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3722, file: !3005, line: 299, baseType: !49, size: 64, offset: 1344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3722, file: !3005, line: 300, baseType: !49, size: 64, offset: 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3722, file: !3005, line: 302, baseType: !94, size: 64, offset: 1472)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3722, file: !3005, line: 303, baseType: !25, size: 32, offset: 1536)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3722, file: !3005, line: 305, baseType: !741, size: 160, offset: 1568)
!3760 = !{!3761, !3762, !3764, !3765}
!3761 = !DILocalVariable(name: "stream", arg: 1, scope: !3716, file: !3717, line: 56, type: !3720)
!3762 = !DILocalVariable(name: "some_pending", scope: !3716, file: !3717, line: 58, type: !3763)
!3763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3764 = !DILocalVariable(name: "prev_fail", scope: !3716, file: !3717, line: 59, type: !3763)
!3765 = !DILocalVariable(name: "fclose_fail", scope: !3716, file: !3717, line: 60, type: !3763)
!3766 = !DILocation(line: 56, column: 21, scope: !3716)
!3767 = !DILocation(line: 58, column: 30, scope: !3716)
!3768 = !DILocalVariable(name: "__stream", arg: 1, scope: !3769, file: !839, line: 132, type: !3720)
!3769 = distinct !DISubprogram(name: "ferror_unlocked", scope: !839, file: !839, line: 132, type: !3718, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !3770)
!3770 = !{!3768}
!3771 = !DILocation(line: 132, column: 1, scope: !3769, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 59, column: 27, scope: !3716)
!3773 = !DILocation(line: 134, column: 10, scope: !3769, inlinedAt: !3772)
!3774 = !{!847, !679, i64 0}
!3775 = !DILocation(line: 59, column: 43, scope: !3716)
!3776 = !DILocation(line: 60, column: 29, scope: !3716)
!3777 = !DILocation(line: 60, column: 45, scope: !3716)
!3778 = !DILocation(line: 70, column: 17, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3716, file: !3717, line: 70, column: 7)
!3780 = !DILocation(line: 70, column: 33, scope: !3781)
!3781 = !DILexicalBlockFile(scope: !3779, file: !3717, discriminator: 1)
!3782 = !DILocation(line: 70, column: 53, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !3779, file: !3717, discriminator: 3)
!3784 = !DILocation(line: 70, column: 7, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !3716, file: !3717, discriminator: 3)
!3786 = !DILocation(line: 72, column: 11, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3779, file: !3717, line: 71, column: 5)
!3788 = !DILocation(line: 73, column: 9, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3787, file: !3717, line: 72, column: 11)
!3790 = !DILocation(line: 73, column: 15, scope: !3789)
!3791 = !DILocation(line: 78, column: 1, scope: !3716)
!3792 = distinct !DISubprogram(name: "hard_locale", scope: !3793, file: !3793, line: 38, type: !3794, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3796)
!3793 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!17, !25}
!3796 = !{!3797, !3798, !3799, !3800, !3807, !3808, !3810, !3811, !3813, !3814, !3816}
!3797 = !DILocalVariable(name: "category", arg: 1, scope: !3792, file: !3793, line: 38, type: !25)
!3798 = !DILocalVariable(name: "hard", scope: !3792, file: !3793, line: 40, type: !17)
!3799 = !DILocalVariable(name: "p", scope: !3792, file: !3793, line: 41, type: !6)
!3800 = !DILocalVariable(name: "__s1_len", scope: !3801, file: !3793, line: 47, type: !94)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !3793, line: 47, column: 15)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !3793, line: 47, column: 15)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3793, line: 46, column: 9)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !3793, line: 45, column: 11)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !3793, line: 44, column: 5)
!3806 = distinct !DILexicalBlock(scope: !3792, file: !3793, line: 43, column: 7)
!3807 = !DILocalVariable(name: "__s2_len", scope: !3801, file: !3793, line: 47, type: !94)
!3808 = !DILocalVariable(name: "__s2", scope: !3809, file: !3793, line: 47, type: !509)
!3809 = distinct !DILexicalBlock(scope: !3801, file: !3793, line: 47, column: 15)
!3810 = !DILocalVariable(name: "__result", scope: !3809, file: !3793, line: 47, type: !25)
!3811 = !DILocalVariable(name: "__s1_len", scope: !3812, file: !3793, line: 47, type: !94)
!3812 = distinct !DILexicalBlock(scope: !3802, file: !3793, line: 47, column: 39)
!3813 = !DILocalVariable(name: "__s2_len", scope: !3812, file: !3793, line: 47, type: !94)
!3814 = !DILocalVariable(name: "__s2", scope: !3815, file: !3793, line: 47, type: !509)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3793, line: 47, column: 39)
!3816 = !DILocalVariable(name: "__result", scope: !3815, file: !3793, line: 47, type: !25)
!3817 = !DILocation(line: 38, column: 18, scope: !3792)
!3818 = !DILocation(line: 40, column: 8, scope: !3792)
!3819 = !DILocation(line: 41, column: 19, scope: !3792)
!3820 = !DILocation(line: 41, column: 15, scope: !3792)
!3821 = !DILocation(line: 43, column: 7, scope: !3806)
!3822 = !DILocation(line: 43, column: 7, scope: !3792)
!3823 = !DILocation(line: 47, column: 15, scope: !3801)
!3824 = !DILocation(line: 47, column: 15, scope: !3809)
!3825 = !DILocation(line: 47, column: 15, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3809, file: !3793, discriminator: 2)
!3827 = !DILocation(line: 47, column: 15, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3829, file: !3793, discriminator: 3)
!3829 = distinct !DILexicalBlock(scope: !3809, file: !3793, line: 47, column: 15)
!3830 = !DILocation(line: 47, column: 15, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !3829, file: !3793, discriminator: 2)
!3832 = !DILocation(line: 47, column: 15, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3834, file: !3793, discriminator: 4)
!3834 = distinct !DILexicalBlock(scope: !3829, file: !3793, line: 47, column: 15)
!3835 = !DILocation(line: 47, column: 15, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3801, file: !3793, discriminator: 11)
!3837 = !DILocation(line: 47, column: 36, scope: !3838)
!3838 = !DILexicalBlockFile(scope: !3802, file: !3793, discriminator: 13)
!3839 = !DILocation(line: 47, column: 39, scope: !3812)
!3840 = !DILocation(line: 47, column: 39, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !3812, file: !3793, discriminator: 26)
!3842 = !DILocation(line: 47, column: 59, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !3802, file: !3793, discriminator: 27)
!3844 = !DILocation(line: 47, column: 15, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3803, file: !3793, discriminator: 27)
!3846 = !DILocation(line: 48, column: 13, scope: !3802)
!3847 = !DILocation(line: 71, column: 3, scope: !3792)
!3848 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3849, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!6}
!3851 = !{!3852, !3853, !3854, !3859}
!3852 = !DILocalVariable(name: "codeset", scope: !3848, file: !496, line: 395, type: !6)
!3853 = !DILocalVariable(name: "aliases", scope: !3848, file: !496, line: 396, type: !6)
!3854 = !DILocalVariable(name: "__s1_len", scope: !3855, file: !496, line: 592, type: !94)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !496, line: 592, column: 9)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !496, line: 592, column: 9)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !496, line: 589, column: 3)
!3858 = distinct !DILexicalBlock(scope: !3848, file: !496, line: 589, column: 3)
!3859 = !DILocalVariable(name: "__s2_len", scope: !3855, file: !496, line: 592, type: !94)
!3860 = !DILocalVariable(name: "buf1", scope: !3861, file: !496, line: 196, type: !3928)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !496, line: 194, column: 21)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !496, line: 193, column: 19)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !496, line: 193, column: 19)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !496, line: 188, column: 17)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !496, line: 181, column: 19)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !496, line: 177, column: 13)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !496, line: 173, column: 15)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !496, line: 161, column: 9)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !496, line: 157, column: 11)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !496, line: 130, column: 5)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !496, line: 129, column: 7)
!3872 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3849, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3880, !3881, !3882, !3883, !3924, !3925, !3926, !3860, !3927, !3931, !3932, !3933}
!3874 = !DILocalVariable(name: "cp", scope: !3872, file: !496, line: 126, type: !6)
!3875 = !DILocalVariable(name: "dir", scope: !3870, file: !496, line: 132, type: !6)
!3876 = !DILocalVariable(name: "base", scope: !3870, file: !496, line: 133, type: !6)
!3877 = !DILocalVariable(name: "file_name", scope: !3870, file: !496, line: 134, type: !50)
!3878 = !DILocalVariable(name: "dir_len", scope: !3879, file: !496, line: 144, type: !94)
!3879 = distinct !DILexicalBlock(scope: !3870, file: !496, line: 143, column: 7)
!3880 = !DILocalVariable(name: "base_len", scope: !3879, file: !496, line: 145, type: !94)
!3881 = !DILocalVariable(name: "add_slash", scope: !3879, file: !496, line: 146, type: !25)
!3882 = !DILocalVariable(name: "fd", scope: !3868, file: !496, line: 162, type: !25)
!3883 = !DILocalVariable(name: "fp", scope: !3866, file: !496, line: 178, type: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !973, line: 49, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3005, line: 241, size: 1728, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3886, file: !3005, line: 242, baseType: !25, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3886, file: !3005, line: 247, baseType: !50, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3886, file: !3005, line: 248, baseType: !50, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3886, file: !3005, line: 249, baseType: !50, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3886, file: !3005, line: 250, baseType: !50, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3886, file: !3005, line: 251, baseType: !50, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3886, file: !3005, line: 252, baseType: !50, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3886, file: !3005, line: 253, baseType: !50, size: 64, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3886, file: !3005, line: 254, baseType: !50, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3886, file: !3005, line: 256, baseType: !50, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3886, file: !3005, line: 257, baseType: !50, size: 64, offset: 640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3886, file: !3005, line: 258, baseType: !50, size: 64, offset: 704)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3886, file: !3005, line: 260, baseType: !3901, size: 64, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3005, line: 156, size: 192, elements: !3903)
!3903 = !{!3904, !3905, !3907}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3902, file: !3005, line: 157, baseType: !3901, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3902, file: !3005, line: 158, baseType: !3906, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3902, file: !3005, line: 162, baseType: !25, size: 32, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3886, file: !3005, line: 262, baseType: !3906, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3886, file: !3005, line: 264, baseType: !25, size: 32, offset: 896)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3886, file: !3005, line: 268, baseType: !25, size: 32, offset: 928)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3886, file: !3005, line: 270, baseType: !3031, size: 64, offset: 960)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3886, file: !3005, line: 274, baseType: !93, size: 16, offset: 1024)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3886, file: !3005, line: 275, baseType: !3035, size: 8, offset: 1040)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3886, file: !3005, line: 276, baseType: !3037, size: 8, offset: 1048)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3886, file: !3005, line: 280, baseType: !3039, size: 64, offset: 1088)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3886, file: !3005, line: 289, baseType: !3042, size: 64, offset: 1152)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3886, file: !3005, line: 297, baseType: !49, size: 64, offset: 1216)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3886, file: !3005, line: 298, baseType: !49, size: 64, offset: 1280)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3886, file: !3005, line: 299, baseType: !49, size: 64, offset: 1344)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3886, file: !3005, line: 300, baseType: !49, size: 64, offset: 1408)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3886, file: !3005, line: 302, baseType: !94, size: 64, offset: 1472)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3886, file: !3005, line: 303, baseType: !25, size: 32, offset: 1536)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3886, file: !3005, line: 305, baseType: !741, size: 160, offset: 1568)
!3924 = !DILocalVariable(name: "res_ptr", scope: !3864, file: !496, line: 190, type: !50)
!3925 = !DILocalVariable(name: "res_size", scope: !3864, file: !496, line: 191, type: !94)
!3926 = !DILocalVariable(name: "c", scope: !3861, file: !496, line: 195, type: !25)
!3927 = !DILocalVariable(name: "buf2", scope: !3861, file: !496, line: 197, type: !3928)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3929)
!3929 = !{!3930}
!3930 = !DISubrange(count: 51)
!3931 = !DILocalVariable(name: "l1", scope: !3861, file: !496, line: 198, type: !94)
!3932 = !DILocalVariable(name: "l2", scope: !3861, file: !496, line: 198, type: !94)
!3933 = !DILocalVariable(name: "old_res_ptr", scope: !3861, file: !496, line: 199, type: !50)
!3934 = !DILocation(line: 196, column: 28, scope: !3861, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 589, column: 18, scope: !3858)
!3936 = !DILocation(line: 197, column: 28, scope: !3861, inlinedAt: !3935)
!3937 = !DILocation(line: 403, column: 13, scope: !3848)
!3938 = !DILocation(line: 395, column: 15, scope: !3848)
!3939 = !DILocation(line: 584, column: 15, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3848, file: !496, line: 584, column: 7)
!3941 = !DILocation(line: 584, column: 7, scope: !3848)
!3942 = !DILocation(line: 128, column: 8, scope: !3872, inlinedAt: !3935)
!3943 = !DILocation(line: 126, column: 15, scope: !3872, inlinedAt: !3935)
!3944 = !DILocation(line: 129, column: 10, scope: !3871, inlinedAt: !3935)
!3945 = !DILocation(line: 129, column: 7, scope: !3872, inlinedAt: !3935)
!3946 = !DILocation(line: 138, column: 13, scope: !3870, inlinedAt: !3935)
!3947 = !DILocation(line: 132, column: 19, scope: !3870, inlinedAt: !3935)
!3948 = !DILocation(line: 139, column: 15, scope: !3949, inlinedAt: !3935)
!3949 = distinct !DILexicalBlock(scope: !3870, file: !496, line: 139, column: 11)
!3950 = !DILocation(line: 139, column: 23, scope: !3949, inlinedAt: !3935)
!3951 = !DILocation(line: 139, column: 26, scope: !3952, inlinedAt: !3935)
!3952 = !DILexicalBlockFile(scope: !3949, file: !496, discriminator: 1)
!3953 = !DILocation(line: 139, column: 33, scope: !3952, inlinedAt: !3935)
!3954 = !DILocation(line: 139, column: 11, scope: !3955, inlinedAt: !3935)
!3955 = !DILexicalBlockFile(scope: !3870, file: !496, discriminator: 1)
!3956 = !DILocation(line: 140, column: 9, scope: !3949, inlinedAt: !3935)
!3957 = !DILocation(line: 144, column: 26, scope: !3879, inlinedAt: !3935)
!3958 = !DILocation(line: 144, column: 16, scope: !3879, inlinedAt: !3935)
!3959 = !DILocation(line: 145, column: 16, scope: !3879, inlinedAt: !3935)
!3960 = !DILocation(line: 146, column: 34, scope: !3879, inlinedAt: !3935)
!3961 = !DILocation(line: 146, column: 38, scope: !3879, inlinedAt: !3935)
!3962 = !DILocation(line: 146, column: 42, scope: !3963, inlinedAt: !3935)
!3963 = !DILexicalBlockFile(scope: !3879, file: !496, discriminator: 1)
!3964 = !DILocation(line: 146, column: 41, scope: !3963, inlinedAt: !3935)
!3965 = !DILocation(line: 147, column: 48, scope: !3879, inlinedAt: !3935)
!3966 = !DILocation(line: 147, column: 46, scope: !3879, inlinedAt: !3935)
!3967 = !DILocation(line: 147, column: 69, scope: !3879, inlinedAt: !3935)
!3968 = !DILocation(line: 147, column: 30, scope: !3879, inlinedAt: !3935)
!3969 = !DILocation(line: 134, column: 13, scope: !3870, inlinedAt: !3935)
!3970 = !DILocation(line: 148, column: 13, scope: !3879, inlinedAt: !3935)
!3971 = !DILocation(line: 150, column: 13, scope: !3972, inlinedAt: !3935)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !496, line: 149, column: 11)
!3973 = distinct !DILexicalBlock(scope: !3879, file: !496, line: 148, column: 13)
!3974 = !DILocation(line: 151, column: 17, scope: !3972, inlinedAt: !3935)
!3975 = !DILocation(line: 152, column: 34, scope: !3976, inlinedAt: !3935)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !496, line: 151, column: 17)
!3977 = !DILocation(line: 153, column: 41, scope: !3972, inlinedAt: !3935)
!3978 = !DILocation(line: 153, column: 13, scope: !3972, inlinedAt: !3935)
!3979 = !DILocation(line: 157, column: 11, scope: !3870, inlinedAt: !3935)
!3980 = !DILocation(line: 171, column: 16, scope: !3868, inlinedAt: !3935)
!3981 = !DILocation(line: 162, column: 15, scope: !3868, inlinedAt: !3935)
!3982 = !DILocation(line: 173, column: 18, scope: !3867, inlinedAt: !3935)
!3983 = !DILocation(line: 173, column: 15, scope: !3868, inlinedAt: !3935)
!3984 = !DILocation(line: 180, column: 20, scope: !3866, inlinedAt: !3935)
!3985 = !DILocation(line: 178, column: 21, scope: !3866, inlinedAt: !3935)
!3986 = !DILocation(line: 181, column: 22, scope: !3865, inlinedAt: !3935)
!3987 = !DILocation(line: 181, column: 19, scope: !3866, inlinedAt: !3935)
!3988 = !DILocation(line: 190, column: 25, scope: !3864, inlinedAt: !3935)
!3989 = !DILocation(line: 184, column: 19, scope: !3990, inlinedAt: !3935)
!3990 = distinct !DILexicalBlock(scope: !3865, file: !496, line: 182, column: 17)
!3991 = !DILocation(line: 186, column: 17, scope: !3990, inlinedAt: !3935)
!3992 = !DILocation(line: 191, column: 26, scope: !3864, inlinedAt: !3935)
!3993 = !DILocation(line: 196, column: 23, scope: !3861, inlinedAt: !3935)
!3994 = !DILocation(line: 197, column: 23, scope: !3861, inlinedAt: !3935)
!3995 = !DILocalVariable(name: "__fp", arg: 1, scope: !3996, file: !839, line: 63, type: !3884)
!3996 = distinct !DISubprogram(name: "getc_unlocked", scope: !839, file: !839, line: 63, type: !3997, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!25, !3884}
!3999 = !{!3995}
!4000 = !DILocation(line: 63, column: 22, scope: !3996, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 201, column: 27, scope: !3861, inlinedAt: !3935)
!4002 = !DILocation(line: 65, column: 10, scope: !3996, inlinedAt: !4001)
!4003 = !{!847, !616, i64 8}
!4004 = !{!847, !616, i64 16}
!4005 = !DILocation(line: 65, column: 10, scope: !4006, inlinedAt: !4001)
!4006 = !DILexicalBlockFile(scope: !3996, file: !839, discriminator: 1)
!4007 = !DILocation(line: 65, column: 10, scope: !4008, inlinedAt: !4001)
!4008 = !DILexicalBlockFile(scope: !3996, file: !839, discriminator: 2)
!4009 = !DILocation(line: 65, column: 10, scope: !4010, inlinedAt: !4001)
!4010 = !DILexicalBlockFile(scope: !3996, file: !839, discriminator: 3)
!4011 = !DILocation(line: 195, column: 27, scope: !3861, inlinedAt: !3935)
!4012 = !DILocation(line: 202, column: 27, scope: !3861, inlinedAt: !3935)
!4013 = !DILocation(line: 63, column: 22, scope: !3996, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 210, column: 33, scope: !4015, inlinedAt: !3935)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !496, line: 207, column: 25)
!4016 = distinct !DILexicalBlock(scope: !3861, file: !496, line: 206, column: 27)
!4017 = !DILocation(line: 65, column: 10, scope: !3996, inlinedAt: !4014)
!4018 = !DILocation(line: 65, column: 10, scope: !4006, inlinedAt: !4014)
!4019 = !DILocation(line: 65, column: 10, scope: !4008, inlinedAt: !4014)
!4020 = !DILocation(line: 65, column: 10, scope: !4010, inlinedAt: !4014)
!4021 = !DILocation(line: 210, column: 29, scope: !4022, inlinedAt: !3935)
!4022 = !DILexicalBlockFile(scope: !4015, file: !496, discriminator: 1)
!4023 = distinct !{!4023, !4024, !4025}
!4024 = !DILocation(line: 193, column: 19, scope: !3863)
!4025 = !DILocation(line: 241, column: 21, scope: !3863)
!4026 = !DILocation(line: 216, column: 23, scope: !3861, inlinedAt: !3935)
!4027 = !DILocation(line: 217, column: 27, scope: !4028, inlinedAt: !3935)
!4028 = distinct !DILexicalBlock(scope: !3861, file: !496, line: 217, column: 27)
!4029 = !DILocation(line: 217, column: 64, scope: !4028, inlinedAt: !3935)
!4030 = !DILocation(line: 217, column: 27, scope: !3861, inlinedAt: !3935)
!4031 = !DILocation(line: 219, column: 28, scope: !3861, inlinedAt: !3935)
!4032 = !DILocation(line: 198, column: 30, scope: !3861, inlinedAt: !3935)
!4033 = !DILocation(line: 220, column: 28, scope: !3861, inlinedAt: !3935)
!4034 = !DILocation(line: 198, column: 34, scope: !3861, inlinedAt: !3935)
!4035 = !DILocation(line: 199, column: 29, scope: !3861, inlinedAt: !3935)
!4036 = !DILocation(line: 222, column: 36, scope: !4037, inlinedAt: !3935)
!4037 = distinct !DILexicalBlock(scope: !3861, file: !496, line: 222, column: 27)
!4038 = !DILocation(line: 222, column: 27, scope: !3861, inlinedAt: !3935)
!4039 = !DILocation(line: 225, column: 63, scope: !4040, inlinedAt: !3935)
!4040 = distinct !DILexicalBlock(scope: !4037, file: !496, line: 223, column: 25)
!4041 = !DILocation(line: 225, column: 46, scope: !4040, inlinedAt: !3935)
!4042 = !DILocation(line: 226, column: 25, scope: !4040, inlinedAt: !3935)
!4043 = !DILocation(line: 229, column: 36, scope: !4044, inlinedAt: !3935)
!4044 = distinct !DILexicalBlock(scope: !4037, file: !496, line: 228, column: 25)
!4045 = !DILocation(line: 230, column: 73, scope: !4044, inlinedAt: !3935)
!4046 = !DILocation(line: 230, column: 46, scope: !4044, inlinedAt: !3935)
!4047 = !DILocation(line: 232, column: 35, scope: !4048, inlinedAt: !3935)
!4048 = distinct !DILexicalBlock(scope: !3861, file: !496, line: 232, column: 27)
!4049 = !DILocation(line: 232, column: 27, scope: !3861, inlinedAt: !3935)
!4050 = !DILocation(line: 236, column: 27, scope: !4051, inlinedAt: !3935)
!4051 = distinct !DILexicalBlock(scope: !4048, file: !496, line: 233, column: 25)
!4052 = !DILocation(line: 237, column: 27, scope: !4051, inlinedAt: !3935)
!4053 = !DILocation(line: 239, column: 39, scope: !3861, inlinedAt: !3935)
!4054 = !DILocation(line: 239, column: 50, scope: !3861, inlinedAt: !3935)
!4055 = !DILocation(line: 239, column: 61, scope: !3861, inlinedAt: !3935)
!4056 = !DILocalVariable(name: "__dest", arg: 1, scope: !4057, file: !3589, line: 107, type: !3592)
!4057 = distinct !DISubprogram(name: "strcpy", scope: !3589, file: !3589, line: 107, type: !4058, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!50, !3592, !3593}
!4060 = !{!4056, !4061}
!4061 = !DILocalVariable(name: "__src", arg: 2, scope: !4057, file: !3589, line: 107, type: !3593)
!4062 = !DILocation(line: 107, column: 1, scope: !4057, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 239, column: 23, scope: !3861, inlinedAt: !3935)
!4064 = !DILocation(line: 109, column: 49, scope: !4057, inlinedAt: !4063)
!4065 = !DILocation(line: 109, column: 10, scope: !4057, inlinedAt: !4063)
!4066 = !DILocation(line: 107, column: 1, scope: !4057, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 240, column: 23, scope: !3861, inlinedAt: !3935)
!4068 = !DILocation(line: 109, column: 49, scope: !4057, inlinedAt: !4067)
!4069 = !DILocation(line: 109, column: 10, scope: !4057, inlinedAt: !4067)
!4070 = !DILocation(line: 241, column: 21, scope: !3862, inlinedAt: !3935)
!4071 = !DILocation(line: 242, column: 19, scope: !3864, inlinedAt: !3935)
!4072 = !DILocation(line: 243, column: 32, scope: !4073, inlinedAt: !3935)
!4073 = distinct !DILexicalBlock(scope: !3864, file: !496, line: 243, column: 23)
!4074 = !DILocation(line: 243, column: 23, scope: !3864, inlinedAt: !3935)
!4075 = !DILocation(line: 247, column: 33, scope: !4076, inlinedAt: !3935)
!4076 = distinct !DILexicalBlock(scope: !4073, file: !496, line: 246, column: 21)
!4077 = !DILocation(line: 247, column: 45, scope: !4076, inlinedAt: !3935)
!4078 = !DILocation(line: 253, column: 11, scope: !3868, inlinedAt: !3935)
!4079 = !DILocation(line: 377, column: 23, scope: !3870, inlinedAt: !3935)
!4080 = !DILocation(line: 378, column: 5, scope: !3870, inlinedAt: !3935)
!4081 = !DILocation(line: 396, column: 15, scope: !3848)
!4082 = !DILocation(line: 590, column: 8, scope: !3857)
!4083 = !DILocation(line: 590, column: 17, scope: !3857)
!4084 = !DILocation(line: 589, column: 3, scope: !4085)
!4085 = !DILexicalBlockFile(scope: !3858, file: !496, discriminator: 1)
!4086 = !DILocation(line: 592, column: 9, scope: !3855)
!4087 = !DILocation(line: 592, column: 35, scope: !3856)
!4088 = !DILocation(line: 593, column: 9, scope: !3856)
!4089 = !DILocation(line: 593, column: 24, scope: !4090)
!4090 = !DILexicalBlockFile(scope: !3856, file: !496, discriminator: 1)
!4091 = !DILocation(line: 593, column: 31, scope: !4090)
!4092 = !DILocation(line: 593, column: 34, scope: !4093)
!4093 = !DILexicalBlockFile(scope: !3856, file: !496, discriminator: 2)
!4094 = !DILocation(line: 593, column: 45, scope: !4093)
!4095 = !DILocation(line: 592, column: 9, scope: !4096)
!4096 = !DILexicalBlockFile(scope: !3857, file: !496, discriminator: 1)
!4097 = !DILocation(line: 595, column: 29, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !3856, file: !496, line: 594, column: 7)
!4099 = !DILocation(line: 595, column: 27, scope: !4098)
!4100 = !DILocation(line: 595, column: 46, scope: !4098)
!4101 = !DILocation(line: 596, column: 9, scope: !4098)
!4102 = !DILocation(line: 591, column: 19, scope: !3857)
!4103 = !DILocation(line: 591, column: 36, scope: !3857)
!4104 = !DILocation(line: 591, column: 16, scope: !3857)
!4105 = !DILocation(line: 591, column: 52, scope: !4096)
!4106 = !DILocation(line: 591, column: 69, scope: !3857)
!4107 = !DILocation(line: 591, column: 49, scope: !3857)
!4108 = distinct !{!4108, !4109, !4110}
!4109 = !DILocation(line: 589, column: 3, scope: !3858)
!4110 = !DILocation(line: 597, column: 7, scope: !3858)
!4111 = !DILocation(line: 602, column: 7, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !3848, file: !496, line: 602, column: 7)
!4113 = !DILocation(line: 602, column: 18, scope: !4112)
!4114 = !DILocation(line: 602, column: 7, scope: !3848)
!4115 = !DILocation(line: 612, column: 3, scope: !3848)
!4116 = distinct !DISubprogram(name: "rpl_fclose", scope: !4117, file: !4117, line: 56, type: !4118, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !4160)
!4117 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!25, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !973, line: 49, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3005, line: 241, size: 1728, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4122, file: !3005, line: 242, baseType: !25, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4122, file: !3005, line: 247, baseType: !50, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4122, file: !3005, line: 248, baseType: !50, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4122, file: !3005, line: 249, baseType: !50, size: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4122, file: !3005, line: 250, baseType: !50, size: 64, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4122, file: !3005, line: 251, baseType: !50, size: 64, offset: 320)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4122, file: !3005, line: 252, baseType: !50, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4122, file: !3005, line: 253, baseType: !50, size: 64, offset: 448)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4122, file: !3005, line: 254, baseType: !50, size: 64, offset: 512)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4122, file: !3005, line: 256, baseType: !50, size: 64, offset: 576)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4122, file: !3005, line: 257, baseType: !50, size: 64, offset: 640)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4122, file: !3005, line: 258, baseType: !50, size: 64, offset: 704)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4122, file: !3005, line: 260, baseType: !4137, size: 64, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3005, line: 156, size: 192, elements: !4139)
!4139 = !{!4140, !4141, !4143}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4138, file: !3005, line: 157, baseType: !4137, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4138, file: !3005, line: 158, baseType: !4142, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4138, file: !3005, line: 162, baseType: !25, size: 32, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4122, file: !3005, line: 262, baseType: !4142, size: 64, offset: 832)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4122, file: !3005, line: 264, baseType: !25, size: 32, offset: 896)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4122, file: !3005, line: 268, baseType: !25, size: 32, offset: 928)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4122, file: !3005, line: 270, baseType: !3031, size: 64, offset: 960)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4122, file: !3005, line: 274, baseType: !93, size: 16, offset: 1024)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4122, file: !3005, line: 275, baseType: !3035, size: 8, offset: 1040)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4122, file: !3005, line: 276, baseType: !3037, size: 8, offset: 1048)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4122, file: !3005, line: 280, baseType: !3039, size: 64, offset: 1088)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4122, file: !3005, line: 289, baseType: !3042, size: 64, offset: 1152)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4122, file: !3005, line: 297, baseType: !49, size: 64, offset: 1216)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4122, file: !3005, line: 298, baseType: !49, size: 64, offset: 1280)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4122, file: !3005, line: 299, baseType: !49, size: 64, offset: 1344)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4122, file: !3005, line: 300, baseType: !49, size: 64, offset: 1408)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4122, file: !3005, line: 302, baseType: !94, size: 64, offset: 1472)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4122, file: !3005, line: 303, baseType: !25, size: 32, offset: 1536)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4122, file: !3005, line: 305, baseType: !741, size: 160, offset: 1568)
!4160 = !{!4161, !4162, !4163, !4164}
!4161 = !DILocalVariable(name: "fp", arg: 1, scope: !4116, file: !4117, line: 56, type: !4120)
!4162 = !DILocalVariable(name: "saved_errno", scope: !4116, file: !4117, line: 58, type: !25)
!4163 = !DILocalVariable(name: "fd", scope: !4116, file: !4117, line: 59, type: !25)
!4164 = !DILocalVariable(name: "result", scope: !4116, file: !4117, line: 60, type: !25)
!4165 = !DILocation(line: 56, column: 19, scope: !4116)
!4166 = !DILocation(line: 58, column: 7, scope: !4116)
!4167 = !DILocation(line: 60, column: 7, scope: !4116)
!4168 = !DILocation(line: 63, column: 8, scope: !4116)
!4169 = !DILocation(line: 59, column: 7, scope: !4116)
!4170 = !DILocation(line: 64, column: 10, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4116, file: !4117, line: 64, column: 7)
!4172 = !DILocation(line: 64, column: 7, scope: !4116)
!4173 = !DILocation(line: 65, column: 12, scope: !4171)
!4174 = !DILocation(line: 65, column: 5, scope: !4171)
!4175 = !DILocation(line: 70, column: 9, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4116, file: !4117, line: 70, column: 7)
!4177 = !DILocation(line: 70, column: 23, scope: !4176)
!4178 = !DILocation(line: 70, column: 33, scope: !4179)
!4179 = !DILexicalBlockFile(scope: !4176, file: !4117, discriminator: 1)
!4180 = !DILocation(line: 70, column: 26, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !4176, file: !4117, discriminator: 3)
!4182 = !DILocation(line: 70, column: 59, scope: !4179)
!4183 = !DILocation(line: 71, column: 7, scope: !4176)
!4184 = !DILocation(line: 71, column: 10, scope: !4179)
!4185 = !DILocation(line: 70, column: 7, scope: !4186)
!4186 = !DILexicalBlockFile(scope: !4116, file: !4117, discriminator: 2)
!4187 = !DILocation(line: 98, column: 12, scope: !4116)
!4188 = !DILocation(line: 103, column: 7, scope: !4116)
!4189 = !DILocation(line: 72, column: 19, scope: !4176)
!4190 = !DILocation(line: 103, column: 19, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4116, file: !4117, line: 103, column: 7)
!4192 = !DILocation(line: 105, column: 13, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4191, file: !4117, line: 104, column: 5)
!4194 = !DILocation(line: 107, column: 5, scope: !4193)
!4195 = !DILocation(line: 110, column: 1, scope: !4116)
!4196 = distinct !DISubprogram(name: "rpl_fflush", scope: !4197, file: !4197, line: 127, type: !4198, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4240)
!4197 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!25, !4200}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !973, line: 49, baseType: !4202)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3005, line: 241, size: 1728, elements: !4203)
!4203 = !{!4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4202, file: !3005, line: 242, baseType: !25, size: 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4202, file: !3005, line: 247, baseType: !50, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4202, file: !3005, line: 248, baseType: !50, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4202, file: !3005, line: 249, baseType: !50, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4202, file: !3005, line: 250, baseType: !50, size: 64, offset: 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4202, file: !3005, line: 251, baseType: !50, size: 64, offset: 320)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4202, file: !3005, line: 252, baseType: !50, size: 64, offset: 384)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4202, file: !3005, line: 253, baseType: !50, size: 64, offset: 448)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4202, file: !3005, line: 254, baseType: !50, size: 64, offset: 512)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4202, file: !3005, line: 256, baseType: !50, size: 64, offset: 576)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4202, file: !3005, line: 257, baseType: !50, size: 64, offset: 640)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4202, file: !3005, line: 258, baseType: !50, size: 64, offset: 704)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4202, file: !3005, line: 260, baseType: !4217, size: 64, offset: 768)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3005, line: 156, size: 192, elements: !4219)
!4219 = !{!4220, !4221, !4223}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4218, file: !3005, line: 157, baseType: !4217, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4218, file: !3005, line: 158, baseType: !4222, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4218, file: !3005, line: 162, baseType: !25, size: 32, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4202, file: !3005, line: 262, baseType: !4222, size: 64, offset: 832)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4202, file: !3005, line: 264, baseType: !25, size: 32, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4202, file: !3005, line: 268, baseType: !25, size: 32, offset: 928)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4202, file: !3005, line: 270, baseType: !3031, size: 64, offset: 960)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4202, file: !3005, line: 274, baseType: !93, size: 16, offset: 1024)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4202, file: !3005, line: 275, baseType: !3035, size: 8, offset: 1040)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4202, file: !3005, line: 276, baseType: !3037, size: 8, offset: 1048)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4202, file: !3005, line: 280, baseType: !3039, size: 64, offset: 1088)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4202, file: !3005, line: 289, baseType: !3042, size: 64, offset: 1152)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4202, file: !3005, line: 297, baseType: !49, size: 64, offset: 1216)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4202, file: !3005, line: 298, baseType: !49, size: 64, offset: 1280)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4202, file: !3005, line: 299, baseType: !49, size: 64, offset: 1344)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4202, file: !3005, line: 300, baseType: !49, size: 64, offset: 1408)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4202, file: !3005, line: 302, baseType: !94, size: 64, offset: 1472)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4202, file: !3005, line: 303, baseType: !25, size: 32, offset: 1536)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4202, file: !3005, line: 305, baseType: !741, size: 160, offset: 1568)
!4240 = !{!4241}
!4241 = !DILocalVariable(name: "stream", arg: 1, scope: !4196, file: !4197, line: 127, type: !4200)
!4242 = !DILocation(line: 127, column: 19, scope: !4196)
!4243 = !DILocation(line: 148, column: 14, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4196, file: !4197, line: 148, column: 7)
!4245 = !DILocation(line: 148, column: 22, scope: !4244)
!4246 = !DILocation(line: 148, column: 27, scope: !4247)
!4247 = !DILexicalBlockFile(scope: !4244, file: !4197, discriminator: 1)
!4248 = !DILocation(line: 148, column: 7, scope: !4249)
!4249 = !DILexicalBlockFile(scope: !4196, file: !4197, discriminator: 1)
!4250 = !DILocation(line: 149, column: 12, scope: !4244)
!4251 = !DILocation(line: 149, column: 5, scope: !4244)
!4252 = !DILocalVariable(name: "fp", arg: 1, scope: !4253, file: !4197, line: 40, type: !4200)
!4253 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4197, file: !4197, line: 40, type: !4254, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4256)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !4200}
!4256 = !{!4252}
!4257 = !DILocation(line: 40, column: 48, scope: !4253, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 153, column: 3, scope: !4196)
!4259 = !DILocation(line: 42, column: 11, scope: !4260, inlinedAt: !4258)
!4260 = distinct !DILexicalBlock(scope: !4253, file: !4197, line: 42, column: 7)
!4261 = !DILocation(line: 42, column: 18, scope: !4260, inlinedAt: !4258)
!4262 = !DILocation(line: 42, column: 7, scope: !4253, inlinedAt: !4258)
!4263 = !DILocation(line: 44, column: 5, scope: !4260, inlinedAt: !4258)
!4264 = !DILocation(line: 155, column: 10, scope: !4196)
!4265 = !DILocation(line: 155, column: 3, scope: !4196)
!4266 = !DILocation(line: 229, column: 1, scope: !4196)
!4267 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4268, file: !4268, line: 28, type: !4269, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4312)
!4268 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!25, !4271, !4311, !25}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !973, line: 49, baseType: !4273)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3005, line: 241, size: 1728, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4273, file: !3005, line: 242, baseType: !25, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4273, file: !3005, line: 247, baseType: !50, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4273, file: !3005, line: 248, baseType: !50, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4273, file: !3005, line: 249, baseType: !50, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4273, file: !3005, line: 250, baseType: !50, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4273, file: !3005, line: 251, baseType: !50, size: 64, offset: 320)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4273, file: !3005, line: 252, baseType: !50, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4273, file: !3005, line: 253, baseType: !50, size: 64, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4273, file: !3005, line: 254, baseType: !50, size: 64, offset: 512)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4273, file: !3005, line: 256, baseType: !50, size: 64, offset: 576)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4273, file: !3005, line: 257, baseType: !50, size: 64, offset: 640)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4273, file: !3005, line: 258, baseType: !50, size: 64, offset: 704)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4273, file: !3005, line: 260, baseType: !4288, size: 64, offset: 768)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3005, line: 156, size: 192, elements: !4290)
!4290 = !{!4291, !4292, !4294}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4289, file: !3005, line: 157, baseType: !4288, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4289, file: !3005, line: 158, baseType: !4293, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4289, file: !3005, line: 162, baseType: !25, size: 32, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4273, file: !3005, line: 262, baseType: !4293, size: 64, offset: 832)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4273, file: !3005, line: 264, baseType: !25, size: 32, offset: 896)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4273, file: !3005, line: 268, baseType: !25, size: 32, offset: 928)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4273, file: !3005, line: 270, baseType: !3031, size: 64, offset: 960)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4273, file: !3005, line: 274, baseType: !93, size: 16, offset: 1024)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4273, file: !3005, line: 275, baseType: !3035, size: 8, offset: 1040)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4273, file: !3005, line: 276, baseType: !3037, size: 8, offset: 1048)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4273, file: !3005, line: 280, baseType: !3039, size: 64, offset: 1088)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4273, file: !3005, line: 289, baseType: !3042, size: 64, offset: 1152)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4273, file: !3005, line: 297, baseType: !49, size: 64, offset: 1216)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4273, file: !3005, line: 298, baseType: !49, size: 64, offset: 1280)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4273, file: !3005, line: 299, baseType: !49, size: 64, offset: 1344)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4273, file: !3005, line: 300, baseType: !49, size: 64, offset: 1408)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4273, file: !3005, line: 302, baseType: !94, size: 64, offset: 1472)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4273, file: !3005, line: 303, baseType: !25, size: 32, offset: 1536)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4273, file: !3005, line: 305, baseType: !741, size: 160, offset: 1568)
!4311 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !973, line: 91, baseType: !3031)
!4312 = !{!4313, !4314, !4315, !4316}
!4313 = !DILocalVariable(name: "fp", arg: 1, scope: !4267, file: !4268, line: 28, type: !4271)
!4314 = !DILocalVariable(name: "offset", arg: 2, scope: !4267, file: !4268, line: 28, type: !4311)
!4315 = !DILocalVariable(name: "whence", arg: 3, scope: !4267, file: !4268, line: 28, type: !25)
!4316 = !DILocalVariable(name: "pos", scope: !4317, file: !4268, line: 116, type: !4311)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !4268, line: 112, column: 5)
!4318 = distinct !DILexicalBlock(scope: !4267, file: !4268, line: 51, column: 7)
!4319 = !DILocation(line: 28, column: 15, scope: !4267)
!4320 = !DILocation(line: 28, column: 25, scope: !4267)
!4321 = !DILocation(line: 28, column: 37, scope: !4267)
!4322 = !DILocation(line: 51, column: 11, scope: !4318)
!4323 = !DILocation(line: 51, column: 31, scope: !4318)
!4324 = !DILocation(line: 51, column: 24, scope: !4318)
!4325 = !DILocation(line: 52, column: 7, scope: !4318)
!4326 = !DILocation(line: 52, column: 14, scope: !4327)
!4327 = !DILexicalBlockFile(scope: !4318, file: !4268, discriminator: 1)
!4328 = !DILocation(line: 52, column: 35, scope: !4327)
!4329 = !{!847, !616, i64 32}
!4330 = !DILocation(line: 52, column: 28, scope: !4327)
!4331 = !DILocation(line: 53, column: 7, scope: !4318)
!4332 = !DILocation(line: 53, column: 14, scope: !4327)
!4333 = !{!847, !616, i64 72}
!4334 = !DILocation(line: 53, column: 28, scope: !4327)
!4335 = !DILocation(line: 51, column: 7, scope: !4336)
!4336 = !DILexicalBlockFile(scope: !4267, file: !4268, discriminator: 1)
!4337 = !DILocation(line: 116, column: 26, scope: !4317)
!4338 = !DILocation(line: 116, column: 19, scope: !4339)
!4339 = !DILexicalBlockFile(scope: !4317, file: !4268, discriminator: 1)
!4340 = !DILocation(line: 116, column: 13, scope: !4317)
!4341 = !DILocation(line: 117, column: 15, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4317, file: !4268, line: 117, column: 11)
!4343 = !DILocation(line: 117, column: 11, scope: !4317)
!4344 = !DILocation(line: 127, column: 11, scope: !4317)
!4345 = !DILocation(line: 127, column: 18, scope: !4317)
!4346 = !DILocation(line: 128, column: 11, scope: !4317)
!4347 = !DILocation(line: 128, column: 19, scope: !4317)
!4348 = !{!847, !762, i64 144}
!4349 = !DILocation(line: 159, column: 7, scope: !4317)
!4350 = !DILocation(line: 161, column: 10, scope: !4267)
!4351 = !DILocation(line: 161, column: 3, scope: !4267)
!4352 = !DILocation(line: 162, column: 1, scope: !4267)
