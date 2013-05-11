.class public final Lcom/android/camera/component/PanoramaController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/PanoramaController$12;,
        Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMER_INTERVAL:I = 0x12c

.field public static final DIRECTION_DOWN:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_UNKNOWN:I = 0x0

.field public static final DIRECTION_UP:I = 0x3

.field public static final MAX_FRAME_COUNT:I = 0x5

.field public static final MSG_CANCEL_CAPTURE:I = 0x3

.field private static final MSG_CREATE_PREVIEW:I = 0x4

.field public static final MSG_ENTER_PANORAMA_MODE:I = 0x1

.field public static final MSG_EXIT_PANORAMA_MODE:I = 0x2

.field private static final MSG_PREVIEW_CREATED:I = 0x6

.field public static final NAME:Ljava/lang/String; = "Panorama Controller"

.field static final PANORAMA_TYPE_BASIC:I = 0x0

.field static final PANORAMA_TYPE_SWEEP:I = 0x1

.field private static final TIMEOUT_STITCH:J = 0x3a98L

.field private static final TIMEOUT_TRACKING:J = 0x1388L

.field private static final m_PanoramaDCFInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private m_Autorama:Lcom/scalado/camera/autorama/Autorama;

.field private final m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

.field private m_CameraUsed:Landroid/hardware/Camera;

.field private m_CaptureCount:I

.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_CaptureRotation:Lcom/android/camera/rotate/UIRotation;

.field private m_CaptureTimerStartTime:J

.field private final m_ClearScaladoResTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_CurrentCaptureIndex:I

.field private m_Direction:I

.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field private m_ExifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsCanceling:Z

.field private m_IsCapturing:Z

.field private m_IsCapturingFrame:Z

.field private m_IsEntered:Z

.field private m_IsLastFrame:Z

.field private m_IsReOpenCameraNeeded:Z

.field private m_IsStitching:Z

.field private m_IsSweepPanorama:Z

.field private final m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_JpegTimerHandle:Lcom/android/camera/Handle;

.field private m_LatestContentUri:Landroid/net/Uri;

.field private m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

.field private m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

.field private m_PreviousDeltaX:F

.field private m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

.field private m_SceneController:Lcom/android/camera/effect/ISceneController;

.field private final m_StitchTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_StitchTimerHandle:Lcom/android/camera/Handle;

.field private m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

