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
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %8, label %4

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %6) #8
  br label %172

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = tail call i64 @strtol(i8* nocapture nonnull %10, i8** null, i32 10) #8
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %172, label %14

; <label>:14:                                     ; preds = %8
  %15 = and i32 %12, 1
  %16 = add i32 %12, -2
  %17 = add i32 %16, %15
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = tail call noalias i8* @malloc(i64 %19) #8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %23, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8
  tail call void @exit(i32 1) #9
  unreachable

; <label>:25:                                     ; preds = %14
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %20, i8 1, i64 %19, i32 1, i1 false)
  %26 = mul nsw i64 %19, 24
  %27 = tail call noalias i8* @malloc(i64 %26) #8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %30, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8
  tail call void @exit(i32 1) #9
  unreachable

; <label>:32:                                     ; preds = %25
  %33 = bitcast i8* %27 to %struct.prime*
  %34 = add i32 %17, 1
  %35 = icmp ugt i32 %34, 2
  br i1 %35, label %36, label %86

; <label>:36:                                     ; preds = %32
  br label %38

; <label>:37:                                     ; preds = %81
  br label %38

; <label>:38:                                     ; preds = %36, %37
  %39 = phi i32 [ %58, %37 ], [ 0, %36 ]
  %40 = phi i64 [ %79, %37 ], [ 0, %36 ]
  %41 = shl i64 %40, 1
  %42 = add i64 %41, 3
  %43 = trunc i64 %42 to i32
  %44 = zext i32 %39 to i64
  %45 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %44, i32 0
  store i32 %43, i32* %45, align 8
  %46 = and i64 %42, 4294967295
  %47 = shl i32 %43, 1
  %48 = and i32 %47, 28
  %49 = lshr i32 -180781647, %48
  %50 = zext i32 %49 to i64
  br label %51

; <label>:51:                                     ; preds = %51, %38
  %52 = phi i64 [ %50, %38 ], [ %55, %51 ]
  %53 = mul i64 %52, %46
  %54 = sub i64 2, %53
  %55 = mul i64 %54, %52
  %56 = icmp eq i64 %55, %52
  br i1 %56, label %57, label %51

; <label>:57:                                     ; preds = %51
  %58 = add i32 %39, 1
  %59 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %44, i32 1
  store i64 %52, i64* %59, align 8
  %60 = udiv i64 -1, %46
  %61 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %44, i32 2
  store i64 %60, i64* %61, align 8
  %62 = mul i32 %43, %43
  %63 = add i32 %62, -3
  %64 = lshr i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %65, %19
  br i1 %66, label %67, label %76

; <label>:67:                                     ; preds = %57
  br label %68

; <label>:68:                                     ; preds = %67, %68
  %69 = phi i64 [ %73, %68 ], [ %65, %67 ]
  %70 = phi i32 [ %72, %68 ], [ %64, %67 ]
  %71 = getelementptr inbounds i8, i8* %20, i64 %69
  store i8 0, i8* %71, align 1
  %72 = add i32 %70, %43
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %73, %19
  br i1 %74, label %68, label %75

; <label>:75:                                     ; preds = %68
  br label %76

; <label>:76:                                     ; preds = %75, %57
  br label %77

; <label>:77:                                     ; preds = %76, %81
  %78 = phi i64 [ %79, %81 ], [ %40, %76 ]
  %79 = add i64 %78, 1
  %80 = icmp ult i64 %79, %19
  br i1 %80, label %81, label %85

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds i8, i8* %20, i64 %79
  %83 = load i8, i8* %82, align 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %77, label %37

; <label>:85:                                     ; preds = %77
  br label %86

; <label>:86:                                     ; preds = %85, %32
  %87 = phi i32 [ 0, %32 ], [ %58, %85 ]
  %88 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #8
  %89 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 64) #8
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %126, label %91

; <label>:91:                                     ; preds = %86
  %92 = zext i32 %87 to i64
  br label %93

; <label>:93:                                     ; preds = %111, %91
  %94 = phi i64 [ 0, %91 ], [ %122, %111 ]
  %95 = phi i32 [ 2, %91 ], [ %121, %111 ]
  %96 = trunc i64 %94 to i32
  %97 = add i32 %96, 8
  %98 = icmp ult i32 %97, %87
  br i1 %98, label %102, label %99

; <label>:99:                                     ; preds = %93
  %100 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %94, i32 0
  %101 = load i32, i32* %100, align 8
  br label %111

; <label>:102:                                    ; preds = %93
  %103 = zext i32 %97 to i64
  %104 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %103, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %94, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub i32 %105, %107
  %109 = icmp ugt i32 %108, 255
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %102
  tail call void @abort() #9
  unreachable

