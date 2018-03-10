; ModuleID = 'coreutils-8.27/src/cksum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [FILE]...\0A  or:  %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Print CRC checksum and byte counts of each FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Q. Frank Xia\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@crctab = internal unnamed_addr constant [256 x i64] [i64 0, i64 79764919, i64 159529838, i64 222504665, i64 319059676, i64 398814059, i64 445009330, i64 507990021, i64 638119352, i64 583659535, i64 797628118, i64 726387553, i64 890018660, i64 835552979, i64 1015980042, i64 944750013, i64 1276238704, i64 1221641927, i64 1167319070, i64 1095957929, i64 1595256236, i64 1540665371, i64 1452775106, i64 1381403509, i64 1780037320, i64 1859660671, i64 1671105958, i64 1733955601, i64 2031960084, i64 2111593891, i64 1889500026, i64 1952343757, i64 2552477408, i64 2632100695, i64 2443283854, i64 2506133561, i64 2334638140, i64 2414271883, i64 2191915858, i64 2254759653, i64 3190512472, i64 3135915759, i64 3081330742, i64 3009969537, i64 2905550212, i64 2850959411, i64 2762807018, i64 2691435357, i64 3560074640, i64 3505614887, i64 3719321342, i64 3648080713, i64 3342211916, i64 3287746299, i64 3467911202, i64 3396681109, i64 4063920168, i64 4143685023, i64 4223187782, i64 4286162673, i64 3779000052, i64 3858754371, i64 3904687514, i64 3967668269, i64 881225847, i64 809987520, i64 1023691545, i64 969234094, i64 662832811, i64 591600412, i64 771767749, i64 717299826, i64 311336399, i64 374308984, i64 453813921, i64 533576470, i64 25881363, i64 88864420, i64 134795389, i64 214552010, i64 2023205639, i64 2086057648, i64 1897238633, i64 1976864222, i64 1804852699, i64 1867694188, i64 1645340341, i64 1724971778, i64 1587496639, i64 1516133128, i64 1461550545, i64 1406951526, i64 1302016099, i64 1230646740, i64 1142491917, i64 1087903418, i64 2896545431, i64 2825181984, i64 2770861561, i64 2716262478, i64 3215044683, i64 3143675388, i64 3055782693, i64 3001194130, i64 2326604591, i64 2389456536, i64 2200899649, i64 2280525302, i64 2578013683, i64 2640855108, i64 2418763421, i64 2498394922, i64 3769900519, i64 3832873040, i64 3912640137, i64 3992402750, i64 4088425275, i64 4151408268, i64 4197601365, i64 4277358050, i64 3334271071, i64 3263032808, i64 3476998961, i64 3422541446, i64 3585640067, i64 3514407732, i64 3694837229, i64 3640369242, i64 1762451694, i64 1842216281, i64 1619975040, i64 1682949687, i64 2047383090, i64 2127137669, i64 1938468188, i64 2001449195, i64 1325665622, i64 1271206113, i64 1183200824, i64 1111960463, i64 1543535498, i64 1489069629, i64 1434599652, i64 1363369299, i64 622672798, i64 568075817, i64 748617968, i64 677256519, i64 907627842, i64 853037301, i64 1067152940, i64 995781531, i64 51762726, i64 131386257, i64 177728840, i64 240578815, i64 269590778, i64 349224269, i64 429104020, i64 491947555, i64 4046411278, i64 4126034873, i64 4172115296, i64 4234965207, i64 3794477266, i64 3874110821, i64 3953728444, i64 4016571915, i64 3609705398, i64 3555108353, i64 3735388376, i64 3664026991, i64 3290680682, i64 3236090077, i64 3449943556, i64 3378572211, i64 3174993278, i64 3120533705, i64 3032266256, i64 2961025959, i64 2923101090, i64 2868635157, i64 2813903052, i64 2742672763, i64 2604032198, i64 2683796849, i64 2461293480, i64 2524268063, i64 2284983834, i64 2364738477, i64 2175806836, i64 2238787779, i64 1569362073, i64 1498123566, i64 1409854455, i64 1355396672, i64 1317987909, i64 1246755826, i64 1192025387, i64 1137557660, i64 2072149281, i64 2135122070, i64 1912620623, i64 1992383480, i64 1753615357, i64 1816598090, i64 1627664531, i64 1707420964, i64 295390185, i64 358241886, i64 404320391, i64 483945776, i64 43990325, i64 106832002, i64 186451547, i64 266083308, i64 932423249, i64 861060070, i64 1041341759, i64 986742920, i64 613929101, i64 542559546, i64 756411363, i64 701822548, i64 3316196985, i64 3244833742, i64 3425377559, i64 3370778784, i64 3601682597, i64 3530312978, i64 3744426955, i64 3689838204, i64 3819031489, i64 3881883254, i64 3928223919, i64 4007849240, i64 4037393693, i64 4100235434, i64 4180117107, i64 4259748804, i64 2310601993, i64 2373574846, i64 2151335527, i64 2231098320, i64 2596047829, i64 2659030626, i64 2470359227, i64 2550115596, i64 2947551409, i64 2876312838, i64 2788305887, i64 2733848168, i64 3165939309, i64 3094707162, i64 3040238851, i64 2985771188], align 16, !dbg !0
@.str.29 = private unnamed_addr constant [18 x i8] c"%s: file too long\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%u %s %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%u %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"-: %s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), align 8, !dbg !83
@.str.11 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !89
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !94
@.str.14 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.15 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !97
@opterr = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.35, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.36, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !104
@.str.1.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !122
@.str.41 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.43 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.53, i32 0, i32 0), i8* null], align 16, !dbg !130
@.str.44 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.45 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.46 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.47 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.48 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.49 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.50 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.51 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.52 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.53 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !158
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !165
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !177
@.str.11.54 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.55 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.56 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !182
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !189
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !179
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !191
@.str.61 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.64 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.65 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.66 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.67 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.68 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.69 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.70 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.71 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.72 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.73 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.76 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.77 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.78 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.79 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.80 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !197
@.str.1.91 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !206
@.str.3.111 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.112 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.113 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.114 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.115 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !611 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !615, metadata !616), !dbg !617
  %2 = icmp eq i32 %0, 0, !dbg !618
  br i1 %2, label %8, label %3, !dbg !620

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !621, !tbaa !624
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !621
  %6 = load i8*, i8** @program_name, align 8, !dbg !621, !tbaa !624
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !628
  br label %36, !dbg !630

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !632
  %10 = load i8*, i8** @program_name, align 8, !dbg !632, !tbaa !624
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !634
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !636
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !624
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !637
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !638
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !624
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !639
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !640
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !624
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !641
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !54, metadata !616) #10, !dbg !642
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !54, metadata !616) #10, !dbg !642
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !644
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !645
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !647
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !65, metadata !616) #10, !dbg !648
  %24 = icmp eq i8* %23, null, !dbg !649
  br i1 %24, label %31, label %25, !dbg !650

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #13, !dbg !651
  %27 = icmp eq i32 %26, 0, !dbg !651
  br i1 %27, label %31, label %28, !dbg !653

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !655
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !657
  br label %31, !dbg !659

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !660
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !661
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !662
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !663
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #14, !dbg !664
  unreachable, !dbg !664
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !665 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !670, metadata !616), !dbg !674
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !671, metadata !616), !dbg !675
  %3 = load i8*, i8** %1, align 8, !dbg !676, !tbaa !624
  tail call void @set_program_name(i8* %3) #10, !dbg !677
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !678
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !679
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !680
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !681
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !624
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #10, !dbg !683
  %10 = load i8*, i8** @Version, align 8, !dbg !684, !tbaa !624
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %10, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !685
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !686
  %12 = icmp eq i32 %11, -1, !dbg !688
  br i1 %12, label %14, label %13, !dbg !689

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !690
  unreachable, !dbg !690

; <label>:14:                                     ; preds = %2
  store i1 false, i1* @have_read_stdin, align 1
  %15 = load i32, i32* @optind, align 4, !dbg !691, !tbaa !693
  %16 = icmp eq i32 %15, %0, !dbg !695
  br i1 %16, label %21, label %17, !dbg !696

; <label>:17:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !673, metadata !616), !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !672, metadata !616), !dbg !698
  %18 = icmp slt i32 %15, %0, !dbg !699
  br i1 %18, label %19, label %36, !dbg !704

; <label>:19:                                     ; preds = %17
  %20 = sext i32 %15 to i64, !dbg !706
  br label %24, !dbg !706

; <label>:21:                                     ; preds = %14
  %22 = tail call fastcc zeroext i1 @cksum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i1 zeroext false), !dbg !707
  %23 = zext i1 %22 to i8, !dbg !708
  tail call void @llvm.dbg.value(metadata i8 %23, i64 0, metadata !673, metadata !616), !dbg !697
  br label %36, !dbg !709

; <label>:24:                                     ; preds = %24, %19
  %25 = phi i64 [ %20, %19 ], [ %32, %24 ]
  %26 = phi i8 [ 1, %19 ], [ %31, %24 ]
  %27 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !706
  %28 = load i8*, i8** %27, align 8, !dbg !706, !tbaa !624
  %29 = tail call fastcc zeroext i1 @cksum(i8* %28, i1 zeroext true), !dbg !710
  %30 = zext i1 %29 to i8, !dbg !710
  %31 = and i8 %30, %26, !dbg !711
  tail call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !673, metadata !616), !dbg !697
  %32 = add nsw i64 %25, 1, !dbg !712
  tail call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !673, metadata !616), !dbg !697
  %33 = trunc i64 %32 to i32, !dbg !699
  %34 = icmp eq i32 %33, %0, !dbg !699
  br i1 %34, label %35, label %24, !dbg !704, !llvm.loop !714

; <label>:35:                                     ; preds = %24
  br label %36, !dbg !697

; <label>:36:                                     ; preds = %35, %17, %21
  %37 = phi i8 [ %23, %21 ], [ 1, %17 ], [ %31, %35 ]
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !673, metadata !616), !dbg !697
  %38 = load i1, i1* @have_read_stdin, align 1
  br i1 %38, label %39, label %46, !dbg !717

; <label>:39:                                     ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !719, !tbaa !624
  %41 = tail call i32 @rpl_fclose(%struct._IO_FILE* %40) #10, !dbg !721
  %42 = icmp eq i32 %41, -1, !dbg !722
  br i1 %42, label %43, label %46, !dbg !723

; <label>:43:                                     ; preds = %39
  %44 = tail call i32* @__errno_location() #1, !dbg !725
  %45 = load i32, i32* %44, align 4, !dbg !725, !tbaa !693
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !726
  unreachable, !dbg !725

; <label>:46:                                     ; preds = %39, %36
  %47 = and i8 %37, 1, !dbg !727
  %48 = xor i8 %47, 1, !dbg !727
  %49 = zext i8 %48 to i32, !dbg !727
  ret i32 %49, !dbg !728
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cksum(i8*, i1 zeroext) unnamed_addr #6 !dbg !729 {
  %3 = alloca [65536 x i8], align 16
  %4 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !733, metadata !616), !dbg !827
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !734, metadata !828), !dbg !829
  %5 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 0, !dbg !830
  call void @llvm.lifetime.start(i64 65536, i8* nonnull %5) #10, !dbg !830
  tail call void @llvm.dbg.declare(metadata [65536 x i8]* %3, metadata !735, metadata !616), !dbg !831
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !739, metadata !616), !dbg !832
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !740, metadata !616), !dbg !833
  %6 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0, !dbg !834
  call void @llvm.lifetime.start(i64 21, i8* nonnull %6) #10, !dbg !834
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %4, metadata !797, metadata !616), !dbg !835
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !805, metadata !616), !dbg !836
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !806, metadata !616), !dbg !837
  %7 = load i8, i8* %0, align 1, !dbg !838, !tbaa !840
  %8 = icmp eq i8 %7, 45, !dbg !841
  br i1 %8, label %9, label %15, !dbg !844

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !846
  %11 = load i8, i8* %10, align 1, !dbg !846, !tbaa !840
  %12 = icmp eq i8 %11, 0, !dbg !849
  br i1 %12, label %13, label %15, !dbg !851

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !853, !tbaa !624
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !742, metadata !616), !dbg !855
  store i1 true, i1* @have_read_stdin, align 1
  br label %22, !dbg !856

; <label>:15:                                     ; preds = %2, %9
  %16 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)), !dbg !857
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, i64 0, metadata !742, metadata !616), !dbg !855
  %17 = icmp eq %struct._IO_FILE* %16, null, !dbg !859
  br i1 %17, label %18, label %22, !dbg !861

; <label>:18:                                     ; preds = %15
  %19 = tail call i32* @__errno_location() #1, !dbg !862
  %20 = load i32, i32* %19, align 4, !dbg !862, !tbaa !693
  %21 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !864
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %21) #10, !dbg !866
  br label %162, !dbg !868

; <label>:22:                                     ; preds = %15, %13
  %23 = phi %struct._IO_FILE* [ %14, %13 ], [ %16, %15 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, i64 0, metadata !742, metadata !616), !dbg !855
  tail call void @fadvise(%struct._IO_FILE* %23, i32 2) #10, !dbg !869
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 0
  %25 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 1
  br label %26, !dbg !870

; <label>:26:                                     ; preds = %89, %22
  %27 = phi i64 [ 0, %22 ], [ %34, %89 ]
  %28 = phi i64 [ 0, %22 ], [ %90, %89 ]
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !740, metadata !616), !dbg !833
  %29 = call i64 @fread_unlocked(i8* nonnull %5, i64 1, i64 65536, %struct._IO_FILE* %23) #10, !dbg !871
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !741, metadata !616), !dbg !873
  %30 = icmp eq i64 %29, 0, !dbg !874
  br i1 %30, label %31, label %33, !dbg !875

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %24, align 8, !tbaa !876
  br label %95, !dbg !875

; <label>:33:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !809, metadata !616), !dbg !880
  %34 = add i64 %29, %27, !dbg !881
  %35 = icmp ult i64 %34, %27, !dbg !883
  br i1 %35, label %59, label %36, !dbg !884

; <label>:36:                                     ; preds = %33
  %37 = and i64 %29, 1, !dbg !885
  %38 = icmp eq i64 %37, 0, !dbg !885
  br i1 %38, label %51, label %39, !dbg !885

; <label>:39:                                     ; preds = %36
  br label %40, !dbg !885

; <label>:40:                                     ; preds = %39
  %41 = add i64 %29, -1, !dbg !885
  %42 = shl i64 %28, 8, !dbg !887
  %43 = lshr i64 %28, 24, !dbg !888
  call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !809, metadata !616), !dbg !880
  %44 = load i8, i8* %5, align 16, !dbg !889, !tbaa !840
  %45 = zext i8 %44 to i64, !dbg !889
  %46 = and i64 %43, 255, !dbg !890
  %47 = xor i64 %45, %46, !dbg !890
  %48 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %47, !dbg !891
  %49 = load i64, i64* %48, align 8, !dbg !891, !tbaa !892
  %50 = xor i64 %49, %42, !dbg !893
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !741, metadata !616), !dbg !873
  call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !809, metadata !616), !dbg !880
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !741, metadata !616), !dbg !873
  br label %51, !dbg !894

; <label>:51:                                     ; preds = %36, %40
  %52 = phi i64 [ %50, %40 ], [ undef, %36 ]
  %53 = phi i64 [ %50, %40 ], [ %28, %36 ]
  %54 = phi i64 [ %41, %40 ], [ %29, %36 ]
  %55 = phi i8* [ %25, %40 ], [ %5, %36 ]
  br label %56, !dbg !885

; <label>:56:                                     ; preds = %51
  %57 = icmp eq i64 %29, 1, !dbg !885
  br i1 %57, label %89, label %58, !dbg !885

; <label>:58:                                     ; preds = %56
  br label %62, !dbg !885

; <label>:59:                                     ; preds = %33
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !895
  %61 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !896
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %60, i8* %61) #10, !dbg !898
  unreachable, !dbg !895

; <label>:62:                                     ; preds = %62, %58
  %63 = phi i64 [ %53, %58 ], [ %86, %62 ]
  %64 = phi i64 [ %54, %58 ], [ %76, %62 ]
  %65 = phi i8* [ %55, %58 ], [ %79, %62 ]
  %66 = shl i64 %63, 8, !dbg !887
  %67 = lshr i64 %63, 24, !dbg !888
  %68 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !900
  call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !809, metadata !616), !dbg !880
  %69 = load i8, i8* %65, align 1, !dbg !889, !tbaa !840
  %70 = zext i8 %69 to i64, !dbg !889
  %71 = and i64 %67, 255, !dbg !890
  %72 = xor i64 %70, %71, !dbg !890
  %73 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %72, !dbg !891
  %74 = load i64, i64* %73, align 8, !dbg !891, !tbaa !892
  %75 = xor i64 %74, %66, !dbg !893
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !809, metadata !616), !dbg !880
  %76 = add i64 %64, -2, !dbg !885
  %77 = shl i64 %75, 8, !dbg !887
  %78 = lshr i64 %75, 24, !dbg !888
  %79 = getelementptr inbounds i8, i8* %65, i64 2, !dbg !900
  call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !809, metadata !616), !dbg !880
  %80 = load i8, i8* %68, align 1, !dbg !889, !tbaa !840
  %81 = zext i8 %80 to i64, !dbg !889
  %82 = and i64 %78, 255, !dbg !890
  %83 = xor i64 %81, %82, !dbg !890
  %84 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %83, !dbg !891
  %85 = load i64, i64* %84, align 8, !dbg !891, !tbaa !892
  %86 = xor i64 %85, %77, !dbg !893
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !809, metadata !616), !dbg !880
  %87 = icmp eq i64 %76, 0, !dbg !894
  br i1 %87, label %88, label %62, !dbg !894, !llvm.loop !901

; <label>:88:                                     ; preds = %62
  br label %89, !dbg !904

; <label>:89:                                     ; preds = %56, %88
  %90 = phi i64 [ %52, %56 ], [ %86, %88 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, i64 0, metadata !910, metadata !616), !dbg !904
  %91 = load i32, i32* %24, align 8, !dbg !913, !tbaa !876
  %92 = and i32 %91, 16, !dbg !913
  %93 = icmp eq i32 %92, 0, !dbg !914
  br i1 %93, label %26, label %94, !llvm.loop !915

; <label>:94:                                     ; preds = %89
  br label %95, !dbg !832

; <label>:95:                                     ; preds = %94, %31
  %96 = phi i32 [ %32, %31 ], [ %91, %94 ], !dbg !917
  %97 = phi i64 [ %27, %31 ], [ %34, %94 ]
  %98 = phi i64 [ %28, %31 ], [ %90, %94 ]
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !740, metadata !616), !dbg !833
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, i64 0, metadata !920, metadata !616), !dbg !922
  %99 = and i32 %96, 32, !dbg !917
  %100 = icmp eq i32 %99, 0, !dbg !923
  br i1 %100, label %113, label %101, !dbg !924

; <label>:101:                                    ; preds = %95
  %102 = tail call i32* @__errno_location() #1, !dbg !925
  %103 = load i32, i32* %102, align 4, !dbg !925, !tbaa !693
  %104 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !926
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %104) #10, !dbg !928
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !816, metadata !616), !dbg !930
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !817, metadata !616), !dbg !931
  %105 = load i8, i8* %0, align 1, !dbg !932, !tbaa !840
  %106 = icmp eq i8 %105, 45, !dbg !934
  br i1 %106, label %107, label %111, !dbg !937

; <label>:107:                                    ; preds = %101
  %108 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !939
  %109 = load i8, i8* %108, align 1, !dbg !939, !tbaa !840
  %110 = icmp eq i8 %109, 0, !dbg !942
  br i1 %110, label %162, label %111, !dbg !944

; <label>:111:                                    ; preds = %101, %107
  %112 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %23) #10, !dbg !946
  br label %162, !dbg !946

; <label>:113:                                    ; preds = %95
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !823, metadata !616), !dbg !947
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !824, metadata !616), !dbg !948
  %114 = load i8, i8* %0, align 1, !dbg !949, !tbaa !840
  %115 = icmp eq i8 %114, 45, !dbg !951
  br i1 %115, label %116, label %120, !dbg !954

; <label>:116:                                    ; preds = %113
  %117 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !956
  %118 = load i8, i8* %117, align 1, !dbg !956, !tbaa !840
  %119 = icmp eq i8 %118, 0, !dbg !959
  br i1 %119, label %127, label %120, !dbg !961

; <label>:120:                                    ; preds = %113, %116
  %121 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %23) #10, !dbg !963
  %122 = icmp eq i32 %121, -1, !dbg !965
  br i1 %122, label %123, label %127, !dbg !966

; <label>:123:                                    ; preds = %120
  %124 = tail call i32* @__errno_location() #1, !dbg !968
  %125 = load i32, i32* %124, align 4, !dbg !968, !tbaa !693
  %126 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !970
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %126) #10, !dbg !972
  br label %162, !dbg !974

; <label>:127:                                    ; preds = %120, %116
  %128 = call i8* @umaxtostr(i64 %97, i8* nonnull %6) #10, !dbg !975
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !801, metadata !616), !dbg !976
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !740, metadata !616), !dbg !833
  %129 = icmp eq i64 %97, 0, !dbg !977
  br i1 %129, label %144, label %130, !dbg !977

; <label>:130:                                    ; preds = %127
  br label %131, !dbg !980

; <label>:131:                                    ; preds = %130, %131
  %132 = phi i64 [ %140, %131 ], [ %98, %130 ]
  %133 = phi i64 [ %141, %131 ], [ %97, %130 ]
  %134 = shl i64 %132, 8, !dbg !980
  %135 = lshr i64 %132, 24, !dbg !982
  %136 = xor i64 %135, %133, !dbg !983
  %137 = and i64 %136, 255, !dbg !984
  %138 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %137, !dbg !985
  %139 = load i64, i64* %138, align 8, !dbg !985, !tbaa !892
  %140 = xor i64 %139, %134, !dbg !986
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !739, metadata !616), !dbg !832
  %141 = lshr i64 %133, 8, !dbg !987
  call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !740, metadata !616), !dbg !833
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !739, metadata !616), !dbg !832
  call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !740, metadata !616), !dbg !833
  %142 = icmp eq i64 %141, 0, !dbg !977
  br i1 %142, label %143, label %131, !dbg !977, !llvm.loop !989

; <label>:143:                                    ; preds = %131
  br label %144

; <label>:144:                                    ; preds = %143, %127
  %145 = phi i64 [ %98, %127 ], [ %140, %143 ]
  %146 = trunc i64 %145 to i32
  %147 = xor i32 %146, -1
  br i1 %1, label %148, label %150, !dbg !992

; <label>:148:                                    ; preds = %144
  %149 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 %147, i8* %128, i8* %0) #10, !dbg !993
  br label %152, !dbg !993

; <label>:150:                                    ; preds = %144
  %151 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %147, i8* %128) #10, !dbg !995
  br label %152

; <label>:152:                                    ; preds = %150, %148
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !996, !tbaa !624
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %153, i64 0, metadata !920, metadata !616), !dbg !998
  %154 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %153, i64 0, i32 0, !dbg !1000
  %155 = load i32, i32* %154, align 8, !dbg !1000, !tbaa !876
  %156 = and i32 %155, 32, !dbg !1000
  %157 = icmp eq i32 %156, 0, !dbg !996
  br i1 %157, label %162, label %158, !dbg !1001

; <label>:158:                                    ; preds = %152
  %159 = tail call i32* @__errno_location() #1, !dbg !1002
  %160 = load i32, i32* %159, align 4, !dbg !1002, !tbaa !693
  %161 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1003
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %161) #10, !dbg !1005
  unreachable, !dbg !1002

; <label>:162:                                    ; preds = %152, %107, %111, %123, %18
  %163 = phi i1 [ false, %123 ], [ false, %18 ], [ false, %111 ], [ false, %107 ], [ true, %152 ]
  call void @llvm.lifetime.end(i64 21, i8* nonnull %6) #10, !dbg !1007
  call void @llvm.lifetime.end(i64 65536, i8* nonnull %5) #10, !dbg !1007
  ret i1 %163, !dbg !1007
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1008 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1010, metadata !616), !dbg !1011
  store i8* %0, i8** @file_name, align 8, !dbg !1012, !tbaa !624
  ret void, !dbg !1013
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1014 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1018, metadata !828), !dbg !1019
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1020, !tbaa !1021
  ret void, !dbg !1023
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1024 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1031, !tbaa !624
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1032
  %3 = icmp eq i32 %2, 0, !dbg !1033
  br i1 %3, label %21, label %4, !dbg !1034

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1035, !tbaa !1021, !range !1037
  %6 = icmp eq i8 %5, 0, !dbg !1035
  %7 = tail call i32* @__errno_location() #1, !dbg !1038
  br i1 %6, label %11, label %8, !dbg !1040

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1041, !tbaa !693
  %10 = icmp eq i32 %9, 32, !dbg !1043
  br i1 %10, label %21, label %11, !dbg !1044

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !1046
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1028, metadata !616), !dbg !1047
  %13 = load i8*, i8** @file_name, align 8, !dbg !1048, !tbaa !624
  %14 = icmp eq i8* %13, null, !dbg !1048
  %15 = load i32, i32* %7, align 4, !tbaa !693
  br i1 %14, label %18, label %16, !dbg !1049

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1050
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.15, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1052
  br label %19, !dbg !1054

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.16, i64 0, i64 0), i8* %12) #10, !dbg !1055
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1056, !tbaa !693
  tail call void @_exit(i32 %20) #14, !dbg !1057
  unreachable, !dbg !1057

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1058, !tbaa !624
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1060
  %24 = icmp eq i32 %23, 0, !dbg !1061
  br i1 %24, label %27, label %25, !dbg !1062

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1063, !tbaa !693
  tail call void @_exit(i32 %26) #14, !dbg !1064
  unreachable, !dbg !1064

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1065
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1066 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1073, metadata !616), !dbg !1079
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1074, metadata !616), !dbg !1080
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1075, metadata !616), !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1076, metadata !616), !dbg !1082
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1083
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1077, metadata !616), !dbg !1083
  ret void, !dbg !1084
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1085 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1129, metadata !616), !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1130, metadata !616), !dbg !1132
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1133
  br i1 %3, label %7, label %4, !dbg !1135

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1136
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1073, metadata !616) #10, !dbg !1137
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1074, metadata !616) #10, !dbg !1140
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1075, metadata !616) #10, !dbg !1141
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1076, metadata !616) #10, !dbg !1142
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1143
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1077, metadata !616) #10, !dbg !1143
  br label %7, !dbg !1144

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1145
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1146 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1151, metadata !616), !dbg !1154
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1152, metadata !616), !dbg !1155
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1156
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1153, metadata !616), !dbg !1157
  store i8 0, i8* %3, align 1, !dbg !1158, !tbaa !840
  br label %4, !dbg !1159

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1153, metadata !616), !dbg !1157
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1151, metadata !616), !dbg !1154
  %7 = urem i64 %5, 10, !dbg !1160
  %8 = trunc i64 %7 to i8, !dbg !1163
  %9 = or i8 %8, 48, !dbg !1163
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1164
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1153, metadata !616), !dbg !1157
  store i8 %9, i8* %10, align 1, !dbg !1165, !tbaa !840
  %11 = udiv i64 %5, 10, !dbg !1166
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1151, metadata !616), !dbg !1154
  %12 = icmp ugt i64 %5, 9, !dbg !1167
  br i1 %12, label %4, label %13, !dbg !1168, !llvm.loop !1170

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1153, metadata !616), !dbg !1157
  ret i8* %10, !dbg !1173
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !1174 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1179, metadata !616), !dbg !1203
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1180, metadata !616), !dbg !1204
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1181, metadata !616), !dbg !1205
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1182, metadata !616), !dbg !1206
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1183, metadata !616), !dbg !1207
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !1184, metadata !616), !dbg !1208
  %8 = load i32, i32* @opterr, align 4, !dbg !1209, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1186, metadata !616), !dbg !1210
  store i32 0, i32* @opterr, align 4, !dbg !1211, !tbaa !693
  %9 = icmp eq i32 %0, 2, !dbg !1212
  br i1 %9, label %10, label %17, !dbg !1213

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !1214
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1185, metadata !616), !dbg !1216
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1217

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !1219
  br label %17, !dbg !1220

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1221
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !1221
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1187, metadata !616), !dbg !1222
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1223
  call void @llvm.va_start(i8* nonnull %14), !dbg !1223
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1224, !tbaa !624
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !1225
  call void @exit(i32 0) #14, !dbg !1226
  unreachable, !dbg !1226

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1227, !tbaa !693
  store i32 0, i32* @optind, align 4, !dbg !1228, !tbaa !693
  ret void, !dbg !1229
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1230 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1232, metadata !616), !dbg !1235
  %2 = icmp eq i8* %0, null, !dbg !1236
  br i1 %2, label %3, label %6, !dbg !1238

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1239, !tbaa !624
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1241
  tail call void @abort() #14, !dbg !1242
  unreachable, !dbg !1242

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1243
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1233, metadata !616), !dbg !1244
  %8 = icmp ne i8* %7, null, !dbg !1245
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1246
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1248
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1234, metadata !616), !dbg !1249
  %11 = ptrtoint i8* %10 to i64, !dbg !1250
  %12 = ptrtoint i8* %0 to i64, !dbg !1250
  %13 = sub i64 %11, %12, !dbg !1250
  %14 = icmp sgt i64 %13, 6, !dbg !1252
  br i1 %14, label %15, label %24, !dbg !1253

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1254
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #13, !dbg !1254
  %18 = icmp eq i32 %17, 0, !dbg !1256
  br i1 %18, label %19, label %24, !dbg !1257

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1232, metadata !616), !dbg !1235
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #13, !dbg !1258
  %21 = icmp eq i32 %20, 0, !dbg !1261
  br i1 %21, label %22, label %24, !dbg !1262

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1232, metadata !616), !dbg !1235
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1265, !tbaa !624
  br label %24, !dbg !1266

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1232, metadata !616), !dbg !1235
  store i8* %25, i8** @program_name, align 8, !dbg !1267, !tbaa !624
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1268, !tbaa !624
  ret void, !dbg !1269
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1270 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1275, metadata !616), !dbg !1278
  %2 = tail call i32* @__errno_location() #1, !dbg !1279
  %3 = load i32, i32* %2, align 4, !dbg !1279, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1276, metadata !616), !dbg !1280
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1281
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1282
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1282
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1284
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1284
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1277, metadata !616), !dbg !1285
  store i32 %3, i32* %2, align 4, !dbg !1286, !tbaa !693
  ret %struct.quoting_options* %8, !dbg !1287
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1288 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1294, metadata !616), !dbg !1295
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1296
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1296
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1297
  %5 = load i32, i32* %4, align 8, !dbg !1297, !tbaa !1299
  ret i32 %5, !dbg !1301
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1302 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1306, metadata !616), !dbg !1308
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1307, metadata !616), !dbg !1309
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1310
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1310
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1311
  store i32 %1, i32* %5, align 8, !dbg !1313, !tbaa !1299
  ret void, !dbg !1314
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1315 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1319, metadata !616), !dbg !1327
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1320, metadata !616), !dbg !1328
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1321, metadata !616), !dbg !1329
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1322, metadata !616), !dbg !1330
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1331
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1331
  %6 = lshr i8 %1, 5, !dbg !1332
  %7 = zext i8 %6 to i64, !dbg !1332
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1334
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1323, metadata !616), !dbg !1335
  %9 = and i8 %1, 31, !dbg !1336
  %10 = zext i8 %9 to i32, !dbg !1337
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1325, metadata !616), !dbg !1338
  %11 = load i32, i32* %8, align 4, !dbg !1339, !tbaa !693
  %12 = lshr i32 %11, %10, !dbg !1340
  %13 = and i32 %12, 1, !dbg !1341
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1326, metadata !616), !dbg !1342
  %14 = and i32 %2, 1, !dbg !1343
  %15 = xor i32 %13, %14, !dbg !1344
  %16 = shl i32 %15, %10, !dbg !1345
  %17 = xor i32 %16, %11, !dbg !1346
  store i32 %17, i32* %8, align 4, !dbg !1346, !tbaa !693
  ret i32 %13, !dbg !1347
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1348 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1352, metadata !616), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1353, metadata !616), !dbg !1356
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1357
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1352, metadata !616), !dbg !1355
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1359
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1352, metadata !616), !dbg !1355
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1360
  %6 = load i32, i32* %5, align 4, !dbg !1360, !tbaa !1361
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1354, metadata !616), !dbg !1362
  store i32 %1, i32* %5, align 4, !dbg !1363, !tbaa !1361
  ret i32 %6, !dbg !1364
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1365 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1369, metadata !616), !dbg !1372
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1370, metadata !616), !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1371, metadata !616), !dbg !1374
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1375
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1369, metadata !616), !dbg !1372
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1377
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1369, metadata !616), !dbg !1372
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1378
  store i32 10, i32* %6, align 8, !dbg !1379, !tbaa !1299
  %7 = icmp ne i8* %1, null, !dbg !1380
  %8 = icmp ne i8* %2, null, !dbg !1382
  %9 = and i1 %7, %8, !dbg !1384
  br i1 %9, label %11, label %10, !dbg !1384

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1385
  unreachable, !dbg !1385

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1386
  store i8* %1, i8** %12, align 8, !dbg !1387, !tbaa !1388
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1389
  store i8* %2, i8** %13, align 8, !dbg !1390, !tbaa !1391
  ret void, !dbg !1392
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1393 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1397, metadata !616), !dbg !1405
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1398, metadata !616), !dbg !1406
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1399, metadata !616), !dbg !1407
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1400, metadata !616), !dbg !1408
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1401, metadata !616), !dbg !1409
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1410
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1402, metadata !616), !dbg !1411
  %8 = tail call i32* @__errno_location() #1, !dbg !1412
  %9 = load i32, i32* %8, align 4, !dbg !1412, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1403, metadata !616), !dbg !1413
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1414
  %11 = load i32, i32* %10, align 8, !dbg !1414, !tbaa !1299
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1415
  %13 = load i32, i32* %12, align 4, !dbg !1415, !tbaa !1361
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1416
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1417
  %16 = load i8*, i8** %15, align 8, !dbg !1417, !tbaa !1388
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1418
  %18 = load i8*, i8** %17, align 8, !dbg !1418, !tbaa !1391
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1419
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1404, metadata !616), !dbg !1420
  store i32 %9, i32* %8, align 4, !dbg !1421, !tbaa !693
  ret i64 %19, !dbg !1422
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1423 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1429, metadata !616), !dbg !1492
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1430, metadata !616), !dbg !1493
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1431, metadata !616), !dbg !1494
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1432, metadata !616), !dbg !1495
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1433, metadata !616), !dbg !1496
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1434, metadata !616), !dbg !1497
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1435, metadata !616), !dbg !1498
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1436, metadata !616), !dbg !1499
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1437, metadata !616), !dbg !1500
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1439, metadata !616), !dbg !1501
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1440, metadata !616), !dbg !1502
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1441, metadata !616), !dbg !1503
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1442, metadata !616), !dbg !1504
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1443, metadata !616), !dbg !1505
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1506
  %14 = icmp eq i64 %13, 1, !dbg !1507
  %15 = lshr i32 %5, 1, !dbg !1508
  %16 = trunc i32 %15 to i8, !dbg !1508
  %17 = and i8 %16, 1, !dbg !1508
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1445, metadata !616), !dbg !1508
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1446, metadata !616), !dbg !1509
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1447, metadata !616), !dbg !1510
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1448, metadata !616), !dbg !1511
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1512

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1430, metadata !616), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1448, metadata !616), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1447, metadata !616), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1445, metadata !616), !dbg !1508
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1432, metadata !616), !dbg !1495
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1443, metadata !616), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1442, metadata !616), !dbg !1504
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1441, metadata !616), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1440, metadata !616), !dbg !1502
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1437, metadata !616), !dbg !1500
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1436, metadata !616), !dbg !1499
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1433, metadata !616), !dbg !1496
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
  ], !dbg !1513

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1433, metadata !616), !dbg !1496
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1445, metadata !616), !dbg !1508
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1445, metadata !616), !dbg !1508
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1433, metadata !616), !dbg !1496
  br label %95, !dbg !1514

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1445, metadata !616), !dbg !1508
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1433, metadata !616), !dbg !1496
  %43 = and i8 %36, 1, !dbg !1516
  %44 = icmp eq i8 %43, 0, !dbg !1516
  br i1 %44, label %45, label %95, !dbg !1514

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1518
  br i1 %46, label %95, label %47, !dbg !1522

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1524, !tbaa !840
  br label %95, !dbg !1524

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %28), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1436, metadata !616), !dbg !1499
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %28), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1437, metadata !616), !dbg !1500
  br label %51, !dbg !1531

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1437, metadata !616), !dbg !1500
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1436, metadata !616), !dbg !1499
  %54 = and i8 %36, 1, !dbg !1532
  %55 = icmp eq i8 %54, 0, !dbg !1532
  br i1 %55, label %56, label %73, !dbg !1534

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1441, metadata !616), !dbg !1503
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1439, metadata !616), !dbg !1501
  %57 = load i8, i8* %52, align 1, !dbg !1535, !tbaa !840
  %58 = icmp eq i8 %57, 0, !dbg !1539
  br i1 %58, label %73, label %59, !dbg !1539

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1541

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1541
  br i1 %64, label %65, label %67, !dbg !1545

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1547
  store i8 %61, i8* %66, align 1, !dbg !1547, !tbaa !840
  br label %67, !dbg !1547

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1439, metadata !616), !dbg !1501
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1551
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1441, metadata !616), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1441, metadata !616), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1439, metadata !616), !dbg !1501
  %70 = load i8, i8* %69, align 1, !dbg !1535, !tbaa !840
  %71 = icmp eq i8 %70, 0, !dbg !1539
  br i1 %71, label %72, label %60, !dbg !1539, !llvm.loop !1553

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1501

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1443, metadata !616), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1441, metadata !616), !dbg !1503
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1442, metadata !616), !dbg !1504
  br label %95, !dbg !1557

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1443, metadata !616), !dbg !1505
  br label %77, !dbg !1558

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1443, metadata !616), !dbg !1505
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1445, metadata !616), !dbg !1508
  br label %79, !dbg !1559

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1445, metadata !616), !dbg !1508
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1443, metadata !616), !dbg !1505
  %82 = and i8 %81, 1, !dbg !1560
  %83 = icmp eq i8 %82, 0, !dbg !1560
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1443, metadata !616), !dbg !1505
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1562
  br label %85, !dbg !1562

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1445, metadata !616), !dbg !1508
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1443, metadata !616), !dbg !1505
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1433, metadata !616), !dbg !1496
  %88 = and i8 %87, 1, !dbg !1563
  %89 = icmp eq i8 %88, 0, !dbg !1563
  br i1 %89, label %90, label %95, !dbg !1565

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1566
  br i1 %91, label %95, label %92, !dbg !1570

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1572, !tbaa !840
  br label %95, !dbg !1572

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1445, metadata !616), !dbg !1508
  br label %95, !dbg !1574

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1575
  unreachable, !dbg !1575

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1445, metadata !616), !dbg !1508
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1443, metadata !616), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1442, metadata !616), !dbg !1504
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1441, metadata !616), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1437, metadata !616), !dbg !1500
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1436, metadata !616), !dbg !1499
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1433, metadata !616), !dbg !1496
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1438, metadata !616), !dbg !1576
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
  br label %123, !dbg !1577

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1430, metadata !616), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1448, metadata !616), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1447, metadata !616), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1432, metadata !616), !dbg !1495
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1440, metadata !616), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1438, metadata !616), !dbg !1576
  %132 = icmp eq i64 %127, -1, !dbg !1578
  br i1 %132, label %135, label %133, !dbg !1580

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1581
  br i1 %134, label %597, label %139, !dbg !1583

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1585
  %137 = load i8, i8* %136, align 1, !dbg !1585, !tbaa !840
  %138 = icmp eq i8 %137, 0, !dbg !1587
  br i1 %138, label %597, label %139, !dbg !1583

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1454, metadata !616), !dbg !1588
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1455, metadata !616), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1456, metadata !616), !dbg !1590
  br i1 %109, label %140, label %155, !dbg !1591

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1593
  %142 = and i1 %110, %132, !dbg !1595
  br i1 %142, label %143, label %145, !dbg !1595

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1432, metadata !616), !dbg !1495
  br label %145, !dbg !1597

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1432, metadata !616), !dbg !1495
  %147 = icmp ugt i64 %141, %146, !dbg !1599
  br i1 %147, label %155, label %148, !dbg !1601

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1602
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1603
  %151 = icmp ne i32 %150, 0, !dbg !1604
  %152 = or i1 %151, %112, !dbg !1604
  %153 = xor i1 %151, true, !dbg !1604
  %154 = zext i1 %153 to i8, !dbg !1604
  br i1 %152, label %155, label %644, !dbg !1604

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1454, metadata !616), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1432, metadata !616), !dbg !1495
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1606
  %159 = load i8, i8* %158, align 1, !dbg !1606, !tbaa !840
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1449, metadata !616), !dbg !1607
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
  ], !dbg !1608

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1609

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1610

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1455, metadata !616), !dbg !1589
  %163 = and i8 %128, 1, !dbg !1615
  %164 = icmp eq i8 %163, 0, !dbg !1615
  %165 = and i1 %114, %164, !dbg !1618
  br i1 %165, label %166, label %182, !dbg !1618

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1620
  br i1 %167, label %168, label %170, !dbg !1625

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1627
  store i8 39, i8* %169, align 1, !dbg !1627, !tbaa !840
  br label %170, !dbg !1627

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1439, metadata !616), !dbg !1501
  %172 = icmp ult i64 %171, %131, !dbg !1631
  br i1 %172, label %173, label %175, !dbg !1635

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1637
  store i8 36, i8* %174, align 1, !dbg !1637, !tbaa !840
  br label %175, !dbg !1637

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1439, metadata !616), !dbg !1501
  %177 = icmp ult i64 %176, %131, !dbg !1641
  br i1 %177, label %178, label %180, !dbg !1645

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1647
  store i8 39, i8* %179, align 1, !dbg !1647, !tbaa !840
  br label %180, !dbg !1647

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1446, metadata !616), !dbg !1509
  br label %182, !dbg !1651

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1439, metadata !616), !dbg !1501
  %185 = icmp ult i64 %183, %131, !dbg !1653
  br i1 %185, label %186, label %188, !dbg !1657

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1659
  store i8 92, i8* %187, align 1, !dbg !1659, !tbaa !840
  br label %188, !dbg !1659

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1439, metadata !616), !dbg !1501
  br i1 %106, label %190, label %476, !dbg !1663

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1665
  %192 = icmp ult i64 %191, %156, !dbg !1667
  br i1 %192, label %193, label %476, !dbg !1668

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1669
  %195 = load i8, i8* %194, align 1, !dbg !1669, !tbaa !840
  %196 = add i8 %195, -48, !dbg !1671
  %197 = icmp ult i8 %196, 10, !dbg !1671
  br i1 %197, label %198, label %476, !dbg !1671

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1672
  br i1 %199, label %200, label %202, !dbg !1677

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1679
  store i8 48, i8* %201, align 1, !dbg !1679, !tbaa !840
  br label %202, !dbg !1679

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1439, metadata !616), !dbg !1501
  %204 = icmp ult i64 %203, %131, !dbg !1683
  br i1 %204, label %205, label %207, !dbg !1687

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1689
  store i8 48, i8* %206, align 1, !dbg !1689, !tbaa !840
  br label %207, !dbg !1689

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1439, metadata !616), !dbg !1501
  br label %476, !dbg !1693

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1694

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1695

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1696

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1698

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1700
  %215 = icmp ult i64 %214, %156, !dbg !1702
  br i1 %215, label %216, label %476, !dbg !1703

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1704
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1706
  %219 = load i8, i8* %218, align 1, !dbg !1706, !tbaa !840
  %220 = icmp eq i8 %219, 63, !dbg !1707
  br i1 %220, label %221, label %476, !dbg !1708

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1710
  %223 = load i8, i8* %222, align 1, !dbg !1710, !tbaa !840
  %224 = sext i8 %223 to i32, !dbg !1710
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
  ], !dbg !1711

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1712

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1449, metadata !616), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1438, metadata !616), !dbg !1576
  %227 = icmp ult i64 %125, %131, !dbg !1714
  br i1 %227, label %228, label %230, !dbg !1718

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1720
  store i8 63, i8* %229, align 1, !dbg !1720, !tbaa !840
  br label %230, !dbg !1720

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1439, metadata !616), !dbg !1501
  %232 = icmp ult i64 %231, %131, !dbg !1724
  br i1 %232, label %233, label %235, !dbg !1728

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1730
  store i8 34, i8* %234, align 1, !dbg !1730, !tbaa !840
  br label %235, !dbg !1730

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1439, metadata !616), !dbg !1501
  %237 = icmp ult i64 %236, %131, !dbg !1734
  br i1 %237, label %238, label %240, !dbg !1738

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1740
  store i8 34, i8* %239, align 1, !dbg !1740, !tbaa !840
  br label %240, !dbg !1740

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1439, metadata !616), !dbg !1501
  %242 = icmp ult i64 %241, %131, !dbg !1744
  br i1 %242, label %243, label %245, !dbg !1748

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1750
  store i8 63, i8* %244, align 1, !dbg !1750, !tbaa !840
  br label %245, !dbg !1750

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1439, metadata !616), !dbg !1501
  br label %476, !dbg !1754

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1453, metadata !616), !dbg !1755
  br label %257, !dbg !1756

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1453, metadata !616), !dbg !1755
  br label %257, !dbg !1757

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1453, metadata !616), !dbg !1755
  br label %255, !dbg !1758

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1453, metadata !616), !dbg !1755
  br label %255, !dbg !1759

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1453, metadata !616), !dbg !1755
  br label %257, !dbg !1760

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1453, metadata !616), !dbg !1755
  br i1 %114, label %253, label %254, !dbg !1761

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1762

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1765

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1453, metadata !616), !dbg !1755
  br i1 %118, label %257, label %644, !dbg !1767

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1453, metadata !616), !dbg !1755
  br i1 %105, label %503, label %476, !dbg !1769

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1770
  br i1 %260, label %261, label %266, !dbg !1772

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1773, !tbaa !840
  %263 = icmp ne i8 %262, 0, !dbg !1775
  %264 = icmp ne i64 %124, 0, !dbg !1776
  %265 = or i1 %264, %263, !dbg !1778
  br i1 %265, label %476, label %272, !dbg !1778

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1779
  %268 = icmp ne i64 %124, 0, !dbg !1776
  %269 = or i1 %268, %267, !dbg !1781
  br i1 %269, label %476, label %272, !dbg !1781

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1776
  br i1 %271, label %272, label %476, !dbg !1783

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1456, metadata !616), !dbg !1590
  br label %273, !dbg !1784

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1456, metadata !616), !dbg !1590
  br i1 %118, label %476, label %644, !dbg !1785

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1447, metadata !616), !dbg !1510
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1456, metadata !616), !dbg !1590
  br i1 %114, label %276, label %476, !dbg !1787

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1788

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1791
  %279 = icmp ne i64 %126, 0, !dbg !1793
  %280 = or i1 %279, %278, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1440, metadata !616), !dbg !1502
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1430, metadata !616), !dbg !1493
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1795
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1430, metadata !616), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1440, metadata !616), !dbg !1502
  %283 = icmp ult i64 %125, %282, !dbg !1796
  br i1 %283, label %284, label %286, !dbg !1800

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1802
  store i8 39, i8* %285, align 1, !dbg !1802, !tbaa !840
  br label %286, !dbg !1802

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1439, metadata !616), !dbg !1501
  %288 = icmp ult i64 %287, %282, !dbg !1806
  br i1 %288, label %289, label %291, !dbg !1810

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1812
  store i8 92, i8* %290, align 1, !dbg !1812, !tbaa !840
  br label %291, !dbg !1812

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1439, metadata !616), !dbg !1501
  %293 = icmp ult i64 %292, %282, !dbg !1816
  br i1 %293, label %294, label %296, !dbg !1820

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1822
  store i8 39, i8* %295, align 1, !dbg !1822, !tbaa !840
  br label %296, !dbg !1822

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1446, metadata !616), !dbg !1509
  br label %476, !dbg !1826

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1827

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1457, metadata !616), !dbg !1828
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1829
  %301 = load i16*, i16** %300, align 8, !dbg !1829, !tbaa !624
  %302 = zext i8 %159 to i64, !dbg !1829
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1829
  %304 = load i16, i16* %303, align 2, !dbg !1829, !tbaa !1831
  %305 = lshr i16 %304, 14, !dbg !1832
  %306 = trunc i16 %305 to i8, !dbg !1832
  %307 = and i8 %306, 1, !dbg !1832
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1460, metadata !616), !dbg !1833
  br label %368, !dbg !1834

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1835
  store i64 0, i64* %10, align 8, !dbg !1836
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1457, metadata !616), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1460, metadata !616), !dbg !1833
  %309 = icmp eq i64 %156, -1, !dbg !1837
  br i1 %309, label %310, label %312, !dbg !1839, !llvm.loop !1840

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1432, metadata !616), !dbg !1495
  br label %312, !dbg !1844, !llvm.loop !1840

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1833

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1460, metadata !616), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1457, metadata !616), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1432, metadata !616), !dbg !1495
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1845
  %317 = add i64 %315, %124, !dbg !1846
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1847
  %319 = sub i64 %313, %317, !dbg !1848
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1461, metadata !1849), !dbg !1850
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1478, metadata !1849), !dbg !1851
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1481, metadata !616), !dbg !1853
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1854

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1457, metadata !616), !dbg !1828
  %322 = icmp ugt i64 %313, %317, !dbg !1855
  br i1 %322, label %323, label %351, !dbg !1858

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1859

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1859
  %328 = load i8, i8* %327, align 1, !dbg !1859, !tbaa !840
  %329 = icmp eq i8 %328, 0, !dbg !1861
  br i1 %329, label %348, label %330, !dbg !1862

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1457, metadata !616), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1457, metadata !616), !dbg !1828
  %332 = add i64 %331, %124, !dbg !1865
  %333 = icmp ult i64 %332, %313, !dbg !1855
  br i1 %333, label %324, label %348, !dbg !1858, !llvm.loop !1866

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1868
  %336 = and i1 %116, %335, !dbg !1872
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1482, metadata !616), !dbg !1873
  br i1 %336, label %337, label %355, !dbg !1872

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1874

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1874
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1875
  %342 = load i8, i8* %341, align 1, !dbg !1875, !tbaa !840
  %343 = sext i8 %342 to i32, !dbg !1875
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1876

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1482, metadata !616), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1482, metadata !616), !dbg !1873
  %346 = icmp ult i64 %345, %320, !dbg !1868
  br i1 %346, label %338, label %354, !dbg !1879, !llvm.loop !1881

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1833

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1833

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1833

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1460, metadata !616), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1457, metadata !616), !dbg !1828
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1884
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1885

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1885, !tbaa !693
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1478, metadata !616), !dbg !1851
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1887
  %358 = icmp eq i32 %357, 0, !dbg !1887
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1460, metadata !616), !dbg !1833
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1888
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1460, metadata !616), !dbg !1833
  %360 = add i64 %320, %315, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1457, metadata !616), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1460, metadata !616), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1457, metadata !616), !dbg !1828
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1884
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1461, metadata !1849), !dbg !1850
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1890
  %362 = icmp eq i32 %361, 0, !dbg !1891
  br i1 %362, label %314, label %363, !dbg !1892, !llvm.loop !1840

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1894

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1894
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1460, metadata !616), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1457, metadata !616), !dbg !1828
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1884
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1894
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1460, metadata !616), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1457, metadata !616), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1432, metadata !616), !dbg !1495
  %372 = and i8 %371, 1, !dbg !1895
  %373 = icmp ne i8 %372, 0, !dbg !1895
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1456, metadata !616), !dbg !1590
  %374 = icmp ult i64 %370, 2, !dbg !1896
  %375 = or i1 %373, %113, !dbg !1897
  %376 = and i1 %374, %375, !dbg !1899
  br i1 %376, label %476, label %377, !dbg !1899

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1489, metadata !616), !dbg !1901
  br label %379, !dbg !1902

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1455, metadata !616), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1454, metadata !616), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1449, metadata !616), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1438, metadata !616), !dbg !1576
  br i1 %375, label %432, label %386, !dbg !1903

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1908

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1455, metadata !616), !dbg !1589
  %388 = and i8 %382, 1, !dbg !1912
  %389 = icmp eq i8 %388, 0, !dbg !1912
  %390 = and i1 %114, %389, !dbg !1915
  br i1 %390, label %391, label %407, !dbg !1915

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1917
  br i1 %392, label %393, label %395, !dbg !1922

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1924
  store i8 39, i8* %394, align 1, !dbg !1924, !tbaa !840
  br label %395, !dbg !1924

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1439, metadata !616), !dbg !1501
  %397 = icmp ult i64 %396, %131, !dbg !1928
  br i1 %397, label %398, label %400, !dbg !1932

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1934
  store i8 36, i8* %399, align 1, !dbg !1934, !tbaa !840
  br label %400, !dbg !1934

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1439, metadata !616), !dbg !1501
  %402 = icmp ult i64 %401, %131, !dbg !1938
  br i1 %402, label %403, label %405, !dbg !1942

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1944
  store i8 39, i8* %404, align 1, !dbg !1944, !tbaa !840
  br label %405, !dbg !1944

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1446, metadata !616), !dbg !1509
  br label %407, !dbg !1948

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1439, metadata !616), !dbg !1501
  %410 = icmp ult i64 %408, %131, !dbg !1950
  br i1 %410, label %411, label %413, !dbg !1954

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1956
  store i8 92, i8* %412, align 1, !dbg !1956, !tbaa !840
  br label %413, !dbg !1956

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1439, metadata !616), !dbg !1501
  %415 = icmp ult i64 %414, %131, !dbg !1960
  br i1 %415, label %416, label %420, !dbg !1964

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1966
  %418 = or i8 %417, 48, !dbg !1966
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1966
  store i8 %418, i8* %419, align 1, !dbg !1966, !tbaa !840
  br label %420, !dbg !1966

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1439, metadata !616), !dbg !1501
  %422 = icmp ult i64 %421, %131, !dbg !1970
  br i1 %422, label %423, label %428, !dbg !1974

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1976
  %425 = and i8 %424, 7, !dbg !1976
  %426 = or i8 %425, 48, !dbg !1976
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1976
  store i8 %426, i8* %427, align 1, !dbg !1976, !tbaa !840
  br label %428, !dbg !1976

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1439, metadata !616), !dbg !1501
  %430 = and i8 %383, 7, !dbg !1980
  %431 = or i8 %430, 48, !dbg !1981
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1449, metadata !616), !dbg !1607
  br label %441, !dbg !1982

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1983
  %434 = icmp eq i8 %433, 0, !dbg !1983
  br i1 %434, label %441, label %435, !dbg !1985

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1986
  br i1 %436, label %437, label %439, !dbg !1991

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1993
  store i8 92, i8* %438, align 1, !dbg !1993, !tbaa !840
  br label %439, !dbg !1993

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1454, metadata !616), !dbg !1588
  br label %441, !dbg !1997

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1455, metadata !616), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1454, metadata !616), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1449, metadata !616), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1439, metadata !616), !dbg !1501
  %447 = add i64 %380, 1, !dbg !1998
  %448 = icmp ugt i64 %378, %447, !dbg !2000
  br i1 %448, label %449, label %541, !dbg !2001

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2002
  %451 = icmp ne i8 %450, 0, !dbg !2002
  %452 = and i8 %446, 1, !dbg !2006
  %453 = icmp eq i8 %452, 0, !dbg !2006
  %454 = and i1 %451, %453, !dbg !2002
  br i1 %454, label %455, label %466, !dbg !2002

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2008
  br i1 %456, label %457, label %459, !dbg !2013

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2015
  store i8 39, i8* %458, align 1, !dbg !2015, !tbaa !840
  br label %459, !dbg !2015

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1439, metadata !616), !dbg !1501
  %461 = icmp ult i64 %460, %131, !dbg !2019
  br i1 %461, label %462, label %464, !dbg !2023

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2025
  store i8 39, i8* %463, align 1, !dbg !2025, !tbaa !840
  br label %464, !dbg !2025

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1446, metadata !616), !dbg !1509
  br label %466, !dbg !2029

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1439, metadata !616), !dbg !1501
  %469 = icmp ult i64 %467, %131, !dbg !2031
  br i1 %469, label %470, label %472, !dbg !2035

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2037
  store i8 %444, i8* %471, align 1, !dbg !2037, !tbaa !840
  br label %472, !dbg !2037

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1438, metadata !616), !dbg !1576
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2041
  %475 = load i8, i8* %474, align 1, !dbg !2041, !tbaa !840
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1449, metadata !616), !dbg !1607
  br label %379, !dbg !2042, !llvm.loop !2044

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1430, metadata !616), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1456, metadata !616), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1455, metadata !616), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1454, metadata !616), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1449, metadata !616), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1447, metadata !616), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1432, metadata !616), !dbg !1495
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1440, metadata !616), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1438, metadata !616), !dbg !1576
  br i1 %107, label %488, label %487, !dbg !2047

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2049

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2050

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2051
  %491 = zext i8 %490 to i64, !dbg !2051
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2053
  %493 = load i32, i32* %492, align 4, !dbg !2053, !tbaa !693
  %494 = and i8 %483, 31, !dbg !2054
  %495 = zext i8 %494 to i32, !dbg !2055
  %496 = shl i32 1, %495, !dbg !2056
  %497 = and i32 %493, %496, !dbg !2056
  %498 = icmp eq i32 %497, 0, !dbg !2056
  %499 = icmp eq i8 %157, 0, !dbg !2057
  %500 = and i1 %499, %498, !dbg !2058
  br i1 %500, label %542, label %503, !dbg !2058

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2057
  br i1 %502, label %542, label %503, !dbg !2059

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1430, metadata !616), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1456, metadata !616), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1449, metadata !616), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1447, metadata !616), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1432, metadata !616), !dbg !1495
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1440, metadata !616), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1438, metadata !616), !dbg !1576
  br i1 %112, label %513, label %644, !dbg !2061

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1455, metadata !616), !dbg !1589
  %514 = and i8 %508, 1, !dbg !2064
  %515 = icmp eq i8 %514, 0, !dbg !2064
  %516 = and i1 %114, %515, !dbg !2067
  br i1 %516, label %517, label %533, !dbg !2067

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2069
  br i1 %518, label %519, label %521, !dbg !2074

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2076
  store i8 39, i8* %520, align 1, !dbg !2076, !tbaa !840
  br label %521, !dbg !2076

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1439, metadata !616), !dbg !1501
  %523 = icmp ult i64 %522, %512, !dbg !2080
  br i1 %523, label %524, label %526, !dbg !2084

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2086
  store i8 36, i8* %525, align 1, !dbg !2086, !tbaa !840
  br label %526, !dbg !2086

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1439, metadata !616), !dbg !1501
  %528 = icmp ult i64 %527, %512, !dbg !2090
  br i1 %528, label %529, label %531, !dbg !2094

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2096
  store i8 39, i8* %530, align 1, !dbg !2096, !tbaa !840
  br label %531, !dbg !2096

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1446, metadata !616), !dbg !1509
  br label %533, !dbg !2100

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1439, metadata !616), !dbg !1501
  %536 = icmp ult i64 %534, %512, !dbg !2102
  br i1 %536, label %537, label %539, !dbg !2106

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2108
  store i8 92, i8* %538, align 1, !dbg !2108, !tbaa !840
  br label %539, !dbg !2108

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1430, metadata !616), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1456, metadata !616), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1455, metadata !616), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1449, metadata !616), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1447, metadata !616), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1432, metadata !616), !dbg !1495
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1440, metadata !616), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1438, metadata !616), !dbg !1576
  br label %569, !dbg !2112

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1493

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1430, metadata !616), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1456, metadata !616), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1455, metadata !616), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1449, metadata !616), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1447, metadata !616), !dbg !1510
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1432, metadata !616), !dbg !1495
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1440, metadata !616), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1438, metadata !616), !dbg !1576
  %553 = and i8 %547, 1, !dbg !2112
  %554 = icmp ne i8 %553, 0, !dbg !2112
  %555 = and i8 %550, 1, !dbg !2116
  %556 = icmp eq i8 %555, 0, !dbg !2116
  %557 = and i1 %554, %556, !dbg !2112
  br i1 %557, label %558, label %569, !dbg !2112

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2118
  br i1 %559, label %560, label %562, !dbg !2123

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2125
  store i8 39, i8* %561, align 1, !dbg !2125, !tbaa !840
  br label %562, !dbg !2125

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1439, metadata !616), !dbg !1501
  %564 = icmp ult i64 %563, %552, !dbg !2129
  br i1 %564, label %565, label %567, !dbg !2133

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2135
  store i8 39, i8* %566, align 1, !dbg !2135, !tbaa !840
  br label %567, !dbg !2135

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1439, metadata !616), !dbg !1501
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1446, metadata !616), !dbg !1509
  br label %569, !dbg !2139

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1446, metadata !616), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1439, metadata !616), !dbg !1501
  %579 = icmp ult i64 %577, %570, !dbg !2141
  br i1 %579, label %580, label %582, !dbg !2145

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2147
  store i8 %572, i8* %581, align 1, !dbg !2147, !tbaa !840
  br label %582, !dbg !2147

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1439, metadata !616), !dbg !1501
  %584 = and i8 %571, 1, !dbg !2151
  %585 = icmp eq i8 %584, 0, !dbg !2151
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1448, metadata !616), !dbg !1511
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2153
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1448, metadata !616), !dbg !1511
  br label %587, !dbg !2154

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1438, metadata !616), !dbg !1576
  br label %123, !dbg !2157, !llvm.loop !2158

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2161
  %600 = and i1 %114, %599, !dbg !2163
  %601 = xor i1 %600, true, !dbg !2163
  %602 = or i1 %112, %601, !dbg !2163
  br i1 %602, label %603, label %648, !dbg !2163

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2164
  %605 = xor i1 %604, true, !dbg !2164
  %606 = and i8 %129, 1, !dbg !2166
  %607 = icmp eq i8 %606, 0, !dbg !2166
  %608 = or i1 %607, %605, !dbg !2164
  br i1 %608, label %618, label %609, !dbg !2164

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2168
  %611 = icmp eq i8 %610, 0, !dbg !2168
  br i1 %611, label %614, label %612, !dbg !2171

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2172
  br label %659, !dbg !2173

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2174
  %616 = icmp ne i64 %126, 0, !dbg !2176
  %617 = and i1 %616, %615, !dbg !2178
  br i1 %617, label %27, label %618, !dbg !2178

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2179
  %620 = and i1 %619, %112, !dbg !2181
  br i1 %620, label %621, label %638, !dbg !2181

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1441, metadata !616), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1439, metadata !616), !dbg !1501
  %622 = load i8, i8* %100, align 1, !dbg !2182, !tbaa !840
  %623 = icmp eq i8 %622, 0, !dbg !2186
  br i1 %623, label %638, label %624, !dbg !2186

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2188

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2188
  br i1 %629, label %630, label %632, !dbg !2192

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2194
  store i8 %626, i8* %631, align 1, !dbg !2194, !tbaa !840
  br label %632, !dbg !2194

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1439, metadata !616), !dbg !1501
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2198
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1441, metadata !616), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1441, metadata !616), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1439, metadata !616), !dbg !1501
  %635 = load i8, i8* %634, align 1, !dbg !2182, !tbaa !840
  %636 = icmp eq i8 %635, 0, !dbg !2186
  br i1 %636, label %637, label %625, !dbg !2186, !llvm.loop !2200

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1501

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1439, metadata !616), !dbg !1501
  %640 = icmp ult i64 %639, %131, !dbg !2203
  br i1 %640, label %641, label %659, !dbg !2205

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2206
  store i8 0, i8* %642, align 1, !dbg !2207, !tbaa !840
  br label %659, !dbg !2206

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1493

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1493

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1493

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1430, metadata !616), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1432, metadata !616), !dbg !1495
  %653 = icmp ne i32 %650, 2, !dbg !2208
  %654 = icmp eq i8 %104, 0, !dbg !2210
  %655 = or i1 %653, %654, !dbg !2212
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1433, metadata !616), !dbg !1496
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1433, metadata !616), !dbg !1496
  %657 = and i32 %5, -3, !dbg !2213
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2214
  br label %659, !dbg !2215

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2216
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2217 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2221, metadata !616), !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2222, metadata !616), !dbg !2226
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2227
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2223, metadata !616), !dbg !2228
  %4 = icmp eq i8* %3, %0, !dbg !2229
  br i1 %4, label %5, label %75, !dbg !2231

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2232
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2224, metadata !616), !dbg !2233
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2234, metadata !616), !dbg !2250
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2248, metadata !616), !dbg !2253
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2249, metadata !616), !dbg !2254
  %7 = load i8, i8* %6, align 1, !tbaa !840
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2255
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2255

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2258, metadata !616), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2270, metadata !616), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2271, metadata !616), !dbg !2277
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !840
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2278
  %15 = icmp eq i32 %14, 84, !dbg !2278
  br i1 %15, label %16, label %72, !dbg !2278

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2281, metadata !616), !dbg !2294
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2292, metadata !616), !dbg !2298
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2293, metadata !616), !dbg !2299
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !840
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2300
  %21 = icmp eq i32 %20, 70, !dbg !2300
  br i1 %21, label %22, label %72, !dbg !2300

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2303, metadata !616), !dbg !2315
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2313, metadata !616), !dbg !2319
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2314, metadata !616), !dbg !2320
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !840
  %25 = icmp eq i8 %24, 45, !dbg !2321
  br i1 %25, label %26, label %72, !dbg !2324

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2326, metadata !616), !dbg !2337
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2335, metadata !616), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2336, metadata !616), !dbg !2342
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !840
  %29 = icmp eq i8 %28, 56, !dbg !2343
  br i1 %29, label %30, label %72, !dbg !2346

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2348, metadata !616), !dbg !2358
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2356, metadata !616), !dbg !2362
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2357, metadata !616), !dbg !2363
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !840
  %33 = icmp eq i8 %32, 0, !dbg !2364
  br i1 %33, label %34, label %72, !dbg !2367

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2369, !tbaa !840
  %36 = icmp eq i8 %35, 96, !dbg !2370
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !2369
  br label %75, !dbg !2371

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2258, metadata !616), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2270, metadata !616), !dbg !2376
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2271, metadata !616), !dbg !2377
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !840
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2378
  %43 = icmp eq i32 %42, 66, !dbg !2378
  br i1 %43, label %44, label %72, !dbg !2378

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2281, metadata !616), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2292, metadata !616), !dbg !2381
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2293, metadata !616), !dbg !2382
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !840
  %47 = icmp eq i8 %46, 49, !dbg !2383
  br i1 %47, label %48, label %72, !dbg !2385

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2303, metadata !616), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2313, metadata !616), !dbg !2389
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2314, metadata !616), !dbg !2390
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !840
  %51 = icmp eq i8 %50, 56, !dbg !2391
  br i1 %51, label %52, label %72, !dbg !2392

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2326, metadata !616), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2335, metadata !616), !dbg !2395
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2336, metadata !616), !dbg !2396
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !840
  %55 = icmp eq i8 %54, 48, !dbg !2397
  br i1 %55, label %56, label %72, !dbg !2398

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2348, metadata !616), !dbg !2399
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2356, metadata !616), !dbg !2401
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2357, metadata !616), !dbg !2402
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !840
  %59 = icmp eq i8 %58, 51, !dbg !2403
  br i1 %59, label %60, label %72, !dbg !2404

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2405, metadata !616), !dbg !2414
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2412, metadata !616), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2413, metadata !616), !dbg !2419
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !840
  %63 = icmp eq i8 %62, 48, !dbg !2420
  br i1 %63, label %64, label %72, !dbg !2423

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2425, metadata !616), !dbg !2433
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2431, metadata !616), !dbg !2437
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2432, metadata !616), !dbg !2438
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !840
  %67 = icmp eq i8 %66, 0, !dbg !2439
  br i1 %67, label %68, label %72, !dbg !2442

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2443, !tbaa !840
  %70 = icmp eq i8 %69, 96, !dbg !2444
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2443
  br label %75, !dbg !2445

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2446
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), !dbg !2447
  br label %75, !dbg !2448

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2449
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2450 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2454, metadata !616), !dbg !2457
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2455, metadata !616), !dbg !2458
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2456, metadata !616), !dbg !2459
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !616) #10, !dbg !2473
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2465, metadata !616) #10, !dbg !2475
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2466, metadata !616) #10, !dbg !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2467, metadata !616) #10, !dbg !2477
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2478
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2478
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2468, metadata !616) #10, !dbg !2479
  %6 = tail call i32* @__errno_location() #1, !dbg !2480
  %7 = load i32, i32* %6, align 4, !dbg !2480, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2469, metadata !616) #10, !dbg !2481
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2482
  %9 = load i32, i32* %8, align 4, !dbg !2482, !tbaa !1361
  %10 = or i32 %9, 1, !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2470, metadata !616) #10, !dbg !2484
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2485
  %12 = load i32, i32* %11, align 8, !dbg !2485, !tbaa !1299
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2486
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2487
  %15 = load i8*, i8** %14, align 8, !dbg !2487, !tbaa !1388
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2488
  %17 = load i8*, i8** %16, align 8, !dbg !2488, !tbaa !1391
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2489
  %19 = add i64 %18, 1, !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2471, metadata !616) #10, !dbg !2491
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2492, metadata !616) #10, !dbg !2497
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2472, metadata !616) #10, !dbg !2500
  %21 = load i32, i32* %11, align 8, !dbg !2501, !tbaa !1299
  %22 = load i8*, i8** %14, align 8, !dbg !2502, !tbaa !1388
  %23 = load i8*, i8** %16, align 8, !dbg !2503, !tbaa !1391
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2504
  store i32 %7, i32* %6, align 4, !dbg !2505, !tbaa !693
  ret i8* %20, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2461 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !616), !dbg !2507
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2465, metadata !616), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2466, metadata !616), !dbg !2509
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2467, metadata !616), !dbg !2510
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2511
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2511
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2468, metadata !616), !dbg !2512
  %7 = tail call i32* @__errno_location() #1, !dbg !2513
  %8 = load i32, i32* %7, align 4, !dbg !2513, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2469, metadata !616), !dbg !2514
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2515
  %10 = load i32, i32* %9, align 4, !dbg !2515, !tbaa !1361
  %11 = icmp ne i64* %2, null, !dbg !2516
  %12 = xor i1 %11, true, !dbg !2516
  %13 = zext i1 %12 to i32, !dbg !2516
  %14 = or i32 %10, %13, !dbg !2517
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2470, metadata !616), !dbg !2518
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2519
  %16 = load i32, i32* %15, align 8, !dbg !2519, !tbaa !1299
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2520
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2521
  %19 = load i8*, i8** %18, align 8, !dbg !2521, !tbaa !1388
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2522
  %21 = load i8*, i8** %20, align 8, !dbg !2522, !tbaa !1391
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2523
  %23 = add i64 %22, 1, !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2471, metadata !616), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2492, metadata !616) #10, !dbg !2526
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2472, metadata !616), !dbg !2529
  %25 = load i32, i32* %15, align 8, !dbg !2530, !tbaa !1299
  %26 = load i8*, i8** %18, align 8, !dbg !2531, !tbaa !1388
  %27 = load i8*, i8** %20, align 8, !dbg !2532, !tbaa !1391
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2533
  store i32 %8, i32* %7, align 4, !dbg !2534, !tbaa !693
  br i1 %11, label %29, label %30, !dbg !2535

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2536, !tbaa !892
  br label %30, !dbg !2538

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2539
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2540 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2544, !tbaa !624
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2542, metadata !616), !dbg !2545
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2543, metadata !616), !dbg !2546
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2543, metadata !616), !dbg !2546
  %2 = load i32, i32* @nslots, align 4, !dbg !2547, !tbaa !693
  %3 = icmp sgt i32 %2, 1, !dbg !2551
  br i1 %3, label %4, label %14, !dbg !2552

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2554

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2554
  %8 = load i8*, i8** %7, align 8, !dbg !2554, !tbaa !2555
  tail call void @free(i8* %8) #10, !dbg !2557
  %9 = add nuw i64 %6, 1, !dbg !2558
  %10 = load i32, i32* @nslots, align 4, !dbg !2547, !tbaa !693
  %11 = sext i32 %10 to i64, !dbg !2551
  %12 = icmp slt i64 %9, %11, !dbg !2551
  br i1 %12, label %5, label %13, !dbg !2552, !llvm.loop !2560

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2563

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2563
  %16 = load i8*, i8** %15, align 8, !dbg !2563, !tbaa !2555
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2565
  br i1 %17, label %19, label %18, !dbg !2566

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2567
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2569, !tbaa !2570
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2571, !tbaa !2555
  br label %19, !dbg !2572

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2573
  br i1 %20, label %23, label %21, !dbg !2575

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2576
  tail call void @free(i8* %22) #10, !dbg !2578
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2579, !tbaa !624
  br label %23, !dbg !2580

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2581, !tbaa !693
  ret void, !dbg !2582
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2583 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2587, metadata !616), !dbg !2589
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2588, metadata !616), !dbg !2590
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2591
  ret i8* %3, !dbg !2592
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2593 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2597, metadata !616), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2598, metadata !616), !dbg !2612
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2599, metadata !616), !dbg !2613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2600, metadata !616), !dbg !2614
  %5 = tail call i32* @__errno_location() #1, !dbg !2615
  %6 = load i32, i32* %5, align 4, !dbg !2615, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2601, metadata !616), !dbg !2616
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2617, !tbaa !624
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2602, metadata !616), !dbg !2618
  %8 = icmp slt i32 %0, 0, !dbg !2619
  br i1 %8, label %9, label %10, !dbg !2621

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2622
  unreachable, !dbg !2622

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2623, !tbaa !693
  %12 = icmp sgt i32 %11, %0, !dbg !2624
  br i1 %12, label %34, label %13, !dbg !2625

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2626
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2627
  br i1 %15, label %16, label %17, !dbg !2629

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2630
  unreachable, !dbg !2630

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2631
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2631
  %20 = add nsw i32 %0, 1, !dbg !2633
  %21 = sext i32 %20 to i64, !dbg !2634
  %22 = shl nsw i64 %21, 4, !dbg !2635
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2636
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2636
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2602, metadata !616), !dbg !2618
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2637, !tbaa !624
  br i1 %14, label %25, label %26, !dbg !2638

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2639, !tbaa.struct !2641
  br label %26, !dbg !2642

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2643, !tbaa !693
  %28 = sext i32 %27 to i64, !dbg !2644
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2644
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2645
  %31 = sub nsw i32 %20, %27, !dbg !2646
  %32 = sext i32 %31 to i64, !dbg !2647
  %33 = shl nsw i64 %32, 4, !dbg !2648
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2645
  store i32 %20, i32* @nslots, align 4, !dbg !2649, !tbaa !693
  br label %34, !dbg !2650

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2602, metadata !616), !dbg !2618
  %36 = sext i32 %0 to i64, !dbg !2651
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2652
  %38 = load i64, i64* %37, align 8, !dbg !2652, !tbaa !2570
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2606, metadata !616), !dbg !2653
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2654
  %40 = load i8*, i8** %39, align 8, !dbg !2654, !tbaa !2555
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2608, metadata !616), !dbg !2655
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2656
  %42 = load i32, i32* %41, align 4, !dbg !2656, !tbaa !1361
  %43 = or i32 %42, 1, !dbg !2657
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2609, metadata !616), !dbg !2658
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2659
  %45 = load i32, i32* %44, align 8, !dbg !2659, !tbaa !1299
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2660
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2661
  %48 = load i8*, i8** %47, align 8, !dbg !2661, !tbaa !1388
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2662
  %50 = load i8*, i8** %49, align 8, !dbg !2662, !tbaa !1391
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2610, metadata !616), !dbg !2664
  %52 = icmp ugt i64 %38, %51, !dbg !2665
  br i1 %52, label %63, label %53, !dbg !2667

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2668
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2606, metadata !616), !dbg !2653
  store i64 %54, i64* %37, align 8, !dbg !2670, !tbaa !2570
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2671
  br i1 %55, label %57, label %56, !dbg !2673

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2674
  br label %57, !dbg !2674

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2492, metadata !616) #10, !dbg !2675
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2608, metadata !616), !dbg !2655
  store i8* %58, i8** %39, align 8, !dbg !2678, !tbaa !2555
  %59 = load i32, i32* %44, align 8, !dbg !2679, !tbaa !1299
  %60 = load i8*, i8** %47, align 8, !dbg !2680, !tbaa !1388
  %61 = load i8*, i8** %49, align 8, !dbg !2681, !tbaa !1391
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2682
  br label %63, !dbg !2683

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2608, metadata !616), !dbg !2655
  store i32 %6, i32* %5, align 4, !dbg !2684, !tbaa !693
  ret i8* %64, !dbg !2685
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2686 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2690, metadata !616), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2691, metadata !616), !dbg !2694
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2692, metadata !616), !dbg !2695
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2696
  ret i8* %4, !dbg !2697
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2698 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2702, metadata !616), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2587, metadata !616) #10, !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2588, metadata !616) #10, !dbg !2706
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2707
  ret i8* %2, !dbg !2708
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2709 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !616), !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2714, metadata !616), !dbg !2716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2690, metadata !616) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !616) #10, !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2692, metadata !616) #10, !dbg !2720
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2721
  ret i8* %3, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2723 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2731, metadata !2737), !dbg !2738
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2727, metadata !616), !dbg !2740
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2728, metadata !616), !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2729, metadata !616), !dbg !2742
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2743
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2743
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2730, metadata !1849), !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2736, metadata !616) #10, !dbg !2745
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2746
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2746
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !616) #10, !dbg !2738
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2738
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2738
  %8 = icmp eq i32 %1, 10, !dbg !2748
  br i1 %8, label %9, label %10, !dbg !2750

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2751, !noalias !2752
  unreachable, !dbg !2751

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2731, metadata !2747) #10, !dbg !2738
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2755
  store i32 %1, i32* %11, align 8, !dbg !2755, !alias.scope !2752
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2755
  %13 = bitcast i32* %12 to i8*, !dbg !2755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2755
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2730, metadata !1849), !dbg !2744
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2757
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2758
  ret i8* %14, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2760 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2731, metadata !2737), !dbg !2769
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2764, metadata !616), !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2765, metadata !616), !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2766, metadata !616), !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2767, metadata !616), !dbg !2774
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2775
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2775
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2768, metadata !1849), !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2736, metadata !616) #10, !dbg !2777
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2778
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2778
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !616) #10, !dbg !2769
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2769
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2769
  %9 = icmp eq i32 %1, 10, !dbg !2779
  br i1 %9, label %10, label %11, !dbg !2780

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2781, !noalias !2782
  unreachable, !dbg !2781

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2731, metadata !2747) #10, !dbg !2769
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2785
  store i32 %1, i32* %12, align 8, !dbg !2785, !alias.scope !2782
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2785
  %14 = bitcast i32* %13 to i8*, !dbg !2785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2785
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2768, metadata !1849), !dbg !2776
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2787
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2788
  ret i8* %15, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2790 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2731, metadata !2737), !dbg !2796
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2794, metadata !616), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2795, metadata !616), !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2727, metadata !616) #10, !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2728, metadata !616) #10, !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2729, metadata !616) #10, !dbg !2803
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2804
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2804
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2730, metadata !1849) #10, !dbg !2805
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2736, metadata !616) #10, !dbg !2806
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2807
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2807
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !616) #10, !dbg !2796
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2796
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2796
  %7 = icmp eq i32 %0, 10, !dbg !2808
  br i1 %7, label %8, label %9, !dbg !2809

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2810, !noalias !2811
  unreachable, !dbg !2810

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2796
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2814
  store i32 %0, i32* %10, align 8, !dbg !2814, !alias.scope !2811
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2814
  %12 = bitcast i32* %11 to i8*, !dbg !2814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2814
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2730, metadata !1849) #10, !dbg !2805
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2816
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2817
  ret i8* %13, !dbg !2818
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2819 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2731, metadata !2737), !dbg !2826
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2823, metadata !616), !dbg !2829
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2824, metadata !616), !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2825, metadata !616), !dbg !2831
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !616) #10, !dbg !2832
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2765, metadata !616) #10, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2766, metadata !616) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2767, metadata !616) #10, !dbg !2835
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2836
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2768, metadata !1849) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2736, metadata !616) #10, !dbg !2838
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2839
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2839
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !616) #10, !dbg !2826
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2826
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2826
  %8 = icmp eq i32 %0, 10, !dbg !2840
  br i1 %8, label %9, label %10, !dbg !2841

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2842, !noalias !2843
  unreachable, !dbg !2842

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2826
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2846
  store i32 %0, i32* %11, align 8, !dbg !2846, !alias.scope !2843
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2846
  %13 = bitcast i32* %12 to i8*, !dbg !2846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2846
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2768, metadata !1849) #10, !dbg !2837
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2848
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2849
  ret i8* %14, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2851 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2855, metadata !616), !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2856, metadata !616), !dbg !2860
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2857, metadata !616), !dbg !2861
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2862
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2863, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2858, metadata !1849), !dbg !2865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1319, metadata !616), !dbg !2866
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1320, metadata !616), !dbg !2868
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1321, metadata !616), !dbg !2869
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1322, metadata !616), !dbg !2870
  %6 = lshr i8 %2, 5, !dbg !2871
  %7 = zext i8 %6 to i64, !dbg !2871
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2872
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1323, metadata !616), !dbg !2873
  %9 = and i8 %2, 31, !dbg !2874
  %10 = zext i8 %9 to i32, !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1325, metadata !616), !dbg !2876
  %11 = load i32, i32* %8, align 4, !dbg !2877, !tbaa !693
  %12 = lshr i32 %11, %10, !dbg !2878
  %13 = and i32 %12, 1, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1326, metadata !616), !dbg !2880
  %14 = xor i32 %13, 1, !dbg !2881
  %15 = shl i32 %14, %10, !dbg !2882
  %16 = xor i32 %15, %11, !dbg !2883
  store i32 %16, i32* %8, align 4, !dbg !2883, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2858, metadata !1849), !dbg !2865
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2884
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2885
  ret i8* %17, !dbg !2886
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2887 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2891, metadata !616), !dbg !2893
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2892, metadata !616), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2855, metadata !616) #10, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2856, metadata !616) #10, !dbg !2897
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2857, metadata !616) #10, !dbg !2898
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2899
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2900, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !1849) #10, !dbg !2901
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1319, metadata !616) #10, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1320, metadata !616) #10, !dbg !2904
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1321, metadata !616) #10, !dbg !2905
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1322, metadata !616) #10, !dbg !2906
  %5 = lshr i8 %1, 5, !dbg !2907
  %6 = zext i8 %5 to i64, !dbg !2907
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2908
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1323, metadata !616) #10, !dbg !2909
  %8 = and i8 %1, 31, !dbg !2910
  %9 = zext i8 %8 to i32, !dbg !2911
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1325, metadata !616) #10, !dbg !2912
  %10 = load i32, i32* %7, align 4, !dbg !2913, !tbaa !693
  %11 = lshr i32 %10, %9, !dbg !2914
  %12 = and i32 %11, 1, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1326, metadata !616) #10, !dbg !2916
  %13 = xor i32 %12, 1, !dbg !2917
  %14 = shl i32 %13, %9, !dbg !2918
  %15 = xor i32 %14, %10, !dbg !2919
  store i32 %15, i32* %7, align 4, !dbg !2919, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !1849) #10, !dbg !2901
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2920
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2921
  ret i8* %16, !dbg !2922
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2923 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2925, metadata !616), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2891, metadata !616) #10, !dbg !2927
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2892, metadata !616) #10, !dbg !2929
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2855, metadata !616) #10, !dbg !2930
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2856, metadata !616) #10, !dbg !2932
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2857, metadata !616) #10, !dbg !2933
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2934
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2935, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2858, metadata !1849) #10, !dbg !2936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1319, metadata !616) #10, !dbg !2937
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1320, metadata !616) #10, !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1321, metadata !616) #10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1322, metadata !616) #10, !dbg !2941
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2942
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1323, metadata !616) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1325, metadata !616) #10, !dbg !2944
  %5 = load i32, i32* %4, align 4, !dbg !2945, !tbaa !693
  %6 = or i32 %5, 67108864, !dbg !2946
  store i32 %6, i32* %4, align 4, !dbg !2946, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2858, metadata !1849) #10, !dbg !2936
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2947
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2948
  ret i8* %7, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2950 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2952, metadata !616), !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2953, metadata !616), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2855, metadata !616) #10, !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2856, metadata !616) #10, !dbg !2958
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2857, metadata !616) #10, !dbg !2959
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2960
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2961, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !1849) #10, !dbg !2962
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1319, metadata !616) #10, !dbg !2963
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1320, metadata !616) #10, !dbg !2965
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1321, metadata !616) #10, !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1322, metadata !616) #10, !dbg !2967
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2968
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1323, metadata !616) #10, !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1325, metadata !616) #10, !dbg !2970
  %6 = load i32, i32* %5, align 4, !dbg !2971, !tbaa !693
  %7 = or i32 %6, 67108864, !dbg !2972
  store i32 %7, i32* %5, align 4, !dbg !2972, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !1849) #10, !dbg !2962
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2973
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2974
  ret i8* %8, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2976 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2731, metadata !2737), !dbg !2982
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2978, metadata !616), !dbg !2984
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2979, metadata !616), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2980, metadata !616), !dbg !2986
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2987
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2736, metadata !616) #10, !dbg !2988
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2989
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2989
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !616) #10, !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2982
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2982
  %9 = icmp eq i32 %1, 10, !dbg !2990
  br i1 %9, label %10, label %11, !dbg !2991

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2992, !noalias !2993
  unreachable, !dbg !2992

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2731, metadata !2747) #10, !dbg !2982
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2996
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2997
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2998
  store i32 %1, i32* %13, align 8, !dbg !2998
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2998
  %15 = bitcast i32* %14 to i8*, !dbg !2998
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2998
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2981, metadata !1849), !dbg !2999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1319, metadata !616), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1320, metadata !616), !dbg !3002
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1321, metadata !616), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1322, metadata !616), !dbg !3004
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3005
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1323, metadata !616), !dbg !3006
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1325, metadata !616), !dbg !3007
  %17 = load i32, i32* %16, align 4, !dbg !3008, !tbaa !693
  %18 = or i32 %17, 67108864, !dbg !3009
  store i32 %18, i32* %16, align 4, !dbg !3009, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2981, metadata !1849), !dbg !2999
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3010
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3011
  ret i8* %19, !dbg !3012
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3013 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3017, metadata !616), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3018, metadata !616), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3019, metadata !616), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3020, metadata !616), !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3025, metadata !616) #10, !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3030, metadata !616) #10, !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3031, metadata !616) #10, !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3032, metadata !616) #10, !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3033, metadata !616) #10, !dbg !3040
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3041
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3042, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3034, metadata !1849) #10, !dbg !3043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1369, metadata !616) #10, !dbg !3044
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1370, metadata !616) #10, !dbg !3046
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1371, metadata !616) #10, !dbg !3047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1369, metadata !616) #10, !dbg !3044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1369, metadata !616) #10, !dbg !3044
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3048
  store i32 10, i32* %7, align 8, !dbg !3049, !tbaa !1299
  %8 = icmp ne i8* %1, null, !dbg !3050
  %9 = icmp ne i8* %2, null, !dbg !3051
  %10 = and i1 %8, %9, !dbg !3052
  br i1 %10, label %12, label %11, !dbg !3052

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3053
  unreachable, !dbg !3053

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3054
  store i8* %1, i8** %13, align 8, !dbg !3055, !tbaa !1388
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3056
  store i8* %2, i8** %14, align 8, !dbg !3057, !tbaa !1391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3034, metadata !1849) #10, !dbg !3043
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3058
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3059
  ret i8* %15, !dbg !3060
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3026 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3025, metadata !616), !dbg !3061
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3030, metadata !616), !dbg !3062
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3031, metadata !616), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3032, metadata !616), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3033, metadata !616), !dbg !3065
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3066
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3066
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3067, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3034, metadata !1849), !dbg !3068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1369, metadata !616) #10, !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1370, metadata !616) #10, !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1371, metadata !616) #10, !dbg !3072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1369, metadata !616) #10, !dbg !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1369, metadata !616) #10, !dbg !3069
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3073
  store i32 10, i32* %8, align 8, !dbg !3074, !tbaa !1299
  %9 = icmp ne i8* %1, null, !dbg !3075
  %10 = icmp ne i8* %2, null, !dbg !3076
  %11 = and i1 %9, %10, !dbg !3077
  br i1 %11, label %13, label %12, !dbg !3077

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3078
  unreachable, !dbg !3078

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3079
  store i8* %1, i8** %14, align 8, !dbg !3080, !tbaa !1388
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3081
  store i8* %2, i8** %15, align 8, !dbg !3082, !tbaa !1391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3034, metadata !1849), !dbg !3068
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3083
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3084
  ret i8* %16, !dbg !3085
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3086 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3090, metadata !616), !dbg !3093
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3091, metadata !616), !dbg !3094
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3092, metadata !616), !dbg !3095
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3017, metadata !616) #10, !dbg !3096
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3018, metadata !616) #10, !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3019, metadata !616) #10, !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3020, metadata !616) #10, !dbg !3100
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3025, metadata !616) #10, !dbg !3101
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3030, metadata !616) #10, !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3031, metadata !616) #10, !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3032, metadata !616) #10, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3033, metadata !616) #10, !dbg !3106
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3107
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3108, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3034, metadata !1849) #10, !dbg !3109
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1369, metadata !616) #10, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1370, metadata !616) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1371, metadata !616) #10, !dbg !3113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1369, metadata !616) #10, !dbg !3110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1369, metadata !616) #10, !dbg !3110
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3114
  store i32 10, i32* %6, align 8, !dbg !3115, !tbaa !1299
  %7 = icmp ne i8* %0, null, !dbg !3116
  %8 = icmp ne i8* %1, null, !dbg !3117
  %9 = and i1 %7, %8, !dbg !3118
  br i1 %9, label %11, label %10, !dbg !3118

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3119
  unreachable, !dbg !3119

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3120
  store i8* %0, i8** %12, align 8, !dbg !3121, !tbaa !1388
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3122
  store i8* %1, i8** %13, align 8, !dbg !3123, !tbaa !1391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3034, metadata !1849) #10, !dbg !3109
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3124
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3125
  ret i8* %14, !dbg !3126
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3127 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3131, metadata !616), !dbg !3135
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3132, metadata !616), !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3133, metadata !616), !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3134, metadata !616), !dbg !3138
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3025, metadata !616) #10, !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3030, metadata !616) #10, !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3031, metadata !616) #10, !dbg !3142
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3032, metadata !616) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3033, metadata !616) #10, !dbg !3144
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3145
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3146, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3034, metadata !1849) #10, !dbg !3147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1369, metadata !616) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1370, metadata !616) #10, !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1371, metadata !616) #10, !dbg !3151
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1369, metadata !616) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1369, metadata !616) #10, !dbg !3148
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3152
  store i32 10, i32* %7, align 8, !dbg !3153, !tbaa !1299
  %8 = icmp ne i8* %0, null, !dbg !3154
  %9 = icmp ne i8* %1, null, !dbg !3155
  %10 = and i1 %8, %9, !dbg !3156
  br i1 %10, label %12, label %11, !dbg !3156

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3157
  unreachable, !dbg !3157

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3158
  store i8* %0, i8** %13, align 8, !dbg !3159, !tbaa !1388
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3160
  store i8* %1, i8** %14, align 8, !dbg !3161, !tbaa !1391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3034, metadata !1849) #10, !dbg !3147
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3162
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3163
  ret i8* %15, !dbg !3164
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3165 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3169, metadata !616), !dbg !3172
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3170, metadata !616), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3171, metadata !616), !dbg !3174
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3175
  ret i8* %4, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3177 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3181, metadata !616), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3182, metadata !616), !dbg !3184
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3169, metadata !616) #10, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3170, metadata !616) #10, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3171, metadata !616) #10, !dbg !3188
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3189
  ret i8* %3, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3191 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3195, metadata !616), !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3196, metadata !616), !dbg !3198
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3169, metadata !616) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3170, metadata !616) #10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3171, metadata !616) #10, !dbg !3202
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3203
  ret i8* %3, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3205 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3209, metadata !616), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3195, metadata !616) #10, !dbg !3211
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3196, metadata !616) #10, !dbg !3213
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3169, metadata !616) #10, !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3170, metadata !616) #10, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3171, metadata !616) #10, !dbg !3217
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3218
  ret i8* %2, !dbg !3219
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3220 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3265, metadata !616), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3266, metadata !616), !dbg !3272
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3267, metadata !616), !dbg !3273
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3268, metadata !616), !dbg !3274
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3269, metadata !616), !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3270, metadata !616), !dbg !3276
  %7 = icmp eq i8* %1, null, !dbg !3277
  br i1 %7, label %10, label %8, !dbg !3279

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3280
  br label %12, !dbg !3280

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.62, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3281
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i32 5) #10, !dbg !3282
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3283
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.64, i64 0, i64 0), i32 5) #10, !dbg !3285
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3286
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
  ], !dbg !3287

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3288
  unreachable, !dbg !3288

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.65, i64 0, i64 0), i32 5) #10, !dbg !3290
  %20 = load i8*, i8** %4, align 8, !dbg !3290, !tbaa !624
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3291
  br label %146, !dbg !3293

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.66, i64 0, i64 0), i32 5) #10, !dbg !3294
  %24 = load i8*, i8** %4, align 8, !dbg !3294, !tbaa !624
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3294
  %26 = load i8*, i8** %25, align 8, !dbg !3294, !tbaa !624
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3295
  br label %146, !dbg !3296

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.67, i64 0, i64 0), i32 5) #10, !dbg !3297
  %30 = load i8*, i8** %4, align 8, !dbg !3297, !tbaa !624
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3297
  %32 = load i8*, i8** %31, align 8, !dbg !3297, !tbaa !624
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3297
  %34 = load i8*, i8** %33, align 8, !dbg !3297, !tbaa !624
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3298
  br label %146, !dbg !3299

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.68, i64 0, i64 0), i32 5) #10, !dbg !3300
  %38 = load i8*, i8** %4, align 8, !dbg !3300, !tbaa !624
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3300
  %40 = load i8*, i8** %39, align 8, !dbg !3300, !tbaa !624
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3300
  %42 = load i8*, i8** %41, align 8, !dbg !3300, !tbaa !624
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3300
  %44 = load i8*, i8** %43, align 8, !dbg !3300, !tbaa !624
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3301
  br label %146, !dbg !3302

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.69, i64 0, i64 0), i32 5) #10, !dbg !3303
  %48 = load i8*, i8** %4, align 8, !dbg !3303, !tbaa !624
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3303
  %50 = load i8*, i8** %49, align 8, !dbg !3303, !tbaa !624
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3303
  %52 = load i8*, i8** %51, align 8, !dbg !3303, !tbaa !624
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3303
  %54 = load i8*, i8** %53, align 8, !dbg !3303, !tbaa !624
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3303
  %56 = load i8*, i8** %55, align 8, !dbg !3303, !tbaa !624
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3304
  br label %146, !dbg !3305

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.70, i64 0, i64 0), i32 5) #10, !dbg !3306
  %60 = load i8*, i8** %4, align 8, !dbg !3306, !tbaa !624
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3306
  %62 = load i8*, i8** %61, align 8, !dbg !3306, !tbaa !624
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3306
  %64 = load i8*, i8** %63, align 8, !dbg !3306, !tbaa !624
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3306
  %66 = load i8*, i8** %65, align 8, !dbg !3306, !tbaa !624
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3306
  %68 = load i8*, i8** %67, align 8, !dbg !3306, !tbaa !624
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3306
  %70 = load i8*, i8** %69, align 8, !dbg !3306, !tbaa !624
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3307
  br label %146, !dbg !3308

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.71, i64 0, i64 0), i32 5) #10, !dbg !3309
  %74 = load i8*, i8** %4, align 8, !dbg !3309, !tbaa !624
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3309
  %76 = load i8*, i8** %75, align 8, !dbg !3309, !tbaa !624
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3309
  %78 = load i8*, i8** %77, align 8, !dbg !3309, !tbaa !624
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3309
  %80 = load i8*, i8** %79, align 8, !dbg !3309, !tbaa !624
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3309
  %82 = load i8*, i8** %81, align 8, !dbg !3309, !tbaa !624
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3309
  %84 = load i8*, i8** %83, align 8, !dbg !3309, !tbaa !624
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3309
  %86 = load i8*, i8** %85, align 8, !dbg !3309, !tbaa !624
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3310
  br label %146, !dbg !3311

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.72, i64 0, i64 0), i32 5) #10, !dbg !3312
  %90 = load i8*, i8** %4, align 8, !dbg !3312, !tbaa !624
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3312
  %92 = load i8*, i8** %91, align 8, !dbg !3312, !tbaa !624
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3312
  %94 = load i8*, i8** %93, align 8, !dbg !3312, !tbaa !624
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3312
  %96 = load i8*, i8** %95, align 8, !dbg !3312, !tbaa !624
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3312
  %98 = load i8*, i8** %97, align 8, !dbg !3312, !tbaa !624
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3312
  %100 = load i8*, i8** %99, align 8, !dbg !3312, !tbaa !624
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3312
  %102 = load i8*, i8** %101, align 8, !dbg !3312, !tbaa !624
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3312
  %104 = load i8*, i8** %103, align 8, !dbg !3312, !tbaa !624
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3313
  br label %146, !dbg !3314

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.73, i64 0, i64 0), i32 5) #10, !dbg !3315
  %108 = load i8*, i8** %4, align 8, !dbg !3315, !tbaa !624
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3315
  %110 = load i8*, i8** %109, align 8, !dbg !3315, !tbaa !624
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3315
  %112 = load i8*, i8** %111, align 8, !dbg !3315, !tbaa !624
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3315
  %114 = load i8*, i8** %113, align 8, !dbg !3315, !tbaa !624
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3315
  %116 = load i8*, i8** %115, align 8, !dbg !3315, !tbaa !624
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3315
  %118 = load i8*, i8** %117, align 8, !dbg !3315, !tbaa !624
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3315
  %120 = load i8*, i8** %119, align 8, !dbg !3315, !tbaa !624
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3315
  %122 = load i8*, i8** %121, align 8, !dbg !3315, !tbaa !624
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3315
  %124 = load i8*, i8** %123, align 8, !dbg !3315, !tbaa !624
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3316
  br label %146, !dbg !3317

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !3318
  %128 = load i8*, i8** %4, align 8, !dbg !3318, !tbaa !624
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3318
  %130 = load i8*, i8** %129, align 8, !dbg !3318, !tbaa !624
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3318
  %132 = load i8*, i8** %131, align 8, !dbg !3318, !tbaa !624
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3318
  %134 = load i8*, i8** %133, align 8, !dbg !3318, !tbaa !624
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3318
  %136 = load i8*, i8** %135, align 8, !dbg !3318, !tbaa !624
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3318
  %138 = load i8*, i8** %137, align 8, !dbg !3318, !tbaa !624
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3318
  %140 = load i8*, i8** %139, align 8, !dbg !3318, !tbaa !624
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3318
  %142 = load i8*, i8** %141, align 8, !dbg !3318, !tbaa !624
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3318
  %144 = load i8*, i8** %143, align 8, !dbg !3318, !tbaa !624
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3319
  br label %146, !dbg !3320

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3321
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3322 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3326, metadata !616), !dbg !3332
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3327, metadata !616), !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3328, metadata !616), !dbg !3334
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3329, metadata !616), !dbg !3335
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3330, metadata !616), !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3331, metadata !616), !dbg !3337
  br label %6, !dbg !3338

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3331, metadata !616), !dbg !3337
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3340
  %9 = load i8*, i8** %8, align 8, !dbg !3340, !tbaa !624
  %10 = icmp eq i8* %9, null, !dbg !3343
  %11 = add i64 %7, 1, !dbg !3345
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3331, metadata !616), !dbg !3337
  br i1 %10, label %12, label %6, !dbg !3343, !llvm.loop !3347

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3350
  ret void, !dbg !3351
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3352 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3363, metadata !616), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3364, metadata !616), !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3365, metadata !616), !dbg !3373
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3366, metadata !616), !dbg !3374
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3367, metadata !616), !dbg !3375
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3376
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3376
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3369, metadata !616), !dbg !3377
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3368, metadata !616), !dbg !3378
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3379
  %12 = icmp ult i32 %11, 41, !dbg !3379
  br i1 %12, label %13, label %18, !dbg !3379

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3383
  %15 = sext i32 %11 to i64, !dbg !3383
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3383
  %17 = add i32 %11, 8, !dbg !3383
  store i32 %17, i32* %8, align 8, !dbg !3383
  br label %21, !dbg !3383

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3385
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3385
  store i8* %20, i8** %10, align 8, !dbg !3385
  br label %21, !dbg !3385

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3379
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3387
  %25 = load i8*, i8** %24, align 8, !dbg !3387
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3389
  store i8* %25, i8** %26, align 16, !dbg !3390, !tbaa !624
  %27 = icmp eq i8* %25, null, !dbg !3391
  br i1 %27, label %30, label %28, !dbg !3392

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %29 = icmp ult i32 %22, 41, !dbg !3379
  br i1 %29, label %35, label %32, !dbg !3379

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3394
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3395
  ret void, !dbg !3395

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3385
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3385
  store i8* %34, i8** %10, align 8, !dbg !3385
  br label %40, !dbg !3385

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3383
  %37 = sext i32 %22 to i64, !dbg !3383
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3383
  %39 = add i32 %22, 8, !dbg !3383
  store i32 %39, i32* %8, align 8, !dbg !3383
  br label %40, !dbg !3383

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3379
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3387
  %44 = load i8*, i8** %43, align 8, !dbg !3387
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3389
  store i8* %44, i8** %45, align 8, !dbg !3390, !tbaa !624
  %46 = icmp eq i8* %44, null, !dbg !3391
  br i1 %46, label %30, label %47, !dbg !3392

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %48 = icmp ult i32 %41, 41, !dbg !3379
  br i1 %48, label %52, label %49, !dbg !3379

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3385
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3385
  store i8* %51, i8** %10, align 8, !dbg !3385
  br label %57, !dbg !3385

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3383
  %54 = sext i32 %41 to i64, !dbg !3383
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3383
  %56 = add i32 %41, 8, !dbg !3383
  store i32 %56, i32* %8, align 8, !dbg !3383
  br label %57, !dbg !3383

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3379
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3387
  %61 = load i8*, i8** %60, align 8, !dbg !3387
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3389
  store i8* %61, i8** %62, align 16, !dbg !3390, !tbaa !624
  %63 = icmp eq i8* %61, null, !dbg !3391
  br i1 %63, label %30, label %64, !dbg !3392

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %65 = icmp ult i32 %58, 41, !dbg !3379
  br i1 %65, label %69, label %66, !dbg !3379

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3385
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3385
  store i8* %68, i8** %10, align 8, !dbg !3385
  br label %74, !dbg !3385

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3383
  %71 = sext i32 %58 to i64, !dbg !3383
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3383
  %73 = add i32 %58, 8, !dbg !3383
  store i32 %73, i32* %8, align 8, !dbg !3383
  br label %74, !dbg !3383

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3379
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3387
  %78 = load i8*, i8** %77, align 8, !dbg !3387
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3389
  store i8* %78, i8** %79, align 8, !dbg !3390, !tbaa !624
  %80 = icmp eq i8* %78, null, !dbg !3391
  br i1 %80, label %30, label %81, !dbg !3392

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %82 = icmp ult i32 %75, 41, !dbg !3379
  br i1 %82, label %86, label %83, !dbg !3379

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3385
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3385
  store i8* %85, i8** %10, align 8, !dbg !3385
  br label %91, !dbg !3385

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3383
  %88 = sext i32 %75 to i64, !dbg !3383
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3383
  %90 = add i32 %75, 8, !dbg !3383
  store i32 %90, i32* %8, align 8, !dbg !3383
  br label %91, !dbg !3383

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3379
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3387
  %95 = load i8*, i8** %94, align 8, !dbg !3387
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3389
  store i8* %95, i8** %96, align 16, !dbg !3390, !tbaa !624
  %97 = icmp eq i8* %95, null, !dbg !3391
  br i1 %97, label %30, label %98, !dbg !3392

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %99 = icmp ult i32 %92, 41, !dbg !3379
  br i1 %99, label %103, label %100, !dbg !3379

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3385
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3385
  store i8* %102, i8** %10, align 8, !dbg !3385
  br label %108, !dbg !3385

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3383
  %105 = sext i32 %92 to i64, !dbg !3383
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3383
  %107 = add i32 %92, 8, !dbg !3383
  store i32 %107, i32* %8, align 8, !dbg !3383
  br label %108, !dbg !3383

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3387
  %111 = load i8*, i8** %110, align 8, !dbg !3387
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3389
  store i8* %111, i8** %112, align 8, !dbg !3390, !tbaa !624
  %113 = icmp eq i8* %111, null, !dbg !3391
  br i1 %113, label %30, label %114, !dbg !3392

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %115 = load i8*, i8** %10, align 8, !dbg !3385
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3385
  store i8* %116, i8** %10, align 8, !dbg !3385
  %117 = bitcast i8* %115 to i8**, !dbg !3387
  %118 = load i8*, i8** %117, align 8, !dbg !3387
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3389
  store i8* %118, i8** %119, align 16, !dbg !3390, !tbaa !624
  %120 = icmp eq i8* %118, null, !dbg !3391
  br i1 %120, label %30, label %121, !dbg !3392

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %122 = load i8*, i8** %10, align 8, !dbg !3385
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3385
  store i8* %123, i8** %10, align 8, !dbg !3385
  %124 = bitcast i8* %122 to i8**, !dbg !3387
  %125 = load i8*, i8** %124, align 8, !dbg !3387
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3389
  store i8* %125, i8** %126, align 8, !dbg !3390, !tbaa !624
  %127 = icmp eq i8* %125, null, !dbg !3391
  br i1 %127, label %30, label %128, !dbg !3392

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %129 = load i8*, i8** %10, align 8, !dbg !3385
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3385
  store i8* %130, i8** %10, align 8, !dbg !3385
  %131 = bitcast i8* %129 to i8**, !dbg !3387
  %132 = load i8*, i8** %131, align 8, !dbg !3387
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3389
  store i8* %132, i8** %133, align 16, !dbg !3390, !tbaa !624
  %134 = icmp eq i8* %132, null, !dbg !3391
  br i1 %134, label %30, label %135, !dbg !3392

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %136 = load i8*, i8** %10, align 8, !dbg !3385
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3385
  store i8* %137, i8** %10, align 8, !dbg !3385
  %138 = bitcast i8* %136 to i8**, !dbg !3387
  %139 = load i8*, i8** %138, align 8, !dbg !3387
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3389
  store i8* %139, i8** %140, align 8, !dbg !3390, !tbaa !624
  %141 = icmp eq i8* %139, null, !dbg !3391
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3368, metadata !616), !dbg !3378
  %142 = select i1 %141, i64 9, i64 10, !dbg !3392
  br label %30, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3396 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3400, metadata !616), !dbg !3409
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3401, metadata !616), !dbg !3410
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3402, metadata !616), !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3403, metadata !616), !dbg !3412
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3413
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3413
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3404, metadata !616), !dbg !3414
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3415
  call void @llvm.va_start(i8* nonnull %6), !dbg !3415
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3416
  call void @llvm.va_end(i8* nonnull %6), !dbg !3417
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3418
  ret void, !dbg !3418
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3419 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #10, !dbg !3420
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #10, !dbg !3421
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3423
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.79, i64 0, i64 0)) #10, !dbg !3424
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.80, i64 0, i64 0), i32 5) #10, !dbg !3425
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3425, !tbaa !624
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3426
  ret void, !dbg !3427
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3428 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3432, metadata !616), !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3433, metadata !616), !dbg !3435
  %3 = udiv i64 9223372036854775807, %1, !dbg !3436
  %4 = icmp ult i64 %3, %0, !dbg !3436
  br i1 %4, label %5, label %6, !dbg !3438

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3439
  unreachable, !dbg !3439

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3441, metadata !616) #10, !dbg !3448
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3447, metadata !616) #10, !dbg !3451
  %9 = icmp eq i8* %8, null, !dbg !3452
  %10 = icmp ne i64 %7, 0, !dbg !3454
  %11 = and i1 %10, %9, !dbg !3456
  br i1 %11, label %12, label %13, !dbg !3456

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3457
  unreachable, !dbg !3457

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3458
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3442 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3441, metadata !616), !dbg !3459
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3460
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3447, metadata !616), !dbg !3461
  %3 = icmp eq i8* %2, null, !dbg !3462
  %4 = icmp ne i64 %0, 0, !dbg !3463
  %5 = and i1 %4, %3, !dbg !3464
  br i1 %5, label %6, label %7, !dbg !3464

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3465
  unreachable, !dbg !3465

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3466
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3467 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3471, metadata !616), !dbg !3474
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3472, metadata !616), !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3473, metadata !616), !dbg !3476
  %4 = udiv i64 9223372036854775807, %2, !dbg !3477
  %5 = icmp ult i64 %4, %1, !dbg !3477
  br i1 %5, label %6, label %7, !dbg !3479

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3480
  unreachable, !dbg !3480

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !616) #10, !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3487, metadata !616) #10, !dbg !3490
  %9 = icmp eq i64 %8, 0, !dbg !3491
  %10 = icmp ne i8* %0, null, !dbg !3493
  %11 = and i1 %10, %9, !dbg !3495
  br i1 %11, label %12, label %13, !dbg !3495

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3496
  br label %19, !dbg !3498

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3482, metadata !616) #10, !dbg !3488
  %15 = icmp eq i8* %14, null, !dbg !3500
  %16 = icmp ne i64 %8, 0, !dbg !3502
  %17 = and i1 %16, %15, !dbg !3504
  br i1 %17, label %18, label %19, !dbg !3504

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3505
  unreachable, !dbg !3505

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3506
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3483 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !616), !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3487, metadata !616), !dbg !3508
  %3 = icmp eq i64 %1, 0, !dbg !3509
  %4 = icmp ne i8* %0, null, !dbg !3510
  %5 = and i1 %4, %3, !dbg !3511
  br i1 %5, label %6, label %7, !dbg !3511

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3512
  br label %13, !dbg !3513

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3514
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3482, metadata !616), !dbg !3507
  %9 = icmp eq i8* %8, null, !dbg !3515
  %10 = icmp ne i64 %1, 0, !dbg !3516
  %11 = and i1 %10, %9, !dbg !3517
  br i1 %11, label %12, label %13, !dbg !3517

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3518
  unreachable, !dbg !3518

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3519
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !576 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !581, metadata !616), !dbg !3520
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !582, metadata !616), !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !583, metadata !616), !dbg !3522
  %4 = load i64, i64* %1, align 8, !dbg !3523, !tbaa !892
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !584, metadata !616), !dbg !3524
  %5 = icmp eq i8* %0, null, !dbg !3525
  br i1 %5, label %6, label %13, !dbg !3527

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3528
  br i1 %7, label %8, label %17, !dbg !3531

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !584, metadata !616), !dbg !3524
  %10 = icmp ugt i64 %2, 128, !dbg !3534
  %11 = zext i1 %10 to i64, !dbg !3534
  %12 = add nuw nsw i64 %9, %11, !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !584, metadata !616), !dbg !3524
  br label %17, !dbg !3536

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3537
  %15 = icmp ugt i64 %14, %4, !dbg !3540
  br i1 %15, label %20, label %16, !dbg !3541

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3542
  unreachable, !dbg !3542

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !584, metadata !616), !dbg !3524
  store i64 %18, i64* %1, align 8, !dbg !3543, !tbaa !892
  %19 = mul i64 %18, %2, !dbg !3544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !616) #10, !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3487, metadata !616) #10, !dbg !3547
  br label %27, !dbg !3548

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3549
  %22 = add i64 %4, 1, !dbg !3550
  %23 = add i64 %22, %21, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !584, metadata !616), !dbg !3524
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !584, metadata !616), !dbg !3524
  store i64 %23, i64* %1, align 8, !dbg !3543, !tbaa !892
  %24 = mul i64 %23, %2, !dbg !3544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !616) #10, !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3487, metadata !616) #10, !dbg !3547
  %25 = icmp eq i64 %24, 0, !dbg !3552
  br i1 %25, label %26, label %27, !dbg !3548

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3553
  br label %34, !dbg !3554

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3482, metadata !616) #10, !dbg !3545
  %30 = icmp eq i8* %29, null, !dbg !3556
  %31 = icmp ne i64 %28, 0, !dbg !3557
  %32 = and i1 %31, %30, !dbg !3558
  br i1 %32, label %33, label %34, !dbg !3558

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3559
  unreachable, !dbg !3559

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3560
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3561 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3563, metadata !616), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3441, metadata !616) #10, !dbg !3565
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3447, metadata !616) #10, !dbg !3568
  %3 = icmp eq i8* %2, null, !dbg !3569
  %4 = icmp ne i64 %0, 0, !dbg !3570
  %5 = and i1 %4, %3, !dbg !3571
  br i1 %5, label %6, label %7, !dbg !3571

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3572
  unreachable, !dbg !3572

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3573
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3574 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3578, metadata !616), !dbg !3580
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3579, metadata !616), !dbg !3581
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !581, metadata !616) #10, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !582, metadata !616) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !583, metadata !616) #10, !dbg !3585
  %3 = load i64, i64* %1, align 8, !dbg !3586, !tbaa !892
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !584, metadata !616) #10, !dbg !3587
  %4 = icmp eq i8* %0, null, !dbg !3588
  br i1 %4, label %5, label %8, !dbg !3589

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !584, metadata !616) #10, !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !584, metadata !616) #10, !dbg !3587
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !584, metadata !616) #10, !dbg !3587
  store i64 %7, i64* %1, align 8, !dbg !3592, !tbaa !892
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !616) #10, !dbg !3593
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3487, metadata !616) #10, !dbg !3595
  br label %17, !dbg !3596

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3597
  br i1 %9, label %11, label %10, !dbg !3598

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3599
  unreachable, !dbg !3599

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3600
  %13 = add i64 %3, 1, !dbg !3601
  %14 = add i64 %13, %12, !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !584, metadata !616) #10, !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !584, metadata !616) #10, !dbg !3587
  store i64 %14, i64* %1, align 8, !dbg !3592, !tbaa !892
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !616) #10, !dbg !3593
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3487, metadata !616) #10, !dbg !3595
  %15 = icmp eq i64 %14, 0, !dbg !3603
  br i1 %15, label %16, label %17, !dbg !3596

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3604
  br label %24, !dbg !3605

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3606
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3482, metadata !616) #10, !dbg !3593
  %20 = icmp eq i8* %19, null, !dbg !3607
  %21 = icmp ne i64 %18, 0, !dbg !3608
  %22 = and i1 %21, %20, !dbg !3609
  br i1 %22, label %23, label %24, !dbg !3609

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3610
  unreachable, !dbg !3610

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3611
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3612 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3614, metadata !616), !dbg !3615
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3441, metadata !616) #10, !dbg !3616
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3618
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3447, metadata !616) #10, !dbg !3619
  %3 = icmp eq i8* %2, null, !dbg !3620
  %4 = icmp ne i64 %0, 0, !dbg !3621
  %5 = and i1 %4, %3, !dbg !3622
  br i1 %5, label %6, label %7, !dbg !3622

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3623
  unreachable, !dbg !3623

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3624
  ret i8* %2, !dbg !3625
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3626 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3628, metadata !616), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3629, metadata !616), !dbg !3632
  %3 = udiv i64 9223372036854775807, %1, !dbg !3633
  %4 = icmp ult i64 %3, %0, !dbg !3633
  br i1 %4, label %8, label %5, !dbg !3635

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3630, metadata !616), !dbg !3638
  %7 = icmp eq i8* %6, null, !dbg !3639
  br i1 %7, label %8, label %9, !dbg !3640

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3642
  unreachable, !dbg !3642

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3643
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3644 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3648, metadata !616), !dbg !3650
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3649, metadata !616), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3441, metadata !616) #10, !dbg !3652
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3654
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3447, metadata !616) #10, !dbg !3655
  %4 = icmp eq i8* %3, null, !dbg !3656
  %5 = icmp ne i64 %1, 0, !dbg !3657
  %6 = and i1 %5, %4, !dbg !3658
  br i1 %6, label %7, label %8, !dbg !3658

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3659
  unreachable, !dbg !3659

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3660
  ret i8* %3, !dbg !3661
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3662 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !616), !dbg !3665
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3666
  %3 = add i64 %2, 1, !dbg !3667
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3648, metadata !616) #10, !dbg !3668
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3649, metadata !616) #10, !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3441, metadata !616) #10, !dbg !3672
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3447, metadata !616) #10, !dbg !3675
  %5 = icmp eq i8* %4, null, !dbg !3676
  %6 = icmp ne i64 %3, 0, !dbg !3677
  %7 = and i1 %6, %5, !dbg !3678
  br i1 %7, label %8, label %9, !dbg !3678

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3679
  unreachable, !dbg !3679

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3680
  ret i8* %4, !dbg !3681
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3682 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3684, !tbaa !693
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.91, i64 0, i64 0), i32 5) #10, !dbg !3685
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i64 0, i64 0), i8* %2) #10, !dbg !3686
  tail call void @abort() #14, !dbg !3688
  unreachable, !dbg !3688
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3689 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3692, metadata !616), !dbg !3698
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3693, metadata !616), !dbg !3699
  %3 = icmp eq i64 %0, 0, !dbg !3700
  %4 = icmp eq i64 %1, 0, !dbg !3701
  %5 = or i1 %3, %4, !dbg !3703
  br i1 %5, label %12, label %6, !dbg !3703

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3695, metadata !616), !dbg !3705
  %8 = udiv i64 %7, %1, !dbg !3706
  %9 = icmp eq i64 %8, %0, !dbg !3708
  br i1 %9, label %12, label %10, !dbg !3709

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3710
  store i32 12, i32* %11, align 4, !dbg !3712, !tbaa !693
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3692, metadata !616), !dbg !3698
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3693, metadata !616), !dbg !3699
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3694, metadata !616), !dbg !3714
  br label %16, !dbg !3715

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3716
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3717 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3762, metadata !616), !dbg !3766
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3763, metadata !616), !dbg !3767
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3765, metadata !616), !dbg !3768
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3769
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3764, metadata !616), !dbg !3770
  %3 = icmp slt i32 %2, 0, !dbg !3771
  br i1 %3, label %4, label %6, !dbg !3773

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3774
  br label %24, !dbg !3775

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3776
  %8 = icmp eq i32 %7, 0, !dbg !3776
  br i1 %8, label %13, label %9, !dbg !3778

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3779
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3781
  %12 = icmp eq i64 %11, -1, !dbg !3783
  br i1 %12, label %16, label %13, !dbg !3784

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3785
  %15 = icmp eq i32 %14, 0, !dbg !3785
  br i1 %15, label %16, label %18, !dbg !3786

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3763, metadata !616), !dbg !3767
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3788
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3765, metadata !616), !dbg !3768
  br label %24, !dbg !3789

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3790
  %20 = load i32, i32* %19, align 4, !dbg !3790, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3763, metadata !616), !dbg !3767
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3763, metadata !616), !dbg !3767
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3788
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3765, metadata !616), !dbg !3768
  %22 = icmp eq i32 %20, 0, !dbg !3791
  br i1 %22, label %24, label %23, !dbg !3789

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3793, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3765, metadata !616), !dbg !3768
  br label %24, !dbg !3795

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3796
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3797 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3842, metadata !616), !dbg !3843
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3844
  br i1 %2, label %6, label %3, !dbg !3846

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3847
  %5 = icmp eq i32 %4, 0, !dbg !3847
  br i1 %5, label %6, label %8, !dbg !3849

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3851
  br label %17, !dbg !3852

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3853, metadata !616) #10, !dbg !3858
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3860
  %10 = load i32, i32* %9, align 8, !dbg !3860, !tbaa !876
  %11 = and i32 %10, 256, !dbg !3862
  %12 = icmp eq i32 %11, 0, !dbg !3862
  br i1 %12, label %15, label %13, !dbg !3863

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3864
  br label %15, !dbg !3864

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3865
  br label %17, !dbg !3866

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3867
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3868 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3913, metadata !616), !dbg !3919
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3914, metadata !616), !dbg !3920
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3915, metadata !616), !dbg !3921
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3922
  %5 = load i8*, i8** %4, align 8, !dbg !3922, !tbaa !3923
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3924
  %7 = load i8*, i8** %6, align 8, !dbg !3924, !tbaa !3925
  %8 = icmp eq i8* %5, %7, !dbg !3926
  br i1 %8, label %9, label %28, !dbg !3927

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3928
  %11 = load i8*, i8** %10, align 8, !dbg !3928, !tbaa !3930
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3931
  %13 = load i8*, i8** %12, align 8, !dbg !3931, !tbaa !3932
  %14 = icmp eq i8* %11, %13, !dbg !3933
  br i1 %14, label %15, label %28, !dbg !3934

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3935
  %17 = load i8*, i8** %16, align 8, !dbg !3935, !tbaa !3936
  %18 = icmp eq i8* %17, null, !dbg !3937
  br i1 %18, label %19, label %28, !dbg !3938

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3940
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3941
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3916, metadata !616), !dbg !3943
  %22 = icmp eq i64 %21, -1, !dbg !3944
  br i1 %22, label %30, label %23, !dbg !3946

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3947
  %25 = load i32, i32* %24, align 8, !dbg !3948, !tbaa !876
  %26 = and i32 %25, -17, !dbg !3948
  store i32 %26, i32* %24, align 8, !dbg !3948, !tbaa !876
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3949
  store i64 %21, i64* %27, align 8, !dbg !3950, !tbaa !3951
  br label %30, !dbg !3952

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3953
  br label %30, !dbg !3954

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3955
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3956 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3973, metadata !616), !dbg !3982
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3974, metadata !616), !dbg !3983
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3975, metadata !616), !dbg !3984
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3976, metadata !616), !dbg !3985
  %6 = bitcast i32* %5 to i8*, !dbg !3986
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3986
  %7 = icmp eq i32* %0, null, !dbg !3987
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3973, metadata !616), !dbg !3982
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3989
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3973, metadata !616), !dbg !3982
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3977, metadata !616), !dbg !3991
  %10 = icmp ugt i64 %9, -3, !dbg !3992
  %11 = icmp ne i64 %2, 0, !dbg !3993
  %12 = and i1 %11, %10, !dbg !3995
  br i1 %12, label %13, label %18, !dbg !3995

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3996
  br i1 %14, label %18, label %15, !dbg !3998

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4000, !tbaa !840
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3979, metadata !616), !dbg !4001
  %17 = zext i8 %16 to i32, !dbg !4002
  store i32 %17, i32* %8, align 4, !dbg !4003, !tbaa !693
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4004
  ret i64 %19, !dbg !4004
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4005 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4050, metadata !616), !dbg !4055
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4056
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4057, metadata !616), !dbg !4060
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4062
  %4 = load i32, i32* %3, align 8, !dbg !4062, !tbaa !876
  %5 = and i32 %4, 32, !dbg !4062
  %6 = icmp eq i32 %5, 0, !dbg !4063
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4064
  %8 = icmp ne i32 %7, 0, !dbg !4065
  br i1 %6, label %9, label %19, !dbg !4066

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4068
  %11 = icmp ne i64 %2, 0, !dbg !4068
  %12 = or i1 %11, %10, !dbg !4068
  %13 = sext i1 %8 to i32, !dbg !4068
  br i1 %12, label %22, label %14, !dbg !4068

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4070
  %16 = load i32, i32* %15, align 4, !dbg !4070, !tbaa !693
  %17 = icmp ne i32 %16, 9, !dbg !4072
  %18 = sext i1 %17 to i32, !dbg !4072
  br label %22, !dbg !4072

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4074

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4076
  store i32 0, i32* %21, align 4, !dbg !4078, !tbaa !693
  br label %22, !dbg !4076

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4079
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4080 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4085, metadata !616), !dbg !4105
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4086, metadata !616), !dbg !4106
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4107
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4087, metadata !616), !dbg !4108
  %3 = icmp eq i8* %2, null, !dbg !4109
  br i1 %3, label %15, label %4, !dbg !4110

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4095, metadata !616), !dbg !4111
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4096, metadata !616), !dbg !4112
  %5 = load i8, i8* %2, align 1, !dbg !4113, !tbaa !840
  %6 = icmp eq i8 %5, 67, !dbg !4115
  br i1 %6, label %7, label %11, !dbg !4118

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4120
  %9 = load i8, i8* %8, align 1, !dbg !4120, !tbaa !840
  %10 = icmp eq i8 %9, 0, !dbg !4123
  br i1 %10, label %14, label %11, !dbg !4125

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4101, metadata !616), !dbg !4127
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0)) #10, !dbg !4128
  %13 = icmp eq i32 %12, 0, !dbg !4130
  br i1 %13, label %14, label %15, !dbg !4132

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4086, metadata !616), !dbg !4106
  br label %15, !dbg !4134

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4135
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4136 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4148, metadata !616), !dbg !4222
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4215, metadata !616), !dbg !4224
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4225
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4140, metadata !616), !dbg !4226
  %4 = icmp eq i8* %3, null, !dbg !4227
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i8* %3, !dbg !4229
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4140, metadata !616), !dbg !4226
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4230, !tbaa !624
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4162, metadata !616) #10, !dbg !4231
  %7 = icmp eq i8* %6, null, !dbg !4232
  br i1 %7, label %8, label %127, !dbg !4233

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.111, i64 0, i64 0)) #10, !dbg !4234
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4163, metadata !616) #10, !dbg !4235
  %10 = icmp eq i8* %9, null, !dbg !4236
  br i1 %10, label %14, label %11, !dbg !4238

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4239, !tbaa !840
  %13 = icmp eq i8 %12, 0, !dbg !4241
  br i1 %13, label %14, label %15, !dbg !4242

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4244

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.112, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4163, metadata !616) #10, !dbg !4235
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4166, metadata !616) #10, !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4168, metadata !616) #10, !dbg !4247
  %18 = icmp eq i64 %17, 0, !dbg !4248
  br i1 %18, label %24, label %19, !dbg !4249

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4250
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4250
  %22 = load i8, i8* %21, align 1, !dbg !4250, !tbaa !840
  %23 = icmp ne i8 %22, 47, !dbg !4252
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4253
  %27 = add i64 %17, 14, !dbg !4254
  %28 = add i64 %27, %26, !dbg !4255
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4256
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4165, metadata !616) #10, !dbg !4257
  %30 = icmp eq i8* %29, null, !dbg !4258
  br i1 %30, label %125, label %31, !dbg !4258

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4259
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4262

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4263, !tbaa !840
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4265
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4266
  br label %37, !dbg !4267

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4265
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4266
  br label %37, !dbg !4267

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4268
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4170, metadata !616) #10, !dbg !4269
  %39 = icmp slt i32 %38, 0, !dbg !4270
  br i1 %39, label %123, label %40, !dbg !4271

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.114, i64 0, i64 0)) #10, !dbg !4272
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4171, metadata !616) #10, !dbg !4273
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4274
  br i1 %42, label %48, label %43, !dbg !4275

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4276

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4277
  br label %123, !dbg !4279

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4212, metadata !616) #10, !dbg !4276
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4213, metadata !616) #10, !dbg !4280
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4281
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4282
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4283, metadata !616) #10, !dbg !4288
  %53 = load i8*, i8** %46, align 8, !dbg !4290, !tbaa !3925
  %54 = load i8*, i8** %47, align 8, !dbg !4290, !tbaa !3923
  %55 = icmp ult i8* %53, %54, !dbg !4290
  br i1 %55, label %58, label %56, !dbg !4290, !prof !4291

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4292
  br label %62, !dbg !4292

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4294
  store i8* %59, i8** %46, align 8, !dbg !4294, !tbaa !3925
  %60 = load i8, i8* %53, align 1, !dbg !4294, !tbaa !840
  %61 = zext i8 %60 to i32, !dbg !4294
  br label %62, !dbg !4294

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4296
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4214, metadata !616) #10, !dbg !4298
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4299

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4300

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4283, metadata !616) #10, !dbg !4300
  %66 = load i8*, i8** %46, align 8, !dbg !4304, !tbaa !3925
  %67 = load i8*, i8** %47, align 8, !dbg !4304, !tbaa !3923
  %68 = icmp ult i8* %66, %67, !dbg !4304
  br i1 %68, label %71, label %69, !dbg !4304, !prof !4291

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4305
  br label %75, !dbg !4305

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4306
  store i8* %72, i8** %46, align 8, !dbg !4306, !tbaa !3925
  %73 = load i8, i8* %66, align 1, !dbg !4306, !tbaa !840
  %74 = zext i8 %73 to i32, !dbg !4306
  br label %75, !dbg !4306

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4307
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4214, metadata !616) #10, !dbg !4298
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4308, !llvm.loop !4310

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4313
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.115, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4314
  %80 = icmp slt i32 %79, 2, !dbg !4316
  br i1 %80, label %115, label %81, !dbg !4317

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4219, metadata !616) #10, !dbg !4319
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4320
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4220, metadata !616) #10, !dbg !4321
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4221, metadata !616) #10, !dbg !4322
  %84 = icmp eq i64 %51, 0, !dbg !4323
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4325

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4213, metadata !616) #10, !dbg !4280
  %89 = add i64 %86, 2, !dbg !4326
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4328
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4212, metadata !616) #10, !dbg !4276
  br label %95, !dbg !4329

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4330
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4213, metadata !616) #10, !dbg !4280
  %93 = add i64 %92, 1, !dbg !4332
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4333
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4212, metadata !616) #10, !dbg !4276
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4212, metadata !616) #10, !dbg !4276
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4213, metadata !616) #10, !dbg !4280
  %98 = icmp eq i8* %97, null, !dbg !4334
  br i1 %98, label %99, label %100, !dbg !4336

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4213, metadata !616) #10, !dbg !4280
  call void @free(i8* %52) #10, !dbg !4337
  br label %116, !dbg !4339

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4340
  %102 = xor i64 %83, -1, !dbg !4341
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4341
  %104 = xor i64 %82, -1, !dbg !4342
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4342
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4343, metadata !616) #10, !dbg !4352
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4351, metadata !616) #10, !dbg !4352
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4354
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4355
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4343, metadata !616) #10, !dbg !4356
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4351, metadata !616) #10, !dbg !4356
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4358
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4359
  br label %111, !dbg !4360

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4276

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4212, metadata !616) #10, !dbg !4276
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4213, metadata !616) #10, !dbg !4280
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4360
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4360
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4276

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4276

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4212, metadata !616) #10, !dbg !4276
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4213, metadata !616) #10, !dbg !4280
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4360
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4360
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4361
  %120 = icmp eq i64 %117, 0, !dbg !4362
  br i1 %120, label %123, label %121, !dbg !4364

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4365
  store i8 0, i8* %122, align 1, !dbg !4367, !tbaa !840
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4162, metadata !616) #10, !dbg !4231
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4162, metadata !616) #10, !dbg !4231
  call void @free(i8* %29) #10, !dbg !4368
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4162, metadata !616) #10, !dbg !4231
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4369, !tbaa !624
  br label %127, !dbg !4370

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4141, metadata !616), !dbg !4371
  %129 = load i8, i8* %128, align 1, !dbg !4372, !tbaa !840
  %130 = icmp eq i8 %129, 0, !dbg !4373
  br i1 %130, label %157, label %131, !dbg !4374

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4376

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4376
  %136 = icmp eq i32 %135, 0, !dbg !4377
  br i1 %136, label %143, label %137, !dbg !4378

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4379
  br i1 %138, label %139, label %147, !dbg !4381

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4382
  %141 = load i8, i8* %140, align 1, !dbg !4382, !tbaa !840
  %142 = icmp eq i8 %141, 0, !dbg !4384
  br i1 %142, label %143, label %147, !dbg !4385

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4387
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4389
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4390
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4140, metadata !616), !dbg !4226
  br label %157, !dbg !4391

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4392
  %149 = add i64 %148, 1, !dbg !4393
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4394
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4141, metadata !616), !dbg !4371
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4395
  %152 = add i64 %151, 1, !dbg !4396
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4397
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4141, metadata !616), !dbg !4371
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4141, metadata !616), !dbg !4371
  %154 = load i8, i8* %153, align 1, !dbg !4372, !tbaa !840
  %155 = icmp eq i8 %154, 0, !dbg !4373
  br i1 %155, label %156, label %132, !dbg !4374, !llvm.loop !4398

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4226

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4140, metadata !616), !dbg !4226
  %159 = load i8, i8* %158, align 1, !dbg !4401, !tbaa !840
  %160 = icmp eq i8 %159, 0, !dbg !4403
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %158, !dbg !4404
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4140, metadata !616), !dbg !4226
  ret i8* %161, !dbg !4405
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
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !85, !91, !99, !554, !557, !106, !124, !132, !563, !199, !571, !588, !590, !592, !594, !596, !598, !601, !603, !208}
!llvm.ident = !{!606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606}
!llvm.module.flags = !{!607, !608, !609, !610}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "crctab", scope: !2, file: !3, line: 118, type: !77, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !42)
!3 = !DIFile(filename: "src/cksum.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!28 = !{!29, !32, !33, !36, !38, !41}
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
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !{!43, !46, !0}
!43 = !DIGlobalVariableExpression(var: !44)
!44 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 175, type: !45, isLocal: true, isDefinition: true)
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "infomap", scope: !48, file: !49, line: 632, type: !74, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !49, file: !49, line: 630, type: !50, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !52)
!49 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !DISubroutineType(types: !51)
!51 = !{null, !29}
!52 = !{!53, !54, !55, !62, !64, !65, !66, !69, !70, !72}
!53 = !DILocalVariable(name: "program", arg: 1, scope: !48, file: !49, line: 630, type: !29)
!54 = !DILocalVariable(name: "node", scope: !48, file: !49, line: 642, type: !29)
!55 = !DILocalVariable(name: "map_prog", scope: !48, file: !49, line: 643, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !48, file: !49, line: 632, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !58, file: !49, line: 632, baseType: !29, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !58, file: !49, line: 632, baseType: !29, size: 64, offset: 64)
!62 = !DILocalVariable(name: "__s1_len", scope: !63, file: !49, line: 645, type: !33)
!63 = distinct !DILexicalBlock(scope: !48, file: !49, line: 645, column: 33)
!64 = !DILocalVariable(name: "__s2_len", scope: !63, file: !49, line: 645, type: !33)
!65 = !DILocalVariable(name: "lc_messages", scope: !48, file: !49, line: 655, type: !29)
!66 = !DILocalVariable(name: "__s1_len", scope: !67, file: !49, line: 656, type: !33)
!67 = distinct !DILexicalBlock(scope: !68, file: !49, line: 656, column: 22)
!68 = distinct !DILexicalBlock(scope: !48, file: !49, line: 656, column: 7)
!69 = !DILocalVariable(name: "__s2_len", scope: !67, file: !49, line: 656, type: !33)
!70 = !DILocalVariable(name: "__s2", scope: !71, file: !49, line: 656, type: !38)
!71 = distinct !DILexicalBlock(scope: !67, file: !49, line: 656, column: 22)
!72 = !DILocalVariable(name: "__result", scope: !71, file: !49, line: 656, type: !73)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 896, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 7)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 16384, elements: !81)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !80, line: 108, baseType: !35)
!80 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!82}
!82 = !DISubrange(count: 256)
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "Version", scope: !85, file: !86, line: 2, type: !29, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !88)
!86 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{}
!88 = !{!83}
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "file_name", scope: !91, file: !96, line: 36, type: !29, isLocal: true, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !93)
!92 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !{!89, !94}
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !91, file: !96, line: 46, type: !45, isLocal: true, isDefinition: true)
!96 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "exit_failure", scope: !99, file: !102, line: 24, type: !103, isLocal: false, isDefinition: true)
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !101)
!100 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !{!97}
!102 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!104 = !DIGlobalVariableExpression(var: !105)
!105 = distinct !DIGlobalVariable(name: "long_options", scope: !106, file: !109, line: 33, type: !110, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !108)
!107 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!108 = !{!104}
!109 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 768, elements: !120)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !113, line: 104, size: 256, elements: !114)
!113 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !{!115, !116, !117, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !113, line: 106, baseType: !29, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !112, file: !113, line: 109, baseType: !73, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !112, file: !113, line: 110, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !112, file: !113, line: 111, baseType: !73, size: 32, offset: 192)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "program_name", scope: !124, file: !129, line: 33, type: !29, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !126, globals: !128)
!125 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!32, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!128 = !{!122}
!129 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !DIGlobalVariableExpression(var: !131)
!131 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !132, file: !160, line: 77, type: !193, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !134, retainedTypes: !155, globals: !157)
!133 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !{!5, !135, !140}
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!138 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!139 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 46, size: 32, elements: !142)
!141 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!143 = !DIEnumerator(name: "_ISupper", value: 256)
!144 = !DIEnumerator(name: "_ISlower", value: 512)
!145 = !DIEnumerator(name: "_ISalpha", value: 1024)
!146 = !DIEnumerator(name: "_ISdigit", value: 2048)
!147 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!148 = !DIEnumerator(name: "_ISspace", value: 8192)
!149 = !DIEnumerator(name: "_ISprint", value: 16384)
!150 = !DIEnumerator(name: "_ISgraph", value: 32768)
!151 = !DIEnumerator(name: "_ISblank", value: 1)
!152 = !DIEnumerator(name: "_IScntrl", value: 2)
!153 = !DIEnumerator(name: "_ISpunct", value: 4)
!154 = !DIEnumerator(name: "_ISalnum", value: 8)
!155 = !{!73, !156, !33, !127}
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !{!130, !158, !165, !177, !179, !182, !189, !191}
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !132, file: !160, line: 93, type: !161, isLocal: false, isDefinition: true)
!160 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 320, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!163 = !{!164}
!164 = !DISubrange(count: 10)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !132, file: !160, line: 1043, type: !167, isLocal: false, isDefinition: true)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !160, line: 57, size: 448, elements: !168)
!168 = !{!169, !170, !171, !175, !176}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !167, file: !160, line: 60, baseType: !5, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !160, line: 63, baseType: !73, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !167, file: !160, line: 67, baseType: !172, size: 256, offset: 64)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !167, file: !160, line: 70, baseType: !29, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !167, file: !160, line: 73, baseType: !29, size: 64, offset: 384)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !132, file: !160, line: 108, type: !167, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "slot0", scope: !132, file: !160, line: 834, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !81)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "slotvec", scope: !132, file: !160, line: 837, type: !184, isLocal: true, isDefinition: true)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !160, line: 826, size: 128, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !185, file: !160, line: 828, baseType: !33, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !185, file: !160, line: 829, baseType: !127, size: 64, offset: 64)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "nslots", scope: !132, file: !160, line: 835, type: !73, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "slotvec0", scope: !132, file: !160, line: 836, type: !185, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 704, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!195 = !{!196}
!196 = !DISubrange(count: 11)
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !199, file: !202, line: 26, type: !203, isLocal: false, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !201)
!200 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !{!197}
!202 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 376, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 47)
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !208, file: !552, line: 120, type: !553, isLocal: true, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !210, retainedTypes: !549, globals: !551)
!209 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!210 = !{!211}
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 41, size: 32, elements: !213)
!212 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548}
!214 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!215 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!216 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!217 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!218 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!219 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!220 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!221 = !DIEnumerator(name: "DAY_1", value: 131079)
!222 = !DIEnumerator(name: "DAY_2", value: 131080)
!223 = !DIEnumerator(name: "DAY_3", value: 131081)
!224 = !DIEnumerator(name: "DAY_4", value: 131082)
!225 = !DIEnumerator(name: "DAY_5", value: 131083)
!226 = !DIEnumerator(name: "DAY_6", value: 131084)
!227 = !DIEnumerator(name: "DAY_7", value: 131085)
!228 = !DIEnumerator(name: "ABMON_1", value: 131086)
!229 = !DIEnumerator(name: "ABMON_2", value: 131087)
!230 = !DIEnumerator(name: "ABMON_3", value: 131088)
!231 = !DIEnumerator(name: "ABMON_4", value: 131089)
!232 = !DIEnumerator(name: "ABMON_5", value: 131090)
!233 = !DIEnumerator(name: "ABMON_6", value: 131091)
!234 = !DIEnumerator(name: "ABMON_7", value: 131092)
!235 = !DIEnumerator(name: "ABMON_8", value: 131093)
!236 = !DIEnumerator(name: "ABMON_9", value: 131094)
!237 = !DIEnumerator(name: "ABMON_10", value: 131095)
!238 = !DIEnumerator(name: "ABMON_11", value: 131096)
!239 = !DIEnumerator(name: "ABMON_12", value: 131097)
!240 = !DIEnumerator(name: "MON_1", value: 131098)
!241 = !DIEnumerator(name: "MON_2", value: 131099)
!242 = !DIEnumerator(name: "MON_3", value: 131100)
!243 = !DIEnumerator(name: "MON_4", value: 131101)
!244 = !DIEnumerator(name: "MON_5", value: 131102)
!245 = !DIEnumerator(name: "MON_6", value: 131103)
!246 = !DIEnumerator(name: "MON_7", value: 131104)
!247 = !DIEnumerator(name: "MON_8", value: 131105)
!248 = !DIEnumerator(name: "MON_9", value: 131106)
!249 = !DIEnumerator(name: "MON_10", value: 131107)
!250 = !DIEnumerator(name: "MON_11", value: 131108)
!251 = !DIEnumerator(name: "MON_12", value: 131109)
!252 = !DIEnumerator(name: "AM_STR", value: 131110)
!253 = !DIEnumerator(name: "PM_STR", value: 131111)
!254 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!255 = !DIEnumerator(name: "D_FMT", value: 131113)
!256 = !DIEnumerator(name: "T_FMT", value: 131114)
!257 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!258 = !DIEnumerator(name: "ERA", value: 131116)
!259 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!260 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!261 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!262 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!263 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!264 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!265 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!266 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!267 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!268 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!269 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!270 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!271 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!272 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!273 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!274 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!275 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!276 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!277 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!278 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!279 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!280 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!281 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!282 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!283 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!284 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!285 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!286 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!287 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!288 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!289 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!290 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!291 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!292 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!293 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!294 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!295 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!296 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!297 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!298 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!299 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!300 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!301 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!302 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!303 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!304 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!305 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!306 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!307 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!308 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!309 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!310 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!311 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!312 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!313 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!314 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!316 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!317 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!318 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!319 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!320 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!321 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!322 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!323 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!324 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!325 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!326 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!327 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!328 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!329 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!330 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!331 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!332 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!333 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!334 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!335 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!336 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!337 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!338 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!339 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!340 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!341 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!342 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!343 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!344 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!345 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!346 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!348 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!349 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!350 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!351 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!352 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!353 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!354 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!355 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!356 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!357 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!358 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!359 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!360 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!361 = !DIEnumerator(name: "CODESET", value: 14)
!362 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!363 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!364 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!365 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!409 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!417 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!418 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!433 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!434 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!435 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!436 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!437 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!438 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!439 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!440 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!441 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!442 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!443 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!444 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!445 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!446 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!447 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!448 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!449 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!450 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!451 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!452 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!453 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!454 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!455 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!472 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!473 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!476 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!477 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!478 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!479 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!480 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!481 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!482 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!483 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!484 = !DIEnumerator(name: "THOUSEP", value: 65537)
!485 = !DIEnumerator(name: "__GROUPING", value: 65538)
!486 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!487 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!488 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!489 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!490 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!491 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!492 = !DIEnumerator(name: "__YESSTR", value: 327682)
!493 = !DIEnumerator(name: "__NOSTR", value: 327683)
!494 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!495 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!496 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!497 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!498 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!499 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!500 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!501 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!502 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!504 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!505 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!506 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!507 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!508 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!509 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!510 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!511 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!514 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!515 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!516 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!517 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!518 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!519 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!520 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!521 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!522 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!523 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!524 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!525 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!526 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!527 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!528 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!529 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!530 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!547 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!548 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!549 = !{!32, !127, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!551 = !{!206}
!552 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !556)
!555 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = !{!19}
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !559)
!558 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !80, line: 136, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !562, line: 62, baseType: !35)
!562 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !565, retainedTypes: !570)
!564 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!566}
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !567, line: 41, size: 32, elements: !568)
!567 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!569}
!569 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!570 = !{!32}
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !573, retainedTypes: !587)
!572 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!574}
!574 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !576, file: !575, line: 192, size: 32, elements: !585)
!575 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DISubprogram(name: "x2nrealloc", scope: !575, file: !575, line: 180, type: !577, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !580)
!577 = !DISubroutineType(types: !578)
!578 = !{!32, !32, !579, !33}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!580 = !{!581, !582, !583, !584}
!581 = !DILocalVariable(name: "p", arg: 1, scope: !576, file: !575, line: 180, type: !32)
!582 = !DILocalVariable(name: "pn", arg: 2, scope: !576, file: !575, line: 180, type: !579)
!583 = !DILocalVariable(name: "s", arg: 3, scope: !576, file: !575, line: 180, type: !33)
!584 = !DILocalVariable(name: "n", scope: !576, file: !575, line: 182, type: !33)
!585 = !{!586}
!586 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!587 = !{!33, !127, !32}
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!589 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !570)
!591 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!593 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !570)
!595 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !570)
!597 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !600)
!599 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = !{!33}
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87)
!602 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !605)
!604 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !{!33, !36, !38, !29}
!606 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!607 = !{i32 2, !"Dwarf Version", i32 4}
!608 = !{i32 2, !"Debug Info Version", i32 3}
!609 = !{i32 1, !"PIC Level", i32 2}
!610 = !{i32 1, !"PIE Level", i32 2}
!611 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 257, type: !612, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !73}
!614 = !{!615}
!615 = !DILocalVariable(name: "status", arg: 1, scope: !611, file: !3, line: 257, type: !73)
!616 = !DIExpression()
!617 = !DILocation(line: 257, column: 12, scope: !611)
!618 = !DILocation(line: 259, column: 14, scope: !619)
!619 = distinct !DILexicalBlock(scope: !611, file: !3, line: 259, column: 7)
!620 = !DILocation(line: 259, column: 7, scope: !611)
!621 = !DILocation(line: 260, column: 5, scope: !622)
!622 = !DILexicalBlockFile(scope: !623, file: !3, discriminator: 1)
!623 = distinct !DILexicalBlock(scope: !619, file: !3, line: 260, column: 5)
!624 = !{!625, !625, i64 0}
!625 = !{!"any pointer", !626, i64 0}
!626 = !{!"omnipotent char", !627, i64 0}
!627 = !{!"Simple C/C++ TBAA"}
!628 = !DILocation(line: 260, column: 5, scope: !629)
!629 = !DILexicalBlockFile(scope: !623, file: !3, discriminator: 3)
!630 = !DILocation(line: 260, column: 5, scope: !631)
!631 = !DILexicalBlockFile(scope: !623, file: !3, discriminator: 2)
!632 = !DILocation(line: 263, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !619, file: !3, line: 262, column: 5)
!634 = !DILocation(line: 263, column: 7, scope: !635)
!635 = !DILexicalBlockFile(scope: !633, file: !3, discriminator: 1)
!636 = !DILocation(line: 268, column: 7, scope: !633)
!637 = !DILocation(line: 268, column: 7, scope: !635)
!638 = !DILocation(line: 272, column: 7, scope: !633)
!639 = !DILocation(line: 272, column: 7, scope: !635)
!640 = !DILocation(line: 273, column: 7, scope: !633)
!641 = !DILocation(line: 273, column: 7, scope: !635)
!642 = !DILocation(line: 642, column: 15, scope: !48, inlinedAt: !643)
!643 = distinct !DILocation(line: 274, column: 7, scope: !633)
!644 = !DILocation(line: 651, column: 3, scope: !48, inlinedAt: !643)
!645 = !DILocation(line: 651, column: 3, scope: !646, inlinedAt: !643)
!646 = !DILexicalBlockFile(scope: !48, file: !49, discriminator: 1)
!647 = !DILocation(line: 655, column: 29, scope: !48, inlinedAt: !643)
!648 = !DILocation(line: 655, column: 15, scope: !48, inlinedAt: !643)
!649 = !DILocation(line: 656, column: 7, scope: !68, inlinedAt: !643)
!650 = !DILocation(line: 656, column: 19, scope: !68, inlinedAt: !643)
!651 = !DILocation(line: 656, column: 22, scope: !652, inlinedAt: !643)
!652 = !DILexicalBlockFile(scope: !68, file: !49, discriminator: 16)
!653 = !DILocation(line: 656, column: 7, scope: !654, inlinedAt: !643)
!654 = !DILexicalBlockFile(scope: !48, file: !49, discriminator: 16)
!655 = !DILocation(line: 662, column: 7, scope: !656, inlinedAt: !643)
!656 = distinct !DILexicalBlock(scope: !68, file: !49, line: 657, column: 5)
!657 = !DILocation(line: 662, column: 7, scope: !658, inlinedAt: !643)
!658 = !DILexicalBlockFile(scope: !656, file: !49, discriminator: 1)
!659 = !DILocation(line: 664, column: 5, scope: !656, inlinedAt: !643)
!660 = !DILocation(line: 665, column: 3, scope: !48, inlinedAt: !643)
!661 = !DILocation(line: 665, column: 3, scope: !646, inlinedAt: !643)
!662 = !DILocation(line: 667, column: 3, scope: !48, inlinedAt: !643)
!663 = !DILocation(line: 667, column: 3, scope: !646, inlinedAt: !643)
!664 = !DILocation(line: 276, column: 3, scope: !611)
!665 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 280, type: !666, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !669)
!666 = !DISubroutineType(types: !667)
!667 = !{!73, !73, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!669 = !{!670, !671, !672, !673}
!670 = !DILocalVariable(name: "argc", arg: 1, scope: !665, file: !3, line: 280, type: !73)
!671 = !DILocalVariable(name: "argv", arg: 2, scope: !665, file: !3, line: 280, type: !668)
!672 = !DILocalVariable(name: "i", scope: !665, file: !3, line: 282, type: !73)
!673 = !DILocalVariable(name: "ok", scope: !665, file: !3, line: 283, type: !45)
!674 = !DILocation(line: 280, column: 11, scope: !665)
!675 = !DILocation(line: 280, column: 24, scope: !665)
!676 = !DILocation(line: 286, column: 21, scope: !665)
!677 = !DILocation(line: 286, column: 3, scope: !665)
!678 = !DILocation(line: 287, column: 3, scope: !665)
!679 = !DILocation(line: 288, column: 3, scope: !665)
!680 = !DILocation(line: 289, column: 3, scope: !665)
!681 = !DILocation(line: 291, column: 3, scope: !665)
!682 = !DILocation(line: 295, column: 12, scope: !665)
!683 = !DILocation(line: 295, column: 3, scope: !665)
!684 = !DILocation(line: 297, column: 58, scope: !665)
!685 = !DILocation(line: 297, column: 3, scope: !665)
!686 = !DILocation(line: 299, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !665, file: !3, line: 299, column: 7)
!688 = !DILocation(line: 299, column: 48, scope: !687)
!689 = !DILocation(line: 299, column: 7, scope: !665)
!690 = !DILocation(line: 300, column: 5, scope: !687)
!691 = !DILocation(line: 304, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !665, file: !3, line: 304, column: 7)
!693 = !{!694, !694, i64 0}
!694 = !{!"int", !626, i64 0}
!695 = !DILocation(line: 304, column: 14, scope: !692)
!696 = !DILocation(line: 304, column: 7, scope: !665)
!697 = !DILocation(line: 283, column: 8, scope: !665)
!698 = !DILocation(line: 282, column: 7, scope: !665)
!699 = !DILocation(line: 309, column: 26, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 309, column: 7)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 309, column: 7)
!703 = distinct !DILexicalBlock(scope: !692, file: !3, line: 307, column: 5)
!704 = !DILocation(line: 309, column: 7, scope: !705)
!705 = !DILexicalBlockFile(scope: !702, file: !3, discriminator: 1)
!706 = !DILocation(line: 310, column: 22, scope: !701)
!707 = !DILocation(line: 305, column: 10, scope: !692)
!708 = !DILocation(line: 305, column: 8, scope: !692)
!709 = !DILocation(line: 305, column: 5, scope: !692)
!710 = !DILocation(line: 310, column: 15, scope: !701)
!711 = !DILocation(line: 310, column: 12, scope: !701)
!712 = !DILocation(line: 309, column: 35, scope: !713)
!713 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 2)
!714 = distinct !{!714, !715, !716}
!715 = !DILocation(line: 309, column: 7, scope: !702)
!716 = !DILocation(line: 310, column: 35, scope: !702)
!717 = !DILocation(line: 313, column: 23, scope: !718)
!718 = distinct !DILexicalBlock(scope: !665, file: !3, line: 313, column: 7)
!719 = !DILocation(line: 313, column: 34, scope: !720)
!720 = !DILexicalBlockFile(scope: !718, file: !3, discriminator: 1)
!721 = !DILocation(line: 313, column: 26, scope: !720)
!722 = !DILocation(line: 313, column: 41, scope: !720)
!723 = !DILocation(line: 313, column: 7, scope: !724)
!724 = !DILexicalBlockFile(scope: !665, file: !3, discriminator: 1)
!725 = !DILocation(line: 314, column: 5, scope: !718)
!726 = !DILocation(line: 314, column: 5, scope: !720)
!727 = !DILocation(line: 315, column: 10, scope: !665)
!728 = !DILocation(line: 315, column: 3, scope: !665)
!729 = distinct !DISubprogram(name: "cksum", scope: !3, file: !3, line: 183, type: !730, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!45, !29, !45}
!732 = !{!733, !734, !735, !739, !740, !741, !742, !797, !801, !802, !805, !806, !808, !809, !811, !816, !817, !819, !820, !823, !824, !826}
!733 = !DILocalVariable(name: "file", arg: 1, scope: !729, file: !3, line: 183, type: !29)
!734 = !DILocalVariable(name: "print_name", arg: 2, scope: !729, file: !3, line: 183, type: !45)
!735 = !DILocalVariable(name: "buf", scope: !729, file: !3, line: 185, type: !736)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 524288, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 65536)
!739 = !DILocalVariable(name: "crc", scope: !729, file: !3, line: 186, type: !79)
!740 = !DILocalVariable(name: "length", scope: !729, file: !3, line: 187, type: !560)
!741 = !DILocalVariable(name: "bytes_read", scope: !729, file: !3, line: 188, type: !33)
!742 = !DILocalVariable(name: "fp", scope: !729, file: !3, line: 189, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !745, line: 49, baseType: !746)
!745 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !747, line: 241, size: 1728, elements: !748)
!747 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !769, !770, !771, !772, !775, !776, !778, !782, !785, !787, !788, !789, !790, !791, !792, !793}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !746, file: !747, line: 242, baseType: !73, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !746, file: !747, line: 247, baseType: !127, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !746, file: !747, line: 248, baseType: !127, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !746, file: !747, line: 249, baseType: !127, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !746, file: !747, line: 250, baseType: !127, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !746, file: !747, line: 251, baseType: !127, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !746, file: !747, line: 252, baseType: !127, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !746, file: !747, line: 253, baseType: !127, size: 64, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !746, file: !747, line: 254, baseType: !127, size: 64, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !746, file: !747, line: 256, baseType: !127, size: 64, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !746, file: !747, line: 257, baseType: !127, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !746, file: !747, line: 258, baseType: !127, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !746, file: !747, line: 260, baseType: !762, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !747, line: 156, size: 192, elements: !764)
!764 = !{!765, !766, !768}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !763, file: !747, line: 157, baseType: !762, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !763, file: !747, line: 158, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !763, file: !747, line: 162, baseType: !73, size: 32, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !746, file: !747, line: 262, baseType: !767, size: 64, offset: 832)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !746, file: !747, line: 264, baseType: !73, size: 32, offset: 896)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !746, file: !747, line: 268, baseType: !73, size: 32, offset: 928)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !746, file: !747, line: 270, baseType: !773, size: 64, offset: 960)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !562, line: 140, baseType: !774)
!774 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !746, file: !747, line: 274, baseType: !156, size: 16, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !746, file: !747, line: 275, baseType: !777, size: 8, offset: 1040)
!777 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !746, file: !747, line: 276, baseType: !779, size: 8, offset: 1048)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 1)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !746, file: !747, line: 280, baseType: !783, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !747, line: 150, baseType: null)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !746, file: !747, line: 289, baseType: !786, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !562, line: 141, baseType: !774)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !746, file: !747, line: 297, baseType: !32, size: 64, offset: 1216)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !746, file: !747, line: 298, baseType: !32, size: 64, offset: 1280)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !746, file: !747, line: 299, baseType: !32, size: 64, offset: 1344)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !746, file: !747, line: 300, baseType: !32, size: 64, offset: 1408)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !746, file: !747, line: 302, baseType: !33, size: 64, offset: 1472)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !746, file: !747, line: 303, baseType: !73, size: 32, offset: 1536)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !746, file: !747, line: 305, baseType: !794, size: 160, offset: 1568)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 20)
!797 = !DILocalVariable(name: "length_buf", scope: !729, file: !3, line: 190, type: !798)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 168, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 21)
!801 = !DILocalVariable(name: "hp", scope: !729, file: !3, line: 191, type: !29)
!802 = !DILocalVariable(name: "__s1_len", scope: !803, file: !3, line: 193, type: !33)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 193, column: 7)
!804 = distinct !DILexicalBlock(scope: !729, file: !3, line: 193, column: 7)
!805 = !DILocalVariable(name: "__s2_len", scope: !803, file: !3, line: 193, type: !33)
!806 = !DILocalVariable(name: "__s2", scope: !807, file: !3, line: 193, type: !38)
!807 = distinct !DILexicalBlock(scope: !803, file: !3, line: 193, column: 7)
!808 = !DILocalVariable(name: "__result", scope: !807, file: !3, line: 193, type: !73)
!809 = !DILocalVariable(name: "cp", scope: !810, file: !3, line: 213, type: !550)
!810 = distinct !DILexicalBlock(scope: !729, file: !3, line: 212, column: 5)
!811 = !DILocalVariable(name: "__s1_len", scope: !812, file: !3, line: 227, type: !33)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 227, column: 12)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 227, column: 11)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 225, column: 5)
!815 = distinct !DILexicalBlock(scope: !729, file: !3, line: 224, column: 7)
!816 = !DILocalVariable(name: "__s2_len", scope: !812, file: !3, line: 227, type: !33)
!817 = !DILocalVariable(name: "__s2", scope: !818, file: !3, line: 227, type: !38)
!818 = distinct !DILexicalBlock(scope: !812, file: !3, line: 227, column: 12)
!819 = !DILocalVariable(name: "__result", scope: !818, file: !3, line: 227, type: !73)
!820 = !DILocalVariable(name: "__s1_len", scope: !821, file: !3, line: 232, type: !33)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 232, column: 8)
!822 = distinct !DILexicalBlock(scope: !729, file: !3, line: 232, column: 7)
!823 = !DILocalVariable(name: "__s2_len", scope: !821, file: !3, line: 232, type: !33)
!824 = !DILocalVariable(name: "__s2", scope: !825, file: !3, line: 232, type: !38)
!825 = distinct !DILexicalBlock(scope: !821, file: !3, line: 232, column: 8)
!826 = !DILocalVariable(name: "__result", scope: !825, file: !3, line: 232, type: !73)
!827 = !DILocation(line: 183, column: 20, scope: !729)
!828 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!829 = !DILocation(line: 183, column: 31, scope: !729)
!830 = !DILocation(line: 185, column: 3, scope: !729)
!831 = !DILocation(line: 185, column: 17, scope: !729)
!832 = !DILocation(line: 186, column: 17, scope: !729)
!833 = !DILocation(line: 187, column: 13, scope: !729)
!834 = !DILocation(line: 190, column: 3, scope: !729)
!835 = !DILocation(line: 190, column: 8, scope: !729)
!836 = !DILocation(line: 193, column: 7, scope: !803)
!837 = !DILocation(line: 193, column: 7, scope: !807)
!838 = !DILocation(line: 193, column: 7, scope: !839)
!839 = !DILexicalBlockFile(scope: !807, file: !3, discriminator: 2)
!840 = !{!626, !626, i64 0}
!841 = !DILocation(line: 193, column: 7, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 3)
!843 = distinct !DILexicalBlock(scope: !807, file: !3, line: 193, column: 7)
!844 = !DILocation(line: 193, column: 7, scope: !845)
!845 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 2)
!846 = !DILocation(line: 193, column: 7, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 4)
!848 = distinct !DILexicalBlock(scope: !843, file: !3, line: 193, column: 7)
!849 = !DILocation(line: 193, column: 7, scope: !850)
!850 = !DILexicalBlockFile(scope: !804, file: !3, discriminator: 13)
!851 = !DILocation(line: 193, column: 7, scope: !852)
!852 = !DILexicalBlockFile(scope: !729, file: !3, discriminator: 13)
!853 = !DILocation(line: 195, column: 12, scope: !854)
!854 = distinct !DILexicalBlock(scope: !804, file: !3, line: 194, column: 5)
!855 = !DILocation(line: 189, column: 9, scope: !729)
!856 = !DILocation(line: 198, column: 5, scope: !854)
!857 = !DILocation(line: 201, column: 12, scope: !858)
!858 = distinct !DILexicalBlock(scope: !804, file: !3, line: 200, column: 5)
!859 = !DILocation(line: 202, column: 14, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !3, line: 202, column: 11)
!861 = !DILocation(line: 202, column: 11, scope: !858)
!862 = !DILocation(line: 204, column: 21, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 203, column: 9)
!864 = !DILocation(line: 204, column: 34, scope: !865)
!865 = !DILexicalBlockFile(scope: !863, file: !3, discriminator: 1)
!866 = !DILocation(line: 204, column: 11, scope: !867)
!867 = !DILexicalBlockFile(scope: !863, file: !3, discriminator: 2)
!868 = !DILocation(line: 205, column: 11, scope: !863)
!869 = !DILocation(line: 209, column: 3, scope: !729)
!870 = !DILocation(line: 211, column: 3, scope: !729)
!871 = !DILocation(line: 211, column: 24, scope: !872)
!872 = !DILexicalBlockFile(scope: !729, file: !3, discriminator: 1)
!873 = !DILocation(line: 188, column: 10, scope: !729)
!874 = !DILocation(line: 211, column: 52, scope: !872)
!875 = !DILocation(line: 211, column: 3, scope: !872)
!876 = !{!877, !694, i64 0}
!877 = !{!"_IO_FILE", !694, i64 0, !625, i64 8, !625, i64 16, !625, i64 24, !625, i64 32, !625, i64 40, !625, i64 48, !625, i64 56, !625, i64 64, !625, i64 72, !625, i64 80, !625, i64 88, !625, i64 96, !625, i64 104, !694, i64 112, !694, i64 116, !878, i64 120, !879, i64 128, !626, i64 130, !626, i64 131, !625, i64 136, !878, i64 144, !625, i64 152, !625, i64 160, !625, i64 168, !625, i64 176, !878, i64 184, !694, i64 192, !626, i64 196}
!878 = !{!"long", !626, i64 0}
!879 = !{!"short", !626, i64 0}
!880 = !DILocation(line: 213, column: 22, scope: !810)
!881 = !DILocation(line: 215, column: 18, scope: !882)
!882 = distinct !DILexicalBlock(scope: !810, file: !3, line: 215, column: 11)
!883 = !DILocation(line: 215, column: 31, scope: !882)
!884 = !DILocation(line: 215, column: 11, scope: !810)
!885 = !DILocation(line: 218, column: 24, scope: !886)
!886 = !DILexicalBlockFile(scope: !810, file: !3, discriminator: 1)
!887 = !DILocation(line: 219, column: 20, scope: !810)
!888 = !DILocation(line: 219, column: 41, scope: !810)
!889 = !DILocation(line: 219, column: 50, scope: !810)
!890 = !DILocation(line: 219, column: 57, scope: !810)
!891 = !DILocation(line: 219, column: 28, scope: !810)
!892 = !{!878, !878, i64 0}
!893 = !DILocation(line: 219, column: 26, scope: !810)
!894 = !DILocation(line: 218, column: 7, scope: !886)
!895 = !DILocation(line: 216, column: 9, scope: !882)
!896 = !DILocation(line: 216, column: 9, scope: !897)
!897 = !DILexicalBlockFile(scope: !882, file: !3, discriminator: 1)
!898 = !DILocation(line: 216, column: 9, scope: !899)
!899 = !DILexicalBlockFile(scope: !882, file: !3, discriminator: 2)
!900 = !DILocation(line: 219, column: 53, scope: !810)
!901 = distinct !{!901, !902, !903}
!902 = !DILocation(line: 218, column: 7, scope: !810)
!903 = !DILocation(line: 219, column: 63, scope: !810)
!904 = !DILocation(line: 125, column: 1, scope: !905, inlinedAt: !911)
!905 = distinct !DISubprogram(name: "feof_unlocked", scope: !906, file: !906, line: 125, type: !907, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !909)
!906 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!907 = !DISubroutineType(types: !908)
!908 = !{!73, !743}
!909 = !{!910}
!910 = !DILocalVariable(name: "__stream", arg: 1, scope: !905, file: !906, line: 125, type: !743)
!911 = distinct !DILocation(line: 220, column: 11, scope: !912)
!912 = distinct !DILexicalBlock(scope: !810, file: !3, line: 220, column: 11)
!913 = !DILocation(line: 127, column: 10, scope: !905, inlinedAt: !911)
!914 = !DILocation(line: 220, column: 11, scope: !912)
!915 = distinct !{!915, !870, !916}
!916 = !DILocation(line: 222, column: 5, scope: !729)
!917 = !DILocation(line: 134, column: 10, scope: !918, inlinedAt: !921)
!918 = distinct !DISubprogram(name: "ferror_unlocked", scope: !906, file: !906, line: 132, type: !907, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !919)
!919 = !{!920}
!920 = !DILocalVariable(name: "__stream", arg: 1, scope: !918, file: !906, line: 132, type: !743)
!921 = distinct !DILocation(line: 224, column: 7, scope: !815)
!922 = !DILocation(line: 132, column: 1, scope: !918, inlinedAt: !921)
!923 = !DILocation(line: 224, column: 7, scope: !815)
!924 = !DILocation(line: 224, column: 7, scope: !729)
!925 = !DILocation(line: 226, column: 17, scope: !814)
!926 = !DILocation(line: 226, column: 30, scope: !927)
!927 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 1)
!928 = !DILocation(line: 226, column: 7, scope: !929)
!929 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 2)
!930 = !DILocation(line: 227, column: 12, scope: !812)
!931 = !DILocation(line: 227, column: 12, scope: !818)
!932 = !DILocation(line: 227, column: 12, scope: !933)
!933 = !DILexicalBlockFile(scope: !818, file: !3, discriminator: 2)
!934 = !DILocation(line: 227, column: 12, scope: !935)
!935 = !DILexicalBlockFile(scope: !936, file: !3, discriminator: 3)
!936 = distinct !DILexicalBlock(scope: !818, file: !3, line: 227, column: 12)
!937 = !DILocation(line: 227, column: 12, scope: !938)
!938 = !DILexicalBlockFile(scope: !936, file: !3, discriminator: 2)
!939 = !DILocation(line: 227, column: 12, scope: !940)
!940 = !DILexicalBlockFile(scope: !941, file: !3, discriminator: 4)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 227, column: 12)
!942 = !DILocation(line: 227, column: 12, scope: !943)
!943 = !DILexicalBlockFile(scope: !812, file: !3, discriminator: 11)
!944 = !DILocation(line: 227, column: 11, scope: !945)
!945 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 13)
!946 = !DILocation(line: 228, column: 9, scope: !813)
!947 = !DILocation(line: 232, column: 8, scope: !821)
!948 = !DILocation(line: 232, column: 8, scope: !825)
!949 = !DILocation(line: 232, column: 8, scope: !950)
!950 = !DILexicalBlockFile(scope: !825, file: !3, discriminator: 2)
!951 = !DILocation(line: 232, column: 8, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !3, discriminator: 3)
!953 = distinct !DILexicalBlock(scope: !825, file: !3, line: 232, column: 8)
!954 = !DILocation(line: 232, column: 8, scope: !955)
!955 = !DILexicalBlockFile(scope: !953, file: !3, discriminator: 2)
!956 = !DILocation(line: 232, column: 8, scope: !957)
!957 = !DILexicalBlockFile(scope: !958, file: !3, discriminator: 4)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 232, column: 8)
!959 = !DILocation(line: 232, column: 8, scope: !960)
!960 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 11)
!961 = !DILocation(line: 232, column: 26, scope: !962)
!962 = !DILexicalBlockFile(scope: !822, file: !3, discriminator: 13)
!963 = !DILocation(line: 232, column: 29, scope: !964)
!964 = !DILexicalBlockFile(scope: !822, file: !3, discriminator: 14)
!965 = !DILocation(line: 232, column: 41, scope: !964)
!966 = !DILocation(line: 232, column: 7, scope: !967)
!967 = !DILexicalBlockFile(scope: !729, file: !3, discriminator: 14)
!968 = !DILocation(line: 234, column: 17, scope: !969)
!969 = distinct !DILexicalBlock(scope: !822, file: !3, line: 233, column: 5)
!970 = !DILocation(line: 234, column: 30, scope: !971)
!971 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 1)
!972 = !DILocation(line: 234, column: 7, scope: !973)
!973 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 2)
!974 = !DILocation(line: 235, column: 7, scope: !969)
!975 = !DILocation(line: 238, column: 8, scope: !729)
!976 = !DILocation(line: 191, column: 15, scope: !729)
!977 = !DILocation(line: 240, column: 3, scope: !978)
!978 = !DILexicalBlockFile(scope: !979, file: !3, discriminator: 1)
!979 = distinct !DILexicalBlock(scope: !729, file: !3, line: 240, column: 3)
!980 = !DILocation(line: 241, column: 16, scope: !981)
!981 = distinct !DILexicalBlock(scope: !979, file: !3, line: 240, column: 3)
!982 = !DILocation(line: 241, column: 37, scope: !981)
!983 = !DILocation(line: 241, column: 44, scope: !981)
!984 = !DILocation(line: 241, column: 54, scope: !981)
!985 = !DILocation(line: 241, column: 24, scope: !981)
!986 = !DILocation(line: 241, column: 22, scope: !981)
!987 = !DILocation(line: 240, column: 25, scope: !988)
!988 = !DILexicalBlockFile(scope: !981, file: !3, discriminator: 2)
!989 = distinct !{!989, !990, !991}
!990 = !DILocation(line: 240, column: 3, scope: !979)
!991 = !DILocation(line: 241, column: 60, scope: !979)
!992 = !DILocation(line: 245, column: 7, scope: !729)
!993 = !DILocation(line: 246, column: 5, scope: !994)
!994 = distinct !DILexicalBlock(scope: !729, file: !3, line: 245, column: 7)
!995 = !DILocation(line: 248, column: 5, scope: !994)
!996 = !DILocation(line: 250, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !729, file: !3, line: 250, column: 7)
!998 = !DILocation(line: 132, column: 1, scope: !918, inlinedAt: !999)
!999 = distinct !DILocation(line: 250, column: 7, scope: !997)
!1000 = !DILocation(line: 134, column: 10, scope: !918, inlinedAt: !999)
!1001 = !DILocation(line: 250, column: 7, scope: !729)
!1002 = !DILocation(line: 251, column: 5, scope: !997)
!1003 = !DILocation(line: 251, column: 5, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !997, file: !3, discriminator: 1)
!1005 = !DILocation(line: 251, column: 5, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !997, file: !3, discriminator: 2)
!1007 = !DILocation(line: 254, column: 1, scope: !729)
!1008 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !96, file: !96, line: 41, type: !50, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1009)
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "file", arg: 1, scope: !1008, file: !96, line: 41, type: !29)
!1011 = !DILocation(line: 41, column: 41, scope: !1008)
!1012 = !DILocation(line: 43, column: 13, scope: !1008)
!1013 = !DILocation(line: 44, column: 1, scope: !1008)
!1014 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !96, file: !96, line: 78, type: !1015, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !45}
!1017 = !{!1018}
!1018 = !DILocalVariable(name: "ignore", arg: 1, scope: !1014, file: !96, line: 78, type: !45)
!1019 = !DILocation(line: 78, column: 37, scope: !1014)
!1020 = !DILocation(line: 80, column: 16, scope: !1014)
!1021 = !{!1022, !1022, i64 0}
!1022 = !{!"_Bool", !626, i64 0}
!1023 = !DILocation(line: 81, column: 1, scope: !1014)
!1024 = distinct !DISubprogram(name: "close_stdout", scope: !96, file: !96, line: 107, type: !1025, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null}
!1027 = !{!1028}
!1028 = !DILocalVariable(name: "write_error", scope: !1029, file: !96, line: 112, type: !29)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !96, line: 111, column: 5)
!1030 = distinct !DILexicalBlock(scope: !1024, file: !96, line: 109, column: 7)
!1031 = !DILocation(line: 109, column: 21, scope: !1030)
!1032 = !DILocation(line: 109, column: 7, scope: !1030)
!1033 = !DILocation(line: 109, column: 29, scope: !1030)
!1034 = !DILocation(line: 110, column: 7, scope: !1030)
!1035 = !DILocation(line: 110, column: 12, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1030, file: !96, discriminator: 1)
!1037 = !{i8 0, i8 2}
!1038 = !DILocation(line: 114, column: 19, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1029, file: !96, line: 113, column: 11)
!1040 = !DILocation(line: 110, column: 25, scope: !1036)
!1041 = !DILocation(line: 110, column: 28, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1030, file: !96, discriminator: 2)
!1043 = !DILocation(line: 110, column: 34, scope: !1042)
!1044 = !DILocation(line: 109, column: 7, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1024, file: !96, discriminator: 1)
!1046 = !DILocation(line: 112, column: 33, scope: !1029)
!1047 = !DILocation(line: 112, column: 19, scope: !1029)
!1048 = !DILocation(line: 113, column: 11, scope: !1039)
!1049 = !DILocation(line: 113, column: 11, scope: !1029)
!1050 = !DILocation(line: 114, column: 36, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1039, file: !96, discriminator: 1)
!1052 = !DILocation(line: 114, column: 9, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1039, file: !96, discriminator: 2)
!1054 = !DILocation(line: 114, column: 9, scope: !1039)
!1055 = !DILocation(line: 117, column: 9, scope: !1051)
!1056 = !DILocation(line: 119, column: 14, scope: !1029)
!1057 = !DILocation(line: 119, column: 7, scope: !1029)
!1058 = !DILocation(line: 122, column: 22, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1024, file: !96, line: 122, column: 8)
!1060 = !DILocation(line: 122, column: 8, scope: !1059)
!1061 = !DILocation(line: 122, column: 30, scope: !1059)
!1062 = !DILocation(line: 122, column: 8, scope: !1024)
!1063 = !DILocation(line: 123, column: 13, scope: !1059)
!1064 = !DILocation(line: 123, column: 6, scope: !1059)
!1065 = !DILocation(line: 124, column: 1, scope: !1024)
!1066 = distinct !DISubprogram(name: "fdadvise", scope: !1067, file: !1067, line: 31, type: !1068, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !1072)
!1067 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !73, !1070, !1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !745, line: 91, baseType: !773)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1072 = !{!1073, !1074, !1075, !1076, !1077}
!1073 = !DILocalVariable(name: "fd", arg: 1, scope: !1066, file: !1067, line: 31, type: !73)
!1074 = !DILocalVariable(name: "offset", arg: 2, scope: !1066, file: !1067, line: 31, type: !1070)
!1075 = !DILocalVariable(name: "len", arg: 3, scope: !1066, file: !1067, line: 31, type: !1070)
!1076 = !DILocalVariable(name: "advice", arg: 4, scope: !1066, file: !1067, line: 31, type: !1071)
!1077 = !DILocalVariable(name: "__x", scope: !1078, file: !1067, line: 34, type: !73)
!1078 = distinct !DILexicalBlock(scope: !1066, file: !1067, line: 34, column: 3)
!1079 = !DILocation(line: 31, column: 15, scope: !1066)
!1080 = !DILocation(line: 31, column: 25, scope: !1066)
!1081 = !DILocation(line: 31, column: 39, scope: !1066)
!1082 = !DILocation(line: 31, column: 54, scope: !1066)
!1083 = !DILocation(line: 34, column: 3, scope: !1078)
!1084 = !DILocation(line: 36, column: 1, scope: !1066)
!1085 = distinct !DISubprogram(name: "fadvise", scope: !1067, file: !1067, line: 39, type: !1086, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !1128)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !1088, !1071}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !745, line: 49, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !747, line: 241, size: 1728, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1090, file: !747, line: 242, baseType: !73, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1090, file: !747, line: 247, baseType: !127, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1090, file: !747, line: 248, baseType: !127, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1090, file: !747, line: 249, baseType: !127, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1090, file: !747, line: 250, baseType: !127, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1090, file: !747, line: 251, baseType: !127, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1090, file: !747, line: 252, baseType: !127, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1090, file: !747, line: 253, baseType: !127, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1090, file: !747, line: 254, baseType: !127, size: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1090, file: !747, line: 256, baseType: !127, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1090, file: !747, line: 257, baseType: !127, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1090, file: !747, line: 258, baseType: !127, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1090, file: !747, line: 260, baseType: !1105, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !747, line: 156, size: 192, elements: !1107)
!1107 = !{!1108, !1109, !1111}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1106, file: !747, line: 157, baseType: !1105, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1106, file: !747, line: 158, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1106, file: !747, line: 162, baseType: !73, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1090, file: !747, line: 262, baseType: !1110, size: 64, offset: 832)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1090, file: !747, line: 264, baseType: !73, size: 32, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1090, file: !747, line: 268, baseType: !73, size: 32, offset: 928)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1090, file: !747, line: 270, baseType: !773, size: 64, offset: 960)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1090, file: !747, line: 274, baseType: !156, size: 16, offset: 1024)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1090, file: !747, line: 275, baseType: !777, size: 8, offset: 1040)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1090, file: !747, line: 276, baseType: !779, size: 8, offset: 1048)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1090, file: !747, line: 280, baseType: !783, size: 64, offset: 1088)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1090, file: !747, line: 289, baseType: !786, size: 64, offset: 1152)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1090, file: !747, line: 297, baseType: !32, size: 64, offset: 1216)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1090, file: !747, line: 298, baseType: !32, size: 64, offset: 1280)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1090, file: !747, line: 299, baseType: !32, size: 64, offset: 1344)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1090, file: !747, line: 300, baseType: !32, size: 64, offset: 1408)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1090, file: !747, line: 302, baseType: !33, size: 64, offset: 1472)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1090, file: !747, line: 303, baseType: !73, size: 32, offset: 1536)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1090, file: !747, line: 305, baseType: !794, size: 160, offset: 1568)
!1128 = !{!1129, !1130}
!1129 = !DILocalVariable(name: "fp", arg: 1, scope: !1085, file: !1067, line: 39, type: !1088)
!1130 = !DILocalVariable(name: "advice", arg: 2, scope: !1085, file: !1067, line: 39, type: !1071)
!1131 = !DILocation(line: 39, column: 16, scope: !1085)
!1132 = !DILocation(line: 39, column: 30, scope: !1085)
!1133 = !DILocation(line: 41, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1085, file: !1067, line: 41, column: 7)
!1135 = !DILocation(line: 41, column: 7, scope: !1085)
!1136 = !DILocation(line: 42, column: 15, scope: !1134)
!1137 = !DILocation(line: 31, column: 15, scope: !1066, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 42, column: 5, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1134, file: !1067, discriminator: 1)
!1140 = !DILocation(line: 31, column: 25, scope: !1066, inlinedAt: !1138)
!1141 = !DILocation(line: 31, column: 39, scope: !1066, inlinedAt: !1138)
!1142 = !DILocation(line: 31, column: 54, scope: !1066, inlinedAt: !1138)
!1143 = !DILocation(line: 34, column: 3, scope: !1078, inlinedAt: !1138)
!1144 = !DILocation(line: 42, column: 5, scope: !1134)
!1145 = !DILocation(line: 43, column: 1, scope: !1085)
!1146 = distinct !DISubprogram(name: "umaxtostr", scope: !1147, file: !1147, line: 36, type: !1148, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !1150)
!1147 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!127, !560, !127}
!1150 = !{!1151, !1152, !1153}
!1151 = !DILocalVariable(name: "i", arg: 1, scope: !1146, file: !1147, line: 36, type: !560)
!1152 = !DILocalVariable(name: "buf", arg: 2, scope: !1146, file: !1147, line: 36, type: !127)
!1153 = !DILocalVariable(name: "p", scope: !1146, file: !1147, line: 38, type: !127)
!1154 = !DILocation(line: 36, column: 19, scope: !1146)
!1155 = !DILocation(line: 36, column: 28, scope: !1146)
!1156 = !DILocation(line: 38, column: 17, scope: !1146)
!1157 = !DILocation(line: 38, column: 9, scope: !1146)
!1158 = !DILocation(line: 39, column: 6, scope: !1146)
!1159 = !DILocation(line: 41, column: 7, scope: !1146)
!1160 = !DILocation(line: 52, column: 24, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !1147, line: 50, column: 5)
!1162 = distinct !DILexicalBlock(scope: !1146, file: !1147, line: 41, column: 7)
!1163 = !DILocation(line: 52, column: 16, scope: !1161)
!1164 = !DILocation(line: 52, column: 10, scope: !1161)
!1165 = !DILocation(line: 52, column: 14, scope: !1161)
!1166 = !DILocation(line: 53, column: 17, scope: !1161)
!1167 = !DILocation(line: 53, column: 24, scope: !1161)
!1168 = !DILocation(line: 52, column: 9, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1161, file: !1147, discriminator: 1)
!1170 = distinct !{!1170, !1171, !1172}
!1171 = !DILocation(line: 51, column: 7, scope: !1161)
!1172 = !DILocation(line: 53, column: 28, scope: !1161)
!1173 = !DILocation(line: 56, column: 3, scope: !1146)
!1174 = distinct !DISubprogram(name: "parse_long_options", scope: !109, file: !109, line: 44, type: !1175, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !106, variables: !1178)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !73, !668, !29, !29, !29, !1177, null}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187}
!1179 = !DILocalVariable(name: "argc", arg: 1, scope: !1174, file: !109, line: 44, type: !73)
!1180 = !DILocalVariable(name: "argv", arg: 2, scope: !1174, file: !109, line: 45, type: !668)
!1181 = !DILocalVariable(name: "command_name", arg: 3, scope: !1174, file: !109, line: 46, type: !29)
!1182 = !DILocalVariable(name: "package", arg: 4, scope: !1174, file: !109, line: 47, type: !29)
!1183 = !DILocalVariable(name: "version", arg: 5, scope: !1174, file: !109, line: 48, type: !29)
!1184 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1174, file: !109, line: 49, type: !1177)
!1185 = !DILocalVariable(name: "c", scope: !1174, file: !109, line: 52, type: !73)
!1186 = !DILocalVariable(name: "saved_opterr", scope: !1174, file: !109, line: 53, type: !73)
!1187 = !DILocalVariable(name: "authors", scope: !1188, file: !109, line: 71, type: !1192)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !109, line: 70, column: 11)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !109, line: 64, column: 9)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !109, line: 62, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1174, file: !109, line: 60, column: 7)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !745, line: 80, baseType: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1194, line: 50, baseType: !1195)
!1194 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !107, line: 71, baseType: !1196)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 192, elements: !780)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !107, line: 71, size: 192, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1197, file: !107, line: 71, baseType: !41, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1197, file: !107, line: 71, baseType: !41, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1197, file: !107, line: 71, baseType: !32, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1197, file: !107, line: 71, baseType: !32, size: 64, offset: 128)
!1203 = !DILocation(line: 44, column: 25, scope: !1174)
!1204 = !DILocation(line: 45, column: 28, scope: !1174)
!1205 = !DILocation(line: 46, column: 33, scope: !1174)
!1206 = !DILocation(line: 47, column: 33, scope: !1174)
!1207 = !DILocation(line: 48, column: 33, scope: !1174)
!1208 = !DILocation(line: 49, column: 28, scope: !1174)
!1209 = !DILocation(line: 55, column: 18, scope: !1174)
!1210 = !DILocation(line: 53, column: 7, scope: !1174)
!1211 = !DILocation(line: 58, column: 10, scope: !1174)
!1212 = !DILocation(line: 60, column: 12, scope: !1191)
!1213 = !DILocation(line: 61, column: 7, scope: !1191)
!1214 = !DILocation(line: 61, column: 15, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1191, file: !109, discriminator: 1)
!1216 = !DILocation(line: 52, column: 7, scope: !1174)
!1217 = !DILocation(line: 60, column: 7, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1174, file: !109, discriminator: 1)
!1219 = !DILocation(line: 66, column: 11, scope: !1189)
!1220 = !DILocation(line: 67, column: 11, scope: !1189)
!1221 = !DILocation(line: 71, column: 13, scope: !1188)
!1222 = !DILocation(line: 71, column: 21, scope: !1188)
!1223 = !DILocation(line: 72, column: 13, scope: !1188)
!1224 = !DILocation(line: 73, column: 29, scope: !1188)
!1225 = !DILocation(line: 73, column: 13, scope: !1188)
!1226 = !DILocation(line: 74, column: 13, scope: !1188)
!1227 = !DILocation(line: 84, column: 10, scope: !1174)
!1228 = !DILocation(line: 88, column: 10, scope: !1174)
!1229 = !DILocation(line: 89, column: 1, scope: !1174)
!1230 = distinct !DISubprogram(name: "set_program_name", scope: !129, file: !129, line: 39, type: !50, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1231)
!1231 = !{!1232, !1233, !1234}
!1232 = !DILocalVariable(name: "argv0", arg: 1, scope: !1230, file: !129, line: 39, type: !29)
!1233 = !DILocalVariable(name: "slash", scope: !1230, file: !129, line: 46, type: !29)
!1234 = !DILocalVariable(name: "base", scope: !1230, file: !129, line: 47, type: !29)
!1235 = !DILocation(line: 39, column: 31, scope: !1230)
!1236 = !DILocation(line: 51, column: 13, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !129, line: 51, column: 7)
!1238 = !DILocation(line: 51, column: 7, scope: !1230)
!1239 = !DILocation(line: 55, column: 14, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !129, line: 52, column: 5)
!1241 = !DILocation(line: 54, column: 7, scope: !1240)
!1242 = !DILocation(line: 56, column: 7, scope: !1240)
!1243 = !DILocation(line: 59, column: 11, scope: !1230)
!1244 = !DILocation(line: 46, column: 15, scope: !1230)
!1245 = !DILocation(line: 60, column: 17, scope: !1230)
!1246 = !DILocation(line: 60, column: 33, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1230, file: !129, discriminator: 1)
!1248 = !DILocation(line: 60, column: 11, scope: !1230)
!1249 = !DILocation(line: 47, column: 15, scope: !1230)
!1250 = !DILocation(line: 61, column: 12, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1230, file: !129, line: 61, column: 7)
!1252 = !DILocation(line: 61, column: 20, scope: !1251)
!1253 = !DILocation(line: 61, column: 25, scope: !1251)
!1254 = !DILocation(line: 61, column: 28, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1251, file: !129, discriminator: 1)
!1256 = !DILocation(line: 61, column: 61, scope: !1255)
!1257 = !DILocation(line: 61, column: 7, scope: !1247)
!1258 = !DILocation(line: 64, column: 11, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !129, line: 64, column: 11)
!1260 = distinct !DILexicalBlock(scope: !1251, file: !129, line: 62, column: 5)
!1261 = !DILocation(line: 64, column: 36, scope: !1259)
!1262 = !DILocation(line: 64, column: 11, scope: !1260)
!1263 = !DILocation(line: 66, column: 24, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !129, line: 65, column: 9)
!1265 = !DILocation(line: 70, column: 41, scope: !1264)
!1266 = !DILocation(line: 72, column: 9, scope: !1264)
!1267 = !DILocation(line: 84, column: 16, scope: !1230)
!1268 = !DILocation(line: 90, column: 27, scope: !1230)
!1269 = !DILocation(line: 92, column: 1, scope: !1230)
!1270 = distinct !DISubprogram(name: "clone_quoting_options", scope: !160, file: !160, line: 114, type: !1271, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1274)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1273, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1274 = !{!1275, !1276, !1277}
!1275 = !DILocalVariable(name: "o", arg: 1, scope: !1270, file: !160, line: 114, type: !1273)
!1276 = !DILocalVariable(name: "e", scope: !1270, file: !160, line: 116, type: !73)
!1277 = !DILocalVariable(name: "p", scope: !1270, file: !160, line: 117, type: !1273)
!1278 = !DILocation(line: 114, column: 48, scope: !1270)
!1279 = !DILocation(line: 116, column: 11, scope: !1270)
!1280 = !DILocation(line: 116, column: 7, scope: !1270)
!1281 = !DILocation(line: 117, column: 40, scope: !1270)
!1282 = !DILocation(line: 117, column: 40, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1270, file: !160, discriminator: 3)
!1284 = !DILocation(line: 117, column: 31, scope: !1283)
!1285 = !DILocation(line: 117, column: 27, scope: !1270)
!1286 = !DILocation(line: 119, column: 9, scope: !1270)
!1287 = !DILocation(line: 120, column: 3, scope: !1270)
!1288 = distinct !DISubprogram(name: "get_quoting_style", scope: !160, file: !160, line: 125, type: !1289, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1293)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!5, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1293 = !{!1294}
!1294 = !DILocalVariable(name: "o", arg: 1, scope: !1288, file: !160, line: 125, type: !1291)
!1295 = !DILocation(line: 125, column: 50, scope: !1288)
!1296 = !DILocation(line: 127, column: 11, scope: !1288)
!1297 = !DILocation(line: 127, column: 46, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1288, file: !160, discriminator: 3)
!1299 = !{!1300, !626, i64 0}
!1300 = !{!"quoting_options", !626, i64 0, !694, i64 4, !626, i64 8, !625, i64 40, !625, i64 48}
!1301 = !DILocation(line: 127, column: 3, scope: !1298)
!1302 = distinct !DISubprogram(name: "set_quoting_style", scope: !160, file: !160, line: 133, type: !1303, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1273, !5}
!1305 = !{!1306, !1307}
!1306 = !DILocalVariable(name: "o", arg: 1, scope: !1302, file: !160, line: 133, type: !1273)
!1307 = !DILocalVariable(name: "s", arg: 2, scope: !1302, file: !160, line: 133, type: !5)
!1308 = !DILocation(line: 133, column: 44, scope: !1302)
!1309 = !DILocation(line: 133, column: 66, scope: !1302)
!1310 = !DILocation(line: 135, column: 4, scope: !1302)
!1311 = !DILocation(line: 135, column: 39, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1302, file: !160, discriminator: 3)
!1313 = !DILocation(line: 135, column: 45, scope: !1312)
!1314 = !DILocation(line: 136, column: 1, scope: !1302)
!1315 = distinct !DISubprogram(name: "set_char_quoting", scope: !160, file: !160, line: 144, type: !1316, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!73, !1273, !31, !73}
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1325, !1326}
!1319 = !DILocalVariable(name: "o", arg: 1, scope: !1315, file: !160, line: 144, type: !1273)
!1320 = !DILocalVariable(name: "c", arg: 2, scope: !1315, file: !160, line: 144, type: !31)
!1321 = !DILocalVariable(name: "i", arg: 3, scope: !1315, file: !160, line: 144, type: !73)
!1322 = !DILocalVariable(name: "uc", scope: !1315, file: !160, line: 146, type: !40)
!1323 = !DILocalVariable(name: "p", scope: !1315, file: !160, line: 147, type: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1325 = !DILocalVariable(name: "shift", scope: !1315, file: !160, line: 149, type: !73)
!1326 = !DILocalVariable(name: "r", scope: !1315, file: !160, line: 150, type: !73)
!1327 = !DILocation(line: 144, column: 43, scope: !1315)
!1328 = !DILocation(line: 144, column: 51, scope: !1315)
!1329 = !DILocation(line: 144, column: 58, scope: !1315)
!1330 = !DILocation(line: 146, column: 17, scope: !1315)
!1331 = !DILocation(line: 148, column: 6, scope: !1315)
!1332 = !DILocation(line: 148, column: 62, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1315, file: !160, discriminator: 3)
!1334 = !DILocation(line: 148, column: 57, scope: !1333)
!1335 = !DILocation(line: 147, column: 17, scope: !1315)
!1336 = !DILocation(line: 149, column: 18, scope: !1315)
!1337 = !DILocation(line: 149, column: 15, scope: !1315)
!1338 = !DILocation(line: 149, column: 7, scope: !1315)
!1339 = !DILocation(line: 150, column: 12, scope: !1315)
!1340 = !DILocation(line: 150, column: 15, scope: !1315)
!1341 = !DILocation(line: 150, column: 25, scope: !1315)
!1342 = !DILocation(line: 150, column: 7, scope: !1315)
!1343 = !DILocation(line: 151, column: 13, scope: !1315)
!1344 = !DILocation(line: 151, column: 18, scope: !1315)
!1345 = !DILocation(line: 151, column: 23, scope: !1315)
!1346 = !DILocation(line: 151, column: 6, scope: !1315)
!1347 = !DILocation(line: 152, column: 3, scope: !1315)
!1348 = distinct !DISubprogram(name: "set_quoting_flags", scope: !160, file: !160, line: 160, type: !1349, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!73, !1273, !73}
!1351 = !{!1352, !1353, !1354}
!1352 = !DILocalVariable(name: "o", arg: 1, scope: !1348, file: !160, line: 160, type: !1273)
!1353 = !DILocalVariable(name: "i", arg: 2, scope: !1348, file: !160, line: 160, type: !73)
!1354 = !DILocalVariable(name: "r", scope: !1348, file: !160, line: 162, type: !73)
!1355 = !DILocation(line: 160, column: 44, scope: !1348)
!1356 = !DILocation(line: 160, column: 51, scope: !1348)
!1357 = !DILocation(line: 163, column: 8, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1348, file: !160, line: 163, column: 7)
!1359 = !DILocation(line: 163, column: 7, scope: !1348)
!1360 = !DILocation(line: 165, column: 10, scope: !1348)
!1361 = !{!1300, !694, i64 4}
!1362 = !DILocation(line: 162, column: 7, scope: !1348)
!1363 = !DILocation(line: 166, column: 12, scope: !1348)
!1364 = !DILocation(line: 167, column: 3, scope: !1348)
!1365 = distinct !DISubprogram(name: "set_custom_quoting", scope: !160, file: !160, line: 171, type: !1366, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !1273, !29, !29}
!1368 = !{!1369, !1370, !1371}
!1369 = !DILocalVariable(name: "o", arg: 1, scope: !1365, file: !160, line: 171, type: !1273)
!1370 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1365, file: !160, line: 172, type: !29)
!1371 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1365, file: !160, line: 172, type: !29)
!1372 = !DILocation(line: 171, column: 45, scope: !1365)
!1373 = !DILocation(line: 172, column: 33, scope: !1365)
!1374 = !DILocation(line: 172, column: 57, scope: !1365)
!1375 = !DILocation(line: 174, column: 8, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1365, file: !160, line: 174, column: 7)
!1377 = !DILocation(line: 174, column: 7, scope: !1365)
!1378 = !DILocation(line: 176, column: 6, scope: !1365)
!1379 = !DILocation(line: 176, column: 12, scope: !1365)
!1380 = !DILocation(line: 177, column: 8, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1365, file: !160, line: 177, column: 7)
!1382 = !DILocation(line: 177, column: 23, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1381, file: !160, discriminator: 1)
!1384 = !DILocation(line: 177, column: 19, scope: !1381)
!1385 = !DILocation(line: 178, column: 5, scope: !1381)
!1386 = !DILocation(line: 179, column: 6, scope: !1365)
!1387 = !DILocation(line: 179, column: 17, scope: !1365)
!1388 = !{!1300, !625, i64 40}
!1389 = !DILocation(line: 180, column: 6, scope: !1365)
!1390 = !DILocation(line: 180, column: 18, scope: !1365)
!1391 = !{!1300, !625, i64 48}
!1392 = !DILocation(line: 181, column: 1, scope: !1365)
!1393 = distinct !DISubprogram(name: "quotearg_buffer", scope: !160, file: !160, line: 776, type: !1394, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!33, !127, !33, !29, !33, !1291}
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1397 = !DILocalVariable(name: "buffer", arg: 1, scope: !1393, file: !160, line: 776, type: !127)
!1398 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1393, file: !160, line: 776, type: !33)
!1399 = !DILocalVariable(name: "arg", arg: 3, scope: !1393, file: !160, line: 777, type: !29)
!1400 = !DILocalVariable(name: "argsize", arg: 4, scope: !1393, file: !160, line: 777, type: !33)
!1401 = !DILocalVariable(name: "o", arg: 5, scope: !1393, file: !160, line: 778, type: !1291)
!1402 = !DILocalVariable(name: "p", scope: !1393, file: !160, line: 780, type: !1291)
!1403 = !DILocalVariable(name: "e", scope: !1393, file: !160, line: 781, type: !73)
!1404 = !DILocalVariable(name: "r", scope: !1393, file: !160, line: 782, type: !33)
!1405 = !DILocation(line: 776, column: 24, scope: !1393)
!1406 = !DILocation(line: 776, column: 39, scope: !1393)
!1407 = !DILocation(line: 777, column: 30, scope: !1393)
!1408 = !DILocation(line: 777, column: 42, scope: !1393)
!1409 = !DILocation(line: 778, column: 48, scope: !1393)
!1410 = !DILocation(line: 780, column: 37, scope: !1393)
!1411 = !DILocation(line: 780, column: 33, scope: !1393)
!1412 = !DILocation(line: 781, column: 11, scope: !1393)
!1413 = !DILocation(line: 781, column: 7, scope: !1393)
!1414 = !DILocation(line: 783, column: 43, scope: !1393)
!1415 = !DILocation(line: 783, column: 53, scope: !1393)
!1416 = !DILocation(line: 783, column: 60, scope: !1393)
!1417 = !DILocation(line: 784, column: 43, scope: !1393)
!1418 = !DILocation(line: 784, column: 58, scope: !1393)
!1419 = !DILocation(line: 782, column: 14, scope: !1393)
!1420 = !DILocation(line: 782, column: 10, scope: !1393)
!1421 = !DILocation(line: 785, column: 9, scope: !1393)
!1422 = !DILocation(line: 786, column: 3, scope: !1393)
!1423 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !160, file: !160, line: 248, type: !1424, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1428)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!33, !127, !33, !29, !33, !5, !73, !1426, !29, !29}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1453, !1454, !1455, !1456, !1457, !1460, !1461, !1478, !1481, !1482, !1489}
!1429 = !DILocalVariable(name: "buffer", arg: 1, scope: !1423, file: !160, line: 248, type: !127)
!1430 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1423, file: !160, line: 248, type: !33)
!1431 = !DILocalVariable(name: "arg", arg: 3, scope: !1423, file: !160, line: 249, type: !29)
!1432 = !DILocalVariable(name: "argsize", arg: 4, scope: !1423, file: !160, line: 249, type: !33)
!1433 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1423, file: !160, line: 250, type: !5)
!1434 = !DILocalVariable(name: "flags", arg: 6, scope: !1423, file: !160, line: 250, type: !73)
!1435 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1423, file: !160, line: 251, type: !1426)
!1436 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1423, file: !160, line: 252, type: !29)
!1437 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1423, file: !160, line: 253, type: !29)
!1438 = !DILocalVariable(name: "i", scope: !1423, file: !160, line: 255, type: !33)
!1439 = !DILocalVariable(name: "len", scope: !1423, file: !160, line: 256, type: !33)
!1440 = !DILocalVariable(name: "orig_buffersize", scope: !1423, file: !160, line: 257, type: !33)
!1441 = !DILocalVariable(name: "quote_string", scope: !1423, file: !160, line: 258, type: !29)
!1442 = !DILocalVariable(name: "quote_string_len", scope: !1423, file: !160, line: 259, type: !33)
!1443 = !DILocalVariable(name: "backslash_escapes", scope: !1423, file: !160, line: 260, type: !45)
!1444 = !DILocalVariable(name: "unibyte_locale", scope: !1423, file: !160, line: 261, type: !45)
!1445 = !DILocalVariable(name: "elide_outer_quotes", scope: !1423, file: !160, line: 262, type: !45)
!1446 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1423, file: !160, line: 263, type: !45)
!1447 = !DILocalVariable(name: "encountered_single_quote", scope: !1423, file: !160, line: 264, type: !45)
!1448 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1423, file: !160, line: 265, type: !45)
!1449 = !DILocalVariable(name: "c", scope: !1450, file: !160, line: 394, type: !40)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !160, line: 393, column: 5)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !160, line: 392, column: 3)
!1452 = distinct !DILexicalBlock(scope: !1423, file: !160, line: 392, column: 3)
!1453 = !DILocalVariable(name: "esc", scope: !1450, file: !160, line: 395, type: !40)
!1454 = !DILocalVariable(name: "is_right_quote", scope: !1450, file: !160, line: 396, type: !45)
!1455 = !DILocalVariable(name: "escaping", scope: !1450, file: !160, line: 397, type: !45)
!1456 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1450, file: !160, line: 398, type: !45)
!1457 = !DILocalVariable(name: "m", scope: !1458, file: !160, line: 602, type: !33)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 600, column: 11)
!1459 = distinct !DILexicalBlock(scope: !1450, file: !160, line: 418, column: 9)
!1460 = !DILocalVariable(name: "printable", scope: !1458, file: !160, line: 604, type: !45)
!1461 = !DILocalVariable(name: "mbstate", scope: !1462, file: !160, line: 613, type: !1464)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !160, line: 612, column: 15)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !160, line: 606, column: 17)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1465, line: 107, baseType: !1466)
!1465 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1465, line: 95, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1465, line: 83, size: 64, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1467, file: !1465, line: 85, baseType: !73, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1467, file: !1465, line: 94, baseType: !1471, size: 32, offset: 32)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1467, file: !1465, line: 86, size: 32, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1471, file: !1465, line: 89, baseType: !41, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1471, file: !1465, line: 93, baseType: !1475, size: 32)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 4)
!1478 = !DILocalVariable(name: "w", scope: !1479, file: !160, line: 623, type: !1480)
!1479 = distinct !DILexicalBlock(scope: !1462, file: !160, line: 622, column: 19)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !34, line: 90, baseType: !73)
!1481 = !DILocalVariable(name: "bytes", scope: !1479, file: !160, line: 624, type: !33)
!1482 = !DILocalVariable(name: "j", scope: !1483, file: !160, line: 649, type: !33)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !160, line: 648, column: 27)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !160, line: 646, column: 29)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !160, line: 641, column: 23)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !160, line: 633, column: 30)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !160, line: 628, column: 30)
!1488 = distinct !DILexicalBlock(scope: !1479, file: !160, line: 626, column: 25)
!1489 = !DILocalVariable(name: "ilim", scope: !1490, file: !160, line: 676, type: !33)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !160, line: 673, column: 15)
!1491 = distinct !DILexicalBlock(scope: !1458, file: !160, line: 672, column: 17)
!1492 = !DILocation(line: 248, column: 33, scope: !1423)
!1493 = !DILocation(line: 248, column: 48, scope: !1423)
!1494 = !DILocation(line: 249, column: 39, scope: !1423)
!1495 = !DILocation(line: 249, column: 51, scope: !1423)
!1496 = !DILocation(line: 250, column: 46, scope: !1423)
!1497 = !DILocation(line: 250, column: 65, scope: !1423)
!1498 = !DILocation(line: 251, column: 47, scope: !1423)
!1499 = !DILocation(line: 252, column: 39, scope: !1423)
!1500 = !DILocation(line: 253, column: 39, scope: !1423)
!1501 = !DILocation(line: 256, column: 10, scope: !1423)
!1502 = !DILocation(line: 257, column: 10, scope: !1423)
!1503 = !DILocation(line: 258, column: 15, scope: !1423)
!1504 = !DILocation(line: 259, column: 10, scope: !1423)
!1505 = !DILocation(line: 260, column: 8, scope: !1423)
!1506 = !DILocation(line: 261, column: 25, scope: !1423)
!1507 = !DILocation(line: 261, column: 36, scope: !1423)
!1508 = !DILocation(line: 262, column: 8, scope: !1423)
!1509 = !DILocation(line: 263, column: 8, scope: !1423)
!1510 = !DILocation(line: 264, column: 8, scope: !1423)
!1511 = !DILocation(line: 265, column: 8, scope: !1423)
!1512 = !DILocation(line: 265, column: 3, scope: !1423)
!1513 = !DILocation(line: 308, column: 3, scope: !1423)
!1514 = !DILocation(line: 315, column: 11, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1423, file: !160, line: 309, column: 5)
!1516 = !DILocation(line: 315, column: 12, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1515, file: !160, line: 315, column: 11)
!1518 = !DILocation(line: 316, column: 9, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1520, file: !160, discriminator: 1)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !160, line: 316, column: 9)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !160, line: 316, column: 9)
!1522 = !DILocation(line: 316, column: 9, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1521, file: !160, discriminator: 1)
!1524 = !DILocation(line: 316, column: 9, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1520, file: !160, discriminator: 2)
!1526 = !DILocation(line: 354, column: 26, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !160, line: 332, column: 11)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !160, line: 331, column: 13)
!1529 = distinct !DILexicalBlock(scope: !1515, file: !160, line: 330, column: 7)
!1530 = !DILocation(line: 355, column: 27, scope: !1527)
!1531 = !DILocation(line: 356, column: 11, scope: !1527)
!1532 = !DILocation(line: 357, column: 14, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !160, line: 357, column: 13)
!1534 = !DILocation(line: 357, column: 13, scope: !1529)
!1535 = !DILocation(line: 358, column: 43, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1537, file: !160, discriminator: 1)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !160, line: 358, column: 11)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !160, line: 358, column: 11)
!1539 = !DILocation(line: 358, column: 11, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1538, file: !160, discriminator: 1)
!1541 = !DILocation(line: 359, column: 13, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1543, file: !160, discriminator: 1)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !160, line: 359, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !160, line: 359, column: 13)
!1545 = !DILocation(line: 359, column: 13, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1544, file: !160, discriminator: 1)
!1547 = !DILocation(line: 359, column: 13, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1543, file: !160, discriminator: 2)
!1549 = !DILocation(line: 359, column: 13, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1544, file: !160, discriminator: 3)
!1551 = !DILocation(line: 358, column: 70, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1537, file: !160, discriminator: 2)
!1553 = distinct !{!1553, !1554, !1555}
!1554 = !DILocation(line: 358, column: 11, scope: !1538)
!1555 = !DILocation(line: 359, column: 13, scope: !1538)
!1556 = !DILocation(line: 362, column: 28, scope: !1529)
!1557 = !DILocation(line: 364, column: 7, scope: !1515)
!1558 = !DILocation(line: 367, column: 7, scope: !1515)
!1559 = !DILocation(line: 370, column: 7, scope: !1515)
!1560 = !DILocation(line: 373, column: 12, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1515, file: !160, line: 373, column: 11)
!1562 = !DILocation(line: 373, column: 11, scope: !1515)
!1563 = !DILocation(line: 378, column: 12, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1515, file: !160, line: 378, column: 11)
!1565 = !DILocation(line: 378, column: 11, scope: !1515)
!1566 = !DILocation(line: 379, column: 9, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !160, discriminator: 1)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !160, line: 379, column: 9)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !160, line: 379, column: 9)
!1570 = !DILocation(line: 379, column: 9, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1569, file: !160, discriminator: 1)
!1572 = !DILocation(line: 379, column: 9, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1568, file: !160, discriminator: 2)
!1574 = !DILocation(line: 386, column: 7, scope: !1515)
!1575 = !DILocation(line: 389, column: 7, scope: !1515)
!1576 = !DILocation(line: 255, column: 10, scope: !1423)
!1577 = !DILocation(line: 392, column: 8, scope: !1452)
!1578 = !DILocation(line: 392, column: 27, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1451, file: !160, discriminator: 1)
!1580 = !DILocation(line: 392, column: 19, scope: !1579)
!1581 = !DILocation(line: 392, column: 60, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1451, file: !160, discriminator: 3)
!1583 = !DILocation(line: 392, column: 3, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1452, file: !160, discriminator: 4)
!1585 = !DILocation(line: 392, column: 41, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1451, file: !160, discriminator: 2)
!1587 = !DILocation(line: 392, column: 48, scope: !1586)
!1588 = !DILocation(line: 396, column: 12, scope: !1450)
!1589 = !DILocation(line: 397, column: 12, scope: !1450)
!1590 = !DILocation(line: 398, column: 12, scope: !1450)
!1591 = !DILocation(line: 401, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1450, file: !160, line: 400, column: 11)
!1593 = !DILocation(line: 403, column: 17, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1592, file: !160, discriminator: 1)
!1595 = !DILocation(line: 404, column: 39, scope: !1592)
!1596 = !DILocation(line: 408, column: 32, scope: !1592)
!1597 = !DILocation(line: 404, column: 19, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1592, file: !160, discriminator: 2)
!1599 = !DILocation(line: 404, column: 15, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1592, file: !160, discriminator: 4)
!1601 = !DILocation(line: 409, column: 11, scope: !1592)
!1602 = !DILocation(line: 409, column: 26, scope: !1594)
!1603 = !DILocation(line: 409, column: 14, scope: !1594)
!1604 = !DILocation(line: 400, column: 11, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1450, file: !160, discriminator: 1)
!1606 = !DILocation(line: 416, column: 11, scope: !1450)
!1607 = !DILocation(line: 394, column: 21, scope: !1450)
!1608 = !DILocation(line: 417, column: 7, scope: !1450)
!1609 = !DILocation(line: 420, column: 15, scope: !1459)
!1610 = !DILocation(line: 422, column: 15, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !160, discriminator: 1)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !160, line: 422, column: 15)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !160, line: 421, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 420, column: 15)
!1615 = !DILocation(line: 422, column: 15, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1617, file: !160, discriminator: 4)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !160, line: 422, column: 15)
!1618 = !DILocation(line: 422, column: 15, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1617, file: !160, discriminator: 3)
!1620 = !DILocation(line: 422, column: 15, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1622, file: !160, discriminator: 6)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !160, line: 422, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !160, line: 422, column: 15)
!1624 = distinct !DILexicalBlock(scope: !1617, file: !160, line: 422, column: 15)
!1625 = !DILocation(line: 422, column: 15, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1623, file: !160, discriminator: 6)
!1627 = !DILocation(line: 422, column: 15, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1622, file: !160, discriminator: 7)
!1629 = !DILocation(line: 422, column: 15, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1623, file: !160, discriminator: 8)
!1631 = !DILocation(line: 422, column: 15, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1633, file: !160, discriminator: 11)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !160, line: 422, column: 15)
!1634 = distinct !DILexicalBlock(scope: !1624, file: !160, line: 422, column: 15)
!1635 = !DILocation(line: 422, column: 15, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1634, file: !160, discriminator: 11)
!1637 = !DILocation(line: 422, column: 15, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1633, file: !160, discriminator: 12)
!1639 = !DILocation(line: 422, column: 15, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1634, file: !160, discriminator: 13)
!1641 = !DILocation(line: 422, column: 15, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1643, file: !160, discriminator: 16)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !160, line: 422, column: 15)
!1644 = distinct !DILexicalBlock(scope: !1624, file: !160, line: 422, column: 15)
!1645 = !DILocation(line: 422, column: 15, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1644, file: !160, discriminator: 16)
!1647 = !DILocation(line: 422, column: 15, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1643, file: !160, discriminator: 17)
!1649 = !DILocation(line: 422, column: 15, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1644, file: !160, discriminator: 18)
!1651 = !DILocation(line: 422, column: 15, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1624, file: !160, discriminator: 20)
!1653 = !DILocation(line: 422, column: 15, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !160, discriminator: 22)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !160, line: 422, column: 15)
!1656 = distinct !DILexicalBlock(scope: !1612, file: !160, line: 422, column: 15)
!1657 = !DILocation(line: 422, column: 15, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1656, file: !160, discriminator: 22)
!1659 = !DILocation(line: 422, column: 15, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1655, file: !160, discriminator: 23)
!1661 = !DILocation(line: 422, column: 15, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1656, file: !160, discriminator: 24)
!1663 = !DILocation(line: 430, column: 19, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1613, file: !160, line: 429, column: 19)
!1665 = !DILocation(line: 430, column: 24, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1664, file: !160, discriminator: 1)
!1667 = !DILocation(line: 430, column: 28, scope: !1666)
!1668 = !DILocation(line: 430, column: 38, scope: !1666)
!1669 = !DILocation(line: 430, column: 48, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1664, file: !160, discriminator: 2)
!1671 = !DILocation(line: 430, column: 59, scope: !1670)
!1672 = !DILocation(line: 432, column: 19, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !160, discriminator: 1)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !160, line: 432, column: 19)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !160, line: 432, column: 19)
!1676 = distinct !DILexicalBlock(scope: !1664, file: !160, line: 431, column: 17)
!1677 = !DILocation(line: 432, column: 19, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1675, file: !160, discriminator: 1)
!1679 = !DILocation(line: 432, column: 19, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1674, file: !160, discriminator: 2)
!1681 = !DILocation(line: 432, column: 19, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1675, file: !160, discriminator: 3)
!1683 = !DILocation(line: 433, column: 19, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !160, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !160, line: 433, column: 19)
!1686 = distinct !DILexicalBlock(scope: !1676, file: !160, line: 433, column: 19)
!1687 = !DILocation(line: 433, column: 19, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1686, file: !160, discriminator: 1)
!1689 = !DILocation(line: 433, column: 19, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1685, file: !160, discriminator: 2)
!1691 = !DILocation(line: 433, column: 19, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1686, file: !160, discriminator: 3)
!1693 = !DILocation(line: 434, column: 17, scope: !1676)
!1694 = !DILocation(line: 441, column: 20, scope: !1614)
!1695 = !DILocation(line: 446, column: 11, scope: !1459)
!1696 = !DILocation(line: 449, column: 19, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 447, column: 13)
!1698 = !DILocation(line: 455, column: 19, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1697, file: !160, line: 454, column: 19)
!1700 = !DILocation(line: 455, column: 24, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1699, file: !160, discriminator: 1)
!1702 = !DILocation(line: 455, column: 28, scope: !1701)
!1703 = !DILocation(line: 455, column: 38, scope: !1701)
!1704 = !DILocation(line: 455, column: 47, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1699, file: !160, discriminator: 2)
!1706 = !DILocation(line: 455, column: 41, scope: !1705)
!1707 = !DILocation(line: 455, column: 52, scope: !1705)
!1708 = !DILocation(line: 454, column: 19, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1697, file: !160, discriminator: 1)
!1710 = !DILocation(line: 456, column: 25, scope: !1699)
!1711 = !DILocation(line: 456, column: 17, scope: !1699)
!1712 = !DILocation(line: 463, column: 25, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1699, file: !160, line: 457, column: 19)
!1714 = !DILocation(line: 467, column: 21, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1716, file: !160, discriminator: 1)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !160, line: 467, column: 21)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !160, line: 467, column: 21)
!1718 = !DILocation(line: 467, column: 21, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1717, file: !160, discriminator: 1)
!1720 = !DILocation(line: 467, column: 21, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1716, file: !160, discriminator: 2)
!1722 = !DILocation(line: 467, column: 21, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1717, file: !160, discriminator: 3)
!1724 = !DILocation(line: 468, column: 21, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1726, file: !160, discriminator: 1)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !160, line: 468, column: 21)
!1727 = distinct !DILexicalBlock(scope: !1713, file: !160, line: 468, column: 21)
!1728 = !DILocation(line: 468, column: 21, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1727, file: !160, discriminator: 1)
!1730 = !DILocation(line: 468, column: 21, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1726, file: !160, discriminator: 2)
!1732 = !DILocation(line: 468, column: 21, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1727, file: !160, discriminator: 3)
!1734 = !DILocation(line: 469, column: 21, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1736, file: !160, discriminator: 1)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !160, line: 469, column: 21)
!1737 = distinct !DILexicalBlock(scope: !1713, file: !160, line: 469, column: 21)
!1738 = !DILocation(line: 469, column: 21, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1737, file: !160, discriminator: 1)
!1740 = !DILocation(line: 469, column: 21, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1736, file: !160, discriminator: 2)
!1742 = !DILocation(line: 469, column: 21, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1737, file: !160, discriminator: 3)
!1744 = !DILocation(line: 470, column: 21, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1746, file: !160, discriminator: 1)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !160, line: 470, column: 21)
!1747 = distinct !DILexicalBlock(scope: !1713, file: !160, line: 470, column: 21)
!1748 = !DILocation(line: 470, column: 21, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1747, file: !160, discriminator: 1)
!1750 = !DILocation(line: 470, column: 21, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1746, file: !160, discriminator: 2)
!1752 = !DILocation(line: 470, column: 21, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1747, file: !160, discriminator: 3)
!1754 = !DILocation(line: 471, column: 21, scope: !1713)
!1755 = !DILocation(line: 395, column: 21, scope: !1450)
!1756 = !DILocation(line: 484, column: 31, scope: !1459)
!1757 = !DILocation(line: 485, column: 31, scope: !1459)
!1758 = !DILocation(line: 487, column: 31, scope: !1459)
!1759 = !DILocation(line: 488, column: 31, scope: !1459)
!1760 = !DILocation(line: 489, column: 31, scope: !1459)
!1761 = !DILocation(line: 492, column: 15, scope: !1459)
!1762 = !DILocation(line: 494, column: 19, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !160, line: 493, column: 13)
!1764 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 492, column: 15)
!1765 = !DILocation(line: 501, column: 33, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 501, column: 15)
!1767 = !DILocation(line: 506, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 505, column: 15)
!1769 = !DILocation(line: 510, column: 15, scope: !1459)
!1770 = !DILocation(line: 518, column: 26, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 518, column: 15)
!1772 = !DILocation(line: 518, column: 15, scope: !1459)
!1773 = !DILocation(line: 518, column: 40, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1771, file: !160, discriminator: 1)
!1775 = !DILocation(line: 518, column: 47, scope: !1774)
!1776 = !DILocation(line: 522, column: 17, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 522, column: 15)
!1778 = !DILocation(line: 518, column: 18, scope: !1774)
!1779 = !DILocation(line: 518, column: 65, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1771, file: !160, discriminator: 2)
!1781 = !DILocation(line: 518, column: 15, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1459, file: !160, discriminator: 2)
!1783 = !DILocation(line: 522, column: 15, scope: !1459)
!1784 = !DILocation(line: 526, column: 11, scope: !1459)
!1785 = !DILocation(line: 541, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 540, column: 15)
!1787 = !DILocation(line: 548, column: 15, scope: !1459)
!1788 = !DILocation(line: 550, column: 19, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !160, line: 549, column: 13)
!1790 = distinct !DILexicalBlock(scope: !1459, file: !160, line: 548, column: 15)
!1791 = !DILocation(line: 553, column: 19, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !160, line: 553, column: 19)
!1793 = !DILocation(line: 553, column: 35, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1792, file: !160, discriminator: 1)
!1795 = !DILocation(line: 553, column: 30, scope: !1792)
!1796 = !DILocation(line: 562, column: 15, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1798, file: !160, discriminator: 1)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !160, line: 562, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1789, file: !160, line: 562, column: 15)
!1800 = !DILocation(line: 562, column: 15, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1799, file: !160, discriminator: 1)
!1802 = !DILocation(line: 562, column: 15, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1798, file: !160, discriminator: 2)
!1804 = !DILocation(line: 562, column: 15, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1799, file: !160, discriminator: 3)
!1806 = !DILocation(line: 563, column: 15, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1808, file: !160, discriminator: 1)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !160, line: 563, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1789, file: !160, line: 563, column: 15)
!1810 = !DILocation(line: 563, column: 15, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1809, file: !160, discriminator: 1)
!1812 = !DILocation(line: 563, column: 15, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1808, file: !160, discriminator: 2)
!1814 = !DILocation(line: 563, column: 15, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1809, file: !160, discriminator: 3)
!1816 = !DILocation(line: 564, column: 15, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1818, file: !160, discriminator: 1)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !160, line: 564, column: 15)
!1819 = distinct !DILexicalBlock(scope: !1789, file: !160, line: 564, column: 15)
!1820 = !DILocation(line: 564, column: 15, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1819, file: !160, discriminator: 1)
!1822 = !DILocation(line: 564, column: 15, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1818, file: !160, discriminator: 2)
!1824 = !DILocation(line: 564, column: 15, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1819, file: !160, discriminator: 3)
!1826 = !DILocation(line: 566, column: 13, scope: !1789)
!1827 = !DILocation(line: 606, column: 17, scope: !1458)
!1828 = !DILocation(line: 602, column: 20, scope: !1458)
!1829 = !DILocation(line: 609, column: 29, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1463, file: !160, line: 607, column: 15)
!1831 = !{!879, !879, i64 0}
!1832 = !DILocation(line: 609, column: 27, scope: !1830)
!1833 = !DILocation(line: 604, column: 18, scope: !1458)
!1834 = !DILocation(line: 610, column: 15, scope: !1830)
!1835 = !DILocation(line: 613, column: 17, scope: !1462)
!1836 = !DILocation(line: 614, column: 17, scope: !1462)
!1837 = !DILocation(line: 618, column: 29, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1462, file: !160, line: 618, column: 21)
!1839 = !DILocation(line: 618, column: 21, scope: !1462)
!1840 = distinct !{!1840, !1841, !1842}
!1841 = !DILocation(line: 621, column: 17, scope: !1462)
!1842 = !DILocation(line: 667, column: 44, scope: !1462)
!1843 = !DILocation(line: 619, column: 29, scope: !1838)
!1844 = !DILocation(line: 619, column: 19, scope: !1838)
!1845 = !DILocation(line: 623, column: 21, scope: !1479)
!1846 = !DILocation(line: 624, column: 56, scope: !1479)
!1847 = !DILocation(line: 624, column: 50, scope: !1479)
!1848 = !DILocation(line: 625, column: 53, scope: !1479)
!1849 = !DIExpression(DW_OP_deref)
!1850 = !DILocation(line: 613, column: 27, scope: !1462)
!1851 = !DILocation(line: 623, column: 29, scope: !1479)
!1852 = !DILocation(line: 624, column: 36, scope: !1479)
!1853 = !DILocation(line: 624, column: 28, scope: !1479)
!1854 = !DILocation(line: 626, column: 25, scope: !1479)
!1855 = !DILocation(line: 636, column: 38, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !160, discriminator: 1)
!1857 = distinct !DILexicalBlock(scope: !1486, file: !160, line: 634, column: 23)
!1858 = !DILocation(line: 636, column: 48, scope: !1856)
!1859 = !DILocation(line: 636, column: 51, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1857, file: !160, discriminator: 2)
!1861 = !DILocation(line: 636, column: 48, scope: !1860)
!1862 = !DILocation(line: 636, column: 25, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1857, file: !160, discriminator: 3)
!1864 = !DILocation(line: 637, column: 28, scope: !1857)
!1865 = !DILocation(line: 636, column: 34, scope: !1856)
!1866 = distinct !{!1866, !1867, !1864}
!1867 = !DILocation(line: 636, column: 25, scope: !1857)
!1868 = !DILocation(line: 650, column: 43, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1870, file: !160, discriminator: 1)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !160, line: 650, column: 29)
!1871 = distinct !DILexicalBlock(scope: !1483, file: !160, line: 650, column: 29)
!1872 = !DILocation(line: 647, column: 29, scope: !1484)
!1873 = !DILocation(line: 649, column: 36, scope: !1483)
!1874 = !DILocation(line: 651, column: 49, scope: !1870)
!1875 = !DILocation(line: 651, column: 39, scope: !1870)
!1876 = !DILocation(line: 651, column: 31, scope: !1870)
!1877 = !DILocation(line: 650, column: 53, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1870, file: !160, discriminator: 2)
!1879 = !DILocation(line: 650, column: 29, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1871, file: !160, discriminator: 1)
!1881 = distinct !{!1881, !1882, !1883}
!1882 = !DILocation(line: 650, column: 29, scope: !1871)
!1883 = !DILocation(line: 659, column: 33, scope: !1871)
!1884 = !DILocation(line: 666, column: 19, scope: !1462)
!1885 = !DILocation(line: 662, column: 41, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1485, file: !160, line: 662, column: 29)
!1887 = !DILocation(line: 662, column: 31, scope: !1886)
!1888 = !DILocation(line: 662, column: 29, scope: !1485)
!1889 = !DILocation(line: 664, column: 27, scope: !1485)
!1890 = !DILocation(line: 667, column: 26, scope: !1462)
!1891 = !DILocation(line: 667, column: 24, scope: !1462)
!1892 = !DILocation(line: 666, column: 19, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1479, file: !160, discriminator: 3)
!1894 = !DILocation(line: 668, column: 15, scope: !1463)
!1895 = !DILocation(line: 670, column: 40, scope: !1458)
!1896 = !DILocation(line: 672, column: 19, scope: !1491)
!1897 = !DILocation(line: 672, column: 45, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1491, file: !160, discriminator: 1)
!1899 = !DILocation(line: 672, column: 23, scope: !1491)
!1900 = !DILocation(line: 676, column: 33, scope: !1490)
!1901 = !DILocation(line: 676, column: 24, scope: !1490)
!1902 = !DILocation(line: 678, column: 17, scope: !1490)
!1903 = !DILocation(line: 680, column: 43, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !160, line: 680, column: 25)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !160, line: 679, column: 19)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !160, line: 678, column: 17)
!1907 = distinct !DILexicalBlock(scope: !1490, file: !160, line: 678, column: 17)
!1908 = !DILocation(line: 682, column: 25, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !160, discriminator: 1)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !160, line: 682, column: 25)
!1911 = distinct !DILexicalBlock(scope: !1904, file: !160, line: 681, column: 23)
!1912 = !DILocation(line: 682, column: 25, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1914, file: !160, discriminator: 4)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !160, line: 682, column: 25)
!1915 = !DILocation(line: 682, column: 25, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1914, file: !160, discriminator: 3)
!1917 = !DILocation(line: 682, column: 25, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1919, file: !160, discriminator: 6)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !160, line: 682, column: 25)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !160, line: 682, column: 25)
!1921 = distinct !DILexicalBlock(scope: !1914, file: !160, line: 682, column: 25)
!1922 = !DILocation(line: 682, column: 25, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1920, file: !160, discriminator: 6)
!1924 = !DILocation(line: 682, column: 25, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1919, file: !160, discriminator: 7)
!1926 = !DILocation(line: 682, column: 25, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1920, file: !160, discriminator: 8)
!1928 = !DILocation(line: 682, column: 25, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1930, file: !160, discriminator: 11)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !160, line: 682, column: 25)
!1931 = distinct !DILexicalBlock(scope: !1921, file: !160, line: 682, column: 25)
!1932 = !DILocation(line: 682, column: 25, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1931, file: !160, discriminator: 11)
!1934 = !DILocation(line: 682, column: 25, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1930, file: !160, discriminator: 12)
!1936 = !DILocation(line: 682, column: 25, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1931, file: !160, discriminator: 13)
!1938 = !DILocation(line: 682, column: 25, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1940, file: !160, discriminator: 16)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !160, line: 682, column: 25)
!1941 = distinct !DILexicalBlock(scope: !1921, file: !160, line: 682, column: 25)
!1942 = !DILocation(line: 682, column: 25, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1941, file: !160, discriminator: 16)
!1944 = !DILocation(line: 682, column: 25, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1940, file: !160, discriminator: 17)
!1946 = !DILocation(line: 682, column: 25, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1941, file: !160, discriminator: 18)
!1948 = !DILocation(line: 682, column: 25, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1921, file: !160, discriminator: 20)
!1950 = !DILocation(line: 682, column: 25, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1952, file: !160, discriminator: 22)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !160, line: 682, column: 25)
!1953 = distinct !DILexicalBlock(scope: !1910, file: !160, line: 682, column: 25)
!1954 = !DILocation(line: 682, column: 25, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1953, file: !160, discriminator: 22)
!1956 = !DILocation(line: 682, column: 25, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1952, file: !160, discriminator: 23)
!1958 = !DILocation(line: 682, column: 25, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1953, file: !160, discriminator: 24)
!1960 = !DILocation(line: 683, column: 25, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1962, file: !160, discriminator: 1)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !160, line: 683, column: 25)
!1963 = distinct !DILexicalBlock(scope: !1911, file: !160, line: 683, column: 25)
!1964 = !DILocation(line: 683, column: 25, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1963, file: !160, discriminator: 1)
!1966 = !DILocation(line: 683, column: 25, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1962, file: !160, discriminator: 2)
!1968 = !DILocation(line: 683, column: 25, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1963, file: !160, discriminator: 3)
!1970 = !DILocation(line: 684, column: 25, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1972, file: !160, discriminator: 1)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !160, line: 684, column: 25)
!1973 = distinct !DILexicalBlock(scope: !1911, file: !160, line: 684, column: 25)
!1974 = !DILocation(line: 684, column: 25, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1973, file: !160, discriminator: 1)
!1976 = !DILocation(line: 684, column: 25, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1972, file: !160, discriminator: 2)
!1978 = !DILocation(line: 684, column: 25, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1973, file: !160, discriminator: 3)
!1980 = !DILocation(line: 685, column: 38, scope: !1911)
!1981 = !DILocation(line: 685, column: 33, scope: !1911)
!1982 = !DILocation(line: 686, column: 23, scope: !1911)
!1983 = !DILocation(line: 687, column: 30, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1904, file: !160, line: 687, column: 30)
!1985 = !DILocation(line: 687, column: 30, scope: !1904)
!1986 = !DILocation(line: 689, column: 25, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1988, file: !160, discriminator: 1)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !160, line: 689, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !160, line: 689, column: 25)
!1990 = distinct !DILexicalBlock(scope: !1984, file: !160, line: 688, column: 23)
!1991 = !DILocation(line: 689, column: 25, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1989, file: !160, discriminator: 1)
!1993 = !DILocation(line: 689, column: 25, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1988, file: !160, discriminator: 2)
!1995 = !DILocation(line: 689, column: 25, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1989, file: !160, discriminator: 3)
!1997 = !DILocation(line: 691, column: 23, scope: !1990)
!1998 = !DILocation(line: 692, column: 35, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1905, file: !160, line: 692, column: 25)
!2000 = !DILocation(line: 692, column: 30, scope: !1999)
!2001 = !DILocation(line: 692, column: 25, scope: !1905)
!2002 = !DILocation(line: 694, column: 21, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2004, file: !160, discriminator: 1)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !160, line: 694, column: 21)
!2005 = distinct !DILexicalBlock(scope: !1905, file: !160, line: 694, column: 21)
!2006 = !DILocation(line: 694, column: 21, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2004, file: !160, discriminator: 2)
!2008 = !DILocation(line: 694, column: 21, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !160, discriminator: 4)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !160, line: 694, column: 21)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !160, line: 694, column: 21)
!2012 = distinct !DILexicalBlock(scope: !2004, file: !160, line: 694, column: 21)
!2013 = !DILocation(line: 694, column: 21, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2011, file: !160, discriminator: 4)
!2015 = !DILocation(line: 694, column: 21, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2010, file: !160, discriminator: 5)
!2017 = !DILocation(line: 694, column: 21, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2011, file: !160, discriminator: 6)
!2019 = !DILocation(line: 694, column: 21, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2021, file: !160, discriminator: 9)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !160, line: 694, column: 21)
!2022 = distinct !DILexicalBlock(scope: !2012, file: !160, line: 694, column: 21)
!2023 = !DILocation(line: 694, column: 21, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2022, file: !160, discriminator: 9)
!2025 = !DILocation(line: 694, column: 21, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2021, file: !160, discriminator: 10)
!2027 = !DILocation(line: 694, column: 21, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2022, file: !160, discriminator: 11)
!2029 = !DILocation(line: 694, column: 21, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2012, file: !160, discriminator: 13)
!2031 = !DILocation(line: 695, column: 21, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2033, file: !160, discriminator: 1)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !160, line: 695, column: 21)
!2034 = distinct !DILexicalBlock(scope: !1905, file: !160, line: 695, column: 21)
!2035 = !DILocation(line: 695, column: 21, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2034, file: !160, discriminator: 1)
!2037 = !DILocation(line: 695, column: 21, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2033, file: !160, discriminator: 2)
!2039 = !DILocation(line: 695, column: 21, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2034, file: !160, discriminator: 3)
!2041 = !DILocation(line: 696, column: 25, scope: !1905)
!2042 = !DILocation(line: 678, column: 17, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !1906, file: !160, discriminator: 1)
!2044 = distinct !{!2044, !2045, !2046}
!2045 = !DILocation(line: 678, column: 17, scope: !1907)
!2046 = !DILocation(line: 697, column: 19, scope: !1907)
!2047 = !DILocation(line: 704, column: 34, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1450, file: !160, line: 704, column: 11)
!2049 = !DILocation(line: 706, column: 14, scope: !2048)
!2050 = !DILocation(line: 707, column: 14, scope: !2048)
!2051 = !DILocation(line: 707, column: 35, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2048, file: !160, discriminator: 1)
!2053 = !DILocation(line: 707, column: 17, scope: !2052)
!2054 = !DILocation(line: 707, column: 53, scope: !2052)
!2055 = !DILocation(line: 707, column: 47, scope: !2052)
!2056 = !DILocation(line: 707, column: 65, scope: !2052)
!2057 = !DILocation(line: 708, column: 15, scope: !2052)
!2058 = !DILocation(line: 708, column: 11, scope: !2048)
!2059 = !DILocation(line: 704, column: 11, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !1450, file: !160, discriminator: 2)
!2061 = !DILocation(line: 712, column: 7, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2063, file: !160, discriminator: 1)
!2063 = distinct !DILexicalBlock(scope: !1450, file: !160, line: 712, column: 7)
!2064 = !DILocation(line: 712, column: 7, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2066, file: !160, discriminator: 4)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !160, line: 712, column: 7)
!2067 = !DILocation(line: 712, column: 7, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2066, file: !160, discriminator: 3)
!2069 = !DILocation(line: 712, column: 7, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2071, file: !160, discriminator: 6)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !160, line: 712, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !160, line: 712, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2066, file: !160, line: 712, column: 7)
!2074 = !DILocation(line: 712, column: 7, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2072, file: !160, discriminator: 6)
!2076 = !DILocation(line: 712, column: 7, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2071, file: !160, discriminator: 7)
!2078 = !DILocation(line: 712, column: 7, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2072, file: !160, discriminator: 8)
!2080 = !DILocation(line: 712, column: 7, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2082, file: !160, discriminator: 11)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !160, line: 712, column: 7)
!2083 = distinct !DILexicalBlock(scope: !2073, file: !160, line: 712, column: 7)
!2084 = !DILocation(line: 712, column: 7, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2083, file: !160, discriminator: 11)
!2086 = !DILocation(line: 712, column: 7, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2082, file: !160, discriminator: 12)
!2088 = !DILocation(line: 712, column: 7, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2083, file: !160, discriminator: 13)
!2090 = !DILocation(line: 712, column: 7, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2092, file: !160, discriminator: 16)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !160, line: 712, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2073, file: !160, line: 712, column: 7)
!2094 = !DILocation(line: 712, column: 7, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2093, file: !160, discriminator: 16)
!2096 = !DILocation(line: 712, column: 7, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2092, file: !160, discriminator: 17)
!2098 = !DILocation(line: 712, column: 7, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2093, file: !160, discriminator: 18)
!2100 = !DILocation(line: 712, column: 7, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2073, file: !160, discriminator: 20)
!2102 = !DILocation(line: 712, column: 7, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2104, file: !160, discriminator: 22)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !160, line: 712, column: 7)
!2105 = distinct !DILexicalBlock(scope: !2063, file: !160, line: 712, column: 7)
!2106 = !DILocation(line: 712, column: 7, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2105, file: !160, discriminator: 22)
!2108 = !DILocation(line: 712, column: 7, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2104, file: !160, discriminator: 23)
!2110 = !DILocation(line: 712, column: 7, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2105, file: !160, discriminator: 24)
!2112 = !DILocation(line: 715, column: 7, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2114, file: !160, discriminator: 1)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !160, line: 715, column: 7)
!2115 = distinct !DILexicalBlock(scope: !1450, file: !160, line: 715, column: 7)
!2116 = !DILocation(line: 715, column: 7, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2114, file: !160, discriminator: 2)
!2118 = !DILocation(line: 715, column: 7, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2120, file: !160, discriminator: 4)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !160, line: 715, column: 7)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !160, line: 715, column: 7)
!2122 = distinct !DILexicalBlock(scope: !2114, file: !160, line: 715, column: 7)
!2123 = !DILocation(line: 715, column: 7, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2121, file: !160, discriminator: 4)
!2125 = !DILocation(line: 715, column: 7, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2120, file: !160, discriminator: 5)
!2127 = !DILocation(line: 715, column: 7, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2121, file: !160, discriminator: 6)
!2129 = !DILocation(line: 715, column: 7, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2131, file: !160, discriminator: 9)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !160, line: 715, column: 7)
!2132 = distinct !DILexicalBlock(scope: !2122, file: !160, line: 715, column: 7)
!2133 = !DILocation(line: 715, column: 7, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2132, file: !160, discriminator: 9)
!2135 = !DILocation(line: 715, column: 7, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2131, file: !160, discriminator: 10)
!2137 = !DILocation(line: 715, column: 7, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2132, file: !160, discriminator: 11)
!2139 = !DILocation(line: 715, column: 7, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2122, file: !160, discriminator: 13)
!2141 = !DILocation(line: 716, column: 7, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2143, file: !160, discriminator: 1)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !160, line: 716, column: 7)
!2144 = distinct !DILexicalBlock(scope: !1450, file: !160, line: 716, column: 7)
!2145 = !DILocation(line: 716, column: 7, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2144, file: !160, discriminator: 1)
!2147 = !DILocation(line: 716, column: 7, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2143, file: !160, discriminator: 2)
!2149 = !DILocation(line: 716, column: 7, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2144, file: !160, discriminator: 3)
!2151 = !DILocation(line: 718, column: 13, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1450, file: !160, line: 718, column: 11)
!2153 = !DILocation(line: 718, column: 11, scope: !1450)
!2154 = !DILocation(line: 720, column: 5, scope: !1451)
!2155 = !DILocation(line: 392, column: 75, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !1451, file: !160, discriminator: 5)
!2157 = !DILocation(line: 392, column: 3, scope: !2156)
!2158 = distinct !{!2158, !2159, !2160}
!2159 = !DILocation(line: 392, column: 3, scope: !1452)
!2160 = !DILocation(line: 720, column: 5, scope: !1452)
!2161 = !DILocation(line: 722, column: 11, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !1423, file: !160, line: 722, column: 7)
!2163 = !DILocation(line: 722, column: 16, scope: !2162)
!2164 = !DILocation(line: 730, column: 51, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1423, file: !160, line: 730, column: 7)
!2166 = !DILocation(line: 731, column: 10, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2165, file: !160, discriminator: 1)
!2168 = !DILocation(line: 733, column: 11, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !160, line: 733, column: 11)
!2170 = distinct !DILexicalBlock(scope: !2165, file: !160, line: 732, column: 5)
!2171 = !DILocation(line: 733, column: 11, scope: !2170)
!2172 = !DILocation(line: 734, column: 16, scope: !2169)
!2173 = !DILocation(line: 734, column: 9, scope: !2169)
!2174 = !DILocation(line: 738, column: 18, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2169, file: !160, line: 738, column: 16)
!2176 = !DILocation(line: 738, column: 32, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2175, file: !160, discriminator: 1)
!2178 = !DILocation(line: 738, column: 29, scope: !2175)
!2179 = !DILocation(line: 747, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1423, file: !160, line: 747, column: 7)
!2181 = !DILocation(line: 747, column: 20, scope: !2180)
!2182 = !DILocation(line: 748, column: 12, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2184, file: !160, discriminator: 1)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !160, line: 748, column: 5)
!2185 = distinct !DILexicalBlock(scope: !2180, file: !160, line: 748, column: 5)
!2186 = !DILocation(line: 748, column: 5, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2185, file: !160, discriminator: 1)
!2188 = !DILocation(line: 749, column: 7, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2190, file: !160, discriminator: 1)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !160, line: 749, column: 7)
!2191 = distinct !DILexicalBlock(scope: !2184, file: !160, line: 749, column: 7)
!2192 = !DILocation(line: 749, column: 7, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2191, file: !160, discriminator: 1)
!2194 = !DILocation(line: 749, column: 7, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2190, file: !160, discriminator: 2)
!2196 = !DILocation(line: 749, column: 7, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2191, file: !160, discriminator: 3)
!2198 = !DILocation(line: 748, column: 39, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2184, file: !160, discriminator: 2)
!2200 = distinct !{!2200, !2201, !2202}
!2201 = !DILocation(line: 748, column: 5, scope: !2185)
!2202 = !DILocation(line: 749, column: 7, scope: !2185)
!2203 = !DILocation(line: 751, column: 11, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1423, file: !160, line: 751, column: 7)
!2205 = !DILocation(line: 751, column: 7, scope: !1423)
!2206 = !DILocation(line: 752, column: 5, scope: !2204)
!2207 = !DILocation(line: 752, column: 17, scope: !2204)
!2208 = !DILocation(line: 758, column: 21, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !1423, file: !160, line: 758, column: 7)
!2210 = !DILocation(line: 758, column: 54, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2209, file: !160, discriminator: 1)
!2212 = !DILocation(line: 758, column: 51, scope: !2209)
!2213 = !DILocation(line: 762, column: 42, scope: !1423)
!2214 = !DILocation(line: 760, column: 10, scope: !1423)
!2215 = !DILocation(line: 760, column: 3, scope: !1423)
!2216 = !DILocation(line: 764, column: 1, scope: !1423)
!2217 = distinct !DISubprogram(name: "gettext_quote", scope: !160, file: !160, line: 199, type: !2218, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!29, !29, !5}
!2220 = !{!2221, !2222, !2223, !2224}
!2221 = !DILocalVariable(name: "msgid", arg: 1, scope: !2217, file: !160, line: 199, type: !29)
!2222 = !DILocalVariable(name: "s", arg: 2, scope: !2217, file: !160, line: 199, type: !5)
!2223 = !DILocalVariable(name: "translation", scope: !2217, file: !160, line: 201, type: !29)
!2224 = !DILocalVariable(name: "locale_code", scope: !2217, file: !160, line: 202, type: !29)
!2225 = !DILocation(line: 199, column: 28, scope: !2217)
!2226 = !DILocation(line: 199, column: 54, scope: !2217)
!2227 = !DILocation(line: 201, column: 29, scope: !2217)
!2228 = !DILocation(line: 201, column: 15, scope: !2217)
!2229 = !DILocation(line: 204, column: 19, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2217, file: !160, line: 204, column: 7)
!2231 = !DILocation(line: 204, column: 7, scope: !2217)
!2232 = !DILocation(line: 225, column: 17, scope: !2217)
!2233 = !DILocation(line: 202, column: 15, scope: !2217)
!2234 = !DILocalVariable(name: "s2", arg: 2, scope: !2235, file: !2236, line: 160, type: !29)
!2235 = distinct !DISubprogram(name: "strcaseeq0", scope: !2236, file: !2236, line: 160, type: !2237, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2239)
!2236 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!73, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2239 = !{!2240, !2234, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249}
!2240 = !DILocalVariable(name: "s1", arg: 1, scope: !2235, file: !2236, line: 160, type: !29)
!2241 = !DILocalVariable(name: "s20", arg: 3, scope: !2235, file: !2236, line: 160, type: !31)
!2242 = !DILocalVariable(name: "s21", arg: 4, scope: !2235, file: !2236, line: 160, type: !31)
!2243 = !DILocalVariable(name: "s22", arg: 5, scope: !2235, file: !2236, line: 160, type: !31)
!2244 = !DILocalVariable(name: "s23", arg: 6, scope: !2235, file: !2236, line: 160, type: !31)
!2245 = !DILocalVariable(name: "s24", arg: 7, scope: !2235, file: !2236, line: 160, type: !31)
!2246 = !DILocalVariable(name: "s25", arg: 8, scope: !2235, file: !2236, line: 160, type: !31)
!2247 = !DILocalVariable(name: "s26", arg: 9, scope: !2235, file: !2236, line: 160, type: !31)
!2248 = !DILocalVariable(name: "s27", arg: 10, scope: !2235, file: !2236, line: 160, type: !31)
!2249 = !DILocalVariable(name: "s28", arg: 11, scope: !2235, file: !2236, line: 160, type: !31)
!2250 = !DILocation(line: 160, column: 41, scope: !2235, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 226, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2217, file: !160, line: 226, column: 7)
!2253 = !DILocation(line: 160, column: 120, scope: !2235, inlinedAt: !2251)
!2254 = !DILocation(line: 160, column: 130, scope: !2235, inlinedAt: !2251)
!2255 = !DILocation(line: 162, column: 7, scope: !2256, inlinedAt: !2251)
!2256 = !DILexicalBlockFile(scope: !2257, file: !2236, discriminator: 1)
!2257 = distinct !DILexicalBlock(scope: !2235, file: !2236, line: 162, column: 7)
!2258 = !DILocalVariable(name: "s2", arg: 2, scope: !2259, file: !2236, line: 146, type: !29)
!2259 = distinct !DISubprogram(name: "strcaseeq1", scope: !2236, file: !2236, line: 146, type: !2260, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!73, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31}
!2262 = !{!2263, !2258, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2263 = !DILocalVariable(name: "s1", arg: 1, scope: !2259, file: !2236, line: 146, type: !29)
!2264 = !DILocalVariable(name: "s21", arg: 3, scope: !2259, file: !2236, line: 146, type: !31)
!2265 = !DILocalVariable(name: "s22", arg: 4, scope: !2259, file: !2236, line: 146, type: !31)
!2266 = !DILocalVariable(name: "s23", arg: 5, scope: !2259, file: !2236, line: 146, type: !31)
!2267 = !DILocalVariable(name: "s24", arg: 6, scope: !2259, file: !2236, line: 146, type: !31)
!2268 = !DILocalVariable(name: "s25", arg: 7, scope: !2259, file: !2236, line: 146, type: !31)
!2269 = !DILocalVariable(name: "s26", arg: 8, scope: !2259, file: !2236, line: 146, type: !31)
!2270 = !DILocalVariable(name: "s27", arg: 9, scope: !2259, file: !2236, line: 146, type: !31)
!2271 = !DILocalVariable(name: "s28", arg: 10, scope: !2259, file: !2236, line: 146, type: !31)
!2272 = !DILocation(line: 146, column: 41, scope: !2259, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 167, column: 16, scope: !2274, inlinedAt: !2251)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !2236, line: 164, column: 11)
!2275 = distinct !DILexicalBlock(scope: !2257, file: !2236, line: 163, column: 5)
!2276 = !DILocation(line: 146, column: 110, scope: !2259, inlinedAt: !2273)
!2277 = !DILocation(line: 146, column: 120, scope: !2259, inlinedAt: !2273)
!2278 = !DILocation(line: 148, column: 7, scope: !2279, inlinedAt: !2273)
!2279 = !DILexicalBlockFile(scope: !2280, file: !2236, discriminator: 1)
!2280 = distinct !DILexicalBlock(scope: !2259, file: !2236, line: 148, column: 7)
!2281 = !DILocalVariable(name: "s2", arg: 2, scope: !2282, file: !2236, line: 132, type: !29)
!2282 = distinct !DISubprogram(name: "strcaseeq2", scope: !2236, file: !2236, line: 132, type: !2283, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!73, !29, !29, !31, !31, !31, !31, !31, !31, !31}
!2285 = !{!2286, !2281, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2286 = !DILocalVariable(name: "s1", arg: 1, scope: !2282, file: !2236, line: 132, type: !29)
!2287 = !DILocalVariable(name: "s22", arg: 3, scope: !2282, file: !2236, line: 132, type: !31)
!2288 = !DILocalVariable(name: "s23", arg: 4, scope: !2282, file: !2236, line: 132, type: !31)
!2289 = !DILocalVariable(name: "s24", arg: 5, scope: !2282, file: !2236, line: 132, type: !31)
!2290 = !DILocalVariable(name: "s25", arg: 6, scope: !2282, file: !2236, line: 132, type: !31)
!2291 = !DILocalVariable(name: "s26", arg: 7, scope: !2282, file: !2236, line: 132, type: !31)
!2292 = !DILocalVariable(name: "s27", arg: 8, scope: !2282, file: !2236, line: 132, type: !31)
!2293 = !DILocalVariable(name: "s28", arg: 9, scope: !2282, file: !2236, line: 132, type: !31)
!2294 = !DILocation(line: 132, column: 41, scope: !2282, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 153, column: 16, scope: !2296, inlinedAt: !2273)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !2236, line: 150, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2280, file: !2236, line: 149, column: 5)
!2298 = !DILocation(line: 132, column: 100, scope: !2282, inlinedAt: !2295)
!2299 = !DILocation(line: 132, column: 110, scope: !2282, inlinedAt: !2295)
!2300 = !DILocation(line: 134, column: 7, scope: !2301, inlinedAt: !2295)
!2301 = !DILexicalBlockFile(scope: !2302, file: !2236, discriminator: 1)
!2302 = distinct !DILexicalBlock(scope: !2282, file: !2236, line: 134, column: 7)
!2303 = !DILocalVariable(name: "s2", arg: 2, scope: !2304, file: !2236, line: 118, type: !29)
!2304 = distinct !DISubprogram(name: "strcaseeq3", scope: !2236, file: !2236, line: 118, type: !2305, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!73, !29, !29, !31, !31, !31, !31, !31, !31}
!2307 = !{!2308, !2303, !2309, !2310, !2311, !2312, !2313, !2314}
!2308 = !DILocalVariable(name: "s1", arg: 1, scope: !2304, file: !2236, line: 118, type: !29)
!2309 = !DILocalVariable(name: "s23", arg: 3, scope: !2304, file: !2236, line: 118, type: !31)
!2310 = !DILocalVariable(name: "s24", arg: 4, scope: !2304, file: !2236, line: 118, type: !31)
!2311 = !DILocalVariable(name: "s25", arg: 5, scope: !2304, file: !2236, line: 118, type: !31)
!2312 = !DILocalVariable(name: "s26", arg: 6, scope: !2304, file: !2236, line: 118, type: !31)
!2313 = !DILocalVariable(name: "s27", arg: 7, scope: !2304, file: !2236, line: 118, type: !31)
!2314 = !DILocalVariable(name: "s28", arg: 8, scope: !2304, file: !2236, line: 118, type: !31)
!2315 = !DILocation(line: 118, column: 41, scope: !2304, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 139, column: 16, scope: !2317, inlinedAt: !2295)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !2236, line: 136, column: 11)
!2318 = distinct !DILexicalBlock(scope: !2302, file: !2236, line: 135, column: 5)
!2319 = !DILocation(line: 118, column: 90, scope: !2304, inlinedAt: !2316)
!2320 = !DILocation(line: 118, column: 100, scope: !2304, inlinedAt: !2316)
!2321 = !DILocation(line: 120, column: 7, scope: !2322, inlinedAt: !2316)
!2322 = !DILexicalBlockFile(scope: !2323, file: !2236, discriminator: 2)
!2323 = distinct !DILexicalBlock(scope: !2304, file: !2236, line: 120, column: 7)
!2324 = !DILocation(line: 120, column: 7, scope: !2325, inlinedAt: !2316)
!2325 = !DILexicalBlockFile(scope: !2304, file: !2236, discriminator: 2)
!2326 = !DILocalVariable(name: "s2", arg: 2, scope: !2327, file: !2236, line: 104, type: !29)
!2327 = distinct !DISubprogram(name: "strcaseeq4", scope: !2236, file: !2236, line: 104, type: !2328, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!73, !29, !29, !31, !31, !31, !31, !31}
!2330 = !{!2331, !2326, !2332, !2333, !2334, !2335, !2336}
!2331 = !DILocalVariable(name: "s1", arg: 1, scope: !2327, file: !2236, line: 104, type: !29)
!2332 = !DILocalVariable(name: "s24", arg: 3, scope: !2327, file: !2236, line: 104, type: !31)
!2333 = !DILocalVariable(name: "s25", arg: 4, scope: !2327, file: !2236, line: 104, type: !31)
!2334 = !DILocalVariable(name: "s26", arg: 5, scope: !2327, file: !2236, line: 104, type: !31)
!2335 = !DILocalVariable(name: "s27", arg: 6, scope: !2327, file: !2236, line: 104, type: !31)
!2336 = !DILocalVariable(name: "s28", arg: 7, scope: !2327, file: !2236, line: 104, type: !31)
!2337 = !DILocation(line: 104, column: 41, scope: !2327, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 125, column: 16, scope: !2339, inlinedAt: !2316)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !2236, line: 122, column: 11)
!2340 = distinct !DILexicalBlock(scope: !2323, file: !2236, line: 121, column: 5)
!2341 = !DILocation(line: 104, column: 80, scope: !2327, inlinedAt: !2338)
!2342 = !DILocation(line: 104, column: 90, scope: !2327, inlinedAt: !2338)
!2343 = !DILocation(line: 106, column: 7, scope: !2344, inlinedAt: !2338)
!2344 = !DILexicalBlockFile(scope: !2345, file: !2236, discriminator: 2)
!2345 = distinct !DILexicalBlock(scope: !2327, file: !2236, line: 106, column: 7)
!2346 = !DILocation(line: 106, column: 7, scope: !2347, inlinedAt: !2338)
!2347 = !DILexicalBlockFile(scope: !2327, file: !2236, discriminator: 2)
!2348 = !DILocalVariable(name: "s2", arg: 2, scope: !2349, file: !2236, line: 90, type: !29)
!2349 = distinct !DISubprogram(name: "strcaseeq5", scope: !2236, file: !2236, line: 90, type: !2350, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!73, !29, !29, !31, !31, !31, !31}
!2352 = !{!2353, !2348, !2354, !2355, !2356, !2357}
!2353 = !DILocalVariable(name: "s1", arg: 1, scope: !2349, file: !2236, line: 90, type: !29)
!2354 = !DILocalVariable(name: "s25", arg: 3, scope: !2349, file: !2236, line: 90, type: !31)
!2355 = !DILocalVariable(name: "s26", arg: 4, scope: !2349, file: !2236, line: 90, type: !31)
!2356 = !DILocalVariable(name: "s27", arg: 5, scope: !2349, file: !2236, line: 90, type: !31)
!2357 = !DILocalVariable(name: "s28", arg: 6, scope: !2349, file: !2236, line: 90, type: !31)
!2358 = !DILocation(line: 90, column: 41, scope: !2349, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 111, column: 16, scope: !2360, inlinedAt: !2338)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !2236, line: 108, column: 11)
!2361 = distinct !DILexicalBlock(scope: !2345, file: !2236, line: 107, column: 5)
!2362 = !DILocation(line: 90, column: 70, scope: !2349, inlinedAt: !2359)
!2363 = !DILocation(line: 90, column: 80, scope: !2349, inlinedAt: !2359)
!2364 = !DILocation(line: 92, column: 7, scope: !2365, inlinedAt: !2359)
!2365 = !DILexicalBlockFile(scope: !2366, file: !2236, discriminator: 2)
!2366 = distinct !DILexicalBlock(scope: !2349, file: !2236, line: 92, column: 7)
!2367 = !DILocation(line: 92, column: 7, scope: !2368, inlinedAt: !2359)
!2368 = !DILexicalBlockFile(scope: !2349, file: !2236, discriminator: 2)
!2369 = !DILocation(line: 227, column: 12, scope: !2252)
!2370 = !DILocation(line: 227, column: 21, scope: !2252)
!2371 = !DILocation(line: 227, column: 5, scope: !2252)
!2372 = !DILocation(line: 146, column: 41, scope: !2259, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 167, column: 16, scope: !2274, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 228, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2217, file: !160, line: 228, column: 7)
!2376 = !DILocation(line: 146, column: 110, scope: !2259, inlinedAt: !2373)
!2377 = !DILocation(line: 146, column: 120, scope: !2259, inlinedAt: !2373)
!2378 = !DILocation(line: 148, column: 7, scope: !2279, inlinedAt: !2373)
!2379 = !DILocation(line: 132, column: 41, scope: !2282, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 153, column: 16, scope: !2296, inlinedAt: !2373)
!2381 = !DILocation(line: 132, column: 100, scope: !2282, inlinedAt: !2380)
!2382 = !DILocation(line: 132, column: 110, scope: !2282, inlinedAt: !2380)
!2383 = !DILocation(line: 134, column: 7, scope: !2384, inlinedAt: !2380)
!2384 = !DILexicalBlockFile(scope: !2302, file: !2236, discriminator: 2)
!2385 = !DILocation(line: 134, column: 7, scope: !2386, inlinedAt: !2380)
!2386 = !DILexicalBlockFile(scope: !2282, file: !2236, discriminator: 2)
!2387 = !DILocation(line: 118, column: 41, scope: !2304, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 139, column: 16, scope: !2317, inlinedAt: !2380)
!2389 = !DILocation(line: 118, column: 90, scope: !2304, inlinedAt: !2388)
!2390 = !DILocation(line: 118, column: 100, scope: !2304, inlinedAt: !2388)
!2391 = !DILocation(line: 120, column: 7, scope: !2322, inlinedAt: !2388)
!2392 = !DILocation(line: 120, column: 7, scope: !2325, inlinedAt: !2388)
!2393 = !DILocation(line: 104, column: 41, scope: !2327, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 125, column: 16, scope: !2339, inlinedAt: !2388)
!2395 = !DILocation(line: 104, column: 80, scope: !2327, inlinedAt: !2394)
!2396 = !DILocation(line: 104, column: 90, scope: !2327, inlinedAt: !2394)
!2397 = !DILocation(line: 106, column: 7, scope: !2344, inlinedAt: !2394)
!2398 = !DILocation(line: 106, column: 7, scope: !2347, inlinedAt: !2394)
!2399 = !DILocation(line: 90, column: 41, scope: !2349, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 111, column: 16, scope: !2360, inlinedAt: !2394)
!2401 = !DILocation(line: 90, column: 70, scope: !2349, inlinedAt: !2400)
!2402 = !DILocation(line: 90, column: 80, scope: !2349, inlinedAt: !2400)
!2403 = !DILocation(line: 92, column: 7, scope: !2365, inlinedAt: !2400)
!2404 = !DILocation(line: 92, column: 7, scope: !2368, inlinedAt: !2400)
!2405 = !DILocalVariable(name: "s2", arg: 2, scope: !2406, file: !2236, line: 76, type: !29)
!2406 = distinct !DISubprogram(name: "strcaseeq6", scope: !2236, file: !2236, line: 76, type: !2407, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!73, !29, !29, !31, !31, !31}
!2409 = !{!2410, !2405, !2411, !2412, !2413}
!2410 = !DILocalVariable(name: "s1", arg: 1, scope: !2406, file: !2236, line: 76, type: !29)
!2411 = !DILocalVariable(name: "s26", arg: 3, scope: !2406, file: !2236, line: 76, type: !31)
!2412 = !DILocalVariable(name: "s27", arg: 4, scope: !2406, file: !2236, line: 76, type: !31)
!2413 = !DILocalVariable(name: "s28", arg: 5, scope: !2406, file: !2236, line: 76, type: !31)
!2414 = !DILocation(line: 76, column: 41, scope: !2406, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 97, column: 16, scope: !2416, inlinedAt: !2400)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !2236, line: 94, column: 11)
!2417 = distinct !DILexicalBlock(scope: !2366, file: !2236, line: 93, column: 5)
!2418 = !DILocation(line: 76, column: 60, scope: !2406, inlinedAt: !2415)
!2419 = !DILocation(line: 76, column: 70, scope: !2406, inlinedAt: !2415)
!2420 = !DILocation(line: 78, column: 7, scope: !2421, inlinedAt: !2415)
!2421 = !DILexicalBlockFile(scope: !2422, file: !2236, discriminator: 2)
!2422 = distinct !DILexicalBlock(scope: !2406, file: !2236, line: 78, column: 7)
!2423 = !DILocation(line: 78, column: 7, scope: !2424, inlinedAt: !2415)
!2424 = !DILexicalBlockFile(scope: !2406, file: !2236, discriminator: 2)
!2425 = !DILocalVariable(name: "s2", arg: 2, scope: !2426, file: !2236, line: 62, type: !29)
!2426 = distinct !DISubprogram(name: "strcaseeq7", scope: !2236, file: !2236, line: 62, type: !2427, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!73, !29, !29, !31, !31}
!2429 = !{!2430, !2425, !2431, !2432}
!2430 = !DILocalVariable(name: "s1", arg: 1, scope: !2426, file: !2236, line: 62, type: !29)
!2431 = !DILocalVariable(name: "s27", arg: 3, scope: !2426, file: !2236, line: 62, type: !31)
!2432 = !DILocalVariable(name: "s28", arg: 4, scope: !2426, file: !2236, line: 62, type: !31)
!2433 = !DILocation(line: 62, column: 41, scope: !2426, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 83, column: 16, scope: !2435, inlinedAt: !2415)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !2236, line: 80, column: 11)
!2436 = distinct !DILexicalBlock(scope: !2422, file: !2236, line: 79, column: 5)
!2437 = !DILocation(line: 62, column: 50, scope: !2426, inlinedAt: !2434)
!2438 = !DILocation(line: 62, column: 60, scope: !2426, inlinedAt: !2434)
!2439 = !DILocation(line: 64, column: 7, scope: !2440, inlinedAt: !2434)
!2440 = !DILexicalBlockFile(scope: !2441, file: !2236, discriminator: 2)
!2441 = distinct !DILexicalBlock(scope: !2426, file: !2236, line: 64, column: 7)
!2442 = !DILocation(line: 228, column: 7, scope: !2217)
!2443 = !DILocation(line: 229, column: 12, scope: !2375)
!2444 = !DILocation(line: 229, column: 21, scope: !2375)
!2445 = !DILocation(line: 229, column: 5, scope: !2375)
!2446 = !DILocation(line: 231, column: 13, scope: !2217)
!2447 = !DILocation(line: 231, column: 11, scope: !2217)
!2448 = !DILocation(line: 231, column: 3, scope: !2217)
!2449 = !DILocation(line: 232, column: 1, scope: !2217)
!2450 = distinct !DISubprogram(name: "quotearg_alloc", scope: !160, file: !160, line: 791, type: !2451, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!127, !29, !33, !1291}
!2453 = !{!2454, !2455, !2456}
!2454 = !DILocalVariable(name: "arg", arg: 1, scope: !2450, file: !160, line: 791, type: !29)
!2455 = !DILocalVariable(name: "argsize", arg: 2, scope: !2450, file: !160, line: 791, type: !33)
!2456 = !DILocalVariable(name: "o", arg: 3, scope: !2450, file: !160, line: 792, type: !1291)
!2457 = !DILocation(line: 791, column: 29, scope: !2450)
!2458 = !DILocation(line: 791, column: 41, scope: !2450)
!2459 = !DILocation(line: 792, column: 47, scope: !2450)
!2460 = !DILocalVariable(name: "arg", arg: 1, scope: !2461, file: !160, line: 804, type: !29)
!2461 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !160, file: !160, line: 804, type: !2462, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!127, !29, !33, !579, !1291}
!2464 = !{!2460, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2465 = !DILocalVariable(name: "argsize", arg: 2, scope: !2461, file: !160, line: 804, type: !33)
!2466 = !DILocalVariable(name: "size", arg: 3, scope: !2461, file: !160, line: 804, type: !579)
!2467 = !DILocalVariable(name: "o", arg: 4, scope: !2461, file: !160, line: 805, type: !1291)
!2468 = !DILocalVariable(name: "p", scope: !2461, file: !160, line: 807, type: !1291)
!2469 = !DILocalVariable(name: "e", scope: !2461, file: !160, line: 808, type: !73)
!2470 = !DILocalVariable(name: "flags", scope: !2461, file: !160, line: 810, type: !73)
!2471 = !DILocalVariable(name: "bufsize", scope: !2461, file: !160, line: 811, type: !33)
!2472 = !DILocalVariable(name: "buf", scope: !2461, file: !160, line: 815, type: !127)
!2473 = !DILocation(line: 804, column: 33, scope: !2461, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 794, column: 10, scope: !2450)
!2475 = !DILocation(line: 804, column: 45, scope: !2461, inlinedAt: !2474)
!2476 = !DILocation(line: 804, column: 62, scope: !2461, inlinedAt: !2474)
!2477 = !DILocation(line: 805, column: 51, scope: !2461, inlinedAt: !2474)
!2478 = !DILocation(line: 807, column: 37, scope: !2461, inlinedAt: !2474)
!2479 = !DILocation(line: 807, column: 33, scope: !2461, inlinedAt: !2474)
!2480 = !DILocation(line: 808, column: 11, scope: !2461, inlinedAt: !2474)
!2481 = !DILocation(line: 808, column: 7, scope: !2461, inlinedAt: !2474)
!2482 = !DILocation(line: 810, column: 18, scope: !2461, inlinedAt: !2474)
!2483 = !DILocation(line: 810, column: 24, scope: !2461, inlinedAt: !2474)
!2484 = !DILocation(line: 810, column: 7, scope: !2461, inlinedAt: !2474)
!2485 = !DILocation(line: 811, column: 69, scope: !2461, inlinedAt: !2474)
!2486 = !DILocation(line: 812, column: 53, scope: !2461, inlinedAt: !2474)
!2487 = !DILocation(line: 813, column: 49, scope: !2461, inlinedAt: !2474)
!2488 = !DILocation(line: 814, column: 49, scope: !2461, inlinedAt: !2474)
!2489 = !DILocation(line: 811, column: 20, scope: !2461, inlinedAt: !2474)
!2490 = !DILocation(line: 814, column: 62, scope: !2461, inlinedAt: !2474)
!2491 = !DILocation(line: 811, column: 10, scope: !2461, inlinedAt: !2474)
!2492 = !DILocalVariable(name: "n", arg: 1, scope: !2493, file: !575, line: 220, type: !33)
!2493 = distinct !DISubprogram(name: "xcharalloc", scope: !575, file: !575, line: 220, type: !2494, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!127, !33}
!2496 = !{!2492}
!2497 = !DILocation(line: 220, column: 20, scope: !2493, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 815, column: 15, scope: !2461, inlinedAt: !2474)
!2499 = !DILocation(line: 222, column: 10, scope: !2493, inlinedAt: !2498)
!2500 = !DILocation(line: 815, column: 9, scope: !2461, inlinedAt: !2474)
!2501 = !DILocation(line: 816, column: 60, scope: !2461, inlinedAt: !2474)
!2502 = !DILocation(line: 818, column: 32, scope: !2461, inlinedAt: !2474)
!2503 = !DILocation(line: 818, column: 47, scope: !2461, inlinedAt: !2474)
!2504 = !DILocation(line: 816, column: 3, scope: !2461, inlinedAt: !2474)
!2505 = !DILocation(line: 819, column: 9, scope: !2461, inlinedAt: !2474)
!2506 = !DILocation(line: 794, column: 3, scope: !2450)
!2507 = !DILocation(line: 804, column: 33, scope: !2461)
!2508 = !DILocation(line: 804, column: 45, scope: !2461)
!2509 = !DILocation(line: 804, column: 62, scope: !2461)
!2510 = !DILocation(line: 805, column: 51, scope: !2461)
!2511 = !DILocation(line: 807, column: 37, scope: !2461)
!2512 = !DILocation(line: 807, column: 33, scope: !2461)
!2513 = !DILocation(line: 808, column: 11, scope: !2461)
!2514 = !DILocation(line: 808, column: 7, scope: !2461)
!2515 = !DILocation(line: 810, column: 18, scope: !2461)
!2516 = !DILocation(line: 810, column: 27, scope: !2461)
!2517 = !DILocation(line: 810, column: 24, scope: !2461)
!2518 = !DILocation(line: 810, column: 7, scope: !2461)
!2519 = !DILocation(line: 811, column: 69, scope: !2461)
!2520 = !DILocation(line: 812, column: 53, scope: !2461)
!2521 = !DILocation(line: 813, column: 49, scope: !2461)
!2522 = !DILocation(line: 814, column: 49, scope: !2461)
!2523 = !DILocation(line: 811, column: 20, scope: !2461)
!2524 = !DILocation(line: 814, column: 62, scope: !2461)
!2525 = !DILocation(line: 811, column: 10, scope: !2461)
!2526 = !DILocation(line: 220, column: 20, scope: !2493, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 815, column: 15, scope: !2461)
!2528 = !DILocation(line: 222, column: 10, scope: !2493, inlinedAt: !2527)
!2529 = !DILocation(line: 815, column: 9, scope: !2461)
!2530 = !DILocation(line: 816, column: 60, scope: !2461)
!2531 = !DILocation(line: 818, column: 32, scope: !2461)
!2532 = !DILocation(line: 818, column: 47, scope: !2461)
!2533 = !DILocation(line: 816, column: 3, scope: !2461)
!2534 = !DILocation(line: 819, column: 9, scope: !2461)
!2535 = !DILocation(line: 820, column: 7, scope: !2461)
!2536 = !DILocation(line: 821, column: 11, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2461, file: !160, line: 820, column: 7)
!2538 = !DILocation(line: 821, column: 5, scope: !2537)
!2539 = !DILocation(line: 822, column: 3, scope: !2461)
!2540 = distinct !DISubprogram(name: "quotearg_free", scope: !160, file: !160, line: 840, type: !1025, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2541)
!2541 = !{!2542, !2543}
!2542 = !DILocalVariable(name: "sv", scope: !2540, file: !160, line: 842, type: !184)
!2543 = !DILocalVariable(name: "i", scope: !2540, file: !160, line: 843, type: !73)
!2544 = !DILocation(line: 842, column: 24, scope: !2540)
!2545 = !DILocation(line: 842, column: 19, scope: !2540)
!2546 = !DILocation(line: 843, column: 7, scope: !2540)
!2547 = !DILocation(line: 844, column: 19, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2549, file: !160, discriminator: 1)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !160, line: 844, column: 3)
!2550 = distinct !DILexicalBlock(scope: !2540, file: !160, line: 844, column: 3)
!2551 = !DILocation(line: 844, column: 17, scope: !2548)
!2552 = !DILocation(line: 844, column: 3, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2550, file: !160, discriminator: 1)
!2554 = !DILocation(line: 845, column: 17, scope: !2549)
!2555 = !{!2556, !625, i64 8}
!2556 = !{!"slotvec", !878, i64 0, !625, i64 8}
!2557 = !DILocation(line: 845, column: 5, scope: !2549)
!2558 = !DILocation(line: 844, column: 28, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2549, file: !160, discriminator: 2)
!2560 = distinct !{!2560, !2561, !2562}
!2561 = !DILocation(line: 844, column: 3, scope: !2550)
!2562 = !DILocation(line: 845, column: 20, scope: !2550)
!2563 = !DILocation(line: 846, column: 13, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2540, file: !160, line: 846, column: 7)
!2565 = !DILocation(line: 846, column: 17, scope: !2564)
!2566 = !DILocation(line: 846, column: 7, scope: !2540)
!2567 = !DILocation(line: 848, column: 7, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !160, line: 847, column: 5)
!2569 = !DILocation(line: 849, column: 21, scope: !2568)
!2570 = !{!2556, !878, i64 0}
!2571 = !DILocation(line: 850, column: 20, scope: !2568)
!2572 = !DILocation(line: 851, column: 5, scope: !2568)
!2573 = !DILocation(line: 852, column: 10, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2540, file: !160, line: 852, column: 7)
!2575 = !DILocation(line: 852, column: 7, scope: !2540)
!2576 = !DILocation(line: 854, column: 13, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !160, line: 853, column: 5)
!2578 = !DILocation(line: 854, column: 7, scope: !2577)
!2579 = !DILocation(line: 855, column: 15, scope: !2577)
!2580 = !DILocation(line: 856, column: 5, scope: !2577)
!2581 = !DILocation(line: 857, column: 10, scope: !2540)
!2582 = !DILocation(line: 858, column: 1, scope: !2540)
!2583 = distinct !DISubprogram(name: "quotearg_n", scope: !160, file: !160, line: 922, type: !2584, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!127, !73, !29}
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "n", arg: 1, scope: !2583, file: !160, line: 922, type: !73)
!2588 = !DILocalVariable(name: "arg", arg: 2, scope: !2583, file: !160, line: 922, type: !29)
!2589 = !DILocation(line: 922, column: 17, scope: !2583)
!2590 = !DILocation(line: 922, column: 32, scope: !2583)
!2591 = !DILocation(line: 924, column: 10, scope: !2583)
!2592 = !DILocation(line: 924, column: 3, scope: !2583)
!2593 = distinct !DISubprogram(name: "quotearg_n_options", scope: !160, file: !160, line: 869, type: !2594, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!127, !73, !29, !33, !1291}
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2606, !2608, !2609, !2610}
!2597 = !DILocalVariable(name: "n", arg: 1, scope: !2593, file: !160, line: 869, type: !73)
!2598 = !DILocalVariable(name: "arg", arg: 2, scope: !2593, file: !160, line: 869, type: !29)
!2599 = !DILocalVariable(name: "argsize", arg: 3, scope: !2593, file: !160, line: 869, type: !33)
!2600 = !DILocalVariable(name: "options", arg: 4, scope: !2593, file: !160, line: 870, type: !1291)
!2601 = !DILocalVariable(name: "e", scope: !2593, file: !160, line: 872, type: !73)
!2602 = !DILocalVariable(name: "sv", scope: !2593, file: !160, line: 874, type: !184)
!2603 = !DILocalVariable(name: "preallocated", scope: !2604, file: !160, line: 881, type: !45)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !160, line: 880, column: 5)
!2605 = distinct !DILexicalBlock(scope: !2593, file: !160, line: 879, column: 7)
!2606 = !DILocalVariable(name: "size", scope: !2607, file: !160, line: 894, type: !33)
!2607 = distinct !DILexicalBlock(scope: !2593, file: !160, line: 893, column: 3)
!2608 = !DILocalVariable(name: "val", scope: !2607, file: !160, line: 895, type: !127)
!2609 = !DILocalVariable(name: "flags", scope: !2607, file: !160, line: 897, type: !73)
!2610 = !DILocalVariable(name: "qsize", scope: !2607, file: !160, line: 898, type: !33)
!2611 = !DILocation(line: 869, column: 25, scope: !2593)
!2612 = !DILocation(line: 869, column: 40, scope: !2593)
!2613 = !DILocation(line: 869, column: 52, scope: !2593)
!2614 = !DILocation(line: 870, column: 51, scope: !2593)
!2615 = !DILocation(line: 872, column: 11, scope: !2593)
!2616 = !DILocation(line: 872, column: 7, scope: !2593)
!2617 = !DILocation(line: 874, column: 24, scope: !2593)
!2618 = !DILocation(line: 874, column: 19, scope: !2593)
!2619 = !DILocation(line: 876, column: 9, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2593, file: !160, line: 876, column: 7)
!2621 = !DILocation(line: 876, column: 7, scope: !2593)
!2622 = !DILocation(line: 877, column: 5, scope: !2620)
!2623 = !DILocation(line: 879, column: 7, scope: !2605)
!2624 = !DILocation(line: 879, column: 14, scope: !2605)
!2625 = !DILocation(line: 879, column: 7, scope: !2593)
!2626 = !DILocation(line: 881, column: 31, scope: !2604)
!2627 = !DILocation(line: 883, column: 67, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2604, file: !160, line: 883, column: 11)
!2629 = !DILocation(line: 883, column: 11, scope: !2604)
!2630 = !DILocation(line: 884, column: 9, scope: !2628)
!2631 = !DILocation(line: 886, column: 32, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2604, file: !160, discriminator: 3)
!2633 = !DILocation(line: 886, column: 61, scope: !2632)
!2634 = !DILocation(line: 886, column: 58, scope: !2632)
!2635 = !DILocation(line: 886, column: 66, scope: !2632)
!2636 = !DILocation(line: 886, column: 22, scope: !2632)
!2637 = !DILocation(line: 886, column: 15, scope: !2632)
!2638 = !DILocation(line: 887, column: 11, scope: !2604)
!2639 = !DILocation(line: 888, column: 15, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2604, file: !160, line: 887, column: 11)
!2641 = !{i64 0, i64 8, !892, i64 8, i64 8, !624}
!2642 = !DILocation(line: 888, column: 9, scope: !2640)
!2643 = !DILocation(line: 889, column: 20, scope: !2604)
!2644 = !DILocation(line: 889, column: 18, scope: !2604)
!2645 = !DILocation(line: 889, column: 7, scope: !2604)
!2646 = !DILocation(line: 889, column: 38, scope: !2604)
!2647 = !DILocation(line: 889, column: 31, scope: !2604)
!2648 = !DILocation(line: 889, column: 48, scope: !2604)
!2649 = !DILocation(line: 890, column: 14, scope: !2604)
!2650 = !DILocation(line: 891, column: 5, scope: !2604)
!2651 = !DILocation(line: 894, column: 19, scope: !2607)
!2652 = !DILocation(line: 894, column: 25, scope: !2607)
!2653 = !DILocation(line: 894, column: 12, scope: !2607)
!2654 = !DILocation(line: 895, column: 23, scope: !2607)
!2655 = !DILocation(line: 895, column: 11, scope: !2607)
!2656 = !DILocation(line: 897, column: 26, scope: !2607)
!2657 = !DILocation(line: 897, column: 32, scope: !2607)
!2658 = !DILocation(line: 897, column: 9, scope: !2607)
!2659 = !DILocation(line: 899, column: 55, scope: !2607)
!2660 = !DILocation(line: 900, column: 46, scope: !2607)
!2661 = !DILocation(line: 901, column: 55, scope: !2607)
!2662 = !DILocation(line: 902, column: 55, scope: !2607)
!2663 = !DILocation(line: 898, column: 20, scope: !2607)
!2664 = !DILocation(line: 898, column: 12, scope: !2607)
!2665 = !DILocation(line: 904, column: 14, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2607, file: !160, line: 904, column: 9)
!2667 = !DILocation(line: 904, column: 9, scope: !2607)
!2668 = !DILocation(line: 906, column: 35, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !160, line: 905, column: 7)
!2670 = !DILocation(line: 906, column: 20, scope: !2669)
!2671 = !DILocation(line: 907, column: 17, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !160, line: 907, column: 13)
!2673 = !DILocation(line: 907, column: 13, scope: !2669)
!2674 = !DILocation(line: 908, column: 11, scope: !2672)
!2675 = !DILocation(line: 220, column: 20, scope: !2493, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 909, column: 27, scope: !2669)
!2677 = !DILocation(line: 222, column: 10, scope: !2493, inlinedAt: !2676)
!2678 = !DILocation(line: 909, column: 19, scope: !2669)
!2679 = !DILocation(line: 910, column: 69, scope: !2669)
!2680 = !DILocation(line: 912, column: 44, scope: !2669)
!2681 = !DILocation(line: 913, column: 44, scope: !2669)
!2682 = !DILocation(line: 910, column: 9, scope: !2669)
!2683 = !DILocation(line: 914, column: 7, scope: !2669)
!2684 = !DILocation(line: 916, column: 11, scope: !2607)
!2685 = !DILocation(line: 917, column: 5, scope: !2607)
!2686 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !160, file: !160, line: 928, type: !2687, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!127, !73, !29, !33}
!2689 = !{!2690, !2691, !2692}
!2690 = !DILocalVariable(name: "n", arg: 1, scope: !2686, file: !160, line: 928, type: !73)
!2691 = !DILocalVariable(name: "arg", arg: 2, scope: !2686, file: !160, line: 928, type: !29)
!2692 = !DILocalVariable(name: "argsize", arg: 3, scope: !2686, file: !160, line: 928, type: !33)
!2693 = !DILocation(line: 928, column: 21, scope: !2686)
!2694 = !DILocation(line: 928, column: 36, scope: !2686)
!2695 = !DILocation(line: 928, column: 48, scope: !2686)
!2696 = !DILocation(line: 930, column: 10, scope: !2686)
!2697 = !DILocation(line: 930, column: 3, scope: !2686)
!2698 = distinct !DISubprogram(name: "quotearg", scope: !160, file: !160, line: 934, type: !2699, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!127, !29}
!2701 = !{!2702}
!2702 = !DILocalVariable(name: "arg", arg: 1, scope: !2698, file: !160, line: 934, type: !29)
!2703 = !DILocation(line: 934, column: 23, scope: !2698)
!2704 = !DILocation(line: 922, column: 17, scope: !2583, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 936, column: 10, scope: !2698)
!2706 = !DILocation(line: 922, column: 32, scope: !2583, inlinedAt: !2705)
!2707 = !DILocation(line: 924, column: 10, scope: !2583, inlinedAt: !2705)
!2708 = !DILocation(line: 936, column: 3, scope: !2698)
!2709 = distinct !DISubprogram(name: "quotearg_mem", scope: !160, file: !160, line: 940, type: !2710, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!127, !29, !33}
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "arg", arg: 1, scope: !2709, file: !160, line: 940, type: !29)
!2714 = !DILocalVariable(name: "argsize", arg: 2, scope: !2709, file: !160, line: 940, type: !33)
!2715 = !DILocation(line: 940, column: 27, scope: !2709)
!2716 = !DILocation(line: 940, column: 39, scope: !2709)
!2717 = !DILocation(line: 928, column: 21, scope: !2686, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 942, column: 10, scope: !2709)
!2719 = !DILocation(line: 928, column: 36, scope: !2686, inlinedAt: !2718)
!2720 = !DILocation(line: 928, column: 48, scope: !2686, inlinedAt: !2718)
!2721 = !DILocation(line: 930, column: 10, scope: !2686, inlinedAt: !2718)
!2722 = !DILocation(line: 942, column: 3, scope: !2709)
!2723 = distinct !DISubprogram(name: "quotearg_n_style", scope: !160, file: !160, line: 946, type: !2724, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!127, !73, !5, !29}
!2726 = !{!2727, !2728, !2729, !2730}
!2727 = !DILocalVariable(name: "n", arg: 1, scope: !2723, file: !160, line: 946, type: !73)
!2728 = !DILocalVariable(name: "s", arg: 2, scope: !2723, file: !160, line: 946, type: !5)
!2729 = !DILocalVariable(name: "arg", arg: 3, scope: !2723, file: !160, line: 946, type: !29)
!2730 = !DILocalVariable(name: "o", scope: !2723, file: !160, line: 948, type: !1292)
!2731 = !DILocalVariable(name: "o", scope: !2732, file: !160, line: 187, type: !167)
!2732 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !160, file: !160, line: 185, type: !2733, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!167, !5}
!2735 = !{!2736, !2731}
!2736 = !DILocalVariable(name: "style", arg: 1, scope: !2732, file: !160, line: 185, type: !5)
!2737 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2738 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 948, column: 36, scope: !2723)
!2740 = !DILocation(line: 946, column: 23, scope: !2723)
!2741 = !DILocation(line: 946, column: 45, scope: !2723)
!2742 = !DILocation(line: 946, column: 60, scope: !2723)
!2743 = !DILocation(line: 948, column: 3, scope: !2723)
!2744 = !DILocation(line: 948, column: 32, scope: !2723)
!2745 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2739)
!2746 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2739)
!2747 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2748 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2739)
!2749 = distinct !DILexicalBlock(scope: !2732, file: !160, line: 188, column: 7)
!2750 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2739)
!2751 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2739)
!2752 = !{!2753}
!2753 = distinct !{!2753, !2754, !"quoting_options_from_style: argument 0"}
!2754 = distinct !{!2754, !"quoting_options_from_style"}
!2755 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2739)
!2756 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2739)
!2757 = !DILocation(line: 949, column: 10, scope: !2723)
!2758 = !DILocation(line: 950, column: 1, scope: !2723)
!2759 = !DILocation(line: 949, column: 3, scope: !2723)
!2760 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !160, file: !160, line: 953, type: !2761, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!127, !73, !5, !29, !33}
!2763 = !{!2764, !2765, !2766, !2767, !2768}
!2764 = !DILocalVariable(name: "n", arg: 1, scope: !2760, file: !160, line: 953, type: !73)
!2765 = !DILocalVariable(name: "s", arg: 2, scope: !2760, file: !160, line: 953, type: !5)
!2766 = !DILocalVariable(name: "arg", arg: 3, scope: !2760, file: !160, line: 954, type: !29)
!2767 = !DILocalVariable(name: "argsize", arg: 4, scope: !2760, file: !160, line: 954, type: !33)
!2768 = !DILocalVariable(name: "o", scope: !2760, file: !160, line: 956, type: !1292)
!2769 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 956, column: 36, scope: !2760)
!2771 = !DILocation(line: 953, column: 27, scope: !2760)
!2772 = !DILocation(line: 953, column: 49, scope: !2760)
!2773 = !DILocation(line: 954, column: 35, scope: !2760)
!2774 = !DILocation(line: 954, column: 47, scope: !2760)
!2775 = !DILocation(line: 956, column: 3, scope: !2760)
!2776 = !DILocation(line: 956, column: 32, scope: !2760)
!2777 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2770)
!2778 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2770)
!2779 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2770)
!2780 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2770)
!2781 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2770)
!2782 = !{!2783}
!2783 = distinct !{!2783, !2784, !"quoting_options_from_style: argument 0"}
!2784 = distinct !{!2784, !"quoting_options_from_style"}
!2785 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2770)
!2786 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2770)
!2787 = !DILocation(line: 957, column: 10, scope: !2760)
!2788 = !DILocation(line: 958, column: 1, scope: !2760)
!2789 = !DILocation(line: 957, column: 3, scope: !2760)
!2790 = distinct !DISubprogram(name: "quotearg_style", scope: !160, file: !160, line: 961, type: !2791, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!127, !5, !29}
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "s", arg: 1, scope: !2790, file: !160, line: 961, type: !5)
!2795 = !DILocalVariable(name: "arg", arg: 2, scope: !2790, file: !160, line: 961, type: !29)
!2796 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 948, column: 36, scope: !2723, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 963, column: 10, scope: !2790)
!2799 = !DILocation(line: 961, column: 36, scope: !2790)
!2800 = !DILocation(line: 961, column: 51, scope: !2790)
!2801 = !DILocation(line: 946, column: 23, scope: !2723, inlinedAt: !2798)
!2802 = !DILocation(line: 946, column: 45, scope: !2723, inlinedAt: !2798)
!2803 = !DILocation(line: 946, column: 60, scope: !2723, inlinedAt: !2798)
!2804 = !DILocation(line: 948, column: 3, scope: !2723, inlinedAt: !2798)
!2805 = !DILocation(line: 948, column: 32, scope: !2723, inlinedAt: !2798)
!2806 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2797)
!2807 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2797)
!2808 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2797)
!2809 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2797)
!2810 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2797)
!2811 = !{!2812}
!2812 = distinct !{!2812, !2813, !"quoting_options_from_style: argument 0"}
!2813 = distinct !{!2813, !"quoting_options_from_style"}
!2814 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2797)
!2815 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2797)
!2816 = !DILocation(line: 949, column: 10, scope: !2723, inlinedAt: !2798)
!2817 = !DILocation(line: 950, column: 1, scope: !2723, inlinedAt: !2798)
!2818 = !DILocation(line: 963, column: 3, scope: !2790)
!2819 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !160, file: !160, line: 967, type: !2820, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!127, !5, !29, !33}
!2822 = !{!2823, !2824, !2825}
!2823 = !DILocalVariable(name: "s", arg: 1, scope: !2819, file: !160, line: 967, type: !5)
!2824 = !DILocalVariable(name: "arg", arg: 2, scope: !2819, file: !160, line: 967, type: !29)
!2825 = !DILocalVariable(name: "argsize", arg: 3, scope: !2819, file: !160, line: 967, type: !33)
!2826 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 956, column: 36, scope: !2760, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 969, column: 10, scope: !2819)
!2829 = !DILocation(line: 967, column: 40, scope: !2819)
!2830 = !DILocation(line: 967, column: 55, scope: !2819)
!2831 = !DILocation(line: 967, column: 67, scope: !2819)
!2832 = !DILocation(line: 953, column: 27, scope: !2760, inlinedAt: !2828)
!2833 = !DILocation(line: 953, column: 49, scope: !2760, inlinedAt: !2828)
!2834 = !DILocation(line: 954, column: 35, scope: !2760, inlinedAt: !2828)
!2835 = !DILocation(line: 954, column: 47, scope: !2760, inlinedAt: !2828)
!2836 = !DILocation(line: 956, column: 3, scope: !2760, inlinedAt: !2828)
!2837 = !DILocation(line: 956, column: 32, scope: !2760, inlinedAt: !2828)
!2838 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2827)
!2839 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2827)
!2840 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2827)
!2841 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2827)
!2842 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2827)
!2843 = !{!2844}
!2844 = distinct !{!2844, !2845, !"quoting_options_from_style: argument 0"}
!2845 = distinct !{!2845, !"quoting_options_from_style"}
!2846 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2827)
!2847 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2827)
!2848 = !DILocation(line: 957, column: 10, scope: !2760, inlinedAt: !2828)
!2849 = !DILocation(line: 958, column: 1, scope: !2760, inlinedAt: !2828)
!2850 = !DILocation(line: 969, column: 3, scope: !2819)
!2851 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !160, file: !160, line: 973, type: !2852, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!127, !29, !33, !31}
!2854 = !{!2855, !2856, !2857, !2858}
!2855 = !DILocalVariable(name: "arg", arg: 1, scope: !2851, file: !160, line: 973, type: !29)
!2856 = !DILocalVariable(name: "argsize", arg: 2, scope: !2851, file: !160, line: 973, type: !33)
!2857 = !DILocalVariable(name: "ch", arg: 3, scope: !2851, file: !160, line: 973, type: !31)
!2858 = !DILocalVariable(name: "options", scope: !2851, file: !160, line: 975, type: !167)
!2859 = !DILocation(line: 973, column: 32, scope: !2851)
!2860 = !DILocation(line: 973, column: 44, scope: !2851)
!2861 = !DILocation(line: 973, column: 58, scope: !2851)
!2862 = !DILocation(line: 975, column: 3, scope: !2851)
!2863 = !DILocation(line: 976, column: 13, scope: !2851)
!2864 = !{i64 0, i64 4, !840, i64 4, i64 4, !693, i64 8, i64 32, !840, i64 40, i64 8, !624, i64 48, i64 8, !624}
!2865 = !DILocation(line: 975, column: 26, scope: !2851)
!2866 = !DILocation(line: 144, column: 43, scope: !1315, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 977, column: 3, scope: !2851)
!2868 = !DILocation(line: 144, column: 51, scope: !1315, inlinedAt: !2867)
!2869 = !DILocation(line: 144, column: 58, scope: !1315, inlinedAt: !2867)
!2870 = !DILocation(line: 146, column: 17, scope: !1315, inlinedAt: !2867)
!2871 = !DILocation(line: 148, column: 62, scope: !1333, inlinedAt: !2867)
!2872 = !DILocation(line: 148, column: 57, scope: !1333, inlinedAt: !2867)
!2873 = !DILocation(line: 147, column: 17, scope: !1315, inlinedAt: !2867)
!2874 = !DILocation(line: 149, column: 18, scope: !1315, inlinedAt: !2867)
!2875 = !DILocation(line: 149, column: 15, scope: !1315, inlinedAt: !2867)
!2876 = !DILocation(line: 149, column: 7, scope: !1315, inlinedAt: !2867)
!2877 = !DILocation(line: 150, column: 12, scope: !1315, inlinedAt: !2867)
!2878 = !DILocation(line: 150, column: 15, scope: !1315, inlinedAt: !2867)
!2879 = !DILocation(line: 150, column: 25, scope: !1315, inlinedAt: !2867)
!2880 = !DILocation(line: 150, column: 7, scope: !1315, inlinedAt: !2867)
!2881 = !DILocation(line: 151, column: 18, scope: !1315, inlinedAt: !2867)
!2882 = !DILocation(line: 151, column: 23, scope: !1315, inlinedAt: !2867)
!2883 = !DILocation(line: 151, column: 6, scope: !1315, inlinedAt: !2867)
!2884 = !DILocation(line: 978, column: 10, scope: !2851)
!2885 = !DILocation(line: 979, column: 1, scope: !2851)
!2886 = !DILocation(line: 978, column: 3, scope: !2851)
!2887 = distinct !DISubprogram(name: "quotearg_char", scope: !160, file: !160, line: 982, type: !2888, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!127, !29, !31}
!2890 = !{!2891, !2892}
!2891 = !DILocalVariable(name: "arg", arg: 1, scope: !2887, file: !160, line: 982, type: !29)
!2892 = !DILocalVariable(name: "ch", arg: 2, scope: !2887, file: !160, line: 982, type: !31)
!2893 = !DILocation(line: 982, column: 28, scope: !2887)
!2894 = !DILocation(line: 982, column: 38, scope: !2887)
!2895 = !DILocation(line: 973, column: 32, scope: !2851, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 984, column: 10, scope: !2887)
!2897 = !DILocation(line: 973, column: 44, scope: !2851, inlinedAt: !2896)
!2898 = !DILocation(line: 973, column: 58, scope: !2851, inlinedAt: !2896)
!2899 = !DILocation(line: 975, column: 3, scope: !2851, inlinedAt: !2896)
!2900 = !DILocation(line: 976, column: 13, scope: !2851, inlinedAt: !2896)
!2901 = !DILocation(line: 975, column: 26, scope: !2851, inlinedAt: !2896)
!2902 = !DILocation(line: 144, column: 43, scope: !1315, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 977, column: 3, scope: !2851, inlinedAt: !2896)
!2904 = !DILocation(line: 144, column: 51, scope: !1315, inlinedAt: !2903)
!2905 = !DILocation(line: 144, column: 58, scope: !1315, inlinedAt: !2903)
!2906 = !DILocation(line: 146, column: 17, scope: !1315, inlinedAt: !2903)
!2907 = !DILocation(line: 148, column: 62, scope: !1333, inlinedAt: !2903)
!2908 = !DILocation(line: 148, column: 57, scope: !1333, inlinedAt: !2903)
!2909 = !DILocation(line: 147, column: 17, scope: !1315, inlinedAt: !2903)
!2910 = !DILocation(line: 149, column: 18, scope: !1315, inlinedAt: !2903)
!2911 = !DILocation(line: 149, column: 15, scope: !1315, inlinedAt: !2903)
!2912 = !DILocation(line: 149, column: 7, scope: !1315, inlinedAt: !2903)
!2913 = !DILocation(line: 150, column: 12, scope: !1315, inlinedAt: !2903)
!2914 = !DILocation(line: 150, column: 15, scope: !1315, inlinedAt: !2903)
!2915 = !DILocation(line: 150, column: 25, scope: !1315, inlinedAt: !2903)
!2916 = !DILocation(line: 150, column: 7, scope: !1315, inlinedAt: !2903)
!2917 = !DILocation(line: 151, column: 18, scope: !1315, inlinedAt: !2903)
!2918 = !DILocation(line: 151, column: 23, scope: !1315, inlinedAt: !2903)
!2919 = !DILocation(line: 151, column: 6, scope: !1315, inlinedAt: !2903)
!2920 = !DILocation(line: 978, column: 10, scope: !2851, inlinedAt: !2896)
!2921 = !DILocation(line: 979, column: 1, scope: !2851, inlinedAt: !2896)
!2922 = !DILocation(line: 984, column: 3, scope: !2887)
!2923 = distinct !DISubprogram(name: "quotearg_colon", scope: !160, file: !160, line: 988, type: !2699, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2924)
!2924 = !{!2925}
!2925 = !DILocalVariable(name: "arg", arg: 1, scope: !2923, file: !160, line: 988, type: !29)
!2926 = !DILocation(line: 988, column: 29, scope: !2923)
!2927 = !DILocation(line: 982, column: 28, scope: !2887, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 990, column: 10, scope: !2923)
!2929 = !DILocation(line: 982, column: 38, scope: !2887, inlinedAt: !2928)
!2930 = !DILocation(line: 973, column: 32, scope: !2851, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 984, column: 10, scope: !2887, inlinedAt: !2928)
!2932 = !DILocation(line: 973, column: 44, scope: !2851, inlinedAt: !2931)
!2933 = !DILocation(line: 973, column: 58, scope: !2851, inlinedAt: !2931)
!2934 = !DILocation(line: 975, column: 3, scope: !2851, inlinedAt: !2931)
!2935 = !DILocation(line: 976, column: 13, scope: !2851, inlinedAt: !2931)
!2936 = !DILocation(line: 975, column: 26, scope: !2851, inlinedAt: !2931)
!2937 = !DILocation(line: 144, column: 43, scope: !1315, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 977, column: 3, scope: !2851, inlinedAt: !2931)
!2939 = !DILocation(line: 144, column: 51, scope: !1315, inlinedAt: !2938)
!2940 = !DILocation(line: 144, column: 58, scope: !1315, inlinedAt: !2938)
!2941 = !DILocation(line: 146, column: 17, scope: !1315, inlinedAt: !2938)
!2942 = !DILocation(line: 148, column: 57, scope: !1333, inlinedAt: !2938)
!2943 = !DILocation(line: 147, column: 17, scope: !1315, inlinedAt: !2938)
!2944 = !DILocation(line: 149, column: 7, scope: !1315, inlinedAt: !2938)
!2945 = !DILocation(line: 150, column: 12, scope: !1315, inlinedAt: !2938)
!2946 = !DILocation(line: 151, column: 6, scope: !1315, inlinedAt: !2938)
!2947 = !DILocation(line: 978, column: 10, scope: !2851, inlinedAt: !2931)
!2948 = !DILocation(line: 979, column: 1, scope: !2851, inlinedAt: !2931)
!2949 = !DILocation(line: 990, column: 3, scope: !2923)
!2950 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !160, file: !160, line: 994, type: !2710, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2951)
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !160, line: 994, type: !29)
!2953 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !160, line: 994, type: !33)
!2954 = !DILocation(line: 994, column: 33, scope: !2950)
!2955 = !DILocation(line: 994, column: 45, scope: !2950)
!2956 = !DILocation(line: 973, column: 32, scope: !2851, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 996, column: 10, scope: !2950)
!2958 = !DILocation(line: 973, column: 44, scope: !2851, inlinedAt: !2957)
!2959 = !DILocation(line: 973, column: 58, scope: !2851, inlinedAt: !2957)
!2960 = !DILocation(line: 975, column: 3, scope: !2851, inlinedAt: !2957)
!2961 = !DILocation(line: 976, column: 13, scope: !2851, inlinedAt: !2957)
!2962 = !DILocation(line: 975, column: 26, scope: !2851, inlinedAt: !2957)
!2963 = !DILocation(line: 144, column: 43, scope: !1315, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 977, column: 3, scope: !2851, inlinedAt: !2957)
!2965 = !DILocation(line: 144, column: 51, scope: !1315, inlinedAt: !2964)
!2966 = !DILocation(line: 144, column: 58, scope: !1315, inlinedAt: !2964)
!2967 = !DILocation(line: 146, column: 17, scope: !1315, inlinedAt: !2964)
!2968 = !DILocation(line: 148, column: 57, scope: !1333, inlinedAt: !2964)
!2969 = !DILocation(line: 147, column: 17, scope: !1315, inlinedAt: !2964)
!2970 = !DILocation(line: 149, column: 7, scope: !1315, inlinedAt: !2964)
!2971 = !DILocation(line: 150, column: 12, scope: !1315, inlinedAt: !2964)
!2972 = !DILocation(line: 151, column: 6, scope: !1315, inlinedAt: !2964)
!2973 = !DILocation(line: 978, column: 10, scope: !2851, inlinedAt: !2957)
!2974 = !DILocation(line: 979, column: 1, scope: !2851, inlinedAt: !2957)
!2975 = !DILocation(line: 996, column: 3, scope: !2950)
!2976 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !160, file: !160, line: 1000, type: !2724, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !2977)
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !160, line: 1000, type: !73)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2976, file: !160, line: 1000, type: !5)
!2980 = !DILocalVariable(name: "arg", arg: 3, scope: !2976, file: !160, line: 1000, type: !29)
!2981 = !DILocalVariable(name: "options", scope: !2976, file: !160, line: 1002, type: !167)
!2982 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1003, column: 13, scope: !2976)
!2984 = !DILocation(line: 1000, column: 29, scope: !2976)
!2985 = !DILocation(line: 1000, column: 51, scope: !2976)
!2986 = !DILocation(line: 1000, column: 66, scope: !2976)
!2987 = !DILocation(line: 1002, column: 3, scope: !2976)
!2988 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2983)
!2989 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2983)
!2990 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2983)
!2991 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2983)
!2992 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2983)
!2993 = !{!2994}
!2994 = distinct !{!2994, !2995, !"quoting_options_from_style: argument 0"}
!2995 = distinct !{!2995, !"quoting_options_from_style"}
!2996 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2983)
!2997 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2983)
!2998 = !DILocation(line: 1003, column: 13, scope: !2976)
!2999 = !DILocation(line: 1002, column: 26, scope: !2976)
!3000 = !DILocation(line: 144, column: 43, scope: !1315, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1004, column: 3, scope: !2976)
!3002 = !DILocation(line: 144, column: 51, scope: !1315, inlinedAt: !3001)
!3003 = !DILocation(line: 144, column: 58, scope: !1315, inlinedAt: !3001)
!3004 = !DILocation(line: 146, column: 17, scope: !1315, inlinedAt: !3001)
!3005 = !DILocation(line: 148, column: 57, scope: !1333, inlinedAt: !3001)
!3006 = !DILocation(line: 147, column: 17, scope: !1315, inlinedAt: !3001)
!3007 = !DILocation(line: 149, column: 7, scope: !1315, inlinedAt: !3001)
!3008 = !DILocation(line: 150, column: 12, scope: !1315, inlinedAt: !3001)
!3009 = !DILocation(line: 151, column: 6, scope: !1315, inlinedAt: !3001)
!3010 = !DILocation(line: 1005, column: 10, scope: !2976)
!3011 = !DILocation(line: 1006, column: 1, scope: !2976)
!3012 = !DILocation(line: 1005, column: 3, scope: !2976)
!3013 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !160, file: !160, line: 1009, type: !3014, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!127, !73, !29, !29, !29}
!3016 = !{!3017, !3018, !3019, !3020}
!3017 = !DILocalVariable(name: "n", arg: 1, scope: !3013, file: !160, line: 1009, type: !73)
!3018 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3013, file: !160, line: 1009, type: !29)
!3019 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3013, file: !160, line: 1010, type: !29)
!3020 = !DILocalVariable(name: "arg", arg: 4, scope: !3013, file: !160, line: 1010, type: !29)
!3021 = !DILocation(line: 1009, column: 24, scope: !3013)
!3022 = !DILocation(line: 1009, column: 39, scope: !3013)
!3023 = !DILocation(line: 1010, column: 32, scope: !3013)
!3024 = !DILocation(line: 1010, column: 57, scope: !3013)
!3025 = !DILocalVariable(name: "n", arg: 1, scope: !3026, file: !160, line: 1017, type: !73)
!3026 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !160, file: !160, line: 1017, type: !3027, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!127, !73, !29, !29, !29, !33}
!3029 = !{!3025, !3030, !3031, !3032, !3033, !3034}
!3030 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3026, file: !160, line: 1017, type: !29)
!3031 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3026, file: !160, line: 1018, type: !29)
!3032 = !DILocalVariable(name: "arg", arg: 4, scope: !3026, file: !160, line: 1019, type: !29)
!3033 = !DILocalVariable(name: "argsize", arg: 5, scope: !3026, file: !160, line: 1019, type: !33)
!3034 = !DILocalVariable(name: "o", scope: !3026, file: !160, line: 1021, type: !167)
!3035 = !DILocation(line: 1017, column: 28, scope: !3026, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 1012, column: 10, scope: !3013)
!3037 = !DILocation(line: 1017, column: 43, scope: !3026, inlinedAt: !3036)
!3038 = !DILocation(line: 1018, column: 36, scope: !3026, inlinedAt: !3036)
!3039 = !DILocation(line: 1019, column: 36, scope: !3026, inlinedAt: !3036)
!3040 = !DILocation(line: 1019, column: 48, scope: !3026, inlinedAt: !3036)
!3041 = !DILocation(line: 1021, column: 3, scope: !3026, inlinedAt: !3036)
!3042 = !DILocation(line: 1021, column: 30, scope: !3026, inlinedAt: !3036)
!3043 = !DILocation(line: 1021, column: 26, scope: !3026, inlinedAt: !3036)
!3044 = !DILocation(line: 171, column: 45, scope: !1365, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 1022, column: 3, scope: !3026, inlinedAt: !3036)
!3046 = !DILocation(line: 172, column: 33, scope: !1365, inlinedAt: !3045)
!3047 = !DILocation(line: 172, column: 57, scope: !1365, inlinedAt: !3045)
!3048 = !DILocation(line: 176, column: 6, scope: !1365, inlinedAt: !3045)
!3049 = !DILocation(line: 176, column: 12, scope: !1365, inlinedAt: !3045)
!3050 = !DILocation(line: 177, column: 8, scope: !1381, inlinedAt: !3045)
!3051 = !DILocation(line: 177, column: 23, scope: !1383, inlinedAt: !3045)
!3052 = !DILocation(line: 177, column: 19, scope: !1381, inlinedAt: !3045)
!3053 = !DILocation(line: 178, column: 5, scope: !1381, inlinedAt: !3045)
!3054 = !DILocation(line: 179, column: 6, scope: !1365, inlinedAt: !3045)
!3055 = !DILocation(line: 179, column: 17, scope: !1365, inlinedAt: !3045)
!3056 = !DILocation(line: 180, column: 6, scope: !1365, inlinedAt: !3045)
!3057 = !DILocation(line: 180, column: 18, scope: !1365, inlinedAt: !3045)
!3058 = !DILocation(line: 1023, column: 10, scope: !3026, inlinedAt: !3036)
!3059 = !DILocation(line: 1024, column: 1, scope: !3026, inlinedAt: !3036)
!3060 = !DILocation(line: 1012, column: 3, scope: !3013)
!3061 = !DILocation(line: 1017, column: 28, scope: !3026)
!3062 = !DILocation(line: 1017, column: 43, scope: !3026)
!3063 = !DILocation(line: 1018, column: 36, scope: !3026)
!3064 = !DILocation(line: 1019, column: 36, scope: !3026)
!3065 = !DILocation(line: 1019, column: 48, scope: !3026)
!3066 = !DILocation(line: 1021, column: 3, scope: !3026)
!3067 = !DILocation(line: 1021, column: 30, scope: !3026)
!3068 = !DILocation(line: 1021, column: 26, scope: !3026)
!3069 = !DILocation(line: 171, column: 45, scope: !1365, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1022, column: 3, scope: !3026)
!3071 = !DILocation(line: 172, column: 33, scope: !1365, inlinedAt: !3070)
!3072 = !DILocation(line: 172, column: 57, scope: !1365, inlinedAt: !3070)
!3073 = !DILocation(line: 176, column: 6, scope: !1365, inlinedAt: !3070)
!3074 = !DILocation(line: 176, column: 12, scope: !1365, inlinedAt: !3070)
!3075 = !DILocation(line: 177, column: 8, scope: !1381, inlinedAt: !3070)
!3076 = !DILocation(line: 177, column: 23, scope: !1383, inlinedAt: !3070)
!3077 = !DILocation(line: 177, column: 19, scope: !1381, inlinedAt: !3070)
!3078 = !DILocation(line: 178, column: 5, scope: !1381, inlinedAt: !3070)
!3079 = !DILocation(line: 179, column: 6, scope: !1365, inlinedAt: !3070)
!3080 = !DILocation(line: 179, column: 17, scope: !1365, inlinedAt: !3070)
!3081 = !DILocation(line: 180, column: 6, scope: !1365, inlinedAt: !3070)
!3082 = !DILocation(line: 180, column: 18, scope: !1365, inlinedAt: !3070)
!3083 = !DILocation(line: 1023, column: 10, scope: !3026)
!3084 = !DILocation(line: 1024, column: 1, scope: !3026)
!3085 = !DILocation(line: 1023, column: 3, scope: !3026)
!3086 = distinct !DISubprogram(name: "quotearg_custom", scope: !160, file: !160, line: 1027, type: !3087, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!127, !29, !29, !29}
!3089 = !{!3090, !3091, !3092}
!3090 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3086, file: !160, line: 1027, type: !29)
!3091 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3086, file: !160, line: 1027, type: !29)
!3092 = !DILocalVariable(name: "arg", arg: 3, scope: !3086, file: !160, line: 1028, type: !29)
!3093 = !DILocation(line: 1027, column: 30, scope: !3086)
!3094 = !DILocation(line: 1027, column: 54, scope: !3086)
!3095 = !DILocation(line: 1028, column: 30, scope: !3086)
!3096 = !DILocation(line: 1009, column: 24, scope: !3013, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 1030, column: 10, scope: !3086)
!3098 = !DILocation(line: 1009, column: 39, scope: !3013, inlinedAt: !3097)
!3099 = !DILocation(line: 1010, column: 32, scope: !3013, inlinedAt: !3097)
!3100 = !DILocation(line: 1010, column: 57, scope: !3013, inlinedAt: !3097)
!3101 = !DILocation(line: 1017, column: 28, scope: !3026, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 1012, column: 10, scope: !3013, inlinedAt: !3097)
!3103 = !DILocation(line: 1017, column: 43, scope: !3026, inlinedAt: !3102)
!3104 = !DILocation(line: 1018, column: 36, scope: !3026, inlinedAt: !3102)
!3105 = !DILocation(line: 1019, column: 36, scope: !3026, inlinedAt: !3102)
!3106 = !DILocation(line: 1019, column: 48, scope: !3026, inlinedAt: !3102)
!3107 = !DILocation(line: 1021, column: 3, scope: !3026, inlinedAt: !3102)
!3108 = !DILocation(line: 1021, column: 30, scope: !3026, inlinedAt: !3102)
!3109 = !DILocation(line: 1021, column: 26, scope: !3026, inlinedAt: !3102)
!3110 = !DILocation(line: 171, column: 45, scope: !1365, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1022, column: 3, scope: !3026, inlinedAt: !3102)
!3112 = !DILocation(line: 172, column: 33, scope: !1365, inlinedAt: !3111)
!3113 = !DILocation(line: 172, column: 57, scope: !1365, inlinedAt: !3111)
!3114 = !DILocation(line: 176, column: 6, scope: !1365, inlinedAt: !3111)
!3115 = !DILocation(line: 176, column: 12, scope: !1365, inlinedAt: !3111)
!3116 = !DILocation(line: 177, column: 8, scope: !1381, inlinedAt: !3111)
!3117 = !DILocation(line: 177, column: 23, scope: !1383, inlinedAt: !3111)
!3118 = !DILocation(line: 177, column: 19, scope: !1381, inlinedAt: !3111)
!3119 = !DILocation(line: 178, column: 5, scope: !1381, inlinedAt: !3111)
!3120 = !DILocation(line: 179, column: 6, scope: !1365, inlinedAt: !3111)
!3121 = !DILocation(line: 179, column: 17, scope: !1365, inlinedAt: !3111)
!3122 = !DILocation(line: 180, column: 6, scope: !1365, inlinedAt: !3111)
!3123 = !DILocation(line: 180, column: 18, scope: !1365, inlinedAt: !3111)
!3124 = !DILocation(line: 1023, column: 10, scope: !3026, inlinedAt: !3102)
!3125 = !DILocation(line: 1024, column: 1, scope: !3026, inlinedAt: !3102)
!3126 = !DILocation(line: 1030, column: 3, scope: !3086)
!3127 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !160, file: !160, line: 1034, type: !3128, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!127, !29, !29, !29, !33}
!3130 = !{!3131, !3132, !3133, !3134}
!3131 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3127, file: !160, line: 1034, type: !29)
!3132 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3127, file: !160, line: 1034, type: !29)
!3133 = !DILocalVariable(name: "arg", arg: 3, scope: !3127, file: !160, line: 1035, type: !29)
!3134 = !DILocalVariable(name: "argsize", arg: 4, scope: !3127, file: !160, line: 1035, type: !33)
!3135 = !DILocation(line: 1034, column: 34, scope: !3127)
!3136 = !DILocation(line: 1034, column: 58, scope: !3127)
!3137 = !DILocation(line: 1035, column: 34, scope: !3127)
!3138 = !DILocation(line: 1035, column: 46, scope: !3127)
!3139 = !DILocation(line: 1017, column: 28, scope: !3026, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 1037, column: 10, scope: !3127)
!3141 = !DILocation(line: 1017, column: 43, scope: !3026, inlinedAt: !3140)
!3142 = !DILocation(line: 1018, column: 36, scope: !3026, inlinedAt: !3140)
!3143 = !DILocation(line: 1019, column: 36, scope: !3026, inlinedAt: !3140)
!3144 = !DILocation(line: 1019, column: 48, scope: !3026, inlinedAt: !3140)
!3145 = !DILocation(line: 1021, column: 3, scope: !3026, inlinedAt: !3140)
!3146 = !DILocation(line: 1021, column: 30, scope: !3026, inlinedAt: !3140)
!3147 = !DILocation(line: 1021, column: 26, scope: !3026, inlinedAt: !3140)
!3148 = !DILocation(line: 171, column: 45, scope: !1365, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1022, column: 3, scope: !3026, inlinedAt: !3140)
!3150 = !DILocation(line: 172, column: 33, scope: !1365, inlinedAt: !3149)
!3151 = !DILocation(line: 172, column: 57, scope: !1365, inlinedAt: !3149)
!3152 = !DILocation(line: 176, column: 6, scope: !1365, inlinedAt: !3149)
!3153 = !DILocation(line: 176, column: 12, scope: !1365, inlinedAt: !3149)
!3154 = !DILocation(line: 177, column: 8, scope: !1381, inlinedAt: !3149)
!3155 = !DILocation(line: 177, column: 23, scope: !1383, inlinedAt: !3149)
!3156 = !DILocation(line: 177, column: 19, scope: !1381, inlinedAt: !3149)
!3157 = !DILocation(line: 178, column: 5, scope: !1381, inlinedAt: !3149)
!3158 = !DILocation(line: 179, column: 6, scope: !1365, inlinedAt: !3149)
!3159 = !DILocation(line: 179, column: 17, scope: !1365, inlinedAt: !3149)
!3160 = !DILocation(line: 180, column: 6, scope: !1365, inlinedAt: !3149)
!3161 = !DILocation(line: 180, column: 18, scope: !1365, inlinedAt: !3149)
!3162 = !DILocation(line: 1023, column: 10, scope: !3026, inlinedAt: !3140)
!3163 = !DILocation(line: 1024, column: 1, scope: !3026, inlinedAt: !3140)
!3164 = !DILocation(line: 1037, column: 3, scope: !3127)
!3165 = distinct !DISubprogram(name: "quote_n_mem", scope: !160, file: !160, line: 1052, type: !3166, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!29, !73, !29, !33}
!3168 = !{!3169, !3170, !3171}
!3169 = !DILocalVariable(name: "n", arg: 1, scope: !3165, file: !160, line: 1052, type: !73)
!3170 = !DILocalVariable(name: "arg", arg: 2, scope: !3165, file: !160, line: 1052, type: !29)
!3171 = !DILocalVariable(name: "argsize", arg: 3, scope: !3165, file: !160, line: 1052, type: !33)
!3172 = !DILocation(line: 1052, column: 18, scope: !3165)
!3173 = !DILocation(line: 1052, column: 33, scope: !3165)
!3174 = !DILocation(line: 1052, column: 45, scope: !3165)
!3175 = !DILocation(line: 1054, column: 10, scope: !3165)
!3176 = !DILocation(line: 1054, column: 3, scope: !3165)
!3177 = distinct !DISubprogram(name: "quote_mem", scope: !160, file: !160, line: 1058, type: !3178, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!29, !29, !33}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "arg", arg: 1, scope: !3177, file: !160, line: 1058, type: !29)
!3182 = !DILocalVariable(name: "argsize", arg: 2, scope: !3177, file: !160, line: 1058, type: !33)
!3183 = !DILocation(line: 1058, column: 24, scope: !3177)
!3184 = !DILocation(line: 1058, column: 36, scope: !3177)
!3185 = !DILocation(line: 1052, column: 18, scope: !3165, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 1060, column: 10, scope: !3177)
!3187 = !DILocation(line: 1052, column: 33, scope: !3165, inlinedAt: !3186)
!3188 = !DILocation(line: 1052, column: 45, scope: !3165, inlinedAt: !3186)
!3189 = !DILocation(line: 1054, column: 10, scope: !3165, inlinedAt: !3186)
!3190 = !DILocation(line: 1060, column: 3, scope: !3177)
!3191 = distinct !DISubprogram(name: "quote_n", scope: !160, file: !160, line: 1064, type: !3192, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!29, !73, !29}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !160, line: 1064, type: !73)
!3196 = !DILocalVariable(name: "arg", arg: 2, scope: !3191, file: !160, line: 1064, type: !29)
!3197 = !DILocation(line: 1064, column: 14, scope: !3191)
!3198 = !DILocation(line: 1064, column: 29, scope: !3191)
!3199 = !DILocation(line: 1052, column: 18, scope: !3165, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1066, column: 10, scope: !3191)
!3201 = !DILocation(line: 1052, column: 33, scope: !3165, inlinedAt: !3200)
!3202 = !DILocation(line: 1052, column: 45, scope: !3165, inlinedAt: !3200)
!3203 = !DILocation(line: 1054, column: 10, scope: !3165, inlinedAt: !3200)
!3204 = !DILocation(line: 1066, column: 3, scope: !3191)
!3205 = distinct !DISubprogram(name: "quote", scope: !160, file: !160, line: 1070, type: !3206, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!29, !29}
!3208 = !{!3209}
!3209 = !DILocalVariable(name: "arg", arg: 1, scope: !3205, file: !160, line: 1070, type: !29)
!3210 = !DILocation(line: 1070, column: 20, scope: !3205)
!3211 = !DILocation(line: 1064, column: 14, scope: !3191, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 1072, column: 10, scope: !3205)
!3213 = !DILocation(line: 1064, column: 29, scope: !3191, inlinedAt: !3212)
!3214 = !DILocation(line: 1052, column: 18, scope: !3165, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 1066, column: 10, scope: !3191, inlinedAt: !3212)
!3216 = !DILocation(line: 1052, column: 33, scope: !3165, inlinedAt: !3215)
!3217 = !DILocation(line: 1052, column: 45, scope: !3165, inlinedAt: !3215)
!3218 = !DILocation(line: 1054, column: 10, scope: !3165, inlinedAt: !3215)
!3219 = !DILocation(line: 1072, column: 3, scope: !3205)
!3220 = distinct !DISubprogram(name: "version_etc_arn", scope: !567, file: !567, line: 62, type: !3221, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3264)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !3223, !29, !29, !29, !3263, !33}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !745, line: 49, baseType: !3225)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !747, line: 241, size: 1728, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3225, file: !747, line: 242, baseType: !73, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3225, file: !747, line: 247, baseType: !127, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3225, file: !747, line: 248, baseType: !127, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3225, file: !747, line: 249, baseType: !127, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3225, file: !747, line: 250, baseType: !127, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3225, file: !747, line: 251, baseType: !127, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3225, file: !747, line: 252, baseType: !127, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3225, file: !747, line: 253, baseType: !127, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3225, file: !747, line: 254, baseType: !127, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3225, file: !747, line: 256, baseType: !127, size: 64, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3225, file: !747, line: 257, baseType: !127, size: 64, offset: 640)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3225, file: !747, line: 258, baseType: !127, size: 64, offset: 704)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3225, file: !747, line: 260, baseType: !3240, size: 64, offset: 768)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !747, line: 156, size: 192, elements: !3242)
!3242 = !{!3243, !3244, !3246}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3241, file: !747, line: 157, baseType: !3240, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3241, file: !747, line: 158, baseType: !3245, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3241, file: !747, line: 162, baseType: !73, size: 32, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3225, file: !747, line: 262, baseType: !3245, size: 64, offset: 832)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3225, file: !747, line: 264, baseType: !73, size: 32, offset: 896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3225, file: !747, line: 268, baseType: !73, size: 32, offset: 928)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3225, file: !747, line: 270, baseType: !773, size: 64, offset: 960)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3225, file: !747, line: 274, baseType: !156, size: 16, offset: 1024)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3225, file: !747, line: 275, baseType: !777, size: 8, offset: 1040)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3225, file: !747, line: 276, baseType: !779, size: 8, offset: 1048)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3225, file: !747, line: 280, baseType: !783, size: 64, offset: 1088)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3225, file: !747, line: 289, baseType: !786, size: 64, offset: 1152)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3225, file: !747, line: 297, baseType: !32, size: 64, offset: 1216)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3225, file: !747, line: 298, baseType: !32, size: 64, offset: 1280)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3225, file: !747, line: 299, baseType: !32, size: 64, offset: 1344)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3225, file: !747, line: 300, baseType: !32, size: 64, offset: 1408)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3225, file: !747, line: 302, baseType: !33, size: 64, offset: 1472)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3225, file: !747, line: 303, baseType: !73, size: 32, offset: 1536)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3225, file: !747, line: 305, baseType: !794, size: 160, offset: 1568)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270}
!3265 = !DILocalVariable(name: "stream", arg: 1, scope: !3220, file: !567, line: 62, type: !3223)
!3266 = !DILocalVariable(name: "command_name", arg: 2, scope: !3220, file: !567, line: 63, type: !29)
!3267 = !DILocalVariable(name: "package", arg: 3, scope: !3220, file: !567, line: 63, type: !29)
!3268 = !DILocalVariable(name: "version", arg: 4, scope: !3220, file: !567, line: 64, type: !29)
!3269 = !DILocalVariable(name: "authors", arg: 5, scope: !3220, file: !567, line: 65, type: !3263)
!3270 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3220, file: !567, line: 65, type: !33)
!3271 = !DILocation(line: 62, column: 24, scope: !3220)
!3272 = !DILocation(line: 63, column: 30, scope: !3220)
!3273 = !DILocation(line: 63, column: 56, scope: !3220)
!3274 = !DILocation(line: 64, column: 30, scope: !3220)
!3275 = !DILocation(line: 65, column: 39, scope: !3220)
!3276 = !DILocation(line: 65, column: 55, scope: !3220)
!3277 = !DILocation(line: 67, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3220, file: !567, line: 67, column: 7)
!3279 = !DILocation(line: 67, column: 7, scope: !3220)
!3280 = !DILocation(line: 68, column: 5, scope: !3278)
!3281 = !DILocation(line: 70, column: 5, scope: !3278)
!3282 = !DILocation(line: 84, column: 3, scope: !3220)
!3283 = !DILocation(line: 84, column: 3, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3220, file: !567, discriminator: 1)
!3285 = !DILocation(line: 86, column: 3, scope: !3220)
!3286 = !DILocation(line: 86, column: 3, scope: !3284)
!3287 = !DILocation(line: 95, column: 3, scope: !3220)
!3288 = !DILocation(line: 99, column: 7, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3220, file: !567, line: 96, column: 5)
!3290 = !DILocation(line: 102, column: 7, scope: !3289)
!3291 = !DILocation(line: 102, column: 7, scope: !3292)
!3292 = !DILexicalBlockFile(scope: !3289, file: !567, discriminator: 1)
!3293 = !DILocation(line: 103, column: 7, scope: !3289)
!3294 = !DILocation(line: 106, column: 7, scope: !3289)
!3295 = !DILocation(line: 106, column: 7, scope: !3292)
!3296 = !DILocation(line: 107, column: 7, scope: !3289)
!3297 = !DILocation(line: 110, column: 7, scope: !3289)
!3298 = !DILocation(line: 110, column: 7, scope: !3292)
!3299 = !DILocation(line: 112, column: 7, scope: !3289)
!3300 = !DILocation(line: 117, column: 7, scope: !3289)
!3301 = !DILocation(line: 117, column: 7, scope: !3292)
!3302 = !DILocation(line: 119, column: 7, scope: !3289)
!3303 = !DILocation(line: 124, column: 7, scope: !3289)
!3304 = !DILocation(line: 124, column: 7, scope: !3292)
!3305 = !DILocation(line: 126, column: 7, scope: !3289)
!3306 = !DILocation(line: 131, column: 7, scope: !3289)
!3307 = !DILocation(line: 131, column: 7, scope: !3292)
!3308 = !DILocation(line: 134, column: 7, scope: !3289)
!3309 = !DILocation(line: 139, column: 7, scope: !3289)
!3310 = !DILocation(line: 139, column: 7, scope: !3292)
!3311 = !DILocation(line: 142, column: 7, scope: !3289)
!3312 = !DILocation(line: 147, column: 7, scope: !3289)
!3313 = !DILocation(line: 147, column: 7, scope: !3292)
!3314 = !DILocation(line: 151, column: 7, scope: !3289)
!3315 = !DILocation(line: 156, column: 7, scope: !3289)
!3316 = !DILocation(line: 156, column: 7, scope: !3292)
!3317 = !DILocation(line: 160, column: 7, scope: !3289)
!3318 = !DILocation(line: 167, column: 7, scope: !3289)
!3319 = !DILocation(line: 167, column: 7, scope: !3292)
!3320 = !DILocation(line: 171, column: 7, scope: !3289)
!3321 = !DILocation(line: 173, column: 1, scope: !3220)
!3322 = distinct !DISubprogram(name: "version_etc_ar", scope: !567, file: !567, line: 180, type: !3323, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !3223, !29, !29, !29, !3263}
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331}
!3326 = !DILocalVariable(name: "stream", arg: 1, scope: !3322, file: !567, line: 180, type: !3223)
!3327 = !DILocalVariable(name: "command_name", arg: 2, scope: !3322, file: !567, line: 181, type: !29)
!3328 = !DILocalVariable(name: "package", arg: 3, scope: !3322, file: !567, line: 181, type: !29)
!3329 = !DILocalVariable(name: "version", arg: 4, scope: !3322, file: !567, line: 182, type: !29)
!3330 = !DILocalVariable(name: "authors", arg: 5, scope: !3322, file: !567, line: 182, type: !3263)
!3331 = !DILocalVariable(name: "n_authors", scope: !3322, file: !567, line: 184, type: !33)
!3332 = !DILocation(line: 180, column: 23, scope: !3322)
!3333 = !DILocation(line: 181, column: 29, scope: !3322)
!3334 = !DILocation(line: 181, column: 55, scope: !3322)
!3335 = !DILocation(line: 182, column: 29, scope: !3322)
!3336 = !DILocation(line: 182, column: 59, scope: !3322)
!3337 = !DILocation(line: 184, column: 10, scope: !3322)
!3338 = !DILocation(line: 186, column: 8, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3322, file: !567, line: 186, column: 3)
!3340 = !DILocation(line: 186, column: 23, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !3342, file: !567, discriminator: 1)
!3342 = distinct !DILexicalBlock(scope: !3339, file: !567, line: 186, column: 3)
!3343 = !DILocation(line: 186, column: 3, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !3339, file: !567, discriminator: 1)
!3345 = !DILocation(line: 186, column: 52, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3342, file: !567, discriminator: 3)
!3347 = distinct !{!3347, !3348, !3349}
!3348 = !DILocation(line: 186, column: 3, scope: !3339)
!3349 = !DILocation(line: 187, column: 5, scope: !3339)
!3350 = !DILocation(line: 188, column: 3, scope: !3322)
!3351 = !DILocation(line: 189, column: 1, scope: !3322)
!3352 = distinct !DISubprogram(name: "version_etc_va", scope: !567, file: !567, line: 196, type: !3353, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3362)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{null, !3223, !29, !29, !29, !3355}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !564, line: 189, size: 192, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3361}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3356, file: !564, line: 189, baseType: !41, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3356, file: !564, line: 189, baseType: !41, size: 32, offset: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3356, file: !564, line: 189, baseType: !32, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3356, file: !564, line: 189, baseType: !32, size: 64, offset: 128)
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368, !3369}
!3363 = !DILocalVariable(name: "stream", arg: 1, scope: !3352, file: !567, line: 196, type: !3223)
!3364 = !DILocalVariable(name: "command_name", arg: 2, scope: !3352, file: !567, line: 197, type: !29)
!3365 = !DILocalVariable(name: "package", arg: 3, scope: !3352, file: !567, line: 197, type: !29)
!3366 = !DILocalVariable(name: "version", arg: 4, scope: !3352, file: !567, line: 198, type: !29)
!3367 = !DILocalVariable(name: "authors", arg: 5, scope: !3352, file: !567, line: 198, type: !3355)
!3368 = !DILocalVariable(name: "n_authors", scope: !3352, file: !567, line: 200, type: !33)
!3369 = !DILocalVariable(name: "authtab", scope: !3352, file: !567, line: 201, type: !3370)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 640, elements: !163)
!3371 = !DILocation(line: 196, column: 23, scope: !3352)
!3372 = !DILocation(line: 197, column: 29, scope: !3352)
!3373 = !DILocation(line: 197, column: 55, scope: !3352)
!3374 = !DILocation(line: 198, column: 29, scope: !3352)
!3375 = !DILocation(line: 198, column: 46, scope: !3352)
!3376 = !DILocation(line: 201, column: 3, scope: !3352)
!3377 = !DILocation(line: 201, column: 15, scope: !3352)
!3378 = !DILocation(line: 200, column: 10, scope: !3352)
!3379 = !DILocation(line: 205, column: 35, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3381, file: !567, discriminator: 1)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !567, line: 203, column: 3)
!3382 = distinct !DILexicalBlock(scope: !3352, file: !567, line: 203, column: 3)
!3383 = !DILocation(line: 205, column: 35, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3381, file: !567, discriminator: 2)
!3385 = !DILocation(line: 205, column: 35, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3381, file: !567, discriminator: 3)
!3387 = !DILocation(line: 205, column: 35, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3381, file: !567, discriminator: 4)
!3389 = !DILocation(line: 205, column: 14, scope: !3388)
!3390 = !DILocation(line: 205, column: 33, scope: !3388)
!3391 = !DILocation(line: 205, column: 67, scope: !3388)
!3392 = !DILocation(line: 203, column: 3, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3382, file: !567, discriminator: 1)
!3394 = !DILocation(line: 208, column: 3, scope: !3352)
!3395 = !DILocation(line: 210, column: 1, scope: !3352)
!3396 = distinct !DISubprogram(name: "version_etc", scope: !567, file: !567, line: 227, type: !3397, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !3223, !29, !29, !29, null}
!3399 = !{!3400, !3401, !3402, !3403, !3404}
!3400 = !DILocalVariable(name: "stream", arg: 1, scope: !3396, file: !567, line: 227, type: !3223)
!3401 = !DILocalVariable(name: "command_name", arg: 2, scope: !3396, file: !567, line: 228, type: !29)
!3402 = !DILocalVariable(name: "package", arg: 3, scope: !3396, file: !567, line: 228, type: !29)
!3403 = !DILocalVariable(name: "version", arg: 4, scope: !3396, file: !567, line: 229, type: !29)
!3404 = !DILocalVariable(name: "authors", scope: !3396, file: !567, line: 231, type: !3405)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !745, line: 80, baseType: !3406)
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1194, line: 50, baseType: !3407)
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !564, line: 231, baseType: !3408)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3356, size: 192, elements: !780)
!3409 = !DILocation(line: 227, column: 20, scope: !3396)
!3410 = !DILocation(line: 228, column: 26, scope: !3396)
!3411 = !DILocation(line: 228, column: 52, scope: !3396)
!3412 = !DILocation(line: 229, column: 26, scope: !3396)
!3413 = !DILocation(line: 231, column: 3, scope: !3396)
!3414 = !DILocation(line: 231, column: 11, scope: !3396)
!3415 = !DILocation(line: 233, column: 3, scope: !3396)
!3416 = !DILocation(line: 234, column: 3, scope: !3396)
!3417 = !DILocation(line: 235, column: 3, scope: !3396)
!3418 = !DILocation(line: 236, column: 1, scope: !3396)
!3419 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !567, file: !567, line: 239, type: !1025, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !87)
!3420 = !DILocation(line: 245, column: 3, scope: !3419)
!3421 = !DILocation(line: 245, column: 3, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3419, file: !567, discriminator: 1)
!3423 = !DILocation(line: 251, column: 3, scope: !3419)
!3424 = !DILocation(line: 251, column: 3, scope: !3422)
!3425 = !DILocation(line: 256, column: 3, scope: !3419)
!3426 = !DILocation(line: 256, column: 3, scope: !3422)
!3427 = !DILocation(line: 258, column: 1, scope: !3419)
!3428 = distinct !DISubprogram(name: "xnmalloc", scope: !575, file: !575, line: 105, type: !3429, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!32, !33, !33}
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "n", arg: 1, scope: !3428, file: !575, line: 105, type: !33)
!3433 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !575, line: 105, type: !33)
!3434 = !DILocation(line: 105, column: 18, scope: !3428)
!3435 = !DILocation(line: 105, column: 28, scope: !3428)
!3436 = !DILocation(line: 107, column: 7, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3428, file: !575, line: 107, column: 7)
!3438 = !DILocation(line: 107, column: 7, scope: !3428)
!3439 = !DILocation(line: 108, column: 5, scope: !3437)
!3440 = !DILocation(line: 109, column: 21, scope: !3428)
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3442, file: !3443, line: 39, type: !33)
!3442 = distinct !DISubprogram(name: "xmalloc", scope: !3443, file: !3443, line: 39, type: !3444, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3446)
!3443 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!32, !33}
!3446 = !{!3441, !3447}
!3447 = !DILocalVariable(name: "p", scope: !3442, file: !3443, line: 41, type: !32)
!3448 = !DILocation(line: 39, column: 17, scope: !3442, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 109, column: 10, scope: !3428)
!3450 = !DILocation(line: 41, column: 13, scope: !3442, inlinedAt: !3449)
!3451 = !DILocation(line: 41, column: 9, scope: !3442, inlinedAt: !3449)
!3452 = !DILocation(line: 42, column: 8, scope: !3453, inlinedAt: !3449)
!3453 = distinct !DILexicalBlock(scope: !3442, file: !3443, line: 42, column: 7)
!3454 = !DILocation(line: 42, column: 15, scope: !3455, inlinedAt: !3449)
!3455 = !DILexicalBlockFile(scope: !3453, file: !3443, discriminator: 1)
!3456 = !DILocation(line: 42, column: 10, scope: !3453, inlinedAt: !3449)
!3457 = !DILocation(line: 43, column: 5, scope: !3453, inlinedAt: !3449)
!3458 = !DILocation(line: 109, column: 3, scope: !3428)
!3459 = !DILocation(line: 39, column: 17, scope: !3442)
!3460 = !DILocation(line: 41, column: 13, scope: !3442)
!3461 = !DILocation(line: 41, column: 9, scope: !3442)
!3462 = !DILocation(line: 42, column: 8, scope: !3453)
!3463 = !DILocation(line: 42, column: 15, scope: !3455)
!3464 = !DILocation(line: 42, column: 10, scope: !3453)
!3465 = !DILocation(line: 43, column: 5, scope: !3453)
!3466 = !DILocation(line: 44, column: 3, scope: !3442)
!3467 = distinct !DISubprogram(name: "xnrealloc", scope: !575, file: !575, line: 118, type: !3468, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!32, !32, !33, !33}
!3470 = !{!3471, !3472, !3473}
!3471 = !DILocalVariable(name: "p", arg: 1, scope: !3467, file: !575, line: 118, type: !32)
!3472 = !DILocalVariable(name: "n", arg: 2, scope: !3467, file: !575, line: 118, type: !33)
!3473 = !DILocalVariable(name: "s", arg: 3, scope: !3467, file: !575, line: 118, type: !33)
!3474 = !DILocation(line: 118, column: 18, scope: !3467)
!3475 = !DILocation(line: 118, column: 28, scope: !3467)
!3476 = !DILocation(line: 118, column: 38, scope: !3467)
!3477 = !DILocation(line: 120, column: 7, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3467, file: !575, line: 120, column: 7)
!3479 = !DILocation(line: 120, column: 7, scope: !3467)
!3480 = !DILocation(line: 121, column: 5, scope: !3478)
!3481 = !DILocation(line: 122, column: 25, scope: !3467)
!3482 = !DILocalVariable(name: "p", arg: 1, scope: !3483, file: !3443, line: 51, type: !32)
!3483 = distinct !DISubprogram(name: "xrealloc", scope: !3443, file: !3443, line: 51, type: !3484, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!32, !32, !33}
!3486 = !{!3482, !3487}
!3487 = !DILocalVariable(name: "n", arg: 2, scope: !3483, file: !3443, line: 51, type: !33)
!3488 = !DILocation(line: 51, column: 17, scope: !3483, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 122, column: 10, scope: !3467)
!3490 = !DILocation(line: 51, column: 27, scope: !3483, inlinedAt: !3489)
!3491 = !DILocation(line: 53, column: 8, scope: !3492, inlinedAt: !3489)
!3492 = distinct !DILexicalBlock(scope: !3483, file: !3443, line: 53, column: 7)
!3493 = !DILocation(line: 53, column: 13, scope: !3494, inlinedAt: !3489)
!3494 = !DILexicalBlockFile(scope: !3492, file: !3443, discriminator: 1)
!3495 = !DILocation(line: 53, column: 10, scope: !3492, inlinedAt: !3489)
!3496 = !DILocation(line: 57, column: 7, scope: !3497, inlinedAt: !3489)
!3497 = distinct !DILexicalBlock(scope: !3492, file: !3443, line: 54, column: 5)
!3498 = !DILocation(line: 58, column: 7, scope: !3497, inlinedAt: !3489)
!3499 = !DILocation(line: 61, column: 7, scope: !3483, inlinedAt: !3489)
!3500 = !DILocation(line: 62, column: 8, scope: !3501, inlinedAt: !3489)
!3501 = distinct !DILexicalBlock(scope: !3483, file: !3443, line: 62, column: 7)
!3502 = !DILocation(line: 62, column: 13, scope: !3503, inlinedAt: !3489)
!3503 = !DILexicalBlockFile(scope: !3501, file: !3443, discriminator: 1)
!3504 = !DILocation(line: 62, column: 10, scope: !3501, inlinedAt: !3489)
!3505 = !DILocation(line: 63, column: 5, scope: !3501, inlinedAt: !3489)
!3506 = !DILocation(line: 122, column: 3, scope: !3467)
!3507 = !DILocation(line: 51, column: 17, scope: !3483)
!3508 = !DILocation(line: 51, column: 27, scope: !3483)
!3509 = !DILocation(line: 53, column: 8, scope: !3492)
!3510 = !DILocation(line: 53, column: 13, scope: !3494)
!3511 = !DILocation(line: 53, column: 10, scope: !3492)
!3512 = !DILocation(line: 57, column: 7, scope: !3497)
!3513 = !DILocation(line: 58, column: 7, scope: !3497)
!3514 = !DILocation(line: 61, column: 7, scope: !3483)
!3515 = !DILocation(line: 62, column: 8, scope: !3501)
!3516 = !DILocation(line: 62, column: 13, scope: !3503)
!3517 = !DILocation(line: 62, column: 10, scope: !3501)
!3518 = !DILocation(line: 63, column: 5, scope: !3501)
!3519 = !DILocation(line: 65, column: 1, scope: !3483)
!3520 = !DILocation(line: 180, column: 19, scope: !576)
!3521 = !DILocation(line: 180, column: 30, scope: !576)
!3522 = !DILocation(line: 180, column: 41, scope: !576)
!3523 = !DILocation(line: 182, column: 14, scope: !576)
!3524 = !DILocation(line: 182, column: 10, scope: !576)
!3525 = !DILocation(line: 184, column: 9, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !576, file: !575, line: 184, column: 7)
!3527 = !DILocation(line: 184, column: 7, scope: !576)
!3528 = !DILocation(line: 186, column: 13, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !575, line: 186, column: 11)
!3530 = distinct !DILexicalBlock(scope: !3526, file: !575, line: 185, column: 5)
!3531 = !DILocation(line: 186, column: 11, scope: !3530)
!3532 = !DILocation(line: 194, column: 30, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3529, file: !575, line: 187, column: 9)
!3534 = !DILocation(line: 195, column: 16, scope: !3533)
!3535 = !DILocation(line: 195, column: 13, scope: !3533)
!3536 = !DILocation(line: 196, column: 9, scope: !3533)
!3537 = !DILocation(line: 204, column: 69, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !575, line: 204, column: 11)
!3539 = distinct !DILexicalBlock(scope: !3526, file: !575, line: 199, column: 5)
!3540 = !DILocation(line: 205, column: 11, scope: !3538)
!3541 = !DILocation(line: 204, column: 11, scope: !3539)
!3542 = !DILocation(line: 206, column: 9, scope: !3538)
!3543 = !DILocation(line: 210, column: 7, scope: !576)
!3544 = !DILocation(line: 211, column: 25, scope: !576)
!3545 = !DILocation(line: 51, column: 17, scope: !3483, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 211, column: 10, scope: !576)
!3547 = !DILocation(line: 51, column: 27, scope: !3483, inlinedAt: !3546)
!3548 = !DILocation(line: 53, column: 10, scope: !3492, inlinedAt: !3546)
!3549 = !DILocation(line: 207, column: 14, scope: !3539)
!3550 = !DILocation(line: 207, column: 18, scope: !3539)
!3551 = !DILocation(line: 207, column: 9, scope: !3539)
!3552 = !DILocation(line: 53, column: 8, scope: !3492, inlinedAt: !3546)
!3553 = !DILocation(line: 57, column: 7, scope: !3497, inlinedAt: !3546)
!3554 = !DILocation(line: 58, column: 7, scope: !3497, inlinedAt: !3546)
!3555 = !DILocation(line: 61, column: 7, scope: !3483, inlinedAt: !3546)
!3556 = !DILocation(line: 62, column: 8, scope: !3501, inlinedAt: !3546)
!3557 = !DILocation(line: 62, column: 13, scope: !3503, inlinedAt: !3546)
!3558 = !DILocation(line: 62, column: 10, scope: !3501, inlinedAt: !3546)
!3559 = !DILocation(line: 63, column: 5, scope: !3501, inlinedAt: !3546)
!3560 = !DILocation(line: 211, column: 3, scope: !576)
!3561 = distinct !DISubprogram(name: "xcharalloc", scope: !575, file: !575, line: 220, type: !2494, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3562)
!3562 = !{!3563}
!3563 = !DILocalVariable(name: "n", arg: 1, scope: !3561, file: !575, line: 220, type: !33)
!3564 = !DILocation(line: 220, column: 20, scope: !3561)
!3565 = !DILocation(line: 39, column: 17, scope: !3442, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 222, column: 10, scope: !3561)
!3567 = !DILocation(line: 41, column: 13, scope: !3442, inlinedAt: !3566)
!3568 = !DILocation(line: 41, column: 9, scope: !3442, inlinedAt: !3566)
!3569 = !DILocation(line: 42, column: 8, scope: !3453, inlinedAt: !3566)
!3570 = !DILocation(line: 42, column: 15, scope: !3455, inlinedAt: !3566)
!3571 = !DILocation(line: 42, column: 10, scope: !3453, inlinedAt: !3566)
!3572 = !DILocation(line: 43, column: 5, scope: !3453, inlinedAt: !3566)
!3573 = !DILocation(line: 222, column: 3, scope: !3561)
!3574 = distinct !DISubprogram(name: "x2realloc", scope: !3443, file: !3443, line: 74, type: !3575, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!32, !32, !579}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "p", arg: 1, scope: !3574, file: !3443, line: 74, type: !32)
!3579 = !DILocalVariable(name: "pn", arg: 2, scope: !3574, file: !3443, line: 74, type: !579)
!3580 = !DILocation(line: 74, column: 18, scope: !3574)
!3581 = !DILocation(line: 74, column: 29, scope: !3574)
!3582 = !DILocation(line: 180, column: 19, scope: !576, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 76, column: 10, scope: !3574)
!3584 = !DILocation(line: 180, column: 30, scope: !576, inlinedAt: !3583)
!3585 = !DILocation(line: 180, column: 41, scope: !576, inlinedAt: !3583)
!3586 = !DILocation(line: 182, column: 14, scope: !576, inlinedAt: !3583)
!3587 = !DILocation(line: 182, column: 10, scope: !576, inlinedAt: !3583)
!3588 = !DILocation(line: 184, column: 9, scope: !3526, inlinedAt: !3583)
!3589 = !DILocation(line: 184, column: 7, scope: !576, inlinedAt: !3583)
!3590 = !DILocation(line: 186, column: 13, scope: !3529, inlinedAt: !3583)
!3591 = !DILocation(line: 186, column: 11, scope: !3530, inlinedAt: !3583)
!3592 = !DILocation(line: 210, column: 7, scope: !576, inlinedAt: !3583)
!3593 = !DILocation(line: 51, column: 17, scope: !3483, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 211, column: 10, scope: !576, inlinedAt: !3583)
!3595 = !DILocation(line: 51, column: 27, scope: !3483, inlinedAt: !3594)
!3596 = !DILocation(line: 53, column: 10, scope: !3492, inlinedAt: !3594)
!3597 = !DILocation(line: 205, column: 11, scope: !3538, inlinedAt: !3583)
!3598 = !DILocation(line: 204, column: 11, scope: !3539, inlinedAt: !3583)
!3599 = !DILocation(line: 206, column: 9, scope: !3538, inlinedAt: !3583)
!3600 = !DILocation(line: 207, column: 14, scope: !3539, inlinedAt: !3583)
!3601 = !DILocation(line: 207, column: 18, scope: !3539, inlinedAt: !3583)
!3602 = !DILocation(line: 207, column: 9, scope: !3539, inlinedAt: !3583)
!3603 = !DILocation(line: 53, column: 8, scope: !3492, inlinedAt: !3594)
!3604 = !DILocation(line: 57, column: 7, scope: !3497, inlinedAt: !3594)
!3605 = !DILocation(line: 58, column: 7, scope: !3497, inlinedAt: !3594)
!3606 = !DILocation(line: 61, column: 7, scope: !3483, inlinedAt: !3594)
!3607 = !DILocation(line: 62, column: 8, scope: !3501, inlinedAt: !3594)
!3608 = !DILocation(line: 62, column: 13, scope: !3503, inlinedAt: !3594)
!3609 = !DILocation(line: 62, column: 10, scope: !3501, inlinedAt: !3594)
!3610 = !DILocation(line: 63, column: 5, scope: !3501, inlinedAt: !3594)
!3611 = !DILocation(line: 76, column: 3, scope: !3574)
!3612 = distinct !DISubprogram(name: "xzalloc", scope: !3443, file: !3443, line: 84, type: !3444, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3613)
!3613 = !{!3614}
!3614 = !DILocalVariable(name: "s", arg: 1, scope: !3612, file: !3443, line: 84, type: !33)
!3615 = !DILocation(line: 84, column: 17, scope: !3612)
!3616 = !DILocation(line: 39, column: 17, scope: !3442, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 86, column: 18, scope: !3612)
!3618 = !DILocation(line: 41, column: 13, scope: !3442, inlinedAt: !3617)
!3619 = !DILocation(line: 41, column: 9, scope: !3442, inlinedAt: !3617)
!3620 = !DILocation(line: 42, column: 8, scope: !3453, inlinedAt: !3617)
!3621 = !DILocation(line: 42, column: 15, scope: !3455, inlinedAt: !3617)
!3622 = !DILocation(line: 42, column: 10, scope: !3453, inlinedAt: !3617)
!3623 = !DILocation(line: 43, column: 5, scope: !3453, inlinedAt: !3617)
!3624 = !DILocation(line: 86, column: 10, scope: !3612)
!3625 = !DILocation(line: 86, column: 3, scope: !3612)
!3626 = distinct !DISubprogram(name: "xcalloc", scope: !3443, file: !3443, line: 93, type: !3429, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3627)
!3627 = !{!3628, !3629, !3630}
!3628 = !DILocalVariable(name: "n", arg: 1, scope: !3626, file: !3443, line: 93, type: !33)
!3629 = !DILocalVariable(name: "s", arg: 2, scope: !3626, file: !3443, line: 93, type: !33)
!3630 = !DILocalVariable(name: "p", scope: !3626, file: !3443, line: 95, type: !32)
!3631 = !DILocation(line: 93, column: 17, scope: !3626)
!3632 = !DILocation(line: 93, column: 27, scope: !3626)
!3633 = !DILocation(line: 100, column: 7, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3626, file: !3443, line: 100, column: 7)
!3635 = !DILocation(line: 101, column: 7, scope: !3634)
!3636 = !DILocation(line: 101, column: 18, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !3634, file: !3443, discriminator: 1)
!3638 = !DILocation(line: 95, column: 9, scope: !3626)
!3639 = !DILocation(line: 101, column: 16, scope: !3637)
!3640 = !DILocation(line: 100, column: 7, scope: !3641)
!3641 = !DILexicalBlockFile(scope: !3626, file: !3443, discriminator: 1)
!3642 = !DILocation(line: 102, column: 5, scope: !3634)
!3643 = !DILocation(line: 103, column: 3, scope: !3626)
!3644 = distinct !DISubprogram(name: "xmemdup", scope: !3443, file: !3443, line: 111, type: !3645, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!32, !36, !33}
!3647 = !{!3648, !3649}
!3648 = !DILocalVariable(name: "p", arg: 1, scope: !3644, file: !3443, line: 111, type: !36)
!3649 = !DILocalVariable(name: "s", arg: 2, scope: !3644, file: !3443, line: 111, type: !33)
!3650 = !DILocation(line: 111, column: 22, scope: !3644)
!3651 = !DILocation(line: 111, column: 32, scope: !3644)
!3652 = !DILocation(line: 39, column: 17, scope: !3442, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 113, column: 18, scope: !3644)
!3654 = !DILocation(line: 41, column: 13, scope: !3442, inlinedAt: !3653)
!3655 = !DILocation(line: 41, column: 9, scope: !3442, inlinedAt: !3653)
!3656 = !DILocation(line: 42, column: 8, scope: !3453, inlinedAt: !3653)
!3657 = !DILocation(line: 42, column: 15, scope: !3455, inlinedAt: !3653)
!3658 = !DILocation(line: 42, column: 10, scope: !3453, inlinedAt: !3653)
!3659 = !DILocation(line: 43, column: 5, scope: !3453, inlinedAt: !3653)
!3660 = !DILocation(line: 113, column: 10, scope: !3644)
!3661 = !DILocation(line: 113, column: 3, scope: !3644)
!3662 = distinct !DISubprogram(name: "xstrdup", scope: !3443, file: !3443, line: 119, type: !2699, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3663)
!3663 = !{!3664}
!3664 = !DILocalVariable(name: "string", arg: 1, scope: !3662, file: !3443, line: 119, type: !29)
!3665 = !DILocation(line: 119, column: 22, scope: !3662)
!3666 = !DILocation(line: 121, column: 27, scope: !3662)
!3667 = !DILocation(line: 121, column: 43, scope: !3662)
!3668 = !DILocation(line: 111, column: 22, scope: !3644, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 121, column: 10, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3662, file: !3443, discriminator: 1)
!3671 = !DILocation(line: 111, column: 32, scope: !3644, inlinedAt: !3669)
!3672 = !DILocation(line: 39, column: 17, scope: !3442, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 113, column: 18, scope: !3644, inlinedAt: !3669)
!3674 = !DILocation(line: 41, column: 13, scope: !3442, inlinedAt: !3673)
!3675 = !DILocation(line: 41, column: 9, scope: !3442, inlinedAt: !3673)
!3676 = !DILocation(line: 42, column: 8, scope: !3453, inlinedAt: !3673)
!3677 = !DILocation(line: 42, column: 15, scope: !3455, inlinedAt: !3673)
!3678 = !DILocation(line: 42, column: 10, scope: !3453, inlinedAt: !3673)
!3679 = !DILocation(line: 43, column: 5, scope: !3453, inlinedAt: !3673)
!3680 = !DILocation(line: 113, column: 10, scope: !3644, inlinedAt: !3669)
!3681 = !DILocation(line: 121, column: 3, scope: !3662)
!3682 = distinct !DISubprogram(name: "xalloc_die", scope: !3683, file: !3683, line: 32, type: !1025, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !588, variables: !87)
!3683 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3684 = !DILocation(line: 34, column: 10, scope: !3682)
!3685 = !DILocation(line: 34, column: 33, scope: !3682)
!3686 = !DILocation(line: 34, column: 3, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3682, file: !3683, discriminator: 1)
!3688 = !DILocation(line: 40, column: 3, scope: !3682)
!3689 = distinct !DISubprogram(name: "rpl_calloc", scope: !3690, file: !3690, line: 42, type: !3429, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !3691)
!3690 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3691 = !{!3692, !3693, !3694, !3695}
!3692 = !DILocalVariable(name: "n", arg: 1, scope: !3689, file: !3690, line: 42, type: !33)
!3693 = !DILocalVariable(name: "s", arg: 2, scope: !3689, file: !3690, line: 42, type: !33)
!3694 = !DILocalVariable(name: "result", scope: !3689, file: !3690, line: 44, type: !32)
!3695 = !DILocalVariable(name: "bytes", scope: !3696, file: !3690, line: 56, type: !33)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !3690, line: 53, column: 5)
!3697 = distinct !DILexicalBlock(scope: !3689, file: !3690, line: 47, column: 7)
!3698 = !DILocation(line: 42, column: 20, scope: !3689)
!3699 = !DILocation(line: 42, column: 30, scope: !3689)
!3700 = !DILocation(line: 47, column: 9, scope: !3697)
!3701 = !DILocation(line: 47, column: 19, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !3697, file: !3690, discriminator: 1)
!3703 = !DILocation(line: 47, column: 14, scope: !3697)
!3704 = !DILocation(line: 56, column: 24, scope: !3696)
!3705 = !DILocation(line: 56, column: 14, scope: !3696)
!3706 = !DILocation(line: 57, column: 17, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3696, file: !3690, line: 57, column: 11)
!3708 = !DILocation(line: 57, column: 21, scope: !3707)
!3709 = !DILocation(line: 57, column: 11, scope: !3696)
!3710 = !DILocation(line: 59, column: 11, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3707, file: !3690, line: 58, column: 9)
!3712 = !DILocation(line: 59, column: 17, scope: !3711)
!3713 = !DILocation(line: 65, column: 12, scope: !3689)
!3714 = !DILocation(line: 44, column: 9, scope: !3689)
!3715 = !DILocation(line: 72, column: 3, scope: !3689)
!3716 = !DILocation(line: 73, column: 1, scope: !3689)
!3717 = distinct !DISubprogram(name: "rpl_fclose", scope: !3718, file: !3718, line: 56, type: !3719, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !3761)
!3718 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!73, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !745, line: 49, baseType: !3723)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !747, line: 241, size: 1728, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3723, file: !747, line: 242, baseType: !73, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3723, file: !747, line: 247, baseType: !127, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3723, file: !747, line: 248, baseType: !127, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3723, file: !747, line: 249, baseType: !127, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3723, file: !747, line: 250, baseType: !127, size: 64, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3723, file: !747, line: 251, baseType: !127, size: 64, offset: 320)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3723, file: !747, line: 252, baseType: !127, size: 64, offset: 384)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3723, file: !747, line: 253, baseType: !127, size: 64, offset: 448)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3723, file: !747, line: 254, baseType: !127, size: 64, offset: 512)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3723, file: !747, line: 256, baseType: !127, size: 64, offset: 576)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3723, file: !747, line: 257, baseType: !127, size: 64, offset: 640)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3723, file: !747, line: 258, baseType: !127, size: 64, offset: 704)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3723, file: !747, line: 260, baseType: !3738, size: 64, offset: 768)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !747, line: 156, size: 192, elements: !3740)
!3740 = !{!3741, !3742, !3744}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3739, file: !747, line: 157, baseType: !3738, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3739, file: !747, line: 158, baseType: !3743, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3739, file: !747, line: 162, baseType: !73, size: 32, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3723, file: !747, line: 262, baseType: !3743, size: 64, offset: 832)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3723, file: !747, line: 264, baseType: !73, size: 32, offset: 896)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3723, file: !747, line: 268, baseType: !73, size: 32, offset: 928)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3723, file: !747, line: 270, baseType: !773, size: 64, offset: 960)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3723, file: !747, line: 274, baseType: !156, size: 16, offset: 1024)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3723, file: !747, line: 275, baseType: !777, size: 8, offset: 1040)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3723, file: !747, line: 276, baseType: !779, size: 8, offset: 1048)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3723, file: !747, line: 280, baseType: !783, size: 64, offset: 1088)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3723, file: !747, line: 289, baseType: !786, size: 64, offset: 1152)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3723, file: !747, line: 297, baseType: !32, size: 64, offset: 1216)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3723, file: !747, line: 298, baseType: !32, size: 64, offset: 1280)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3723, file: !747, line: 299, baseType: !32, size: 64, offset: 1344)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3723, file: !747, line: 300, baseType: !32, size: 64, offset: 1408)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3723, file: !747, line: 302, baseType: !33, size: 64, offset: 1472)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3723, file: !747, line: 303, baseType: !73, size: 32, offset: 1536)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3723, file: !747, line: 305, baseType: !794, size: 160, offset: 1568)
!3761 = !{!3762, !3763, !3764, !3765}
!3762 = !DILocalVariable(name: "fp", arg: 1, scope: !3717, file: !3718, line: 56, type: !3721)
!3763 = !DILocalVariable(name: "saved_errno", scope: !3717, file: !3718, line: 58, type: !73)
!3764 = !DILocalVariable(name: "fd", scope: !3717, file: !3718, line: 59, type: !73)
!3765 = !DILocalVariable(name: "result", scope: !3717, file: !3718, line: 60, type: !73)
!3766 = !DILocation(line: 56, column: 19, scope: !3717)
!3767 = !DILocation(line: 58, column: 7, scope: !3717)
!3768 = !DILocation(line: 60, column: 7, scope: !3717)
!3769 = !DILocation(line: 63, column: 8, scope: !3717)
!3770 = !DILocation(line: 59, column: 7, scope: !3717)
!3771 = !DILocation(line: 64, column: 10, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3717, file: !3718, line: 64, column: 7)
!3773 = !DILocation(line: 64, column: 7, scope: !3717)
!3774 = !DILocation(line: 65, column: 12, scope: !3772)
!3775 = !DILocation(line: 65, column: 5, scope: !3772)
!3776 = !DILocation(line: 70, column: 9, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3717, file: !3718, line: 70, column: 7)
!3778 = !DILocation(line: 70, column: 23, scope: !3777)
!3779 = !DILocation(line: 70, column: 33, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !3777, file: !3718, discriminator: 1)
!3781 = !DILocation(line: 70, column: 26, scope: !3782)
!3782 = !DILexicalBlockFile(scope: !3777, file: !3718, discriminator: 3)
!3783 = !DILocation(line: 70, column: 59, scope: !3780)
!3784 = !DILocation(line: 71, column: 7, scope: !3777)
!3785 = !DILocation(line: 71, column: 10, scope: !3780)
!3786 = !DILocation(line: 70, column: 7, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !3717, file: !3718, discriminator: 2)
!3788 = !DILocation(line: 98, column: 12, scope: !3717)
!3789 = !DILocation(line: 103, column: 7, scope: !3717)
!3790 = !DILocation(line: 72, column: 19, scope: !3777)
!3791 = !DILocation(line: 103, column: 19, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3717, file: !3718, line: 103, column: 7)
!3793 = !DILocation(line: 105, column: 13, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3792, file: !3718, line: 104, column: 5)
!3795 = !DILocation(line: 107, column: 5, scope: !3794)
!3796 = !DILocation(line: 110, column: 1, scope: !3717)
!3797 = distinct !DISubprogram(name: "rpl_fflush", scope: !3798, file: !3798, line: 127, type: !3799, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3841)
!3798 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!73, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !745, line: 49, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !747, line: 241, size: 1728, elements: !3804)
!3804 = !{!3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3803, file: !747, line: 242, baseType: !73, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3803, file: !747, line: 247, baseType: !127, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3803, file: !747, line: 248, baseType: !127, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3803, file: !747, line: 249, baseType: !127, size: 64, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3803, file: !747, line: 250, baseType: !127, size: 64, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3803, file: !747, line: 251, baseType: !127, size: 64, offset: 320)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3803, file: !747, line: 252, baseType: !127, size: 64, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3803, file: !747, line: 253, baseType: !127, size: 64, offset: 448)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3803, file: !747, line: 254, baseType: !127, size: 64, offset: 512)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3803, file: !747, line: 256, baseType: !127, size: 64, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3803, file: !747, line: 257, baseType: !127, size: 64, offset: 640)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3803, file: !747, line: 258, baseType: !127, size: 64, offset: 704)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3803, file: !747, line: 260, baseType: !3818, size: 64, offset: 768)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !747, line: 156, size: 192, elements: !3820)
!3820 = !{!3821, !3822, !3824}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3819, file: !747, line: 157, baseType: !3818, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3819, file: !747, line: 158, baseType: !3823, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3819, file: !747, line: 162, baseType: !73, size: 32, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3803, file: !747, line: 262, baseType: !3823, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3803, file: !747, line: 264, baseType: !73, size: 32, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3803, file: !747, line: 268, baseType: !73, size: 32, offset: 928)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3803, file: !747, line: 270, baseType: !773, size: 64, offset: 960)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3803, file: !747, line: 274, baseType: !156, size: 16, offset: 1024)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3803, file: !747, line: 275, baseType: !777, size: 8, offset: 1040)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3803, file: !747, line: 276, baseType: !779, size: 8, offset: 1048)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3803, file: !747, line: 280, baseType: !783, size: 64, offset: 1088)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3803, file: !747, line: 289, baseType: !786, size: 64, offset: 1152)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3803, file: !747, line: 297, baseType: !32, size: 64, offset: 1216)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3803, file: !747, line: 298, baseType: !32, size: 64, offset: 1280)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3803, file: !747, line: 299, baseType: !32, size: 64, offset: 1344)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3803, file: !747, line: 300, baseType: !32, size: 64, offset: 1408)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3803, file: !747, line: 302, baseType: !33, size: 64, offset: 1472)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3803, file: !747, line: 303, baseType: !73, size: 32, offset: 1536)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3803, file: !747, line: 305, baseType: !794, size: 160, offset: 1568)
!3841 = !{!3842}
!3842 = !DILocalVariable(name: "stream", arg: 1, scope: !3797, file: !3798, line: 127, type: !3801)
!3843 = !DILocation(line: 127, column: 19, scope: !3797)
!3844 = !DILocation(line: 148, column: 14, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3797, file: !3798, line: 148, column: 7)
!3846 = !DILocation(line: 148, column: 22, scope: !3845)
!3847 = !DILocation(line: 148, column: 27, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3845, file: !3798, discriminator: 1)
!3849 = !DILocation(line: 148, column: 7, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !3797, file: !3798, discriminator: 1)
!3851 = !DILocation(line: 149, column: 12, scope: !3845)
!3852 = !DILocation(line: 149, column: 5, scope: !3845)
!3853 = !DILocalVariable(name: "fp", arg: 1, scope: !3854, file: !3798, line: 40, type: !3801)
!3854 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3798, file: !3798, line: 40, type: !3855, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3801}
!3857 = !{!3853}
!3858 = !DILocation(line: 40, column: 48, scope: !3854, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 153, column: 3, scope: !3797)
!3860 = !DILocation(line: 42, column: 11, scope: !3861, inlinedAt: !3859)
!3861 = distinct !DILexicalBlock(scope: !3854, file: !3798, line: 42, column: 7)
!3862 = !DILocation(line: 42, column: 18, scope: !3861, inlinedAt: !3859)
!3863 = !DILocation(line: 42, column: 7, scope: !3854, inlinedAt: !3859)
!3864 = !DILocation(line: 44, column: 5, scope: !3861, inlinedAt: !3859)
!3865 = !DILocation(line: 155, column: 10, scope: !3797)
!3866 = !DILocation(line: 155, column: 3, scope: !3797)
!3867 = !DILocation(line: 229, column: 1, scope: !3797)
!3868 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3869, file: !3869, line: 28, type: !3870, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3912)
!3869 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!73, !3872, !1070, !73}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !745, line: 49, baseType: !3874)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !747, line: 241, size: 1728, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3874, file: !747, line: 242, baseType: !73, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3874, file: !747, line: 247, baseType: !127, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3874, file: !747, line: 248, baseType: !127, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3874, file: !747, line: 249, baseType: !127, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3874, file: !747, line: 250, baseType: !127, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3874, file: !747, line: 251, baseType: !127, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3874, file: !747, line: 252, baseType: !127, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3874, file: !747, line: 253, baseType: !127, size: 64, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3874, file: !747, line: 254, baseType: !127, size: 64, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3874, file: !747, line: 256, baseType: !127, size: 64, offset: 576)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3874, file: !747, line: 257, baseType: !127, size: 64, offset: 640)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3874, file: !747, line: 258, baseType: !127, size: 64, offset: 704)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3874, file: !747, line: 260, baseType: !3889, size: 64, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !747, line: 156, size: 192, elements: !3891)
!3891 = !{!3892, !3893, !3895}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3890, file: !747, line: 157, baseType: !3889, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3890, file: !747, line: 158, baseType: !3894, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3890, file: !747, line: 162, baseType: !73, size: 32, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3874, file: !747, line: 262, baseType: !3894, size: 64, offset: 832)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3874, file: !747, line: 264, baseType: !73, size: 32, offset: 896)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3874, file: !747, line: 268, baseType: !73, size: 32, offset: 928)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3874, file: !747, line: 270, baseType: !773, size: 64, offset: 960)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3874, file: !747, line: 274, baseType: !156, size: 16, offset: 1024)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3874, file: !747, line: 275, baseType: !777, size: 8, offset: 1040)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3874, file: !747, line: 276, baseType: !779, size: 8, offset: 1048)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3874, file: !747, line: 280, baseType: !783, size: 64, offset: 1088)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3874, file: !747, line: 289, baseType: !786, size: 64, offset: 1152)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3874, file: !747, line: 297, baseType: !32, size: 64, offset: 1216)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3874, file: !747, line: 298, baseType: !32, size: 64, offset: 1280)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3874, file: !747, line: 299, baseType: !32, size: 64, offset: 1344)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3874, file: !747, line: 300, baseType: !32, size: 64, offset: 1408)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3874, file: !747, line: 302, baseType: !33, size: 64, offset: 1472)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3874, file: !747, line: 303, baseType: !73, size: 32, offset: 1536)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3874, file: !747, line: 305, baseType: !794, size: 160, offset: 1568)
!3912 = !{!3913, !3914, !3915, !3916}
!3913 = !DILocalVariable(name: "fp", arg: 1, scope: !3868, file: !3869, line: 28, type: !3872)
!3914 = !DILocalVariable(name: "offset", arg: 2, scope: !3868, file: !3869, line: 28, type: !1070)
!3915 = !DILocalVariable(name: "whence", arg: 3, scope: !3868, file: !3869, line: 28, type: !73)
!3916 = !DILocalVariable(name: "pos", scope: !3917, file: !3869, line: 116, type: !1070)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !3869, line: 112, column: 5)
!3918 = distinct !DILexicalBlock(scope: !3868, file: !3869, line: 51, column: 7)
!3919 = !DILocation(line: 28, column: 15, scope: !3868)
!3920 = !DILocation(line: 28, column: 25, scope: !3868)
!3921 = !DILocation(line: 28, column: 37, scope: !3868)
!3922 = !DILocation(line: 51, column: 11, scope: !3918)
!3923 = !{!877, !625, i64 16}
!3924 = !DILocation(line: 51, column: 31, scope: !3918)
!3925 = !{!877, !625, i64 8}
!3926 = !DILocation(line: 51, column: 24, scope: !3918)
!3927 = !DILocation(line: 52, column: 7, scope: !3918)
!3928 = !DILocation(line: 52, column: 14, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3918, file: !3869, discriminator: 1)
!3930 = !{!877, !625, i64 40}
!3931 = !DILocation(line: 52, column: 35, scope: !3929)
!3932 = !{!877, !625, i64 32}
!3933 = !DILocation(line: 52, column: 28, scope: !3929)
!3934 = !DILocation(line: 53, column: 7, scope: !3918)
!3935 = !DILocation(line: 53, column: 14, scope: !3929)
!3936 = !{!877, !625, i64 72}
!3937 = !DILocation(line: 53, column: 28, scope: !3929)
!3938 = !DILocation(line: 51, column: 7, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3868, file: !3869, discriminator: 1)
!3940 = !DILocation(line: 116, column: 26, scope: !3917)
!3941 = !DILocation(line: 116, column: 19, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3917, file: !3869, discriminator: 1)
!3943 = !DILocation(line: 116, column: 13, scope: !3917)
!3944 = !DILocation(line: 117, column: 15, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3917, file: !3869, line: 117, column: 11)
!3946 = !DILocation(line: 117, column: 11, scope: !3917)
!3947 = !DILocation(line: 127, column: 11, scope: !3917)
!3948 = !DILocation(line: 127, column: 18, scope: !3917)
!3949 = !DILocation(line: 128, column: 11, scope: !3917)
!3950 = !DILocation(line: 128, column: 19, scope: !3917)
!3951 = !{!877, !878, i64 144}
!3952 = !DILocation(line: 159, column: 7, scope: !3917)
!3953 = !DILocation(line: 161, column: 10, scope: !3868)
!3954 = !DILocation(line: 161, column: 3, scope: !3868)
!3955 = !DILocation(line: 162, column: 1, scope: !3868)
!3956 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3957, file: !3957, line: 334, type: !3958, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !3972)
!3957 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!33, !3960, !29, !33, !3961}
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1465, line: 107, baseType: !3963)
!3963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1465, line: 95, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1465, line: 83, size: 64, elements: !3965)
!3965 = !{!3966, !3967}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3964, file: !1465, line: 85, baseType: !73, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3964, file: !1465, line: 94, baseType: !3968, size: 32, offset: 32)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3964, file: !1465, line: 86, size: 32, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3968, file: !1465, line: 89, baseType: !41, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3968, file: !1465, line: 93, baseType: !1475, size: 32)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978, !3979}
!3973 = !DILocalVariable(name: "pwc", arg: 1, scope: !3956, file: !3957, line: 334, type: !3960)
!3974 = !DILocalVariable(name: "s", arg: 2, scope: !3956, file: !3957, line: 334, type: !29)
!3975 = !DILocalVariable(name: "n", arg: 3, scope: !3956, file: !3957, line: 334, type: !33)
!3976 = !DILocalVariable(name: "ps", arg: 4, scope: !3956, file: !3957, line: 334, type: !3961)
!3977 = !DILocalVariable(name: "ret", scope: !3956, file: !3957, line: 336, type: !33)
!3978 = !DILocalVariable(name: "wc", scope: !3956, file: !3957, line: 337, type: !1480)
!3979 = !DILocalVariable(name: "uc", scope: !3980, file: !3957, line: 398, type: !40)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !3957, line: 397, column: 5)
!3981 = distinct !DILexicalBlock(scope: !3956, file: !3957, line: 396, column: 7)
!3982 = !DILocation(line: 334, column: 23, scope: !3956)
!3983 = !DILocation(line: 334, column: 40, scope: !3956)
!3984 = !DILocation(line: 334, column: 50, scope: !3956)
!3985 = !DILocation(line: 334, column: 64, scope: !3956)
!3986 = !DILocation(line: 337, column: 3, scope: !3956)
!3987 = !DILocation(line: 353, column: 9, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3956, file: !3957, line: 353, column: 7)
!3989 = !DILocation(line: 353, column: 7, scope: !3956)
!3990 = !DILocation(line: 388, column: 9, scope: !3956)
!3991 = !DILocation(line: 336, column: 10, scope: !3956)
!3992 = !DILocation(line: 396, column: 19, scope: !3981)
!3993 = !DILocation(line: 396, column: 31, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3981, file: !3957, discriminator: 1)
!3995 = !DILocation(line: 396, column: 26, scope: !3981)
!3996 = !DILocation(line: 396, column: 41, scope: !3997)
!3997 = !DILexicalBlockFile(scope: !3981, file: !3957, discriminator: 2)
!3998 = !DILocation(line: 396, column: 7, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !3956, file: !3957, discriminator: 2)
!4000 = !DILocation(line: 398, column: 26, scope: !3980)
!4001 = !DILocation(line: 398, column: 21, scope: !3980)
!4002 = !DILocation(line: 399, column: 14, scope: !3980)
!4003 = !DILocation(line: 399, column: 12, scope: !3980)
!4004 = !DILocation(line: 405, column: 1, scope: !3956)
!4005 = distinct !DISubprogram(name: "close_stream", scope: !4006, file: !4006, line: 56, type: !4007, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4049)
!4006 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!73, !4009}
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !745, line: 49, baseType: !4011)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !747, line: 241, size: 1728, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4011, file: !747, line: 242, baseType: !73, size: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4011, file: !747, line: 247, baseType: !127, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4011, file: !747, line: 248, baseType: !127, size: 64, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4011, file: !747, line: 249, baseType: !127, size: 64, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4011, file: !747, line: 250, baseType: !127, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4011, file: !747, line: 251, baseType: !127, size: 64, offset: 320)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4011, file: !747, line: 252, baseType: !127, size: 64, offset: 384)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4011, file: !747, line: 253, baseType: !127, size: 64, offset: 448)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4011, file: !747, line: 254, baseType: !127, size: 64, offset: 512)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4011, file: !747, line: 256, baseType: !127, size: 64, offset: 576)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4011, file: !747, line: 257, baseType: !127, size: 64, offset: 640)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4011, file: !747, line: 258, baseType: !127, size: 64, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4011, file: !747, line: 260, baseType: !4026, size: 64, offset: 768)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !747, line: 156, size: 192, elements: !4028)
!4028 = !{!4029, !4030, !4032}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4027, file: !747, line: 157, baseType: !4026, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4027, file: !747, line: 158, baseType: !4031, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4027, file: !747, line: 162, baseType: !73, size: 32, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4011, file: !747, line: 262, baseType: !4031, size: 64, offset: 832)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4011, file: !747, line: 264, baseType: !73, size: 32, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4011, file: !747, line: 268, baseType: !73, size: 32, offset: 928)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4011, file: !747, line: 270, baseType: !773, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4011, file: !747, line: 274, baseType: !156, size: 16, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4011, file: !747, line: 275, baseType: !777, size: 8, offset: 1040)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4011, file: !747, line: 276, baseType: !779, size: 8, offset: 1048)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4011, file: !747, line: 280, baseType: !783, size: 64, offset: 1088)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4011, file: !747, line: 289, baseType: !786, size: 64, offset: 1152)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4011, file: !747, line: 297, baseType: !32, size: 64, offset: 1216)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4011, file: !747, line: 298, baseType: !32, size: 64, offset: 1280)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4011, file: !747, line: 299, baseType: !32, size: 64, offset: 1344)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4011, file: !747, line: 300, baseType: !32, size: 64, offset: 1408)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4011, file: !747, line: 302, baseType: !33, size: 64, offset: 1472)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4011, file: !747, line: 303, baseType: !73, size: 32, offset: 1536)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4011, file: !747, line: 305, baseType: !794, size: 160, offset: 1568)
!4049 = !{!4050, !4051, !4053, !4054}
!4050 = !DILocalVariable(name: "stream", arg: 1, scope: !4005, file: !4006, line: 56, type: !4009)
!4051 = !DILocalVariable(name: "some_pending", scope: !4005, file: !4006, line: 58, type: !4052)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!4053 = !DILocalVariable(name: "prev_fail", scope: !4005, file: !4006, line: 59, type: !4052)
!4054 = !DILocalVariable(name: "fclose_fail", scope: !4005, file: !4006, line: 60, type: !4052)
!4055 = !DILocation(line: 56, column: 21, scope: !4005)
!4056 = !DILocation(line: 58, column: 30, scope: !4005)
!4057 = !DILocalVariable(name: "__stream", arg: 1, scope: !4058, file: !906, line: 132, type: !4009)
!4058 = distinct !DISubprogram(name: "ferror_unlocked", scope: !906, file: !906, line: 132, type: !4007, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4059)
!4059 = !{!4057}
!4060 = !DILocation(line: 132, column: 1, scope: !4058, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 59, column: 27, scope: !4005)
!4062 = !DILocation(line: 134, column: 10, scope: !4058, inlinedAt: !4061)
!4063 = !DILocation(line: 59, column: 43, scope: !4005)
!4064 = !DILocation(line: 60, column: 29, scope: !4005)
!4065 = !DILocation(line: 60, column: 45, scope: !4005)
!4066 = !DILocation(line: 70, column: 17, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4005, file: !4006, line: 70, column: 7)
!4068 = !DILocation(line: 70, column: 33, scope: !4069)
!4069 = !DILexicalBlockFile(scope: !4067, file: !4006, discriminator: 1)
!4070 = !DILocation(line: 70, column: 53, scope: !4071)
!4071 = !DILexicalBlockFile(scope: !4067, file: !4006, discriminator: 3)
!4072 = !DILocation(line: 70, column: 7, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !4005, file: !4006, discriminator: 3)
!4074 = !DILocation(line: 72, column: 11, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4067, file: !4006, line: 71, column: 5)
!4076 = !DILocation(line: 73, column: 9, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4075, file: !4006, line: 72, column: 11)
!4078 = !DILocation(line: 73, column: 15, scope: !4077)
!4079 = !DILocation(line: 78, column: 1, scope: !4005)
!4080 = distinct !DISubprogram(name: "hard_locale", scope: !4081, file: !4081, line: 38, type: !4082, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4084)
!4081 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!45, !73}
!4084 = !{!4085, !4086, !4087, !4088, !4095, !4096, !4098, !4099, !4101, !4102, !4104}
!4085 = !DILocalVariable(name: "category", arg: 1, scope: !4080, file: !4081, line: 38, type: !73)
!4086 = !DILocalVariable(name: "hard", scope: !4080, file: !4081, line: 40, type: !45)
!4087 = !DILocalVariable(name: "p", scope: !4080, file: !4081, line: 41, type: !29)
!4088 = !DILocalVariable(name: "__s1_len", scope: !4089, file: !4081, line: 47, type: !33)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !4081, line: 47, column: 15)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !4081, line: 47, column: 15)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !4081, line: 46, column: 9)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !4081, line: 45, column: 11)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !4081, line: 44, column: 5)
!4094 = distinct !DILexicalBlock(scope: !4080, file: !4081, line: 43, column: 7)
!4095 = !DILocalVariable(name: "__s2_len", scope: !4089, file: !4081, line: 47, type: !33)
!4096 = !DILocalVariable(name: "__s2", scope: !4097, file: !4081, line: 47, type: !38)
!4097 = distinct !DILexicalBlock(scope: !4089, file: !4081, line: 47, column: 15)
!4098 = !DILocalVariable(name: "__result", scope: !4097, file: !4081, line: 47, type: !73)
!4099 = !DILocalVariable(name: "__s1_len", scope: !4100, file: !4081, line: 47, type: !33)
!4100 = distinct !DILexicalBlock(scope: !4090, file: !4081, line: 47, column: 39)
!4101 = !DILocalVariable(name: "__s2_len", scope: !4100, file: !4081, line: 47, type: !33)
!4102 = !DILocalVariable(name: "__s2", scope: !4103, file: !4081, line: 47, type: !38)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !4081, line: 47, column: 39)
!4104 = !DILocalVariable(name: "__result", scope: !4103, file: !4081, line: 47, type: !73)
!4105 = !DILocation(line: 38, column: 18, scope: !4080)
!4106 = !DILocation(line: 40, column: 8, scope: !4080)
!4107 = !DILocation(line: 41, column: 19, scope: !4080)
!4108 = !DILocation(line: 41, column: 15, scope: !4080)
!4109 = !DILocation(line: 43, column: 7, scope: !4094)
!4110 = !DILocation(line: 43, column: 7, scope: !4080)
!4111 = !DILocation(line: 47, column: 15, scope: !4089)
!4112 = !DILocation(line: 47, column: 15, scope: !4097)
!4113 = !DILocation(line: 47, column: 15, scope: !4114)
!4114 = !DILexicalBlockFile(scope: !4097, file: !4081, discriminator: 2)
!4115 = !DILocation(line: 47, column: 15, scope: !4116)
!4116 = !DILexicalBlockFile(scope: !4117, file: !4081, discriminator: 3)
!4117 = distinct !DILexicalBlock(scope: !4097, file: !4081, line: 47, column: 15)
!4118 = !DILocation(line: 47, column: 15, scope: !4119)
!4119 = !DILexicalBlockFile(scope: !4117, file: !4081, discriminator: 2)
!4120 = !DILocation(line: 47, column: 15, scope: !4121)
!4121 = !DILexicalBlockFile(scope: !4122, file: !4081, discriminator: 4)
!4122 = distinct !DILexicalBlock(scope: !4117, file: !4081, line: 47, column: 15)
!4123 = !DILocation(line: 47, column: 15, scope: !4124)
!4124 = !DILexicalBlockFile(scope: !4089, file: !4081, discriminator: 11)
!4125 = !DILocation(line: 47, column: 36, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !4090, file: !4081, discriminator: 13)
!4127 = !DILocation(line: 47, column: 39, scope: !4100)
!4128 = !DILocation(line: 47, column: 39, scope: !4129)
!4129 = !DILexicalBlockFile(scope: !4100, file: !4081, discriminator: 26)
!4130 = !DILocation(line: 47, column: 59, scope: !4131)
!4131 = !DILexicalBlockFile(scope: !4090, file: !4081, discriminator: 27)
!4132 = !DILocation(line: 47, column: 15, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !4091, file: !4081, discriminator: 27)
!4134 = !DILocation(line: 48, column: 13, scope: !4090)
!4135 = !DILocation(line: 71, column: 3, scope: !4080)
!4136 = distinct !DISubprogram(name: "locale_charset", scope: !552, file: !552, line: 393, type: !4137, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !208, variables: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!29}
!4139 = !{!4140, !4141, !4142, !4147}
!4140 = !DILocalVariable(name: "codeset", scope: !4136, file: !552, line: 395, type: !29)
!4141 = !DILocalVariable(name: "aliases", scope: !4136, file: !552, line: 396, type: !29)
!4142 = !DILocalVariable(name: "__s1_len", scope: !4143, file: !552, line: 592, type: !33)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !552, line: 592, column: 9)
!4144 = distinct !DILexicalBlock(scope: !4145, file: !552, line: 592, column: 9)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !552, line: 589, column: 3)
!4146 = distinct !DILexicalBlock(scope: !4136, file: !552, line: 589, column: 3)
!4147 = !DILocalVariable(name: "__s2_len", scope: !4143, file: !552, line: 592, type: !33)
!4148 = !DILocalVariable(name: "buf1", scope: !4149, file: !552, line: 196, type: !4216)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !552, line: 194, column: 21)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !552, line: 193, column: 19)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !552, line: 193, column: 19)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !552, line: 188, column: 17)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !552, line: 181, column: 19)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !552, line: 177, column: 13)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !552, line: 173, column: 15)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !552, line: 161, column: 9)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !552, line: 157, column: 11)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !552, line: 130, column: 5)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !552, line: 129, column: 7)
!4160 = distinct !DISubprogram(name: "get_charset_aliases", scope: !552, file: !552, line: 124, type: !4137, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !208, variables: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4168, !4169, !4170, !4171, !4212, !4213, !4214, !4148, !4215, !4219, !4220, !4221}
!4162 = !DILocalVariable(name: "cp", scope: !4160, file: !552, line: 126, type: !29)
!4163 = !DILocalVariable(name: "dir", scope: !4158, file: !552, line: 132, type: !29)
!4164 = !DILocalVariable(name: "base", scope: !4158, file: !552, line: 133, type: !29)
!4165 = !DILocalVariable(name: "file_name", scope: !4158, file: !552, line: 134, type: !127)
!4166 = !DILocalVariable(name: "dir_len", scope: !4167, file: !552, line: 144, type: !33)
!4167 = distinct !DILexicalBlock(scope: !4158, file: !552, line: 143, column: 7)
!4168 = !DILocalVariable(name: "base_len", scope: !4167, file: !552, line: 145, type: !33)
!4169 = !DILocalVariable(name: "add_slash", scope: !4167, file: !552, line: 146, type: !73)
!4170 = !DILocalVariable(name: "fd", scope: !4156, file: !552, line: 162, type: !73)
!4171 = !DILocalVariable(name: "fp", scope: !4154, file: !552, line: 178, type: !4172)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !745, line: 49, baseType: !4174)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !747, line: 241, size: 1728, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4174, file: !747, line: 242, baseType: !73, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4174, file: !747, line: 247, baseType: !127, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4174, file: !747, line: 248, baseType: !127, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4174, file: !747, line: 249, baseType: !127, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4174, file: !747, line: 250, baseType: !127, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4174, file: !747, line: 251, baseType: !127, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4174, file: !747, line: 252, baseType: !127, size: 64, offset: 384)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4174, file: !747, line: 253, baseType: !127, size: 64, offset: 448)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4174, file: !747, line: 254, baseType: !127, size: 64, offset: 512)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4174, file: !747, line: 256, baseType: !127, size: 64, offset: 576)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4174, file: !747, line: 257, baseType: !127, size: 64, offset: 640)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4174, file: !747, line: 258, baseType: !127, size: 64, offset: 704)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4174, file: !747, line: 260, baseType: !4189, size: 64, offset: 768)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !747, line: 156, size: 192, elements: !4191)
!4191 = !{!4192, !4193, !4195}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4190, file: !747, line: 157, baseType: !4189, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4190, file: !747, line: 158, baseType: !4194, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4190, file: !747, line: 162, baseType: !73, size: 32, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4174, file: !747, line: 262, baseType: !4194, size: 64, offset: 832)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4174, file: !747, line: 264, baseType: !73, size: 32, offset: 896)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4174, file: !747, line: 268, baseType: !73, size: 32, offset: 928)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4174, file: !747, line: 270, baseType: !773, size: 64, offset: 960)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4174, file: !747, line: 274, baseType: !156, size: 16, offset: 1024)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4174, file: !747, line: 275, baseType: !777, size: 8, offset: 1040)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4174, file: !747, line: 276, baseType: !779, size: 8, offset: 1048)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4174, file: !747, line: 280, baseType: !783, size: 64, offset: 1088)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4174, file: !747, line: 289, baseType: !786, size: 64, offset: 1152)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4174, file: !747, line: 297, baseType: !32, size: 64, offset: 1216)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4174, file: !747, line: 298, baseType: !32, size: 64, offset: 1280)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4174, file: !747, line: 299, baseType: !32, size: 64, offset: 1344)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4174, file: !747, line: 300, baseType: !32, size: 64, offset: 1408)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4174, file: !747, line: 302, baseType: !33, size: 64, offset: 1472)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4174, file: !747, line: 303, baseType: !73, size: 32, offset: 1536)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4174, file: !747, line: 305, baseType: !794, size: 160, offset: 1568)
!4212 = !DILocalVariable(name: "res_ptr", scope: !4152, file: !552, line: 190, type: !127)
!4213 = !DILocalVariable(name: "res_size", scope: !4152, file: !552, line: 191, type: !33)
!4214 = !DILocalVariable(name: "c", scope: !4149, file: !552, line: 195, type: !73)
!4215 = !DILocalVariable(name: "buf2", scope: !4149, file: !552, line: 197, type: !4216)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 408, elements: !4217)
!4217 = !{!4218}
!4218 = !DISubrange(count: 51)
!4219 = !DILocalVariable(name: "l1", scope: !4149, file: !552, line: 198, type: !33)
!4220 = !DILocalVariable(name: "l2", scope: !4149, file: !552, line: 198, type: !33)
!4221 = !DILocalVariable(name: "old_res_ptr", scope: !4149, file: !552, line: 199, type: !127)
!4222 = !DILocation(line: 196, column: 28, scope: !4149, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 589, column: 18, scope: !4146)
!4224 = !DILocation(line: 197, column: 28, scope: !4149, inlinedAt: !4223)
!4225 = !DILocation(line: 403, column: 13, scope: !4136)
!4226 = !DILocation(line: 395, column: 15, scope: !4136)
!4227 = !DILocation(line: 584, column: 15, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4136, file: !552, line: 584, column: 7)
!4229 = !DILocation(line: 584, column: 7, scope: !4136)
!4230 = !DILocation(line: 128, column: 8, scope: !4160, inlinedAt: !4223)
!4231 = !DILocation(line: 126, column: 15, scope: !4160, inlinedAt: !4223)
!4232 = !DILocation(line: 129, column: 10, scope: !4159, inlinedAt: !4223)
!4233 = !DILocation(line: 129, column: 7, scope: !4160, inlinedAt: !4223)
!4234 = !DILocation(line: 138, column: 13, scope: !4158, inlinedAt: !4223)
!4235 = !DILocation(line: 132, column: 19, scope: !4158, inlinedAt: !4223)
!4236 = !DILocation(line: 139, column: 15, scope: !4237, inlinedAt: !4223)
!4237 = distinct !DILexicalBlock(scope: !4158, file: !552, line: 139, column: 11)
!4238 = !DILocation(line: 139, column: 23, scope: !4237, inlinedAt: !4223)
!4239 = !DILocation(line: 139, column: 26, scope: !4240, inlinedAt: !4223)
!4240 = !DILexicalBlockFile(scope: !4237, file: !552, discriminator: 1)
!4241 = !DILocation(line: 139, column: 33, scope: !4240, inlinedAt: !4223)
!4242 = !DILocation(line: 139, column: 11, scope: !4243, inlinedAt: !4223)
!4243 = !DILexicalBlockFile(scope: !4158, file: !552, discriminator: 1)
!4244 = !DILocation(line: 140, column: 9, scope: !4237, inlinedAt: !4223)
!4245 = !DILocation(line: 144, column: 26, scope: !4167, inlinedAt: !4223)
!4246 = !DILocation(line: 144, column: 16, scope: !4167, inlinedAt: !4223)
!4247 = !DILocation(line: 145, column: 16, scope: !4167, inlinedAt: !4223)
!4248 = !DILocation(line: 146, column: 34, scope: !4167, inlinedAt: !4223)
!4249 = !DILocation(line: 146, column: 38, scope: !4167, inlinedAt: !4223)
!4250 = !DILocation(line: 146, column: 42, scope: !4251, inlinedAt: !4223)
!4251 = !DILexicalBlockFile(scope: !4167, file: !552, discriminator: 1)
!4252 = !DILocation(line: 146, column: 41, scope: !4251, inlinedAt: !4223)
!4253 = !DILocation(line: 147, column: 48, scope: !4167, inlinedAt: !4223)
!4254 = !DILocation(line: 147, column: 46, scope: !4167, inlinedAt: !4223)
!4255 = !DILocation(line: 147, column: 69, scope: !4167, inlinedAt: !4223)
!4256 = !DILocation(line: 147, column: 30, scope: !4167, inlinedAt: !4223)
!4257 = !DILocation(line: 134, column: 13, scope: !4158, inlinedAt: !4223)
!4258 = !DILocation(line: 148, column: 13, scope: !4167, inlinedAt: !4223)
!4259 = !DILocation(line: 150, column: 13, scope: !4260, inlinedAt: !4223)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !552, line: 149, column: 11)
!4261 = distinct !DILexicalBlock(scope: !4167, file: !552, line: 148, column: 13)
!4262 = !DILocation(line: 151, column: 17, scope: !4260, inlinedAt: !4223)
!4263 = !DILocation(line: 152, column: 34, scope: !4264, inlinedAt: !4223)
!4264 = distinct !DILexicalBlock(scope: !4260, file: !552, line: 151, column: 17)
!4265 = !DILocation(line: 153, column: 41, scope: !4260, inlinedAt: !4223)
!4266 = !DILocation(line: 153, column: 13, scope: !4260, inlinedAt: !4223)
!4267 = !DILocation(line: 157, column: 11, scope: !4158, inlinedAt: !4223)
!4268 = !DILocation(line: 171, column: 16, scope: !4156, inlinedAt: !4223)
!4269 = !DILocation(line: 162, column: 15, scope: !4156, inlinedAt: !4223)
!4270 = !DILocation(line: 173, column: 18, scope: !4155, inlinedAt: !4223)
!4271 = !DILocation(line: 173, column: 15, scope: !4156, inlinedAt: !4223)
!4272 = !DILocation(line: 180, column: 20, scope: !4154, inlinedAt: !4223)
!4273 = !DILocation(line: 178, column: 21, scope: !4154, inlinedAt: !4223)
!4274 = !DILocation(line: 181, column: 22, scope: !4153, inlinedAt: !4223)
!4275 = !DILocation(line: 181, column: 19, scope: !4154, inlinedAt: !4223)
!4276 = !DILocation(line: 190, column: 25, scope: !4152, inlinedAt: !4223)
!4277 = !DILocation(line: 184, column: 19, scope: !4278, inlinedAt: !4223)
!4278 = distinct !DILexicalBlock(scope: !4153, file: !552, line: 182, column: 17)
!4279 = !DILocation(line: 186, column: 17, scope: !4278, inlinedAt: !4223)
!4280 = !DILocation(line: 191, column: 26, scope: !4152, inlinedAt: !4223)
!4281 = !DILocation(line: 196, column: 23, scope: !4149, inlinedAt: !4223)
!4282 = !DILocation(line: 197, column: 23, scope: !4149, inlinedAt: !4223)
!4283 = !DILocalVariable(name: "__fp", arg: 1, scope: !4284, file: !906, line: 63, type: !4172)
!4284 = distinct !DISubprogram(name: "getc_unlocked", scope: !906, file: !906, line: 63, type: !4285, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !208, variables: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!73, !4172}
!4287 = !{!4283}
!4288 = !DILocation(line: 63, column: 22, scope: !4284, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 201, column: 27, scope: !4149, inlinedAt: !4223)
!4290 = !DILocation(line: 65, column: 10, scope: !4284, inlinedAt: !4289)
!4291 = !{!"branch_weights", i32 2000, i32 1}
!4292 = !DILocation(line: 65, column: 10, scope: !4293, inlinedAt: !4289)
!4293 = !DILexicalBlockFile(scope: !4284, file: !906, discriminator: 1)
!4294 = !DILocation(line: 65, column: 10, scope: !4295, inlinedAt: !4289)
!4295 = !DILexicalBlockFile(scope: !4284, file: !906, discriminator: 2)
!4296 = !DILocation(line: 65, column: 10, scope: !4297, inlinedAt: !4289)
!4297 = !DILexicalBlockFile(scope: !4284, file: !906, discriminator: 3)
!4298 = !DILocation(line: 195, column: 27, scope: !4149, inlinedAt: !4223)
!4299 = !DILocation(line: 202, column: 27, scope: !4149, inlinedAt: !4223)
!4300 = !DILocation(line: 63, column: 22, scope: !4284, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 210, column: 33, scope: !4302, inlinedAt: !4223)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !552, line: 207, column: 25)
!4303 = distinct !DILexicalBlock(scope: !4149, file: !552, line: 206, column: 27)
!4304 = !DILocation(line: 65, column: 10, scope: !4284, inlinedAt: !4301)
!4305 = !DILocation(line: 65, column: 10, scope: !4293, inlinedAt: !4301)
!4306 = !DILocation(line: 65, column: 10, scope: !4295, inlinedAt: !4301)
!4307 = !DILocation(line: 65, column: 10, scope: !4297, inlinedAt: !4301)
!4308 = !DILocation(line: 210, column: 29, scope: !4309, inlinedAt: !4223)
!4309 = !DILexicalBlockFile(scope: !4302, file: !552, discriminator: 1)
!4310 = distinct !{!4310, !4311, !4312}
!4311 = !DILocation(line: 193, column: 19, scope: !4151)
!4312 = !DILocation(line: 241, column: 21, scope: !4151)
!4313 = !DILocation(line: 216, column: 23, scope: !4149, inlinedAt: !4223)
!4314 = !DILocation(line: 217, column: 27, scope: !4315, inlinedAt: !4223)
!4315 = distinct !DILexicalBlock(scope: !4149, file: !552, line: 217, column: 27)
!4316 = !DILocation(line: 217, column: 64, scope: !4315, inlinedAt: !4223)
!4317 = !DILocation(line: 217, column: 27, scope: !4149, inlinedAt: !4223)
!4318 = !DILocation(line: 219, column: 28, scope: !4149, inlinedAt: !4223)
!4319 = !DILocation(line: 198, column: 30, scope: !4149, inlinedAt: !4223)
!4320 = !DILocation(line: 220, column: 28, scope: !4149, inlinedAt: !4223)
!4321 = !DILocation(line: 198, column: 34, scope: !4149, inlinedAt: !4223)
!4322 = !DILocation(line: 199, column: 29, scope: !4149, inlinedAt: !4223)
!4323 = !DILocation(line: 222, column: 36, scope: !4324, inlinedAt: !4223)
!4324 = distinct !DILexicalBlock(scope: !4149, file: !552, line: 222, column: 27)
!4325 = !DILocation(line: 222, column: 27, scope: !4149, inlinedAt: !4223)
!4326 = !DILocation(line: 225, column: 63, scope: !4327, inlinedAt: !4223)
!4327 = distinct !DILexicalBlock(scope: !4324, file: !552, line: 223, column: 25)
!4328 = !DILocation(line: 225, column: 46, scope: !4327, inlinedAt: !4223)
!4329 = !DILocation(line: 226, column: 25, scope: !4327, inlinedAt: !4223)
!4330 = !DILocation(line: 229, column: 36, scope: !4331, inlinedAt: !4223)
!4331 = distinct !DILexicalBlock(scope: !4324, file: !552, line: 228, column: 25)
!4332 = !DILocation(line: 230, column: 73, scope: !4331, inlinedAt: !4223)
!4333 = !DILocation(line: 230, column: 46, scope: !4331, inlinedAt: !4223)
!4334 = !DILocation(line: 232, column: 35, scope: !4335, inlinedAt: !4223)
!4335 = distinct !DILexicalBlock(scope: !4149, file: !552, line: 232, column: 27)
!4336 = !DILocation(line: 232, column: 27, scope: !4149, inlinedAt: !4223)
!4337 = !DILocation(line: 236, column: 27, scope: !4338, inlinedAt: !4223)
!4338 = distinct !DILexicalBlock(scope: !4335, file: !552, line: 233, column: 25)
!4339 = !DILocation(line: 237, column: 27, scope: !4338, inlinedAt: !4223)
!4340 = !DILocation(line: 239, column: 39, scope: !4149, inlinedAt: !4223)
!4341 = !DILocation(line: 239, column: 50, scope: !4149, inlinedAt: !4223)
!4342 = !DILocation(line: 239, column: 61, scope: !4149, inlinedAt: !4223)
!4343 = !DILocalVariable(name: "__dest", arg: 1, scope: !4344, file: !4345, line: 107, type: !4348)
!4344 = distinct !DISubprogram(name: "strcpy", scope: !4345, file: !4345, line: 107, type: !4346, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !208, variables: !4350)
!4345 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!127, !4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!4349 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!4350 = !{!4343, !4351}
!4351 = !DILocalVariable(name: "__src", arg: 2, scope: !4344, file: !4345, line: 107, type: !4349)
!4352 = !DILocation(line: 107, column: 1, scope: !4344, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 239, column: 23, scope: !4149, inlinedAt: !4223)
!4354 = !DILocation(line: 109, column: 49, scope: !4344, inlinedAt: !4353)
!4355 = !DILocation(line: 109, column: 10, scope: !4344, inlinedAt: !4353)
!4356 = !DILocation(line: 107, column: 1, scope: !4344, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 240, column: 23, scope: !4149, inlinedAt: !4223)
!4358 = !DILocation(line: 109, column: 49, scope: !4344, inlinedAt: !4357)
!4359 = !DILocation(line: 109, column: 10, scope: !4344, inlinedAt: !4357)
!4360 = !DILocation(line: 241, column: 21, scope: !4150, inlinedAt: !4223)
!4361 = !DILocation(line: 242, column: 19, scope: !4152, inlinedAt: !4223)
!4362 = !DILocation(line: 243, column: 32, scope: !4363, inlinedAt: !4223)
!4363 = distinct !DILexicalBlock(scope: !4152, file: !552, line: 243, column: 23)
!4364 = !DILocation(line: 243, column: 23, scope: !4152, inlinedAt: !4223)
!4365 = !DILocation(line: 247, column: 33, scope: !4366, inlinedAt: !4223)
!4366 = distinct !DILexicalBlock(scope: !4363, file: !552, line: 246, column: 21)
!4367 = !DILocation(line: 247, column: 45, scope: !4366, inlinedAt: !4223)
!4368 = !DILocation(line: 253, column: 11, scope: !4156, inlinedAt: !4223)
!4369 = !DILocation(line: 377, column: 23, scope: !4158, inlinedAt: !4223)
!4370 = !DILocation(line: 378, column: 5, scope: !4158, inlinedAt: !4223)
!4371 = !DILocation(line: 396, column: 15, scope: !4136)
!4372 = !DILocation(line: 590, column: 8, scope: !4145)
!4373 = !DILocation(line: 590, column: 17, scope: !4145)
!4374 = !DILocation(line: 589, column: 3, scope: !4375)
!4375 = !DILexicalBlockFile(scope: !4146, file: !552, discriminator: 1)
!4376 = !DILocation(line: 592, column: 9, scope: !4143)
!4377 = !DILocation(line: 592, column: 35, scope: !4144)
!4378 = !DILocation(line: 593, column: 9, scope: !4144)
!4379 = !DILocation(line: 593, column: 24, scope: !4380)
!4380 = !DILexicalBlockFile(scope: !4144, file: !552, discriminator: 1)
!4381 = !DILocation(line: 593, column: 31, scope: !4380)
!4382 = !DILocation(line: 593, column: 34, scope: !4383)
!4383 = !DILexicalBlockFile(scope: !4144, file: !552, discriminator: 2)
!4384 = !DILocation(line: 593, column: 45, scope: !4383)
!4385 = !DILocation(line: 592, column: 9, scope: !4386)
!4386 = !DILexicalBlockFile(scope: !4145, file: !552, discriminator: 1)
!4387 = !DILocation(line: 595, column: 29, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4144, file: !552, line: 594, column: 7)
!4389 = !DILocation(line: 595, column: 27, scope: !4388)
!4390 = !DILocation(line: 595, column: 46, scope: !4388)
!4391 = !DILocation(line: 596, column: 9, scope: !4388)
!4392 = !DILocation(line: 591, column: 19, scope: !4145)
!4393 = !DILocation(line: 591, column: 36, scope: !4145)
!4394 = !DILocation(line: 591, column: 16, scope: !4145)
!4395 = !DILocation(line: 591, column: 52, scope: !4386)
!4396 = !DILocation(line: 591, column: 69, scope: !4145)
!4397 = !DILocation(line: 591, column: 49, scope: !4145)
!4398 = distinct !{!4398, !4399, !4400}
!4399 = !DILocation(line: 589, column: 3, scope: !4146)
!4400 = !DILocation(line: 597, column: 7, scope: !4146)
!4401 = !DILocation(line: 602, column: 7, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4136, file: !552, line: 602, column: 7)
!4403 = !DILocation(line: 602, column: 18, scope: !4402)
!4404 = !DILocation(line: 602, column: 7, scope: !4136)
!4405 = !DILocation(line: 612, column: 3, scope: !4136)
