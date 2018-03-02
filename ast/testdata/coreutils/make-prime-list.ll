; ModuleID = 'coreutils-8.27/src/make-prime-list.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.prime = type { i32, i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [56 x i8] c"Usage: %s LIMIT\0AProduces a list of odd primes <= LIMIT\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Virtual memory exhausted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"/* Generated file -- DO NOT EDIT */\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"#define WIDE_UINT_BITS %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"P (%u, %u,\0A   (\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"),\0A   UINTMAX_MAX / %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A#undef FIRST_OMITTED_PRIME\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"#define FIRST_OMITTED_PRIME %u\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"write error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c")\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" << %d | \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"(uintmax_t) \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%0*xU\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 !dbg !14 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !18, metadata !46), !dbg !47
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !19, metadata !46), !dbg !48
  %3 = icmp eq i32 %0, 2, !dbg !49
  br i1 %3, label %8, label %4, !dbg !51

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !52, !tbaa !54
  %6 = load i8*, i8** %1, align 8, !dbg !52, !tbaa !54
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %6) #8, !dbg !52
  br label %172, !dbg !58

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !59
  %10 = load i8*, i8** %9, align 8, !dbg !59, !tbaa !54
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !60, metadata !46) #8, !dbg !68
  %11 = tail call i64 @strtol(i8* nocapture nonnull %10, i8** null, i32 10) #8, !dbg !70
  %12 = trunc i64 %11 to i32, !dbg !71
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !20, metadata !46), !dbg !72
  %13 = icmp slt i32 %12, 3, !dbg !73
  br i1 %13, label %172, label %14, !dbg !75

; <label>:14:                                     ; preds = %8
  %15 = and i32 %12, 1, !dbg !76
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !20, metadata !46), !dbg !72
  %16 = add i32 %12, -2, !dbg !78
  %17 = add i32 %16, %15, !dbg !79
  %18 = sdiv i32 %17, 2, !dbg !80
  %19 = sext i32 %18 to i64, !dbg !81
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !22, metadata !46), !dbg !82
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !83, metadata !46) #8, !dbg !89
  %20 = tail call noalias i8* @malloc(i64 %19) #8, !dbg !91
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !88, metadata !46) #8, !dbg !92
  %21 = icmp eq i8* %20, null, !dbg !93
  br i1 %21, label %22, label %25, !dbg !95

; <label>:22:                                     ; preds = %14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !54
  %24 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %23, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !96
  tail call void @exit(i32 1) #9, !dbg !97
  unreachable, !dbg !97

; <label>:25:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !21, metadata !46), !dbg !98
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %20, i8 1, i64 %19, i32 1, i1 false), !dbg !99
  %26 = mul nsw i64 %19, 24, !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !83, metadata !46) #8, !dbg !101
  %27 = tail call noalias i8* @malloc(i64 %26) #8, !dbg !103
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !88, metadata !46) #8, !dbg !104
  %28 = icmp eq i8* %27, null, !dbg !105
  br i1 %28, label %29, label %32, !dbg !106

; <label>:29:                                     ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !107, !tbaa !54
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %30, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !107
  tail call void @exit(i32 1) #9, !dbg !108
  unreachable, !dbg !108

; <label>:32:                                     ; preds = %25
  %33 = bitcast i8* %27 to %struct.prime*, !dbg !109
  tail call void @llvm.dbg.value(metadata %struct.prime* %33, i64 0, metadata !27, metadata !46), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !40, metadata !46), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !26, metadata !46), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !40, metadata !46), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !26, metadata !46), !dbg !112
  %34 = add i32 %17, 1, !dbg !113
  %35 = icmp ugt i32 %34, 2, !dbg !113
  br i1 %35, label %36, label %86, !dbg !115

; <label>:36:                                     ; preds = %32
  br label %38, !dbg !117

; <label>:37:                                     ; preds = %81
  br label %38, !dbg !117

; <label>:38:                                     ; preds = %36, %37
  %39 = phi i32 [ %58, %37 ], [ 0, %36 ]
  %40 = phi i64 [ %79, %37 ], [ 0, %36 ]
  %41 = shl i64 %40, 1, !dbg !117
  %42 = add i64 %41, 3, !dbg !118
  %43 = trunc i64 %42 to i32, !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !41, metadata !46), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !40, metadata !46), !dbg !111
  %44 = zext i32 %39 to i64, !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !122, metadata !46), !dbg !129
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !128, metadata !46), !dbg !131
  %45 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %44, i32 0, !dbg !132
  store i32 %43, i32* %45, align 8, !dbg !133, !tbaa !134
  %46 = and i64 %42, 4294967295, !dbg !138
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !139, metadata !46), !dbg !149
  %47 = shl i32 %43, 1, !dbg !151
  %48 = and i32 %47, 28, !dbg !151
  %49 = lshr i32 -180781647, %48, !dbg !151
  %50 = zext i32 %49 to i64, !dbg !152
  tail call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !144, metadata !46), !dbg !153
  br label %51, !dbg !154