; <label>:111:                                    ; preds = %102, %99
  %112 = phi i32* [ %100, %99 ], [ %106, %102 ]
  %113 = phi i32 [ %101, %99 ], [ %107, %102 ]
  %114 = phi i32 [ 255, %99 ], [ %108, %102 ]
  %115 = sub i32 %113, %95
  %116 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %114) #8
  %117 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %94, i32 1
  %118 = load i64, i64* %117, align 8
  tail call fastcc void @print_wide_uint(i64 %118, i32 0, i32 64) #8
  %119 = load i32, i32* %112, align 8
  %120 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %119) #8
  %121 = load i32, i32* %112, align 8
  %122 = add nuw nsw i64 %94, 1
  %123 = icmp ult i64 %122, %92
  br i1 %123, label %93, label %124

; <label>:124:                                    ; preds = %111
  %125 = add i32 %121, 2
  br label %126

; <label>:126:                                    ; preds = %124, %86
  %127 = phi i32 [ 4, %86 ], [ %125, %124 ]
  %128 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #8
  %129 = bitcast i8* %27 to i32*
  %130 = load i32, i32* %129, align 8
  %131 = mul i32 %130, %130
  %132 = icmp ugt i32 %131, %127
  br i1 %132, label %158, label %133

; <label>:133:                                    ; preds = %126
  br label %137

; <label>:134:                                    ; preds = %146
  %135 = add i32 %138, 2
  %136 = icmp ugt i32 %131, %135
  br i1 %136, label %157, label %137

; <label>:137:                                    ; preds = %133, %134
  %138 = phi i32 [ %135, %134 ], [ %127, %133 ]
  %139 = zext i32 %138 to i64
  br label %146

; <label>:140:                                    ; preds = %146
  %141 = zext i32 %155 to i64
  %142 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %141, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = mul i32 %143, %143
  %145 = icmp ugt i32 %144, %138
  br i1 %145, label %156, label %146

; <label>:146:                                    ; preds = %140, %137
  %147 = phi i64 [ 0, %137 ], [ %141, %140 ]
  %148 = phi i32 [ 0, %137 ], [ %155, %140 ]
  %149 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %147, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = mul i64 %150, %139
  %152 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %147, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ugt i64 %151, %153
  %155 = add i32 %148, 1
  br i1 %154, label %140, label %134

; <label>:156:                                    ; preds = %140
  br label %158

; <label>:157:                                    ; preds = %134
  br label %158

; <label>:158:                                    ; preds = %157, %156, %126
  %159 = phi i32 [ %127, %126 ], [ %138, %156 ], [ %135, %157 ]
  %160 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %159) #8
  tail call void @free(i8* %20) #8
  tail call void @free(i8* nonnull %27) #8
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %162 = tail call i32 @ferror(%struct._IO_FILE* %161) #8
  %163 = tail call i32 @fclose(%struct._IO_FILE* %161)
  %164 = sub i32 0, %163
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %172, label %166

; <label>:166:                                    ; preds = %158
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = tail call i32* @__errno_location() #1
  %169 = load i32, i32* %168, align 4
  %170 = tail call i8* @strerror(i32 %169) #8
  %171 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %167, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %170) #8
  br label %172

; <label>:172:                                    ; preds = %158, %8, %166, %4
  %173 = phi i32 [ 1, %4 ], [ 1, %166 ], [ 0, %8 ], [ 0, %158 ]
  ret i32 %173
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
define internal fastcc void @print_wide_uint(i64, i32, i32) unnamed_addr #0 {
  %4 = trunc i64 %0 to i32
  %5 = and i32 %4, 268435455
  %6 = zext i32 %5 to i64
  %7 = icmp eq i64 %6, %0
  br i1 %7, label %20, label %8

; <label>:8:                                      ; preds = %3
  %9 = lshr i64 %0, 28
  %10 = icmp ugt i64 %0, 72057594037927935
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #8
  %13 = add nsw i32 %1, 1
  tail call fastcc void @print_wide_uint(i64 %9, i32 %13, i32 %2)
  %14 = add nsw i32 %1, 3
  %15 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #8
  br label %18

; <label>:16:                                     ; preds = %8
  %17 = add nsw i32 %1, 1
  tail call fastcc void @print_wide_uint(i64 %9, i32 %17, i32 %2)
  br label %18

; <label>:18:                                     ; preds = %16, %11
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 28) #8
  br label %28

; <label>:20:                                     ; preds = %3
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %20
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #8
  %24 = add i32 %2, -1
  %25 = urem i32 %24, 28
  %26 = and i32 %25, 3
  %27 = add nuw nsw i32 %26, 1
  br label %28

; <label>:28:                                     ; preds = %20, %22, %18
  %29 = phi i32 [ 7, %18 ], [ %27, %22 ], [ 7, %20 ]
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %29, i32 %5) #8
  ret void
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
