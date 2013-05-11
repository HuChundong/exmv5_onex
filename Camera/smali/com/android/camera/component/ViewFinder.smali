.class public final Lcom/android/camera/component/ViewFinder;
.super Lcom/android/camera/IViewFinder;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ViewFinder$20;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_ANIMATION:I = 0x0

.field private static final ACTION_DRAW_FLIP_ANIMATION:I = 0x1

.field private static final ACTION_DRAW_REAL_TIME_PREVIEW:I = 0x2

.field private static final ACTION_DRAW_REVIEW_IMAGE:I = 0x3

.field private static final FLIP_DURATION:I = 0x12c

.field private static final FLIP_SCALE_RATIO:D = 0.7

.field private static final FLIP_STAGE_FIRST:I = 0x1

.field private static final FLIP_STAGE_NONE:I = 0x0

.field private static final FLIP_STAGE_SECOND:I = 0x2

.field private static final MSG_DO_FLIP_ANIMATION:I = 0x2713

.field private static final MSG_DRAW_REAL_TIME_PREVIEW:I = 0x2717

.field private static final MSG_FIRST_PREVIEW_FRAME_RETRIEVED:I = 0x2710

.field private static final MSG_HIDE_REVIEW_IMAGE:I = 0x2719

.field private static final MSG_HIDE_SURFACE:I = 0x271a

.field private static final MSG_PREVIEW_SIZE_CHANGED:I = 0x2716

.field private static final MSG_PREVIEW_STARTED:I = 0x2715

.field private static final MSG_SHOW_LAST_PREVIEW_FRAME:I = 0x2711

.field private static final MSG_SHOW_REVIEW_IMAGE:I = 0x2718

.field private static final MSG_START_FLIP_ANIMATION:I = 0x2712

.field private static final MSG_STOP_FLIP_ANIMATION:I = 0x2714

.field public static final NAME:Ljava/lang/String; = "View Finder"

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_WAITING_FOR_PREVIEW_FRAME:I = 0x2

.field private static final STATE_WAITING_FOR_PREVIEW_START:I = 0x1

.field static final SUPPORT_FLIP_ANIMATION:Z

.field static final SUPPORT_REAL_TIME_PREVIEW:Z

.field static final SUPPORT_REVIEW_IMAGE:Z


# instance fields
.field private volatile m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

.field private m_AnimationSurfaceView:Landroid/view/SurfaceView;

.field private final m_CameraThreadTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/trigger/TriggerBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_EffectPreviewBitmap:Landroid/graphics/Bitmap;

.field private m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

.field private m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

.field private m_FlipImage:Landroid/graphics/Bitmap;

.field private m_FlipImageBounds:Landroid/graphics/Rect;

.field private m_FlipMaskOffset:I

.field private m_FlipStage:I

.field private m_FlipStartTime:J

.field private m_InitialFlipImageBounds:Landroid/graphics/Rect;

.field private m_IsReviewImageShown:Z

.field private m_LastPreviewBitmap:Landroid/graphics/Bitmap;

.field private m_PostViewBitmap:Landroid/graphics/Bitmap;

.field private m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

.field private m_PreviewBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewFilter:Landroid/view/View;

.field private m_PreviewFilterColor:I

.field private m_PreviewFrameCameraType:Lcom/android/camera/CameraType;

.field private m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

.field private final m_PreviewFrameSyncRoot:Ljava/lang/Object;

.field private m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

.field private m_PreviewSurfaceView:Landroid/view/SurfaceView;

.field private m_PreviewThread:Lcom/android/camera/WorkerThread;

.field private m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

.field private m_ReviewBitmap:Landroid/graphics/Bitmap;

.field private m_State:I

.field private final m_StateSyncRoot:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraNativeLibrary;->initialize()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "View Finder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IViewFinder;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameCameraType:Lcom/android/camera/CameraType;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    iput v2, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ViewFinder;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/ViewFinder;->handlePreviewThreadMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ViewFinder;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ViewFinder;->onDrawPreviewFilter(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ViewFinder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ViewFinder;)Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/ViewFinder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/component/ViewFinder;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/component/ViewFinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ViewFinder;->m_IsReviewImageShown:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/component/ViewFinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->setupCameraThreadEventHandlers()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/component/ViewFinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->updateViewFinderSize()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ViewFinder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ViewFinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->clearPostViewBitmap()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/ViewFinder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/component/ViewFinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->setupPreviewBuffers()V

    return-void