; <label>:51:                                     ; preds = %51, %38
  %52 = phi i64 [ %50, %38 ], [ %55, %51 ]
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !144, metadata !46), !dbg !153
  %53 = mul i64 %52, %46, !dbg !155
  %54 = sub i64 2, %53, !dbg !156
  %55 = mul i64 %54, %52, !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !145, metadata !46), !dbg !157
  %56 = icmp eq i64 %55, %52, !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !144, metadata !46), !dbg !153
  br i1 %56, label %57, label %51, !llvm.loop !160

; <label>:57:                                     ; preds = %51
  %58 = add i32 %39, 1, !dbg !163
  %59 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %44, i32 1, !dbg !164
  store i64 %52, i64* %59, align 8, !dbg !165, !tbaa !166
  %60 = udiv i64 -1, %46, !dbg !167
  %61 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %44, i32 2, !dbg !168
  store i64 %60, i64* %61, align 8, !dbg !169, !tbaa !170
  %62 = mul i32 %43, %43, !dbg !171
  %63 = add i32 %62, -3, !dbg !173
  %64 = lshr i32 %63, 1, !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !45, metadata !46), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !45, metadata !46), !dbg !175
  %65 = zext i32 %64 to i64, !dbg !176
  %66 = icmp ult i64 %65, %19, !dbg !179
  br i1 %66, label %67, label %76, !dbg !180

; <label>:67:                                     ; preds = %57
  br label %68, !dbg !182

; <label>:68:                                     ; preds = %67, %68
  %69 = phi i64 [ %73, %68 ], [ %65, %67 ]
  %70 = phi i32 [ %72, %68 ], [ %64, %67 ]
  %71 = getelementptr inbounds i8, i8* %20, i64 %69, !dbg !182
  store i8 0, i8* %71, align 1, !dbg !183, !tbaa !184
  %72 = add i32 %70, %43, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !45, metadata !46), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !45, metadata !46), !dbg !175
  %73 = zext i32 %72 to i64, !dbg !176
  %74 = icmp ult i64 %73, %19, !dbg !179
  br i1 %74, label %68, label %75, !dbg !180, !llvm.loop !187

; <label>:75:                                     ; preds = %68
  br label %76, !dbg !112

; <label>:76:                                     ; preds = %75, %57
  br label %77, !dbg !112

; <label>:77:                                     ; preds = %76, %81
  %78 = phi i64 [ %79, %81 ], [ %40, %76 ]
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !26, metadata !46), !dbg !112
  %79 = add i64 %78, 1, !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !26, metadata !46), !dbg !112
  %80 = icmp ult i64 %79, %19, !dbg !192
  br i1 %80, label %81, label %85, !dbg !193, !llvm.loop !194

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds i8, i8* %20, i64 %79, !dbg !197
  %83 = load i8, i8* %82, align 1, !dbg !197, !tbaa !184
  %84 = icmp eq i8 %83, 0, !dbg !199
  br i1 %84, label %77, label %37, !dbg !200, !llvm.loop !194

; <label>:85:                                     ; preds = %77
  br label %86, !dbg !202

; <label>:86:                                     ; preds = %85, %32
  %87 = phi i32 [ 0, %32 ], [ %58, %85 ]
  tail call void @llvm.dbg.value(metadata %struct.prime* %33, i64 0, metadata !209, metadata !46) #8, !dbg !202
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !210, metadata !46) #8, !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !214, metadata !46) #8, !dbg !222
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !215, metadata !46) #8, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !214, metadata !46) #8, !dbg !222
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !215, metadata !46) #8, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !214, metadata !46) #8, !dbg !222
  %88 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !224
  %89 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 64) #8, !dbg !225
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !46) #8, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !212, metadata !46) #8, !dbg !227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !46) #8, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !212, metadata !46) #8, !dbg !227
  %90 = icmp eq i32 %87, 0, !dbg !228
  br i1 %90, label %126, label %91, !dbg !230

; <label>:91:                                     ; preds = %86
  %92 = zext i32 %87 to i64, !dbg !232
  br label %93, !dbg !232

; <label>:93:                                     ; preds = %111, %91
  %94 = phi i64 [ 0, %91 ], [ %122, %111 ]
  %95 = phi i32 [ 2, %91 ], [ %121, %111 ]
  %96 = trunc i64 %94 to i32, !dbg !232
  %97 = add i32 %96, 8, !dbg !232
  %98 = icmp ult i32 %97, %87, !dbg !233
  br i1 %98, label %102, label %99, !dbg !234

; <label>:99:                                     ; preds = %93
  %100 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %94, i32 0
  %101 = load i32, i32* %100, align 8, !tbaa !134
  br label %111, !dbg !234

; <label>:102:                                    ; preds = %93
  %103 = zext i32 %97 to i64, !dbg !235
  %104 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %103, i32 0, !dbg !237
  %105 = load i32, i32* %104, align 8, !dbg !237, !tbaa !134
  %106 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %94, i32 0, !dbg !238
  %107 = load i32, i32* %106, align 8, !dbg !238, !tbaa !134
  %108 = sub i32 %105, %107, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !216, metadata !46) #8, !dbg !240
  %109 = icmp ugt i32 %108, 255, !dbg !241
  br i1 %109, label %110, label %111, !dbg !243

; <label>:110:                                    ; preds = %102
  tail call void @abort() #9, !dbg !244
  unreachable, !dbg !244

