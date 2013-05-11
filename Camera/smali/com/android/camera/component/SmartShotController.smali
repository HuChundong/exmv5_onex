.class public final Lcom/android/camera/component/SmartShotController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "SmartShotController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SmartShotController$5;,
        Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;,
        Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHUTTER_SOUND:I = 0x7f060004

.field public static final MSG_AUTO_SESSION_RECYCLE:I = 0x3

.field public static final MSG_ENTER_SMART_SHOT:I = 0x1

.field public static final MSG_EXIT_SMART_SHOT:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Smart Shot Controller"

.field private static final m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

.field autoSession:Lcom/scalado/app/rewind/AutoSession;

.field cropFacesBmp:[Landroid/graphics/Bitmap;

.field mDrawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mRawCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private final m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

.field private m_CaptureCount:I

.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_CurrentCaptureIndex:I

.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field private final m_ExifTags:Ljava/util/Hashtable;
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

.field private m_InstanceID:J

.field private m_IsSmartShotModeEntered:Z

.field private m_SceneController:Lcom/android/camera/effect/ISceneController;

.field m_Screen:Lcom/scalado/base/Image;

.field private m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

.field private final m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field m_faceRects:[Landroid/graphics/Rect;

.field m_firstSourceImage:Landroid/graphics/Bitmap;

.field m_replaceRects:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "BURST"

    const-string v2, "IMAG"

    const-string v3, "burst_dir_counter"

    const-string v4, "burst_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/SmartShotController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Smart Shot Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->m_replaceRects:[Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->m_faceRects:[Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->cropFacesBmp:[Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->mDrawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/component/SmartShotController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$1;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    new-instance v0, Lcom/android/camera/component/SmartShotController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$2;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/android/camera/component/SmartShotController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$3;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/android/camera/component/SmartShotController$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$4;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/SmartShotController;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/camera/io/DCFInfo;
    .locals 1

    sget-object v0, Lcom/android/camera/component/SmartShotController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/SmartShotController;Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 2

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

    invoke-static {p0}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToUI()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-string v3, "Smart Shot UI"

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/SmartShotUI;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onEnterSmartShotMode(J)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    iput-wide p1, p0, Lcom/android/camera/component/SmartShotController;->m_InstanceID:J

    invoke-direct {p0}, Lcom/android/camera/component/SmartShotController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private onExitSmartShotMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onExitSmartShotMode() - Set capture mode to normal"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v2, v3, Lcom/android/camera/CameraSettings;->isZSLEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "capture-mode"

    const-string v3, "zsl"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    iget-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    :cond_1
    return-void

    :cond_2
    const-string v2, "capture-mode"

    const-string v3, "normal"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final handleCommonJpegCallback([BLandroid/hardware/Camera;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "handleCommonJpegCallback() - start"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    sget-object v18, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v18, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/TIME$Value;->Start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "JPEG Callback["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], JPEG-data size = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    const/16 v16, 0x0

    :try_start_0
    const-string v18, ".camera_temp"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    new-instance v9, Landroid/media/ExifInterface;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/16 v18, 0xb

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "DateTime"

    aput-object v19, v15, v18

    const/16 v18, 0x1

    const-string v19, "FocalLength"

    aput-object v19, v15, v18

    const/16 v18, 0x2

    const-string v19, "GPSAltitude"

    aput-object v19, v15, v18

    const/16 v18, 0x3

    const-string v19, "GPSAltitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x4

    const-string v19, "GPSLatitude"

    aput-object v19, v15, v18

    const/16 v18, 0x5

    const-string v19, "GPSLatitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x6

    const-string v19, "GPSLongitude"

    aput-object v19, v15, v18

    const/16 v18, 0x7

    const-string v19, "GPSLongitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x8

    const-string v19, "Make"

    aput-object v19, v15, v18

    const/16 v18, 0x9

    const-string v19, "Model"

    aput-object v19, v15, v18

    const/16 v18, 0xa

    const-string v19, "WhiteBalance"

    aput-object v19, v15, v18

    move-object v4, v15

    array-length v12, v4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v14, v4, v10

    invoke-virtual {v9, v14}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_2
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/scalado/app/rewind/AutoSession;->addJpeg(Ljava/nio/ByteBuffer;)V

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_a

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->setCanStartPreview()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "capture-mode"

    const-string v19, "zsl"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "getMergedImage - Start"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/app/rewind/AutoSession;->getMergedImage()V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "getMergedImage - End"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "JPEG Callback end"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "handleCommonJpegCallback() - end"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Cannot extract EXIF from first frame"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    :catchall_0
    move-exception v18

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_6
    throw v18

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_8
    const-string v18, "capture-mode"

    const-string v19, "normal"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "handleCommonJpegCallback() - autoSession is null"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    invoke-direct/range {v19 .. v21}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    goto/16 :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :goto_7
    monitor-exit v19

    goto/16 :goto_6

    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v18

    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, "Surface is not available"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v18, v0

    new-instance v20, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    invoke-direct/range {v20 .. v22}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    :cond_c
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7
.end method

.method public final handleCommonPostviewCallback([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "handleCommonPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "handleCommonPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleCommonRawCallback([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "handleCommonRawCallback() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    sget-object v1, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v1, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart shot Mode - RAW Call-back, raw-data size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "handleCommonRawCallback() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleCommonShutterCallback()V
    .locals 1

    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmartShotController;->handleCommonShutterCallback(I)V

    return-void
.end method

.method public final handleCommonShutterCallback(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Smart shot Mode - Shutter Call-back"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->playShutterSound()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart shot Mode - Shutter Call-back m_CurrentCaptureIndex= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "capture-mode"

    const-string v3, "contiburst"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_1
    sget-object v2, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v2, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->Start()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/SmartShotController;->onEnterSmartShotMode(J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotController;->onExitSmartShotMode()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    const-class v0, Lcom/android/camera/effect/IEffectController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmartShotController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectController;

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const-class v0, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmartShotController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ISceneController;

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    return-void
.end method

.method link(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    return-void
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    iput v3, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    iput-object p1, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    iget-wide v4, p0, Lcom/android/camera/component/SmartShotController;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    :cond_1
    new-instance v0, Lcom/scalado/app/rewind/AutoSession;

    iget v1, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setFaceDetectEx(Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;)V

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V

    :goto_1
    iget-object v0, v6, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v8}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/base/Size;

    iget v3, v7, Landroid/hardware/Camera$Size;->width:I

    iget v4, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v3, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    invoke-virtual {v0, v1, v3}, Lcom/scalado/app/rewind/AutoSession;->setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p3, v0, v1, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    move v3, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/base/Size;

    iget v3, v7, Landroid/hardware/Camera$Size;->height:I

    iget v4, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {v1, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v3, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    invoke-virtual {v0, v1, v3}, Lcom/scalado/app/rewind/AutoSession;->setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    goto :goto_2
.end method
