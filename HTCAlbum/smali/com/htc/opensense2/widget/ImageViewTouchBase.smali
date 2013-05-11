.class public abstract Lcom/htc/opensense2/widget/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# static fields
.field protected static final ALLOW_ZOOM:I = 0x0

.field protected static final MAX_BITMAP_SIZE_RATIO:F = 2.0f

.field protected static final MAX_HQ_SCRREN_SIZE_RATIO:F = 5.0f

.field protected static final MAX_PIXELS_H:F = 1592.0f

.field protected static final MAX_PIXELS_W:F = 2592.0f

.field protected static final MAX_SCRREN_SIZE_RATIO:F = 3.0f

.field protected static final MAX_ZOOM:F = 2.0f

.field protected static final MIN_ZOOM:F = 1.0f

.field static final NORMAL_MODE:I = 0x0

.field static final ONLINE_MODE:I = 0x1

.field protected static final OVER_MAX_ZOOM:I = 0x1

.field protected static final OVER_MIN_ZOOM:I = 0x2

.field public static final STATE_FAILED:S = 0x7s

.field public static final STATE_LOADING:S = 0x6s

.field public static final STATE_SUCCESS:S = 0x8s

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"

.field static final TOLERANCE_ZOOM:F = 0.2f

.field protected static final TOLERANCE_ZOOM_IN:F = 1.2f

.field protected static final TOLERANCE_ZOOM_OUT:F = 0.8f

.field protected static final UPBOUND_RATIO:F = 10.0f

.field protected static final VIEW_BEST_FIT:I = 0x3

.field protected static final VIEW_BEST_FIT_L:I = 0x1

.field protected static final VIEW_BEST_FIT_P:I = 0x2

.field protected static final VIEW_NORMAL:I = 0x0

.field protected static final ZOOM_IN_STEP:F = 1.2f

.field protected static final ZOOM_OUT_STEP:F = 0.8f

.field static sNewZoomControl:Z = false

.field static final sPanRate:F = 7.0f

.field static final sScaleRate:F = 1.2f


# instance fields
.field private final USE_PERFECT_FIT_OPTIMIZATION:Z

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected mBaseMinZoom:F

.field protected mBitmapDisplayed:Landroid/graphics/Bitmap;

.field protected mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

.field protected mBitmapIsThumbnail:Z

.field protected mBitmapOriH:I

.field protected mBitmapOriW:I

.field protected mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mDisplayMatrixBackup:Landroid/graphics/Matrix;

.field private mDoubleTapZoom:F

.field protected mFullBitmap:Landroid/graphics/Bitmap;

.field public mG1Matrix:Landroid/graphics/Matrix;

.field protected mHQLoaded:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIsZooming:Z

.field protected mLastZoomCenterX:F

.field protected mLastZoomCenterY:F