; <label>:111:                                    ; preds = %102, %99
  %112 = phi i32* [ %100, %99 ], [ %106, %102 ], !dbg !245
  %113 = phi i32 [ %101, %99 ], [ %107, %102 ], !dbg !245
  %114 = phi i32 [ 255, %99 ], [ %108, %102 ]
  %115 = sub i32 %113, %95, !dbg !245
  %116 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %114) #8, !dbg !245
  %117 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %94, i32 1, !dbg !246
  %118 = load i64, i64* %117, align 8, !dbg !246, !tbaa !166
  tail call fastcc void @print_wide_uint(i64 %118, i32 0, i32 64) #8, !dbg !247
  %119 = load i32, i32* %112, align 8, !dbg !248, !tbaa !134
  %120 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %119) #8, !dbg !248
  %121 = load i32, i32* %112, align 8, !dbg !249, !tbaa !134
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !212, metadata !46) #8, !dbg !227
  %122 = add nuw nsw i64 %94, 1, !dbg !250
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !212, metadata !46) #8, !dbg !227
  %123 = icmp ult i64 %122, %92, !dbg !228
  br i1 %123, label %93, label %124, !dbg !230, !llvm.loop !252

; <label>:124:                                    ; preds = %111
  %125 = add i32 %121, 2, !dbg !255
  br label %126, !dbg !255

; <label>:126:                                    ; preds = %124, %86
  %127 = phi i32 [ 4, %86 ], [ %125, %124 ]
  %128 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !212, metadata !46) #8, !dbg !227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !46) #8, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !213, metadata !46) #8, !dbg !256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !46) #8, !dbg !226
  %129 = bitcast i8* %27 to i32*, !dbg !257
  %130 = load i32, i32* %129, align 8, !dbg !257, !tbaa !134
  %131 = mul i32 %130, %130, !dbg !263
  %132 = icmp ugt i32 %131, %127, !dbg !264
  br i1 %132, label %158, label %133, !dbg !265

; <label>:133:                                    ; preds = %126
  br label %137

; <label>:134:                                    ; preds = %146
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !212, metadata !46) #8, !dbg !227
  %135 = add i32 %138, 2, !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !212, metadata !46) #8, !dbg !227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !46) #8, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !213, metadata !46) #8, !dbg !256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !46) #8, !dbg !226
  %136 = icmp ugt i32 %131, %135, !dbg !264
  br i1 %136, label %157, label %137, !dbg !265

; <label>:137:                                    ; preds = %133, %134
  %138 = phi i32 [ %135, %134 ], [ %127, %133 ]
  %139 = zext i32 %138 to i64
  br label %146, !dbg !265

; <label>:140:                                    ; preds = %146
  tail call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !211, metadata !46) #8, !dbg !226
  %141 = zext i32 %155 to i64, !dbg !267
  %142 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %141, i32 0, !dbg !257
  %143 = load i32, i32* %142, align 8, !dbg !257, !tbaa !134
  %144 = mul i32 %143, %143, !dbg !263
  %145 = icmp ugt i32 %144, %138, !dbg !264
  br i1 %145, label %156, label %146, !dbg !265, !llvm.loop !268

; <label>:146:                                    ; preds = %140, %137
  %147 = phi i64 [ 0, %137 ], [ %141, %140 ]
  %148 = phi i32 [ 0, %137 ], [ %155, %140 ]
  %149 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %147, i32 1, !dbg !271
  %150 = load i64, i64* %149, align 8, !dbg !271, !tbaa !166
  %151 = mul i64 %150, %139, !dbg !273
  %152 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %147, i32 2, !dbg !274
  %153 = load i64, i64* %152, align 8, !dbg !274, !tbaa !170
  %154 = icmp ugt i64 %151, %153, !dbg !275
  %155 = add i32 %148, 1, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !211, metadata !46) #8, !dbg !226
  br i1 %154, label %140, label %134, !dbg !278

; <label>:156:                                    ; preds = %140
  br label %158, !dbg !279

; <label>:157:                                    ; preds = %134
  br label %158, !dbg !279

; <label>:158:                                    ; preds = %157, %156, %126
  %159 = phi i32 [ %127, %126 ], [ %138, %156 ], [ %135, %157 ]
  %160 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %159) #8, !dbg !279
  tail call void @free(i8* %20) #8, !dbg !280
  tail call void @free(i8* nonnull %27) #8, !dbg !281
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !282, !tbaa !54
  %162 = tail call i32 @ferror(%struct._IO_FILE* %161) #8, !dbg !284
  %163 = tail call i32 @fclose(%struct._IO_FILE* %161), !dbg !285
  %164 = sub i32 0, %163, !dbg !287
  %165 = icmp eq i32 %162, %164, !dbg !287
  br i1 %165, label %172, label %166, !dbg !288

; <label>:166:                                    ; preds = %158
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !289, !tbaa !54
  %168 = tail call i32* @__errno_location() #1, !dbg !289
  %169 = load i32, i32* %168, align 4, !dbg !289, !tbaa !291
  %170 = tail call i8* @strerror(i32 %169) #8, !dbg !292
  %171 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %167, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %170) #8, !dbg !294
  br label %172, !dbg !296

