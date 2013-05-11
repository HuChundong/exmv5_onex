.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/tracker/ObjectTracker$Visitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;,
        Landroid/graphics/Bitmap$BitmapStackTrace;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static sBitmapSize:I

.field private static volatile sDefaultDensity:I

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;

.field private static sStackTraces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap$BitmapStackTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static sZygoteBitmapSize:I


# instance fields
.field private mBitmapSize:I

.field public mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private mInUse:Z

.field private final mIsMutable:Z

.field private mIsPreloading:Z

.field private mIsRestorable:Z

.field private mLayoutBounds:[I

.field public final mNativeBitmap:I

.field private mNativeBitmapFreed:Z

.field private mNinePatchChunk:[B

.field private mPixelsIsAllocated:Z

.field private mRecycled:Z

.field private mRestorePolicyInfo:Ljava/lang/String;

.field private mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 95
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    .line 105
    sput v1, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 106
    sput v1, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    .line 1459
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BZ[BI)V
    .locals 7
    .parameter "nativeBitmap"
    .parameter "buffer"
    .parameter "isMutable"
    .parameter "ninePatchChunk"
    .parameter "density"

    .prologue
    .line 277
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Bitmap;-><init>(I[BZ[B[II)V

    .line 278
    return-void
.end method

.method constructor <init>(I[BZ[B[II)V
    .locals 7
    .parameter "nativeBitmap"
    .parameter "buffer"
    .parameter "isMutable"
    .parameter "ninePatchChunk"
    .parameter "layoutBounds"
    .parameter "density"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v4, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 80
    iput v4, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 84
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    sput v4, Landroid/graphics/Bitmap;->sDefaultDensity:I

    iput v4, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 92
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mInUse:Z

    .line 94
    iput-object v5, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 98
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    .line 99
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    .line 100
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mIsPreloading:Z

    .line 102
    iput-object v5, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    .line 104
    iput v6, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    .line 119
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "internal error: native bitmap is 0"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :cond_0
    iput-object p2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 296
    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    .line 297
    new-instance v4, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {v4, p1}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(I)V

    iput-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    .line 299
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 300
    iput-object p4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 301
    iput-object p5, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    .line 302
    if-ltz p6, :cond_1

    .line 303
    iput p6, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 307
    :cond_1
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 308
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmapSize()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    if-le v4, v5, :cond_6

    .line 309
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 310
    .local v1, elems:[Ljava/lang/StackTraceElement;
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 311
    .local v3, items:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v4, "Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    const-string v4, " Bytes, Width: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v4, " , Height: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    const-string v4, " , Hash code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    const-string v4, "\n This bitmap was created in:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 322
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 323
    add-int/lit8 v4, v2, 0x1

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_3
    new-instance v4, Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/Bitmap$BitmapStackTrace;-><init>(Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v4, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 326
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 327
    sget-object v5, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 328
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v4, :cond_4

    .line 329
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    sput-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    .line 330
    :cond_4
    sget-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v6, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 331
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_5
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v4, :cond_6

    .line 335
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-object v5, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    .line 340
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #elems:[Ljava/lang/StackTraceElement;
    .end local v2           #i:I
    .end local v3           #items:[Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    .line 341
    sget-object v5, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 342
    :try_start_1
    iget-boolean v4, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-nez v4, :cond_7

    .line 343
    sget v4, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v6, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v4, v6

    sput v4, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 344
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    .line 346
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 347
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget v5, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapSize(I)V

    .line 348
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v5, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    .line 351
    return-void

    .line 331
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #elems:[Ljava/lang/StackTraceElement;
    .restart local v2       #i:I
    .restart local v3       #items:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 346
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #elems:[Ljava/lang/StackTraceElement;
    .end local v2           #i:I
    .end local v3           #items:[Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$420(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    sub-int/2addr v0, p0

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    return v0
.end method

.method static synthetic access$500(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1354
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1355
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1361
    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "offset"
    .parameter "stride"
    .parameter "pixels"

    .prologue
    .line 1377
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1378
    if-gez p3, :cond_0

    .line 1379
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1381
    :cond_0
    if-gez p4, :cond_1

    .line 1382
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1384
    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1385
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1388
    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1389
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1392
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    .line 1393
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1395
    :cond_4
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 1396
    .local v0, lastScanline:I
    array-length v1, p7

    .line 1397
    .local v1, length:I
    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5

    if-ltz v0, :cond_5

    add-int v2, v0, p3

    if-le v2, v1, :cond_6

    .line 1400
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1402
    :cond_6
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 521
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 548
    if-gtz p0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    if-gtz p1, :cond_1

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 533
    if-gez p0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    if-gez p1, :cond_1

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 925
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "hasAlpha"

    .prologue
    .line 942
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 943
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_1
    if-nez p2, :cond_2

    .line 947
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, p2, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p0

    move v3, p0

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 951
    .local v7, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p2, v0, :cond_3

    if-nez p3, :cond_3

    .line 952
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 953
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p3}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 960
    :cond_3
    return-object v7
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 778
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 795
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"
    .parameter "filter"

    .prologue
    .line 904
    if-eqz p5, :cond_0

    .line 905
    iget v5, p5, Landroid/graphics/Matrix;->native_instance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 912
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 908
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 984
    invoke-static {p3, p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 985
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 986
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p2

    add-int v7, p1, v0

    .line 989
    .local v7, lastScanline:I
    array-length v8, p0

    .line 990
    .local v8, length:I
    if-ltz p1, :cond_1

    add-int v0, p1, p3

    if-gt v0, v8, :cond_1

    if-ltz v7, :cond_1

    add-int v0, v7, p3

    if-le v0, v8, :cond_2

    .line 992
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 994
    :cond_2
    if-lez p3, :cond_3

    if-gtz p4, :cond_4

    .line 995
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_4
    iget v5, p5, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 1017
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 734
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 735
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 736
    .local v4, height:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v5, v0, v2

    .line 737
    .local v5, sx:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v6, v0, v2

    .local v6, sy:F
    move-object v0, p0

    move v2, v1

    move v7, p3

    .line 765
    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeCreateScaledBitmap(Landroid/graphics/Bitmap;IIIIFFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 769
    .local v8, b:Landroid/graphics/Bitmap;
    return-object v8
.end method

.method private static dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    .locals 8
    .parameter "stackTrace"
    .parameter "unrecycled"

    .prologue
    .line 1576
    if-eqz p1, :cond_0

    .line 1577
    const-string v5, "Bitmap"

    const-string v6, "Detect unrecycled bitmap.\n"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v2

    .line 1581
    .local v2, items:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 1582
    .local v4, str:Ljava/lang/String;
    const-string v5, "Bitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1579
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #items:[Ljava/lang/String;
    .end local v3           #len$:I
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    const-string v5, "Bitmap"

    const-string v6, "Detect out of memory. Dump bitmap stack trace\n"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1583
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #items:[Ljava/lang/String;
    .restart local v3       #len$:I
    :cond_1
    const-string v5, "Bitmap"

    const-string v6, "_"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    return-void
.end method

.method public static dumpStackTrace(Ljava/io/PrintWriter;)V
    .locals 10
    .parameter "pw"

    .prologue
    .line 1608
    sget-object v8, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1609
    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v7, :cond_0

    .line 1610
    const-string v7, "      None"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    monitor-exit v8

    .line 1621
    :goto_0
    return-void

    .line 1613
    :cond_0
    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1614
    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 1615
    .local v5, stackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;
    invoke-virtual {v5}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v3

    .line 1616
    .local v3, items:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 1617
    .local v6, str:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1618
    .end local v6           #str:Ljava/lang/String;
    :cond_1
    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1620
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #stackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static dumpStackTraces()V
    .locals 4

    .prologue
    .line 1591
    const-string v2, "Bitmap"

    const-string v3, "dumpStackTraces"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    sget-object v3, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1593
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v2, :cond_0

    .line 1594
    monitor-exit v3

    .line 1600
    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    return-void

    .line 1595
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1596
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 1597
    .local v1, stackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    goto :goto_1

    .line 1599
    .end local v1           #stackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static freeNativeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 463
    if-nez p0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->freeNativeBitmap()V

    goto :goto_0
.end method

.method static getDefaultDensity()I
    .locals 1

    .prologue
    .line 224
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    .line 225
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 228
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_0
.end method

.method public static getTotalBitmapSize()I
    .locals 3

    .prologue
    .line 115
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    sget v2, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeCompress_userdata(IIILjava/io/OutputStream;[BLjava/lang/String;[BI)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateScaledBitmap(Landroid/graphics/Bitmap;IIIIFFZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(I)I
.end method

.method private static native nativeGetPixel(III)I
.end method

.method private static native nativeGetPixels(I[IIIIIII)V
.end method

.method private static native nativeGetStreamLength(I)I
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHeight(I)I
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeRecycle(I)V
.end method

.method private static native nativeReleasePixel(I)Z
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetHasAlpha(IZ)V
.end method

.method private static native nativeSetPixel(IIII)V
.end method

.method private static native nativeSetPixels(I[IIIIIII)V
.end method

.method private static native nativeWidth(I)I
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2
    .parameter "size"
    .parameter "sdensity"
    .parameter "tdensity"

    .prologue
    .line 1224
    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_1

    .line 1229
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_0
.end method

.method public static setDefaultDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 220
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 221
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 3
    .parameter "format"
    .parameter "quality"
    .parameter "stream"

    .prologue
    .line 1074
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1076
    if-nez p3, :cond_0

    .line 1077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1079
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 1080
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;Ljava/lang/String;[BI)Z
    .locals 9
    .parameter "format"
    .parameter "quality"
    .parameter "stream"
    .parameter "chunktag"
    .parameter "userdata"
    .parameter "len"

    .prologue
    .line 1093
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1095
    if-nez p3, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1098
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 1099
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-eq v0, p1, :cond_3

    .line 1103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "format must be PNG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_3
    array-length v0, p5

    if-le p6, v0, :cond_4

    .line 1107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out of array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1110
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    .line 1111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chung tag\'s length must be 4.Otherwise the PC\'s imageviewer can\'t see it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mInUse:Z

    .line 1115
    const/4 v8, 0x0

    .line 1117
    .local v8, result:Z
    :try_start_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v4, v2, [B

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeCompress_userdata(IIILjava/io/OutputStream;[BLjava/lang/String;[BI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mInUse:Z

    .line 1122
    return v8

    .line 1120
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Bitmap;->mInUse:Z

    throw v0
.end method

.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;[BI)Z
    .locals 11
    .parameter "format"
    .parameter "quality"
    .parameter "szAbolutePath"
    .parameter "chunktag"
    .parameter "userdata"
    .parameter "len"

    .prologue
    .line 1131
    const/4 v10, 0x0

    .line 1132
    .local v10, outStream:Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 1133
    .local v7, bRes:Z
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v9, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    .end local v10           #outStream:Ljava/io/OutputStream;
    .local v3, outStream:Ljava/io/OutputStream;
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;Ljava/lang/String;[BI)Z

    move-result v7

    .line 1138
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1139
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1140
    const-string v0, "Bitmap"

    const-string v1, "Save Done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1145
    :goto_0
    return v7

    .line 1141
    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v10       #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v8

    move-object v3, v10

    .line 1142
    .end local v10           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    .local v8, e:Ljava/lang/Exception;
    :goto_1
    const-string v0, "Bitmap"

    const-string v1, "Error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1141
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "config"
    .parameter "isMutable"

    .prologue
    .line 711
    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 712
    iget v1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 713
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 714
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 716
    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 8
    .parameter "src"

    .prologue
    .line 674
    const-string v6, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v6}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 678
    .local v4, elements:I
    instance-of v6, p1, Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_0

    .line 679
    const/4 v5, 0x0

    .line 688
    .local v5, shift:I
    :goto_0
    int-to-long v6, v4

    shl-long v2, v6, v5

    .line 689
    .local v2, bufferBytes:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    int-to-long v0, v6

    .line 691
    .local v0, bitmapBytes:J
    cmp-long v6, v2, v0

    if-gez v6, :cond_3

    .line 692
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 680
    .end local v0           #bitmapBytes:J
    .end local v2           #bufferBytes:J
    .end local v5           #shift:I
    :cond_0
    instance-of v6, p1, Ljava/nio/ShortBuffer;

    if-eqz v6, :cond_1

    .line 681
    const/4 v5, 0x1

    .restart local v5       #shift:I
    goto :goto_0

    .line 682
    .end local v5           #shift:I
    :cond_1
    instance-of v6, p1, Ljava/nio/IntBuffer;

    if-eqz v6, :cond_2

    .line 683
    const/4 v5, 0x2

    .restart local v5       #shift:I
    goto :goto_0

    .line 685
    .end local v5           #shift:I
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "unsupported Buffer subclass"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 695
    .restart local v0       #bitmapBytes:J
    .restart local v2       #bufferBytes:J
    .restart local v5       #shift:I
    :cond_3
    iget v6, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v6, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    .line 696
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 11
    .parameter "dst"

    .prologue
    .line 640
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 642
    .local v2, elements:I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 643
    const/4 v6, 0x0

    .line 652
    .local v6, shift:I
    :goto_0
    int-to-long v7, v2

    shl-long v0, v7, v6

    .line 653
    .local v0, bufferSize:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v3, v7

    .line 655
    .local v3, pixelSize:J
    cmp-long v7, v0, v3

    if-gez v7, :cond_3

    .line 656
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 644
    .end local v0           #bufferSize:J
    .end local v3           #pixelSize:J
    .end local v6           #shift:I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 645
    const/4 v6, 0x1

    .restart local v6       #shift:I
    goto :goto_0

    .line 646
    .end local v6           #shift:I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 647
    const/4 v6, 0x2

    .restart local v6       #shift:I
    goto :goto_0

    .line 649
    .end local v6           #shift:I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 659
    .restart local v0       #bufferSize:J
    .restart local v3       #pixelSize:J
    .restart local v6       #shift:I
    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    .line 662
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 663
    .local v5, position:I
    int-to-long v7, v5

    shr-long v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 664
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 665
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1483
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1292
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 1297
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1506
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "paint"
    .parameter "offsetXY"

    .prologue
    .line 1535
    const-string v2, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1536
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    .line 1537
    .local v1, nativePaint:I
    :goto_0
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1538
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1539
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to extractAlpha on Bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1536
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #nativePaint:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1541
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #nativePaint:I
    :cond_1
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1542
    return-object v0
.end method

.method public freeNativeBitmap()V
    .locals 6

    .prologue
    .line 469
    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mInUse:Z

    if-nez v2, :cond_2

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 473
    .local v0, startTime:J
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2}, Landroid/graphics/Bitmap;->nativeReleasePixel(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    .line 478
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    sget-object v3, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 480
    :try_start_0
    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 481
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v4, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 482
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_1
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmapDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    const-string v2, "Bitmap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "free path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Native Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v4}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Native Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v4}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", StreamSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v4}, Landroid/graphics/Bitmap;->nativeGetStreamLength(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v0           #startTime:J
    :cond_2
    :goto_0
    return-void

    .line 482
    .restart local v0       #startTime:J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 488
    :cond_3
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmapDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    const-string v2, "Bitmap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeNativeBitmap failed!! free path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Native Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v4}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Native Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v4}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", StreamSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v4}, Landroid/graphics/Bitmap;->nativeGetStreamLength(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public final getByteCount()I
    .locals 2

    .prologue
    .line 1249
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 1257
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeGenerationId(I)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 1163
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    goto :goto_0
.end method

.method public getLayoutBounds()[I
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    return-object v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1310
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1311
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1312
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(III)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 8
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1338
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1339
    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1342
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1343
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public final getRowBytes()I
    .locals 1

    .prologue
    .line 1241
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .parameter "targetDensity"

    .prologue
    .line 1217
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1179
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "metrics"

    .prologue
    .line 1195
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2
    .parameter "targetDensity"

    .prologue
    .line 1206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "metrics"

    .prologue
    .line 1187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 1158
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    goto :goto_0
.end method

.method public final hasAlpha()Z
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method isRestorable()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    return v0
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 1767
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    .prologue
    .line 1566
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    .line 1567
    return-void
.end method

.method public recycle()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 428
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 433
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapRecycled(Z)V

    .line 435
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    .line 438
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_2
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_4

    .line 443
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_3

    .line 445
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    sub-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    .line 447
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    .line 451
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 453
    iput-object v3, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 454
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)V

    .line 455
    iput-object v3, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 456
    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 458
    :cond_4
    return-void

    .line 438
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 451
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 1551
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmapBuffer([BI)V
    .locals 5
    .parameter "buffer"
    .parameter "decodeTime"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 125
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    if-eqz v0, :cond_4

    .line 126
    if-eqz p1, :cond_7

    .line 127
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-nez v0, :cond_0

    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeBitmap Not Freed before setBitmapBuffer mBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-eqz v0, :cond_3

    .line 129
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->track(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    .line 130
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_2
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmapDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Native Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Native Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    .line 146
    :cond_4
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 148
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    sub-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    .line 154
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    .line 156
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    iput-object p1, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 159
    return-void

    .line 134
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 142
    :cond_7
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-eqz v0, :cond_8

    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeBitmap Already Freed before setBitmapBuffer mBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_8
    iput-boolean v3, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    goto :goto_0

    .line 150
    :cond_9
    :try_start_3
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 151
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    goto :goto_1

    .line 156
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 391
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 392
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 1
    .parameter "hasAlpha"

    .prologue
    .line 1283
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 1284
    return-void
.end method

.method public setLayoutBounds([I)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 412
    iput-object p1, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    .line 413
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .parameter "chunk"

    .prologue
    .line 402
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 403
    return-void
.end method

.method public setPixel(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "color"

    .prologue
    .line 1416
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1420
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1421
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(IIII)V

    .line 1422
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 8
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1447
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1451
    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    .line 1457
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1454
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1455
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public setPreloading(Z)V
    .locals 3
    .parameter "isPreloading"

    .prologue
    .line 197
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mIsPreloading:Z

    .line 198
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 199
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    .line 206
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_2
    if-eqz p1, :cond_3

    .line 210
    sget v0, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    iget v1, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v0, v1

    sput v0, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    .line 212
    :cond_3
    return-void

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setRestorable(Z)V
    .locals 1
    .parameter "isRestorable"

    .prologue
    .line 182
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->track(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->remove(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    goto :goto_0
.end method

.method public setRestoreInfo(Ljava/lang/String;)V
    .locals 4
    .parameter "restorePolicyInfo"

    .prologue
    .line 166
    iput-object p1, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n File: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 170
    :cond_0
    return-void
.end method

.method public visit()V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->freeNativeBitmap()V

    .line 263
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 1492
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1493
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1496
    :cond_0
    return-void
.end method