.field private mMatrixValues:[F

.field private mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPerfectFitBitmap:Landroid/graphics/Bitmap;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I

.field protected mThumbBitmap:Landroid/graphics/Bitmap;

.field private mUseBestFit:Z

.field protected mViewMode:I

.field private mZoomStatus:I

.field private mZoomStep:I

.field private mode:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->sNewZoomControl:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 586
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->USE_PERFECT_FIT_OPTIMIZATION:Z

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mG1Matrix:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMatrixValues:[F

    .line 75
    iput-boolean v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHQLoaded:Z

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    .line 96
    iput v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisWidth:I

    iput v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisHeight:I

    .line 101
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapOriH:I

    .line 102
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapOriW:I

    .line 127
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 136
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    .line 140
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    .line 142
    iput v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    .line 143
    iput v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    .line 148
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    .line 159
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mode:I

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 587
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->init()V

    .line 588
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 591
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->USE_PERFECT_FIT_OPTIMIZATION:Z

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mG1Matrix:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMatrixValues:[F

    .line 75
    iput-boolean v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHQLoaded:Z

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    .line 96
    iput v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisWidth:I

    iput v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisHeight:I

    .line 101
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapOriH:I

    .line 102
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapOriW:I

    .line 127
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 136
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    .line 140
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    .line 142
    iput v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    .line 143
    iput v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    .line 148
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    .line 159
    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mode:I

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 592
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->init()V

    .line 593
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/opensense2/widget/ImageViewTouchBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I

    return p1
.end method

.method static synthetic access$008(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I

    return v0
.end method

.method private describe(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 819
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 820
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    const-string v1, "%08x: RECYCLED"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 823
    :cond_1
    const-string v1, "%08x: LIVE"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string v1, "%d x %d (size == %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 596
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 597
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 598
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 599
    return-void
.end method

.method private static mapRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "matrix"
    .parameter "dst"
    .parameter "src"

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method static mapXPoint(Landroid/graphics/Matrix;I)I
    .locals 4
    .parameter "matrix"
    .parameter "point"

    .prologue
    const/4 v3, 0x0

    .line 236
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 237
    .local v0, xy:[F
    int-to-float v1, p1

    aput v1, v0, v3

    .line 238
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 239
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 240
    aget v1, v0, v3

    float-to-int v1, v1

    return v1
.end method

.method private onZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mIsZooming:Z

    .line 811
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 814
    :cond_0
    return-void
.end method

.method private static translatePoint(Landroid/graphics/Matrix;[F)V
    .locals 0
    .parameter "matrix"
    .parameter "xy"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 225
    return-void
.end method

.method private zoomAnimationByFrame(FIIIIIIFI)V
    .locals 12
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "cx"
    .parameter "cy"
    .parameter "cx2"
    .parameter "cy2"
    .parameter "currScale"
    .parameter "stepFlow"

    .prologue
    .line 2038
    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;

    move-object v1, p0

    move/from16 v2, p6

    move/from16 v3, p4

    move/from16 v4, p9

    move/from16 v5, p7

    move/from16 v6, p5

    move/from16 v7, p8

    move v8, p1

    move v9, p2

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;-><init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;IIIIIFFII)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2078
    return-void
.end method

.method private zoomAnimationByTime(FIIIIIIFF)V
    .locals 15
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "cx"
    .parameter "cy"
    .parameter "cx2"
    .parameter "cy2"
    .parameter "currScale"
    .parameter "durationMs"

    .prologue
    .line 2144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2145
    .local v4, startTime:J
    const-string v0, "Justin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before zoom in mat "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v2

    .line 2149
    .local v2, oldScale:F
    iget-object v14, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;

    move-object v1, p0

    move/from16 v3, p9

    move/from16 v6, p6

    move/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p5

    move/from16 v10, p8

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;-><init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;FFJIIIIFFII)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2201
    return-void
.end method


# virtual methods
.method protected afterZoomAnimation(FF)V
    .locals 0
    .parameter "atX"
    .parameter "atY"

    .prologue
    .line 1140
    return-void
.end method

.method protected beginZoomAnimation()V
    .locals 0

    .prologue
    .line 1136
    return-void
.end method

.method protected calculateZoomRatio(FFFF)V
    .locals 10
    .parameter "vw"
    .parameter "vh"
    .parameter "bw"
    .parameter "bh"

    .prologue
    const/high16 v9, 0x4040

    const/high16 v8, 0x4020

    const/high16 v7, 0x4000

    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, bTinyBmp:Z
    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapOriW:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapOriH:I

    if-nez v6, :cond_2

    .line 980
    :cond_0
    div-float v6, p1, v7

    cmpg-float v6, p3, v6

    if-gez v6, :cond_1

    div-float v6, p2, v7

    cmpg-float v6, p4, v6

    if-gez v6, :cond_1

    .line 981
    const/4 v0, 0x1

    .line 990
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 993
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMinZoom:F

    .line 994
    iput v7, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    .line 995
    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    iput v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    .line 1061
    :goto_1
    const-string v6, "ImageViewTouchBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Touch Image name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bw : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bh : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", MaxZoom ratio : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", BaseMinZoom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMinZoom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", double tap zoom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    return-void

    .line 982
    :cond_2
    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapOriW:I

    int-to-float v6, v6

    cmpg-float v6, v6, p1

    if-gez v6, :cond_1

    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapOriH:I

    int-to-float v6, v6

    cmpg-float v6, v6, p2

    if-gez v6, :cond_1

    .line 983
    const/4 v0, 0x1

    goto :goto_0

    .line 997
    :cond_3
    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    packed-switch v6, :pswitch_data_0

    .line 1009
    move v2, p3

    .line 1010
    .local v2, bww:F
    move v1, p4

    .line 1015
    .local v1, bhh:F
    :goto_2
    div-float v5, p1, v2

    .line 1016
    .local v5, rw:F
    div-float v4, p2, v1

    .line 1017
    .local v4, rh:F
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMinZoom:F

    .line 1022
    const/high16 v6, 0x4522

    div-float v5, v6, v2

    .line 1023
    const/high16 v6, 0x44c7

    div-float v4, v6, v1

    .line 1024
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1031
    .local v3, real:F
    const/high16 v6, 0x4120

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1034
    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMinZoom:F

    div-float v6, v3, v6

    iput v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    .line 1038
    cmpl-float v6, p2, p1

    if-lez v6, :cond_5

    .line 1039
    cmpl-float v6, p3, p4

    if-lez v6, :cond_4

    .line 1040
    iput v9, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    .line 1053
    :goto_3
    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    iget v7, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 1054
    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    const v7, 0x3f99999a

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    goto/16 :goto_1

    .line 999
    .end local v1           #bhh:F
    .end local v2           #bww:F
    .end local v3           #real:F
    .end local v4           #rh:F
    .end local v5           #rw:F
    :pswitch_0
    move v2, p3

    .line 1000
    .restart local v2       #bww:F
    move v1, p4

    .line 1001
    .restart local v1       #bhh:F
    goto :goto_2

    .line 1004
    .end local v1           #bhh:F
    .end local v2           #bww:F
    :pswitch_1
    move v2, p4

    .line 1005
    .restart local v2       #bww:F
    move v1, p3

    .line 1006
    .restart local v1       #bhh:F
    goto :goto_2

    .line 1042
    .restart local v3       #real:F
    .restart local v4       #rh:F
    .restart local v5       #rw:F
    :cond_4
    iput v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_3

    .line 1045
    :cond_5
    cmpg-float v6, p3, p4

    if-gez v6, :cond_6

    .line 1046
    iput v9, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_3

    .line 1048
    :cond_6
    iput v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto :goto_3

    .line 1056
    :cond_7
    iget v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    goto/16 :goto_1

    .line 997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public center(ZZZ)V
    .locals 11
    .parameter "vertical"
    .parameter "horizontal"
    .parameter "animate"

    .prologue
    .line 483
    iget-object v9, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v9, :cond_0

    .line 530
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 488
    .local v4, m:Landroid/graphics/Matrix;
    const/4 v9, 0x2

    new-array v5, v9, [F

    fill-array-data v5, :array_0

    .line 489
    .local v5, topLeft:[F
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    aput v10, v0, v9

    .line 491
    .local v0, botRight:[F
    invoke-static {v4, v5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->translatePoint(Landroid/graphics/Matrix;[F)V

    .line 492
    invoke-static {v4, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->translatePoint(Landroid/graphics/Matrix;[F)V

    .line 494
    const/4 v9, 0x1

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v5, v10

    sub-float v3, v9, v10

    .line 495
    .local v3, height:F
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x0

    aget v10, v5, v10

    sub-float v8, v9, v10

    .line 497
    .local v8, width:F
    const/4 v1, 0x0

    .local v1, deltaX:F
    const/4 v2, 0x0

    .line 499
    .local v2, deltaY:F
    if-eqz p1, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v6

    .line 501
    .local v6, viewHeight:I
    int-to-float v9, v6

    cmpg-float v9, v3, v9

    if-gez v9, :cond_3

    .line 502
    int-to-float v9, v6

    sub-float/2addr v9, v3

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v5, v10

    sub-float v2, v9, v10

    .line 510
    .end local v6           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v7

    .line 512
    .local v7, viewWidth:I
    int-to-float v9, v7

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5

    .line 513
    int-to-float v9, v7

    sub-float/2addr v9, v8

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    const/4 v10, 0x0

    aget v10, v5, v10

    sub-float v1, v9, v10

    .line 521
    .end local v7           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->postTranslate(FF)V

    .line 529
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto :goto_0

    .line 503
    .restart local v6       #viewHeight:I
    :cond_3
    const/4 v9, 0x1

    aget v9, v5, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 504
    const/4 v9, 0x1

    aget v9, v5, v9

    neg-float v2, v9

    goto :goto_1

    .line 505
    :cond_4
    const/4 v9, 0x1

    aget v9, v0, v9

    int-to-float v10, v6

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    sub-float v2, v9, v10

    goto :goto_1

    .line 514
    .end local v6           #viewHeight:I
    .restart local v7       #viewWidth:I
    :cond_5
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 515
    const/4 v9, 0x0

    aget v9, v5, v9

    neg-float v1, v9

    goto :goto_2

    .line 516
    :cond_6
    const/4 v9, 0x0

    aget v9, v0, v9

    int-to-float v10, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 517
    int-to-float v9, v7

    const/4 v10, 0x0

    aget v10, v0, v10

    sub-float v1, v9, v10

    goto :goto_2

    .line 488
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method changeMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 167
    iput p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mode:I

    .line 168
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 358
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->clearBitmaps()V

    .line 359
    return-void
.end method

.method public clearBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 271
    iput-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 274
    iput-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 277
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 278
    return-void
.end method

.method public copyFrom(Lcom/htc/opensense2/widget/ImageViewTouchBase;)V
    .locals 5
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 533
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 534
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 542
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 546
    :cond_0
    iget-object v0, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 547
    iput-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 549
    iget-object v0, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 552
    :cond_1
    iget v0, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    iput v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    .line 553
    iput v4, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    .line 556
    iput-object v3, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 557
    iput-object v3, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 558
    iput-boolean v2, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    .line 559
    iput v4, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 561
    invoke-virtual {p1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 562
    invoke-virtual {p1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 570
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 571
    iget-object v0, p1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 573
    return-void
.end method

.method protected doesScrolling()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 830
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 831
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump ImageViewTouchBase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... mBitmapDisplayed  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->describe(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... mThumbBitmap      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->describe(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... mFullBitmap       = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->describe(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... mPerfectFitBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->describe(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... mIsThumb          = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_0
    return-void
.end method

.method dumpMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "title"
    .parameter "m"

    .prologue
    .line 163
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump matrix - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public forceRecycleBitmaps()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    iput-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    iput-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 332
    :cond_1
    invoke-virtual {p0, v1, v2, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 333
    return-void
.end method

.method getBaseMinZoom()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMinZoom:F

    return v0
.end method

.method getDoubleTapZoom()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDoubleTapZoom:F

    return v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 792
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getMaxZoom()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method protected getRealScale()F
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getSkewX(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 628
    if-eqz p1, :cond_0

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSkewY(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 623
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTranslateX()F
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getTranslateX(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 640
    if-eqz p1, :cond_0

    .line 641
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 642
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTranslateY()F
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getTranslateY(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 634
    if-eqz p1, :cond_0

    .line 635
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 603
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public getZoomStatus()I
    .locals 1

    .prologue
    .line 1131
    iget v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStatus:I

    return v0
.end method

.method public isBitmapRecycled()Z
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1715
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    goto :goto_0
.end method

.method public isDisplayBitmapReady()Z
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullBitmapReady()Z
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHQBitmapReady()Z
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHQLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 203
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomTo(F)V

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 184
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 186
    sub-int v1, p4, p2

    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisWidth:I

    .line 187
    sub-int v1, p5, p3

    iput v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisHeight:I

    .line 189
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 190
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 192
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 199
    :cond_0
    return-void
.end method

.method protected panBy(FF)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1708
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->postTranslate(FF)V

    .line 1709
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->updateImageMatrix()V

    .line 1710
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1705
    return-void
.end method

.method protected reCalculateSupp()V
    .locals 0

    .prologue
    .line 896
    return-void
.end method

.method public recycleBitmap(Z)V
    .locals 3
    .parameter "bIsThumb"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    if-ne v1, p1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    iput-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 354
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 355
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    iput-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public recycleBitmaps()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 282
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recycling mFullBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; this == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    iput-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 297
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 298
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1757
    .local v0, t1:J
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_0

    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 1758
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_1

    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 1759
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_2

    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1760
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMatrixValues:[F

    if-eqz v4, :cond_3

    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mMatrixValues:[F

    .line 1761
    :cond_3
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 1762
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1763
    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 1765
    :cond_4
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 1766
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1767
    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 1769
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 1770
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1771
    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 1773
    :cond_6
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    .line 1774
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1775
    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    .line 1777
    :cond_7
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_8

    .line 1778
    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    .line 1780
    :cond_8
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_9

    .line 1781
    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 1783
    :cond_9
    iget-object v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_a

    .line 1784
    iput-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 1786
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1788
    .local v2, t2:J
    return-void
.end method

.method protected setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 11
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x4000

    .line 659
    if-nez p1, :cond_0

    .line 769
    :goto_0
    return-void

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 665
    .local v6, vw:F
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v5, v7

    .line 666
    .local v5, vh:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v2, v7

    .line 667
    .local v2, bw:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 670
    .local v0, bh:F
    cmpl-float v7, v6, v5

    if-lez v7, :cond_2

    .line 671
    cmpl-float v7, v2, v0

    if-ltz v7, :cond_1

    .line 672
    iput v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    .line 682
    :goto_1
    invoke-virtual {p0, v6, v5, v2, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->calculateZoomRatio(FFFF)V

    .line 694
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 695
    iget v7, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    if-eqz v7, :cond_4

    .line 697
    const/high16 v7, -0x3d4c

    div-float v8, v2, v10

    div-float v9, v0, v10

    invoke-virtual {p2, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 700
    move v3, v2

    .line 701
    .local v3, bww:F
    move v1, v0

    .line 708
    .local v1, bhh:F
    :goto_2
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getBaseMinZoom()F

    move-result v4

    .line 709
    .local v4, scale:F
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 710
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v8, v3, v4

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v9, v1, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 674
    .end local v1           #bhh:F
    .end local v3           #bww:F
    .end local v4           #scale:F
    :cond_1
    iput v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    .line 676
    :cond_2
    cmpl-float v7, v2, v0

    if-lez v7, :cond_3

    .line 677
    iput v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    .line 679
    :cond_3
    iput v8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mViewMode:I

    goto :goto_1

    .line 704
    :cond_4
    move v3, v2

    .line 705
    .restart local v3       #bww:F
    move v1, v0

    .restart local v1       #bhh:F
    goto :goto_2
.end method

.method public setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "bmp"
    .parameter "matrix"

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1734
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    .line 1735
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    .line 1748
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 1749
    iput-object p2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1751
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1752
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1753
    :goto_0
    return-void

    .line 1737
    :cond_1
    if-nez p1, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 1740
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrixBackup:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayedBackup:Landroid/graphics/Bitmap;

    .line 1743
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1744
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "isThumbnail"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 258
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 262
    iput-boolean p2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    .line 263
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V
    .locals 20
    .parameter "bitmap"
    .parameter "resetSupp"
    .parameter "isThumb"

    .prologue
    .line 367
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 369
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "bitmap must not be mPerfectFitBitmap"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 372
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v15

    .line 373
    .local v15, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v14

    .line 375
    .local v14, viewHeight:I
    if-gtz v15, :cond_1

    .line 376
    new-instance v17, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;-><init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;Landroid/graphics/Bitmap;ZZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 467
    :goto_0
    return-void

    .line 385
    :cond_1
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_5

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 401
    :cond_3
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    .line 404
    const/16 v17, 0x1

    invoke-static/range {p1 .. p1}, Lcom/htc/opensense2/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->usePerfectFitBitmap()Z

    move-result v17

    if-nez v17, :cond_7

    .line 407
    sget-object v17, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 456
    :goto_2
    if-eqz p2, :cond_e

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    .line 466
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto :goto_0

    .line 393
    :cond_5
    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 398
    :cond_6
    const-string v17, "ImageViewTouchBase"

    const-string v18, "set Full/HQ(1:1) Image"

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 411
    :cond_7
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 412
    .local v10, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 416
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 417
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_9

    .line 418
    const-string v17, "ImageViewTouchBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "recycling mPerfectFitBitmap "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 421
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisHeight:I

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    .line 423
    :cond_b
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 426
    .local v7, canvas:Landroid/graphics/Canvas;
    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 429
    .local v6, bw:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 430
    .local v5, bh:I
    int-to-float v0, v15

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 431
    .local v16, widthScale:F
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 433
    .local v9, heightScale:F
    cmpl-float v17, v16, v9

    if-lez v17, :cond_c

    .line 434
    int-to-float v0, v15

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v9

    sub-float v17, v17, v18

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    .line 435
    .local v12, translateX:I
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v18, v18, v9

    sub-float v17, v17, v18

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 441
    .local v13, translateY:I
    :goto_4
    new-instance v11, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 442
    .local v11, src:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisWidth:I

    move/from16 v17, v0

    sub-int v17, v17, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThisHeight:I

    move/from16 v18, v0

    sub-int v18, v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v12, v13, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 445
    .local v8, dst:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v11, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mPerfectFitBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 448
    sget-object v17, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 449
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_2

    .line 437
    .end local v8           #dst:Landroid/graphics/Rect;
    .end local v11           #src:Landroid/graphics/Rect;
    .end local v12           #translateX:I
    .end local v13           #translateY:I
    :cond_c
    int-to-float v0, v15

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    .line 438
    .restart local v12       #translateX:I
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .restart local v13       #translateY:I
    goto :goto_4

    .line 452
    .end local v5           #bh:I
    .end local v6           #bw:I
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v9           #heightScale:F
    .end local v10           #matrix:Landroid/graphics/Matrix;
    .end local v12           #translateX:I
    .end local v13           #translateY:I
    .end local v16           #widthScale:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    .line 453
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_2

    .line 460
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->reCalculateSupp()V

    goto/16 :goto_3
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    return-void
.end method

.method public setUseBestFit(Z)V
    .locals 0
    .parameter "bestFit"

    .prologue
    .line 654
    iput-boolean p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mUseBestFit:Z

    .line 655
    return-void
.end method

.method protected smartZoom(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "atX"
    .parameter "atY"
    .parameter "durationMs"

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 1235
    .local v5, oldScale:F
    sub-float v0, p1, v5

    div-float v6, v0, p4

    .line 1236
    .local v6, incrementPerMs:F
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_0

    .line 1238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1245
    .local v3, startTime:J
    iget-object v9, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$3;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/widget/ImageViewTouchBase$3;-><init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public switchBitmap(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 304
    .local v0, bmp:Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    .line 316
    :goto_1
    return-void

    .line 302
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 306
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 307
    iget-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 308
    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 310
    if-nez p1, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    .line 312
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->reCalculateSupp()V

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->updateImageMatrix()V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 308
    goto :goto_2

    :cond_4
    move v2, v3

    .line 310
    goto :goto_3
.end method

.method protected updateImageMatrix()V
    .locals 3

    .prologue
    const v2, 0x3f7fff58

    .line 777
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 778
    .local v0, m:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 779
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 786
    :goto_0
    return-void

    .line 782
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 785
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected usePerfectFitBitmap()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 1117
    const v0, 0x3f99999a

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomIn(F)V

    .line 1119
    return-void
.end method

.method protected zoomIn(F)V
    .locals 6
    .parameter "rate"

    .prologue
    const/high16 v5, 0x4000

    .line 1646
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 1647
    .local v2, width:F
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 1650
    .local v0, height:F
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 1651
    .local v1, scale:F
    mul-float v3, v1, p1

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1652
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v3

    div-float p1, v3, v1

    .line 1654
    :cond_0
    div-float v3, v2, v5

    div-float v4, v0, v5

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomInAt(FFF)V

    .line 1670
    return-void
.end method

.method protected zoomInAt(FFF)V
    .locals 7
    .parameter "rate"
    .parameter "atX"
    .parameter "atY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1597
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1603
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 1604
    .local v0, curScale:F
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 1605
    iput v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 1606
    mul-float v2, v0, p1

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v3

    const v4, 0x3f99999a

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1616
    :cond_2
    :goto_1
    iput p2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    .line 1617
    iput p3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    .line 1625
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 1626
    .local v1, oldScale:F
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1633
    invoke-virtual {p0, v5, v5, v6}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->center(ZZZ)V

    .line 1635
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->onZoom()V

    goto :goto_0

    .line 1608
    .end local v1           #oldScale:F
    :cond_3
    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 1609
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStatus:I

    .line 1610
    mul-float v2, v0, p1

    const v3, 0x3f4ccccd

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    goto :goto_0

    .line 1613
    :cond_4
    iput v6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStatus:I

    goto :goto_1
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 1126
    const v0, 0x3f99999a

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomOut(F)V

    .line 1128
    return-void
.end method

.method protected zoomOut(F)V
    .locals 6
    .parameter "rate"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 1673
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 1674
    .local v2, width:F
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 1676
    .local v0, height:F
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 1677
    .local v1, scale:F
    mul-float v3, v1, v4

    div-float/2addr v3, p1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 1678
    move p1, v1

    .line 1680
    :cond_0
    div-float v3, v4, p1

    div-float v4, v2, v5

    div-float v5, v0, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomInAt(FFF)V

    .line 1701
    return-void
.end method

.method protected zoomOutByFrame(FIII)V
    .locals 12
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "stepFlow"

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2217
    :cond_0
    const-string v0, "ImageViewTouchBase"

    const-string v1, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    :goto_0
    return-void

    .line 2227
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v5, v0

    .line 2228
    .local v5, currX:I
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v6, v0

    .line 2229
    .local v6, currY:I
    const/4 v9, 0x0

    .line 2230
    .local v9, finalX:I
    const/4 v10, 0x0

    .line 2231
    .local v10, finalY:I
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v2

    .line 2233
    .local v2, currScale:F
    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;

    move-object v1, p0

    move v3, p1

    move/from16 v4, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;-><init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;FFIIIII)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected zoomOutByTime(FIIF)V
    .locals 14
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "durationMs"

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2264
    :cond_0
    const-string v0, "ImageViewTouchBase"

    const-string v1, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    :goto_0
    return-void

    .line 2274
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v7, v0

    .line 2275
    .local v7, currX:I
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v8, v0

    .line 2276
    .local v8, currY:I
    const/4 v11, 0x0

    .line 2277
    .local v11, finalX:I
    const/4 v12, 0x0

    .line 2278
    .local v12, finalY:I
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v2

    .line 2279
    .local v2, currScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2281
    .local v4, startTime:J
    const-string v0, "Justin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before zoom out mat "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    iget-object v13, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$8;

    move-object v1, p0

    move/from16 v3, p4

    move v6, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/htc/opensense2/widget/ImageViewTouchBase$8;-><init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;FFJFIIII)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 1106
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 1107
    .local v1, width:F
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 1109
    .local v0, height:F
    div-float v2, v1, v3

    div-float v3, v0, v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomTo(FFF)V

    .line 1110
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 1065
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1067
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getMaxZoom()F

    move-result p1

    .line 1070
    :cond_1
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->onZoom()V

    .line 1072
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 1073
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 1075
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1077
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v3, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->center(ZZZ)V

    goto :goto_0
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 1085
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 1086
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1087
    .local v3, startTime:J
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v9, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/widget/ImageViewTouchBase$2;-><init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected zoomToCenterByFrame(FIII)V
    .locals 23
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "stepFlow"

    .prologue
    .line 1993
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1994
    :cond_0
    const-string v1, "ImageViewTouchBase"

    const-string v2, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    :goto_0
    return-void

    .line 2005
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v5, v1

    .line 2006
    .local v5, cx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v6, v1

    .line 2008
    .local v6, cy:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v22

    .line 2009
    .local v22, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v21

    .line 2010
    .local v21, viewHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .line 2011
    .local v12, bmpWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 2013
    .local v11, bmpHeight:I
    sub-int v1, v22, v12

    div-int/lit8 v17, v1, 0x2

    .line 2014
    .local v17, mx:I
    sub-int v1, v21, v11

    div-int/lit8 v18, v1, 0x2

    .line 2016
    .local v18, my:I
    sub-int v13, p2, v17

    .line 2017
    .local v13, dx:I
    sub-int v14, p3, v18

    .line 2018
    .local v14, dy:I
    int-to-float v1, v13

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v7, v1, v17

    .line 2019
    .local v7, cx2:I
    int-to-float v1, v14

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v8, v1, v18

    .line 2020
    .local v8, cy2:I
    div-int/lit8 v1, v22, 0x2

    sub-int v19, v1, p2

    .line 2021
    .local v19, tx:I
    div-int/lit8 v1, v21, 0x2

    sub-int v20, v1, p3

    .line 2022
    .local v20, ty:I
    sub-int v7, v7, v19

    .line 2023
    sub-int v8, v8, v20

    .line 2024
    int-to-float v1, v12

    mul-float v1, v1, p1

    float-to-int v15, v1

    .line 2025
    .local v15, maxx:I
    int-to-float v1, v11

    mul-float v1, v1, p1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 2027
    .local v16, maxy:I
    add-int v1, v7, v22

    if-le v1, v15, :cond_2

    sub-int v7, v15, v22

    .line 2028
    :cond_2
    add-int v1, v8, v21

    move/from16 v0, v16

    if-le v1, v0, :cond_3

    sub-int v8, v16, v21

    .line 2030
    :cond_3
    if-gez v7, :cond_4

    const/4 v7, 0x0

    .line 2031
    :cond_4
    if-gez v8, :cond_5

    const/4 v8, 0x0

    .line 2033
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v9

    .local v9, currScale:F
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v10, p4

    .line 2034
    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomAnimationByFrame(FIIIIIIFI)V

    goto/16 :goto_0
.end method

.method protected zoomToCenterByTime(FIIF)V
    .locals 23
    .parameter "zoomRatio"
    .parameter "atx"
    .parameter "aty"
    .parameter "durationMs"

    .prologue
    .line 2081
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2082
    :cond_0
    const-string v1, "ImageViewTouchBase"

    const-string v2, "bitmap doesn\'t exist, can\'t zoom"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :goto_0
    return-void

    .line 2093
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v5, v1

    .line 2094
    .local v5, cx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v1, v1

    float-to-int v6, v1

    .line 2096
    .local v6, cy:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getWidth()I

    move-result v22

    .line 2097
    .local v22, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getHeight()I

    move-result v21

    .line 2098
    .local v21, viewHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .line 2099
    .local v12, bmpWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 2101
    .local v11, bmpHeight:I
    sub-int v1, v22, v12

    div-int/lit8 v17, v1, 0x2

    .line 2102
    .local v17, mx:I
    sub-int v1, v21, v11

    div-int/lit8 v18, v1, 0x2

    .line 2104
    .local v18, my:I
    sub-int v13, p2, v17

    .line 2105
    .local v13, dx:I
    sub-int v14, p3, v18

    .line 2106
    .local v14, dy:I
    int-to-float v1, v13

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v7, v1, v17

    .line 2107
    .local v7, cx2:I
    int-to-float v1, v14

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v8, v1, v18

    .line 2108
    .local v8, cy2:I
    div-int/lit8 v1, v22, 0x2

    sub-int v19, v1, p2

    .line 2109
    .local v19, tx:I
    div-int/lit8 v1, v21, 0x2

    sub-int v20, v1, p3

    .line 2110
    .local v20, ty:I
    sub-int v7, v7, v19

    .line 2111
    sub-int v8, v8, v20

    .line 2112
    int-to-float v1, v12

    mul-float v1, v1, p1

    float-to-int v15, v1

    .line 2113
    .local v15, maxx:I
    int-to-float v1, v11

    mul-float v1, v1, p1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 2115
    .local v16, maxy:I
    add-int v1, v7, v22

    if-le v1, v15, :cond_2

    sub-int v7, v15, v22

    .line 2116
    :cond_2
    add-int v1, v8, v21

    move/from16 v0, v16

    if-le v1, v0, :cond_3

    sub-int v8, v16, v21

    .line 2118
    :cond_3
    if-gez v7, :cond_4

    .line 2120
    int-to-float v1, v12

    mul-float v1, v1, p1

    move/from16 v0, v22

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 2121
    move/from16 v0, v22

    int-to-float v1, v0

    int-to-float v2, v12

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v7, v1

    .line 2126
    :cond_4
    :goto_1
    if-gez v8, :cond_5

    .line 2128
    int-to-float v1, v11

    mul-float v1, v1, p1

    move/from16 v0, v21

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 2129
    move/from16 v0, v21

    int-to-float v1, v0

    int-to-float v2, v11

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v8, v1

    .line 2135
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v9

    .local v9, currScale:F
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v10, p4

    .line 2136
    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomAnimationByTime(FIIIIIIFF)V

    goto/16 :goto_0

    .line 2123
    .end local v9           #currScale:F
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 2131
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method