; <label>:172:                                    ; preds = %158, %8, %166, %4
  %173 = phi i32 [ 1, %4 ], [ 1, %166 ], [ 0, %8 ], [ 0, %158 ]
  ret i32 %173, !dbg !297
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_wide_uint(i64, i32, i32) unnamed_addr #0 !dbg !298 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !302, metadata !46), !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !303, metadata !46), !dbg !312
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !304, metadata !46), !dbg !313
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !305, metadata !46), !dbg !314
  tail call void @llvm.dbg.value(metadata i32 28, i64 0, metadata !306, metadata !46), !dbg !315
  %4 = trunc i64 %0 to i32, !dbg !316
  %5 = and i32 %4, 268435455, !dbg !316
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !307, metadata !46), !dbg !317
  %6 = zext i32 %5 to i64, !dbg !318
  %7 = icmp eq i64 %6, %0, !dbg !319
  br i1 %7, label %20, label %8, !dbg !320

; <label>:8:                                      ; preds = %3
  %9 = lshr i64 %0, 28, !dbg !321
  %10 = icmp ugt i64 %0, 72057594037927935, !dbg !322
  br i1 %10, label %11, label %16, !dbg !323

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !324
  %13 = add nsw i32 %1, 1, !dbg !326
  tail call fastcc void @print_wide_uint(i64 %9, i32 %13, i32 %2), !dbg !327
  %14 = add nsw i32 %1, 3, !dbg !328
  %15 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !328
  br label %18, !dbg !328

; <label>:16:                                     ; preds = %8
  %17 = add nsw i32 %1, 1, !dbg !326
  tail call fastcc void @print_wide_uint(i64 %9, i32 %17, i32 %2), !dbg !327
  br label %18

; <label>:18:                                     ; preds = %16, %11
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 28) #8, !dbg !330
  br label %28, !dbg !331

; <label>:20:                                     ; preds = %3
  %21 = icmp eq i32 %1, 0, !dbg !332
  br i1 %21, label %28, label %22, !dbg !334

; <label>:22:                                     ; preds = %20
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !335
  %24 = add i32 %2, -1, !dbg !337
  %25 = urem i32 %24, 28, !dbg !338
  %26 = and i32 %25, 3, !dbg !339
  %27 = add nuw nsw i32 %26, 1, !dbg !340
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !305, metadata !46), !dbg !314
  br label %28, !dbg !341