.end method

.method private clearPostViewBitmap()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createPreviewFrameBitmap()Landroid/graphics/Bitmap;
    .locals 13

    const v12, 0x7ffffffc

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "createPreviewFrameBitmap()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    const/4 v7, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v0, v0, Lcom/android/camera/imaging/Size;->width:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v0, v0, Lcom/android/camera/imaging/Size;->height:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    if-le v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v2, v2, Lcom/android/camera/imaging/Size;->width:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v6, v6, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2, v6}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchSize(IIII)Lcom/android/camera/imaging/Size;

    move-result-object v8

    iget v0, v8, Lcom/android/camera/imaging/Size;->width:I

    and-int/2addr v0, v12

    iput v0, v8, Lcom/android/camera/imaging/Size;->width:I

    iget v0, v8, Lcom/android/camera/imaging/Size;->height:I

    and-int/2addr v0, v12

    iput v0, v8, Lcom/android/camera/imaging/Size;->height:I

    :goto_0
    iget v5, v8, Lcom/android/camera/imaging/Size;->width:I

    iget v4, v8, Lcom/android/camera/imaging/Size;->height:I

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    mul-int v0, v5, v4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v1, v1, Lcom/android/camera/imaging/Size;->width:I

    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v2, v2, Lcom/android/camera/imaging/Size;->height:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameCameraType:Lcom/android/camera/CameraType;

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/camera/component/ViewFinder;->preparePreviewFrame(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot prepare preview frame"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v10

    :goto_1
    return-object v7

    :cond_1
    :try_start_3
    new-instance v8, Lcom/android/camera/imaging/Size;

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v0, v0, Lcom/android/camera/imaging/Size;->width:I

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v1, v1, Lcom/android/camera/imaging/Size;->height:I

    invoke-direct {v8, v0, v1}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v9

    :try_start_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot create preview frame bitmap"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    monitor-exit v11

    move-object v7, v10

    goto :goto_1

    :cond_4
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v10

    goto :goto_1
.end method

.method private doFlipAnimation()V
    .locals 17

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-nez v13, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/camera/component/ViewFinder;->m_FlipStartTime:J

    sub-long/2addr v13, v15

    long-to-double v13, v13

    const-wide v15, 0x4072c00000000000L

    div-double v11, v13, v15

    const-wide/high16 v13, 0x3ff0

    cmpl-double v13, v11, v13

    if-ltz v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/ViewFinder;->stopFlipAnimation()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const-wide/high16 v13, 0x3fe0

    cmpl-double v13, v11, v13

    if-ltz v13, :cond_2

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_2

    new-instance v10, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v16, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    new-instance v14, Lcom/android/camera/imaging/Size;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/android/camera/imaging/Size;-><init>(II)V

    const/4 v15, 0x1

    invoke-static {v10, v14, v15}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    const-wide/high16 v8, 0x3ff0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v2, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v1, v13

    const-wide/high16 v13, 0x3fe0

    cmpg-double v13, v11, v13

    if-gtz v13, :cond_3

    const-wide v13, 0x400921fb54442d18L

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    :goto_1
    int-to-double v13, v1

    mul-double/2addr v13, v5

    double-to-int v1, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    sget v14, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v14, v2

    div-int/lit8 v14, v14, 0x2

    iput v14, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    sget v14, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sub-int/2addr v14, v1

    div-int/lit8 v14, v14, 0x2

    iput v14, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v2

    iput v14, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v1

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    const-wide/high16 v13, 0x3fe0

    cmpg-double v13, v11, v13

    if-gtz v13, :cond_4

    const-wide v13, 0x400921fb54442d18L

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-double v13, v13

    const-wide v15, 0x3fd3333333333333L

    mul-double/2addr v13, v15

    double-to-int v7, v13

    int-to-double v13, v7

    mul-double/2addr v13, v3

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    const/16 v13, 0x2713

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(I)V

    goto/16 :goto_0

    :cond_3
    const-wide/high16 v13, 0x3ff0

    sub-double v13, v11, v13

    const-wide v15, 0x400921fb54442d18L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    goto :goto_1

    :cond_4
    const-wide/high16 v13, 0x3ff0

    sub-double/2addr v13, v11

    const-wide v15, 0x400921fb54442d18L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    goto :goto_2
.end method

.method private drawAnimationSurface(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_2

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawPreviewFilter(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void

    :pswitch_0
    const/4 v2, 0x0

    :try_start_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :pswitch_1
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawFlipAnimation(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_5
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :pswitch_2
    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawRealtimePreview(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawReviewImage(Landroid/graphics/Canvas;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawFlipAnimation(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, -0x100

    const/4 v6, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v3, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v3, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method private drawPreviewFilter(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$CameraStartMode:[I

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-direct {v2, v5, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilterColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawRealtimePreview(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    monitor-exit v19

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x100

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v14, 0x3

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v11, v2, 0x2

    add-int/lit8 v10, v3, 0x2

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int v4, v11, v8

    sub-int/2addr v1, v4

    div-int/lit8 v12, v1, 0x2

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    mul-int v4, v10, v14

    sub-int/2addr v1, v4

    div-int/lit8 v16, v1, 0x2

    new-instance v15, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v15, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v0, v14, :cond_7

    mul-int v1, v18, v10

    add-int v1, v1, v16

    iput v1, v9, Landroid/graphics/Rect;->top:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v8, :cond_6

    mul-int v1, v17, v11

    add-int/2addr v1, v12

    iput v1, v9, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v11

    iput v1, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/graphics/Rect;->top:I

    iget v1, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/graphics/Rect;->right:I

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x0

    if-nez v18, :cond_2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v17, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/camera/effect/RealtimeEffect;->channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z

    :cond_1
    :goto_3
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_4
    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/graphics/Rect;->top:I

    iget v1, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/graphics/Rect;->right:I

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    if-nez v17, :cond_3

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/effect/RealtimeEffect;->channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x5

    invoke-static/range {v1 .. v6}, Lcom/android/camera/effect/RealtimeEffect;->channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    rsub-int/lit8 v6, v17, 0x3

    invoke-static/range {v1 .. v6}, Lcom/android/camera/effect/RealtimeEffect;->channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_7
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private drawReviewImage(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v2, -0x100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Lcom/android/camera/imaging/Size;

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/imaging/Size;-><init>(II)V

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPreviewSizeInUI(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Lcom/android/camera/imaging/Size;

    iget v3, p1, Lcom/android/camera/imaging/Size;->height:I

    iget v4, p1, Lcom/android/camera/imaging/Size;->width:I

    invoke-direct {v2, v3, v4}, Lcom/android/camera/imaging/Size;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Lcom/android/camera/imaging/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/imaging/Size;-><init>(II)V

    return-object v1
.end method

.method private getRealtimePreviewSize(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;
    .locals 4

    const v3, 0x7ffffffc

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/imaging/Size;

    const/16 v1, 0x136

    const/16 v2, 0xaa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    invoke-static {v0, p1}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchSize(Lcom/android/camera/imaging/Size;Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;

    move-result-object p1

    iget v0, p1, Lcom/android/camera/imaging/Size;->width:I

    and-int/2addr v0, v3

    iput v0, p1, Lcom/android/camera/imaging/Size;->width:I

    iget v0, p1, Lcom/android/camera/imaging/Size;->height:I

    and-int/2addr v0, v3

    iput v0, p1, Lcom/android/camera/imaging/Size;->height:I

    move-object v0, p1

    goto :goto_0
.end method

.method private handlePreviewThreadMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->doFlipAnimation()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->hideReviewImage()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->showLastPreviewFrame(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->showReviewImage(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->startFlipAnimation(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->stopFlipAnimation()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private hideReviewImage()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hideSurfaceView()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "hideSurfaceView  "

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "hideSurfaceView  m_PreviewSurfaceView INVISIBLE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "hideSurfaceView  m_PreviewSurfaceView VISIBLE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onDrawPreviewFilter(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v1, p0, Lcom/android/camera/IViewFinder;->drawPreviewFilterEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/camera/DrawPreviewFilterEventArgs;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/camera/imaging/Size;

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-direct {v1, v2, v4}, Lcom/android/camera/imaging/Size;-><init>(II)V

    move-object v2, v1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/IViewFinder;->previewSurfaceBounds:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-direct {v0, p1, v3, v2, v1}, Lcom/android/camera/DrawPreviewFilterEventArgs;-><init>(Landroid/graphics/Canvas;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/imaging/Size;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/IViewFinder;->drawPreviewFilterEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/camera/imaging/Size;

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-direct {v1, v2, v4}, Lcom/android/camera/imaging/Size;-><init>(II)V

    move-object v2, v1

    goto :goto_0
.end method

.method private onFirstPreviewFrameRetrieved(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    const/16 v0, 0x2712

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(IIILjava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPostviewImageRetrieved(Lcom/android/camera/imaging/RawImageEventArgs;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPreviewFrameRetrieved(Lcom/android/camera/imaging/RawImageEventArgs;)V
    .locals 8

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameCameraType:Lcom/android/camera/CameraType;

    iget-object v7, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Got first preview frame"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->createPreviewFrameBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ViewFinder;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/camera/component/ViewFinder;->getPreviewSizeInUI(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;

    move-result-object v0

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    iget v2, v0, Lcom/android/camera/imaging/Size;->width:I

    iget v3, v0, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    iget v2, v0, Lcom/android/camera/imaging/Size;->height:I

    iget v3, v0, Lcom/android/camera/imaging/Size;->width:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native preparePreviewFrame(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIZ)Z
.end method

.method private sendPreviewThreadMessage(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private sendPreviewThreadMessage(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupCameraThreadEventHandlers()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ViewFinder$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ViewFinder$4;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ViewFinder$5;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ViewFinder$5;-><init>(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ViewFinder$6;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ViewFinder$6;-><init>(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ViewFinder$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ViewFinder$9;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ViewFinder$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ViewFinder$10;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ViewFinder$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ViewFinder$11;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method private setupPreviewBuffers()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private setupPreviewFilter(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilter:Landroid/view/View;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v1

    sget-object v3, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$CameraStartMode:[I

    invoke-virtual {v1}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setupPreviewFilter() - Inflate preview filter"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilter:Landroid/view/View;

    check-cast v3, Lcom/android/camera/widget/LinearLayout;

    new-instance v4, Lcom/android/camera/component/ViewFinder$12;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ViewFinder$12;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/LinearLayout;->setOnDrawListener(Lcom/android/camera/widget/LinearLayout$OnDrawListener;)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilter:Landroid/view/View;

    const v4, 0x7f0800d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setupUIEventHandlers(Lcom/android/camera/HTCCamera;)V
    .locals 2

    iget-object v0, p1, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ViewFinder$13;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$13;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p1, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ViewFinder$14;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$14;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p1, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ViewFinder$15;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$15;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method private setupUIPropertyChangedCallbacks(Lcom/android/camera/HTCCamera;)V
    .locals 4

    iget-object v0, p1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/ViewFinder$17;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$17;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/component/ViewFinder$18;

    iget-object v2, p1, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/ViewFinder$18;-><init>(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/ViewFinder$19;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$19;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method

.method private showLastPreviewFrame(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->stopFlipAnimation()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/camera/imaging/Size;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/imaging/Size;-><init>(II)V

    invoke-static {v0, v2}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method private showReviewImage()V
    .locals 10

    iget-boolean v4, p0, Lcom/android/camera/component/ViewFinder;->m_IsReviewImageShown:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/TakingPictureState;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    sget-object v4, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$TakingPictureState:[I

    invoke-virtual {v3}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v4, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$RecordingState:[I

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->createPreviewFrameBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2}, Lcom/android/camera/component/ViewFinder;->showReviewImage(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/component/ViewFinder;->m_IsReviewImageShown:Z

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    iget-object v4, v4, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    iget v6, v6, Lcom/android/camera/imaging/RawImageEventArgs;->imageWidth:I

    iget-object v7, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    iget v7, v7, Lcom/android/camera/imaging/RawImageEventArgs;->imageHeight:I

    const/16 v8, 0x5a

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Lcom/android/camera/imaging/ImageUtility;->yvu420spToBitmap([BIIIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startFlipAnimation(Landroid/graphics/Bitmap;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStartTime:J

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->doFlipAnimation()V

    goto :goto_0
.end method

.method private stopFlipAnimation()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    iput-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateViewFinderSize()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v10

    iget-object v10, v10, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/imaging/Size;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->keepPreviewRatio()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v5, :cond_1

    sget v10, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-float v10, v10

    iget v11, v5, Lcom/android/camera/imaging/Size;->width:I

    int-to-float v11, v11

    div-float v7, v10, v11

    sget v10, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, v5, Lcom/android/camera/imaging/Size;->height:I

    int-to-float v11, v11

    div-float v8, v10, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v10, v5, Lcom/android/camera/imaging/Size;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v9, v10

    iget v10, v5, Lcom/android/camera/imaging/Size;->height:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v1, v10

    :goto_0
    sget-object v10, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v10}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v10, v1, v9}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v10, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v10}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v10

    if-eqz v10, :cond_8

    sget v10, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sub-int/2addr v10, v9

    div-int/lit8 v4, v10, 0x2

    sget v10, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v10, v1

    div-int/lit8 v3, v10, 0x2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v1

    iput v10, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v9

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    iget-object v10, p0, Lcom/android/camera/IViewFinder;->previewSurfaceBounds:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v10, v11, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilter:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilter:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    sget v9, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v10

    sget-object v11, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v10, v11, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v10

    iget-object v10, v10, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    sget v9, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    :goto_4
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    sget v10, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v10, v10, 0x4

    div-int/lit8 v9, v10, 0x3

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_0

    iget v10, v5, Lcom/android/camera/imaging/Size;->width:I

    int-to-float v10, v10

    iget v11, v5, Lcom/android/camera/imaging/Size;->height:I

    int-to-float v11, v11

    div-float v6, v10, v11

    sget v10, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v9, v10

    goto :goto_4

    :cond_7
    iget-object v10, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v10, v9, v1}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    goto/16 :goto_1

    :cond_8
    sget v10, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v10, v1

    div-int/lit8 v4, v10, 0x2

    sget v10, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sub-int/2addr v10, v9

    div-int/lit8 v3, v10, 0x2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v9

    iput v10, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v1

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    invoke-super {p0}, Lcom/android/camera/IViewFinder;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/IViewFinder;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->onFirstPreviewFrameRetrieved(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/imaging/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->onPreviewStarted()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->hideSurfaceView()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_1
        0x271a -> :sswitch_3
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/IViewFinder;->initializeOverride()V

    new-instance v3, Lcom/android/camera/component/ViewFinder$1;

    const-string v4, "Preview Thread"

    invoke-direct {v3, p0, v4}, Lcom/android/camera/component/ViewFinder$1;-><init>(Lcom/android/camera/component/ViewFinder;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v3}, Lcom/android/camera/WorkerThread;->start()V

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const v4, 0x7f080027

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080028

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    const v3, 0x7f080029

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceView:Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    new-instance v3, Lcom/android/camera/component/ViewFinder$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ViewFinder$2;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v3, p0, Lcom/android/camera/IViewFinder;->previewSurfaceHolder:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceView:Landroid/view/SurfaceView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, -0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v4, Lcom/android/camera/component/ViewFinder$3;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ViewFinder$3;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilterColor:I

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/component/ViewFinder;->setupPreviewFilter(Z)V

    invoke-direct {p0, v1}, Lcom/android/camera/component/ViewFinder;->setupUIEventHandlers(Lcom/android/camera/HTCCamera;)V

    invoke-direct {p0, v1}, Lcom/android/camera/component/ViewFinder;->setupUIPropertyChangedCallbacks(Lcom/android/camera/HTCCamera;)V

    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->updateViewFinderSize()V

    return-void
.end method

.method public invalidatePreviewFilter()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "invalidatePreviewFilter() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->setupPreviewFilter(Z)V

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilter:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
