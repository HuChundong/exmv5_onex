.class final Lcom/android/camera/widget/ReviewAnimationThread;
.super Lcom/android/camera/WorkerThread;
.source "ReviewAnimationThread.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BASE_DURATION:I = 0x0

.field private static final MSG_ANIMATE:I = 0x2712

.field private static final MSG_START_ANIMATION:I = 0x2711

.field private static final MSG_STOP_ANIMATION:I = 0x2713

.field private static final MSG_UPDATE_IMAGE:I = 0x2710


# instance fields
.field private m_AnimationStartTime:J

.field private m_CurrentCenterPoint:Landroid/graphics/Point;

.field private m_CurrentImageBounds:Landroid/graphics/Rect;

.field private m_Duration:I

.field private m_Image:Landroid/graphics/Bitmap;

.field private m_InitialImageBounds:Landroid/graphics/Rect;

.field private m_IsAnimating:Z

.field private m_OffsetCoeff:D

.field private m_ScaleCoeff:D

.field private final m_SurfaceHeight:I

.field private final m_SurfaceHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SurfaceWidth:I

.field private m_TargetCenterPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    const/16 v0, 0x258

    sput v0, Lcom/android/camera/widget/ReviewAnimationThread;->BASE_DURATION:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1f4

    sput v0, Lcom/android/camera/widget/ReviewAnimationThread;->BASE_DURATION:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;IIII)V
    .locals 2

    const-string v0, "Review Animation Thread"

    invoke-direct {p0, v0}, Lcom/android/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    const-wide/high16 v0, 0x4014

    iput-wide v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_OffsetCoeff:D

    const-wide/high16 v0, 0x4000

    iput-wide v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_ScaleCoeff:D

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_TargetCenterPoint:Landroid/graphics/Point;

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceHolder:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceWidth:I

    iput p3, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceHeight:I

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_TargetCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private animate()V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_AnimationStartTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Duration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v17, v20, v22

    const-wide/high16 v20, 0x3ff0

    cmpl-double v20, v17, v20

    if-ltz v20, :cond_2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/widget/ReviewAnimationThread;->draw()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    div-double v4, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    div-double v6, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_TargetCenterPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v20, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_TargetCenterPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v10, v20, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_OffsetCoeff:D

    move-wide/from16 v21, v0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    mul-double v21, v21, v8

    add-double v21, v21, v4

    const-wide/high16 v23, 0x3fe0

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_OffsetCoeff:D

    move-wide/from16 v21, v0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    mul-double v21, v21, v10

    add-double v21, v21, v6

    const-wide/high16 v23, 0x3fe0

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    const-wide/high16 v20, 0x3ff0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_ScaleCoeff:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0

    div-double v15, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v15

    move-wide/from16 v0, v20

    double-to-int v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v15

    move-wide/from16 v0, v20

    double-to-int v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    div-int/lit8 v21, v13, 0x2

    sub-int v14, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    div-int/lit8 v21, v12, 0x2

    sub-int v19, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentImageBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    add-int v21, v14, v13

    add-int v22, v19, v12

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/widget/ReviewAnimationThread;->draw()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/ReviewAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x2712

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private draw()V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ReviewAnimationThread;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lcom/android/camera/WorkerThread;->TAG:Ljava/lang/String;

    const-string v4, "Cannot draw surface"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    throw v3
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v2, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentImageBounds:Landroid/graphics/Rect;

    :goto_0
    iget-object v2, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private setReviewImageInternal(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->stopReviewAnimationInternal()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceWidth:I

    iget v2, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/android/camera/imaging/Size;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/imaging/Size;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    :cond_0
    iput-object p1, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->draw()V

    return-void
.end method

.method private startReviewAnimationInternal(D)V
    .locals 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    iget-boolean v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v7, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    :cond_2
    iput-boolean v6, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    sget v0, Lcom/android/camera/widget/ReviewAnimationThread;->BASE_DURATION:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Duration:I

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_SurfaceHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_AnimationStartTime:J

    invoke-direct {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->animate()V

    goto :goto_0
.end method

.method private stopReviewAnimationInternal()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->animate()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/widget/ReviewAnimationThread;->startReviewAnimationInternal(D)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->stopReviewAnimationInternal()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ReviewAnimationThread;->setReviewImageInternal(Landroid/graphics/Bitmap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onExit()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->stopReviewAnimationInternal()V

    invoke-super {p0}, Lcom/android/camera/WorkerThread;->onExit()V

    return-void
.end method

.method public setReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startReviewAnimation(D)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget v0, Lcom/android/camera/widget/ReviewAnimationThread;->BASE_DURATION:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    return v0
.end method

.method public stopReviewAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/ReviewAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