; <label>:28:                                     ; preds = %20, %22, %18
  %29 = phi i32 [ 7, %18 ], [ %27, %22 ], [ 7, %20 ]
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !305, metadata !46), !dbg !314
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %29, i32 %5) #8, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "src/make-prime-list.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"PIC Level", i32 2}
!13 = !{i32 1, !"PIE Level", i32 2}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 172, type: !15, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!4, !4, !5}
!17 = !{!18, !19, !20, !21, !22, !26, !27, !40, !41, !45}
!18 = !DILocalVariable(name: "argc", arg: 1, scope: !14, file: !1, line: 172, type: !4)
!19 = !DILocalVariable(name: "argv", arg: 2, scope: !14, file: !1, line: 172, type: !5)
!20 = !DILocalVariable(name: "limit", scope: !14, file: !1, line: 174, type: !4)
!21 = !DILocalVariable(name: "sieve", scope: !14, file: !1, line: 176, type: !6)
!22 = !DILocalVariable(name: "size", scope: !14, file: !1, line: 177, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 62, baseType: !25)
!24 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 177, type: !23)
!27 = !DILocalVariable(name: "prime_list", scope: !14, file: !1, line: 179, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prime", file: !1, line: 49, size: 192, elements: !30)
!30 = !{!31, !33, !39}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !29, file: !1, line: 51, baseType: !32, size: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "pinv", scope: !29, file: !1, line: 52, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "wide_uint", file: !1, line: 45, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !36, line: 136, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !38, line: 62, baseType: !25)
!38 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lim", scope: !29, file: !1, line: 53, baseType: !34, size: 64, offset: 128)
!40 = !DILocalVariable(name: "nprimes", scope: !14, file: !1, line: 180, type: !32)
!41 = !DILocalVariable(name: "p", scope: !42, file: !1, line: 206, type: !32)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 205, column: 5)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 204, column: 3)
!44 = distinct !DILexicalBlock(scope: !14, file: !1, line: 204, column: 3)
!45 = !DILocalVariable(name: "j", scope: !42, file: !1, line: 207, type: !32)
!46 = !DIExpression()
!47 = !DILocation(line: 172, column: 11, scope: !14)
!48 = !DILocation(line: 172, column: 24, scope: !14)
!49 = !DILocation(line: 182, column: 12, scope: !50)
!50 = distinct !DILexicalBlock(scope: !14, file: !1, line: 182, column: 7)
!51 = !DILocation(line: 182, column: 7, scope: !14)
!52 = !DILocation(line: 184, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 183, column: 5)
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !DILocation(line: 186, column: 7, scope: !53)
!59 = !DILocation(line: 188, column: 17, scope: !14)
!60 = !DILocalVariable(name: "__nptr", arg: 1, scope: !61, file: !62, line: 255, type: !65)
!61 = distinct !DISubprogram(name: "atoi", scope: !62, file: !62, line: 255, type: !63, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !67)
!62 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!63 = !DISubroutineType(types: !64)
!64 = !{!4, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!67 = !{!60}
!68 = !DILocation(line: 255, column: 1, scope: !61, inlinedAt: !69)
!69 = distinct !DILocation(line: 188, column: 11, scope: !14)
!70 = !DILocation(line: 257, column: 16, scope: !61, inlinedAt: !69)
!71 = !DILocation(line: 257, column: 10, scope: !61, inlinedAt: !69)
!72 = !DILocation(line: 174, column: 7, scope: !14)
!73 = !DILocation(line: 189, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !14, file: !1, line: 189, column: 7)
!75 = !DILocation(line: 189, column: 7, scope: !14)
!76 = !DILocation(line: 193, column: 16, scope: !77)
!77 = distinct !DILexicalBlock(scope: !14, file: !1, line: 193, column: 8)
!78 = !DILocation(line: 193, column: 8, scope: !14)
!79 = !DILocation(line: 196, column: 16, scope: !14)
!80 = !DILocation(line: 196, column: 19, scope: !14)
!81 = !DILocation(line: 196, column: 10, scope: !14)
!82 = !DILocation(line: 177, column: 10, scope: !14)
!83 = !DILocalVariable(name: "s", arg: 1, scope: !84, file: !1, line: 161, type: !23)
!84 = distinct !DISubprogram(name: "xalloc", scope: !1, file: !1, line: 161, type: !85, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{!8, !23}
!87 = !{!83, !88}
!88 = !DILocalVariable(name: "p", scope: !84, file: !1, line: 163, type: !8)
!89 = !DILocation(line: 161, column: 16, scope: !84, inlinedAt: !90)
!90 = distinct !DILocation(line: 198, column: 11, scope: !14)
!91 = !DILocation(line: 163, column: 13, scope: !84, inlinedAt: !90)
!92 = !DILocation(line: 163, column: 9, scope: !84, inlinedAt: !90)
!93 = !DILocation(line: 164, column: 7, scope: !94, inlinedAt: !90)
!94 = distinct !DILexicalBlock(scope: !84, file: !1, line: 164, column: 7)
!95 = !DILocation(line: 164, column: 7, scope: !84, inlinedAt: !90)
!96 = !DILocation(line: 167, column: 3, scope: !84, inlinedAt: !90)
!97 = !DILocation(line: 168, column: 3, scope: !84, inlinedAt: !90)
!98 = !DILocation(line: 176, column: 9, scope: !14)
!99 = !DILocation(line: 199, column: 3, scope: !14)
!100 = !DILocation(line: 201, column: 29, scope: !14)
!101 = !DILocation(line: 161, column: 16, scope: !84, inlinedAt: !102)
!102 = distinct !DILocation(line: 201, column: 16, scope: !14)
!103 = !DILocation(line: 163, column: 13, scope: !84, inlinedAt: !102)
!104 = !DILocation(line: 163, column: 9, scope: !84, inlinedAt: !102)
!105 = !DILocation(line: 164, column: 7, scope: !94, inlinedAt: !102)
!106 = !DILocation(line: 164, column: 7, scope: !84, inlinedAt: !102)
!107 = !DILocation(line: 167, column: 3, scope: !84, inlinedAt: !102)
!108 = !DILocation(line: 168, column: 3, scope: !84, inlinedAt: !102)
!109 = !DILocation(line: 201, column: 16, scope: !14)
!110 = !DILocation(line: 179, column: 17, scope: !14)
!111 = !DILocation(line: 180, column: 12, scope: !14)
!112 = !DILocation(line: 177, column: 16, scope: !14)
!113 = !DILocation(line: 204, column: 17, scope: !114)
!114 = !DILexicalBlockFile(scope: !43, file: !1, discriminator: 1)
!115 = !DILocation(line: 204, column: 3, scope: !116)
!116 = !DILexicalBlockFile(scope: !44, file: !1, discriminator: 1)
!117 = !DILocation(line: 206, column: 23, scope: !42)
!118 = !DILocation(line: 206, column: 21, scope: !42)
!119 = !DILocation(line: 206, column: 20, scope: !42)
!120 = !DILocation(line: 206, column: 16, scope: !42)
!121 = !DILocation(line: 209, column: 23, scope: !42)
!122 = !DILocalVariable(name: "p", arg: 2, scope: !123, file: !1, line: 70, type: !32)
!123 = distinct !DISubprogram(name: "process_prime", scope: !1, file: !1, line: 70, type: !124, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !28, !32}
!126 = !{!127, !122, !128}
!127 = !DILocalVariable(name: "info", arg: 1, scope: !123, file: !1, line: 70, type: !28)
!128 = !DILocalVariable(name: "max", scope: !123, file: !1, line: 72, type: !34)
!129 = !DILocation(line: 70, column: 45, scope: !123, inlinedAt: !130)
!130 = distinct !DILocation(line: 209, column: 7, scope: !42)
!131 = !DILocation(line: 72, column: 13, scope: !123, inlinedAt: !130)
!132 = !DILocation(line: 73, column: 9, scope: !123, inlinedAt: !130)
!133 = !DILocation(line: 73, column: 11, scope: !123, inlinedAt: !130)
!134 = !{!135, !136, i64 0}
!135 = !{!"prime", !136, i64 0, !137, i64 8, !137, i64 16}
!136 = !{!"int", !56, i64 0}
!137 = !{!"long", !56, i64 0}
!138 = !DILocation(line: 74, column: 25, scope: !123, inlinedAt: !130)
!139 = !DILocalVariable(name: "a", arg: 1, scope: !140, file: !1, line: 57, type: !34)
!140 = distinct !DISubprogram(name: "binvert", scope: !1, file: !1, line: 57, type: !141, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!34, !34}
!143 = !{!139, !144, !145}
!144 = !DILocalVariable(name: "x", scope: !140, file: !1, line: 59, type: !34)
!145 = !DILocalVariable(name: "y", scope: !146, file: !1, line: 62, type: !34)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 61, column: 5)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 60, column: 3)
!148 = distinct !DILexicalBlock(scope: !140, file: !1, line: 60, column: 3)
!149 = !DILocation(line: 57, column: 20, scope: !140, inlinedAt: !150)
!150 = distinct !DILocation(line: 74, column: 16, scope: !123, inlinedAt: !130)
!151 = !DILocation(line: 59, column: 28, scope: !140, inlinedAt: !150)
!152 = !DILocation(line: 59, column: 17, scope: !140, inlinedAt: !150)
!153 = !DILocation(line: 59, column: 13, scope: !140, inlinedAt: !150)
!154 = !DILocation(line: 60, column: 3, scope: !140, inlinedAt: !150)
!155 = !DILocation(line: 62, column: 28, scope: !146, inlinedAt: !150)
!156 = !DILocation(line: 62, column: 25, scope: !146, inlinedAt: !150)
!157 = !DILocation(line: 62, column: 17, scope: !146, inlinedAt: !150)
!158 = !DILocation(line: 63, column: 13, scope: !159, inlinedAt: !150)
!159 = distinct !DILexicalBlock(scope: !146, file: !1, line: 63, column: 11)
!160 = distinct !{!160, !161, !162}
!161 = !DILocation(line: 60, column: 3, scope: !148)
!162 = !DILocation(line: 66, column: 5, scope: !148)
!163 = !DILocation(line: 209, column: 41, scope: !42)
!164 = !DILocation(line: 74, column: 9, scope: !123, inlinedAt: !130)
!165 = !DILocation(line: 74, column: 14, scope: !123, inlinedAt: !130)
!166 = !{!135, !137, i64 8}
!167 = !DILocation(line: 75, column: 19, scope: !123, inlinedAt: !130)
!168 = !DILocation(line: 75, column: 9, scope: !123, inlinedAt: !130)
!169 = !DILocation(line: 75, column: 13, scope: !123, inlinedAt: !130)
!170 = !{!135, !137, i64 16}
!171 = !DILocation(line: 211, column: 18, scope: !172)
!172 = distinct !DILexicalBlock(scope: !42, file: !1, line: 211, column: 7)
!173 = !DILocation(line: 211, column: 21, scope: !172)
!174 = !DILocation(line: 211, column: 25, scope: !172)
!175 = !DILocation(line: 207, column: 16, scope: !42)
!176 = !DILocation(line: 211, column: 29, scope: !177)
!177 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 1)
!178 = distinct !DILexicalBlock(scope: !172, file: !1, line: 211, column: 7)
!179 = !DILocation(line: 211, column: 31, scope: !177)
!180 = !DILocation(line: 211, column: 7, scope: !181)
!181 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 1)
!182 = !DILocation(line: 212, column: 9, scope: !178)
!183 = !DILocation(line: 212, column: 18, scope: !178)
!184 = !{!56, !56, i64 0}
!185 = !DILocation(line: 211, column: 40, scope: !186)
!186 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 2)
!187 = distinct !{!187, !188, !189}
!188 = !DILocation(line: 211, column: 7, scope: !172)
!189 = !DILocation(line: 212, column: 20, scope: !172)
!190 = !DILocation(line: 214, column: 14, scope: !191)
!191 = !DILexicalBlockFile(scope: !42, file: !1, discriminator: 1)
!192 = !DILocation(line: 214, column: 18, scope: !191)
!193 = !DILocation(line: 214, column: 25, scope: !191)
!194 = distinct !{!194, !195, !196}
!195 = !DILocation(line: 204, column: 3, scope: !44)
!196 = !DILocation(line: 216, column: 5, scope: !44)
!197 = !DILocation(line: 214, column: 28, scope: !198)
!198 = !DILexicalBlockFile(scope: !42, file: !1, discriminator: 2)
!199 = !DILocation(line: 214, column: 37, scope: !198)
!200 = !DILocation(line: 214, column: 7, scope: !201)
!201 = !DILexicalBlockFile(scope: !42, file: !1, discriminator: 3)
!202 = !DILocation(line: 110, column: 36, scope: !203, inlinedAt: !220)
!203 = distinct !DISubprogram(name: "output_primes", scope: !1, file: !1, line: 110, type: !204, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !208)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !206, !32}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216}
!209 = !DILocalVariable(name: "primes", arg: 1, scope: !203, file: !1, line: 110, type: !206)
!210 = !DILocalVariable(name: "nprimes", arg: 2, scope: !203, file: !1, line: 110, type: !32)
!211 = !DILocalVariable(name: "i", scope: !203, file: !1, line: 112, type: !32)
!212 = !DILocalVariable(name: "p", scope: !203, file: !1, line: 113, type: !32)
!213 = !DILocalVariable(name: "is_prime", scope: !203, file: !1, line: 114, type: !4)
!214 = !DILocalVariable(name: "wide_uint_bits", scope: !203, file: !1, line: 119, type: !32)
!215 = !DILocalVariable(name: "mask", scope: !203, file: !1, line: 120, type: !34)
!216 = !DILocalVariable(name: "d8", scope: !217, file: !1, line: 129, type: !32)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 128, column: 5)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 127, column: 3)
!219 = distinct !DILexicalBlock(scope: !203, file: !1, line: 127, column: 3)
!220 = distinct !DILocation(line: 218, column: 3, scope: !14)
!221 = !DILocation(line: 110, column: 53, scope: !203, inlinedAt: !220)
!222 = !DILocation(line: 119, column: 12, scope: !203, inlinedAt: !220)
!223 = !DILocation(line: 120, column: 13, scope: !203, inlinedAt: !220)
!224 = !DILocation(line: 124, column: 3, scope: !203, inlinedAt: !220)
!225 = !DILocation(line: 125, column: 3, scope: !203, inlinedAt: !220)
!226 = !DILocation(line: 112, column: 12, scope: !203, inlinedAt: !220)
!227 = !DILocation(line: 113, column: 12, scope: !203, inlinedAt: !220)
!228 = !DILocation(line: 127, column: 24, scope: !229, inlinedAt: !220)
!229 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 1)
!230 = !DILocation(line: 127, column: 3, scope: !231, inlinedAt: !220)
!231 = !DILexicalBlockFile(scope: !219, file: !1, discriminator: 1)
!232 = !DILocation(line: 129, column: 27, scope: !217, inlinedAt: !220)
!233 = !DILocation(line: 129, column: 31, scope: !217, inlinedAt: !220)
!234 = !DILocation(line: 129, column: 25, scope: !217, inlinedAt: !220)
!235 = !DILocation(line: 129, column: 43, scope: !236, inlinedAt: !220)
!236 = !DILexicalBlockFile(scope: !217, file: !1, discriminator: 1)
!237 = !DILocation(line: 129, column: 57, scope: !236, inlinedAt: !220)
!238 = !DILocation(line: 129, column: 71, scope: !236, inlinedAt: !220)
!239 = !DILocation(line: 129, column: 59, scope: !236, inlinedAt: !220)
!240 = !DILocation(line: 129, column: 20, scope: !217, inlinedAt: !220)
!241 = !DILocation(line: 130, column: 15, scope: !242, inlinedAt: !220)
!242 = distinct !DILexicalBlock(scope: !217, file: !1, line: 130, column: 11)
!243 = !DILocation(line: 130, column: 11, scope: !217, inlinedAt: !220)
!244 = !DILocation(line: 131, column: 9, scope: !242, inlinedAt: !220)
!245 = !DILocation(line: 132, column: 7, scope: !217, inlinedAt: !220)
!246 = !DILocation(line: 133, column: 34, scope: !217, inlinedAt: !220)
!247 = !DILocation(line: 133, column: 7, scope: !217, inlinedAt: !220)
!248 = !DILocation(line: 134, column: 7, scope: !217, inlinedAt: !220)
!249 = !DILocation(line: 135, column: 21, scope: !217, inlinedAt: !220)
!250 = !DILocation(line: 127, column: 36, scope: !251, inlinedAt: !220)
!251 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 2)
!252 = distinct !{!252, !253, !254}
!253 = !DILocation(line: 127, column: 3, scope: !219)
!254 = !DILocation(line: 136, column: 5, scope: !219)
!255 = !DILocation(line: 138, column: 3, scope: !203, inlinedAt: !220)
!256 = !DILocation(line: 114, column: 7, scope: !203, inlinedAt: !220)
!257 = !DILocation(line: 146, column: 25, scope: !258, inlinedAt: !220)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 146, column: 15)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 145, column: 9)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 144, column: 7)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 144, column: 7)
!262 = distinct !DILexicalBlock(scope: !203, file: !1, line: 142, column: 5)
!263 = !DILocation(line: 146, column: 27, scope: !258, inlinedAt: !220)
!264 = !DILocation(line: 146, column: 41, scope: !258, inlinedAt: !220)
!265 = !DILocation(line: 146, column: 15, scope: !259, inlinedAt: !220)
!266 = !DILocation(line: 143, column: 9, scope: !262, inlinedAt: !220)
!267 = !DILocation(line: 146, column: 15, scope: !258, inlinedAt: !220)
!268 = distinct !{!268, !269, !270}
!269 = !DILocation(line: 144, column: 7, scope: !261)
!270 = !DILocation(line: 153, column: 9, scope: !261)
!271 = !DILocation(line: 148, column: 29, scope: !272, inlinedAt: !220)
!272 = distinct !DILexicalBlock(scope: !259, file: !1, line: 148, column: 15)
!273 = !DILocation(line: 148, column: 17, scope: !272, inlinedAt: !220)
!274 = !DILocation(line: 148, column: 47, scope: !272, inlinedAt: !220)
!275 = !DILocation(line: 148, column: 34, scope: !272, inlinedAt: !220)
!276 = !DILocation(line: 144, column: 44, scope: !277, inlinedAt: !220)
!277 = !DILexicalBlockFile(scope: !260, file: !1, discriminator: 2)
!278 = !DILocation(line: 148, column: 15, scope: !259, inlinedAt: !220)
!279 = !DILocation(line: 157, column: 3, scope: !203, inlinedAt: !220)
!280 = !DILocation(line: 220, column: 3, scope: !14)
!281 = !DILocation(line: 221, column: 3, scope: !14)
!282 = !DILocation(line: 223, column: 15, scope: !283)
!283 = distinct !DILexicalBlock(scope: !14, file: !1, line: 223, column: 7)
!284 = !DILocation(line: 223, column: 7, scope: !283)
!285 = !DILocation(line: 223, column: 25, scope: !286)
!286 = !DILexicalBlockFile(scope: !283, file: !1, discriminator: 1)
!287 = !DILocation(line: 223, column: 23, scope: !283)
!288 = !DILocation(line: 223, column: 7, scope: !14)
!289 = !DILocation(line: 225, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !1, line: 224, column: 5)
!291 = !{!136, !136, i64 0}
!292 = !DILocation(line: 225, column: 7, scope: !293)
!293 = !DILexicalBlockFile(scope: !290, file: !1, discriminator: 1)
!294 = !DILocation(line: 225, column: 7, scope: !295)
!295 = !DILexicalBlockFile(scope: !290, file: !1, discriminator: 2)
!296 = !DILocation(line: 226, column: 7, scope: !290)
!297 = !DILocation(line: 230, column: 1, scope: !14)
!298 = distinct !DISubprogram(name: "print_wide_uint", scope: !1, file: !1, line: 79, type: !299, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !34, !4, !32}
!301 = !{!302, !303, !304, !305, !306, !307, !308}
!302 = !DILocalVariable(name: "n", arg: 1, scope: !298, file: !1, line: 79, type: !34)
!303 = !DILocalVariable(name: "nesting", arg: 2, scope: !298, file: !1, line: 79, type: !4)
!304 = !DILocalVariable(name: "wide_uint_bits", arg: 3, scope: !298, file: !1, line: 79, type: !32)
!305 = !DILocalVariable(name: "hex_digits_per_literal", scope: !298, file: !1, line: 84, type: !4)
!306 = !DILocalVariable(name: "bits_per_literal", scope: !298, file: !1, line: 85, type: !4)
!307 = !DILocalVariable(name: "remainder", scope: !298, file: !1, line: 87, type: !32)
!308 = !DILocalVariable(name: "needs_parentheses", scope: !309, file: !1, line: 91, type: !4)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 90, column: 5)
!310 = distinct !DILexicalBlock(scope: !298, file: !1, line: 89, column: 7)
!311 = !DILocation(line: 79, column: 28, scope: !298)
!312 = !DILocation(line: 79, column: 35, scope: !298)
!313 = !DILocation(line: 79, column: 53, scope: !298)
!314 = !DILocation(line: 84, column: 7, scope: !298)
!315 = !DILocation(line: 85, column: 7, scope: !298)
!316 = !DILocation(line: 87, column: 24, scope: !298)
!317 = !DILocation(line: 87, column: 12, scope: !298)
!318 = !DILocation(line: 89, column: 12, scope: !310)
!319 = !DILocation(line: 89, column: 9, scope: !310)
!320 = !DILocation(line: 89, column: 7, scope: !298)
!321 = !DILocation(line: 91, column: 33, scope: !309)
!322 = !DILocation(line: 91, column: 73, scope: !309)
!323 = !DILocation(line: 92, column: 11, scope: !309)
!324 = !DILocation(line: 93, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !309, file: !1, line: 92, column: 11)
!326 = !DILocation(line: 94, column: 55, scope: !309)
!327 = !DILocation(line: 94, column: 7, scope: !309)
!328 = !DILocation(line: 96, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !309, file: !1, line: 95, column: 11)
!330 = !DILocation(line: 97, column: 7, scope: !309)
!331 = !DILocation(line: 98, column: 5, scope: !309)
!332 = !DILocation(line: 99, column: 12, scope: !333)
!333 = distinct !DILexicalBlock(scope: !310, file: !1, line: 99, column: 12)
!334 = !DILocation(line: 99, column: 12, scope: !310)
!335 = !DILocation(line: 101, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !1, line: 100, column: 5)
!337 = !DILocation(line: 103, column: 28, scope: !336)
!338 = !DILocation(line: 103, column: 33, scope: !336)
!339 = !DILocation(line: 103, column: 53, scope: !336)
!340 = !DILocation(line: 103, column: 57, scope: !336)
!341 = !DILocation(line: 104, column: 5, scope: !336)
!342 = !DILocation(line: 106, column: 3, scope: !298)
!343 = !DILocation(line: 107, column: 1, scope: !298)