.field private final m_TrackingTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_TrackingTimerHandle:Lcom/android/camera/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "PANOR"

    const-string v2, "IMAG"

    const-string v3, "panorama_dir_counter"

    const-string v4, "panorama_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/io/DCFInfo;

    sget-object v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/io/DCFUtility;->registerDCFInfo(Lcom/android/camera/io/DCFInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "Panorama Controller"

    invoke-direct {p0, v2, v0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    new-instance v2, Lcom/android/camera/component/PanoramaController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$1;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_ClearScaladoResTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    iput v1, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    new-instance v2, Lcom/android/camera/component/PanoramaController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$2;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    new-instance v2, Lcom/android/camera/component/PanoramaController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$3;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    new-instance v2, Lcom/android/camera/component/PanoramaController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$4;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    new-instance v2, Lcom/android/camera/component/PanoramaController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$5;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->getPanoramaType()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PanoramaController;Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/PanoramaController;->createReviewImage(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/PanoramaController;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/component/PanoramaController;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/component/PanoramaController;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/component/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/component/PanoramaController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/component/PanoramaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/camera/component/PanoramaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/camera/component/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$2204(Lcom/android/camera/component/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onCancelCapture()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/component/PanoramaController;Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/component/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->stopPreview()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->deleteCapturedImage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/camera/component/PanoramaController;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimerHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimerHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CaptureHandle;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/PanoramaController;->onStitchCompleted(Lcom/android/camera/CaptureHandle;[B)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/component/PanoramaController;Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v0

    return-object v0
.end method

.method private clearScaladoResources()V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "clearScaladoResources()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "Clear Scalado resources"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController;->m_ClearScaladoResTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v7

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, v7}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v1, v7}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_2
    throw v0
.end method

.method private createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 3

    :try_start_0
    new-instance v1, Lcom/scalado/stream/BufferStream;

    invoke-virtual {p1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot create JPEG decoder"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual {v1}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot create JPEG decoder"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createPreview()V
    .locals 12

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff8

    iget-object v11, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v11, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v11}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x7f0b0083

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v0, 0x7f0b0084

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    mul-int/2addr v0, v10

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-double v1, v9

    mul-double/2addr v1, v4

    double-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->getLowResolutionPanorama(Z)Lcom/scalado/caps/Session;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    const/16 v1, 0x5a

    invoke-static {v8, v0, v1}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v2, 0x6

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while creating preview image buffer"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while creating preview image"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No Autorama object to create preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createReviewImage(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/scalado/stream/FileStream;

    sget-object v8, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v4, p1, v8}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v1

    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_2

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    :goto_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v0, v8, v9}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v3, v4

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Cannot create review image"

    invoke-static {v8, v9, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_5
    throw v8

    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_3
.end method

.method private deleteCapturedImage()V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Delete media by PanoramaController"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "No UI to delete content"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/camera/component/PanoramaController$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/component/PanoramaController$6;-><init>(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;Lcom/android/camera/HTCCamera;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    sget-object v4, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    invoke-static {v3, v4}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getPanoramaType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isNonLandscapeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x96

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x97

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xab

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xac

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe4

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe5

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isZoomingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private onCancelCapture()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    invoke-direct {p0, v2, v1, v1}, Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V

    goto :goto_0
.end method

.method private onEnterPanoramaMode()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onExitPanoramaMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "panorama-mode"

    const-string v3, "not-in-progress"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "capture-mode"

    const-string v3, "zsl"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    return-void

    :cond_1
    const-string v2, "capture-mode"

    const-string v3, "normal"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onStitchCompleted(Lcom/android/camera/CaptureHandle;[B)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - Invalid capture handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v9, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    iput-boolean v9, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->clearScaladoResources()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->enablePreviewCallback()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v1, "panorama-mode"

    const-string v2, "not-in-progress"

    invoke-virtual {v7, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_1
    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureRotation:Lcom/android/camera/rotate/UIRotation;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;-><init>(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CaptureHandle;[BLjava/util/Hashtable;Lcom/android/camera/rotate/UIRotation;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/io/DCFInfo;

    :goto_2
    iput-object v1, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-virtual {v8, v0}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    :goto_3
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v8, v1}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    iput-object v10, p0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    iput-object v10, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - Close camera for recovering"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - No camera controller to set panorama mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - No JPEG data"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/CaptureEventArgs;

    sget-object v3, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v2, p1, v3}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v3, 0xb

    move-object v1, p0

    move v4, v9

    move v5, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - No UI to notify STITCH_COMPLETED"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private final stopAutorama(ZZZ)V
    .locals 9

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    iput-boolean v7, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    if-eqz p1, :cond_a

    iput-boolean v7, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v0, v1, :cond_7

    :goto_1
    if-nez p2, :cond_5

    if-nez v7, :cond_5

    const/4 p2, 0x1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0, v7}, Lcom/scalado/camera/autorama/Autorama;->stop(Z)V

    :goto_2
    const-string v0, "PANORAMA"

    invoke-static {v0}, Lcom/android/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v2, 0xa

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_3
    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->stopPreview()V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    monitor-enter v8

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "Panorama Stitch"

    const-wide/16 v2, 0x3a98

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_StitchTimerHandle:Lcom/android/camera/Handle;

    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    move v7, v3

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopAutorama() - No Autorama"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify STITCH_STARTED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    :goto_4
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->clearScaladoResources()V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopAutorama() - No Autorama"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify ABORTED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private stopPreview()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->stopPreview()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot stop preview because there is no camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->createPreview()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onCancelCapture()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onEnterPanoramaMode()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onExitPanoramaMode()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v2, 0x8

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    const-class v1, Lcom/android/camera/effect/IEffectController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectController;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const-class v1, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ISceneController;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaController$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$7;-><init>(Lcom/android/camera/component/PanoramaController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaController$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$8;-><init>(Lcom/android/camera/component/PanoramaController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method link(Lcom/android/camera/component/PanoramaUI;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    :cond_0
    return-void
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "takePicture() - START"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-nez v3, :cond_1

    const-class v3, Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/PanoramaController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "takePicture() - No IOperationTimeoutController interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v15

    const-string v3, "capture-mode"

    const-string v4, "panorama"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "panorama-mode"

    const-string v4, "in-progress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraController;->setRotation(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p3

    if-eq v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Release old Scalado camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Create new Scalado camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/scalado/camera/FeatureCameraFactory;->open(Landroid/hardware/Camera;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create Lens object ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/PanoramaController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lcom/scalado/caps/autorama/Lens;

    const/high16 v3, 0x44f5

    const/high16 v4, 0x44f5

    const/high16 v5, 0x4480

    const/high16 v6, 0x4410

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x800

    const/16 v14, 0x480

    invoke-direct/range {v2 .. v14}, Lcom/scalado/caps/autorama/Lens;-><init>(FFFFFFFFFFII)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "create Autorama object"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/scalado/camera/autorama/Autorama;

    invoke-direct {v3, v2}, Lcom/scalado/camera/autorama/Autorama;-><init>(Lcom/scalado/caps/autorama/Lens;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController;->m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    invoke-virtual {v3, v4}, Lcom/scalado/camera/autorama/Autorama;->setListener(Lcom/scalado/camera/autorama/Autorama$AutoramaListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v3}, Lcom/scalado/camera/autorama/Autorama;->getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-result-object v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->setNumberOfImages(I)V

    const/16 v3, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->setOverlap(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-interface {v3, v4}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->disablePreviewCallback()V

    iget-object v3, v15, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_CaptureRotation:Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    monitor-enter v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v4, "Panorama JPEG [0]"

    const-wide/16 v5, 0x2710

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/component/PanoramaController;->m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "start taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    new-instance v4, Lcom/android/camera/component/PanoramaController$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/component/PanoramaController$9;-><init>(Lcom/android/camera/component/PanoramaController;)V

    new-instance v5, Lcom/android/camera/component/PanoramaController$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/component/PanoramaController$10;-><init>(Lcom/android/camera/component/PanoramaController;)V

    new-instance v6, Lcom/android/camera/component/PanoramaController$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v15, v1}, Lcom/android/camera/component/PanoramaController$11;-><init>(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/scalado/camera/FeatureCamera;->takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "takePicture() - END"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v2, Lcom/scalado/caps/autorama/Lens;

    const v3, 0x44f44000

    const v4, 0x44f5c000

    const/high16 v5, 0x447b

    const/high16 v6, 0x4446

    const/4 v7, 0x0

    const v8, 0x3e051eb8

    const v9, -0x41c7ae14

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x800

    const/16 v14, 0x600

    invoke-direct/range {v2 .. v14}, Lcom/scalado/caps/autorama/Lens;-><init>(FFFFFFFFFFII)V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v3, v4}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;

    :cond_6
    throw v16
.end method
