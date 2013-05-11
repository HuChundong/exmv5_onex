.class public final Lcom/android/camera/component/BurstController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "BurstController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/BurstController$SaveBurstImageTask;
    }
.end annotation


# static fields
.field public static final MSG_ENTER_BURST:I = 0x1

.field public static final MSG_EXIT_BURST:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Burst Controller"

.field private static final m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private m_BurstUI:Lcom/android/camera/component/BurstUI;

.field private m_CaptureCount:I

.field private m_CurrentCaptureIndex:I

.field private m_CurrentStoredIndex:I

.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field private m_InstanceID:J

.field private m_IsBurstModeEntered:Z

.field private m_SceneController:Lcom/android/camera/effect/ISceneController;

.field private m_ShutterSoundHandle:Lcom/android/camera/Handle;

.field private m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private m_postviewData:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "BURST"

    const-string v2, "IMAG"

    const-string v3, "burst_dir_counter"

    const-string v4, "burst_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/BurstController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    sget-object v0, Lcom/android/camera/component/BurstController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/io/DCFUtility;->registerDCFInfo(Lcom/android/camera/io/DCFInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Burst Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/component/BurstController;->m_CaptureCount:I

    iput v2, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    iput v2, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/BurstController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    return p1
.end method

.method static synthetic access$104(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/BurstController;)[[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_postviewData:[[B

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/camera/component/BurstController;[[B)[[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController;->m_postviewData:[[B

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/component/BurstController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    return p1
.end method

.method static synthetic access$1204(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/BurstController;ILandroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/BurstController;->createPostviewImage(ILandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$1500()Lcom/android/camera/io/DCFInfo;
    .locals 1

    sget-object v0, Lcom/android/camera/component/BurstController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CaptureCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/BurstController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/BurstController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/BurstController;->deleteLatestImages()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/BurstController;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createPostviewImage(ILandroid/hardware/Camera;)V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "createPostviewImage start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "postview-size"

    invoke-virtual {v11, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v0, 0x78

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v0, 0x0

    invoke-virtual {v12, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_postviewData:[[B

    aget-object v1, v1, p1

    invoke-static {v10, v8, v0, v1}, Lcom/android/camera/imaging/ImageUtility;->createScaladoImageFromRawData(IILcom/scalado/base/Image$Config;[B)Lcom/scalado/base/Image;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_postviewData:[[B

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->getBurstReviewWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstUI;->getBurstReviewHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Lcom/scalado/caps/Session;

    new-instance v1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v1, v7}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-direct {v0, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/16 v1, 0x5a

    invoke-static {v0, v5, v1}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CaptureCount:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "createPostviewImage end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while creating thumbnail["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    goto :goto_1
.end method

.method private deleteLatestImages()V
    .locals 7

    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Deleting latest media by BurstController"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v5}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-lez v3, :cond_1

    new-array v1, v3, [Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/camera/component/BurstController$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/camera/component/BurstController$1;-><init>(Lcom/android/camera/component/BurstController;[Landroid/net/Uri;Lcom/android/camera/HTCCamera;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move v2, v3

    :goto_0
    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/BurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/camera/component/BurstController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    :goto_1
    invoke-static {v6, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private onEnterBurstMode(J)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z

    iput-wide p1, p0, Lcom/android/camera/component/BurstController;->m_InstanceID:J

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onExitBurstMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z

    return-void
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/BurstController;->onEnterBurstMode(J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/BurstController;->onExitBurstMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    const-class v1, Lcom/android/camera/effect/IEffectController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/BurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectController;

    iput-object v1, p0, Lcom/android/camera/component/BurstController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    const-class v1, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/BurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ISceneController;

    iput-object v1, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstController$2;-><init>(Lcom/android/camera/component/BurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method link(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    return-void
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    const-string v0, "capture-mode"

    const-string v1, "burst"

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "picture-count"

    iget v1, p0, Lcom/android/camera/component/BurstController;->m_CaptureCount:I

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iput v3, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/IAudioManager;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/android/camera/IAudioManager;->requestAudioFocus()V

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v0, :cond_1

    const v0, 0x7f060003

    invoke-interface {v6, v0}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/BurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    iget-wide v4, p0, Lcom/android/camera/component/BurstController;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/component/BurstController$3;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/component/BurstController$3;-><init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/IAudioManager;)V

    new-instance v1, Lcom/android/camera/component/BurstController$4;

    invoke-direct {v1, p0, v7}, Lcom/android/camera/component/BurstController$4;-><init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;)V

    new-instance v3, Lcom/android/camera/component/BurstController$5;

    invoke-direct {v3, p0}, Lcom/android/camera/component/BurstController$5;-><init>(Lcom/android/camera/component/BurstController;)V

    new-instance v4, Lcom/android/camera/component/BurstController$6;

    invoke-direct {v4, p0, v7, p1, p2}, Lcom/android/camera/component/BurstController$6;-><init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;)V

    invoke-virtual {p3, v0, v1, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public updateThumbItemsStatus(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    goto :goto_0
.end method
